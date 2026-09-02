Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_mem_engine-7de41b043a674665.polars_mem_engine.a996911dcb712385-cgu.10?download=true
inline.NumInlined: 3075
inline.NumDeleted: 1348
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldBX_NCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates_0EB2Q_:bb.a
  unreachable, !dbg !13960

_RNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates_0B7_.exit: ; preds = %bb.b, %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !dbg !13961, !alias.scope !13945, !noalias !13946, !nonnull !1484, !noundef !1484
  %i.v = getelementptr inbounds nuw [144 x i8], ptr %i.u, i64 %i.l, !dbg !13962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.v, ptr noundef nonnull align 16 dereferenceable(144) %i.c, i64 144, i1 false), !dbg !13963
  %i.w = add nuw nsw i64 %i.l, 1, !dbg !13964     ; 2 uses
  store i64 %i.w, ptr %i.j, align 8, !dbg !13964, !alias.scope !13945, !noalias !13946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13965
  %.not = icmp eq ptr %i.o, %i.e, !dbg !13949
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !13939

._crit_edge:                                      ; preds = %_RNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates_0B7_.exit, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.l, %_RNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates_0B7_.exit ]
  %.val6 = load ptr, ptr %0, align 8, !dbg !13966, !alias.scope !1844, !nonnull !1484, !noundef !1484
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13966
  %.val7 = load i64, ptr %i.x, align 8, !dbg !13966, !alias.scope !1844, !noundef !1484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13967, !noalias !13947
  store i64 %.val7, ptr %i.b, align 8, !dbg !13968, !noalias !13947
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13968
  store ptr %.val6, ptr %i.y, align 8, !dbg !13968, !noalias !13947
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !13969, !noalias !13947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13970, !noalias !13947
  ret i64 %.sroa.0.0.lcssa, !dbg !13971

.body:                                            ; preds = %bb.d
  %.val4 = load ptr, ptr %0, align 8, !dbg !13966, !alias.scope !1844, !nonnull !1484, !noundef !1484
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13966
  %.val5 = load i64, ptr %i.z, align 8, !dbg !13966, !alias.scope !1844, !noundef !1484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13972, !noalias !13948
  store i64 %.val5, ptr %i.a, align 8, !dbg !13973, !noalias !13948
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13973
  store ptr %.val4, ptr %i.aa, align 8, !dbg !13973, !noalias !13948
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.g unwind label %bb.f, !dbg !13974

bb.f:                                             ; preds = %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !13975
  unreachable, !dbg !13975

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13976, !noalias !13948
  resume { ptr, i32 } %i.s, !dbg !13975
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldINtNtB1N_6option6OptionBX_ENCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates0_0EB3e_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef range(i64 0, 2) %1, i64 %2, ptr noalias noundef align 8 dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13977 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !1484, !noundef !1484 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.f, align 8        ; 3 uses
  %.not15 = icmp eq ptr %.promoted, %i.e, !dbg !14052
  br i1 %.not15, label %._crit_edge, label %.lr.ph, !dbg !14033

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = trunc nuw i64 %1 to i1, !dbg !14053
  %i.m = load i64, ptr %.promoted, align 8, !dbg !14054, !noundef !1484 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.promoted, i64 8, !dbg !14055 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14039), !dbg !14056
  br i1 %i.l, label %bb.b, label %bb.d, !dbg !14053

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14040), !dbg !14057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14058, !noalias !14041
  store i64 %2, ptr %i.c, align 16, !dbg !14058, !noalias !14041
  store i8 15, ptr %i.g, align 16, !dbg !14058, !noalias !14041
  store i64 %i.m, ptr %i.h, align 8, !dbg !14058, !noalias !14041
  store i64 -9223372036854775803, ptr %i.i, align 16, !dbg !14058, !noalias !14041
  %i.o = load i64, ptr %i.j, align 8, !dbg !14059, !alias.scope !14041, !noundef !1484 ; 5 uses
  %i.p = icmp ult i64 %i.o, 64051194700380388, !dbg !14060
  tail call void @llvm.assume(i1 %i.p), !dbg !14061
  %i.q = load i64, ptr %3, align 8, !dbg !14062, !range !1713, !alias.scope !14043, !noalias !14044, !noundef !1484
  %i.r = icmp eq i64 %i.o, %i.q, !dbg !14063
  br i1 %i.r, label %bb.c, label %_RNCNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates0_00B9_.exit.i.i.peel, !dbg !14063

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
          to label %_RNCNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates0_00B9_.exit.i.i.peel unwind label %.loopexit.split-lp, !dbg !14064, !noalias !14044

_RNCNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates0_00B9_.exit.i.i.peel: ; preds = %bb.c, %bb.b
  %i.s = load ptr, ptr %i.k, align 8, !dbg !14065, !alias.scope !14043, !noalias !14044, !nonnull !1484, !noundef !1484
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %i.s, i64 %i.o, !dbg !14066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.t, ptr noundef nonnull align 16 dereferenceable(144) %i.c, i64 144, i1 false), !dbg !14067
  %i.u = add nuw nsw i64 %i.o, 1, !dbg !14068
  store i64 %i.u, ptr %i.j, align 8, !dbg !14068, !alias.scope !14043, !noalias !14044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14069, !noalias !14041
  br label %bb.d, !dbg !14070

