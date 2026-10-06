Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.13?download=true
inline.NumInlined: 10113
inline.NumDeleted: 4526
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !12463
  unreachable, !dbg !12463

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !12464
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt16TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !12465

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !12466
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !12466

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !12435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !12435
  store i64 1, ptr %0, align 8, !dbg !12467
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12467
  store ptr %i.p, ptr %i.s, align 8, !dbg !12467
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12467
  store i64 1, ptr %i.t, align 8, !dbg !12467
  br label %bb.f, !dbg !12468

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !12468

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !12469

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !12470
  br label %common.resume, !dbg !12471

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !12466
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !12472 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !12473
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !12474 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !12474, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !12475
  tail call void @llvm.assume(i1 %i.x), !dbg !12476
  %i.y = icmp eq i64 %.val5, %2, !dbg !12477
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !12477

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !12466
  unreachable, !dbg !12466

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !12478
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !12479 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !12479, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !12480
  store ptr %.val6, ptr %i.k, align 8, !dbg !12481, !alias.scope !12441
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !12481
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !12481, !alias.scope !12441
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !12481
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes10UInt16TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !12481, !alias.scope !12441
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes10UInt16TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !12482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12483
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !12478

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !12442), !dbg !12484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12485
  %i.ae = icmp eq i64 %2, 1, !dbg !12485
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !12485

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !12486, !noalias !12442
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !12487, !noalias !12442 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !12488
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !12489, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !12490, !noalias !12442
  unreachable, !dbg !12490

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12491, !noalias !12442
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt16TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !12492, !noalias !12442

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12493, !noalias !12442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12494, !noalias !12442
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !12494, !noalias !12442
  %i.ah = load i64, ptr %i.b, align 8, !dbg !12494, !range !2367, !noalias !12442, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !12495
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12496
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !12496, !range !2389, !noalias !12442, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12496 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !12495, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !12497, !noalias !12442
  br label %common.resume, !dbg !12498

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !12499, !noalias !12442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !12499, !noalias !12442
  store i64 1, ptr %0, align 8, !dbg !12500, !alias.scope !12442
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12500
  store ptr %i.af, ptr %i.an, align 8, !dbg !12500, !alias.scope !12442
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12500
  store i64 1, ptr %i.ao, align 8, !dbg !12500, !alias.scope !12442
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !12501

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !12502, !noalias !12442
  unreachable, !dbg !12502

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !12503, !noalias !12442
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !12504, !noalias !12442
  unreachable, !dbg !12504

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !12505, !noalias !12442, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !12506
  call void @llvm.assume(i1 %i.as), !dbg !12507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12508, !noalias !12442
  store i64 %i.ak, ptr %i.i, align 8, !dbg !12509, !noalias !12442
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !12509 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !12509, !noalias !12442
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !12509 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !12509, !noalias !12442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12510, !noalias !12442
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt16TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !12511, !noalias !12442

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes10UInt16TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !12512, !noalias !12442

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !12513

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !12514, !noalias !12442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12515, !noalias !12442
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !12515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !12515, !noalias !12442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12516, !noalias !12442
  store i64 1, ptr %i.au, align 8, !dbg !12517, !alias.scope !12444, !noalias !12445
  %i.ay = icmp sgt i64 %2, 2, !dbg !12518
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !12519

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !12519

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !12520, !alias.scope !12447, !noalias !12448
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !12521, !range !2408, !alias.scope !12447, !noalias !12448
  br label %._crit_edge.i, !dbg !12522

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !12521
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !12520 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12522, !noalias !12442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !12522, !noalias !12442
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !12523
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !12523

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes10UInt16TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !12524, !noalias !12448

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !12525, !noalias !12442

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !12526, !noalias !12442
  unreachable, !dbg !12526

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !12527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12528, !noalias !12442
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt16TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !12529, !noalias !12442

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !12530, !alias.scope !12447, !noalias !12448, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !12531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !12532, !noalias !12442
  %i.bj = add i64 %i.bc, 1, !dbg !12533
  store i64 %i.bj, ptr %i.au, align 8, !dbg !12533, !alias.scope !12447, !noalias !12448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12534, !noalias !12442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !12535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12513, !noalias !12442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12512, !noalias !12442
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !12501

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !12536, !noalias !12442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12537, !noalias !12442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !12537, !noalias !12442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12538, !noalias !12442
  %i.bk = load i64, ptr %i.au, align 8, !dbg !12539, !alias.scope !12449, !noalias !12450, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !12540, !range !2408, !alias.scope !12449, !noalias !12450, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !12541
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !12541

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes10UInt16TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !12542, !noalias !12450

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !12543, !noalias !12442

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !12544, !noalias !12442
  unreachable, !dbg !12544

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !12545, !noalias !12442
  br label %.thread22.i, !dbg !12546

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !12547, !alias.scope !12449, !noalias !12450, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !12548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !12549, !noalias !12442
  %i.bs = add i64 %i.bk, 1, !dbg !12550
  store i64 %i.bs, ptr %i.au, align 8, !dbg !12550, !alias.scope !12449, !noalias !12450
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !12545, !noalias !12442

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !12545, !noalias !12442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12546, !noalias !12442
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !12518
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !12519

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !12546, !noalias !12442

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !12513, !noalias !12442

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt16TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12501
  br label %bb.f, !dbg !12484

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !12551, !noalias !12451, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !12552, !noalias !12451, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !12553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12554, !noalias !12452
  store ptr %i.bt, ptr %i.a, align 8, !dbg !12555, !alias.scope !12453, !noalias !12454
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12555
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12555, !alias.scope !12453, !noalias !12454
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12555
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12555, !alias.scope !12453, !noalias !12454
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes10UInt16TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2M_INtNtNtB2U_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB64_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !12556, !noalias !12455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12557, !noalias !12452
  br label %bb.f, !dbg !12558
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12559 {
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
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !12768
  %.val = load i64, ptr %i.n, align 8, !dbg !12768, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !12769
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !12769

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !12770
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !12771 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !12772
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !12773, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !12774
  unreachable, !dbg !12774

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !12775
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt32TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !12776

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !12777
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !12777

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !12746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !12746
  store i64 1, ptr %0, align 8, !dbg !12778
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12778
  store ptr %i.p, ptr %i.s, align 8, !dbg !12778
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12778
  store i64 1, ptr %i.t, align 8, !dbg !12778
  br label %bb.f, !dbg !12779

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !12779

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !12780

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !12781
  br label %common.resume, !dbg !12782

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !12777
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !12783 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !12784
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !12785 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !12785, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !12786
  tail call void @llvm.assume(i1 %i.x), !dbg !12787
  %i.y = icmp eq i64 %.val5, %2, !dbg !12788
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !12788

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !12777
  unreachable, !dbg !12777

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !12789
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !12790 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !12790, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !12791
  store ptr %.val6, ptr %i.k, align 8, !dbg !12792, !alias.scope !12752
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !12792
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !12792, !alias.scope !12752
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !12792
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes10UInt32TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !12792, !alias.scope !12752
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes10UInt32TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !12793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12794
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !12789

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !12753), !dbg !12795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12796
  %i.ae = icmp eq i64 %2, 1, !dbg !12796
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !12796

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !12797, !noalias !12753
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !12798, !noalias !12753 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !12799
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !12800, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !12801, !noalias !12753
  unreachable, !dbg !12801

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12802, !noalias !12753
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt32TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !12803, !noalias !12753

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12804, !noalias !12753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12805, !noalias !12753
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !12805, !noalias !12753
  %i.ah = load i64, ptr %i.b, align 8, !dbg !12805, !range !2367, !noalias !12753, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !12806
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12807
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !12807, !range !2389, !noalias !12753, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12807 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !12806, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !12808, !noalias !12753
  br label %common.resume, !dbg !12809

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !12810, !noalias !12753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !12810, !noalias !12753
  store i64 1, ptr %0, align 8, !dbg !12811, !alias.scope !12753
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12811
  store ptr %i.af, ptr %i.an, align 8, !dbg !12811, !alias.scope !12753
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12811
  store i64 1, ptr %i.ao, align 8, !dbg !12811, !alias.scope !12753
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !12812

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !12813, !noalias !12753
  unreachable, !dbg !12813

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !12814, !noalias !12753
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !12815, !noalias !12753
  unreachable, !dbg !12815

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !12816, !noalias !12753, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !12817
  call void @llvm.assume(i1 %i.as), !dbg !12818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12819, !noalias !12753
  store i64 %i.ak, ptr %i.i, align 8, !dbg !12820, !noalias !12753
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !12820 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !12820, !noalias !12753
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !12820 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !12820, !noalias !12753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12821, !noalias !12753
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt32TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !12822, !noalias !12753

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes10UInt32TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !12823, !noalias !12753

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !12824

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !12825, !noalias !12753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12826, !noalias !12753
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !12826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !12826, !noalias !12753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12827, !noalias !12753
  store i64 1, ptr %i.au, align 8, !dbg !12828, !alias.scope !12755, !noalias !12756
  %i.ay = icmp sgt i64 %2, 2, !dbg !12829
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !12830

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !12830

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !12831, !alias.scope !12758, !noalias !12759
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !12832, !range !2408, !alias.scope !12758, !noalias !12759
  br label %._crit_edge.i, !dbg !12833

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !12832
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !12831 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12833, !noalias !12753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !12833, !noalias !12753
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !12834
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !12834

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes10UInt32TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !12835, !noalias !12759

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !12836, !noalias !12753

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !12837, !noalias !12753
  unreachable, !dbg !12837

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !12838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12839, !noalias !12753
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt32TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !12840, !noalias !12753

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !12841, !alias.scope !12758, !noalias !12759, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !12842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !12843, !noalias !12753
  %i.bj = add i64 %i.bc, 1, !dbg !12844
  store i64 %i.bj, ptr %i.au, align 8, !dbg !12844, !alias.scope !12758, !noalias !12759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12845, !noalias !12753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !12846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12824, !noalias !12753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12823, !noalias !12753
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !12812

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !12847, !noalias !12753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12848, !noalias !12753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !12848, !noalias !12753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12849, !noalias !12753
  %i.bk = load i64, ptr %i.au, align 8, !dbg !12850, !alias.scope !12760, !noalias !12761, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !12851, !range !2408, !alias.scope !12760, !noalias !12761, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !12852
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !12852

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes10UInt32TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !12853, !noalias !12761

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !12854, !noalias !12753

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !12855, !noalias !12753
  unreachable, !dbg !12855

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !12856, !noalias !12753
  br label %.thread22.i, !dbg !12857

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !12858, !alias.scope !12760, !noalias !12761, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !12859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !12860, !noalias !12753
  %i.bs = add i64 %i.bk, 1, !dbg !12861
  store i64 %i.bs, ptr %i.au, align 8, !dbg !12861, !alias.scope !12760, !noalias !12761
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !12856, !noalias !12753

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !12856, !noalias !12753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12857, !noalias !12753
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !12829
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !12830

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !12857, !noalias !12753

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !12824, !noalias !12753

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12812
  br label %bb.f, !dbg !12795

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !12862, !noalias !12762, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !12863, !noalias !12762, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !12864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12865, !noalias !12763
  store ptr %i.bt, ptr %i.a, align 8, !dbg !12866, !alias.scope !12764, !noalias !12765
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12866
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12866, !alias.scope !12764, !noalias !12765
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12866
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12866, !alias.scope !12764, !noalias !12765
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes10UInt32TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2M_INtNtNtB2U_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB64_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !12867, !noalias !12766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12868, !noalias !12763
  br label %bb.f, !dbg !12869
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12870 {
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
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !13079
  %.val = load i64, ptr %i.n, align 8, !dbg !13079, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !13080
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !13080

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13081
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13082 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !13083
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !13084, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13085
  unreachable, !dbg !13085

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !13086
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt64TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !13087

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !13088
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !13088

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !13057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !13057
  store i64 1, ptr %0, align 8, !dbg !13089
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13089
  store ptr %i.p, ptr %i.s, align 8, !dbg !13089
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13089
  store i64 1, ptr %i.t, align 8, !dbg !13089
  br label %bb.f, !dbg !13090

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !13090

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !13091

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !13092
  br label %common.resume, !dbg !13093

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !13088
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !13094 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !13095
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !13096 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !13096, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !13097
  tail call void @llvm.assume(i1 %i.x), !dbg !13098
  %i.y = icmp eq i64 %.val5, %2, !dbg !13099
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !13099

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !13088
  unreachable, !dbg !13088

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !13100
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !13101 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !13101, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !13102
  store ptr %.val6, ptr %i.k, align 8, !dbg !13103, !alias.scope !13063
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13103
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !13103, !alias.scope !13063
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !13103
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes10UInt64TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !13103, !alias.scope !13063
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes10UInt64TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !13104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13105
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !13100

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !13064), !dbg !13106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13107
  %i.ae = icmp eq i64 %2, 1, !dbg !13107
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !13107

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13108, !noalias !13064
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13109, !noalias !13064 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !13110
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !13111, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13112, !noalias !13064
  unreachable, !dbg !13112

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13113, !noalias !13064
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt64TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !13114, !noalias !13064

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13115, !noalias !13064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13116, !noalias !13064
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !13116, !noalias !13064
  %i.ah = load i64, ptr %i.b, align 8, !dbg !13116, !range !2367, !noalias !13064, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !13117
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13118
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !13118, !range !2389, !noalias !13064, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13118 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !13117, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !13119, !noalias !13064
  br label %common.resume, !dbg !13120

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !13121, !noalias !13064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !13121, !noalias !13064
  store i64 1, ptr %0, align 8, !dbg !13122, !alias.scope !13064
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13122
  store ptr %i.af, ptr %i.an, align 8, !dbg !13122, !alias.scope !13064
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13122
  store i64 1, ptr %i.ao, align 8, !dbg !13122, !alias.scope !13064
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !13123

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13124, !noalias !13064
  unreachable, !dbg !13124

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !13125, !noalias !13064
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !13126, !noalias !13064
  unreachable, !dbg !13126

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !13127, !noalias !13064, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !13128
  call void @llvm.assume(i1 %i.as), !dbg !13129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13130, !noalias !13064
  store i64 %i.ak, ptr %i.i, align 8, !dbg !13131, !noalias !13064
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !13131 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !13131, !noalias !13064
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !13131 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !13131, !noalias !13064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13132, !noalias !13064
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt64TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !13133, !noalias !13064

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes10UInt64TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !13134, !noalias !13064

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !13135

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !13136, !noalias !13064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13137, !noalias !13064
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !13137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !13137, !noalias !13064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13138, !noalias !13064
  store i64 1, ptr %i.au, align 8, !dbg !13139, !alias.scope !13066, !noalias !13067
  %i.ay = icmp sgt i64 %2, 2, !dbg !13140
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !13141

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !13141

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !13142, !alias.scope !13069, !noalias !13070
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !13143, !range !2408, !alias.scope !13069, !noalias !13070
  br label %._crit_edge.i, !dbg !13144

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !13143
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !13142 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13144, !noalias !13064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !13144, !noalias !13064
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !13145
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !13145

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes10UInt64TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !13146, !noalias !13070

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !13147, !noalias !13064

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13148, !noalias !13064
  unreachable, !dbg !13148

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !13149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13150, !noalias !13064
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt64TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !13151, !noalias !13064

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !13152, !alias.scope !13069, !noalias !13070, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !13153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !13154, !noalias !13064
  %i.bj = add i64 %i.bc, 1, !dbg !13155
  store i64 %i.bj, ptr %i.au, align 8, !dbg !13155, !alias.scope !13069, !noalias !13070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13156, !noalias !13064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !13157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13135, !noalias !13064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13134, !noalias !13064
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !13123

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !13158, !noalias !13064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13159, !noalias !13064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !13159, !noalias !13064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13160, !noalias !13064
  %i.bk = load i64, ptr %i.au, align 8, !dbg !13161, !alias.scope !13071, !noalias !13072, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !13162, !range !2408, !alias.scope !13071, !noalias !13072, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !13163
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !13163

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes10UInt64TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !13164, !noalias !13072

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !13165, !noalias !13064

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13166, !noalias !13064
  unreachable, !dbg !13166

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !13167, !noalias !13064
  br label %.thread22.i, !dbg !13168

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !13169, !alias.scope !13071, !noalias !13072, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !13170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !13171, !noalias !13064
  %i.bs = add i64 %i.bk, 1, !dbg !13172
  store i64 %i.bs, ptr %i.au, align 8, !dbg !13172, !alias.scope !13071, !noalias !13072
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !13167, !noalias !13064

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !13167, !noalias !13064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13168, !noalias !13064
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !13140
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !13141

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !13168, !noalias !13064

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !13135, !noalias !13064

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes10UInt64TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13123
  br label %bb.f, !dbg !13106

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !13173, !noalias !13073, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !13174, !noalias !13073, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !13175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13176, !noalias !13074
  store ptr %i.bt, ptr %i.a, align 8, !dbg !13177, !alias.scope !13075, !noalias !13076
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13177
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13177, !alias.scope !13075, !noalias !13076
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13177
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13177, !alias.scope !13075, !noalias !13076
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes10UInt64TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2M_INtNtNtB2U_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB64_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !13178, !noalias !13077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13179, !noalias !13074
  br label %bb.f, !dbg !13180
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13181 {
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
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !13390
  %.val = load i64, ptr %i.n, align 8, !dbg !13390, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !13391
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !13391

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13392
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13393 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !13394
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !13395, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13396
  unreachable, !dbg !13396

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !13397
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11Float16TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !13398

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !13399
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !13399

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !13368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !13368
  store i64 1, ptr %0, align 8, !dbg !13400
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13400
  store ptr %i.p, ptr %i.s, align 8, !dbg !13400
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13400
  store i64 1, ptr %i.t, align 8, !dbg !13400
  br label %bb.f, !dbg !13401

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !13401

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !13402

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !13403
  br label %common.resume, !dbg !13404

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !13399
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !13405 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !13406
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !13407 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !13407, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !13408
  tail call void @llvm.assume(i1 %i.x), !dbg !13409
  %i.y = icmp eq i64 %.val5, %2, !dbg !13410
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !13410

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !13399
  unreachable, !dbg !13399

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !13411
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !13412 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !13412, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !13413
  store ptr %.val6, ptr %i.k, align 8, !dbg !13414, !alias.scope !13374
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13414
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !13414, !alias.scope !13374
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !13414
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes11Float16TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !13414, !alias.scope !13374
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes11Float16TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !13415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13416
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !13411

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !13375), !dbg !13417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13418
  %i.ae = icmp eq i64 %2, 1, !dbg !13418
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !13418

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13419, !noalias !13375
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13420, !noalias !13375 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !13421
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !13422, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13423, !noalias !13375
  unreachable, !dbg !13423

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13424, !noalias !13375
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11Float16TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !13425, !noalias !13375

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13426, !noalias !13375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13427, !noalias !13375
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !13427, !noalias !13375
  %i.ah = load i64, ptr %i.b, align 8, !dbg !13427, !range !2367, !noalias !13375, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !13428
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13429
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !13429, !range !2389, !noalias !13375, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13429 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !13428, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !13430, !noalias !13375
  br label %common.resume, !dbg !13431

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !13432, !noalias !13375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !13432, !noalias !13375
  store i64 1, ptr %0, align 8, !dbg !13433, !alias.scope !13375
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13433
  store ptr %i.af, ptr %i.an, align 8, !dbg !13433, !alias.scope !13375
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13433
  store i64 1, ptr %i.ao, align 8, !dbg !13433, !alias.scope !13375
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !13434

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13435, !noalias !13375
  unreachable, !dbg !13435

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !13436, !noalias !13375
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !13437, !noalias !13375
  unreachable, !dbg !13437

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !13438, !noalias !13375, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !13439
  call void @llvm.assume(i1 %i.as), !dbg !13440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13441, !noalias !13375
  store i64 %i.ak, ptr %i.i, align 8, !dbg !13442, !noalias !13375
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !13442 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !13442, !noalias !13375
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !13442 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !13442, !noalias !13375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13443, !noalias !13375
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float16TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !13444, !noalias !13375

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes11Float16TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !13445, !noalias !13375

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !13446

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !13447, !noalias !13375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13448, !noalias !13375
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !13448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !13448, !noalias !13375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13449, !noalias !13375
  store i64 1, ptr %i.au, align 8, !dbg !13450, !alias.scope !13377, !noalias !13378
  %i.ay = icmp sgt i64 %2, 2, !dbg !13451
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !13452

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !13452

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !13453, !alias.scope !13380, !noalias !13381
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !13454, !range !2408, !alias.scope !13380, !noalias !13381
  br label %._crit_edge.i, !dbg !13455

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !13454
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !13453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13455, !noalias !13375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !13455, !noalias !13375
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !13456
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !13456

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11Float16TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !13457, !noalias !13381

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !13458, !noalias !13375

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13459, !noalias !13375
  unreachable, !dbg !13459

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !13460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13461, !noalias !13375
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float16TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !13462, !noalias !13375

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !13463, !alias.scope !13380, !noalias !13381, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !13464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !13465, !noalias !13375
  %i.bj = add i64 %i.bc, 1, !dbg !13466
  store i64 %i.bj, ptr %i.au, align 8, !dbg !13466, !alias.scope !13380, !noalias !13381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13467, !noalias !13375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !13468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13446, !noalias !13375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13445, !noalias !13375
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !13434

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !13469, !noalias !13375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13470, !noalias !13375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !13470, !noalias !13375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13471, !noalias !13375
  %i.bk = load i64, ptr %i.au, align 8, !dbg !13472, !alias.scope !13382, !noalias !13383, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !13473, !range !2408, !alias.scope !13382, !noalias !13383, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !13474
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !13474

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11Float16TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !13475, !noalias !13383

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !13476, !noalias !13375

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13477, !noalias !13375
  unreachable, !dbg !13477

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !13478, !noalias !13375
  br label %.thread22.i, !dbg !13479

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !13480, !alias.scope !13382, !noalias !13383, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !13481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !13482, !noalias !13375
  %i.bs = add i64 %i.bk, 1, !dbg !13483
  store i64 %i.bs, ptr %i.au, align 8, !dbg !13483, !alias.scope !13382, !noalias !13383
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !13478, !noalias !13375

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !13478, !noalias !13375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13479, !noalias !13375
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !13451
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !13452

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !13479, !noalias !13375

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !13446, !noalias !13375

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float16TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13434
  br label %bb.f, !dbg !13417

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !13484, !noalias !13384, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !13485, !noalias !13384, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !13486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13487, !noalias !13385
  store ptr %i.bt, ptr %i.a, align 8, !dbg !13488, !alias.scope !13386, !noalias !13387
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13488
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13488, !alias.scope !13386, !noalias !13387
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13488
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13488, !alias.scope !13386, !noalias !13387
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes11Float16TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2N_INtNtNtB2V_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB65_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !13489, !noalias !13388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13490, !noalias !13385
  br label %bb.f, !dbg !13491
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13492 {
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
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !13701
  %.val = load i64, ptr %i.n, align 8, !dbg !13701, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !13702
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !13702

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13703
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13704 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !13705
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !13706, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13707
  unreachable, !dbg !13707

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !13708
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11Float32TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !13709

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !13710
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !13710

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !13679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !13679
  store i64 1, ptr %0, align 8, !dbg !13711
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13711
  store ptr %i.p, ptr %i.s, align 8, !dbg !13711
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13711
  store i64 1, ptr %i.t, align 8, !dbg !13711
  br label %bb.f, !dbg !13712

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !13712

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !13713

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !13714
  br label %common.resume, !dbg !13715

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !13710
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !13716 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !13717
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !13718 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !13718, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !13719
  tail call void @llvm.assume(i1 %i.x), !dbg !13720
  %i.y = icmp eq i64 %.val5, %2, !dbg !13721
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !13721

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !13710
  unreachable, !dbg !13710

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !13722
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !13723 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !13723, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !13724
  store ptr %.val6, ptr %i.k, align 8, !dbg !13725, !alias.scope !13685
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13725
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !13725, !alias.scope !13685
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !13725
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes11Float32TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !13725, !alias.scope !13685
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes11Float32TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !13726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13727
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !13722

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !13686), !dbg !13728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13729
  %i.ae = icmp eq i64 %2, 1, !dbg !13729
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !13729

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !13730, !noalias !13686
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !13731, !noalias !13686 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !13732
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !13733, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !13734, !noalias !13686
  unreachable, !dbg !13734

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13735, !noalias !13686
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11Float32TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !13736, !noalias !13686

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13737, !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13738, !noalias !13686
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !13738, !noalias !13686
  %i.ah = load i64, ptr %i.b, align 8, !dbg !13738, !range !2367, !noalias !13686, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !13739
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13740
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !13740, !range !2389, !noalias !13686, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13740 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !13739, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !13741, !noalias !13686
  br label %common.resume, !dbg !13742

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !13743, !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !13743, !noalias !13686
  store i64 1, ptr %0, align 8, !dbg !13744, !alias.scope !13686
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13744
  store ptr %i.af, ptr %i.an, align 8, !dbg !13744, !alias.scope !13686
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13744
  store i64 1, ptr %i.ao, align 8, !dbg !13744, !alias.scope !13686
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !13745

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13746, !noalias !13686
  unreachable, !dbg !13746

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !13747, !noalias !13686
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !13748, !noalias !13686
  unreachable, !dbg !13748

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !13749, !noalias !13686, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !13750
  call void @llvm.assume(i1 %i.as), !dbg !13751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13752, !noalias !13686
  store i64 %i.ak, ptr %i.i, align 8, !dbg !13753, !noalias !13686
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !13753 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !13753, !noalias !13686
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !13753 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !13753, !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13754, !noalias !13686
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float32TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !13755, !noalias !13686

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes11Float32TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !13756, !noalias !13686

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !13757

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !13758, !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13759, !noalias !13686
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !13759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !13759, !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13760, !noalias !13686
  store i64 1, ptr %i.au, align 8, !dbg !13761, !alias.scope !13688, !noalias !13689
  %i.ay = icmp sgt i64 %2, 2, !dbg !13762
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !13763

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !13763

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !13764, !alias.scope !13691, !noalias !13692
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !13765, !range !2408, !alias.scope !13691, !noalias !13692
  br label %._crit_edge.i, !dbg !13766

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !13765
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !13764 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13766, !noalias !13686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !13766, !noalias !13686
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !13767
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !13767

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11Float32TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !13768, !noalias !13692

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !13769, !noalias !13686

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13770, !noalias !13686
  unreachable, !dbg !13770

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !13771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13772, !noalias !13686
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float32TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !13773, !noalias !13686

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !13774, !alias.scope !13691, !noalias !13692, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !13775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !13776, !noalias !13686
  %i.bj = add i64 %i.bc, 1, !dbg !13777
  store i64 %i.bj, ptr %i.au, align 8, !dbg !13777, !alias.scope !13691, !noalias !13692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13778, !noalias !13686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !13779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13757, !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13756, !noalias !13686
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !13745

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !13780, !noalias !13686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13781, !noalias !13686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !13781, !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13782, !noalias !13686
  %i.bk = load i64, ptr %i.au, align 8, !dbg !13783, !alias.scope !13693, !noalias !13694, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !13784, !range !2408, !alias.scope !13693, !noalias !13694, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !13785
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !13785

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11Float32TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !13786, !noalias !13694

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !13787, !noalias !13686

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !13788, !noalias !13686
  unreachable, !dbg !13788

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !13789, !noalias !13686
  br label %.thread22.i, !dbg !13790

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !13791, !alias.scope !13693, !noalias !13694, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !13792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !13793, !noalias !13686
  %i.bs = add i64 %i.bk, 1, !dbg !13794
  store i64 %i.bs, ptr %i.au, align 8, !dbg !13794, !alias.scope !13693, !noalias !13694
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !13789, !noalias !13686

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !13789, !noalias !13686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13790, !noalias !13686
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !13762
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !13763

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !13790, !noalias !13686

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !13757, !noalias !13686

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float32TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13745
  br label %bb.f, !dbg !13728

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !13795, !noalias !13695, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !13796, !noalias !13695, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !13797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13798, !noalias !13696
  store ptr %i.bt, ptr %i.a, align 8, !dbg !13799, !alias.scope !13697, !noalias !13698
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13799
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13799, !alias.scope !13697, !noalias !13698
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13799
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13799, !alias.scope !13697, !noalias !13698
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes11Float32TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2N_INtNtNtB2V_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB65_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !13800, !noalias !13699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13801, !noalias !13696
  br label %bb.f, !dbg !13802
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13803 {
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
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !14012
  %.val = load i64, ptr %i.n, align 8, !dbg !14012, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !14013
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !14013

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14014
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !14015 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !14016
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !14017, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !14018
  unreachable, !dbg !14018

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !14019
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11Float64TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !14020

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !14021
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !14021

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !13990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !13990
  store i64 1, ptr %0, align 8, !dbg !14022
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14022
  store ptr %i.p, ptr %i.s, align 8, !dbg !14022
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14022
  store i64 1, ptr %i.t, align 8, !dbg !14022
  br label %bb.f, !dbg !14023

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !14023

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !14024

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !14025
  br label %common.resume, !dbg !14026

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !14021
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !14027 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !14028
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !14029 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !14029, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !14030
  tail call void @llvm.assume(i1 %i.x), !dbg !14031
  %i.y = icmp eq i64 %.val5, %2, !dbg !14032
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !14032

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !14021
  unreachable, !dbg !14021

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !14033
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !14034 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !14034, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !14035
  store ptr %.val6, ptr %i.k, align 8, !dbg !14036, !alias.scope !13996
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14036
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !14036, !alias.scope !13996
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14036
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes11Float64TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !14036, !alias.scope !13996
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes11Float64TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !14037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14038
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !14033

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !13997), !dbg !14039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14040
  %i.ae = icmp eq i64 %2, 1, !dbg !14040
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !14040

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14041, !noalias !13997
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !14042, !noalias !13997 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !14043
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !14044, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !14045, !noalias !13997
  unreachable, !dbg !14045

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14046, !noalias !13997
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11Float64TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !14047, !noalias !13997

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14048, !noalias !13997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14049, !noalias !13997
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !14049, !noalias !13997
  %i.ah = load i64, ptr %i.b, align 8, !dbg !14049, !range !2367, !noalias !13997, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !14050
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14051
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !14051, !range !2389, !noalias !13997, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14051 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !14050, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !14052, !noalias !13997
  br label %common.resume, !dbg !14053

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !14054, !noalias !13997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14054, !noalias !13997
  store i64 1, ptr %0, align 8, !dbg !14055, !alias.scope !13997
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14055
  store ptr %i.af, ptr %i.an, align 8, !dbg !14055, !alias.scope !13997
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14055
  store i64 1, ptr %i.ao, align 8, !dbg !14055, !alias.scope !13997
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !14056

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14057, !noalias !13997
  unreachable, !dbg !14057

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !14058, !noalias !13997
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !14059, !noalias !13997
  unreachable, !dbg !14059

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !14060, !noalias !13997, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !14061
  call void @llvm.assume(i1 %i.as), !dbg !14062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14063, !noalias !13997
  store i64 %i.ak, ptr %i.i, align 8, !dbg !14064, !noalias !13997
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14064 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !14064, !noalias !13997
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14064 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !14064, !noalias !13997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14065, !noalias !13997
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float64TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !14066, !noalias !13997

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes11Float64TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !14067, !noalias !13997

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !14068

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !14069, !noalias !13997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14070, !noalias !13997
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !14070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !14070, !noalias !13997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14071, !noalias !13997
  store i64 1, ptr %i.au, align 8, !dbg !14072, !alias.scope !13999, !noalias !14000
  %i.ay = icmp sgt i64 %2, 2, !dbg !14073
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !14074

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !14074

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !14075, !alias.scope !14002, !noalias !14003
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !14076, !range !2408, !alias.scope !14002, !noalias !14003
  br label %._crit_edge.i, !dbg !14077

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !14076
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !14075 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14077, !noalias !13997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !14077, !noalias !13997
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !14078
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !14078

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11Float64TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !14079, !noalias !14003

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !14080, !noalias !13997

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14081, !noalias !13997
  unreachable, !dbg !14081

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !14082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14083, !noalias !13997
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float64TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !14084, !noalias !13997

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !14085, !alias.scope !14002, !noalias !14003, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !14086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !14087, !noalias !13997
  %i.bj = add i64 %i.bc, 1, !dbg !14088
  store i64 %i.bj, ptr %i.au, align 8, !dbg !14088, !alias.scope !14002, !noalias !14003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14089, !noalias !13997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !14090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14068, !noalias !13997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14067, !noalias !13997
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !14056

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !14091, !noalias !13997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14092, !noalias !13997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !14092, !noalias !13997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14093, !noalias !13997
  %i.bk = load i64, ptr %i.au, align 8, !dbg !14094, !alias.scope !14004, !noalias !14005, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !14095, !range !2408, !alias.scope !14004, !noalias !14005, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !14096
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !14096

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11Float64TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !14097, !noalias !14005

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !14098, !noalias !13997

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14099, !noalias !13997
  unreachable, !dbg !14099

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14100, !noalias !13997
  br label %.thread22.i, !dbg !14101

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !14102, !alias.scope !14004, !noalias !14005, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !14103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !14104, !noalias !13997
  %i.bs = add i64 %i.bk, 1, !dbg !14105
  store i64 %i.bs, ptr %i.au, align 8, !dbg !14105, !alias.scope !14004, !noalias !14005
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !14100, !noalias !13997

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14100, !noalias !13997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14101, !noalias !13997
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !14073
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !14074

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !14101, !noalias !13997

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !14068, !noalias !13997

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11Float64TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14056
  br label %bb.f, !dbg !14039

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !14106, !noalias !14006, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !14107, !noalias !14006, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !14108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14109, !noalias !14007
  store ptr %i.bt, ptr %i.a, align 8, !dbg !14110, !alias.scope !14008, !noalias !14009
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14110
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14110, !alias.scope !14008, !noalias !14009
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14110
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14110, !alias.scope !14008, !noalias !14009
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes11Float64TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2N_INtNtNtB2V_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB65_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !14111, !noalias !14010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14112, !noalias !14007
  br label %bb.f, !dbg !14113
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14114 {
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
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !14323
  %.val = load i64, ptr %i.n, align 8, !dbg !14323, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !14324
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !14324

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14325
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !14326 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !14327
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !14328, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !14329
  unreachable, !dbg !14329

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !14330
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11UInt128TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !14331

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !14332
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !14332

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !14301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !14301
  store i64 1, ptr %0, align 8, !dbg !14333
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14333
  store ptr %i.p, ptr %i.s, align 8, !dbg !14333
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14333
  store i64 1, ptr %i.t, align 8, !dbg !14333
  br label %bb.f, !dbg !14334

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !14334

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !14335

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !14336
  br label %common.resume, !dbg !14337

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !14332
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !14338 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !14339
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !14340 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !14340, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !14341
  tail call void @llvm.assume(i1 %i.x), !dbg !14342
  %i.y = icmp eq i64 %.val5, %2, !dbg !14343
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !14343

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !14332
  unreachable, !dbg !14332

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !14344
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !14345 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !14345, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !14346
  store ptr %.val6, ptr %i.k, align 8, !dbg !14347, !alias.scope !14307
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14347
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !14347, !alias.scope !14307
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14347
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes11UInt128TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !14347, !alias.scope !14307
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes11UInt128TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !14348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14349
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !14344

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !14308), !dbg !14350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14351
  %i.ae = icmp eq i64 %2, 1, !dbg !14351
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !14351

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14352, !noalias !14308
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !14353, !noalias !14308 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !14354
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !14355, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !14356, !noalias !14308
  unreachable, !dbg !14356

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14357, !noalias !14308
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes11UInt128TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !14358, !noalias !14308

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14359, !noalias !14308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14360, !noalias !14308
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !14360, !noalias !14308
  %i.ah = load i64, ptr %i.b, align 8, !dbg !14360, !range !2367, !noalias !14308, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !14361
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14362
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !14362, !range !2389, !noalias !14308, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14362 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !14361, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !14363, !noalias !14308
  br label %common.resume, !dbg !14364

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !14365, !noalias !14308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14365, !noalias !14308
  store i64 1, ptr %0, align 8, !dbg !14366, !alias.scope !14308
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14366
  store ptr %i.af, ptr %i.an, align 8, !dbg !14366, !alias.scope !14308
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14366
  store i64 1, ptr %i.ao, align 8, !dbg !14366, !alias.scope !14308
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !14367

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14368, !noalias !14308
  unreachable, !dbg !14368

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !14369, !noalias !14308
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !14370, !noalias !14308
  unreachable, !dbg !14370

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !14371, !noalias !14308, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !14372
  call void @llvm.assume(i1 %i.as), !dbg !14373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14374, !noalias !14308
  store i64 %i.ak, ptr %i.i, align 8, !dbg !14375, !noalias !14308
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14375 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !14375, !noalias !14308
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14375 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !14375, !noalias !14308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14376, !noalias !14308
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11UInt128TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !14377, !noalias !14308

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes11UInt128TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !14378, !noalias !14308

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !14379

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !14380, !noalias !14308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14381, !noalias !14308
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !14381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !14381, !noalias !14308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14382, !noalias !14308
  store i64 1, ptr %i.au, align 8, !dbg !14383, !alias.scope !14310, !noalias !14311
  %i.ay = icmp sgt i64 %2, 2, !dbg !14384
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !14385

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !14385

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !14386, !alias.scope !14313, !noalias !14314
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !14387, !range !2408, !alias.scope !14313, !noalias !14314
  br label %._crit_edge.i, !dbg !14388

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !14387
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !14386 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14388, !noalias !14308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !14388, !noalias !14308
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !14389
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !14389

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11UInt128TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !14390, !noalias !14314

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !14391, !noalias !14308

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14392, !noalias !14308
  unreachable, !dbg !14392

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !14393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14394, !noalias !14308
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11UInt128TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !14395, !noalias !14308

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !14396, !alias.scope !14313, !noalias !14314, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !14397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !14398, !noalias !14308
  %i.bj = add i64 %i.bc, 1, !dbg !14399
  store i64 %i.bj, ptr %i.au, align 8, !dbg !14399, !alias.scope !14313, !noalias !14314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14400, !noalias !14308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !14401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14379, !noalias !14308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14378, !noalias !14308
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !14367

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !14402, !noalias !14308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14403, !noalias !14308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !14403, !noalias !14308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14404, !noalias !14308
  %i.bk = load i64, ptr %i.au, align 8, !dbg !14405, !alias.scope !14315, !noalias !14316, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !14406, !range !2408, !alias.scope !14315, !noalias !14316, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !14407
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !14407

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes11UInt128TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !14408, !noalias !14316

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !14409, !noalias !14308

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14410, !noalias !14308
  unreachable, !dbg !14410

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14411, !noalias !14308
  br label %.thread22.i, !dbg !14412

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !14413, !alias.scope !14315, !noalias !14316, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !14414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !14415, !noalias !14308
  %i.bs = add i64 %i.bk, 1, !dbg !14416
  store i64 %i.bs, ptr %i.au, align 8, !dbg !14416, !alias.scope !14315, !noalias !14316
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !14411, !noalias !14308

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14411, !noalias !14308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14412, !noalias !14308
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !14384
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !14385

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !14412, !noalias !14308

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !14379, !noalias !14308

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes11UInt128TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14367
  br label %bb.f, !dbg !14350

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !14417, !noalias !14317, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !14418, !noalias !14317, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !14419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14420, !noalias !14318
  store ptr %i.bt, ptr %i.a, align 8, !dbg !14421, !alias.scope !14319, !noalias !14320
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14421
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14421, !alias.scope !14319, !noalias !14320
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14421
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14421, !alias.scope !14319, !noalias !14320
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes11UInt128TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2N_INtNtNtB2V_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB65_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !14422, !noalias !14321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14423, !noalias !14318
  br label %bb.f, !dbg !14424
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14425 {
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
  %i.n = getelementptr i8, ptr %1, i64 32, !dbg !14634
  %.val = load i64, ptr %i.n, align 8, !dbg !14634, !noundef !2226 ; 2 uses
  %i.o = icmp eq i64 %.val, 0, !dbg !14635
  br i1 %i.o, label %bb.b, label %bb.d, !dbg !14635

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14636
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !14637 ; 4 uses
  %i.q = icmp eq ptr %i.p, null, !dbg !14638
  br i1 %i.q, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !14639, !prof !2279

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !14640
  unreachable, !dbg !14640

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !14641
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes9UInt8TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.g, !dbg !14642

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %2, 0, !dbg !14643
  br i1 %i.r, label %bb.i, label %bb.h, !dbg !14643

bb.e:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !dbg !14612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !14612
  store i64 1, ptr %0, align 8, !dbg !14644
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14644
  store ptr %i.p, ptr %i.s, align 8, !dbg !14644
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14644
  store i64 1, ptr %i.t, align 8, !dbg !14644
  br label %bb.f, !dbg !14645

bb.f:                                             ; preds = %bb.ai, %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr.exit, %bb.e
  ret void, !dbg !14645

common.resume:                                    ; preds = %bb.o, %bb.t, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.am, %bb.o ], [ %.pn.pn.pn.i, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !14646

bb.g:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 56, i64 noundef 8) #56, !dbg !14647
  br label %common.resume, !dbg !14648

