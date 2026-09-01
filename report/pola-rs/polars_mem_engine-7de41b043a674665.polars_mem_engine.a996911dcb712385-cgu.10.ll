Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_mem_engine-7de41b043a674665.polars_mem_engine.a996911dcb712385-cgu.10?download=true
inline.NumInlined: 3075
inline.NumDeleted: 1348
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldBX_NCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates_0EB2Q_:bb.a
  unreachable, !dbg !12633

_RNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates_0B7_.exit: ; preds = %bb.b, %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !dbg !12634, !alias.scope !12625, !noalias !12628, !nonnull !14, !noundef !14
  %i.v = getelementptr inbounds nuw [144 x i8], ptr %i.u, i64 %i.l, !dbg !12643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.v, ptr noundef nonnull align 16 dereferenceable(144) %i.c, i64 144, i1 false), !dbg !12646
  %i.w = add nuw nsw i64 %i.l, 1, !dbg !12648     ; 2 uses
  store i64 %i.w, ptr %i.j, align 8, !dbg !12648, !alias.scope !12625, !noalias !12628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12649
  %.not = icmp eq ptr %i.o, %i.e, !dbg !12580
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !12584

._crit_edge:                                      ; preds = %_RNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates_0B7_.exit, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.l, %_RNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates_0B7_.exit ]
  %.val6 = load ptr, ptr %0, align 8, !dbg !12650, !alias.scope !12651, !nonnull !14, !noundef !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12650
  %.val7 = load i64, ptr %i.x, align 8, !dbg !12650, !alias.scope !12651, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12654, !noalias !12664
  store i64 %.val7, ptr %i.b, align 8, !dbg !12667, !noalias !12664
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12667
  store ptr %.val6, ptr %i.y, align 8, !dbg !12667, !noalias !12664
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !12672, !noalias !12664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12674, !noalias !12664
  ret i64 %.sroa.0.0.lcssa, !dbg !12675

.body:                                            ; preds = %bb.d
  %.val4 = load ptr, ptr %0, align 8, !dbg !12650, !alias.scope !12651, !nonnull !14, !noundef !14
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12650
  %.val5 = load i64, ptr %i.z, align 8, !dbg !12650, !alias.scope !12651, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12676, !noalias !12681
  store i64 %.val5, ptr %i.a, align 8, !dbg !12684, !noalias !12681
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12684
  store ptr %.val4, ptr %i.aa, align 8, !dbg !12684, !noalias !12681
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.g unwind label %bb.f, !dbg !12686

bb.f:                                             ; preds = %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !12688
  unreachable, !dbg !12688

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12689, !noalias !12681
  resume { ptr, i32 } %i.s, !dbg !12688
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldINtNtB1N_6option6OptionBX_ENCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates0_0EB3e_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef range(i64 0, 2) %1, i64 %2, ptr noalias noundef align 8 dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12690 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.f, align 8        ; 3 uses
  %.not15 = icmp eq ptr %.promoted, %i.e, !dbg !12691
  br i1 %.not15, label %._crit_edge, label %.lr.ph, !dbg !12695

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = trunc nuw i64 %1 to i1, !dbg !12696
  %i.m = load i64, ptr %.promoted, align 8, !dbg !12702, !noundef !14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.promoted, i64 8, !dbg !12708 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12711), !dbg !12714
  br i1 %i.l, label %bb.b, label %bb.d, !dbg !12696

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12715), !dbg !12718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12720, !noalias !12724
  store i64 %2, ptr %i.c, align 16, !dbg !12720, !noalias !12724
  store i8 15, ptr %i.g, align 16, !dbg !12720, !noalias !12724
  store i64 %i.m, ptr %i.h, align 8, !dbg !12720, !noalias !12724
  store i64 -9223372036854775803, ptr %i.i, align 16, !dbg !12720, !noalias !12724
  %i.o = load i64, ptr %i.j, align 8, !dbg !12725, !alias.scope !12724, !noundef !14 ; 5 uses
  %i.p = icmp ult i64 %i.o, 64051194700380388, !dbg !12730
  tail call void @llvm.assume(i1 %i.p), !dbg !12732
  %i.q = load i64, ptr %3, align 8, !dbg !12733, !range !2773, !alias.scope !12740, !noalias !12743, !noundef !14
  %i.r = icmp eq i64 %i.o, %i.q, !dbg !12745
  br i1 %i.r, label %bb.c, label %_RNCNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates0_00B9_.exit.i.i.peel, !dbg !12745

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
          to label %_RNCNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates0_00B9_.exit.i.i.peel unwind label %.loopexit.split-lp, !dbg !12746, !noalias !12743

_RNCNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates0_00B9_.exit.i.i.peel: ; preds = %bb.c, %bb.b
  %i.s = load ptr, ptr %i.k, align 8, !dbg !12747, !alias.scope !12740, !noalias !12743, !nonnull !14, !noundef !14
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %i.s, i64 %i.o, !dbg !12752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.t, ptr noundef nonnull align 16 dereferenceable(144) %i.c, i64 144, i1 false), !dbg !12754
  %i.u = add nuw nsw i64 %i.o, 1, !dbg !12755
  store i64 %i.u, ptr %i.j, align 8, !dbg !12755, !alias.scope !12740, !noalias !12743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12756, !noalias !12724
  br label %bb.d, !dbg !12757