bb.d:                                             ; preds = %_RNCNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates0_00B9_.exit.i.i.peel, %.lr.ph
  %.sroa.02.0.i.i.peel = phi i64 [ %i.o, %_RNCNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates0_00B9_.exit.i.i.peel ], [ %i.m, %.lr.ph ], !dbg !14071 ; 2 uses
  %.not.peel = icmp eq ptr %i.n, %i.e, !dbg !14052
  br i1 %.not.peel, label %._crit_edge, label %.peel.next, !dbg !14033

.peel.next:                                       ; preds = %bb.d, %bb.h
  %.sroa.4.016 = phi i64 [ %i.y, %bb.h ], [ %.sroa.02.0.i.i.peel, %bb.d ]
  %i.v = phi ptr [ %i.x, %bb.h ], [ %i.n, %bb.d ] ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !14054, !noundef !1484
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !14055 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14045), !dbg !14056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14046), !dbg !14057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14058, !noalias !14047
  store i64 %.sroa.4.016, ptr %i.c, align 16, !dbg !14058, !noalias !14047
  store i8 15, ptr %i.g, align 16, !dbg !14058, !noalias !14047
  store i64 %i.w, ptr %i.h, align 8, !dbg !14058, !noalias !14047
  store i64 -9223372036854775803, ptr %i.i, align 16, !dbg !14058, !noalias !14047
  %i.y = load i64, ptr %i.j, align 8, !dbg !14059, !alias.scope !14047, !noundef !1484 ; 6 uses
  %i.z = icmp ult i64 %i.y, 64051194700380388, !dbg !14060
  tail call void @llvm.assume(i1 %i.z), !dbg !14061
  %i.aa = load i64, ptr %3, align 8, !dbg !14062, !range !1713, !alias.scope !14048, !noalias !14044, !noundef !1484
  %i.ab = icmp eq i64 %i.y, %i.aa, !dbg !14063
  br i1 %i.ab, label %bb.e, label %bb.h, !dbg !14063

bb.e:                                             ; preds = %.peel.next
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %.loopexit, !dbg !14064, !noalias !14044

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.c) #38
          to label %.body unwind label %bb.g, !dbg !14072

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !14073
  unreachable, !dbg !14073

._crit_edge:                                      ; preds = %bb.h, %bb.d, %bb.a
  %.sroa.4.0.lcssa = phi i64 [ %2, %bb.a ], [ %.sroa.02.0.i.i.peel, %bb.d ], [ %i.y, %bb.h ]
  %.sroa.0.0.lcssa = phi i64 [ %1, %bb.a ], [ 1, %bb.d ], [ 1, %bb.h ]
  %.val10 = load ptr, ptr %0, align 8, !dbg !14074, !alias.scope !1844, !nonnull !1484, !noundef !1484
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14074
  %.val11 = load i64, ptr %i.ad, align 8, !dbg !14074, !alias.scope !1844, !noundef !1484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14075, !noalias !14049
  store i64 %.val11, ptr %i.b, align 8, !dbg !14076, !noalias !14049
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14076
  store ptr %.val10, ptr %i.ae, align 8, !dbg !14076, !noalias !14049
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !14077, !noalias !14049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14078, !noalias !14049
  %i.af = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.lcssa, 0, !dbg !14079
  %i.ag = insertvalue { i64, i64 } %i.af, i64 %.sroa.4.0.lcssa, 1, !dbg !14079
  ret { i64, i64 } %i.ag, !dbg !14079

.body:                                            ; preds = %bb.f
  %.val = load ptr, ptr %0, align 8, !dbg !14074, !alias.scope !1844, !nonnull !1484, !noundef !1484
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14074
  %.val9 = load i64, ptr %i.ah, align 8, !dbg !14074, !alias.scope !1844, !noundef !1484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14080, !noalias !14050
  store i64 %.val9, ptr %i.a, align 8, !dbg !14081, !noalias !14050
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14081
  store ptr %.val, ptr %i.ai, align 8, !dbg !14081, !noalias !14050
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.j unwind label %bb.i, !dbg !14082

bb.h:                                             ; preds = %.peel.next, %bb.e
  %i.aj = load ptr, ptr %i.k, align 8, !dbg !14065, !alias.scope !14048, !noalias !14044, !nonnull !1484, !noundef !1484
  %i.ak = getelementptr inbounds nuw [144 x i8], ptr %i.aj, i64 %i.y, !dbg !14066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ak, ptr noundef nonnull align 16 dereferenceable(144) %i.c, i64 144, i1 false), !dbg !14067
  %i.al = add nuw nsw i64 %i.y, 1, !dbg !14068
  store i64 %i.al, ptr %i.j, align 8, !dbg !14068, !alias.scope !14048, !noalias !14044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14069, !noalias !14047
  %.not = icmp eq ptr %i.x, %i.e, !dbg !14052
  br i1 %.not, label %._crit_edge, label %.peel.next, !dbg !14033, !llvm.loop !14032

bb.i:                                             ; preds = %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !14083
  unreachable, !dbg !14083