bb.h:                                             ; preds = %bb.d
  %i.v = udiv i64 %.val, %2, !dbg !14643
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 1), !dbg !14649 ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.l, align 8, !dbg !14650
  %i.w = getelementptr i8, ptr %1, i64 16, !dbg !14651 ; 2 uses
  %.val5 = load i64, ptr %i.w, align 8, !dbg !14651, !noundef !2226 ; 2 uses
  %i.x = icmp ult i64 %.val5, 576460752303423488, !dbg !14652
  tail call void @llvm.assume(i1 %i.x), !dbg !14653
  %i.y = icmp eq i64 %.val5, %2, !dbg !14654
  br i1 %i.y, label %bb.j, label %bb.k, !dbg !14654

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #54, !dbg !14643
  unreachable, !dbg !14643

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !14655
  %i.z = getelementptr i8, ptr %1, i64 8, !dbg !14656 ; 2 uses
  %.val6 = load ptr, ptr %i.z, align 8, !dbg !14656, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val6, i64 %2, !dbg !14657
  store ptr %.val6, ptr %i.k, align 8, !dbg !14658, !alias.scope !14618
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14658
  store ptr %i.aa, ptr %i.ab, align 8, !dbg !14658, !alias.scope !14618
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14658
  store ptr @_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes9UInt8TypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr, ptr %i.ac, align 8, !dbg !14658, !alias.scope !14618
  %i.ad = call noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1n_EjENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2Y_3all5checkjNCINvNtCs1LHh8CLbVkQ_11polars_core5utils5splitINtNtB49_13chunked_array12ChunkedArrayNtNtB49_9datatypes9UInt8TypeEE0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l), !dbg !14659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14660
  br i1 %i.ad, label %bb.k, label %bb.ai, !dbg !14655

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !14619), !dbg !14661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14662
  %i.ae = icmp eq i64 %2, 1, !dbg !14662
  br i1 %i.ae, label %bb.l, label %bb.n, !dbg !14662

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14663, !noalias !14619
  %i.af = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 209) 56, i64 noundef range(i64 8, 17) 8) #56, !dbg !14664, !noalias !14619 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null, !dbg !14665
  br i1 %i.ag, label %bb.m, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i, !dbg !14666, !prof !2279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #55, !dbg !14667, !noalias !14619
  unreachable, !dbg !14667

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14668, !noalias !14619
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes9UInt8TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o, !dbg !14669, !noalias !14619

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14670, !noalias !14619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14671, !noalias !14619
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !14671, !noalias !14619
  %i.ah = load i64, ptr %i.b, align 8, !dbg !14671, !range !2367, !noalias !14619, !noundef !2226
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !14672
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14673
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !14673, !range !2389, !noalias !14619, !noundef !2226 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14673 ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !14672, !prof !2279

