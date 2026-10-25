Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.13?download=true
inline.NumInlined: 10113
inline.NumDeleted: 4526
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !12432
  unreachable, !dbg !12432

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !12433
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt16TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !12434

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !12435
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !12435

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !12405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !12405
  store i64 1, ptr %0, align 8, !dbg !12436
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12436
  store ptr %i.p, ptr %i.s, align 8, !dbg !12436
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12436
  store i64 1, ptr %i.t, align 8, !dbg !12436
  br label %bb.f, !dbg !12437

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !12437

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !12438

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !12439
  br label %common.resume, !dbg !12440

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !12435
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !12441 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !12442
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !12443 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !12443, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !12444
  tail call void @llvm.assume(i1 %i.x), !dbg !12445
  %i.y = icmp eq i64 %.val5, %2, !dbg !12446
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !12446

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !12435
  unreachable, !dbg !12435

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !12447
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !12448 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !12448, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !12449
  store ptr %.val6, ptr %i.k, align 8, !dbg !12450, !alias.scope !12411
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !12450
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !12450, !alias.scope !12411
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !12450
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes10UInt16TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !12450, !alias.scope !12411
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes10UInt16TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !12451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12452
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !12447

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !12412), !dbg !12453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12454
  %i.ae = icmp eq i64 %2, 1, !dbg !12454
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !12454

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !12455, !noalias !12412
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !12456, !noalias !12412 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !12457
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !12458, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !12459, !noalias !12412
  unreachable, !dbg !12459

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12460, !noalias !12412
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt16TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !12461, !noalias !12412

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12462, !noalias !12412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12463, !noalias !12412
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !12463, !noalias !12412
  %i.ah = load i64, ptr %i.b, align 8, !dbg !12463, !range !2367, !noalias !12412, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !12464
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12465
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !12465, !range !2389, !noalias !12412, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12465 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !12464, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !12466, !noalias !12412
  br label %common.resume, !dbg !12467

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !12468, !noalias !12412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !12468, !noalias !12412
  store i64 1, ptr %0, align 8, !dbg !12469, !alias.scope !12412
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12469
  store ptr %i.af, ptr %i.an, align 8, !dbg !12469, !alias.scope !12412
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12469
  store i64 1, ptr %i.ao, align 8, !dbg !12469, !alias.scope !12412
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !12470

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !12471, !noalias !12412
  unreachable, !dbg !12471

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !12472, !noalias !12412
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !12473, !noalias !12412
  unreachable, !dbg !12473

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !12474, !noalias !12412, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !12475
  call void @llvm.assume(i1 %i.as), !dbg !12476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12477, !noalias !12412
  store i64 %i.ak, ptr %i.i, align 8, !dbg !12478, !noalias !12412
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !12478 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !12478, !noalias !12412
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !12478 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !12478, !noalias !12412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12479, !noalias !12412
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt16TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !12480, !noalias !12412

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes10UInt16TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !12481, !noalias !12412

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !12482

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !12483, !noalias !12412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12484, !noalias !12412
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !12484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !12484, !noalias !12412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12485, !noalias !12412
  store i64 1, ptr %i.au, align 8, !dbg !12486, !alias.scope !12414, !noalias !12412
  %i.ay = icmp sgt i64 %2, 2, !dbg !12487
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !12488

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !12488

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !12489, !alias.scope !12416, !noalias !12412
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !12490, !range !2408, !alias.scope !12416, !noalias !12412
  br label %._crit_edge.i, !dbg !12491

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !12490
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !12489 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12491, !noalias !12412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !12491, !noalias !12412
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !12492
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !12492

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes10UInt16TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !12493, !noalias !12417

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !12494, !noalias !12412

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !12495, !noalias !12412
  unreachable, !dbg !12495

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !12496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12497, !noalias !12412
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt16TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !12498, !noalias !12412

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !12499, !alias.scope !12416, !noalias !12412, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !12500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !12501, !noalias !12412
  %i.bj = add i64 %i.bc, 1, !dbg !12502
  store i64 %i.bj, ptr %i.au, align 8, !dbg !12502, !alias.scope !12416, !noalias !12412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12503, !noalias !12412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !12504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12482, !noalias !12412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12481, !noalias !12412
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !12470

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !12505, !noalias !12412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12506, !noalias !12412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !12506, !noalias !12412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12507, !noalias !12412
  %i.bk = load i64, ptr %i.au, align 8, !dbg !12508, !alias.scope !12418, !noalias !12412, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !12509, !range !2408, !alias.scope !12418, !noalias !12412, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !12510
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !12510

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes10UInt16TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !12511, !noalias !12419

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !12512, !noalias !12412

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !12513, !noalias !12412
  unreachable, !dbg !12513

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !12514, !noalias !12412
  br label %.thread22.i, !dbg !12515

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !12516, !alias.scope !12418, !noalias !12412, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !12517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !12518, !noalias !12412
  %i.bs = add i64 %i.bk, 1, !dbg !12519
  store i64 %i.bs, ptr %i.au, align 8, !dbg !12519, !alias.scope !12418, !noalias !12412
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !12514, !noalias !12412

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !12514, !noalias !12412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12515, !noalias !12412
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !12487
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !12488

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !12515, !noalias !12412

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !12482, !noalias !12412

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12470
  br label %bb.f, !dbg !12453

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !12520, !noalias !12420, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !12521, !noalias !12420, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !12522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12523, !noalias !12421
  store ptr %i.bt, ptr %i.a, align 8, !dbg !12524, !alias.scope !12422, !noalias !12423
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12524
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12524, !alias.scope !12422, !noalias !12423
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12524
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12524, !alias.scope !12422, !noalias !12423
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes10UInt16TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2M_INtNtNtB2U_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB64_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !12525, !noalias !12424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12526, !noalias !12421
  br label %bb.f, !dbg !12527
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12528 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [112 x i8], align 8               ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !12735
  %.val = load i64, ptr %i.n, align 8, !dbg !12735, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !12736
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !12736

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !12737
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !12738 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !12739
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !12740, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !12741
  unreachable, !dbg !12741

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !12742
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt32TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !12743

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !12744
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !12744

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !12714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !12714
  store i64 1, ptr %0, align 8, !dbg !12745
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12745
  store ptr %i.p, ptr %i.s, align 8, !dbg !12745
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12745
  store i64 1, ptr %i.t, align 8, !dbg !12745
  br label %bb.f, !dbg !12746

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !12746

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !12747

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !12748
  br label %common.resume, !dbg !12749

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !12744
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !12750 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !12751
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !12752 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !12752, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !12753
  tail call void @llvm.assume(i1 %i.x), !dbg !12754
  %i.y = icmp eq i64 %.val5, %2, !dbg !12755
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !12755

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !12744
  unreachable, !dbg !12744

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !12756
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !12757 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !12757, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !12758
  store ptr %.val6, ptr %i.k, align 8, !dbg !12759, !alias.scope !12720
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !12759
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !12759, !alias.scope !12720
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !12759
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes10UInt32TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !12759, !alias.scope !12720
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes10UInt32TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !12760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12761
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !12756

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !12721), !dbg !12762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12763
  %i.ae = icmp eq i64 %2, 1, !dbg !12763
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !12763

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !12764, !noalias !12721
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !12765, !noalias !12721 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !12766
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !12767, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !12768, !noalias !12721
  unreachable, !dbg !12768

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12769, !noalias !12721
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt32TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !12770, !noalias !12721

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12771, !noalias !12721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12772, !noalias !12721
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !12772, !noalias !12721
  %i.ah = load i64, ptr %i.b, align 8, !dbg !12772, !range !2367, !noalias !12721, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !12773
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12774
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !12774, !range !2389, !noalias !12721, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12774 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !12773, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !12775, !noalias !12721
  br label %common.resume, !dbg !12776

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !12777, !noalias !12721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !12777, !noalias !12721
  store i64 1, ptr %0, align 8, !dbg !12778, !alias.scope !12721
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12778
  store ptr %i.af, ptr %i.an, align 8, !dbg !12778, !alias.scope !12721
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12778
  store i64 1, ptr %i.ao, align 8, !dbg !12778, !alias.scope !12721
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !12779

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !12780, !noalias !12721
  unreachable, !dbg !12780

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !12781, !noalias !12721
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !12782, !noalias !12721
  unreachable, !dbg !12782

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !12783, !noalias !12721, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !12784
  call void @llvm.assume(i1 %i.as), !dbg !12785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12786, !noalias !12721
  store i64 %i.ak, ptr %i.i, align 8, !dbg !12787, !noalias !12721
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !12787 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !12787, !noalias !12721
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !12787 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !12787, !noalias !12721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12788, !noalias !12721
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt32TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !12789, !noalias !12721

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes10UInt32TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !12790, !noalias !12721

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !12791

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !12792, !noalias !12721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12793, !noalias !12721
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !12793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !12793, !noalias !12721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12794, !noalias !12721
  store i64 1, ptr %i.au, align 8, !dbg !12795, !alias.scope !12723, !noalias !12721
  %i.ay = icmp sgt i64 %2, 2, !dbg !12796
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !12797

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !12797

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !12798, !alias.scope !12725, !noalias !12721
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !12799, !range !2408, !alias.scope !12725, !noalias !12721
  br label %._crit_edge.i, !dbg !12800

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !12799
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !12798 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12800, !noalias !12721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !12800, !noalias !12721
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !12801
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !12801

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes10UInt32TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !12802, !noalias !12726

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !12803, !noalias !12721

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !12804, !noalias !12721
  unreachable, !dbg !12804

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !12805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12806, !noalias !12721
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt32TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !12807, !noalias !12721

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !12808, !alias.scope !12725, !noalias !12721, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !12809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !12810, !noalias !12721
  %i.bj = add i64 %i.bc, 1, !dbg !12811
  store i64 %i.bj, ptr %i.au, align 8, !dbg !12811, !alias.scope !12725, !noalias !12721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12812, !noalias !12721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !12813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12791, !noalias !12721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12790, !noalias !12721
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !12779

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !12814, !noalias !12721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12815, !noalias !12721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !12815, !noalias !12721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12816, !noalias !12721
  %i.bk = load i64, ptr %i.au, align 8, !dbg !12817, !alias.scope !12727, !noalias !12721, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !12818, !range !2408, !alias.scope !12727, !noalias !12721, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !12819
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !12819

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes10UInt32TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !12820, !noalias !12728

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !12821, !noalias !12721

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !12822, !noalias !12721
  unreachable, !dbg !12822

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !12823, !noalias !12721
  br label %.thread22.i, !dbg !12824

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !12825, !alias.scope !12727, !noalias !12721, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !12826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !12827, !noalias !12721
  %i.bs = add i64 %i.bk, 1, !dbg !12828
  store i64 %i.bs, ptr %i.au, align 8, !dbg !12828, !alias.scope !12727, !noalias !12721
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !12823, !noalias !12721

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !12823, !noalias !12721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12824, !noalias !12721
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !12796
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !12797

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !12824, !noalias !12721

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !12791, !noalias !12721

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12779
  br label %bb.f, !dbg !12762

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !12829, !noalias !12729, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !12830, !noalias !12729, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !12831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12832, !noalias !12730
  store ptr %i.bt, ptr %i.a, align 8, !dbg !12833, !alias.scope !12731, !noalias !12732
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12833
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12833, !alias.scope !12731, !noalias !12732
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12833
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12833, !alias.scope !12731, !noalias !12732
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes10UInt32TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2M_INtNtNtB2U_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB64_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !12834, !noalias !12733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12835, !noalias !12730
  br label %bb.f, !dbg !12836
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12837 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [112 x i8], align 8               ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !13044
  %.val = load i64, ptr %i.n, align 8, !dbg !13044, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !13045
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !13045

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13046
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13047 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !13048
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !13049, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13050
  unreachable, !dbg !13050

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !13051
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt64TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !13052

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !13053
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !13053

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !13023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !13023
  store i64 1, ptr %0, align 8, !dbg !13054
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13054
  store ptr %i.p, ptr %i.s, align 8, !dbg !13054
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13054
  store i64 1, ptr %i.t, align 8, !dbg !13054
  br label %bb.f, !dbg !13055

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !13055

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !13056

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !13057
  br label %common.resume, !dbg !13058

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !13053
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !13059 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !13060
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !13061 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !13061, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !13062
  tail call void @llvm.assume(i1 %i.x), !dbg !13063
  %i.y = icmp eq i64 %.val5, %2, !dbg !13064
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !13064

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !13053
  unreachable, !dbg !13053

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !13065
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !13066 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !13066, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !13067
  store ptr %.val6, ptr %i.k, align 8, !dbg !13068, !alias.scope !13029
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13068
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !13068, !alias.scope !13029
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !13068
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes10UInt64TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !13068, !alias.scope !13029
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes10UInt64TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !13069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13070
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !13065

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !13030), !dbg !13071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13072
  %i.ae = icmp eq i64 %2, 1, !dbg !13072
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !13072

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13073, !noalias !13030
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13074, !noalias !13030 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !13075
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !13076, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13077, !noalias !13030
  unreachable, !dbg !13077

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13078, !noalias !13030
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt64TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !13079, !noalias !13030

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13080, !noalias !13030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13081, !noalias !13030
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !13081, !noalias !13030
  %i.ah = load i64, ptr %i.b, align 8, !dbg !13081, !range !2367, !noalias !13030, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !13082
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13083
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !13083, !range !2389, !noalias !13030, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13083 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !13082, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !13084, !noalias !13030
  br label %common.resume, !dbg !13085

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !13086, !noalias !13030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !13086, !noalias !13030
  store i64 1, ptr %0, align 8, !dbg !13087, !alias.scope !13030
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13087
  store ptr %i.af, ptr %i.an, align 8, !dbg !13087, !alias.scope !13030
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13087
  store i64 1, ptr %i.ao, align 8, !dbg !13087, !alias.scope !13030
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !13088

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13089, !noalias !13030
  unreachable, !dbg !13089

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !13090, !noalias !13030
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !13091, !noalias !13030
  unreachable, !dbg !13091

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !13092, !noalias !13030, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !13093
  call void @llvm.assume(i1 %i.as), !dbg !13094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13095, !noalias !13030
  store i64 %i.ak, ptr %i.i, align 8, !dbg !13096, !noalias !13030
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !13096 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !13096, !noalias !13030
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !13096 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !13096, !noalias !13030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13097, !noalias !13030
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt64TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !13098, !noalias !13030

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes10UInt64TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !13099, !noalias !13030

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !13100

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !13101, !noalias !13030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13102, !noalias !13030
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !13102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !13102, !noalias !13030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13103, !noalias !13030
  store i64 1, ptr %i.au, align 8, !dbg !13104, !alias.scope !13032, !noalias !13030
  %i.ay = icmp sgt i64 %2, 2, !dbg !13105
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !13106

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !13106

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !13107, !alias.scope !13034, !noalias !13030
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !13108, !range !2408, !alias.scope !13034, !noalias !13030
  br label %._crit_edge.i, !dbg !13109

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !13108
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !13107 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13109, !noalias !13030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !13109, !noalias !13030
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !13110
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !13110

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes10UInt64TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !13111, !noalias !13035

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !13112, !noalias !13030

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13113, !noalias !13030
  unreachable, !dbg !13113

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !13114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13115, !noalias !13030
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt64TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !13116, !noalias !13030

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !13117, !alias.scope !13034, !noalias !13030, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !13118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !13119, !noalias !13030
  %i.bj = add i64 %i.bc, 1, !dbg !13120
  store i64 %i.bj, ptr %i.au, align 8, !dbg !13120, !alias.scope !13034, !noalias !13030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13121, !noalias !13030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !13122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13100, !noalias !13030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13099, !noalias !13030
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !13088

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !13123, !noalias !13030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13124, !noalias !13030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !13124, !noalias !13030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13125, !noalias !13030
  %i.bk = load i64, ptr %i.au, align 8, !dbg !13126, !alias.scope !13036, !noalias !13030, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !13127, !range !2408, !alias.scope !13036, !noalias !13030, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !13128
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !13128

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes10UInt64TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !13129, !noalias !13037

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !13130, !noalias !13030

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13131, !noalias !13030
  unreachable, !dbg !13131

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !13132, !noalias !13030
  br label %.thread22.i, !dbg !13133

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !13134, !alias.scope !13036, !noalias !13030, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !13135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !13136, !noalias !13030
  %i.bs = add i64 %i.bk, 1, !dbg !13137
  store i64 %i.bs, ptr %i.au, align 8, !dbg !13137, !alias.scope !13036, !noalias !13030
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !13132, !noalias !13030

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !13132, !noalias !13030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13133, !noalias !13030
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !13105
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !13106

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !13133, !noalias !13030

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !13100, !noalias !13030

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13088
  br label %bb.f, !dbg !13071

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !13138, !noalias !13038, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !13139, !noalias !13038, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !13140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13141, !noalias !13039
  store ptr %i.bt, ptr %i.a, align 8, !dbg !13142, !alias.scope !13040, !noalias !13041
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13142
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13142, !alias.scope !13040, !noalias !13041
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13142
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13142, !alias.scope !13040, !noalias !13041
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes10UInt64TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2M_INtNtNtB2U_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB64_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !13143, !noalias !13042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13144, !noalias !13039
  br label %bb.f, !dbg !13145
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13146 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [112 x i8], align 8               ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !13353
  %.val = load i64, ptr %i.n, align 8, !dbg !13353, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !13354
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !13354

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13355
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13356 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !13357
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !13358, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13359
  unreachable, !dbg !13359

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !13360
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11Float16TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !13361

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !13362
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !13362

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !13332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !13332
  store i64 1, ptr %0, align 8, !dbg !13363
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13363
  store ptr %i.p, ptr %i.s, align 8, !dbg !13363
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13363
  store i64 1, ptr %i.t, align 8, !dbg !13363
  br label %bb.f, !dbg !13364

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !13364

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !13365

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !13366
  br label %common.resume, !dbg !13367

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !13362
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !13368 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !13369
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !13370 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !13370, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !13371
  tail call void @llvm.assume(i1 %i.x), !dbg !13372
  %i.y = icmp eq i64 %.val5, %2, !dbg !13373
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !13373

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !13362
  unreachable, !dbg !13362

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !13374
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !13375 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !13375, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !13376
  store ptr %.val6, ptr %i.k, align 8, !dbg !13377, !alias.scope !13338
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13377
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !13377, !alias.scope !13338
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !13377
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes11Float16TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !13377, !alias.scope !13338
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes11Float16TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !13378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13379
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !13374

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !13339), !dbg !13380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13381
  %i.ae = icmp eq i64 %2, 1, !dbg !13381
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !13381

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13382, !noalias !13339
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13383, !noalias !13339 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !13384
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !13385, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13386, !noalias !13339
  unreachable, !dbg !13386

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13387, !noalias !13339
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11Float16TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !13388, !noalias !13339

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13389, !noalias !13339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13390, !noalias !13339
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !13390, !noalias !13339
  %i.ah = load i64, ptr %i.b, align 8, !dbg !13390, !range !2367, !noalias !13339, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !13391
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13392
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !13392, !range !2389, !noalias !13339, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13392 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !13391, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !13393, !noalias !13339
  br label %common.resume, !dbg !13394

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !13395, !noalias !13339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !13395, !noalias !13339
  store i64 1, ptr %0, align 8, !dbg !13396, !alias.scope !13339
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13396
  store ptr %i.af, ptr %i.an, align 8, !dbg !13396, !alias.scope !13339
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13396
  store i64 1, ptr %i.ao, align 8, !dbg !13396, !alias.scope !13339
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !13397

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13398, !noalias !13339
  unreachable, !dbg !13398

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !13399, !noalias !13339
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !13400, !noalias !13339
  unreachable, !dbg !13400

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !13401, !noalias !13339, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !13402
  call void @llvm.assume(i1 %i.as), !dbg !13403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13404, !noalias !13339
  store i64 %i.ak, ptr %i.i, align 8, !dbg !13405, !noalias !13339
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !13405 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !13405, !noalias !13339
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !13405 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !13405, !noalias !13339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13406, !noalias !13339
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float16TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !13407, !noalias !13339

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes11Float16TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !13408, !noalias !13339

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !13409

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !13410, !noalias !13339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13411, !noalias !13339
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !13411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !13411, !noalias !13339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13412, !noalias !13339
  store i64 1, ptr %i.au, align 8, !dbg !13413, !alias.scope !13341, !noalias !13339
  %i.ay = icmp sgt i64 %2, 2, !dbg !13414
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !13415

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !13415

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !13416, !alias.scope !13343, !noalias !13339
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !13417, !range !2408, !alias.scope !13343, !noalias !13339
  br label %._crit_edge.i, !dbg !13418

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !13417
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !13416 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13418, !noalias !13339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !13418, !noalias !13339
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !13419
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !13419

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11Float16TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !13420, !noalias !13344

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !13421, !noalias !13339

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13422, !noalias !13339
  unreachable, !dbg !13422

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !13423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13424, !noalias !13339
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float16TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !13425, !noalias !13339

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !13426, !alias.scope !13343, !noalias !13339, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !13427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !13428, !noalias !13339
  %i.bj = add i64 %i.bc, 1, !dbg !13429
  store i64 %i.bj, ptr %i.au, align 8, !dbg !13429, !alias.scope !13343, !noalias !13339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13430, !noalias !13339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !13431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13409, !noalias !13339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13408, !noalias !13339
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !13397

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !13432, !noalias !13339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13433, !noalias !13339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !13433, !noalias !13339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13434, !noalias !13339
  %i.bk = load i64, ptr %i.au, align 8, !dbg !13435, !alias.scope !13345, !noalias !13339, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !13436, !range !2408, !alias.scope !13345, !noalias !13339, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !13437
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !13437

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11Float16TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !13438, !noalias !13346

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !13439, !noalias !13339

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13440, !noalias !13339
  unreachable, !dbg !13440

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !13441, !noalias !13339
  br label %.thread22.i, !dbg !13442

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !13443, !alias.scope !13345, !noalias !13339, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !13444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !13445, !noalias !13339
  %i.bs = add i64 %i.bk, 1, !dbg !13446
  store i64 %i.bs, ptr %i.au, align 8, !dbg !13446, !alias.scope !13345, !noalias !13339
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !13441, !noalias !13339

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !13441, !noalias !13339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13442, !noalias !13339
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !13414
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !13415

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !13442, !noalias !13339

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !13409, !noalias !13339

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13397
  br label %bb.f, !dbg !13380

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !13447, !noalias !13347, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !13448, !noalias !13347, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !13449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13450, !noalias !13348
  store ptr %i.bt, ptr %i.a, align 8, !dbg !13451, !alias.scope !13349, !noalias !13350
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13451
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13451, !alias.scope !13349, !noalias !13350
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13451
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13451, !alias.scope !13349, !noalias !13350
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes11Float16TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2N_INtNtNtB2V_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB65_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !13452, !noalias !13351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13453, !noalias !13348
  br label %bb.f, !dbg !13454
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13455 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [112 x i8], align 8               ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !13662
  %.val = load i64, ptr %i.n, align 8, !dbg !13662, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !13663
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !13663

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13664
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13665 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !13666
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !13667, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13668
  unreachable, !dbg !13668

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !13669
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11Float32TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !13670

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !13671
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !13671

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !13641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !13641
  store i64 1, ptr %0, align 8, !dbg !13672
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13672
  store ptr %i.p, ptr %i.s, align 8, !dbg !13672
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13672
  store i64 1, ptr %i.t, align 8, !dbg !13672
  br label %bb.f, !dbg !13673

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !13673

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !13674

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !13675
  br label %common.resume, !dbg !13676

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !13671
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !13677 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !13678
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !13679 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !13679, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !13680
  tail call void @llvm.assume(i1 %i.x), !dbg !13681
  %i.y = icmp eq i64 %.val5, %2, !dbg !13682
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !13682

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !13671
  unreachable, !dbg !13671

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !13683
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !13684 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !13684, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !13685
  store ptr %.val6, ptr %i.k, align 8, !dbg !13686, !alias.scope !13647
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13686
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !13686, !alias.scope !13647
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !13686
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes11Float32TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !13686, !alias.scope !13647
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes11Float32TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !13687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13688
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !13683

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !13648), !dbg !13689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13690
  %i.ae = icmp eq i64 %2, 1, !dbg !13690
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !13690

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13691, !noalias !13648
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13692, !noalias !13648 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !13693
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !13694, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13695, !noalias !13648
  unreachable, !dbg !13695

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13696, !noalias !13648
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11Float32TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !13697, !noalias !13648

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13698, !noalias !13648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13699, !noalias !13648
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !13699, !noalias !13648
  %i.ah = load i64, ptr %i.b, align 8, !dbg !13699, !range !2367, !noalias !13648, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !13700
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13701
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !13701, !range !2389, !noalias !13648, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13701 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !13700, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !13702, !noalias !13648
  br label %common.resume, !dbg !13703

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !13704, !noalias !13648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !13704, !noalias !13648
  store i64 1, ptr %0, align 8, !dbg !13705, !alias.scope !13648
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13705
  store ptr %i.af, ptr %i.an, align 8, !dbg !13705, !alias.scope !13648
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13705
  store i64 1, ptr %i.ao, align 8, !dbg !13705, !alias.scope !13648
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !13706

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13707, !noalias !13648
  unreachable, !dbg !13707

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !13708, !noalias !13648
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !13709, !noalias !13648
  unreachable, !dbg !13709

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !13710, !noalias !13648, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !13711
  call void @llvm.assume(i1 %i.as), !dbg !13712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13713, !noalias !13648
  store i64 %i.ak, ptr %i.i, align 8, !dbg !13714, !noalias !13648
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !13714 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !13714, !noalias !13648
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !13714 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !13714, !noalias !13648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13715, !noalias !13648
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float32TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !13716, !noalias !13648

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes11Float32TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !13717, !noalias !13648

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !13718

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !13719, !noalias !13648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13720, !noalias !13648
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !13720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !13720, !noalias !13648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13721, !noalias !13648
  store i64 1, ptr %i.au, align 8, !dbg !13722, !alias.scope !13650, !noalias !13648
  %i.ay = icmp sgt i64 %2, 2, !dbg !13723
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !13724

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !13724

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !13725, !alias.scope !13652, !noalias !13648
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !13726, !range !2408, !alias.scope !13652, !noalias !13648
  br label %._crit_edge.i, !dbg !13727

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !13726
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !13725 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13727, !noalias !13648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !13727, !noalias !13648
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !13728
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !13728

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11Float32TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !13729, !noalias !13653

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !13730, !noalias !13648

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13731, !noalias !13648
  unreachable, !dbg !13731

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !13732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13733, !noalias !13648
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float32TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !13734, !noalias !13648

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !13735, !alias.scope !13652, !noalias !13648, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !13736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !13737, !noalias !13648
  %i.bj = add i64 %i.bc, 1, !dbg !13738
  store i64 %i.bj, ptr %i.au, align 8, !dbg !13738, !alias.scope !13652, !noalias !13648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13739, !noalias !13648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !13740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13718, !noalias !13648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13717, !noalias !13648
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !13706

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !13741, !noalias !13648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13742, !noalias !13648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !13742, !noalias !13648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13743, !noalias !13648
  %i.bk = load i64, ptr %i.au, align 8, !dbg !13744, !alias.scope !13654, !noalias !13648, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !13745, !range !2408, !alias.scope !13654, !noalias !13648, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !13746
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !13746

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11Float32TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !13747, !noalias !13655

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !13748, !noalias !13648

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13749, !noalias !13648
  unreachable, !dbg !13749

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !13750, !noalias !13648
  br label %.thread22.i, !dbg !13751

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !13752, !alias.scope !13654, !noalias !13648, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !13753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !13754, !noalias !13648
  %i.bs = add i64 %i.bk, 1, !dbg !13755
  store i64 %i.bs, ptr %i.au, align 8, !dbg !13755, !alias.scope !13654, !noalias !13648
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !13750, !noalias !13648

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !13750, !noalias !13648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13751, !noalias !13648
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !13723
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !13724

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !13751, !noalias !13648

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !13718, !noalias !13648

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13706
  br label %bb.f, !dbg !13689

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !13756, !noalias !13656, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !13757, !noalias !13656, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !13758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13759, !noalias !13657
  store ptr %i.bt, ptr %i.a, align 8, !dbg !13760, !alias.scope !13658, !noalias !13659
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13760
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13760, !alias.scope !13658, !noalias !13659
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13760
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13760, !alias.scope !13658, !noalias !13659
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes11Float32TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2N_INtNtNtB2V_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB65_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !13761, !noalias !13660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13762, !noalias !13657
  br label %bb.f, !dbg !13763
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13764 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [112 x i8], align 8               ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !13971
  %.val = load i64, ptr %i.n, align 8, !dbg !13971, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !13972
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !13972

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13973
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13974 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !13975
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !13976, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13977
  unreachable, !dbg !13977

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !13978
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11Float64TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !13979

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !13980
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !13980

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !13950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !13950
  store i64 1, ptr %0, align 8, !dbg !13981
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13981
  store ptr %i.p, ptr %i.s, align 8, !dbg !13981
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13981
  store i64 1, ptr %i.t, align 8, !dbg !13981
  br label %bb.f, !dbg !13982

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !13982

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !13983

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !13984
  br label %common.resume, !dbg !13985

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !13980
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !13986 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !13987
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !13988 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !13988, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !13989
  tail call void @llvm.assume(i1 %i.x), !dbg !13990
  %i.y = icmp eq i64 %.val5, %2, !dbg !13991
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !13991

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !13980
  unreachable, !dbg !13980

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !13992
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !13993 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !13993, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !13994
  store ptr %.val6, ptr %i.k, align 8, !dbg !13995, !alias.scope !13956
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13995
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !13995, !alias.scope !13956
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !13995
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes11Float64TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !13995, !alias.scope !13956
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes11Float64TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !13996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13997
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !13992

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !13957), !dbg !13998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13999
  %i.ae = icmp eq i64 %2, 1, !dbg !13999
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !13999

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14000, !noalias !13957
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !14001, !noalias !13957 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !14002
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !14003, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !14004, !noalias !13957
  unreachable, !dbg !14004

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14005, !noalias !13957
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11Float64TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !14006, !noalias !13957

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14007, !noalias !13957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14008, !noalias !13957
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !14008, !noalias !13957
  %i.ah = load i64, ptr %i.b, align 8, !dbg !14008, !range !2367, !noalias !13957, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !14009
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14010
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !14010, !range !2389, !noalias !13957, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14010 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !14009, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !14011, !noalias !13957
  br label %common.resume, !dbg !14012

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !14013, !noalias !13957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14013, !noalias !13957
  store i64 1, ptr %0, align 8, !dbg !14014, !alias.scope !13957
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14014
  store ptr %i.af, ptr %i.an, align 8, !dbg !14014, !alias.scope !13957
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14014
  store i64 1, ptr %i.ao, align 8, !dbg !14014, !alias.scope !13957
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !14015

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14016, !noalias !13957
  unreachable, !dbg !14016

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !14017, !noalias !13957
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !14018, !noalias !13957
  unreachable, !dbg !14018

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !14019, !noalias !13957, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !14020
  call void @llvm.assume(i1 %i.as), !dbg !14021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14022, !noalias !13957
  store i64 %i.ak, ptr %i.i, align 8, !dbg !14023, !noalias !13957
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14023 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !14023, !noalias !13957
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14023 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !14023, !noalias !13957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14024, !noalias !13957
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float64TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !14025, !noalias !13957

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes11Float64TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !14026, !noalias !13957

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !14027

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !14028, !noalias !13957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14029, !noalias !13957
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !14029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !14029, !noalias !13957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14030, !noalias !13957
  store i64 1, ptr %i.au, align 8, !dbg !14031, !alias.scope !13959, !noalias !13957
  %i.ay = icmp sgt i64 %2, 2, !dbg !14032
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !14033

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !14033

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !14034, !alias.scope !13961, !noalias !13957
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !14035, !range !2408, !alias.scope !13961, !noalias !13957
  br label %._crit_edge.i, !dbg !14036

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !14035
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !14034 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14036, !noalias !13957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !14036, !noalias !13957
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !14037
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !14037

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11Float64TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !14038, !noalias !13962

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !14039, !noalias !13957

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14040, !noalias !13957
  unreachable, !dbg !14040

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !14041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14042, !noalias !13957
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float64TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !14043, !noalias !13957

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !14044, !alias.scope !13961, !noalias !13957, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !14045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !14046, !noalias !13957
  %i.bj = add i64 %i.bc, 1, !dbg !14047
  store i64 %i.bj, ptr %i.au, align 8, !dbg !14047, !alias.scope !13961, !noalias !13957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14048, !noalias !13957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !14049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14027, !noalias !13957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14026, !noalias !13957
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !14015

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !14050, !noalias !13957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14051, !noalias !13957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !14051, !noalias !13957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14052, !noalias !13957
  %i.bk = load i64, ptr %i.au, align 8, !dbg !14053, !alias.scope !13963, !noalias !13957, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !14054, !range !2408, !alias.scope !13963, !noalias !13957, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !14055
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !14055

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11Float64TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !14056, !noalias !13964

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !14057, !noalias !13957

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14058, !noalias !13957
  unreachable, !dbg !14058

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14059, !noalias !13957
  br label %.thread22.i, !dbg !14060

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !14061, !alias.scope !13963, !noalias !13957, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !14062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !14063, !noalias !13957
  %i.bs = add i64 %i.bk, 1, !dbg !14064
  store i64 %i.bs, ptr %i.au, align 8, !dbg !14064, !alias.scope !13963, !noalias !13957
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !14059, !noalias !13957

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14059, !noalias !13957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14060, !noalias !13957
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !14032
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !14033

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !14060, !noalias !13957

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !14027, !noalias !13957

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14015
  br label %bb.f, !dbg !13998

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !14065, !noalias !13965, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !14066, !noalias !13965, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !14067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14068, !noalias !13966
  store ptr %i.bt, ptr %i.a, align 8, !dbg !14069, !alias.scope !13967, !noalias !13968
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14069
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14069, !alias.scope !13967, !noalias !13968
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14069
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14069, !alias.scope !13967, !noalias !13968
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes11Float64TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2N_INtNtNtB2V_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB65_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !14070, !noalias !13969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14071, !noalias !13966
  br label %bb.f, !dbg !14072
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14073 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [112 x i8], align 8               ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !14280
  %.val = load i64, ptr %i.n, align 8, !dbg !14280, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !14281
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !14281

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14282
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !14283 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !14284
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !14285, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !14286
  unreachable, !dbg !14286

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !14287
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11UInt128TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !14288

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !14289
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !14289

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !14259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !14259
  store i64 1, ptr %0, align 8, !dbg !14290
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14290
  store ptr %i.p, ptr %i.s, align 8, !dbg !14290
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14290
  store i64 1, ptr %i.t, align 8, !dbg !14290
  br label %bb.f, !dbg !14291

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !14291

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !14292

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !14293
  br label %common.resume, !dbg !14294

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !14289
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !14295 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !14296
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !14297 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !14297, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !14298
  tail call void @llvm.assume(i1 %i.x), !dbg !14299
  %i.y = icmp eq i64 %.val5, %2, !dbg !14300
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !14300

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !14289
  unreachable, !dbg !14289

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !14301
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !14302 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !14302, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !14303
  store ptr %.val6, ptr %i.k, align 8, !dbg !14304, !alias.scope !14265
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14304
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !14304, !alias.scope !14265
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14304
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes11UInt128TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !14304, !alias.scope !14265
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes11UInt128TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !14305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14306
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !14301

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !14266), !dbg !14307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14308
  %i.ae = icmp eq i64 %2, 1, !dbg !14308
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !14308

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14309, !noalias !14266
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !14310, !noalias !14266 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !14311
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !14312, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !14313, !noalias !14266
  unreachable, !dbg !14313

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14314, !noalias !14266
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11UInt128TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !14315, !noalias !14266

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14316, !noalias !14266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14317, !noalias !14266
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !14317, !noalias !14266
  %i.ah = load i64, ptr %i.b, align 8, !dbg !14317, !range !2367, !noalias !14266, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !14318
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14319
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !14319, !range !2389, !noalias !14266, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14319 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !14318, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !14320, !noalias !14266
  br label %common.resume, !dbg !14321

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !14322, !noalias !14266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14322, !noalias !14266
  store i64 1, ptr %0, align 8, !dbg !14323, !alias.scope !14266
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14323
  store ptr %i.af, ptr %i.an, align 8, !dbg !14323, !alias.scope !14266
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14323
  store i64 1, ptr %i.ao, align 8, !dbg !14323, !alias.scope !14266
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !14324

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14325, !noalias !14266
  unreachable, !dbg !14325

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !14326, !noalias !14266
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !14327, !noalias !14266
  unreachable, !dbg !14327

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !14328, !noalias !14266, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !14329
  call void @llvm.assume(i1 %i.as), !dbg !14330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14331, !noalias !14266
  store i64 %i.ak, ptr %i.i, align 8, !dbg !14332, !noalias !14266
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14332 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !14332, !noalias !14266
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14332 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !14332, !noalias !14266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14333, !noalias !14266
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11UInt128TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !14334, !noalias !14266

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes11UInt128TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !14335, !noalias !14266

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !14336

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !14337, !noalias !14266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14338, !noalias !14266
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !14338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !14338, !noalias !14266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14339, !noalias !14266
  store i64 1, ptr %i.au, align 8, !dbg !14340, !alias.scope !14268, !noalias !14266
  %i.ay = icmp sgt i64 %2, 2, !dbg !14341
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !14342

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !14342

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !14343, !alias.scope !14270, !noalias !14266
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !14344, !range !2408, !alias.scope !14270, !noalias !14266
  br label %._crit_edge.i, !dbg !14345

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !14344
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !14343 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14345, !noalias !14266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !14345, !noalias !14266
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !14346
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !14346

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11UInt128TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !14347, !noalias !14271

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !14348, !noalias !14266

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14349, !noalias !14266
  unreachable, !dbg !14349

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !14350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14351, !noalias !14266
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11UInt128TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !14352, !noalias !14266

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !14353, !alias.scope !14270, !noalias !14266, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !14354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !14355, !noalias !14266
  %i.bj = add i64 %i.bc, 1, !dbg !14356
  store i64 %i.bj, ptr %i.au, align 8, !dbg !14356, !alias.scope !14270, !noalias !14266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14357, !noalias !14266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !14358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14336, !noalias !14266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14335, !noalias !14266
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !14324

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !14359, !noalias !14266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14360, !noalias !14266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !14360, !noalias !14266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14361, !noalias !14266
  %i.bk = load i64, ptr %i.au, align 8, !dbg !14362, !alias.scope !14272, !noalias !14266, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !14363, !range !2408, !alias.scope !14272, !noalias !14266, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !14364
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !14364

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11UInt128TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !14365, !noalias !14273

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !14366, !noalias !14266

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14367, !noalias !14266
  unreachable, !dbg !14367

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14368, !noalias !14266
  br label %.thread22.i, !dbg !14369

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !14370, !alias.scope !14272, !noalias !14266, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !14371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !14372, !noalias !14266
  %i.bs = add i64 %i.bk, 1, !dbg !14373
  store i64 %i.bs, ptr %i.au, align 8, !dbg !14373, !alias.scope !14272, !noalias !14266
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !14368, !noalias !14266

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14368, !noalias !14266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14369, !noalias !14266
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !14341
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !14342

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !14369, !noalias !14266

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !14336, !noalias !14266

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14324
  br label %bb.f, !dbg !14307

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !14374, !noalias !14274, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !14375, !noalias !14274, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !14376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14377, !noalias !14275
  store ptr %i.bt, ptr %i.a, align 8, !dbg !14378, !alias.scope !14276, !noalias !14277
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14378
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14378, !alias.scope !14276, !noalias !14277
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14378
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14378, !alias.scope !14276, !noalias !14277
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes11UInt128TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2N_INtNtNtB2V_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB65_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !14379, !noalias !14278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14380, !noalias !14275
  br label %bb.f, !dbg !14381
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14382 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [112 x i8], align 8               ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !14589
  %.val = load i64, ptr %i.n, align 8, !dbg !14589, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !14590
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !14590

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14591
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !14592 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !14593
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !14594, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !14595
  unreachable, !dbg !14595

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !14596
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes9UInt8TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !14597

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !14598
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !14598

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !14568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !14568
  store i64 1, ptr %0, align 8, !dbg !14599
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14599
  store ptr %i.p, ptr %i.s, align 8, !dbg !14599
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14599
  store i64 1, ptr %i.t, align 8, !dbg !14599
  br label %bb.f, !dbg !14600

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !14600

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !14601

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !14602
  br label %common.resume, !dbg !14603

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !14598
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !14604 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !14605
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !14606 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !14606, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !14607
  tail call void @llvm.assume(i1 %i.x), !dbg !14608
  %i.y = icmp eq i64 %.val5, %2, !dbg !14609
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !14609

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !14598
  unreachable, !dbg !14598

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !14610
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !14611 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !14611, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !14612
  store ptr %.val6, ptr %i.k, align 8, !dbg !14613, !alias.scope !14574
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14613
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !14613, !alias.scope !14574
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14613
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes9UInt8TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !14613, !alias.scope !14574
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes9UInt8TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !14614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14615
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !14610

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !14575), !dbg !14616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14617
  %i.ae = icmp eq i64 %2, 1, !dbg !14617
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !14617

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14618, !noalias !14575
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !14619, !noalias !14575 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !14620
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !14621, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !14622, !noalias !14575
  unreachable, !dbg !14622

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14623, !noalias !14575
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes9UInt8TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !14624, !noalias !14575

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14625, !noalias !14575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14626, !noalias !14575
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !14626, !noalias !14575
  %i.ah = load i64, ptr %i.b, align 8, !dbg !14626, !range !2367, !noalias !14575, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !14627
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14628
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !14628, !range !2389, !noalias !14575, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14628 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !14627, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !14629, !noalias !14575
  br label %common.resume, !dbg !14630

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !14631, !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14631, !noalias !14575
  store i64 1, ptr %0, align 8, !dbg !14632, !alias.scope !14575
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14632
  store ptr %i.af, ptr %i.an, align 8, !dbg !14632, !alias.scope !14575
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14632
  store i64 1, ptr %i.ao, align 8, !dbg !14632, !alias.scope !14575
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !14633

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14634, !noalias !14575
  unreachable, !dbg !14634

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !14635, !noalias !14575
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !14636, !noalias !14575
  unreachable, !dbg !14636

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !14637, !noalias !14575, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !14638
  call void @llvm.assume(i1 %i.as), !dbg !14639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14640, !noalias !14575
  store i64 %i.ak, ptr %i.i, align 8, !dbg !14641, !noalias !14575
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14641 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !14641, !noalias !14575
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14641 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !14641, !noalias !14575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14642, !noalias !14575
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes9UInt8TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !14643, !noalias !14575

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes9UInt8TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !14644, !noalias !14575

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !14645

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !14646, !noalias !14575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14647, !noalias !14575
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !14647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !14647, !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14648, !noalias !14575
  store i64 1, ptr %i.au, align 8, !dbg !14649, !alias.scope !14577, !noalias !14575
  %i.ay = icmp sgt i64 %2, 2, !dbg !14650
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !14651

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !14651

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !14652, !alias.scope !14579, !noalias !14575
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !14653, !range !2408, !alias.scope !14579, !noalias !14575
  br label %._crit_edge.i, !dbg !14654

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !14653
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !14652 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14654, !noalias !14575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !14654, !noalias !14575
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !14655
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !14655

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes9UInt8TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !14656, !noalias !14580

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !14657, !noalias !14575

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14658, !noalias !14575
  unreachable, !dbg !14658

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !14659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14660, !noalias !14575
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes9UInt8TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !14661, !noalias !14575

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !14662, !alias.scope !14579, !noalias !14575, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !14663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !14664, !noalias !14575
  %i.bj = add i64 %i.bc, 1, !dbg !14665
  store i64 %i.bj, ptr %i.au, align 8, !dbg !14665, !alias.scope !14579, !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14666, !noalias !14575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !14667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14645, !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14644, !noalias !14575
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !14633

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !14668, !noalias !14575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14669, !noalias !14575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !14669, !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14670, !noalias !14575
  %i.bk = load i64, ptr %i.au, align 8, !dbg !14671, !alias.scope !14581, !noalias !14575, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !14672, !range !2408, !alias.scope !14581, !noalias !14575, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !14673
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !14673

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes9UInt8TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !14674, !noalias !14582

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !14675, !noalias !14575

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14676, !noalias !14575
  unreachable, !dbg !14676

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14677, !noalias !14575
  br label %.thread22.i, !dbg !14678

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !14679, !alias.scope !14581, !noalias !14575, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !14680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !14681, !noalias !14575
  %i.bs = add i64 %i.bk, 1, !dbg !14682
  store i64 %i.bs, ptr %i.au, align 8, !dbg !14682, !alias.scope !14581, !noalias !14575
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !14677, !noalias !14575

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14677, !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14678, !noalias !14575
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !14650
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !14651

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !14678, !noalias !14575

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !14645, !noalias !14575

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14633
  br label %bb.f, !dbg !14616

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !14683, !noalias !14583, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !14684, !noalias !14583, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !14685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14686, !noalias !14584
  store ptr %i.bt, ptr %i.a, align 8, !dbg !14687, !alias.scope !14585, !noalias !14586
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14687
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14687, !alias.scope !14585, !noalias !14586
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14687
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14687, !alias.scope !14585, !noalias !14586
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes9UInt8TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2K_INtNtNtB2S_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB62_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !14688, !noalias !14587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14689, !noalias !14584
  br label %bb.f, !dbg !14690
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs5rycEC1AXKJ_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(323) %4, i64 noundef %5) unnamed_addr #2 !dbg !14691 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NtNtCs5rycEC1AXKJ_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(323) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull %2, i64 noundef %3), !dbg !14723 ; 6 uses
  %.val = load i8, ptr %4, align 1, !dbg !14724, !range !2229, !noundef !2226
  %i.b = trunc nuw i8 %.val to i1, !dbg !14725
  br i1 %i.b, label %bb.b, label %.thread, !dbg !14726

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %i.a, %3, !dbg !14727
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !14727, !prof !2279