bb.d:                                             ; preds = %_RNCNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates0_00B9_.exit.i.i.peel, %.lr.ph
  %.sroa.02.0.i.i.peel = phi i64 [ %i.o, %_RNCNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp21python_scan_predicates0_00B9_.exit.i.i.peel ], [ %i.m, %.lr.ph ], !dbg !12758 ; 2 uses
  %.not.peel = icmp eq ptr %i.n, %i.e, !dbg !12691
  br i1 %.not.peel, label %._crit_edge, label %.peel.next, !dbg !12695

.peel.next:                                       ; preds = %bb.d, %bb.h
  %.sroa.4.016 = phi i64 [ %i.y, %bb.h ], [ %.sroa.02.0.i.i.peel, %bb.d ]
  %i.v = phi ptr [ %i.x, %bb.h ], [ %i.n, %bb.d ] ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !12702, !noundef !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !12708 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12759), !dbg !12714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12761), !dbg !12718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12720, !noalias !12763
  store i64 %.sroa.4.016, ptr %i.c, align 16, !dbg !12720, !noalias !12763
  store i8 15, ptr %i.g, align 16, !dbg !12720, !noalias !12763
  store i64 %i.w, ptr %i.h, align 8, !dbg !12720, !noalias !12763
  store i64 -9223372036854775803, ptr %i.i, align 16, !dbg !12720, !noalias !12763
  %i.y = load i64, ptr %i.j, align 8, !dbg !12725, !alias.scope !12763, !noundef !14 ; 6 uses
  %i.z = icmp ult i64 %i.y, 64051194700380388, !dbg !12730
  tail call void @llvm.assume(i1 %i.z), !dbg !12732
  %i.aa = load i64, ptr %3, align 8, !dbg !12733, !range !2773, !alias.scope !12764, !noalias !12743, !noundef !14
  %i.ab = icmp eq i64 %i.y, %i.aa, !dbg !12745
  br i1 %i.ab, label %bb.e, label %bb.h, !dbg !12745

bb.e:                                             ; preds = %.peel.next
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %.loopexit, !dbg !12746, !noalias !12743

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
          to label %.body unwind label %bb.g, !dbg !12765

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !12766
  unreachable, !dbg !12766

._crit_edge:                                      ; preds = %bb.h, %bb.d, %bb.a
  %.sroa.4.0.lcssa = phi i64 [ %2, %bb.a ], [ %.sroa.02.0.i.i.peel, %bb.d ], [ %i.y, %bb.h ]
  %.sroa.0.0.lcssa = phi i64 [ %1, %bb.a ], [ 1, %bb.d ], [ 1, %bb.h ]
  %.val10 = load ptr, ptr %0, align 8, !dbg !12767, !alias.scope !12651, !nonnull !14, !noundef !14
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12767
  %.val11 = load i64, ptr %i.ad, align 8, !dbg !12767, !alias.scope !12651, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12768, !noalias !12773
  store i64 %.val11, ptr %i.b, align 8, !dbg !12776, !noalias !12773
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12776
  store ptr %.val10, ptr %i.ae, align 8, !dbg !12776, !noalias !12773
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !12778, !noalias !12773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12780, !noalias !12773
  %i.af = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.lcssa, 0, !dbg !12781
  %i.ag = insertvalue { i64, i64 } %i.af, i64 %.sroa.4.0.lcssa, 1, !dbg !12781
  ret { i64, i64 } %i.ag, !dbg !12781

.body:                                            ; preds = %bb.f
  %.val = load ptr, ptr %0, align 8, !dbg !12767, !alias.scope !12651, !nonnull !14, !noundef !14
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12767
  %.val9 = load i64, ptr %i.ah, align 8, !dbg !12767, !alias.scope !12651, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12782, !noalias !12787
  store i64 %.val9, ptr %i.a, align 8, !dbg !12790, !noalias !12787
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12790
  store ptr %.val, ptr %i.ai, align 8, !dbg !12790, !noalias !12787
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.j unwind label %bb.i, !dbg !12792

bb.h:                                             ; preds = %.peel.next, %bb.e
  %i.aj = load ptr, ptr %i.k, align 8, !dbg !12747, !alias.scope !12764, !noalias !12743, !nonnull !14, !noundef !14
  %i.ak = getelementptr inbounds nuw [144 x i8], ptr %i.aj, i64 %i.y, !dbg !12752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ak, ptr noundef nonnull align 16 dereferenceable(144) %i.c, i64 144, i1 false), !dbg !12754
  %i.al = add nuw nsw i64 %i.y, 1, !dbg !12755
  store i64 %i.al, ptr %i.j, align 8, !dbg !12755, !alias.scope !12764, !noalias !12743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12756, !noalias !12763
  %.not = icmp eq ptr %i.x, %i.e, !dbg !12691
  br i1 %.not, label %._crit_edge, label %.peel.next, !dbg !12695, !llvm.loop !12794

bb.i:                                             ; preds = %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !12796
  unreachable, !dbg !12796