bb.o:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 56, i64 noundef 8) #56, !dbg !14674, !noalias !14619
  br label %common.resume, !dbg !14675

bb.p:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !14676, !noalias !14619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14676, !noalias !14619
  store i64 1, ptr %0, align 8, !dbg !14677, !alias.scope !14619
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14677
  store ptr %i.af, ptr %i.an, align 8, !dbg !14677, !alias.scope !14619
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14677
  store i64 1, ptr %i.ao, align 8, !dbg !14677, !alias.scope !14619
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !14678

bb.q:                                             ; preds = %.thread22.i, %.thread28.i, %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14679, !noalias !14619
  unreachable, !dbg !14679

bb.r:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.al, align 8, !dbg !14680, !noalias !14619
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.aq) #55, !dbg !14681, !noalias !14619
  unreachable, !dbg !14681

bb.s:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !14682, !noalias !14619, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.as = icmp ule i64 %2, %i.ak, !dbg !14683
  call void @llvm.assume(i1 %i.as), !dbg !14684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14685, !noalias !14619
  store i64 %i.ak, ptr %i.i, align 8, !dbg !14686, !noalias !14619
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14686 ; 3 uses
  store ptr %i.ar, ptr %i.at, align 8, !dbg !14686, !noalias !14619
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14686 ; 6 uses
  store i64 0, ptr %i.au, align 8, !dbg !14686, !noalias !14619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14687, !noalias !14619
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes9UInt8TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %1, i64 noundef %.sroa.0.0.i)
          to label %bb.v unwind label %bb.u, !dbg !14688, !noalias !14619