bb.j:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14084, !noalias !14050
  resume { ptr, i32 } %lpad.phi, !dbg !14083
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1L_8adapters3map12map_try_foldBX_INtNtB1N_6result6ResultINtNtBa_5boxed3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB1N_3ops12control_flow11ControlFlowIB60_B3O_EENCNCNCNvNtNtB4d_7planner2lp25create_physical_plan_impl0s1_00NCINvXB2R_INtB2R_12GenericShuntINtB2P_3MapBI_B6Q_EIB3s_NtNtB1N_7convert10InfallibleB5g_EEB1F_8try_folduNCINvNvB1F_12try_for_each4callB3O_B6F_NcNtB6F_5Break0E0B6F_E0E0B5Z_EB4d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14085 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca ptr, align 8                  ; 5 uses
  %.sroa.75 = alloca ptr, align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14145
  %i.c = load ptr, ptr %i.b, align 8, !dbg !14146, !nonnull !1484, !noundef !1484
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14147 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14147, !nonnull !1484, !noundef !1484 ; 3 uses
  %.not = icmp eq ptr %i.e, %i.c, !dbg !14147
  br i1 %.not, label %bb.g, label %bb.b, !dbg !14126

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !dbg !14148, !noundef !1484
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14149
  store ptr %i.g, ptr %i.d, align 8, !dbg !14150
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !14151
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75), !dbg !14151
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14151
  %.val = load ptr, ptr %i.h, align 8, !dbg !14151 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !14151
  %.val2 = load ptr, ptr %i.i, align 8, !dbg !14151, !nonnull !1484, !align !1636, !noundef !1484 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14132), !dbg !14151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14133), !dbg !14152
  %i.k = load ptr, ptr %.val2, align 8, !dbg !14153, !alias.scope !14133, !noalias !14134, !nonnull !1484, !align !1636, !noundef !1484
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8, !dbg !14154
  %i.m = load ptr, ptr %i.l, align 8, !dbg !14154, !alias.scope !14133, !noalias !14134, !nonnull !1484, !align !1636, !noundef !1484
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !14155
  %i.o = load ptr, ptr %i.n, align 8, !dbg !14155, !alias.scope !14133, !noalias !14134, !nonnull !1484, !noundef !1484
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 24, !dbg !14156
  %i.q = load ptr, ptr %i.p, align 8, !dbg !14156, !alias.scope !14133, !noalias !14134, !nonnull !1484, !align !1636, !noundef !1484
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 32, !dbg !14157
  %i.s = load ptr, ptr %i.r, align 8, !dbg !14157, !alias.scope !14133, !noalias !14134, !nonnull !1484, !align !1636, !noundef !1484
  %i.t = load ptr, ptr %i.s, align 8, !dbg !14157, !noalias !14136, !noundef !1484
  call void @_RNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp25create_physical_plan_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull dereferenceable(2) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef %i.t), !dbg !14158, !noalias !14132
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !dbg !14159, !noalias !14132 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14159
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !14159, !noalias !14132 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14159
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !14159, !noalias !14132 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14137), !dbg !14159
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 18, !dbg !14160
  br i1 %.not.i.i.i, label %bb.e, label %bb.c, !dbg !14161

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.u = load i64, ptr %.val, align 8, !dbg !14162, !range !1523, !alias.scope !14138, !noalias !14139, !noundef !1484
  %i.v = icmp eq i64 %i.u, 18, !dbg !14162
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %bb.d, !dbg !14162

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i unwind label %bb.f, !dbg !14163, !noalias !14139

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4, align 8, !dbg !14164, !alias.scope !14140, !noalias !14141
  br label %bb.h, !dbg !14165

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !dbg !14166, !noalias !14139
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !14166
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !dbg !14166, !noalias !14139
  %.sroa.612.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !14166
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i, align 8, !dbg !14166, !noalias !14139
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !14166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !14166, !noalias !14132
  resume { ptr, i32 } %i.w, !dbg !14167

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !dbg !14166, !noalias !14139
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !14166
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !dbg !14166, !noalias !14139
  %.sroa.612.0..8.val.sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !14166
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i, align 8, !dbg !14166, !noalias !14139
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !14166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !14166, !noalias !14132
  br label %bb.h, !dbg !14168