bb.c:                                             ; preds = %bb.b
  %i.d = sub nuw nsw i64 %3, %i.a, !dbg !14728    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.a, !dbg !14729 ; 3 uses
  %i.f = sub nsw i64 0, %i.a, !dbg !14730
  %i.g = and i64 %i.f, 3, !dbg !14730             ; 3 uses
  %.not = icmp eq i64 %i.g, 0, !dbg !14731
  br i1 %.not, label %.thread, label %.lr.ph, !dbg !14722

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #54, !dbg !14732
  unreachable, !dbg !14732

.lr.ph:                                           ; preds = %bb.c
  %exitcond.not = icmp eq i64 %3, %i.a, !dbg !14733
  br i1 %exitcond.not, label %bb.h, label %bb.e, !dbg !14733

.thread:                                          ; preds = %bb.e, %bb.f, %bb.g, %bb.c, %bb.a
  ret void, !dbg !14734

bb.e:                                             ; preds = %.lr.ph
  store i8 61, ptr %i.e, align 1, !dbg !14733
  %exitcond14.not = icmp eq i64 %i.g, 1, !dbg !14731
  br i1 %exitcond14.not, label %.thread, label %.lr.ph.1, !dbg !14722

.lr.ph.1:                                         ; preds = %bb.e
  %exitcond.not.1 = icmp eq i64 %i.d, 1, !dbg !14733
  br i1 %exitcond.not.1, label %bb.h, label %bb.f, !dbg !14733