bb.t:                                             ; preds = %.thread22.i, %bb.x, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn21.i, %.thread22.i ], [ %i.av, %bb.u ], [ %i.be, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB1i_9datatypes9UInt8TypeEEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %common.resume unwind label %bb.q, !dbg !14689, !noalias !14619

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread25.i:                                      ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.thread22.i, !dbg !14690

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !14691, !noalias !14619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14692, !noalias !14619
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !14692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false), !dbg !14692, !noalias !14619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14693, !noalias !14619
  store i64 1, ptr %i.au, align 8, !dbg !14694, !alias.scope !14621, !noalias !14622
  %i.ay = icmp sgt i64 %2, 2, !dbg !14695
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !dbg !14696

.lr.ph.i:                                         ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = add nsw i64 %2, -2
  br label %bb.z, !dbg !14696

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.au, align 8, !dbg !14697, !alias.scope !14624, !noalias !14625
  %.pre35.i = load i64, ptr %i.i, align 8, !dbg !14698, !range !2408, !alias.scope !14624, !noalias !14625
  br label %._crit_edge.i, !dbg !14699

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.v
  %i.bb = phi i64 [ %.pre35.i, %._crit_edge.loopexit.i ], [ %i.ak, %bb.v ], !dbg !14698
  %i.bc = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 1, %bb.v ], !dbg !14697 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14699, !noalias !14619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !14699, !noalias !14619
  %i.bd = icmp eq i64 %i.bc, %i.bb, !dbg !14700
  br i1 %i.bd, label %bb.w, label %bb.aa, !dbg !14700