bb.g:                                             ; preds = %bb.a, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %bb.a ], !dbg !14169
  store i64 %storemerge, ptr %0, align 8, !dbg !14169
  ret void, !dbg !14170

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, %bb.e
  %.sink23.i.i.sroa.phi = phi ptr [ %.sroa.75, %bb.e ], [ %.sroa.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i ]
  %.sink.i.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i ]
  store ptr %.sink.i.i, ptr %.sink23.i.i.sroa.phi, align 8, !dbg !14171, !alias.scope !14140, !noalias !14141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14172
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load ptr, ptr %.sroa.4, align 8, !dbg !14173, !alias.scope !14142, !noalias !14143, !noundef !1484
  %.sroa.75.0..sroa.75.0..sroa.75.0..sroa.75.16. = load ptr, ptr %.sroa.75, align 8, !dbg !14173, !alias.scope !14142, !noalias !14143
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4), !dbg !14174
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75), !dbg !14174
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14175
  store ptr %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., ptr %i.x, align 8, !dbg !14175, !alias.scope !14144
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14175
  store ptr %.sroa.75.0..sroa.75.0..sroa.75.0..sroa.75.16., ptr %i.y, align 8, !dbg !14175, !alias.scope !14144
  br label %bb.g, !dbg !14176
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1L_8adapters3map12map_try_foldBX_INtNtB1N_6result6ResultINtNtBa_5boxed3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB1N_3ops12control_flow11ControlFlowIB60_B3O_EENCNCNCNvNtNtB4d_7planner2lp25create_physical_plan_impl0s2_00NCINvXB2R_INtB2R_12GenericShuntINtB2P_3MapBI_B6Q_EIB3s_NtNtB1N_7convert10InfallibleB5g_EEB1F_8try_folduNCINvNvB1F_12try_for_each4callB3O_B6F_NcNtB6F_5Break0E0B6F_E0E0B5Z_EB4d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14177 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca ptr, align 8                  ; 5 uses
  %.sroa.75 = alloca ptr, align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14237
  %i.c = load ptr, ptr %i.b, align 8, !dbg !14238, !nonnull !1484, !noundef !1484
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14239 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14239, !nonnull !1484, !noundef !1484 ; 3 uses
  %.not = icmp eq ptr %i.e, %i.c, !dbg !14239
  br i1 %.not, label %bb.g, label %bb.b, !dbg !14218

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !dbg !14240, !noundef !1484
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14241
  store ptr %i.g, ptr %i.d, align 8, !dbg !14242
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !14243
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75), !dbg !14243
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14243
  %.val = load ptr, ptr %i.h, align 8, !dbg !14243 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !14243
  %.val2 = load ptr, ptr %i.i, align 8, !dbg !14243, !nonnull !1484, !align !1636, !noundef !1484 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14224), !dbg !14243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14225), !dbg !14244
  %i.k = load ptr, ptr %.val2, align 8, !dbg !14245, !alias.scope !14225, !noalias !14226, !nonnull !1484, !align !1636, !noundef !1484
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8, !dbg !14246
  %i.m = load ptr, ptr %i.l, align 8, !dbg !14246, !alias.scope !14225, !noalias !14226, !nonnull !1484, !align !1636, !noundef !1484
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !14247
  %i.o = load ptr, ptr %i.n, align 8, !dbg !14247, !alias.scope !14225, !noalias !14226, !nonnull !1484, !noundef !1484
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 24, !dbg !14248
  %i.q = load ptr, ptr %i.p, align 8, !dbg !14248, !alias.scope !14225, !noalias !14226, !nonnull !1484, !align !1636, !noundef !1484
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 32, !dbg !14249
  %i.s = load ptr, ptr %i.r, align 8, !dbg !14249, !alias.scope !14225, !noalias !14226, !nonnull !1484, !align !1636, !noundef !1484
  %i.t = load ptr, ptr %i.s, align 8, !dbg !14249, !noalias !14228, !noundef !1484
  call void @_RNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp25create_physical_plan_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull dereferenceable(2) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef %i.t), !dbg !14250, !noalias !14224
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !dbg !14251, !noalias !14224 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14251
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !14251, !noalias !14224 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14251
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !14251, !noalias !14224 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14229), !dbg !14251
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 18, !dbg !14252
  br i1 %.not.i.i.i, label %bb.e, label %bb.c, !dbg !14253

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.u = load i64, ptr %.val, align 8, !dbg !14254, !range !1523, !alias.scope !14230, !noalias !14231, !noundef !1484
  %i.v = icmp eq i64 %i.u, 18, !dbg !14254
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %bb.d, !dbg !14254

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i unwind label %bb.f, !dbg !14255, !noalias !14231

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4, align 8, !dbg !14256, !alias.scope !14232, !noalias !14233
  br label %bb.h, !dbg !14257

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !dbg !14258, !noalias !14231
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !14258
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !dbg !14258, !noalias !14231
  %.sroa.612.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !14258
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i, align 8, !dbg !14258, !noalias !14231
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !14258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !14258, !noalias !14224
  resume { ptr, i32 } %i.w, !dbg !14259

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !dbg !14258, !noalias !14231
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !14258
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !dbg !14258, !noalias !14231
  %.sroa.612.0..8.val.sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !14258
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i, align 8, !dbg !14258, !noalias !14231
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !14258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !14258, !noalias !14224
  br label %bb.h, !dbg !14260