bb.j:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12797, !noalias !12787
  resume { ptr, i32 } %lpad.phi, !dbg !12796
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1L_8adapters3map12map_try_foldBX_INtNtB1N_6result6ResultINtNtBa_5boxed3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB1N_3ops12control_flow11ControlFlowIB60_B3O_EENCNCNCNvNtNtB4d_7planner2lp25create_physical_plan_impl0s1_00NCINvXB2R_INtB2R_12GenericShuntINtB2P_3MapBI_B6Q_EIB3s_NtNtB1N_7convert10InfallibleB5g_EEB1F_8try_folduNCINvNvB1F_12try_for_each4callB3O_B6F_NcNtB6F_5Break0E0B6F_E0E0B5Z_EB4d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12798 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca ptr, align 8                  ; 5 uses
  %.sroa.75 = alloca ptr, align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12799
  %i.c = load ptr, ptr %i.b, align 8, !dbg !12801, !nonnull !14, !noundef !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12802 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !12802, !nonnull !14, !noundef !14 ; 3 uses
  %.not = icmp eq ptr %i.e, %i.c, !dbg !12802
  br i1 %.not, label %bb.g, label %bb.b, !dbg !12806

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !dbg !12807, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !12813
  store ptr %i.g, ptr %i.d, align 8, !dbg !12817
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !12818
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75), !dbg !12818
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !12818
  %.val = load ptr, ptr %i.h, align 8, !dbg !12818 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !12818
  %.val2 = load ptr, ptr %i.i, align 8, !dbg !12818, !nonnull !14, !align !1154, !noundef !14 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12819), !dbg !12818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12822), !dbg !12825
  %i.k = load ptr, ptr %.val2, align 8, !dbg !12828, !alias.scope !12822, !noalias !12834, !nonnull !14, !align !1154, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8, !dbg !12836
  %i.m = load ptr, ptr %i.l, align 8, !dbg !12836, !alias.scope !12822, !noalias !12834, !nonnull !14, !align !1154, !noundef !14
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !12837
  %i.o = load ptr, ptr %i.n, align 8, !dbg !12837, !alias.scope !12822, !noalias !12834, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 24, !dbg !12838
  %i.q = load ptr, ptr %i.p, align 8, !dbg !12838, !alias.scope !12822, !noalias !12834, !nonnull !14, !align !1154, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 32, !dbg !12839
  %i.s = load ptr, ptr %i.r, align 8, !dbg !12839, !alias.scope !12822, !noalias !12834, !nonnull !14, !align !1154, !noundef !14
  %i.t = load ptr, ptr %i.s, align 8, !dbg !12839, !noalias !12840, !noundef !14
  call void @_RNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp25create_physical_plan_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull dereferenceable(2) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef %i.t), !dbg !12841, !noalias !12819
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !dbg !12842, !noalias !12819 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12842
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !12842, !noalias !12819 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12842
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !12842, !noalias !12819 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12843), !dbg !12842
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 18, !dbg !12846
  br i1 %.not.i.i.i, label %bb.e, label %bb.c, !dbg !12854

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.u = load i64, ptr %.val, align 8, !dbg !12855, !range !141, !alias.scope !12859, !noalias !12862, !noundef !14
  %i.v = icmp eq i64 %i.u, 18, !dbg !12855
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %bb.d, !dbg !12855

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i unwind label %bb.f, !dbg !12864, !noalias !12862

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4, align 8, !dbg !12867, !alias.scope !12872, !noalias !12873
  br label %bb.h, !dbg !12874

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !dbg !12875, !noalias !12862
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !12875
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !dbg !12875, !noalias !12862
  %.sroa.612.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !12875
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i, align 8, !dbg !12875, !noalias !12862
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !12875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !12875, !noalias !12819
  resume { ptr, i32 } %i.w, !dbg !12876

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !dbg !12875, !noalias !12862
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !12875
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !dbg !12875, !noalias !12862
  %.sroa.612.0..8.val.sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !12875
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i, align 8, !dbg !12875, !noalias !12862
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !12875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !12875, !noalias !12819
  br label %bb.h, !dbg !12877