bb.w:                                             ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes9UInt8TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aa unwind label %bb.x, !dbg !14701, !noalias !14625

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #52
          to label %bb.t unwind label %bb.y, !dbg !14702, !noalias !14619

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14703, !noalias !14619
  unreachable, !dbg !14703

bb.z:                                             ; preds = %bb.ah, %.lr.ph.i
  %.sroa.04.033.i = phi i64 [ 1, %.lr.ph.i ], [ %i.bg, %bb.ah ] ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.033.i, 1, !dbg !14704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14705, !noalias !14619
  invoke void @_RNvXs3_NtCs1LHh8CLbVkQ_11polars_core5utilsINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes9UInt8TypeENtB5_9Container8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i)
          to label %bb.ab unwind label %.thread25.i, !dbg !14706, !noalias !14619

bb.aa:                                            ; preds = %bb.w, %._crit_edge.i
  %i.bh = load ptr, ptr %i.at, align 8, !dbg !14707, !alias.scope !14624, !noalias !14625, !nonnull !2226, !noundef !2226
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.bc, !dbg !14708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !14709, !noalias !14619
  %i.bj = add i64 %i.bc, 1, !dbg !14710
  store i64 %i.bj, ptr %i.au, align 8, !dbg !14710, !alias.scope !14624, !noalias !14625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14711, !noalias !14619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !14712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14690, !noalias !14619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14689, !noalias !14619
  br label %_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr.exit, !dbg !14678

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !14713, !noalias !14619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14714, !noalias !14619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !14714, !noalias !14619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14715, !noalias !14619
  %i.bk = load i64, ptr %i.au, align 8, !dbg !14716, !alias.scope !14626, !noalias !14627, !noundef !2226 ; 3 uses
  %i.bl = load i64, ptr %i.i, align 8, !dbg !14717, !range !2408, !alias.scope !14626, !noalias !14627, !noundef !2226
  %i.bm = icmp eq i64 %i.bk, %i.bl, !dbg !14718
  br i1 %i.bm, label %bb.ac, label %bb.ag, !dbg !14718

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBR_9datatypes9UInt8TypeEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ad, !dbg !14719, !noalias !14627

