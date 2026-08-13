inline.NumInlined: 7643
inline.NumDeleted: 4178
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXsv_NtNtCse67t6KqNqGQ_5rayon4iter6extendINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEINtB8_14ParallelExtendmE10par_extendINtNtB8_3map3MapINtNtB8_6filter6FilterINtNtB8_8flat_map7FlatMapINtNtB8_3zip3ZipINtNtBa_3vec8IntoIterRSyEIB37_jEENCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRyB3r_E0ENCINvB3I_26hash_join_tuples_left_semiB5e_B3r_E0ENCB5p_s_0EECseyIfFeUOWMb_17polars_mem_engine:bb.a
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.n, !dbg !39906

bb.m:                                             ; preds = %bb.j, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit.i
  %i.be = phi i64 [ %.pre.i, %bb.j ], [ %i.as, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit.i ], !dbg !39896
  %i.bf = add i64 %i.be, %i.ar, !dbg !39896
  store i64 %i.bf, ptr %i.ak, align 8, !dbg !39896, !alias.scope !39883
  store i64 0, ptr %i.am, align 8, !dbg !39909
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECseyIfFeUOWMb_17polars_mem_engine.exit15 unwind label %bb.g, !dbg !39912

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECseyIfFeUOWMb_17polars_mem_engine.exit15: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !39898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !39898
  br label %bb.f, !dbg !39837

bb.n:                                             ; preds = %bb.o, %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECseyIfFeUOWMb_17polars_mem_engine.exit, %bb.p
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !39915
  unreachable, !dbg !39915

bb.o:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecmEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread unwind label %bb.n, !dbg !39916

.thread:                                          ; preds = %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECseyIfFeUOWMb_17polars_mem_engine.exit, %bb.p
  %.pn719 = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %lpad.thr_comm.split-lp, %bb.p ], [ %.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECseyIfFeUOWMb_17polars_mem_engine.exit ]
  resume { ptr, i32 } %.pn719, !dbg !39915

bb.p:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse67t6KqNqGQ_5rayon4iter3map3MapINtNtBL_6filter6FilterINtNtBL_8flat_map7FlatMapINtNtBL_3zip3ZipINtNtBN_3vec8IntoIterRSyEIB2m_jEENCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRyB2G_E0ENCINvB2X_26hash_join_tuples_left_semiB4t_B2G_E0ENCB4E_s_0EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(80) %i.g) #26
          to label %.thread unwind label %bb.n, !dbg !39904
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs_NtCsbm5zPlkZccl_4pyo33errNtBc_5PyErr3newNtNtBe_10exceptions11PyTypeErrorReE0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTNtNtBe_6marker6PythonEE9call_once6vtableCseyIfFeUOWMb_17polars_mem_engine(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !39918 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !39919, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39919
  %i.c = load i64, ptr %i.b, align 8, !dbg !39919, !noundef !13
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !dbg !39920, !noalias !39941, !nonnull !13, !noundef !13 ; 3 uses
  tail call void @_Py_IncRef(ptr noundef nonnull %i.d) #27, !dbg !39944, !noalias !39941
  %i.e = invoke noundef nonnull ptr @_RNvXNtCsbm5zPlkZccl_4pyo33errReNtB2_14PyErrArguments9argumentsCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
          to label %_RNCINvMs_NtCsbm5zPlkZccl_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions11PyTypeErrorReE0CseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.b, !dbg !39956

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseyIfFeUOWMb_17polars_mem_engine(ptr nonnull %i.d) #26
          to label %bb.d unwind label %bb.c, !dbg !39957

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !39958
  unreachable, !dbg !39958

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f, !dbg !39958

_RNCINvMs_NtCsbm5zPlkZccl_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions11PyTypeErrorReE0CseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.a
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0, !dbg !39959
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.e, 1, !dbg !39959
  ret { ptr, ptr } %i.i, !dbg !39919
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTmmEE6resizeCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !39960 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !39961 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !39961, !noundef !13 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976, !dbg !39964
  tail call void @llvm.assume(i1 %i.c), !dbg !39966
  %i.d = icmp ugt i64 %1, %i.b, !dbg !39967
  br i1 %i.d, label %bb.b, label %_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTmmEE11extend_withCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !39967

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b, !dbg !39969        ; 5 uses
  %i.f = load i64, ptr %0, align 8, !dbg !39970, !range !1629, !alias.scope !39983, !noundef !13
  %i.g = sub nsw i64 %i.f, %i.b, !dbg !39988
  %i.h = icmp ugt i64 %i.e, %i.g, !dbg !39991
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmmEE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !39992, !prof !1638

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 4, i64 noundef 8), !dbg !39993
  %.pre.i = load i64, ptr %i.a, align 8, !dbg !39994, !alias.scope !39997
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmmEE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !39993

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmmEE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ], !dbg !39994 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39998
  %i.k = load ptr, ptr %i.j, align 8, !dbg !39998, !alias.scope !39997, !nonnull !13, !noundef !13
  %i.l = icmp ult i64 %i.i, 1152921504606846976, !dbg !40007
  tail call void @llvm.assume(i1 %i.l), !dbg !40009
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i, !dbg !40010 ; 5 uses
  %i.n = icmp ugt i64 %i.e, 1, !dbg !40013
  br i1 %i.n, label %.lr.ph.i.preheader, label %._crit_edge.i, !dbg !40030