bb.g:                                             ; preds = %bb.a, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %bb.a ], !dbg !12878
  store i64 %storemerge, ptr %0, align 8, !dbg !12878
  ret void, !dbg !12879

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, %bb.e
  %.sink23.i.i.sroa.phi = phi ptr [ %.sroa.75, %bb.e ], [ %.sroa.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i ]
  %.sink.i.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i ]
  store ptr %.sink.i.i, ptr %.sink23.i.i.sroa.phi, align 8, !dbg !12880, !alias.scope !12872, !noalias !12873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12881
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load ptr, ptr %.sroa.4, align 8, !dbg !12882, !alias.scope !12886, !noalias !12889, !noundef !14
  %.sroa.75.0..sroa.75.0..sroa.75.0..sroa.75.16. = load ptr, ptr %.sroa.75, align 8, !dbg !12882, !alias.scope !12886, !noalias !12889
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4), !dbg !12891
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75), !dbg !12891
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12892
  store ptr %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., ptr %i.x, align 8, !dbg !12892, !alias.scope !12899
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12892
  store ptr %.sroa.75.0..sroa.75.0..sroa.75.0..sroa.75.16., ptr %i.y, align 8, !dbg !12892, !alias.scope !12899
  br label %bb.g, !dbg !12902
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1L_8adapters3map12map_try_foldBX_INtNtB1N_6result6ResultINtNtBa_5boxed3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB1N_3ops12control_flow11ControlFlowIB60_B3O_EENCNCNCNvNtNtB4d_7planner2lp25create_physical_plan_impl0s2_00NCINvXB2R_INtB2R_12GenericShuntINtB2P_3MapBI_B6Q_EIB3s_NtNtB1N_7convert10InfallibleB5g_EEB1F_8try_folduNCINvNvB1F_12try_for_each4callB3O_B6F_NcNtB6F_5Break0E0B6F_E0E0B5Z_EB4d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12903 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca ptr, align 8                  ; 5 uses
  %.sroa.75 = alloca ptr, align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12904
  %i.c = load ptr, ptr %i.b, align 8, !dbg !12906, !nonnull !14, !noundef !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12907 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !12907, !nonnull !14, !noundef !14 ; 3 uses
  %.not = icmp eq ptr %i.e, %i.c, !dbg !12907
  br i1 %.not, label %bb.g, label %bb.b, !dbg !12911

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !dbg !12912, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !12918
  store ptr %i.g, ptr %i.d, align 8, !dbg !12922
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !12923
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75), !dbg !12923
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !12923
  %.val = load ptr, ptr %i.h, align 8, !dbg !12923 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !12923
  %.val2 = load ptr, ptr %i.i, align 8, !dbg !12923, !nonnull !14, !align !1154, !noundef !14 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12924), !dbg !12923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12927), !dbg !12930
  %i.k = load ptr, ptr %.val2, align 8, !dbg !12933, !alias.scope !12927, !noalias !12937, !nonnull !14, !align !1154, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8, !dbg !12939
  %i.m = load ptr, ptr %i.l, align 8, !dbg !12939, !alias.scope !12927, !noalias !12937, !nonnull !14, !align !1154, !noundef !14
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !12940
  %i.o = load ptr, ptr %i.n, align 8, !dbg !12940, !alias.scope !12927, !noalias !12937, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 24, !dbg !12941
  %i.q = load ptr, ptr %i.p, align 8, !dbg !12941, !alias.scope !12927, !noalias !12937, !nonnull !14, !align !1154, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 32, !dbg !12942
  %i.s = load ptr, ptr %i.r, align 8, !dbg !12942, !alias.scope !12927, !noalias !12937, !nonnull !14, !align !1154, !noundef !14
  %i.t = load ptr, ptr %i.s, align 8, !dbg !12942, !noalias !12943, !noundef !14
  call void @_RNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp25create_physical_plan_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull dereferenceable(2) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef %i.t), !dbg !12944, !noalias !12924
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !dbg !12945, !noalias !12924 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12945
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !12945, !noalias !12924 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12945
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !12945, !noalias !12924 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12946), !dbg !12945
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 18, !dbg !12949
  br i1 %.not.i.i.i, label %bb.e, label %bb.c, !dbg !12953

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.u = load i64, ptr %.val, align 8, !dbg !12954, !range !141, !alias.scope !12957, !noalias !12960, !noundef !14
  %i.v = icmp eq i64 %i.u, 18, !dbg !12954
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %bb.d, !dbg !12954

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i unwind label %bb.f, !dbg !12962, !noalias !12960

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4, align 8, !dbg !12964, !alias.scope !12969, !noalias !12970
  br label %bb.h, !dbg !12971

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !dbg !12972, !noalias !12960
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !12972
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !dbg !12972, !noalias !12960
  %.sroa.612.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !12972
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i, align 8, !dbg !12972, !noalias !12960
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !12972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !12972, !noalias !12924
  resume { ptr, i32 } %i.w, !dbg !12973

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !dbg !12972, !noalias !12960
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !12972
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !dbg !12972, !noalias !12960
  %.sroa.612.0..8.val.sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !12972
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i, align 8, !dbg !12972, !noalias !12960
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !12972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !12972, !noalias !12924
  br label %bb.h, !dbg !12974