bb.g:                                             ; preds = %bb.a, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %bb.a ], !dbg !14261
  store i64 %storemerge, ptr %0, align 8, !dbg !14261
  ret void, !dbg !14262

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, %bb.e
  %.sink23.i.i.sroa.phi = phi ptr [ %.sroa.75, %bb.e ], [ %.sroa.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i ]
  %.sink.i.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i ]
  store ptr %.sink.i.i, ptr %.sink23.i.i.sroa.phi, align 8, !dbg !14263, !alias.scope !14232, !noalias !14233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14264
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load ptr, ptr %.sroa.4, align 8, !dbg !14265, !alias.scope !14234, !noalias !14235, !noundef !1484
  %.sroa.75.0..sroa.75.0..sroa.75.0..sroa.75.16. = load ptr, ptr %.sroa.75, align 8, !dbg !14265, !alias.scope !14234, !noalias !14235
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4), !dbg !14266
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75), !dbg !14266
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14267
  store ptr %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., ptr %i.x, align 8, !dbg !14267, !alias.scope !14236
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14267
  store ptr %.sroa.75.0..sroa.75.0..sroa.75.0..sroa.75.16., ptr %i.y, align 8, !dbg !14267, !alias.scope !14236
  br label %bb.g, !dbg !14268
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1L_8adapters3map12map_try_foldBX_INtNtB1N_6result6ResultINtNtBa_5boxed3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB1N_3ops12control_flow11ControlFlowIB60_B3O_EENCNCNvNtNtB4d_7planner2lp25create_physical_plan_impl0se_0NCINvXB2R_INtB2R_12GenericShuntINtB2P_3MapBI_B6Q_EIB3s_NtNtB1N_7convert10InfallibleB5g_EEB1F_8try_folduNCINvNvB1F_12try_for_each4callB3O_B6F_NcNtB6F_5Break0E0B6F_E0E0B5Z_EB4d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14269 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca ptr, align 8                  ; 5 uses
  %.sroa.75 = alloca ptr, align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14328
  %i.c = load ptr, ptr %i.b, align 8, !dbg !14329, !nonnull !1484, !noundef !1484
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14330 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14330, !nonnull !1484, !noundef !1484 ; 3 uses
  %.not = icmp eq ptr %i.e, %i.c, !dbg !14330
  br i1 %.not, label %bb.g, label %bb.b, !dbg !14310

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !dbg !14331, !noundef !1484
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14332
  store ptr %i.g, ptr %i.d, align 8, !dbg !14333
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !14334
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75), !dbg !14334
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14334
  %.val = load ptr, ptr %i.h, align 8, !dbg !14334 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !14334
  %.val2 = load ptr, ptr %i.i, align 8, !dbg !14334, !nonnull !1484, !align !1636, !noundef !1484 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14316), !dbg !14334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14317), !dbg !14335
  %i.k = load ptr, ptr %.val2, align 8, !dbg !14336, !alias.scope !14317, !noalias !14318, !nonnull !1484, !align !1636, !noundef !1484
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8, !dbg !14337
  %i.m = load ptr, ptr %i.l, align 8, !dbg !14337, !alias.scope !14317, !noalias !14318, !nonnull !1484, !align !1636, !noundef !1484
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !14338
  %i.o = load ptr, ptr %i.n, align 8, !dbg !14338, !alias.scope !14317, !noalias !14318, !nonnull !1484, !noundef !1484
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 24, !dbg !14339
  %i.q = load ptr, ptr %i.p, align 8, !dbg !14339, !alias.scope !14317, !noalias !14318, !nonnull !1484, !align !1636, !noundef !1484
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 32, !dbg !14340
  %i.s = load ptr, ptr %i.r, align 8, !dbg !14340, !alias.scope !14317, !noalias !14318, !nonnull !1484, !align !1636, !noundef !1484
  %i.t = load ptr, ptr %i.s, align 8, !dbg !14340, !noalias !14319, !noundef !1484
  call void @_RNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp25create_physical_plan_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull dereferenceable(2) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef %i.t), !dbg !14341, !noalias !14316
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !dbg !14342, !noalias !14316 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14342
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !14342, !noalias !14316 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14342
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !14342, !noalias !14316 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14320), !dbg !14342
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 18, !dbg !14343
  br i1 %.not.i.i.i, label %bb.e, label %bb.c, !dbg !14344

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.u = load i64, ptr %.val, align 8, !dbg !14345, !range !1523, !alias.scope !14321, !noalias !14322, !noundef !1484
  %i.v = icmp eq i64 %i.u, 18, !dbg !14345
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %bb.d, !dbg !14345

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i unwind label %bb.f, !dbg !14346, !noalias !14322

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4, align 8, !dbg !14347, !alias.scope !14323, !noalias !14324
  br label %bb.h, !dbg !14348

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !dbg !14349, !noalias !14322
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !14349
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !dbg !14349, !noalias !14322
  %.sroa.612.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !14349
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i, align 8, !dbg !14349, !noalias !14322
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !14349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !14349, !noalias !14316
  resume { ptr, i32 } %i.w, !dbg !14350

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !dbg !14349, !noalias !14322
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !14349
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !dbg !14349, !noalias !14322
  %.sroa.612.0..8.val.sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !14349
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i, align 8, !dbg !14349, !noalias !14322
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !14349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !14349, !noalias !14316
  br label %bb.h, !dbg !14351