.lr.ph.i.preheader:                               ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmmEE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit.i
  %i.o = xor i64 %i.b, -1, !dbg !40030
  %i.p = add i64 %1, %i.o, !dbg !40030            ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 4, !dbg !40030
  br i1 %min.iters.check, label %.lr.ph.i.preheader11, label %vector.ph, !dbg !40030

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.p, -4                       ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q     ; 2 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %2, i64 0
  %broadcast.splatinsert6 = insertelement <2 x i32> poison, i32 %3, i64 0
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %broadcast.splatinsert6, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  br label %vector.body, !dbg !40030

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  %next.gep8 = getelementptr i8, ptr %i.u, i64 16
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4, !dbg !40031
  store <4 x i32> %interleaved.vec, ptr %next.gep8, align 4, !dbg !40031
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !40030
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !40030, !llvm.loop !40034

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec, !dbg !40030
  br i1 %cmp.n, label %._crit_edge.thread.i, label %.lr.ph.i.preheader11, !dbg !40030

.lr.ph.i.preheader11:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.023.i.ph = phi ptr [ %i.m, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.sroa.03.022.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i, !dbg !40030

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi ptr [ %i.r, %middle.block ], [ %i.ac, %.lr.ph.i ], !dbg !40037
  %i.w = add i64 %i.e, -1, !dbg !40030
  %i.x = add i64 %i.w, %i.i, !dbg !40030
  br label %._crit_edge.i, !dbg !40039

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmmEE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa30.i = phi ptr [ %.lcssa, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmmEE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit.i ] ; 2 uses
  %storemerge.lcssa29.i = phi i64 [ %i.x, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecTmmEE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit.i ]
  store i32 %2, ptr %.sroa.0.0.lcssa30.i, align 4, !dbg !40040
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa30.i, i64 4, !dbg !40040
  store i32 %3, ptr %i.y, align 4, !dbg !40040
  %i.z = add i64 %storemerge.lcssa29.i, 1, !dbg !40042
  br label %_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTmmEE11extend_withCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !40045

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader11, %.lr.ph.i
  %.sroa.0.023.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.0.023.i.ph, %.lr.ph.i.preheader11 ] ; 3 uses
  %.sroa.03.022.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.03.022.i.ph, %.lr.ph.i.preheader11 ]
  %i.aa = add nuw i64 %.sroa.03.022.i, 1, !dbg !40046 ; 2 uses
  store i32 %2, ptr %.sroa.0.023.i, align 4, !dbg !40031
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i, i64 4, !dbg !40031
  store i32 %3, ptr %i.ab, align 4, !dbg !40031
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i, i64 8, !dbg !40037 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %i.e, !dbg !40013
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !dbg !40030, !llvm.loop !40053

_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTmmEE11extend_withCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.a, %._crit_edge.i
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.z, %._crit_edge.i ], !dbg !40054
  store i64 %storemerge, ptr %i.a, align 8, !dbg !40054
  ret void, !dbg !40055
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbE11extend_withCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !40056 {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40057 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !40057, !alias.scope !40060, !noundef !13 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !dbg !40063, !range !1629, !alias.scope !40060, !noundef !13
  %i.e = sub i64 %i.d, %i.c, !dbg !40072
  %i.f = icmp ugt i64 %1, %i.e, !dbg !40075
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecbE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !40076, !prof !1638

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %1, i64 noundef 1, i64 noundef 1), !dbg !40077
  %.pre = load i64, ptr %i.b, align 8, !dbg !40078
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecbE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !40077

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecbE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ], !dbg !40078 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40081
  %i.i = load ptr, ptr %i.h, align 8, !dbg !40081, !nonnull !13, !noundef !13 ; 2 uses
  %i.j = icmp sgt i64 %i.g, -1, !dbg !40090
  tail call void @llvm.assume(i1 %i.j), !dbg !40092
  %i.k = getelementptr i8, ptr %i.i, i64 %i.g, !dbg !40093 ; 2 uses
  %i.l = icmp ugt i64 %1, 1, !dbg !40096
  br i1 %i.l, label %._crit_edge.thread, label %._crit_edge, !dbg !40098

._crit_edge.thread:                               ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecbE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.m = add i64 %1, -1, !dbg !40098
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 %i.a, i64 %i.m, i1 false), !dbg !40107
  %i.n = add i64 %i.g, %1, !dbg !40098            ; 2 uses
  %i.o = add i64 %i.n, -1, !dbg !40098
  %3 = getelementptr i8, ptr %i.i, i64 %i.n, !dbg !40098
  %scevgep = getelementptr i8, ptr %3, i64 -1, !dbg !40098
  br label %bb.c, !dbg !40110