bb.g:                                             ; preds = %bb.a, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %bb.a ], !dbg !12975
  store i64 %storemerge, ptr %0, align 8, !dbg !12975
  ret void, !dbg !12976

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, %bb.e
  %.sink23.i.i.sroa.phi = phi ptr [ %.sroa.75, %bb.e ], [ %.sroa.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i ]
  %.sink.i.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i ]
  store ptr %.sink.i.i, ptr %.sink23.i.i.sroa.phi, align 8, !dbg !12977, !alias.scope !12969, !noalias !12970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12978
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load ptr, ptr %.sroa.4, align 8, !dbg !12979, !alias.scope !12981, !noalias !12984, !noundef !14
  %.sroa.75.0..sroa.75.0..sroa.75.0..sroa.75.16. = load ptr, ptr %.sroa.75, align 8, !dbg !12979, !alias.scope !12981, !noalias !12984
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4), !dbg !12986
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75), !dbg !12986
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12987
  store ptr %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., ptr %i.x, align 8, !dbg !12987, !alias.scope !12991
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12987
  store ptr %.sroa.75.0..sroa.75.0..sroa.75.0..sroa.75.16., ptr %i.y, align 8, !dbg !12987, !alias.scope !12991
  br label %bb.g, !dbg !12994
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1L_8adapters3map12map_try_foldBX_INtNtB1N_6result6ResultINtNtBa_5boxed3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB1N_3ops12control_flow11ControlFlowIB60_B3O_EENCNCNvNtNtB4d_7planner2lp25create_physical_plan_impl0se_0NCINvXB2R_INtB2R_12GenericShuntINtB2P_3MapBI_B6Q_EIB3s_NtNtB1N_7convert10InfallibleB5g_EEB1F_8try_folduNCINvNvB1F_12try_for_each4callB3O_B6F_NcNtB6F_5Break0E0B6F_E0E0B5Z_EB4d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12995 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca ptr, align 8                  ; 5 uses
  %.sroa.75 = alloca ptr, align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12996
  %i.c = load ptr, ptr %i.b, align 8, !dbg !12998, !nonnull !14, !noundef !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12999 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !12999, !nonnull !14, !noundef !14 ; 3 uses
  %.not = icmp eq ptr %i.e, %i.c, !dbg !12999
  br i1 %.not, label %bb.g, label %bb.b, !dbg !13003

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !dbg !13004, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !13010
  store ptr %i.g, ptr %i.d, align 8, !dbg !13014
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !13015
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75), !dbg !13015
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !13015
  %.val = load ptr, ptr %i.h, align 8, !dbg !13015 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !13015
  %.val2 = load ptr, ptr %i.i, align 8, !dbg !13015, !nonnull !14, !align !1154, !noundef !14 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13016), !dbg !13015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13019), !dbg !13022
  %i.k = load ptr, ptr %.val2, align 8, !dbg !13025, !alias.scope !13019, !noalias !13028, !nonnull !14, !align !1154, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8, !dbg !13030
  %i.m = load ptr, ptr %i.l, align 8, !dbg !13030, !alias.scope !13019, !noalias !13028, !nonnull !14, !align !1154, !noundef !14
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !13031
  %i.o = load ptr, ptr %i.n, align 8, !dbg !13031, !alias.scope !13019, !noalias !13028, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 24, !dbg !13032
  %i.q = load ptr, ptr %i.p, align 8, !dbg !13032, !alias.scope !13019, !noalias !13028, !nonnull !14, !align !1154, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 32, !dbg !13033
  %i.s = load ptr, ptr %i.r, align 8, !dbg !13033, !alias.scope !13019, !noalias !13028, !nonnull !14, !align !1154, !noundef !14
  %i.t = load ptr, ptr %i.s, align 8, !dbg !13033, !noalias !13034, !noundef !14
  call void @_RNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp25create_physical_plan_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull dereferenceable(2) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef %i.t), !dbg !13035, !noalias !13016
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !dbg !13036, !noalias !13016 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13036
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !13036, !noalias !13016 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13036
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !13036, !noalias !13016 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13037), !dbg !13036
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 18, !dbg !13040
  br i1 %.not.i.i.i, label %bb.e, label %bb.c, !dbg !13044

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.u = load i64, ptr %.val, align 8, !dbg !13045, !range !141, !alias.scope !13048, !noalias !13051, !noundef !14
  %i.v = icmp eq i64 %i.u, 18, !dbg !13045
  br i1 %i.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %bb.d, !dbg !13045

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i unwind label %bb.f, !dbg !13053, !noalias !13051

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4, align 8, !dbg !13055, !alias.scope !13060, !noalias !13061
  br label %bb.h, !dbg !13062

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !dbg !13063, !noalias !13051
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !13063
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i, align 8, !dbg !13063, !noalias !13051
  %.sroa.612.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !13063
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i, align 8, !dbg !13063, !noalias !13051
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !13063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !13063, !noalias !13016
  resume { ptr, i32 } %i.w, !dbg !13064

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i, ptr %.val, align 8, !dbg !13063, !noalias !13051
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !13063
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i, align 8, !dbg !13063, !noalias !13051
  %.sroa.612.0..8.val.sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !13063
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i, align 8, !dbg !13063, !noalias !13051
  %.sroa.7.0..8.val.sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !13063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !13063, !noalias !13016
  br label %bb.h, !dbg !13065