bb.g:                                             ; preds = %bb.a, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %bb.a ], !dbg !14352
  store i64 %storemerge, ptr %0, align 8, !dbg !14352
  ret void, !dbg !14353

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, %bb.e
  %.sink23.i.i.sroa.phi = phi ptr [ %.sroa.75, %bb.e ], [ %.sroa.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i ]
  %.sink.i.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i ]
  store ptr %.sink.i.i, ptr %.sink23.i.i.sroa.phi, align 8, !dbg !14354, !alias.scope !14323, !noalias !14324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14355
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load ptr, ptr %.sroa.4, align 8, !dbg !14356, !alias.scope !14325, !noalias !14326, !noundef !1484
  %.sroa.75.0..sroa.75.0..sroa.75.0..sroa.75.16. = load ptr, ptr %.sroa.75, align 8, !dbg !14356, !alias.scope !14325, !noalias !14326
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4), !dbg !14357
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75), !dbg !14357
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14358
  store ptr %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., ptr %i.x, align 8, !dbg !14358, !alias.scope !14327
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14358
  store ptr %.sroa.75.0..sroa.75.0..sroa.75.0..sroa.75.16., ptr %i.y, align 8, !dbg !14358, !alias.scope !14327
  br label %bb.g, !dbg !14359
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldBX_BX_uNCINvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB3A_9dataframe9DataFrame9drop_manyINtB8_3VecBX_EBX_E0NCIB2R_BX_TBX_uEuNCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtB5u_7HashSetBX_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1R_7collect6ExtendBX_E6extendINtB2T_3MapBI_B3u_EE0NCINvNvB1N_8for_each4callB5e_NCINvXs1l_NtB5w_3mapINtB8A_7HashMapBX_uB6g_EIB74_B5e_E6extendIB7D_B7C_B5l_EE0E0E0E0ECseyIfFeUOWMb_17polars_mem_engine(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14360 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !1484, !noundef !1484 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not5 = icmp eq ptr %.promoted, %i.d, !dbg !14667
  br i1 %.not5, label %._crit_edge, label %.lr.ph, !dbg !14609

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 23 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b, !dbg !14609

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14668, !noalias !14611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !14669
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !14670 ; 3 uses
  store ptr %i.l, ptr %i.e, align 8, !dbg !14671
  call void @llvm.experimental.noalias.scope.decl(metadata !14617), !dbg !14672
  call void @llvm.experimental.noalias.scope.decl(metadata !14618), !dbg !14672
  %i.m = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.p, !dbg !14673, !noalias !14619 ; 3 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !14620), !dbg !14674
  call void @llvm.experimental.noalias.scope.decl(metadata !14621), !dbg !14674
  %i.n = load i64, ptr %i.g, align 8, !dbg !14675, !alias.scope !14622, !noalias !14623, !noundef !1484
  %i.o = icmp eq i64 %i.n, 0, !dbg !14676
  br i1 %i.o, label %bb.d, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i, !dbg !14677, !prof !1592

bb.d:                                             ; preds = %bb.c
  %i.p = invoke { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i unwind label %bb.p, !dbg !14678, !noalias !14619 ; 0 uses

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.val.i.i.i.i.i.i = load ptr, ptr %1, align 8, !dbg !14679, !alias.scope !14624, !noalias !14625, !nonnull !1484, !noundef !1484 ; 10 uses
  %.val7.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !dbg !14679, !alias.scope !14624, !noalias !14625, !noundef !1484 ; 7 uses
  %i.q = lshr i64 %i.m, 57, !dbg !14680
  %i.r = trunc nuw nsw i64 %i.q to i8, !dbg !14681 ; 3 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.u = load i8, ptr %i.i, align 1, !range !1692, !alias.scope !14631, !noalias !14632
  %.fr19.i.i.i.i.i.i = freeze i8 %i.u             ; 3 uses
  %i.v = icmp ugt i8 %.fr19.i.i.i.i.i.i, -41
  %i.w = add i8 %.fr19.i.i.i.i.i.i, 64
  %i.x = call i8 @llvm.umin.i8(i8 %i.w, i8 24)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i8 %i.x to i64 ; 2 uses
  %i.y = load ptr, ptr %i.b, align 8, !alias.scope !14631, !noalias !14632
  %i.z = load i64, ptr %i.j, align 8, !alias.scope !14631, !noalias !14632 ; 2 uses
  br i1 %i.v, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.us.i.i.i.i.i.i, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.i.i.i.i.i.i

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.us.i.i.i.i.i.i: ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i, %bb.h
  %.pn.i.us.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.h ], [ %i.m, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ]
  %.sroa.4.0.i.us.i.i.i.i.i.i = phi i64 [ %.sroa.4.125.i.us.i.i.i.i.i.i, %bb.h ], [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ], !dbg !14682
  %.sroa.01.0.i.us.i.i.i.i.i.i = phi i64 [ %.sroa.01.127.i.us.i.i.i.i.i.i, %bb.h ], [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ], !dbg !14682
  %i.aa = phi i64 [ %i.bg, %bb.h ], [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ]
  %.sroa.0.021.i.us.i.i.i.i.i.i = and i64 %.pn.i.us.i.i.i.i.i.i, %.val7.i.i.i.i.i.i, !dbg !14683 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.021.i.us.i.i.i.i.i.i, !dbg !14684
  %.sroa.0.0.copyload.i32.i.us.i.i.i.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !dbg !14685, !noalias !14633 ; 3 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.us.i.i.i.i.i.i, %i.t, !dbg !14686
  %i.ad = bitcast <16 x i1> %i.ac to i16, !dbg !14687 ; 2 uses
  %.not33.i.us.i.i.i.i.i.i = icmp eq i16 %i.ad, 0, !dbg !14688
  br i1 %.not33.i.us.i.i.i.i.i.i, label %._crit_edge.i.us.i.i.i.i.i.i, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.i.us.i.i.i.i.i.i, !dbg !14689

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.i.us.i.i.i.i.i.i: ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.us.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.us.i.us.i.i.i.i.i.i
  %.sroa.05.034.us.i.us.i.i.i.i.i.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.us.i.us.i.i.i.i.i.i ], [ %i.ad, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.us.i.i.i.i.i.i ] ; 3 uses
  %i.ae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.034.us.i.us.i.i.i.i.i.i, i1 true), !dbg !14690
  %i.af = zext nneg i16 %i.ae to i64, !dbg !14691
  %i.ag = add i64 %.sroa.0.021.i.us.i.i.i.i.i.i, %i.af, !dbg !14692
  %i.ah = and i64 %i.ag, %.val7.i.i.i.i.i.i, !dbg !14692
  %i.ai = sub nsw i64 0, %i.ah, !dbg !14693
  %i.aj = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.ai, !dbg !14694 ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -24, !dbg !14695 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -1, !dbg !14696
  %i.am = load i8, ptr %i.al, align 1, !dbg !14696, !range !1692, !alias.scope !14650, !noalias !14651, !noundef !1484 ; 2 uses
  %i.an = icmp ugt i8 %i.am, -41, !dbg !14697
  br i1 %i.an, label %bb.f, label %bb.e, !dbg !14697

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.i.us.i.i.i.i.i.i
  %i.ao = add i8 %i.am, 64, !dbg !14698
  %i.ap = call i8 @llvm.umin.i8(i8 %i.ao, i8 24), !dbg !14699
  %.sroa.0.0.i.i2.i.i.i.us.i.us.i.i.i.i.i.i = zext nneg i8 %i.ap to i64, !dbg !14699
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.i.us.i.i.i.i.i.i, !dbg !14700