bb.f:                                             ; preds = %.lr.ph.1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !14733
  store i8 61, ptr %i.h, align 1, !dbg !14733
  %exitcond14.not.1 = icmp eq i64 %i.g, 2, !dbg !14731
  br i1 %exitcond14.not.1, label %.thread, label %.lr.ph.2, !dbg !14722

.lr.ph.2:                                         ; preds = %bb.f
  %exitcond.not.2 = icmp eq i64 %i.d, 2, !dbg !14733
  br i1 %exitcond.not.2, label %bb.h, label %bb.g, !dbg !14733

bb.g:                                             ; preds = %.lr.ph.2
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2, !dbg !14733
  store i8 61, ptr %i.i, align 1, !dbg !14733
  br label %.thread, !dbg !14722

bb.h:                                             ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #54, !dbg !14733
  unreachable, !dbg !14733
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtCs6TExLLFF6W4_8bytemuck10allocation14try_zeroed_vecNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 noundef %1) unnamed_addr #4 !dbg !14735 {
bb.a:
  %i.a = icmp eq i64 %1, 0, !dbg !14755
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !14755

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !14756
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14756
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14756
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14756
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14756
  br label %bb.e, !dbg !14757

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 4611686018427387903, !dbg !14758
  br i1 %i.b, label %_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit.thread, label %_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit, !dbg !14758

_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.c
  %i.c = shl nuw nsw i64 %1, 1, !dbg !14759
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14760
  %i.d = tail call noundef align 2 ptr @_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed(i64 noundef %i.c, i64 noundef 2) #56, !dbg !14761 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !14762
  br i1 %i.e, label %_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.d, !dbg !14763

_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %bb.c, %_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !14764
  br label %bb.e, !dbg !14765

bb.d:                                             ; preds = %_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit
  store i64 %1, ptr %0, align 8, !dbg !14766
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14766
  store ptr %i.d, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !14766
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14766
  store i64 %1, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !14766
  br label %bb.e, !dbg !14757

bb.e:                                             ; preds = %bb.b, %bb.d, %_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit.thread
  ret void, !dbg !14765
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtCs6TExLLFF6W4_8bytemuck10allocation14try_zeroed_vecaECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 noundef %1) unnamed_addr #4 !dbg !14767 {
bb.a:
  %i.a = icmp eq i64 %1, 0, !dbg !14787
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !14787

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !14788
end_hunk_0