bb.g:                                             ; preds = %bb.a, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %bb.a ], !dbg !13066
  store i64 %storemerge, ptr %0, align 8, !dbg !13066
  ret void, !dbg !13067

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i, %bb.e
  %.sink23.i.i.sroa.phi = phi ptr [ %.sroa.75, %bb.e ], [ %.sroa.4, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i ]
  %.sink.i.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i ]
  store ptr %.sink.i.i, ptr %.sink23.i.i.sroa.phi, align 8, !dbg !13068, !alias.scope !13060, !noalias !13061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13069
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load ptr, ptr %.sroa.4, align 8, !dbg !13070, !alias.scope !13072, !noalias !13075, !noundef !14
  %.sroa.75.0..sroa.75.0..sroa.75.0..sroa.75.16. = load ptr, ptr %.sroa.75, align 8, !dbg !13070, !alias.scope !13072, !noalias !13075
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4), !dbg !13077
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75), !dbg !13077
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13078
  store ptr %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., ptr %i.x, align 8, !dbg !13078, !alias.scope !13082
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13078
  store ptr %.sroa.75.0..sroa.75.0..sroa.75.0..sroa.75.16., ptr %i.y, align 8, !dbg !13078, !alias.scope !13082
  br label %bb.g, !dbg !13085
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldBX_BX_uNCINvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB3A_9dataframe9DataFrame9drop_manyINtB8_3VecBX_EBX_E0NCIB2R_BX_TBX_uEuNCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtB5u_7HashSetBX_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1R_7collect6ExtendBX_E6extendINtB2T_3MapBI_B3u_EE0NCINvNvB1N_8for_each4callB5e_NCINvXs1l_NtB5w_3mapINtB8A_7HashMapBX_uB6g_EIB74_B5e_E6extendIB7D_B7C_B5l_EE0E0E0E0ECseyIfFeUOWMb_17polars_mem_engine(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13086 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not5 = icmp eq ptr %.promoted, %i.d, !dbg !13087
  br i1 %.not5, label %._crit_edge, label %.lr.ph, !dbg !13091

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 23 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b, !dbg !13091

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13092, !noalias !13106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !13113
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !13119 ; 3 uses
  store ptr %i.l, ptr %i.e, align 8, !dbg !13122
  call void @llvm.experimental.noalias.scope.decl(metadata !13123), !dbg !13126
  call void @llvm.experimental.noalias.scope.decl(metadata !13128), !dbg !13126
  %i.m = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.p, !dbg !13130, !noalias !13136 ; 3 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !13139), !dbg !13142
  call void @llvm.experimental.noalias.scope.decl(metadata !13146), !dbg !13142
  %i.n = load i64, ptr %i.g, align 8, !dbg !13148, !alias.scope !13154, !noalias !13157, !noundef !14
  %i.o = icmp eq i64 %i.n, 0, !dbg !13160
  br i1 %i.o, label %bb.d, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i, !dbg !13161, !prof !865

bb.d:                                             ; preds = %bb.c
  %i.p = invoke { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i unwind label %bb.p, !dbg !13166, !noalias !13136 ; 0 uses

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.val.i.i.i.i.i.i = load ptr, ptr %1, align 8, !dbg !13167, !alias.scope !13168, !noalias !13169, !nonnull !14, !noundef !14 ; 10 uses
  %.val7.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !dbg !13167, !alias.scope !13168, !noalias !13169, !noundef !14 ; 7 uses
  %i.q = lshr i64 %i.m, 57, !dbg !13170
  %i.r = trunc nuw nsw i64 %i.q to i8, !dbg !13181 ; 3 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.u = load i8, ptr %i.i, align 1, !range !1877, !alias.scope !13183, !noalias !13184
  %.fr19.i.i.i.i.i.i = freeze i8 %i.u             ; 3 uses
  %i.v = icmp ugt i8 %.fr19.i.i.i.i.i.i, -41
  %i.w = add i8 %.fr19.i.i.i.i.i.i, 64
  %i.x = call i8 @llvm.umin.i8(i8 %i.w, i8 24)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i8 %i.x to i64 ; 2 uses
  %i.y = load ptr, ptr %i.b, align 8, !alias.scope !13183, !noalias !13184
  %i.z = load i64, ptr %i.j, align 8, !alias.scope !13183, !noalias !13184 ; 2 uses
  br i1 %i.v, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.us.i.i.i.i.i.i, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.i.i.i.i.i.i

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.us.i.i.i.i.i.i: ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i, %bb.h
  %.pn.i.us.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.h ], [ %i.m, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ]
  %.sroa.4.0.i.us.i.i.i.i.i.i = phi i64 [ %.sroa.4.125.i.us.i.i.i.i.i.i, %bb.h ], [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ], !dbg !13185
  %.sroa.01.0.i.us.i.i.i.i.i.i = phi i64 [ %.sroa.01.127.i.us.i.i.i.i.i.i, %bb.h ], [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ], !dbg !13185
  %i.aa = phi i64 [ %i.bg, %bb.h ], [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ]
  %.sroa.0.021.i.us.i.i.i.i.i.i = and i64 %.pn.i.us.i.i.i.i.i.i, %.val7.i.i.i.i.i.i, !dbg !13186 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.021.i.us.i.i.i.i.i.i, !dbg !13188
  %.sroa.0.0.copyload.i32.i.us.i.i.i.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !dbg !13194, !noalias !13210 ; 3 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.us.i.i.i.i.i.i, %i.t, !dbg !13213
  %i.ad = bitcast <16 x i1> %i.ac to i16, !dbg !13220 ; 2 uses
  %.not33.i.us.i.i.i.i.i.i = icmp eq i16 %i.ad, 0, !dbg !13226
  br i1 %.not33.i.us.i.i.i.i.i.i, label %._crit_edge.i.us.i.i.i.i.i.i, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.i.us.i.i.i.i.i.i, !dbg !13238

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.i.us.i.i.i.i.i.i: ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.us.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.us.i.us.i.i.i.i.i.i
  %.sroa.05.034.us.i.us.i.i.i.i.i.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.us.i.us.i.i.i.i.i.i ], [ %i.ad, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.us.i.i.i.i.i.i ] ; 3 uses
  %i.ae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.034.us.i.us.i.i.i.i.i.i, i1 true), !dbg !13239
  %i.af = zext nneg i16 %i.ae to i64, !dbg !13247
  %i.ag = add i64 %.sroa.0.021.i.us.i.i.i.i.i.i, %i.af, !dbg !13248
  %i.ah = and i64 %i.ag, %.val7.i.i.i.i.i.i, !dbg !13248
  %i.ai = sub nsw i64 0, %i.ah, !dbg !13250
  %i.aj = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.ai, !dbg !13263 ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -24, !dbg !13264 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -1, !dbg !13270
  %i.am = load i8, ptr %i.al, align 1, !dbg !13270, !range !1877, !alias.scope !13302, !noalias !13309, !noundef !14 ; 2 uses
  %i.an = icmp ugt i8 %i.am, -41, !dbg !13313
  br i1 %i.an, label %bb.f, label %bb.e, !dbg !13313

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.i.us.i.i.i.i.i.i
  %i.ao = add i8 %i.am, 64, !dbg !13314
  %i.ap = call i8 @llvm.umin.i8(i8 %i.ao, i8 24), !dbg !13318
  %.sroa.0.0.i.i2.i.i.i.us.i.us.i.i.i.i.i.i = zext nneg i8 %i.ap to i64, !dbg !13318
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.i.us.i.i.i.i.i.i, !dbg !13324