bb.f:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.i.us.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ak, align 8, !dbg !14701, !alias.scope !14650, !noalias !14651, !noundef !1484
  %i.ar = getelementptr inbounds i8, ptr %i.aj, i64 -16, !dbg !14702
  %i.as = load i64, ptr %i.ar, align 8, !dbg !14702, !alias.scope !14650, !noalias !14651, !noundef !1484
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.i.us.i.i.i.i.i.i, !dbg !14703

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.i.us.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.01.0.i3.i.i.i.us.i.us.i.i.i.i.i.i = phi i64 [ %i.as, %bb.f ], [ %.sroa.0.0.i.i2.i.i.i.us.i.us.i.i.i.i.i.i, %bb.e ], !dbg !14704
  %.sroa.0.0.i4.i.i.i.us.i.us.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.ak, %bb.e ], !dbg !14705
  %i.at = icmp eq i64 %i.z, %.sroa.01.0.i3.i.i.i.us.i.us.i.i.i.i.i.i, !dbg !14706
  br i1 %i.at, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i.us.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.us.i.us.i.i.i.i.i.i, !dbg !14706, !prof !14652

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i.us.i.i.i.i.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.i.us.i.i.i.i.i.i
  %bcmp.i.i.i.i.us.i.us.i.i.i.i.i.i = call i32 @bcmp(ptr %i.y, ptr %.sroa.0.0.i4.i.i.i.us.i.us.i.i.i.i.i.i, i64 %i.z), !dbg !14707, !noalias !14653
  %i.au = icmp eq i32 %bcmp.i.i.i.i.us.i.us.i.i.i.i.i.i, 0, !dbg !14707
  br i1 %i.au, label %.loopexit.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.us.i.us.i.i.i.i.i.i, !dbg !14708, !prof !14654

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.us.i.us.i.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i.us.i.i.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.i.us.i.i.i.i.i.i
  %i.av = add i16 %.sroa.05.034.us.i.us.i.i.i.i.i.i, -1, !dbg !14709
  %i.aw = and i16 %i.av, %.sroa.05.034.us.i.us.i.i.i.i.i.i, !dbg !14710 ; 2 uses
  %.not.us.i.us.i.i.i.i.i.i = icmp eq i16 %i.aw, 0, !dbg !14688
  br i1 %.not.us.i.us.i.i.i.i.i.i, label %._crit_edge.i.us.i.i.i.i.i.i, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.i.us.i.i.i.i.i.i, !dbg !14689

._crit_edge.i.us.i.i.i.i.i.i:                     ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.us.i.us.i.i.i.i.i.i, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.us.i.i.i.i.i.i
  %.not12.i.us.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.us.i.i.i.i.i.i, 1, !dbg !14711
  br i1 %.not12.i.us.i.i.i.i.i.i, label %.thread.i.us.i.i.i.i.i.i, label %bb.g, !dbg !14712, !prof !1592

bb.g:                                             ; preds = %._crit_edge.i.us.i.i.i.i.i.i
  %i.ax = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.us.i.i.i.i.i.i, zeroinitializer, !dbg !14713
  %i.ay = bitcast <16 x i1> %i.ax to i16, !dbg !14713 ; 2 uses
  %.not.i.i.us.i.i.i.i.i.i = icmp eq i16 %i.ay, 0, !dbg !14714
  br i1 %.not.i.i.us.i.i.i.i.i.i, label %bb.h, label %.thread29.i.us.i.i.i.i.i.i, !dbg !14715, !prof !1592

.thread29.i.us.i.i.i.i.i.i:                       ; preds = %bb.g
  %i.az = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ay, i1 true), !dbg !14716
  %i.ba = zext nneg i16 %i.az to i64, !dbg !14717
  %i.bb = add i64 %.sroa.0.021.i.us.i.i.i.i.i.i, %i.ba, !dbg !14718
  %i.bc = and i64 %i.bb, %.val7.i.i.i.i.i.i, !dbg !14718
  br label %.thread.i.us.i.i.i.i.i.i, !dbg !14719