bb.ad:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #52
          to label %.thread28.i unwind label %bb.ae, !dbg !14720, !noalias !14619

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !14721, !noalias !14619
  unreachable, !dbg !14721

bb.af:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14722, !noalias !14619
  br label %.thread22.i, !dbg !14723

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  %i.bq = load ptr, ptr %i.at, align 8, !dbg !14724, !alias.scope !14626, !noalias !14627, !nonnull !2226, !noundef !2226
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bk, !dbg !14725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !dbg !14726, !noalias !14619
  %i.bs = add i64 %i.bk, 1, !dbg !14727
  store i64 %i.bs, ptr %i.au, align 8, !dbg !14727, !alias.scope !14626, !noalias !14627
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %bb.ah unwind label %bb.af, !dbg !14722, !noalias !14619

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !14722, !noalias !14619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14723, !noalias !14619
  %exitcond.not.i = icmp eq i64 %.sroa.04.033.i, %i.ba, !dbg !14695
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.z, !dbg !14696

.thread28.i:                                      ; preds = %bb.ad
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %.thread22.i unwind label %bb.q, !dbg !14723, !noalias !14619

.thread22.i:                                      ; preds = %.thread28.i, %bb.af, %.thread25.i
  %.pn.pn21.i = phi { ptr, i32 } [ %i.bn, %.thread28.i ], [ %i.aw, %.thread25.i ], [ %i.bp, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.h) #52
          to label %bb.t unwind label %bb.q, !dbg !14690, !noalias !14619