bb.f:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.i.us.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ak, align 8, !dbg !13327, !alias.scope !13302, !noalias !13309, !noundef !14
  %i.ar = getelementptr inbounds i8, ptr %i.aj, i64 -16, !dbg !13328
  %i.as = load i64, ptr %i.ar, align 8, !dbg !13328, !alias.scope !13302, !noalias !13309, !noundef !14
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.i.us.i.i.i.i.i.i, !dbg !13329

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.i.us.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.01.0.i3.i.i.i.us.i.us.i.i.i.i.i.i = phi i64 [ %i.as, %bb.f ], [ %.sroa.0.0.i.i2.i.i.i.us.i.us.i.i.i.i.i.i, %bb.e ], !dbg !13330
  %.sroa.0.0.i4.i.i.i.us.i.us.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.ak, %bb.e ], !dbg !13331
  %i.at = icmp eq i64 %i.z, %.sroa.01.0.i3.i.i.i.us.i.us.i.i.i.i.i.i, !dbg !13332
  br i1 %i.at, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i.us.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.us.i.us.i.i.i.i.i.i, !dbg !13332, !prof !13351

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i.us.i.i.i.i.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.i.us.i.i.i.i.i.i
  %bcmp.i.i.i.i.us.i.us.i.i.i.i.i.i = call i32 @bcmp(ptr %i.y, ptr %.sroa.0.0.i4.i.i.i.us.i.us.i.i.i.i.i.i, i64 %i.z), !dbg !13352, !noalias !13357
  %i.au = icmp eq i32 %bcmp.i.i.i.i.us.i.us.i.i.i.i.i.i, 0, !dbg !13352
  br i1 %i.au, label %.loopexit.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.us.i.us.i.i.i.i.i.i, !dbg !13358, !prof !13361

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.us.i.us.i.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i.us.i.i.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.us.i.us.i.i.i.i.i.i
  %i.av = add i16 %.sroa.05.034.us.i.us.i.i.i.i.i.i, -1, !dbg !13362
  %i.aw = and i16 %i.av, %.sroa.05.034.us.i.us.i.i.i.i.i.i, !dbg !13365 ; 2 uses
  %.not.us.i.us.i.i.i.i.i.i = icmp eq i16 %i.aw, 0, !dbg !13226
  br i1 %.not.us.i.us.i.i.i.i.i.i, label %._crit_edge.i.us.i.i.i.i.i.i, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.us.i.us.i.i.i.i.i.i, !dbg !13238

._crit_edge.i.us.i.i.i.i.i.i:                     ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.us.i.us.i.i.i.i.i.i, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.us.i.i.i.i.i.i
  %.not12.i.us.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.us.i.i.i.i.i.i, 1, !dbg !13369
  br i1 %.not12.i.us.i.i.i.i.i.i, label %.thread.i.us.i.i.i.i.i.i, label %bb.g, !dbg !13375, !prof !865

bb.g:                                             ; preds = %._crit_edge.i.us.i.i.i.i.i.i
  %i.ax = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.us.i.i.i.i.i.i, zeroinitializer, !dbg !13377
  %i.ay = bitcast <16 x i1> %i.ax to i16, !dbg !13377 ; 2 uses
  %.not.i.i.us.i.i.i.i.i.i = icmp eq i16 %i.ay, 0, !dbg !13384
  br i1 %.not.i.i.us.i.i.i.i.i.i, label %bb.h, label %.thread29.i.us.i.i.i.i.i.i, !dbg !13388, !prof !865

.thread29.i.us.i.i.i.i.i.i:                       ; preds = %bb.g
  %i.az = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ay, i1 true), !dbg !13389
  %i.ba = zext nneg i16 %i.az to i64, !dbg !13394
  %i.bb = add i64 %.sroa.0.021.i.us.i.i.i.i.i.i, %i.ba, !dbg !13395
  %i.bc = and i64 %i.bb, %.val7.i.i.i.i.i.i, !dbg !13395
  br label %.thread.i.us.i.i.i.i.i.i, !dbg !13397