.thread.i.us.i.i.i.i.i.i:                         ; preds = %.thread29.i.us.i.i.i.i.i.i, %._crit_edge.i.us.i.i.i.i.i.i
  %.sroa.4.126.i.us.i.i.i.i.i.i = phi i64 [ %i.bc, %.thread29.i.us.i.i.i.i.i.i ], [ %.sroa.4.0.i.us.i.i.i.i.i.i, %._crit_edge.i.us.i.i.i.i.i.i ] ; 2 uses
  %i.bd = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.us.i.i.i.i.i.i, splat (i8 -1), !dbg !14720
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !14721
  %i.bf = icmp eq i16 %i.be, 0, !dbg !14722
  br i1 %i.bf, label %bb.h, label %.split.us.i.i.i.i.i.i, !dbg !14722, !prof !1592

bb.h:                                             ; preds = %.thread.i.us.i.i.i.i.i.i, %bb.g
  %.sroa.01.127.i.us.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.us.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.4.125.i.us.i.i.i.i.i.i = phi i64 [ %.sroa.4.126.i.us.i.i.i.i.i.i, %.thread.i.us.i.i.i.i.i.i ], [ undef, %bb.g ]
  %i.bg = add i64 %i.aa, 16, !dbg !14723          ; 2 uses
  %i.bh = add i64 %i.bg, %.sroa.0.021.i.us.i.i.i.i.i.i, !dbg !14724
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.us.i.i.i.i.i.i, !dbg !14725

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.i.i.i.i.i.i: ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i, %bb.l
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.cp, %bb.l ], [ %i.m, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ]
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.125.i.i.i.i.i.i.i, %bb.l ], [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ], !dbg !14682
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.01.127.i.i.i.i.i.i.i, %bb.l ], [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ], !dbg !14682
  %i.bi = phi i64 [ %i.co, %bb.l ], [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ]
  %.sroa.0.021.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i, !dbg !14683 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.021.i.i.i.i.i.i.i, !dbg !14684
  %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bj, align 1, !dbg !14685, !noalias !14633 ; 3 uses
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i, %i.t, !dbg !14686
  %i.bl = bitcast <16 x i1> %i.bk to i16, !dbg !14687 ; 2 uses
  %.not33.i.i.i.i.i.i.i = icmp eq i16 %i.bl, 0, !dbg !14688
  br i1 %.not33.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.i.i.i.i.i.i, !dbg !14689

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i.i.i.i.i.i
  %.sroa.05.034.i.i.i.i.i.i.i = phi i16 [ %i.ce, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i.i.i.i.i.i ], [ %i.bl, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.i.i.i.i.i.i ] ; 3 uses
  %i.bm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.034.i.i.i.i.i.i.i, i1 true), !dbg !14690
  %i.bn = zext nneg i16 %i.bm to i64, !dbg !14691
  %i.bo = add i64 %.sroa.0.021.i.i.i.i.i.i.i, %i.bn, !dbg !14692
  %i.bp = and i64 %i.bo, %.val7.i.i.i.i.i.i, !dbg !14692
  %i.bq = sub nsw i64 0, %i.bp, !dbg !14693
  %i.br = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.bq, !dbg !14694 ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -24, !dbg !14695 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -1, !dbg !14696
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !14696, !range !1692, !alias.scope !14650, !noalias !14651, !noundef !1484 ; 2 uses
  %i.bv = icmp ugt i8 %i.bu, -41, !dbg !14697
  br i1 %i.bv, label %bb.j, label %bb.i, !dbg !14697

bb.i:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.i.i.i.i.i.i
  %i.bw = add i8 %i.bu, 64, !dbg !14698
  %i.bx = call i8 @llvm.umin.i8(i8 %i.bw, i8 24), !dbg !14699
  %.sroa.0.0.i.i2.i.i.i.i.i.i.i.i.i.i = zext nneg i8 %i.bx to i64, !dbg !14699
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.i.i.i.i.i.i, !dbg !14700

bb.j:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.i.i.i.i.i.i
  %i.by = load ptr, ptr %i.bs, align 8, !dbg !14701, !alias.scope !14650, !noalias !14651, !noundef !1484
  %i.bz = getelementptr inbounds i8, ptr %i.br, i64 -16, !dbg !14702
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !14702, !alias.scope !14650, !noalias !14651, !noundef !1484
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.i.i.i.i.i.i, !dbg !14703

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.01.0.i3.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.j ], [ %.sroa.0.0.i.i2.i.i.i.i.i.i.i.i.i.i, %bb.i ], !dbg !14704
  %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %bb.j ], [ %i.bs, %bb.i ], !dbg !14705
  %i.cb = icmp eq i64 %.sroa.01.0.i3.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !14706
  br i1 %i.cb, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i.i.i.i.i.i, !dbg !14706, !prof !14652

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.i.i.i.i.i.i
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 8 dereferenceable(24) %i.b, ptr %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i), !dbg !14707, !noalias !14656
  %i.cc = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !14707
  br i1 %i.cc, label %.loopexit.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i.i.i.i.i.i, !dbg !14708, !prof !14654

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i.i.i.i.i.i, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.i.i.i.i.i.i
end_hunk_0