_RINvNtCs1LHh8CLbVkQ_11polars_core5utils10split_implINtNtB4_13chunked_array12ChunkedArrayNtNtB4_9datatypes9UInt8TypeEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14678
  br label %bb.f, !dbg !14661

bb.ai:                                            ; preds = %bb.j
  %i.bt = load ptr, ptr %i.z, align 8, !dbg !14728, !noalias !14628, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.bu = load i64, ptr %i.w, align 8, !dbg !14729, !noalias !14628, !noundef !2226
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu, !dbg !14730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14731, !noalias !14629
  store ptr %i.bt, ptr %i.a, align 8, !dbg !14732, !alias.scope !14630, !noalias !14631
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14732
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14732, !alias.scope !14630, !noalias !14631
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14732
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14732, !alias.scope !14630, !noalias !14631
  call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBZ_9datatypes9UInt8TypeEEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB2K_INtNtNtB2S_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtBX_3ops8downcastBU_13downcast_iter0ENCNvXs3_NtBZ_5utilsBU_NtB62_9Container11iter_chunks0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !14733, !noalias !14632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14734, !noalias !14629
  br label %bb.f, !dbg !14735
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs5rycEC1AXKJ_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(323) %4, i64 noundef %5) unnamed_addr #2 !dbg !14736 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NtNtCs5rycEC1AXKJ_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(323) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull %2, i64 noundef %3), !dbg !14768 ; 6 uses
  %.val = load i8, ptr %4, align 1, !dbg !14769, !range !2229, !noundef !2226
  %i.b = trunc nuw i8 %.val to i1, !dbg !14770
  br i1 %i.b, label %bb.b, label %.thread, !dbg !14771

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %i.a, %3, !dbg !14772
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !14772, !prof !2279