.thread.i.us.i.i.i.i.i.i:                         ; preds = %.thread29.i.us.i.i.i.i.i.i, %._crit_edge.i.us.i.i.i.i.i.i
  %.sroa.4.126.i.us.i.i.i.i.i.i = phi i64 [ %i.bc, %.thread29.i.us.i.i.i.i.i.i ], [ %.sroa.4.0.i.us.i.i.i.i.i.i, %._crit_edge.i.us.i.i.i.i.i.i ] ; 2 uses
  %i.bd = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.us.i.i.i.i.i.i, splat (i8 -1), !dbg !13399
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !13405
  %i.bf = icmp eq i16 %i.be, 0, !dbg !13408
  br i1 %i.bf, label %bb.h, label %.split.us.i.i.i.i.i.i, !dbg !13408, !prof !865

bb.h:                                             ; preds = %.thread.i.us.i.i.i.i.i.i, %bb.g
  %.sroa.01.127.i.us.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.us.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.4.125.i.us.i.i.i.i.i.i = phi i64 [ %.sroa.4.126.i.us.i.i.i.i.i.i, %.thread.i.us.i.i.i.i.i.i ], [ undef, %bb.g ]
  %i.bg = add i64 %i.aa, 16, !dbg !13410          ; 2 uses
  %i.bh = add i64 %i.bg, %.sroa.0.021.i.us.i.i.i.i.i.i, !dbg !13414
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.us.i.i.i.i.i.i, !dbg !13415

_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.i.i.i.i.i.i: ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i, %bb.l
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.cp, %bb.l ], [ %i.m, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ]
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.125.i.i.i.i.i.i.i, %bb.l ], [ undef, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ], !dbg !13185
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.01.127.i.i.i.i.i.i.i, %bb.l ], [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ], !dbg !13185
  %i.bi = phi i64 [ %i.co, %bb.l ], [ 0, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i ]
  %.sroa.0.021.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i, !dbg !13186 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.021.i.i.i.i.i.i.i, !dbg !13188
  %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bj, align 1, !dbg !13194, !noalias !13210 ; 3 uses
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i, %i.t, !dbg !13213
  %i.bl = bitcast <16 x i1> %i.bk to i16, !dbg !13220 ; 2 uses
  %.not33.i.i.i.i.i.i.i = icmp eq i16 %i.bl, 0, !dbg !13226
  br i1 %.not33.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.i.i.i.i.i.i, !dbg !13238

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i.i.i.i.i.i
  %.sroa.05.034.i.i.i.i.i.i.i = phi i16 [ %i.ce, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i.i.i.i.i.i ], [ %i.bl, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.i.i.i.i.i.i ] ; 3 uses
  %i.bm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.034.i.i.i.i.i.i.i, i1 true), !dbg !13239
  %i.bn = zext nneg i16 %i.bm to i64, !dbg !13247
  %i.bo = add i64 %.sroa.0.021.i.i.i.i.i.i.i, %i.bn, !dbg !13248
  %i.bp = and i64 %i.bo, %.val7.i.i.i.i.i.i, !dbg !13248
  %i.bq = sub nsw i64 0, %i.bp, !dbg !13250
  %i.br = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.bq, !dbg !13263 ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -24, !dbg !13264 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -1, !dbg !13270
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !13270, !range !1877, !alias.scope !13302, !noalias !13309, !noundef !14 ; 2 uses
  %i.bv = icmp ugt i8 %i.bu, -41, !dbg !13313
  br i1 %i.bv, label %bb.j, label %bb.i, !dbg !13313

bb.i:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.i.i.i.i.i.i
  %i.bw = add i8 %i.bu, 64, !dbg !13314
  %i.bx = call i8 @llvm.umin.i8(i8 %i.bw, i8 24), !dbg !13318
  %.sroa.0.0.i.i2.i.i.i.i.i.i.i.i.i.i = zext nneg i8 %i.bx to i64, !dbg !13318
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.i.i.i.i.i.i, !dbg !13324

bb.j:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i.i.i.i.i.i.i
  %i.by = load ptr, ptr %i.bs, align 8, !dbg !13327, !alias.scope !13302, !noalias !13309, !noundef !14
  %i.bz = getelementptr inbounds i8, ptr %i.br, i64 -16, !dbg !13328
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !13328, !alias.scope !13302, !noalias !13309, !noundef !14
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.i.i.i.i.i.i, !dbg !13329

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.01.0.i3.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.j ], [ %.sroa.0.0.i.i2.i.i.i.i.i.i.i.i.i.i, %bb.i ], !dbg !13330
  %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %bb.j ], [ %i.bs, %bb.i ], !dbg !13331
  %i.cb = icmp eq i64 %.sroa.01.0.i3.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13332
  br i1 %i.cb, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i.i.i.i.i.i, !dbg !13332, !prof !13351

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i.i.i.i.i.i.i.i.i
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 8 dereferenceable(24) %i.b, ptr %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i), !dbg !13352, !noalias !13416
  %i.cc = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !13352
  br i1 %i.cc, label %.loopexit.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i.i.i.i.i.i, !dbg !13358, !prof !13361

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2g_11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i.i.i.i.i.i, %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECseyIfFeUOWMb_17polars_mem_engine.exit.split.i.i.i.i.i.i
end_hunk_0