._crit_edge:                                      ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecbE7reserveCseyIfFeUOWMb_17polars_mem_engine.exit
  %.not = icmp eq i64 %1, 0, !dbg !40110
  br i1 %.not, label %bb.d, label %bb.c, !dbg !40110

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %scevgep, %._crit_edge.thread ], [ %i.k, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.o, %._crit_edge.thread ], [ %i.g, %._crit_edge ]
  store i8 %i.a, ptr %.sroa.0.0.lcssa28, align 1, !dbg !40111
  %i.p = add i64 %storemerge.lcssa27, 1, !dbg !40113
  br label %bb.d, !dbg !40116

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge18 = phi i64 [ %i.p, %bb.c ], [ %i.g, %._crit_edge ], !dbg !40117
  store i64 %storemerge18, ptr %i.b, align 8, !dbg !40117
  ret void, !dbg !40120
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_NtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashEE7reserveCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !23479 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40121
  %i.b = load i64, ptr %i.a, align 8, !dbg !40121, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !40122, !range !1629, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !40127
  %i.e = icmp ugt i64 %1, %i.d, !dbg !40129
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !40130, !prof !1638

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !40131

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !40132
  br label %bb.b, !dbg !40132
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TmNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE7reserveCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !23806 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40133
  %i.b = load i64, ptr %i.a, align 8, !dbg !40133, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !40134, !range !1629, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !40139
  %i.e = icmp ugt i64 %1, %i.d, !dbg !40141
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !40142, !prof !1638

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !40143

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !40144
  br label %bb.b, !dbg !40144
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyINtNtCscgRAwXFJnXP_4core6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEE7reserveCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !24119 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40145
  %i.b = load i64, ptr %i.a, align 8, !dbg !40145, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !40146, !range !1629, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !40151
  %i.e = icmp ugt i64 %1, %i.d, !dbg !40153
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !40154, !prof !1638

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !40155

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !40156
  br label %bb.b, !dbg !40156
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyINtNtCscgRAwXFJnXP_4core6option6OptionRdEEEE7reserveCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !24309 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40157
  %i.b = load i64, ptr %i.a, align 8, !dbg !40157, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !40158, !range !1629, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !40163
  %i.e = icmp ugt i64 %1, %i.d, !dbg !40165
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !40166, !prof !1638

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !40167

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !40168
  br label %bb.b, !dbg !40168
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyINtNtCscgRAwXFJnXP_4core6option6OptionRfEEEE7reserveCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !24499 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40169
  %i.b = load i64, ptr %i.a, align 8, !dbg !40169, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !40170, !range !1629, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !40175
  %i.e = icmp ugt i64 %1, %i.d, !dbg !40177
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !40178, !prof !1638

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !40179

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !40180
  br label %bb.b, !dbg !40180
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyINtNtCscgRAwXFJnXP_4core6option6OptionRhEEEE7reserveCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !24689 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40181
  %i.b = load i64, ptr %i.a, align 8, !dbg !40181, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !40182, !range !1629, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !40187
  %i.e = icmp ugt i64 %1, %i.d, !dbg !40189
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !40190, !prof !1638

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !40191

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !40192
  br label %bb.b, !dbg !40192
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyINtNtCscgRAwXFJnXP_4core6option6OptionRmEEEE7reserveCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !24879 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40193
  %i.b = load i64, ptr %i.a, align 8, !dbg !40193, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !40194, !range !1629, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !40199
  %i.e = icmp ugt i64 %1, %i.d, !dbg !40201
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !40202, !prof !1638

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !40203

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !40204
  br label %bb.b, !dbg !40204
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyINtNtCscgRAwXFJnXP_4core6option6OptionRoEEEE7reserveCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !25069 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40205
  %i.b = load i64, ptr %i.a, align 8, !dbg !40205, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !40206, !range !1629, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !40211
  %i.e = icmp ugt i64 %1, %i.d, !dbg !40213
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !40214, !prof !1638

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !40215

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !40216
  br label %bb.b, !dbg !40216
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyINtNtCscgRAwXFJnXP_4core6option6OptionRtEEEE7reserveCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !25259 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40217
  %i.b = load i64, ptr %i.a, align 8, !dbg !40217, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !40218, !range !1629, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !40223
  %i.e = icmp ugt i64 %1, %i.d, !dbg !40225
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !40226, !prof !1638

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !40227

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !40228
  br label %bb.b, !dbg !40228
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_TyINtNtCscgRAwXFJnXP_4core6option6OptionRyEEEE7reserveCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !25449 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !40229
  %i.b = load i64, ptr %i.a, align 8, !dbg !40229, !noundef !13 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !40230, !range !1629, !noundef !13
  %i.d = sub i64 %i.c, %i.b, !dbg !40235
  %i.e = icmp ugt i64 %1, %i.d, !dbg !40237
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !40238, !prof !1638

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !40239

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !40240
  br label %bb.b, !dbg !40240
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