bb.c:                                             ; preds = %bb.b
  %i.d = sub nuw nsw i64 %3, %i.a, !dbg !14773    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.a, !dbg !14774 ; 3 uses
  %i.f = sub nsw i64 0, %i.a, !dbg !14775
  %i.g = and i64 %i.f, 3, !dbg !14775             ; 3 uses
  %.not = icmp eq i64 %i.g, 0, !dbg !14776
  br i1 %.not, label %.thread, label %.lr.ph, !dbg !14767

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #54, !dbg !14777
  unreachable, !dbg !14777

.lr.ph:                                           ; preds = %bb.c
  %exitcond.not = icmp eq i64 %3, %i.a, !dbg !14778
  br i1 %exitcond.not, label %bb.h, label %bb.e, !dbg !14778

.thread:                                          ; preds = %bb.e, %bb.f, %bb.g, %bb.c, %bb.a
  ret void, !dbg !14779

bb.e:                                             ; preds = %.lr.ph
  store i8 61, ptr %i.e, align 1, !dbg !14778
  %exitcond14.not = icmp eq i64 %i.g, 1, !dbg !14776
  br i1 %exitcond14.not, label %.thread, label %.lr.ph.1, !dbg !14767

.lr.ph.1:                                         ; preds = %bb.e
  %exitcond.not.1 = icmp eq i64 %i.d, 1, !dbg !14778
  br i1 %exitcond.not.1, label %bb.h, label %bb.f, !dbg !14778

bb.f:                                             ; preds = %.lr.ph.1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !14778
  store i8 61, ptr %i.h, align 1, !dbg !14778
  %exitcond14.not.1 = icmp eq i64 %i.g, 2, !dbg !14776
  br i1 %exitcond14.not.1, label %.thread, label %.lr.ph.2, !dbg !14767

.lr.ph.2:                                         ; preds = %bb.f
  %exitcond.not.2 = icmp eq i64 %i.d, 2, !dbg !14778
  br i1 %exitcond.not.2, label %bb.h, label %bb.g, !dbg !14778

bb.g:                                             ; preds = %.lr.ph.2
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2, !dbg !14778
  store i8 61, ptr %i.i, align 1, !dbg !14778
  br label %.thread, !dbg !14767

bb.h:                                             ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #54, !dbg !14778
  unreachable, !dbg !14778
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtCs6TExLLFF6W4_8bytemuck10allocation14try_zeroed_vecNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 noundef %1) unnamed_addr #4 !dbg !14780 {
bb.a:
  %i.a = icmp eq i64 %1, 0, !dbg !14800
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !14800

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !14801
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14801
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14801
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14801
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !14801
  br label %bb.e, !dbg !14802

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 4611686018427387903, !dbg !14803
  br i1 %i.b, label %_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit.thread, label %_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit, !dbg !14803

_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.c
  %i.c = shl nuw nsw i64 %1, 1, !dbg !14804
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !dbg !14805
  %i.d = tail call noundef align 2 ptr @_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed(i64 noundef %i.c, i64 noundef 2) #56, !dbg !14806 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !14807
  br i1 %i.e, label %_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.d, !dbg !14808

_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %bb.c, %_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !14809
  br label %bb.e, !dbg !14810

bb.d:                                             ; preds = %_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit
  store i64 %1, ptr %0, align 8, !dbg !14811
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14811
  store ptr %i.d, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !14811
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14811
  store i64 %1, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !14811
  br label %bb.e, !dbg !14802

bb.e:                                             ; preds = %bb.b, %bb.d, %_RINvNtCs6TExLLFF6W4_8bytemuck10allocation20try_zeroed_slice_boxNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr.exit.thread
  ret void, !dbg !14810
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtCs6TExLLFF6W4_8bytemuck10allocation14try_zeroed_vecaECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 noundef %1) unnamed_addr #4 !dbg !14812 {
bb.a:
  %i.a = icmp eq i64 %1, 0, !dbg !14832
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !14832

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !14833
end_hunk_0
