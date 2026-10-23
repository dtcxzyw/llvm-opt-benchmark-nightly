Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenMPToLLVMIRTranslation?download=true
inline.NumInlined: 22650
inline.NumDeleted: 9700
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 23
begin_hunk_0
@.str.53 = private unnamed_addr constant [14 x i8] c".taskred.desc\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c".red.init\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"orig\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"omp.orig\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"omp.taskred.init\00", align 1
@_ZTVN4llvm14ConstantFolderE = external unnamed_addr constant { [22 x ptr] }, align 8
@_ZTVN4llvm24IRBuilderDefaultInserterE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.59 = private unnamed_addr constant [10 x i8] c".red.comb\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"lhs\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"rhs\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"omp.lhs\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"omp.rhs\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"omp.taskred.comb\00", align 1
@.str.65 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVN12_GLOBAL__N_121OpenMPAllocStackFrameE = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_121OpenMPAllocStackFrameD2Ev, ptr @_ZN12_GLOBAL__N_121OpenMPAllocStackFrameD0Ev, ptr @_ZN4mlir15StateStackFrame6anchorEv] }, align 8
@.str.66 = private unnamed_addr constant [16 x i8] c"omp.region.cont\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"omp.reduction.nonatomic.body\00", align 1
@.str.68 = private unnamed_addr constant [62 x i8] c"failed to inline `combiner` region of `omp.declare_reduction`\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"omp.reduction.atomic.body\00", align 1
@.str.70 = private unnamed_addr constant [60 x i8] c"failed to inline `atomic` region of `omp.declare_reduction`\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"omp.data_ptr_ptr.body\00", align 1
@.str.72 = private unnamed_addr constant [66 x i8] c"failed to inline `data_ptr_ptr` region of `omp.declare_reduction`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM8AllocaOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.73 = private unnamed_addr constant [22 x i8] c"omp.reduction.cleanup\00", align 1
@.str.74 = private unnamed_addr constant [61 x i8] c"failed to inline `cleanup` region of `omp.declare_reduction`\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"omp.private.dealloc\00", align 1
@.str.76 = private unnamed_addr constant [60 x i8] c"failed to inline `dealloc` region of an `omp.private` op in\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp8MaskedOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.77 = private unnamed_addr constant [18 x i8] c"omp.masked.region\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp8MasterOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.78 = private unnamed_addr constant [18 x i8] c"omp.master.region\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp17CriticalDeclareOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.79 = private unnamed_addr constant [20 x i8] c"omp.critical.region\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp15OrderedRegionOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.80 = private unnamed_addr constant [19 x i8] c"omp.ordered.region\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp9OrderedOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.81 = private unnamed_addr constant [10 x i8] c".cnt.addr\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"omp.wsloop.region\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c".linear_var\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c".linear_result\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"omp_loop.linear_finalization\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"omp_loop.linear_exit\00", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"omp_loop.linear_lastiter_exit\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_3omp21ComposableOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_3omp21ComposableOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.88 = private unnamed_addr constant [83 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::omp::ComposableOpInterface]\00", align 1
@.str.89 = private unnamed_addr constant [29 x i8] c"failed to convert reductions\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"omp.simd.region\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"red.value.\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"red.private.value.\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.93 = private unnamed_addr constant [93 x i8] c"no atomic update operation with region argument as operand found inside atomic.update region\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM5AddOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM5SubOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM5AndOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM4OrOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM5XOrOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM6UMaxOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM6UMinOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM6FAddOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM6FSubOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.94 = private unnamed_addr constant [52 x i8] c"unable to determine element type for atomic compare\00", align 1
@.str.95 = private unnamed_addr constant [59 x i8] c"failed to translate operation inside atomic compare region\00", align 1
@.str.96 = private unnamed_addr constant [65 x i8] c"unsupported comparison predicate (NE) for complex atomic compare\00", align 1
@.str.97 = private unnamed_addr constant [63 x i8] c"failed to extract desired value (d) from atomic compare region\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"cmplx.e\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"cmplx.d\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"cmplx.e.int\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"cmplx.d.int\00", align 1
@.str.102 = private unnamed_addr constant [51 x i8] c"unsupported comparison predicate in atomic compare\00", align 1
@.str.103 = private unnamed_addr constant [64 x i8] c"failed to extract expected value (e) from atomic compare region\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM6ICmpOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM6FCmpOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM8SelectOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM14ExtractValueOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM6LoadOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3omp9SectionOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.104 = private unnamed_addr constant [19 x i8] c"omp.section.region\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"omp.scope.region\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"omp.single.region\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM12DbgDeclareOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM10DbgValueOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.107 = private unnamed_addr constant [17 x i8] c"omp.teams.region\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"omp.task.start\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"omp.task\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"omp.task.context_ptr\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"iterator\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"omp.affinity_list\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp15AffinityEntryOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.113 = private unnamed_addr constant [19 x i8] c"omp.affinity.entry\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp10IteratorOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.114 = private unnamed_addr constant [34 x i8] c"failed to convert iterator region\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"omp.it.phys_iv\00", align 1
@.str.116 = private unnamed_addr constant [19 x i8] c"failed to resolve \00", align 1
@.str.117 = private unnamed_addr constant [27 x i8] c" declare_reduction symbol \00", align 1
@.str.118 = private unnamed_addr constant [22 x i8] c"not yet implemented: \00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c" with two-argument initializer in \00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c" with cleanup region in \00", align 1
@.str.121 = private unnamed_addr constant [48 x i8] c" declare_reduction is missing a combiner region\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c".dep.arr.addr\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"dep_iterator\00", align 1
@.str.124 = private unnamed_addr constant [15 x i8] c"omp.inred.priv\00", align 1
@.str.125 = private unnamed_addr constant [16 x i8] c"omp.task.region\00", align 1
@.str.126 = private unnamed_addr constant [28 x i8] c"omp.taskloop.wrapper.region\00", align 1
@.str.127 = private unnamed_addr constant [27 x i8] c"omp.taskloop.wrapper.start\00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"omp.taskloop.context\00", align 1
@.str.129 = private unnamed_addr constant [24 x i8] c"__omp_taskloop_taskred_\00", align 1
@.str.130 = private unnamed_addr constant [44 x i8] c"value is a block argument and is not mapped\00", align 1
@.str.131 = private unnamed_addr constant [44 x i8] c"unsupported op defining taskloop loop bound\00", align 1
@.str.132 = private unnamed_addr constant [50 x i8] c"failed to convert op defining taskloop loop bound\00", align 1
@.str.133 = private unnamed_addr constant [25 x i8] c"omp.taskloop.context.src\00", align 1
@.str.134 = private unnamed_addr constant [26 x i8] c"omp.taskloop.context.dest\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"omp.taskred.priv\00", align 1
@.str.136 = private unnamed_addr constant [28 x i8] c"omp.taskloop.context.region\00", align 1
@.str.137 = private unnamed_addr constant [59 x i8] c"failed to resolve task_reduction declare_reduction symbol \00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c" in omp.taskgroup\00", align 1
@.str.139 = private unnamed_addr constant [83 x i8] c"not yet implemented: task_reduction with two-argument initializer in omp.taskgroup\00", align 1
@.str.140 = private unnamed_addr constant [73 x i8] c"not yet implemented: task_reduction with cleanup region in omp.taskgroup\00", align 1
@.str.141 = private unnamed_addr constant [62 x i8] c"task_reduction declare_reduction is missing a combiner region\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"__omp_taskred_\00", align 1
@.str.143 = private unnamed_addr constant [63 x i8] c"failed to emit task_reduction initialization for omp.taskgroup\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"omp.taskgroup.region\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp15DeclareMapperOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3omp15ThreadprivateOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.145 = private unnamed_addr constant [28 x i8] c"Addressing symbol not found\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c".cache\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM15AddrSpaceCastOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM11AddressOfOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM8GlobalOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.148 = private unnamed_addr constant [4 x i8] c"_%x\00", align 1
@.str.149 = private unnamed_addr constant [18 x i8] c"_decl_tgt_ref_ptr\00", align 1
@_ZTVN4llvm19raw_svector_ostreamE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZN4mlir6detail14TypeIDResolverINS_16FileLineColRangeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.150 = private unnamed_addr constant [14 x i8] c"element_count\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp11MapBoundsOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM13LLVMArrayTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.151 = private unnamed_addr constant [13 x i8] c"array_offset\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c".casted\00", align 1
@.str.153 = private unnamed_addr constant [23 x i8] c"Unhandled capture kind\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"omp_mapper\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"omp.data.region\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp10LoopNestOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM10ConstantOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.157 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"target-cpu\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"target-features\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"omp.target\00", align 1
@.str.161 = private unnamed_addr constant [22 x i8] c"omp.distribute.region\00", align 1
@.str.162 = private unnamed_addr constant [21 x i8] c"omp.loop_nest.region\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp8NewCliOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3omp15CanonicalLoopOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.163 = private unnamed_addr constant [9 x i8] c"omp.loop\00", align 1
@.str.164 = private unnamed_addr constant [16 x i8] c"omp.loop.region\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp17UnrollHeuristicOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3omp15UnrollPartialOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3omp6TileOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3omp6FuseOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3omp16TargetAllocMemOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.165 = private unnamed_addr constant [17 x i8] c"omp_target_alloc\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp15TargetFreeMemOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.166 = private unnamed_addr constant [16 x i8] c"omp_target_free\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp13AllocateDirOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.167 = private unnamed_addr constant [11 x i8] c".void.addr\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp14AllocateFreeOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.170 = private unnamed_addr constant [42 x i8] c"omp.allocate_free: no allocation recorded\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp16AllocSharedMemOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3omp15FreeSharedMemOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3omp14GroupprivateOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.171 = private unnamed_addr constant [18 x i8] c"expected symbol '\00", align 1
@.str.172 = private unnamed_addr constant [39 x i8] c"' to reference an LLVM global variable\00", align 1
@.str.173 = private unnamed_addr constant [43 x i8] c"groupprivate is not supported for target: \00", align 1
@.str.174 = private unnamed_addr constant [79 x i8] c"groupprivate directive is currently ignored on the host, using original global\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3omp9FlagsAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.183 = private unnamed_addr constant [44 x i8] c"omp flags attached to non offload module op\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"openmp-device\00", align 1
@.str.185 = private unnamed_addr constant [21 x i8] c"__omp_rtl_debug_kind\00", align 1
@.str.186 = private unnamed_addr constant [40 x i8] c"__omp_rtl_assume_teams_oversubscription\00", align 1
@.str.187 = private unnamed_addr constant [42 x i8] c"__omp_rtl_assume_threads_oversubscription\00", align 1
@.str.188 = private unnamed_addr constant [33 x i8] c"__omp_rtl_assume_no_thread_state\00", align 1
@.str.189 = private unnamed_addr constant [39 x i8] c"__omp_rtl_assume_no_nested_parallelism\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_3omp22OffloadModuleInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_3omp22OffloadModuleInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.190 = private unnamed_addr constant [84 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::omp::OffloadModuleInterface]\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"openmp\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp11VersionAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3omp17DeclareTargetAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.192 = private unnamed_addr constant [76 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::FunctionOpInterface]\00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"llvm.target_triple\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3omp18ClauseRequiresAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_9ArrayAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3omp13OpenMPDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.196 = private unnamed_addr constant [4 x i8] c"omp\00", align 1
@_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_3omp13OpenMPDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir20DialectExtensionBaseD2Ev, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_3omp13OpenMPDialectEEEEbPFvPNS_11MLIRContextEDpPT_EEN9ExtensionD0Ev, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_3omp13OpenMPDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5applyES6_N4llvm15MutableArrayRefIPNS_7DialectEEE, ptr @_ZNK4mlir16DialectExtensionIZNS_15DialectRegistry12addExtensionIJNS_3omp13OpenMPDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9ExtensionJS4_EE5cloneEv, ptr @_ZZN4mlir15DialectRegistry12addExtensionIJNS_3omp13OpenMPDialectEEEEbPFvPNS_11MLIRContextEDpPT_EENK9Extension5applyES5_PS3_] }, comdat, align 8
@_ZTVN4mlir20DialectExtensionBaseE = external unnamed_addr constant { [6 x ptr] }, align 8
@switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE = private unnamed_addr constant [4 x i8] c"\05\02\03\04", align 4
@switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.661 = private unnamed_addr constant [5 x i8] c"\07\06\04\05\02", align 4
@switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.662 = private unnamed_addr constant [6 x i8] [i8 2, i8 poison, i8 4, i8 2, i8 4, i8 7], align 4
@switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.663 = private unnamed_addr constant [9 x i8] [i8 0, i8 poison, i8 1, i8 poison, i8 2, i8 poison, i8 1, i8 poison, i8 2], align 4
@switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.664 = private unnamed_addr constant [11 x i8] [i8 0, i8 2, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 0, i8 2, i8 poison, i8 1], align 4
@switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.666 = private unnamed_addr constant [4 x i8] c".!@Y", align 4
@switch.table._ZL22buildDependDataLocatorSt8optionalIN4mlir9ArrayAttrEENS0_12OperandRangeERNS0_4LLVM17ModuleTranslationERN4llvm15SmallVectorImplINS7_15OpenMPIRBuilder10DependDataEEE = private unnamed_addr constant [5 x i8] c"\01\03\03\04\08", align 4
@"switch.table._ZN4llvm12function_refIFNS_13LogicalResultEN4mlir9AttributeEEE11callback_fnIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface14amendOperationEPNS2_9OperationENS_8ArrayRefIPNS_11InstructionEEENS2_14NamedAttributeERNS2_4LLVM17ModuleTranslationEE3$_5EES1_lS3_" = private unnamed_addr constant [4 x i8] c"\03\00\01\02", align 4
@"switch.table._ZN4llvm12function_refIFNS_13LogicalResultEN4mlir9AttributeEEE11callback_fnIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface14amendOperationEPNS2_9OperationENS_8ArrayRefIPNS_11InstructionEEENS2_14NamedAttributeERNS2_4LLVM17ModuleTranslationEE3$_5EES1_lS3_.667" = private unnamed_addr constant [3 x i8] c"\00\02\01", align 4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir32registerOpenMPDialectTranslationERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::function.4074", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3omp13OpenMPDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !65
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3omp13OpenMPDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !66
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3omp13OpenMPDialectEvE2idE, ptr nonnull @.str.196, i64 3, ptr noundef nonnull align 8 dereferenceable(32) %1) #31
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir15DialectRegistry6insertINS_3omp13OpenMPDialectEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #31, !inline_history !835 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_3omp13OpenMPDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_3omp13OpenMPDialectEEEvv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.e = call noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_3omp13OpenMPDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull @"_ZZN4mlir32registerOpenMPDialectTranslationERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS_3omp13OpenMPDialectE") ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_3omp13OpenMPDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.4121", align 8   ; 5 uses
  %3 = alloca %"class.std::tuple.4124", align 8   ; 5 uses
  %4 = alloca %"class.mlir::TypeID", align 8      ; 8 uses
  %5 = alloca %"class.std::unique_ptr.4055", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32, !noalias !847 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !68, !noalias !847
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 3, ptr %i.e, align 4, !tbaa !69, !noalias !847
  store ptr @.str.196, ptr %i.c, align 8, !noalias !847
  %.sroa.4.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 3, ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !noalias !847
  store i32 1, ptr %i.d, align 8, !tbaa !70, !noalias !847
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN4mlir15DialectRegistry12addExtensionIJNS_3omp13OpenMPDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension, i64 16), ptr %i.a, align 8, !tbaa !72, !noalias !847
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.f, align 8, !tbaa !81, !noalias !847
  store ptr %i.a, ptr %5, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !848 ; 2 uses
  %.fca.1.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.h, 1
  %i.i = trunc nuw i8 %.fca.1.extract.i.i.i.i.i to i1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.k = ptrtoint ptr %i.a to i64
  br i1 %i.i, label %bb.b, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.h, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !70   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !850
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %4, ptr %2, align 8, !tbaa !88, !alias.scope !851
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %5, ptr %3, align 8, !tbaa !90, !alias.scope !852
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69
  %.not.i.i.i.i = icmp ult i32 %i.m, %i.p
  br i1 %.not.i.i.i.i, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, label %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit, !prof !91

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6: ; preds = %bb.b
  %i.q = zext i32 %i.m to i64
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = load i64, ptr %4, align 8, !tbaa !92
  store i64 %i.t, ptr %i.s, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.k, ptr %i.u, align 8, !tbaa !93
  %i.v = add nuw i32 %i.m, 1
  store i32 %i.v, ptr %i.l, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_3omp13OpenMPDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit: ; preds = %bb.b
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESF_IJOS8_EEEEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !93 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i = icmp eq ptr %.pre.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_3omp13OpenMPDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  %i.x = phi ptr [ %i.a, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread ], [ %.pre.pre, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(72) %i.x) #31, !inline_history !846
  br label %_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_3omp13OpenMPDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit

_ZNSt10unique_ptrIZN4mlir15DialectRegistry12addExtensionIJNS0_3omp13OpenMPDialectEEEEbPFvPNS0_11MLIRContextEDpPT_EE9ExtensionSt14default_deleteISC_EED2Ev.exit: ; preds = %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit.thread6, %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i, %_ZN4mlir15DialectRegistry12addExtensionENS_6TypeIDESt10unique_ptrINS_20DialectExtensionBaseESt14default_deleteIS3_EE.exit
  ret i1 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir32registerOpenMPDialectTranslationERNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::function.4074", align 8 ; 8 uses
  %2 = alloca %"class.mlir::DialectRegistry", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN4mlir15DialectRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3omp13OpenMPDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !65
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3omp13OpenMPDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !66
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3omp13OpenMPDialectEvE2idE, ptr nonnull @.str.196, i64 3, ptr noundef nonnull align 8 dereferenceable(32) %1) #31
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4mlir32registerOpenMPDialectTranslationERNS_15DialectRegistryE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #31, !inline_history !853 ; 0 uses
  br label %_ZN4mlir32registerOpenMPDialectTranslationERNS_15DialectRegistryE.exit

_ZN4mlir32registerOpenMPDialectTranslationERNS_15DialectRegistryE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.e = call noundef zeroext i1 @_ZN4mlir15DialectRegistry12addExtensionIJNS_3omp13OpenMPDialectEEEEbPFvPNS_11MLIRContextEDpPT_E(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull @"_ZZN4mlir32registerOpenMPDialectTranslationERNS_15DialectRegistryEEN3$_08__invokeEPNS_11MLIRContextEPNS_3omp13OpenMPDialectE") ; 0 uses
  call void @_ZN4mlir11MLIRContext21appendDialectRegistryERKNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %2) #31
  call void @_ZN4mlir15DialectRegistryD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

declare void @_ZN4mlir15DialectRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #2

declare void @_ZN4mlir11MLIRContext21appendDialectRegistryERKNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir15DialectRegistryD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i32, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.f = zext i32 %i.e to i64
  %.idx.i.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i ], [ %i.g, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.j) #31, !inline_history !854
  br label %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i

_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir20DialectExtensionBaseEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.c, %i.h
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN4mlir6TypeIDESt10unique_ptrINS0_20DialectExtensionBaseESt14default_deleteIS3_EEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !68
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i, %bb.a
  %i.n = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm11SmallVectorISt4pairIN4mlir6TypeIDESt10unique_ptrINS2_20DialectExtensionBaseESt14default_deleteIS5_EEELj0EED2Ev.exit.i, label %bb.b

end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE:bb.a

bb.dg:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i.i.i.i295, %.lr.ph33.i.i.i.i
  %.01932.i.i.i.i = phi i64 [ 0, %.lr.ph33.i.i.i.i ], [ %.1.lcssa.i.i.i.i, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i.i.i.i295 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %432) #31
  store ptr %i.ze, ptr %432, align 8, !tbaa !68
  store i32 0, ptr %i.zf, align 8, !tbaa !70
  store i32 6, ptr %i.zg, align 4, !tbaa !69
  br i1 %i.zi, label %bb.dh, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %432, ptr noundef nonnull %i.ze, i64 noundef %i.zh, i64 noundef 8) #31
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i: ; preds = %bb.dh, %bb.dg
  br i1 %.not35.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i
  %i.zq = trunc nuw i64 %.01932.i.i.i.i to i32
  %i.zr = add i32 %i.zq, %i.ym
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i
  %.1.lcssa.i.i.i.i = phi i64 [ %.01932.i.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i.i.i ], [ %i.aar, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i285 = load ptr, ptr %i.zj, align 8
  %.val21.i.i.i.i286 = load i32, ptr %i.zk, align 8
  call fastcc void @_ZL21findAllocInsertPointsRN4llvm13IRBuilderBaseERN4mlir4LLVM17ModuleTranslationEPNS_15SmallVectorImplIPNS_10BasicBlockEEE(ptr dead_on_unwind noalias writable align 8 %435, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %.val.i.i.i.i285, i32 %.val21.i.i.i.i286, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %433) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %.sroa.2.0.copyload.i.i.i.i.i.i.i288 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i283, align 8, !noalias !1418
  %.sroa.22.8.insert.ext.i.i.i.i.i.i289 = and i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i288, 65535
  %i.zs = load <2 x ptr>, ptr %i.zl, align 8, !noalias !1418
  store <2 x ptr> %i.zs, ptr %433, align 16, !alias.scope !1418
  store i64 %.sroa.22.8.insert.ext.i.i.i.i.i.i289, ptr %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i284, align 16, !alias.scope !1418
  %i.zt = call ptr @_ZNK4llvm13IRBuilderBase23getCurrentDebugLocationEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #31
  store ptr %i.zt, ptr %i.zn, align 8
  %i.zu = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation16getOpenMPBuilderEv(ptr noundef nonnull align 8 dereferenceable(592) %3) #31
  %i.zv = load ptr, ptr %432, align 8, !tbaa !68
  %i.zw = load i32, ptr %i.zf, align 8, !tbaa !70
  %i.zx = zext i32 %i.zw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %436) #31
  store i8 1, ptr %i.zp, align 1, !tbaa !142
  store ptr @.str.81, ptr %436, align 8, !tbaa !105
  store i8 3, ptr %i.zo, align 8, !tbaa !141
  call void @_ZN4llvm15OpenMPIRBuilder19createOrderedDependERKNS0_19LocationDescriptionENS_13IRBuilderBase11InsertPointEjNS_8ArrayRefIPNS_5ValueEEERKNS_5TwineEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %434, ptr noundef nonnull align 8 dereferenceable(1864) %i.zu, ptr noundef nonnull align 8 dereferenceable(32) %433, ptr noundef nonnull byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %435, i32 noundef %i.ym, ptr %i.zv, i64 %i.zx, ptr noundef nonnull align 8 dereferenceable(34) %436, i1 noundef zeroext %i.yj) #31
  %.sroa.027.0.copyload.i.i.i.i290 = load ptr, ptr %434, align 8 ; 3 uses
  %.sroa.428.0.copyload.i.i.i.i = load ptr, ptr %.sroa.428.0..sroa_idx.i.i.i.i, align 8 ; 3 uses
  %.not.i.i.i.i.i291 = icmp eq ptr %.sroa.027.0.copyload.i.i.i.i290, null
  br i1 %.not.i.i.i.i.i291, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %._crit_edge.i.i.i.i
  %.sroa.529.0.copyload.i.i.i.i = load i64, ptr %.sroa.529.0..sroa_idx.i.i.i.i, align 8
  store ptr %.sroa.027.0.copyload.i.i.i.i290, ptr %i.zl, align 8, !tbaa !187
  store ptr %.sroa.428.0.copyload.i.i.i.i, ptr %i.zm, align 8
  %.sroa.45.0.extract.trunc.i.i.i.i.i.i292 = trunc i64 %.sroa.529.0.copyload.i.i.i.i to i16
  store i16 %.sroa.45.0.extract.trunc.i.i.i.i.i.i292, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i283, align 8
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.027.0.copyload.i.i.i.i290, i64 48
  %.not.i.i.i.i.i.i293 = icmp eq ptr %.sroa.428.0.copyload.i.i.i.i, %i.zy
  br i1 %.not.i.i.i.i.i.i293, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i294, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.zz = getelementptr inbounds i8, ptr %.sroa.428.0.copyload.i.i.i.i, i64 -24
  %i.aaa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.zz) #31
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !188
  store i64 %i.aab, ptr %2, align 8, !tbaa !188
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i294

bb.dk:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.zl, i8 0, i64 18, i1 false)
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i294

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i294: ; preds = %bb.dk, %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %436) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %433) #31
  %i.aac = load ptr, ptr %432, align 8, !tbaa !68 ; 2 uses
  %i.aad = icmp eq ptr %i.aac, %i.ze
  br i1 %i.aad, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i.i.i.i295, label %bb.dl

bb.dl:                                            ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i294
  call void @free(ptr noundef %i.aac) #31
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i.i.i.i295

_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i.i.i.i295: ; preds = %bb.dl, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %432) #31
  %i.aae = load i32, ptr %i.zc, align 8, !tbaa !70
  %i.aaf = zext i32 %i.aae to i64
  %i.aag = icmp ult i64 %.1.lcssa.i.i.i.i, %i.aaf
  br i1 %i.aag, label %bb.dg, label %._crit_edge34.i.i.i.i, !llvm.loop !932

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.130.i.i.i.i = phi i64 [ %i.aar, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i.i.i ], [ %.01932.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.aah = load ptr, ptr %430, align 8, !tbaa !68
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.aah, i64 %.130.i.i.i.i
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !198 ; 2 uses
  %i.aak = load i32, ptr %i.zf, align 8, !tbaa !70 ; 2 uses
  %i.aal = load i32, ptr %i.zg, align 4, !tbaa !69
  %.not.i22.i.i.i.i = icmp ult i32 %i.aak, %i.aal
  br i1 %.not.i22.i.i.i.i, label %bb.dn, label %bb.dm, !prof !91

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %432, ptr noundef %i.aaj)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i.i.i

bb.dn:                                            ; preds = %.lr.ph.i.i.i.i
  %i.aam = zext i32 %i.aak to i64
  %i.aan = load ptr, ptr %432, align 8, !tbaa !68
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %i.aam
  store ptr %i.aaj, ptr %i.aao, align 1
  %i.aap = load i32, ptr %i.zf, align 8, !tbaa !70
  %i.aaq = add i32 %i.aap, 1
  store i32 %i.aaq, ptr %i.zf, align 8, !tbaa !70
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit.i.i.i.i: ; preds = %bb.dn, %bb.dm
  %i.aar = add i64 %.130.i.i.i.i, 1               ; 3 uses
  %lftr.wideiv = trunc i64 %i.aar to i32
  %exitcond = icmp eq i32 %i.zr, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !933

._crit_edge34.i.i.i.i:                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit.i.i.i.i295, %_ZN4mlir3omp9OrderedOp21getDoacrossDependVarsEv.exit.i.i.i.i
  %i.aas = load ptr, ptr %430, align 8, !tbaa !68 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %430, i64 16
  %i.aau = icmp eq ptr %i.aas, %i.aat
  br i1 %i.aau, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit23.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %._crit_edge34.i.i.i.i
  call void @free(ptr noundef %i.aas) #31
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit23.i.i.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit23.i.i.i.i: ; preds = %bb.do, %._crit_edge34.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %430) #31
  br label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK3$_8clENS1_3omp9OrderedOpE.exit.i.i"

"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK3$_8clENS1_3omp9OrderedOpE.exit.i.i": ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit23.i.i.i.i, %bb.dd
  %.sroa.018.0.i.i.i.i278 = phi i8 [ 1, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit23.i.i.i.i ], [ 0, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %429) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %431)
  call void @llvm.lifetime.end.p0(ptr nonnull %434)
  call void @llvm.lifetime.end.p0(ptr nonnull %435)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE4$_47EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_8EERS7_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_7EERS7_OT_.exit"
  %i.aav = icmp ne ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_3omp8WsloopOpEvE2idE
  %.not.i.i298 = or i1 %.not.i14915771580, %i.aav
  br i1 %.not.i.i298, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_9EERS7_OT_.exit", label %bb.dp

bb.dp:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_8EERS7_OT_.exit"
  %i.aaw = call fastcc i8 @_ZL16convertOmpWsloopRN4mlir9OperationERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(592) %3)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE4$_47EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_9EERS7_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_8EERS7_OT_.exit"
  %i.aax = icmp ne ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_3omp6SimdOpEvE2idE
  %.not.i.i301 = or i1 %.not.i14915771580, %i.aax
  br i1 %.not.i.i301, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_10EERS7_OT_.exit", label %bb.dq

bb.dq:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_9EERS7_OT_.exit"
  %i.aay = call fastcc i8 @_ZL14convertOmpSimdRN4mlir9OperationERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(592) %3)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE4$_47EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_10EERS7_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE3$_9EERS7_OT_.exit"
  %i.aaz = icmp ne ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_3omp12AtomicReadOpEvE2idE
  %.not.i.i304 = or i1 %.not.i14915771580, %i.aaz
  br i1 %.not.i.i304, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_11EERS7_OT_.exit", label %bb.dr

bb.dr:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_10EERS7_OT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %424)
  call void @llvm.lifetime.start.p0(ptr nonnull %428)
  call void @llvm.lifetime.start.p0(ptr nonnull %423) #31
  store ptr %1, ptr %423, align 8
  %i.aba = call fastcc i8 @_ZL25checkImplementationStatusRN4mlir9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.abb = trunc nuw i8 %i.aba to i1
  br i1 %i.abb, label %bb.ds, label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_11clENS1_3omp12AtomicReadOpE.exit.i.i"

bb.ds:                                            ; preds = %bb.dr
  %i.abc = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation16getOpenMPBuilderEv(ptr noundef nonnull align 8 dereferenceable(592) %3) #31
  %i.abd = getelementptr inbounds nuw i8, ptr %3, i64 496
  %.val.i.i.i.i305 = load ptr, ptr %i.abd, align 8
  %i.abe = getelementptr inbounds nuw i8, ptr %3, i64 504
  %.val22.i.i.i.i = load i32, ptr %i.abe, align 8
  call fastcc void @_ZL21findAllocInsertPointsRN4llvm13IRBuilderBaseERN4mlir4LLVM17ModuleTranslationEPNS_15SmallVectorImplIPNS_10BasicBlockEEE(ptr dead_on_unwind noalias writable align 8 %424, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %.val.i.i.i.i305, i32 %.val22.i.i.i.i, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %425) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.abf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i307 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i308 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i307, align 8, !noalias !1419
  %.sroa.22.8.insert.ext.i.i.i.i.i.i309 = and i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i308, 65535
  %i.abh = load <2 x ptr>, ptr %i.abf, align 8, !noalias !1419
  store <2 x ptr> %i.abh, ptr %425, align 16, !alias.scope !1419
  %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i310 = getelementptr inbounds nuw i8, ptr %425, i64 16
  store i64 %.sroa.22.8.insert.ext.i.i.i.i.i.i309, ptr %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i310, align 16, !alias.scope !1419
  %i.abi = getelementptr inbounds nuw i8, ptr %425, i64 24
  %i.abj = call ptr @_ZNK4llvm13IRBuilderBase23getCurrentDebugLocationEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #31
  store ptr %i.abj, ptr %i.abi, align 8
  %i.abk = call i64 @_ZN4mlir3omp12AtomicReadOp14getMemoryOrderEv(ptr noundef nonnull align 8 dereferenceable(8) %423) #31 ; 2 uses
  %i.abl = and i64 %i.abk, 4294967296
  %.not.i.i.i.i.i311 = icmp eq i64 %i.abl, 0
  br i1 %.not.i.i.i.i.i311, label %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i, label %switch.lookup2734.a

switch.lookup2734.a:                              ; preds = %bb.ds
  %i.abm = and i64 %i.abk, 4294967295
  %switch.gep2735.a = getelementptr inbounds nuw i8, ptr @switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.661, i64 %i.abm
  %switch.load2736.a = load i8, ptr %switch.gep2735.a, align 1
  %switch.ext2737.a = zext i8 %switch.load2736.a to i32
  br label %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i

_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i: ; preds = %switch.lookup2734.a, %bb.ds
  %.0.i.i.i.i.i = phi i32 [ 2, %bb.ds ], [ %switch.ext2737.a, %switch.lookup2734.a ]
  %i.abn = load ptr, ptr %423, align 8, !tbaa !195
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 72
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !220 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i313 = load ptr, ptr %i.abq, align 8, !tbaa !222 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !115, !noalias !1420 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !223, !noalias !1420 ; 4 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %3, i64 252
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !114, !noalias !1420 ; 2 uses
  %i.abx = icmp eq i32 %i.abw, 0
  br i1 %i.abx, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit29.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i
  %i.aby = add i32 %i.abw, -1                     ; 4 uses
  %i.abz = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i313 to i64
  %i.aca = xor i64 %i.abz, -49064778989728563     ; 2 uses
  %i.acb = lshr i64 %i.aca, 30
  %i.acc = xor i64 %i.acb, %i.aca
  %i.acd = mul i64 %i.acc, -4658895280553007687   ; 2 uses
  %i.ace = lshr i64 %i.acd, 27
  %i.acf = xor i64 %i.ace, %i.acd
  %i.acg = mul i64 %i.acf, -7723592293110705685   ; 2 uses
  %i.ach = lshr i64 %i.acg, 31
  %i.aci = xor i64 %i.ach, %i.acg
  %i.acj = trunc i64 %i.aci to i32
  %i.ack = and i32 %i.aby, %i.acj                 ; 3 uses
  %i.acl = zext i32 %i.ack to i64                 ; 2 uses
  %i.acm = lshr i64 %i.acl, 5
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %i.acm
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !224
  %i.acp = and i32 %i.ack, 31
  %i.acq = lshr i32 %i.aco, %i.acp
  %i.acr = trunc i32 %i.acq to i1
  br i1 %i.acr, label %.lr.ph.i.i.i.i.i.i.i318, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread32.i.i.i.i, !prof !225

.lr.ph.i.i.i.i.i.i.i318:                          ; preds = %bb.dt, %bb.du
  %i.acs = phi i64 [ %i.acx, %bb.du ], [ %i.acl, %bb.dt ]
  %.01419.i.i.i.i.i.i.i319 = phi i32 [ %i.acw, %bb.du ], [ %i.ack, %bb.dt ]
  %i.act = getelementptr inbounds nuw [16 x i8], ptr %i.abs, i64 %i.acs ; 2 uses
  %.sroa.0.0.copyload.i.i.i23.i.i.i.i320 = load ptr, ptr %i.act, align 8, !tbaa !222
  %i.acu = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i313, %.sroa.0.0.copyload.i.i.i23.i.i.i.i320
  br i1 %i.acu, label %bb.dv, label %bb.du, !prof !91

bb.du:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i318
  %i.acv = add nuw i32 %.01419.i.i.i.i.i.i.i319, 1
  %i.acw = and i32 %i.acv, %i.aby                 ; 3 uses
  %i.acx = zext i32 %i.acw to i64                 ; 2 uses
  %i.acy = lshr i64 %i.acx, 5
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %i.acy
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !224
  %i.adb = and i32 %i.acw, 31
  %i.adc = lshr i32 %i.ada, %i.adb
  %i.add = trunc i32 %i.adc to i1
  br i1 %i.add, label %.lr.ph.i.i.i.i.i.i.i318, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread32.i.i.i.i, !prof !226

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i318
  %i.ade = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !198
  br label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread32.i.i.i.i

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread32.i.i.i.i: ; preds = %bb.du, %bb.dv, %bb.dt
  %i.adg = phi ptr [ null, %bb.dt ], [ %i.adf, %bb.dv ], [ null, %bb.du ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i2534.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abp, i64 56
  %.sroa.0.0.copyload.i.i.i.i2534.i.i.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i2534.in.i.i.i.i, align 8, !tbaa !222 ; 2 uses
  %i.adh = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i2534.i.i.i.i to i64
  %i.adi = xor i64 %i.adh, -49064778989728563     ; 2 uses
  %i.adj = lshr i64 %i.adi, 30
  %i.adk = xor i64 %i.adj, %i.adi
  %i.adl = mul i64 %i.adk, -4658895280553007687   ; 2 uses
  %i.adm = lshr i64 %i.adl, 27
  %i.adn = xor i64 %i.adm, %i.adl
  %i.ado = mul i64 %i.adn, -7723592293110705685   ; 2 uses
  %i.adp = lshr i64 %i.ado, 31
  %i.adq = xor i64 %i.adp, %i.ado
  %i.adr = trunc i64 %i.adq to i32
  %i.ads = and i32 %i.aby, %i.adr                 ; 3 uses
  %i.adt = zext i32 %i.ads to i64                 ; 2 uses
  %i.adu = lshr i64 %i.adt, 5
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %i.adu
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !224
  %i.adx = and i32 %i.ads, 31
  %i.ady = lshr i32 %i.adw, %i.adx
  %i.adz = trunc i32 %i.ady to i1
  br i1 %i.adz, label %.lr.ph.i.i.i26.i.i.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit29.i.i.i.i, !prof !225

.lr.ph.i.i.i26.i.i.i.i:                           ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread32.i.i.i.i, %bb.dw
  %i.aea = phi i64 [ %i.aef, %bb.dw ], [ %i.adt, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread32.i.i.i.i ]
  %.01419.i.i.i27.i.i.i.i = phi i32 [ %i.aee, %bb.dw ], [ %i.ads, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread32.i.i.i.i ]
  %i.aeb = getelementptr inbounds nuw [16 x i8], ptr %i.abs, i64 %i.aea ; 2 uses
  %.sroa.0.0.copyload.i.i.i28.i.i.i.i = load ptr, ptr %i.aeb, align 8, !tbaa !222
  %i.aec = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i2534.i.i.i.i, %.sroa.0.0.copyload.i.i.i28.i.i.i.i
  br i1 %i.aec, label %bb.dx, label %bb.dw, !prof !91

bb.dw:                                            ; preds = %.lr.ph.i.i.i26.i.i.i.i
  %i.aed = add nuw i32 %.01419.i.i.i27.i.i.i.i, 1
  %i.aee = and i32 %i.aed, %i.aby                 ; 3 uses
  %i.aef = zext i32 %i.aee to i64                 ; 2 uses
  %i.aeg = lshr i64 %i.aef, 5
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %i.aeg
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !224
  %i.aej = and i32 %i.aee, 31
  %i.aek = lshr i32 %i.aei, %i.aej
  %i.ael = trunc i32 %i.aek to i1
  br i1 %i.ael, label %.lr.ph.i.i.i26.i.i.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit29.i.i.i.i, !prof !226

bb.dx:                                            ; preds = %.lr.ph.i.i.i26.i.i.i.i
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !198
  br label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit29.i.i.i.i

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit29.i.i.i.i: ; preds = %bb.dw, %bb.dx, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread32.i.i.i.i, %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i
  %i.aeo = phi ptr [ %i.adg, %bb.dx ], [ null, %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i ], [ %i.adg, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread32.i.i.i.i ], [ %i.adg, %bb.dw ]
  %i.aep = phi ptr [ %i.aen, %bb.dx ], [ null, %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i ], [ null, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread32.i.i.i.i ], [ null, %bb.dw ]
  %i.aeq = call ptr @_ZN4mlir3omp12AtomicReadOp14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %423) #31
  %i.aer = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(592) %3, ptr %i.aeq) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %426) #31
  store ptr %i.aep, ptr %426, align 8, !tbaa !1422
  %i.aes = getelementptr inbounds nuw i8, ptr %426, i64 8
  store ptr %i.aer, ptr %i.aes, align 8, !tbaa !1423
  %i.aet = getelementptr inbounds nuw i8, ptr %426, i64 16
  store i8 0, ptr %i.aet, align 8, !tbaa !1424
  %i.aeu = getelementptr inbounds nuw i8, ptr %426, i64 17
  store i8 0, ptr %i.aeu, align 1, !tbaa !1425
  call void @llvm.lifetime.start.p0(ptr nonnull %427) #31
  store ptr %i.aeo, ptr %427, align 8, !tbaa !1422
  %i.aev = getelementptr inbounds nuw i8, ptr %427, i64 8
  store ptr %i.aer, ptr %i.aev, align 8, !tbaa !1423
  %i.aew = getelementptr inbounds nuw i8, ptr %427, i64 16
  store i8 0, ptr %i.aew, align 8, !tbaa !1424
  %i.aex = getelementptr inbounds nuw i8, ptr %427, i64 17
  store i8 0, ptr %i.aex, align 1, !tbaa !1425
  call void @_ZN4llvm15OpenMPIRBuilder16createAtomicReadERKNS0_19LocationDescriptionERNS0_13AtomicOpValueES5_NS_14AtomicOrderingENS_13IRBuilderBase11InsertPointE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %428, ptr noundef nonnull align 8 dereferenceable(1864) %i.abc, ptr noundef nonnull align 8 dereferenceable(32) %425, ptr noundef nonnull align 8 dereferenceable(18) %427, ptr noundef nonnull align 8 dereferenceable(18) %426, i32 noundef %.0.i.i.i.i.i, ptr noundef nonnull byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %424) #31
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %428, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %428, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8 ; 3 uses
  %.not.i30.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, null
  br i1 %.not.i30.i.i.i.i, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit29.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i314 = getelementptr inbounds nuw i8, ptr %428, i64 16
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i314, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.abf, align 8, !tbaa !187
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %i.abg, align 8
  %.sroa.45.0.extract.trunc.i.i.i.i.i.i315 = trunc i64 %.sroa.5.0.copyload.i.i.i.i to i16
  store i16 %.sroa.45.0.extract.trunc.i.i.i.i.i.i315, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i307, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i316 = icmp eq ptr %.sroa.4.0.copyload.i.i.i.i, %i.aey
  br i1 %.not.i.i.i.i.i.i316, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i317, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aez = getelementptr inbounds i8, ptr %.sroa.4.0.copyload.i.i.i.i, i64 -24
  %i.afa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aez) #31
  %i.afb = load i64, ptr %i.afa, align 8, !tbaa !188
  store i64 %i.afb, ptr %2, align 8, !tbaa !188
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i317

bb.ea:                                            ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit29.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.abf, i8 0, i64 18, i1 false)
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i317

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i317: ; preds = %bb.ea, %bb.dz, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %427) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %426) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %425) #31
  br label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_11clENS1_3omp12AtomicReadOpE.exit.i.i"

"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_11clENS1_3omp12AtomicReadOpE.exit.i.i": ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i317, %bb.dr
  %.sroa.021.0.i.i.i.i = phi i8 [ 1, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i317 ], [ 0, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %423) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %424)
  call void @llvm.lifetime.end.p0(ptr nonnull %428)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE4$_47EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_11EERS7_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_10EERS7_OT_.exit"
  %i.afc = icmp ne ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_3omp13AtomicWriteOpEvE2idE
  %.not.i.i323 = or i1 %.not.i14915771580, %i.afc
  br i1 %.not.i.i323, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_12EERS7_OT_.exit", label %bb.eb

bb.eb:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_11EERS7_OT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %419)
  call void @llvm.lifetime.start.p0(ptr nonnull %422)
  call void @llvm.lifetime.start.p0(ptr nonnull %418) #31
  store ptr %1, ptr %418, align 8
  %i.afd = call fastcc i8 @_ZL25checkImplementationStatusRN4mlir9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.afe = trunc nuw i8 %i.afd to i1
  br i1 %i.afe, label %bb.ec, label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_12clENS1_3omp13AtomicWriteOpE.exit.i.i"

bb.ec:                                            ; preds = %bb.eb
  %i.aff = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation16getOpenMPBuilderEv(ptr noundef nonnull align 8 dereferenceable(592) %3) #31
  %i.afg = getelementptr inbounds nuw i8, ptr %3, i64 496
  %.val.i.i.i.i324 = load ptr, ptr %i.afg, align 8
  %i.afh = getelementptr inbounds nuw i8, ptr %3, i64 504
  %.val20.i.i.i.i = load i32, ptr %i.afh, align 8
  call fastcc void @_ZL21findAllocInsertPointsRN4llvm13IRBuilderBaseERN4mlir4LLVM17ModuleTranslationEPNS_15SmallVectorImplIPNS_10BasicBlockEEE(ptr dead_on_unwind noalias writable align 8 %419, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %.val.i.i.i.i324, i32 %.val20.i.i.i.i, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %420) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  %i.afi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i326 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i327 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i326, align 8, !noalias !1426
  %.sroa.22.8.insert.ext.i.i.i.i.i.i328 = and i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i327, 65535
  %i.afk = load <2 x ptr>, ptr %i.afi, align 8, !noalias !1426
  store <2 x ptr> %i.afk, ptr %420, align 16, !alias.scope !1426
  %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i329 = getelementptr inbounds nuw i8, ptr %420, i64 16
  store i64 %.sroa.22.8.insert.ext.i.i.i.i.i.i328, ptr %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i329, align 16, !alias.scope !1426
  %i.afl = getelementptr inbounds nuw i8, ptr %420, i64 24
  %i.afm = call ptr @_ZNK4llvm13IRBuilderBase23getCurrentDebugLocationEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #31
  store ptr %i.afm, ptr %i.afl, align 8
  %i.afn = call i64 @_ZN4mlir3omp13AtomicWriteOp14getMemoryOrderEv(ptr noundef nonnull align 8 dereferenceable(8) %418) #31 ; 2 uses
  %i.afo = and i64 %i.afn, 4294967296
  %.not.i.i.i.i.i330 = icmp eq i64 %i.afo, 0
  br i1 %.not.i.i.i.i.i330, label %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i332, label %switch.lookup2738.a

switch.lookup2738.a:                              ; preds = %bb.ec
  %i.afp = and i64 %i.afn, 4294967295
  %switch.gep2739.a = getelementptr inbounds nuw i8, ptr @switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.661, i64 %i.afp
  %switch.load2740.a = load i8, ptr %switch.gep2739.a, align 1
  %switch.ext2741.a = zext i8 %switch.load2740.a to i32
  br label %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i332

_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i332: ; preds = %switch.lookup2738.a, %bb.ec
  %.0.i.i.i.i.i333 = phi i32 [ 2, %bb.ec ], [ %switch.ext2741.a, %switch.lookup2738.a ]
  %i.afq = load ptr, ptr %418, align 8, !tbaa !195
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 72
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !220 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i335 = load ptr, ptr %i.aft, align 8, !tbaa !222 ; 3 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !115, !noalias !1427 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !223, !noalias !1427 ; 4 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %3, i64 252
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !114, !noalias !1427 ; 2 uses
  %i.aga = icmp eq i32 %i.afz, 0
  br i1 %i.aga, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit27.i.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i332
  %i.agb = add i32 %i.afz, -1                     ; 4 uses
  %i.agc = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i335 to i64
  %i.agd = xor i64 %i.agc, -49064778989728563     ; 2 uses
  %i.age = lshr i64 %i.agd, 30
  %i.agf = xor i64 %i.age, %i.agd
  %i.agg = mul i64 %i.agf, -4658895280553007687   ; 2 uses
  %i.agh = lshr i64 %i.agg, 27
  %i.agi = xor i64 %i.agh, %i.agg
  %i.agj = mul i64 %i.agi, -7723592293110705685   ; 2 uses
  %i.agk = lshr i64 %i.agj, 31
  %i.agl = xor i64 %i.agk, %i.agj
  %i.agm = trunc i64 %i.agl to i32
  %i.agn = and i32 %i.agb, %i.agm                 ; 3 uses
  %i.ago = zext i32 %i.agn to i64                 ; 2 uses
  %i.agp = lshr i64 %i.ago, 5
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.agp
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !224
  %i.ags = and i32 %i.agn, 31
  %i.agt = lshr i32 %i.agr, %i.ags
  %i.agu = trunc i32 %i.agt to i1
  br i1 %i.agu, label %.lr.ph.i.i.i.i.i.i.i344, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread33.i.i.i.i, !prof !225

.lr.ph.i.i.i.i.i.i.i344:                          ; preds = %bb.ed, %bb.ee
  %i.agv = phi i64 [ %i.aha, %bb.ee ], [ %i.ago, %bb.ed ]
  %.01419.i.i.i.i.i.i.i345 = phi i32 [ %i.agz, %bb.ee ], [ %i.agn, %bb.ed ]
  %i.agw = getelementptr inbounds nuw [16 x i8], ptr %i.afv, i64 %i.agv ; 2 uses
  %.sroa.0.0.copyload.i.i.i21.i.i.i.i = load ptr, ptr %i.agw, align 8, !tbaa !222
  %i.agx = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i335, %.sroa.0.0.copyload.i.i.i21.i.i.i.i
  br i1 %i.agx, label %bb.ef, label %bb.ee, !prof !91

bb.ee:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i344
  %i.agy = add nuw i32 %.01419.i.i.i.i.i.i.i345, 1
  %i.agz = and i32 %i.agy, %i.agb                 ; 3 uses
  %i.aha = zext i32 %i.agz to i64                 ; 2 uses
  %i.ahb = lshr i64 %i.aha, 5
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.ahb
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !224
  %i.ahe = and i32 %i.agz, 31
  %i.ahf = lshr i32 %i.ahd, %i.ahe
  %i.ahg = trunc i32 %i.ahf to i1
  br i1 %i.ahg, label %.lr.ph.i.i.i.i.i.i.i344, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread33.i.i.i.i, !prof !226

bb.ef:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i344
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !198
  br label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread33.i.i.i.i

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread33.i.i.i.i: ; preds = %bb.ee, %bb.ef, %bb.ed
  %i.ahj = phi ptr [ null, %bb.ed ], [ %i.ahi, %bb.ef ], [ null, %bb.ee ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i2335.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.afs, i64 24
  %.sroa.0.0.copyload.i.i.i.i2335.i.i.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i2335.in.i.i.i.i, align 8, !tbaa !222 ; 2 uses
  %i.ahk = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i2335.i.i.i.i to i64
  %i.ahl = xor i64 %i.ahk, -49064778989728563     ; 2 uses
  %i.ahm = lshr i64 %i.ahl, 30
  %i.ahn = xor i64 %i.ahm, %i.ahl
  %i.aho = mul i64 %i.ahn, -4658895280553007687   ; 2 uses
  %i.ahp = lshr i64 %i.aho, 27
  %i.ahq = xor i64 %i.ahp, %i.aho
  %i.ahr = mul i64 %i.ahq, -7723592293110705685   ; 2 uses
  %i.ahs = lshr i64 %i.ahr, 31
  %i.aht = xor i64 %i.ahs, %i.ahr
  %i.ahu = trunc i64 %i.aht to i32
  %i.ahv = and i32 %i.agb, %i.ahu                 ; 3 uses
  %i.ahw = zext i32 %i.ahv to i64                 ; 2 uses
  %i.ahx = lshr i64 %i.ahw, 5
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.ahx
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !224
  %i.aia = and i32 %i.ahv, 31
  %i.aib = lshr i32 %i.ahz, %i.aia
  %i.aic = trunc i32 %i.aib to i1
  br i1 %i.aic, label %.lr.ph.i.i.i24.i.i.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit27.i.i.i.i, !prof !225

.lr.ph.i.i.i24.i.i.i.i:                           ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread33.i.i.i.i, %bb.eg
  %i.aid = phi i64 [ %i.aii, %bb.eg ], [ %i.ahw, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread33.i.i.i.i ]
  %.01419.i.i.i25.i.i.i.i = phi i32 [ %i.aih, %bb.eg ], [ %i.ahv, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread33.i.i.i.i ]
  %i.aie = getelementptr inbounds nuw [16 x i8], ptr %i.afv, i64 %i.aid ; 2 uses
  %.sroa.0.0.copyload.i.i.i26.i.i.i.i = load ptr, ptr %i.aie, align 8, !tbaa !222
  %i.aif = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i2335.i.i.i.i, %.sroa.0.0.copyload.i.i.i26.i.i.i.i
  br i1 %i.aif, label %bb.eh, label %bb.eg, !prof !91

bb.eg:                                            ; preds = %.lr.ph.i.i.i24.i.i.i.i
  %i.aig = add nuw i32 %.01419.i.i.i25.i.i.i.i, 1
  %i.aih = and i32 %i.aig, %i.agb                 ; 3 uses
  %i.aii = zext i32 %i.aih to i64                 ; 2 uses
  %i.aij = lshr i64 %i.aii, 5
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.aij
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !224
  %i.aim = and i32 %i.aih, 31
  %i.ain = lshr i32 %i.ail, %i.aim
  %i.aio = trunc i32 %i.ain to i1
  br i1 %i.aio, label %.lr.ph.i.i.i24.i.i.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit27.i.i.i.i, !prof !226

bb.eh:                                            ; preds = %.lr.ph.i.i.i24.i.i.i.i
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !198
  br label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit27.i.i.i.i

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit27.i.i.i.i: ; preds = %bb.eg, %bb.eh, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread33.i.i.i.i, %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i332
  %i.air = phi ptr [ %i.ahj, %bb.eh ], [ null, %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i332 ], [ %i.ahj, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread33.i.i.i.i ], [ %i.ahj, %bb.eg ]
  %i.ais = phi ptr [ %i.aiq, %bb.eh ], [ null, %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i332 ], [ null, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread33.i.i.i.i ], [ null, %bb.eg ]
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i335, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ait, align 8
  %i.aiu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.aiv = inttoptr i64 %i.aiu to ptr
  %i.aiw = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(592) %3, ptr %i.aiv) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %421) #31
  store ptr %i.ais, ptr %421, align 8, !tbaa !1422
  %i.aix = getelementptr inbounds nuw i8, ptr %421, i64 8
  store ptr %i.aiw, ptr %i.aix, align 8, !tbaa !1423
  %i.aiy = getelementptr inbounds nuw i8, ptr %421, i64 16
  store i8 0, ptr %i.aiy, align 8, !tbaa !1424
  %i.aiz = getelementptr inbounds nuw i8, ptr %421, i64 17
  store i8 0, ptr %i.aiz, align 1, !tbaa !1425
  call void @_ZN4llvm15OpenMPIRBuilder17createAtomicWriteERKNS0_19LocationDescriptionERNS0_13AtomicOpValueEPNS_5ValueENS_14AtomicOrderingENS_13IRBuilderBase11InsertPointE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %422, ptr noundef nonnull align 8 dereferenceable(1864) %i.aff, ptr noundef nonnull align 8 dereferenceable(32) %420, ptr noundef nonnull align 8 dereferenceable(18) %421, ptr noundef %i.air, i32 noundef %.0.i.i.i.i.i333, ptr noundef nonnull byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %419) #31
  %.sroa.031.0.copyload.i.i.i.i = load ptr, ptr %422, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i336 = getelementptr inbounds nuw i8, ptr %422, i64 8
  %.sroa.4.0.copyload.i.i.i.i337 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i336, align 8 ; 3 uses
  %.not.i30.i.i.i.i338 = icmp eq ptr %.sroa.031.0.copyload.i.i.i.i, null
  br i1 %.not.i30.i.i.i.i338, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit27.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i339 = getelementptr inbounds nuw i8, ptr %422, i64 16
  %.sroa.5.0.copyload.i.i.i.i340 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i339, align 8
  store ptr %.sroa.031.0.copyload.i.i.i.i, ptr %i.afi, align 8, !tbaa !187
  store ptr %.sroa.4.0.copyload.i.i.i.i337, ptr %i.afj, align 8
  %.sroa.45.0.extract.trunc.i.i.i.i.i.i341 = trunc i64 %.sroa.5.0.copyload.i.i.i.i340 to i16
  store i16 %.sroa.45.0.extract.trunc.i.i.i.i.i.i341, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i326, align 8
  %i.aja = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i342 = icmp eq ptr %.sroa.4.0.copyload.i.i.i.i337, %i.aja
  br i1 %.not.i.i.i.i.i.i342, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i343, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ajb = getelementptr inbounds i8, ptr %.sroa.4.0.copyload.i.i.i.i337, i64 -24
  %i.ajc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ajb) #31
  %i.ajd = load i64, ptr %i.ajc, align 8, !tbaa !188
  store i64 %i.ajd, ptr %2, align 8, !tbaa !188
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i343

bb.ek:                                            ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit27.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.afi, i8 0, i64 18, i1 false)
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i343

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i343: ; preds = %bb.ek, %bb.ej, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %421) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %420) #31
  br label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_12clENS1_3omp13AtomicWriteOpE.exit.i.i"

"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_12clENS1_3omp13AtomicWriteOpE.exit.i.i": ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i343, %bb.eb
  %.sroa.019.0.i.i.i.i = phi i8 [ 1, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i343 ], [ 0, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %418) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %419)
  call void @llvm.lifetime.end.p0(ptr nonnull %422)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE4$_47EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_12EERS7_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_11EERS7_OT_.exit"
  %i.aje = icmp ne ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_3omp14AtomicUpdateOpEvE2idE
  %.not.i.i348 = or i1 %.not.i14915771580, %i.aje
  br i1 %.not.i.i348, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_13EERS7_OT_.exit", label %bb.el

bb.el:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_12EERS7_OT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %417)
  store ptr %1, ptr %417, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %415)
  %i.ajf = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation16getOpenMPBuilderEv(ptr noundef nonnull align 8 dereferenceable(592) %3) #31
  %i.ajg = call fastcc i8 @_ZL25checkImplementationStatusRN4mlir9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.ajh = trunc nuw i8 %i.ajg to i1
  br i1 %i.ajh, label %bb.em, label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_13clENS1_3omp14AtomicUpdateOpE.exit.i.i"

bb.em:                                            ; preds = %bb.el
  %i.aji = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ajj = load i32, ptr %i.aji, align 4          ; 5 uses
  %i.ajk = and i32 %i.ajj, 8388607
  %i.ajl = icmp ne i32 %i.ajk, 0
  call void @llvm.assume(i1 %i.ajl)
  %i.ajm = lshr i32 %i.ajj, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ajm, 1
  %i.ajn = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ajo = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ajn
  %i.ajp = lshr i32 %i.ajj, 21
end_hunk_1
begin_hunk_2_@_ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE:bb.a
"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_4EERS8_OT_.exit.i.i.i.i.i": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_3EERS8_OT_.exit.i.i.i.i.i"
  %.not71.i.i.i.i.i = icmp eq ptr %i.amz, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM6UMaxOpEvE2idE
  br i1 %.not71.i.i.i.i.i, label %_ZL20convertBinOpToAtomicRN4mlir9OperationE.exit.i.i.i.i, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_5EERS8_OT_.exit.i.i.i.i.i"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_5EERS8_OT_.exit.i.i.i.i.i": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_4EERS8_OT_.exit.i.i.i.i.i"
  %.not72.i.i.i.i.i = icmp eq ptr %i.amz, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM6UMinOpEvE2idE
  br i1 %.not72.i.i.i.i.i, label %_ZL20convertBinOpToAtomicRN4mlir9OperationE.exit.i.i.i.i, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_6EERS8_OT_.exit.i.i.i.i.i"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_6EERS8_OT_.exit.i.i.i.i.i": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_5EERS8_OT_.exit.i.i.i.i.i"
  %.not73.i.i.i.i.i = icmp eq ptr %i.amz, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM6FAddOpEvE2idE
  br i1 %.not73.i.i.i.i.i, label %_ZL20convertBinOpToAtomicRN4mlir9OperationE.exit.i.i.i.i, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_7EERS8_OT_.exit.i.i.i.i.i"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_7EERS8_OT_.exit.i.i.i.i.i": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_6EERS8_OT_.exit.i.i.i.i.i"
  %.not74.i.i.i.i.i = icmp eq ptr %i.amz, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM6FSubOpEvE2idE
  %i.ana = select i1 %.not74.i.i.i.i.i, i32 12, i32 23
  br label %_ZL20convertBinOpToAtomicRN4mlir9OperationE.exit.i.i.i.i

_ZL20convertBinOpToAtomicRN4mlir9OperationE.exit.i.i.i.i: ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_7EERS8_OT_.exit.i.i.i.i.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_6EERS8_OT_.exit.i.i.i.i.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_5EERS8_OT_.exit.i.i.i.i.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_4EERS8_OT_.exit.i.i.i.i.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_3EERS8_OT_.exit.i.i.i.i.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_2EERS8_OT_.exit.i.i.i.i.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_1EERS8_OT_.exit.i.i.i.i.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_0EERS8_OT_.exit.i.i.i.i.i", %bb.fa
  %.sroa.22.8.i.i.i.i.i = phi i32 [ 11, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_6EERS8_OT_.exit.i.i.i.i.i" ], [ %i.ana, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_7EERS8_OT_.exit.i.i.i.i.i" ], [ 10, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_5EERS8_OT_.exit.i.i.i.i.i" ], [ 9, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_4EERS8_OT_.exit.i.i.i.i.i" ], [ 6, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_3EERS8_OT_.exit.i.i.i.i.i" ], [ 5, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_2EERS8_OT_.exit.i.i.i.i.i" ], [ 3, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_1EERS8_OT_.exit.i.i.i.i.i" ], [ 2, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13AtomicRMWInst5BinOpEEES5_E4CaseIZL20convertBinOpToAtomicRS4_E3$_0EERS8_OT_.exit.i.i.i.i.i" ], [ 1, %bb.fa ] ; 4 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.akg, i64 72
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !220 ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.and, align 8, !tbaa !222 ; 2 uses
  %i.ane = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i370 ; 5 uses
  br i1 %i.ane, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %_ZL20convertBinOpToAtomicRN4mlir9OperationE.exit.i.i.i.i
  %i.anf = getelementptr inbounds nuw i8, ptr %i.anc, i64 56
  %.sroa.0.0.copyload.i.i56.i.i.i.i = load ptr, ptr %i.anf, align 8, !tbaa !222
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %_ZL20convertBinOpToAtomicRN4mlir9OperationE.exit.i.i.i.i
  %.sroa.07.0.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i56.i.i.i.i, %bb.fb ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %_ZL20convertBinOpToAtomicRN4mlir9OperationE.exit.i.i.i.i ] ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !115, !noalias !1428
  %i.ani = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !223, !noalias !1428 ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %3, i64 252
  %i.anl = load i32, ptr %i.ank, align 4, !tbaa !114, !noalias !1428 ; 2 uses
  %i.anm = icmp eq i32 %i.anl, 0
  br i1 %i.anm, label %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.thread.i.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ann = add i32 %i.anl, -1                     ; 2 uses
  %i.ano = ptrtoint ptr %.sroa.07.0.i.i.i.i to i64
  %i.anp = xor i64 %i.ano, -49064778989728563     ; 2 uses
  %i.anq = lshr i64 %i.anp, 30
  %i.anr = xor i64 %i.anq, %i.anp
  %i.ans = mul i64 %i.anr, -4658895280553007687   ; 2 uses
  %i.ant = lshr i64 %i.ans, 27
  %i.anu = xor i64 %i.ant, %i.ans
  %i.anv = mul i64 %i.anu, -7723592293110705685   ; 2 uses
  %i.anw = lshr i64 %i.anv, 31
  %i.anx = xor i64 %i.anw, %i.anv
  %i.any = trunc i64 %i.anx to i32
  %i.anz = and i32 %i.ann, %i.any                 ; 3 uses
  %i.aoa = zext i32 %i.anz to i64                 ; 2 uses
  %i.aob = lshr i64 %i.aoa, 5
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %i.anj, i64 %i.aob
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !224
  %i.aoe = and i32 %i.anz, 31
  %i.aof = lshr i32 %i.aod, %i.aoe
  %i.aog = trunc i32 %i.aof to i1
  br i1 %i.aog, label %.lr.ph.i.i.i.i.i.i.i374, label %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.thread.i.i.i.i, !prof !225

.lr.ph.i.i.i.i.i.i.i374:                          ; preds = %bb.fd, %bb.fe
  %i.aoh = phi i64 [ %i.aom, %bb.fe ], [ %i.aoa, %bb.fd ]
  %.01419.i.i.i.i.i.i.i375 = phi i32 [ %i.aol, %bb.fe ], [ %i.anz, %bb.fd ]
  %i.aoi = getelementptr inbounds nuw [16 x i8], ptr %i.anh, i64 %i.aoh ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i376 = load ptr, ptr %i.aoi, align 8, !tbaa !222
  %i.aoj = icmp eq ptr %.sroa.07.0.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i376
  br i1 %i.aoj, label %.split.i.i.i.i, label %bb.fe, !prof !91

bb.fe:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i374
  %i.aok = add nuw i32 %.01419.i.i.i.i.i.i.i375, 1
  %i.aol = and i32 %i.aok, %i.ann                 ; 3 uses
  %i.aom = zext i32 %i.aol to i64                 ; 2 uses
  %i.aon = lshr i64 %i.aom, 5
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.anj, i64 %i.aon
  %i.aop = load i32, ptr %i.aoo, align 4, !tbaa !224
  %i.aoq = and i32 %i.aol, 31
  %i.aor = lshr i32 %i.aop, %i.aoq
  %i.aos = trunc i32 %i.aor to i1
  br i1 %i.aos, label %.lr.ph.i.i.i.i.i.i.i374, label %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.thread.i.i.i.i, !prof !226

.split.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i374
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !198
  br label %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.thread.i.i.i.i

_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.thread.i.i.i.i: ; preds = %bb.fe, %.split.i.i.i.i, %bb.fd, %bb.fc, %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.i.i.i.i, %bb.em
  %i.aov = phi i32 [ %i.ala, %bb.fd ], [ %i.aju, %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.i.i.i.i ], [ %i.ala, %.split.i.i.i.i ], [ %i.aju, %bb.em ], [ %i.ala, %bb.fc ], [ %i.ala, %bb.fe ]
  %i.aow = phi i32 [ %i.akp, %bb.fd ], [ %i.ajj, %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.i.i.i.i ], [ %i.akp, %.split.i.i.i.i ], [ %i.ajj, %bb.em ], [ %i.akp, %bb.fc ], [ %i.akp, %bb.fe ] ; 3 uses
  %.148.i.i.i.i = phi ptr [ null, %bb.fd ], [ null, %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.i.i.i.i ], [ %i.aou, %.split.i.i.i.i ], [ null, %bb.em ], [ null, %bb.fc ], [ null, %bb.fe ]
  %.146.i.i.i.i = phi i32 [ %.sroa.22.8.i.i.i.i.i, %bb.fd ], [ 23, %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.i.i.i.i ], [ %.sroa.22.8.i.i.i.i.i, %.split.i.i.i.i ], [ 23, %bb.em ], [ %.sroa.22.8.i.i.i.i.i, %bb.fc ], [ %.sroa.22.8.i.i.i.i.i, %bb.fe ]
  %.1.i.i.i.i = phi i1 [ %i.ane, %bb.fd ], [ false, %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.i.i.i.i ], [ %i.ane, %.split.i.i.i.i ], [ false, %bb.em ], [ %i.ane, %bb.fc ], [ %i.ane, %bb.fe ]
  %i.aox = and i32 %i.aow, 8388608
  %.not.i.i.i.i.i.i.i.i.i350 = icmp ne i32 %i.aox, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i350)
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !220
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i351 = load ptr, ptr %i.apa, align 8, !tbaa !222 ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.apc = load ptr, ptr %i.apb, align 8, !tbaa !115, !noalias !1429
  %i.apd = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !223, !noalias !1429 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %3, i64 252
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !114, !noalias !1429 ; 2 uses
  %i.aph = icmp eq i32 %i.apg, 0
  br i1 %i.aph, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit61.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.thread.i.i.i.i
  %i.api = add i32 %i.apg, -1                     ; 2 uses
  %i.apj = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i351 to i64
  %i.apk = xor i64 %i.apj, -49064778989728563     ; 2 uses
  %i.apl = lshr i64 %i.apk, 30
  %i.apm = xor i64 %i.apl, %i.apk
  %i.apn = mul i64 %i.apm, -4658895280553007687   ; 2 uses
  %i.apo = lshr i64 %i.apn, 27
  %i.app = xor i64 %i.apo, %i.apn
  %i.apq = mul i64 %i.app, -7723592293110705685   ; 2 uses
  %i.apr = lshr i64 %i.apq, 31
  %i.aps = xor i64 %i.apr, %i.apq
  %i.apt = trunc i64 %i.aps to i32
  %i.apu = and i32 %i.api, %i.apt                 ; 3 uses
  %i.apv = zext i32 %i.apu to i64                 ; 2 uses
  %i.apw = lshr i64 %i.apv, 5
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %i.ape, i64 %i.apw
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !224
  %i.apz = and i32 %i.apu, 31
  %i.aqa = lshr i32 %i.apy, %i.apz
  %i.aqb = trunc i32 %i.aqa to i1
  br i1 %i.aqb, label %.lr.ph.i.i.i58.i.i.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit61.i.i.i.i, !prof !225

.lr.ph.i.i.i58.i.i.i.i:                           ; preds = %bb.ff, %bb.fg
  %i.aqc = phi i64 [ %i.aqh, %bb.fg ], [ %i.apv, %bb.ff ]
  %.01419.i.i.i59.i.i.i.i = phi i32 [ %i.aqg, %bb.fg ], [ %i.apu, %bb.ff ]
  %i.aqd = getelementptr inbounds nuw [16 x i8], ptr %i.apc, i64 %i.aqc ; 2 uses
  %.sroa.0.0.copyload.i.i.i60.i.i.i.i = load ptr, ptr %i.aqd, align 8, !tbaa !222
  %i.aqe = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i351, %.sroa.0.0.copyload.i.i.i60.i.i.i.i
  br i1 %i.aqe, label %bb.fh, label %bb.fg, !prof !91

bb.fg:                                            ; preds = %.lr.ph.i.i.i58.i.i.i.i
  %i.aqf = add nuw i32 %.01419.i.i.i59.i.i.i.i, 1
  %i.aqg = and i32 %i.aqf, %i.api                 ; 3 uses
  %i.aqh = zext i32 %i.aqg to i64                 ; 2 uses
  %i.aqi = lshr i64 %i.aqh, 5
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %i.ape, i64 %i.aqi
  %i.aqk = load i32, ptr %i.aqj, align 4, !tbaa !224
  %i.aql = and i32 %i.aqg, 31
  %i.aqm = lshr i32 %i.aqk, %i.aql
  %i.aqn = trunc i32 %i.aqm to i1
  br i1 %i.aqn, label %.lr.ph.i.i.i58.i.i.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit61.i.i.i.i, !prof !226

bb.fh:                                            ; preds = %.lr.ph.i.i.i58.i.i.i.i
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !198
  br label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit61.i.i.i.i

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit61.i.i.i.i: ; preds = %bb.fg, %bb.fh, %bb.ff, %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.thread.i.i.i.i
  %i.aqq = phi ptr [ %i.aqp, %bb.fh ], [ null, %_ZNK4llvm12simple_ilistIN4mlir9OperationEJEE4sizeEv.exit.thread.i.i.i.i ], [ null, %bb.ff ], [ null, %bb.fg ]
  %i.aqr = and i32 %i.aow, 8388607
  %i.aqs = icmp ne i32 %i.aqr, 0
  call void @llvm.assume(i1 %i.aqs)
  %i.aqt = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aqu = lshr i32 %i.aow, 21
  %i.aqv = and i32 %i.aqu, 2040
  %i.aqw = zext nneg i32 %i.aqv to i64
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %i.aqw
  %i.aqy = zext i32 %i.aov to i64
  %i.aqz = getelementptr inbounds nuw [32 x i8], ptr %i.aqx, i64 %i.aqy ; 3 uses
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !345
  %i.arb = icmp ne ptr %i.aqz, %i.ara
  call void @llvm.assume(i1 %i.arb)
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqz, i64 8
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !343
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 48
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !348
  %.sroa.0.0.copyload.i63.i.i.i.i = load ptr, ptr %i.arf, align 8
  %i.arg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i63.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i352 = load i64, ptr %i.arg, align 8
  %i.arh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i352, -8
  %i.ari = inttoptr i64 %i.arh to ptr
  %i.arj = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(592) %3, ptr %i.ari) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %411) #31
  store ptr %i.aqq, ptr %411, align 8, !tbaa !1422
  %i.ark = getelementptr inbounds nuw i8, ptr %411, i64 8
  store ptr %i.arj, ptr %i.ark, align 8, !tbaa !1423
  %i.arl = getelementptr inbounds nuw i8, ptr %411, i64 16
  store i8 0, ptr %i.arl, align 8, !tbaa !1424
  %i.arm = getelementptr inbounds nuw i8, ptr %411, i64 17
  store i8 0, ptr %i.arm, align 1, !tbaa !1425
  %i.arn = call i64 @_ZN4mlir3omp14AtomicUpdateOp14getMemoryOrderEv(ptr noundef nonnull align 8 dereferenceable(8) %417) #31 ; 2 uses
  %i.aro = and i64 %i.arn, 4294967296
  %.not.i64.i.i.i.i = icmp eq i64 %i.aro, 0
  br i1 %.not.i64.i.i.i.i, label %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i354, label %switch.lookup2742.a

switch.lookup2742.a:                              ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit61.i.i.i.i
  %i.arp = and i64 %i.arn, 4294967295
  %switch.gep2743.a = getelementptr inbounds nuw i8, ptr @switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.661, i64 %i.arp
  %switch.load2744.a = load i8, ptr %switch.gep2743.a, align 1
  %switch.ext2745.a = zext i8 %switch.load2744.a to i32
  br label %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i354

_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i354: ; preds = %switch.lookup2742.a, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit61.i.i.i.i
  %.0.i.i.i.i.i355 = phi i32 [ 2, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit61.i.i.i.i ], [ %switch.ext2745.a, %switch.lookup2742.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %412) #31
  store ptr %417, ptr %412, align 8, !tbaa !1430
  %i.arq = getelementptr inbounds nuw i8, ptr %412, i64 8
  store ptr %3, ptr %i.arq, align 8, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #31
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %417, align 8
  call fastcc void @_ZL25extractAtomicControlFlagsN4mlir3omp14AtomicUpdateOpERbS2_S2_(ptr %.sroa.01.0.copyload.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.x)
  %i.arr = getelementptr inbounds nuw i8, ptr %3, i64 496
  %.val.i.i.i.i356 = load ptr, ptr %i.arr, align 8
  %i.ars = getelementptr inbounds nuw i8, ptr %3, i64 504
  %.val49.i.i.i.i = load i32, ptr %i.ars, align 8
  call fastcc void @_ZL21findAllocInsertPointsRN4llvm13IRBuilderBaseERN4mlir4LLVM17ModuleTranslationEPNS_15SmallVectorImplIPNS_10BasicBlockEEE(ptr dead_on_unwind noalias writable align 8 %415, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %.val.i.i.i.i356, i32 %.val49.i.i.i.i, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %413) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  %i.art = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i357 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i358 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i357, align 8, !noalias !1431
  %.sroa.22.8.insert.ext.i.i.i.i.i.i359 = and i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i358, 65535
  %i.arv = load <2 x ptr>, ptr %i.art, align 8, !noalias !1431
  store <2 x ptr> %i.arv, ptr %413, align 16, !alias.scope !1431
  %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i360 = getelementptr inbounds nuw i8, ptr %413, i64 16
  store i64 %.sroa.22.8.insert.ext.i.i.i.i.i.i359, ptr %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i360, align 16, !alias.scope !1431
  %i.arw = getelementptr inbounds nuw i8, ptr %413, i64 24
  %i.arx = call ptr @_ZNK4llvm13IRBuilderBase23getCurrentDebugLocationEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #31
  store ptr %i.arx, ptr %i.arw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %414) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %416) #31
  store ptr @"_ZN4llvm12function_refIFNS_8ExpectedIPNS_5ValueEEES3_RNS_9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEEE11callback_fnIZL22convertOmpAtomicUpdateRN4mlir3omp14AtomicUpdateOpERNS_13IRBuilderBaseERNSD_4LLVM17ModuleTranslationEE3$_0EES4_lS3_S9_", ptr %416, align 8, !tbaa !1433
  %i.ary = getelementptr inbounds nuw i8, ptr %416, i64 8
  %i.arz = ptrtoint ptr %412 to i64
  store i64 %i.arz, ptr %i.ary, align 8, !tbaa !1434
  %i.asa = load i8, ptr %i.v, align 1, !tbaa !117, !range !118, !noundef !119
  %i.asb = trunc nuw i8 %i.asa to i1
  %i.asc = load i8, ptr %i.w, align 1, !tbaa !117, !range !118, !noundef !119
  %i.asd = trunc nuw i8 %i.asc to i1
  %i.ase = load i8, ptr %i.x, align 1, !tbaa !117, !range !118, !noundef !119
  %i.asf = trunc nuw i8 %i.ase to i1
  call void @_ZN4llvm15OpenMPIRBuilder18createAtomicUpdateERKNS0_19LocationDescriptionENS_13IRBuilderBase11InsertPointERNS0_13AtomicOpValueEPNS_5ValueENS_14AtomicOrderingENS_13AtomicRMWInst5BinOpERKNS_12function_refIFNS_8ExpectedIS9_EES9_RNS_9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEEEEbbbb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %414, ptr noundef nonnull align 8 dereferenceable(1864) %i.ajf, ptr noundef nonnull align 8 dereferenceable(32) %413, ptr noundef nonnull byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %415, ptr noundef nonnull align 8 dereferenceable(18) %411, ptr noundef %.148.i.i.i.i, i32 noundef %.0.i.i.i.i.i355, i32 noundef %.146.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %416, i1 noundef zeroext %.1.i.i.i.i, i1 noundef zeroext %i.asb, i1 noundef zeroext %i.asd, i1 noundef zeroext %i.asf) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %416) #31
  %i.asg = load ptr, ptr %417, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %408)
  %i.ash = getelementptr inbounds nuw i8, ptr %414, i64 24 ; 2 uses
  %i.asi = load i8, ptr %i.ash, align 8
  %i.asj = trunc i8 %i.asi to i1
  br i1 %i.asj, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i368, label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i.i361

_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i.i361: ; preds = %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i354
  call void @llvm.lifetime.end.p0(ptr nonnull %408)
  br label %bb.fj

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i368: ; preds = %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i354
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %i.ask = load i64, ptr %414, align 8, !tbaa !171, !noalias !1435
  %i.asl = inttoptr i64 %i.ask to ptr
  store ptr null, ptr %414, align 8, !tbaa !171, !noalias !1435
  store ptr %i.asl, ptr %408, align 8, !tbaa !173, !alias.scope !1435
  %i.asm = call fastcc i8 @_ZL11handleErrorN4llvm5ErrorERN4mlir9OperationE(ptr nofree noundef align 8 dereferenceable(8) %408, ptr noundef nonnull align 8 dereferenceable(64) %i.asg)
  %i.asn = load ptr, ptr %408, align 8, !tbaa !173 ; 3 uses
  %i.aso = icmp eq ptr %i.asn, null
  br i1 %i.aso, label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i369, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i368
  %i.asp = load ptr, ptr %i.asn, align 8, !tbaa !72
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 8
  %i.asr = load ptr, ptr %i.asq, align 8
  call void %i.asr(ptr noundef nonnull align 8 dereferenceable(8) %i.asn) #31, !inline_history !960
  br label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i369

_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i369: ; preds = %bb.fi, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i368
  call void @llvm.lifetime.end.p0(ptr nonnull %408)
  %i.ass = trunc nuw i8 %i.asm to i1
  br i1 %i.ass, label %bb.fj, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i365

bb.fj:                                            ; preds = %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i369, %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i.i361
  %.sroa.079.0.copyload.i.i.i.i = load ptr, ptr %414, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %414, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8 ; 3 uses
  %.not.i66.i.i.i.i = icmp eq ptr %.sroa.079.0.copyload.i.i.i.i, null
  br i1 %.not.i66.i.i.i.i, label %bb.fm, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.sroa.3.0..sroa_idx.i.i.i.i362 = getelementptr inbounds nuw i8, ptr %414, i64 16
  %.sroa.3.0.copyload.i.i.i.i363 = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i362, align 8
  store ptr %.sroa.079.0.copyload.i.i.i.i, ptr %i.art, align 8, !tbaa !187
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.aru, align 8
  %.sroa.45.0.extract.trunc.i.i.i.i.i.i364 = trunc i64 %.sroa.3.0.copyload.i.i.i.i363 to i16
  store i16 %.sroa.45.0.extract.trunc.i.i.i.i.i.i364, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i357, align 8
  %i.ast = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload.i.i.i.i, i64 48
  %.not.i.i68.i.i.i.i = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i, %i.ast
  br i1 %.not.i.i68.i.i.i.i, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i365, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.asu = getelementptr inbounds i8, ptr %.sroa.2.0.copyload.i.i.i.i, i64 -24
  %i.asv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.asu) #31
  %i.asw = load i64, ptr %i.asv, align 8, !tbaa !188
  store i64 %i.asw, ptr %2, align 8, !tbaa !188
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i365

bb.fm:                                            ; preds = %bb.fj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.art, i8 0, i64 18, i1 false)
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i365

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i365: ; preds = %bb.fm, %bb.fl, %bb.fk, %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i369
  %.sroa.043.1.i.i.i.i = phi i8 [ 0, %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i369 ], [ 1, %bb.fk ], [ 1, %bb.fl ], [ 1, %bb.fm ]
  %i.asx = load i8, ptr %i.ash, align 8
  %i.asy = trunc i8 %i.asx to i1
  br i1 %i.asy, label %bb.fn, label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i366

bb.fn:                                            ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i365
  %i.asz = load ptr, ptr %414, align 8, !tbaa !171 ; 3 uses
  %.not.i.i69.i.i.i.i = icmp eq ptr %i.asz, null
  br i1 %.not.i.i69.i.i.i.i, label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i366, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i367

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i367: ; preds = %bb.fn
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !72
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 8
  %i.atc = load ptr, ptr %i.atb, align 8
  call void %i.atc(ptr noundef nonnull align 8 dereferenceable(8) %i.asz) #31, !inline_history !961
  br label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i366

_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i366: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i367, %bb.fn, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %414) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %413) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %412) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %411) #31
  br label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_13clENS1_3omp14AtomicUpdateOpE.exit.i.i"

"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_13clENS1_3omp14AtomicUpdateOpE.exit.i.i": ; preds = %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i366, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread86.i.i.i.i, %bb.el
  %.sroa.043.3.i.i.i.i = phi i8 [ 0, %bb.el ], [ %.sroa.043.1.i.i.i.i, %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i366 ], [ %i.amr, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.thread86.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %415)
  call void @llvm.lifetime.end.p0(ptr nonnull %417)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE4$_47EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_13EERS7_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_12EERS7_OT_.exit"
  %i.atd = icmp ne ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_3omp15AtomicCaptureOpEvE2idE
  %.not.i.i379 = or i1 %.not.i14915771580, %i.atd
  br i1 %.not.i.i379, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_14EERS7_OT_.exit", label %bb.fo

bb.fo:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_13EERS7_OT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %395)
  call void @llvm.lifetime.start.p0(ptr nonnull %406)
  store ptr %1, ptr %395, align 8
  %i.ate = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation16getOpenMPBuilderEv(ptr noundef nonnull align 8 dereferenceable(592) %3) #31
  %i.atf = call fastcc i8 @_ZL25checkImplementationStatusRN4mlir9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.atg = trunc nuw i8 %i.atf to i1
  br i1 %i.atg, label %bb.fp, label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_14clENS1_3omp15AtomicCaptureOpE.exit.i.i"

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %396) #31
  %i.ath = call ptr @_ZN4mlir3omp15AtomicCaptureOp17getAtomicUpdateOpEv(ptr noundef nonnull align 8 dereferenceable(8) %395) #31
  store ptr %i.ath, ptr %396, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %397) #31
  %i.ati = call ptr @_ZN4mlir3omp15AtomicCaptureOp16getAtomicWriteOpEv(ptr noundef nonnull align 8 dereferenceable(8) %395) #31 ; 3 uses
  store ptr %i.ati, ptr %397, align 8
  %.not.i.i.i.i380 = icmp eq ptr %i.ati, null     ; 2 uses
  br i1 %.not.i.i.i.i380, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 72
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !220
  br label %.thread.sink.split.i.i.i.i

bb.fr:                                            ; preds = %bb.fp
  %i.atl = load ptr, ptr %395, align 8, !tbaa !195 ; 3 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 44
  %i.atn = load i32, ptr %i.atm, align 4          ; 3 uses
  %i.ato = and i32 %i.atn, 8388607
  %i.atp = icmp ne i32 %i.ato, 0
  call void @llvm.assume(i1 %i.atp)
  %i.atq = lshr i32 %i.atn, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.atq, 1
  %i.atr = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ats = getelementptr inbounds nuw [16 x i8], ptr %i.atl, i64 %i.atr
  %i.att = lshr i32 %i.atn, 21
  %i.atu = and i32 %i.att, 2040
  %i.atv = zext nneg i32 %i.atu to i64
  %i.atw = getelementptr inbounds nuw i8, ptr %i.ats, i64 %i.atv
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atl, i64 40
  %i.aty = load i32, ptr %i.atx, align 8, !tbaa !342
  %i.atz = zext i32 %i.aty to i64
  %i.aua = getelementptr inbounds nuw [32 x i8], ptr %i.atw, i64 %i.atz
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 72
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !343 ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 32
  %i.aue = getelementptr inbounds nuw i8, ptr %i.auc, i64 40
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !343
  %i.aug = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.auf) #31
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 8
end_hunk_2
begin_hunk_3_@_ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE:bb.a
  %i.ayw = add i32 %i.ayu, -1                     ; 2 uses
  %i.ayx = ptrtoint ptr %.sroa.083.2.i.i.i.i to i64
  %i.ayy = xor i64 %i.ayx, -49064778989728563     ; 2 uses
  %i.ayz = lshr i64 %i.ayy, 30
  %i.aza = xor i64 %i.ayz, %i.ayy
  %i.azb = mul i64 %i.aza, -4658895280553007687   ; 2 uses
  %i.azc = lshr i64 %i.azb, 27
  %i.azd = xor i64 %i.azc, %i.azb
  %i.aze = mul i64 %i.azd, -7723592293110705685   ; 2 uses
  %i.azf = lshr i64 %i.aze, 31
  %i.azg = xor i64 %i.azf, %i.aze
  %i.azh = trunc i64 %i.azg to i32
  %i.azi = and i32 %i.ayw, %i.azh                 ; 3 uses
  %i.azj = zext i32 %i.azi to i64                 ; 2 uses
  %i.azk = lshr i64 %i.azj, 5
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.azk
  %i.azm = load i32, ptr %i.azl, align 4, !tbaa !224
  %i.azn = and i32 %i.azi, 31
  %i.azo = lshr i32 %i.azm, %i.azn
  %i.azp = trunc i32 %i.azo to i1
  br i1 %i.azp, label %.lr.ph.i.i.i.i.i.i.i402, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i382, !prof !225

.lr.ph.i.i.i.i.i.i.i402:                          ; preds = %bb.gi, %bb.gj
  %i.azq = phi i64 [ %i.azv, %bb.gj ], [ %i.azj, %bb.gi ]
  %.01419.i.i.i.i.i.i.i403 = phi i32 [ %i.azu, %bb.gj ], [ %i.azi, %bb.gi ]
  %i.azr = getelementptr inbounds nuw [16 x i8], ptr %i.ayq, i64 %i.azq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i404 = load ptr, ptr %i.azr, align 8, !tbaa !222
  %i.azs = icmp eq ptr %.sroa.083.2.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i404
  br i1 %i.azs, label %bb.gk, label %bb.gj, !prof !91

bb.gj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i402
  %i.azt = add nuw i32 %.01419.i.i.i.i.i.i.i403, 1
  %i.azu = and i32 %i.azt, %i.ayw                 ; 3 uses
  %i.azv = zext i32 %i.azu to i64                 ; 2 uses
  %i.azw = lshr i64 %i.azv, 5
  %i.azx = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.azw
  %i.azy = load i32, ptr %i.azx, align 4, !tbaa !224
  %i.azz = and i32 %i.azu, 31
  %i.baa = lshr i32 %i.azy, %i.azz
  %i.bab = trunc i32 %i.baa to i1
  br i1 %i.bab, label %.lr.ph.i.i.i.i.i.i.i402, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i382, !prof !226

bb.gk:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i402
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  %i.bad = load ptr, ptr %i.bac, align 8, !tbaa !198
  br label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i382

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i382: ; preds = %bb.gj, %bb.gk, %bb.gi, %.thread.i.i.i.i
  %i.bae = phi ptr [ %i.bad, %bb.gk ], [ null, %.thread.i.i.i.i ], [ null, %bb.gi ], [ null, %bb.gj ]
  %i.baf = call ptr @_ZN4mlir3omp15AtomicCaptureOp15getAtomicReadOpEv(ptr noundef nonnull align 8 dereferenceable(8) %395) #31
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 72
  %i.bah = load ptr, ptr %i.bag, align 8, !tbaa !220
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 24
  %.sroa.0.0.copyload.i.i.i.i58.i.i.i.i = load ptr, ptr %i.bai, align 8, !tbaa !222 ; 2 uses
  %i.baj = load ptr, ptr %i.ayp, align 8, !tbaa !115, !noalias !1437
  %i.bak = load ptr, ptr %i.ayr, align 8, !tbaa !223, !noalias !1437 ; 2 uses
  %i.bal = load i32, ptr %i.ayt, align 4, !tbaa !114, !noalias !1437 ; 2 uses
  %i.bam = icmp eq i32 %i.bal, 0
  br i1 %i.bam, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit62.i.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i382
  %i.ban = add i32 %i.bal, -1                     ; 2 uses
  %i.bao = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i58.i.i.i.i to i64
  %i.bap = xor i64 %i.bao, -49064778989728563     ; 2 uses
  %i.baq = lshr i64 %i.bap, 30
  %i.bar = xor i64 %i.baq, %i.bap
  %i.bas = mul i64 %i.bar, -4658895280553007687   ; 2 uses
  %i.bat = lshr i64 %i.bas, 27
  %i.bau = xor i64 %i.bat, %i.bas
  %i.bav = mul i64 %i.bau, -7723592293110705685   ; 2 uses
  %i.baw = lshr i64 %i.bav, 31
  %i.bax = xor i64 %i.baw, %i.bav
  %i.bay = trunc i64 %i.bax to i32
  %i.baz = and i32 %i.ban, %i.bay                 ; 3 uses
  %i.bba = zext i32 %i.baz to i64                 ; 2 uses
  %i.bbb = lshr i64 %i.bba, 5
  %i.bbc = getelementptr inbounds nuw [4 x i8], ptr %i.bak, i64 %i.bbb
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !224
  %i.bbe = and i32 %i.baz, 31
  %i.bbf = lshr i32 %i.bbd, %i.bbe
  %i.bbg = trunc i32 %i.bbf to i1
  br i1 %i.bbg, label %.lr.ph.i.i.i59.i.i.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit62.i.i.i.i, !prof !225

.lr.ph.i.i.i59.i.i.i.i:                           ; preds = %bb.gl, %bb.gm
  %i.bbh = phi i64 [ %i.bbm, %bb.gm ], [ %i.bba, %bb.gl ]
  %.01419.i.i.i60.i.i.i.i = phi i32 [ %i.bbl, %bb.gm ], [ %i.baz, %bb.gl ]
  %i.bbi = getelementptr inbounds nuw [16 x i8], ptr %i.baj, i64 %i.bbh ; 2 uses
  %.sroa.0.0.copyload.i.i.i61.i.i.i.i = load ptr, ptr %i.bbi, align 8, !tbaa !222
  %i.bbj = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i58.i.i.i.i, %.sroa.0.0.copyload.i.i.i61.i.i.i.i
  br i1 %i.bbj, label %bb.gn, label %bb.gm, !prof !91

bb.gm:                                            ; preds = %.lr.ph.i.i.i59.i.i.i.i
  %i.bbk = add nuw i32 %.01419.i.i.i60.i.i.i.i, 1
  %i.bbl = and i32 %i.bbk, %i.ban                 ; 3 uses
  %i.bbm = zext i32 %i.bbl to i64                 ; 2 uses
  %i.bbn = lshr i64 %i.bbm, 5
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %i.bak, i64 %i.bbn
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !224
  %i.bbq = and i32 %i.bbl, 31
  %i.bbr = lshr i32 %i.bbp, %i.bbq
  %i.bbs = trunc i32 %i.bbr to i1
  br i1 %i.bbs, label %.lr.ph.i.i.i59.i.i.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit62.i.i.i.i, !prof !226

bb.gn:                                            ; preds = %.lr.ph.i.i.i59.i.i.i.i
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbi, i64 8
  %i.bbu = load ptr, ptr %i.bbt, align 8, !tbaa !198
  br label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit62.i.i.i.i

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit62.i.i.i.i: ; preds = %bb.gm, %bb.gn, %bb.gl, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i382
  %i.bbv = phi ptr [ %i.bbu, %bb.gn ], [ null, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i382 ], [ null, %bb.gl ], [ null, %bb.gm ]
  %i.bbw = call ptr @_ZN4mlir3omp15AtomicCaptureOp15getAtomicReadOpEv(ptr noundef nonnull align 8 dereferenceable(8) %395) #31
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 72
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !220
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 56
  %.sroa.0.0.copyload.i.i.i.i64.i.i.i.i = load ptr, ptr %i.bbz, align 8, !tbaa !222 ; 2 uses
  %i.bca = load ptr, ptr %i.ayp, align 8, !tbaa !115, !noalias !1438
  %i.bcb = load ptr, ptr %i.ayr, align 8, !tbaa !223, !noalias !1438 ; 2 uses
  %i.bcc = load i32, ptr %i.ayt, align 4, !tbaa !114, !noalias !1438 ; 2 uses
  %i.bcd = icmp eq i32 %i.bcc, 0
  br i1 %i.bcd, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit68.i.i.i.i, label %bb.go

bb.go:                                            ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit62.i.i.i.i
  %i.bce = add i32 %i.bcc, -1                     ; 2 uses
  %i.bcf = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i64.i.i.i.i to i64
  %i.bcg = xor i64 %i.bcf, -49064778989728563     ; 2 uses
  %i.bch = lshr i64 %i.bcg, 30
  %i.bci = xor i64 %i.bch, %i.bcg
  %i.bcj = mul i64 %i.bci, -4658895280553007687   ; 2 uses
  %i.bck = lshr i64 %i.bcj, 27
  %i.bcl = xor i64 %i.bck, %i.bcj
  %i.bcm = mul i64 %i.bcl, -7723592293110705685   ; 2 uses
  %i.bcn = lshr i64 %i.bcm, 31
  %i.bco = xor i64 %i.bcn, %i.bcm
  %i.bcp = trunc i64 %i.bco to i32
  %i.bcq = and i32 %i.bce, %i.bcp                 ; 3 uses
  %i.bcr = zext i32 %i.bcq to i64                 ; 2 uses
  %i.bcs = lshr i64 %i.bcr, 5
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.bcb, i64 %i.bcs
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !224
  %i.bcv = and i32 %i.bcq, 31
  %i.bcw = lshr i32 %i.bcu, %i.bcv
  %i.bcx = trunc i32 %i.bcw to i1
  br i1 %i.bcx, label %.lr.ph.i.i.i65.i.i.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit68.i.i.i.i, !prof !225

.lr.ph.i.i.i65.i.i.i.i:                           ; preds = %bb.go, %bb.gp
  %i.bcy = phi i64 [ %i.bdd, %bb.gp ], [ %i.bcr, %bb.go ]
  %.01419.i.i.i66.i.i.i.i = phi i32 [ %i.bdc, %bb.gp ], [ %i.bcq, %bb.go ]
  %i.bcz = getelementptr inbounds nuw [16 x i8], ptr %i.bca, i64 %i.bcy ; 2 uses
  %.sroa.0.0.copyload.i.i.i67.i.i.i.i = load ptr, ptr %i.bcz, align 8, !tbaa !222
  %i.bda = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i64.i.i.i.i, %.sroa.0.0.copyload.i.i.i67.i.i.i.i
  br i1 %i.bda, label %bb.gq, label %bb.gp, !prof !91

bb.gp:                                            ; preds = %.lr.ph.i.i.i65.i.i.i.i
  %i.bdb = add nuw i32 %.01419.i.i.i66.i.i.i.i, 1
  %i.bdc = and i32 %i.bdb, %i.bce                 ; 3 uses
  %i.bdd = zext i32 %i.bdc to i64                 ; 2 uses
  %i.bde = lshr i64 %i.bdd, 5
  %i.bdf = getelementptr inbounds nuw [4 x i8], ptr %i.bcb, i64 %i.bde
  %i.bdg = load i32, ptr %i.bdf, align 4, !tbaa !224
  %i.bdh = and i32 %i.bdc, 31
  %i.bdi = lshr i32 %i.bdg, %i.bdh
  %i.bdj = trunc i32 %i.bdi to i1
  br i1 %i.bdj, label %.lr.ph.i.i.i65.i.i.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit68.i.i.i.i, !prof !226

bb.gq:                                            ; preds = %.lr.ph.i.i.i65.i.i.i.i
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bcz, i64 8
  %i.bdl = load ptr, ptr %i.bdk, align 8, !tbaa !198
  br label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit68.i.i.i.i

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit68.i.i.i.i: ; preds = %bb.gp, %bb.gq, %bb.go, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit62.i.i.i.i
  %i.bdm = phi ptr [ %i.bdl, %bb.gq ], [ null, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit62.i.i.i.i ], [ null, %bb.go ], [ null, %bb.gp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %400) #31
  %i.bdn = call ptr @_ZN4mlir3omp15AtomicCaptureOp15getAtomicReadOpEv(ptr noundef nonnull align 8 dereferenceable(8) %395) #31
  store ptr %i.bdn, ptr %400, align 8
  %i.bdo = call ptr @_ZN4mlir3omp12AtomicReadOp14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %400) #31
  %i.bdp = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(592) %3, ptr %i.bdo) #31 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %400) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %401) #31
  store ptr %i.bbv, ptr %401, align 8, !tbaa !1422
  %i.bdq = getelementptr inbounds nuw i8, ptr %401, i64 8
  store ptr %i.bdp, ptr %i.bdq, align 8, !tbaa !1423
  %i.bdr = getelementptr inbounds nuw i8, ptr %401, i64 16
  store i8 0, ptr %i.bdr, align 8, !tbaa !1424
  %i.bds = getelementptr inbounds nuw i8, ptr %401, i64 17
  store i8 0, ptr %i.bds, align 1, !tbaa !1425
  call void @llvm.lifetime.start.p0(ptr nonnull %402) #31
  store ptr %i.bdm, ptr %402, align 8, !tbaa !1422
  %i.bdt = getelementptr inbounds nuw i8, ptr %402, i64 8
  store ptr %i.bdp, ptr %i.bdt, align 8, !tbaa !1423
  %i.bdu = getelementptr inbounds nuw i8, ptr %402, i64 16
  store i8 0, ptr %i.bdu, align 8, !tbaa !1424
  %i.bdv = getelementptr inbounds nuw i8, ptr %402, i64 17
  store i8 0, ptr %i.bdv, align 1, !tbaa !1425
  %i.bdw = call i64 @_ZN4mlir3omp15AtomicCaptureOp14getMemoryOrderEv(ptr noundef nonnull align 8 dereferenceable(8) %395) #31 ; 2 uses
  %i.bdx = and i64 %i.bdw, 4294967296
  %.not.i69.i.i.i.i = icmp eq i64 %i.bdx, 0
  br i1 %.not.i69.i.i.i.i, label %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i384, label %switch.lookup2746.a

switch.lookup2746.a:                              ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit68.i.i.i.i
  %i.bdy = and i64 %i.bdw, 4294967295
  %switch.gep2747.a = getelementptr inbounds nuw i8, ptr @switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.661, i64 %i.bdy
  %switch.load2748.a = load i8, ptr %switch.gep2747.a, align 1
  %switch.ext2749.a = zext i8 %switch.load2748.a to i32
  br label %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i384

_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i384: ; preds = %switch.lookup2746.a, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit68.i.i.i.i
  %.0.i.i.i.i.i385 = phi i32 [ 2, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit68.i.i.i.i ], [ %switch.ext2749.a, %switch.lookup2746.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %403) #31
  store ptr %397, ptr %403, align 8, !tbaa !1439
  %i.bdz = getelementptr inbounds nuw i8, ptr %403, i64 8
  store ptr %3, ptr %i.bdz, align 8, !tbaa !204
  %i.bea = getelementptr inbounds nuw i8, ptr %403, i64 16
  store ptr %396, ptr %i.bea, align 8, !tbaa !1430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #31
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %396, align 8
  call fastcc void @_ZL25extractAtomicControlFlagsN4mlir3omp14AtomicUpdateOpERbS2_S2_(ptr %.sroa.02.0.copyload.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.u)
  %i.beb = getelementptr inbounds nuw i8, ptr %3, i64 496
  %.val.i.i.i.i386 = load ptr, ptr %i.beb, align 8
  %i.bec = getelementptr inbounds nuw i8, ptr %3, i64 504
  %.val48.i.i.i.i = load i32, ptr %i.bec, align 8
  call fastcc void @_ZL21findAllocInsertPointsRN4llvm13IRBuilderBaseERN4mlir4LLVM17ModuleTranslationEPNS_15SmallVectorImplIPNS_10BasicBlockEEE(ptr dead_on_unwind noalias writable align 8 %406, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %.val.i.i.i.i386, i32 %.val48.i.i.i.i, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %404) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %i.bed = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i387 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i388 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i387, align 8, !noalias !1440
  %.sroa.22.8.insert.ext.i.i.i.i.i.i389 = and i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i388, 65535
  %i.bef = load <2 x ptr>, ptr %i.bed, align 8, !noalias !1440
  store <2 x ptr> %i.bef, ptr %404, align 16, !alias.scope !1440
  %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i390 = getelementptr inbounds nuw i8, ptr %404, i64 16
  store i64 %.sroa.22.8.insert.ext.i.i.i.i.i.i389, ptr %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i390, align 16, !alias.scope !1440
  %i.beg = getelementptr inbounds nuw i8, ptr %404, i64 24
  %i.beh = call ptr @_ZNK4llvm13IRBuilderBase23getCurrentDebugLocationEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #31
  store ptr %i.beh, ptr %i.beg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %405) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %407) #31
  store ptr @"_ZN4llvm12function_refIFNS_8ExpectedIPNS_5ValueEEES3_RNS_9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEEE11callback_fnIZL23convertOmpAtomicCaptureN4mlir3omp15AtomicCaptureOpERNS_13IRBuilderBaseERNSD_4LLVM17ModuleTranslationEE3$_0EES4_lS3_S9_", ptr %407, align 8, !tbaa !1433
  %i.bei = getelementptr inbounds nuw i8, ptr %407, i64 8
  %i.bej = ptrtoint ptr %403 to i64
  store i64 %i.bej, ptr %i.bei, align 8, !tbaa !1434
  %i.bek = load ptr, ptr %396, align 8, !tbaa !195
  %i.bel = icmp ne ptr %i.bek, null
  %i.bem = load i8, ptr %i.s, align 1, !tbaa !117, !range !118, !noundef !119
  %i.ben = trunc nuw i8 %i.bem to i1
  %i.beo = load i8, ptr %i.t, align 1, !tbaa !117, !range !118, !noundef !119
  %i.bep = trunc nuw i8 %i.beo to i1
  %i.beq = load i8, ptr %i.u, align 1, !tbaa !117, !range !118, !noundef !119
  %i.ber = trunc nuw i8 %i.beq to i1
  call void @_ZN4llvm15OpenMPIRBuilder19createAtomicCaptureERKNS0_19LocationDescriptionENS_13IRBuilderBase11InsertPointERNS0_13AtomicOpValueES7_PNS_5ValueENS_14AtomicOrderingENS_13AtomicRMWInst5BinOpERKNS_12function_refIFNS_8ExpectedIS9_EES9_RNS_9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEEEEbbbbbb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %405, ptr noundef nonnull align 8 dereferenceable(1864) %i.ate, ptr noundef nonnull align 8 dereferenceable(32) %404, ptr noundef nonnull byval(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %406, ptr noundef nonnull align 8 dereferenceable(18) %401, ptr noundef nonnull align 8 dereferenceable(18) %402, ptr noundef %i.bae, i32 noundef %.0.i.i.i.i.i385, i32 noundef %.347.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %407, i1 noundef zeroext %i.bel, i1 noundef zeroext %.043.i.i.i.i, i1 noundef zeroext %.3.i.i.i.i, i1 noundef zeroext %i.ben, i1 noundef zeroext %i.bep, i1 noundef zeroext %i.ber) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %407) #31
  %i.bes = load ptr, ptr %395, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %394)
  %i.bet = getelementptr inbounds nuw i8, ptr %405, i64 24 ; 2 uses
  %i.beu = load i8, ptr %i.bet, align 8
  %i.bev = trunc i8 %i.beu to i1
  br i1 %i.bev, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i400, label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i.i391

_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i.i391: ; preds = %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i384
  call void @llvm.lifetime.end.p0(ptr nonnull %394)
  br label %bb.gs

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i400: ; preds = %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i384
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  %i.bew = load i64, ptr %405, align 8, !tbaa !171, !noalias !1441
  %i.bex = inttoptr i64 %i.bew to ptr
  store ptr null, ptr %405, align 8, !tbaa !171, !noalias !1441
  store ptr %i.bex, ptr %394, align 8, !tbaa !173, !alias.scope !1441
  %i.bey = call fastcc i8 @_ZL11handleErrorN4llvm5ErrorERN4mlir9OperationE(ptr nofree noundef align 8 dereferenceable(8) %394, ptr noundef nonnull align 8 dereferenceable(64) %i.bes)
  %i.bez = load ptr, ptr %394, align 8, !tbaa !173 ; 3 uses
  %i.bfa = icmp eq ptr %i.bez, null
  br i1 %i.bfa, label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i401, label %bb.gr

bb.gr:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i400
  %i.bfb = load ptr, ptr %i.bez, align 8, !tbaa !72
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 8
  %i.bfd = load ptr, ptr %i.bfc, align 8
  call void %i.bfd(ptr noundef nonnull align 8 dereferenceable(8) %i.bez) #31, !inline_history !978
  br label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i401

_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i401: ; preds = %bb.gr, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %394)
  %i.bfe = trunc nuw i8 %i.bey to i1
  br i1 %i.bfe, label %bb.gs, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i397

bb.gs:                                            ; preds = %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i401, %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i.i391
  %.sroa.086.0.copyload.i.i.i.i = load ptr, ptr %405, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i392 = getelementptr inbounds nuw i8, ptr %405, i64 8
  %.sroa.2.0.copyload.i.i.i.i393 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i392, align 8 ; 3 uses
  %.not.i71.i.i.i.i = icmp eq ptr %.sroa.086.0.copyload.i.i.i.i, null
  br i1 %.not.i71.i.i.i.i, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %.sroa.3.0..sroa_idx.i.i.i.i394 = getelementptr inbounds nuw i8, ptr %405, i64 16
  %.sroa.3.0.copyload.i.i.i.i395 = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i394, align 8
  store ptr %.sroa.086.0.copyload.i.i.i.i, ptr %i.bed, align 8, !tbaa !187
  store ptr %.sroa.2.0.copyload.i.i.i.i393, ptr %i.bee, align 8
  %.sroa.45.0.extract.trunc.i.i.i.i.i.i396 = trunc i64 %.sroa.3.0.copyload.i.i.i.i395 to i16
  store i16 %.sroa.45.0.extract.trunc.i.i.i.i.i.i396, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i387, align 8
  %i.bff = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload.i.i.i.i, i64 48
  %.not.i.i73.i.i.i.i = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i393, %i.bff
  br i1 %.not.i.i73.i.i.i.i, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i397, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.bfg = getelementptr inbounds i8, ptr %.sroa.2.0.copyload.i.i.i.i393, i64 -24
  %i.bfh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bfg) #31
  %i.bfi = load i64, ptr %i.bfh, align 8, !tbaa !188
  store i64 %i.bfi, ptr %2, align 8, !tbaa !188
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i397

bb.gv:                                            ; preds = %bb.gs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.bed, i8 0, i64 18, i1 false)
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i397

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i397: ; preds = %bb.gv, %bb.gu, %bb.gt, %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i401
  %.sroa.040.3.i.i.i.i = phi i8 [ 0, %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i401 ], [ 1, %bb.gt ], [ 1, %bb.gu ], [ 1, %bb.gv ]
  %i.bfj = load i8, ptr %i.bet, align 8
  %i.bfk = trunc i8 %i.bfj to i1
  br i1 %i.bfk, label %bb.gw, label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i398

bb.gw:                                            ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i397
  %i.bfl = load ptr, ptr %405, align 8, !tbaa !171 ; 3 uses
  %.not.i.i74.i.i.i.i = icmp eq ptr %i.bfl, null
  br i1 %.not.i.i74.i.i.i.i, label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i398, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i399

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i399: ; preds = %bb.gw
  %i.bfm = load ptr, ptr %i.bfl, align 8, !tbaa !72
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 8
  %i.bfo = load ptr, ptr %i.bfn, align 8
  call void %i.bfo(ptr noundef nonnull align 8 dereferenceable(8) %i.bfl) #31, !inline_history !979
  br label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i398

_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i398: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i399, %bb.gw, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i397
  call void @llvm.lifetime.end.p0(ptr nonnull %405) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %404) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %403) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %402) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %401) #31
  br label %bb.gx

bb.gx:                                            ; preds = %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i398, %bb.gh
  %.sroa.040.4.i.i.i.i = phi i8 [ %.sroa.040.3.i.i.i.i, %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i398 ], [ %i.aya, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %397) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %396) #31
  br label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_14clENS1_3omp15AtomicCaptureOpE.exit.i.i"

"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_14clENS1_3omp15AtomicCaptureOpE.exit.i.i": ; preds = %bb.gx, %bb.fo
  %.sroa.040.5.i.i.i.i = phi i8 [ %.sroa.040.4.i.i.i.i, %bb.gx ], [ 0, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %395)
  call void @llvm.lifetime.end.p0(ptr nonnull %406)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE4$_47EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_14EERS7_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_13EERS7_OT_.exit"
  %i.bfp = icmp ne ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_3omp15AtomicCompareOpEvE2idE
  %.not.i.i458 = or i1 %.not.i14915771580, %i.bfp
  br i1 %.not.i.i458, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_15EERS7_OT_.exit", label %bb.gy

bb.gy:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_14EERS7_OT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %362)
  store ptr %1, ptr %362, align 8
  %i.bfq = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation16getOpenMPBuilderEv(ptr noundef nonnull align 8 dereferenceable(592) %3) #31 ; 3 uses
  %i.bfr = call fastcc i8 @_ZL25checkImplementationStatusRN4mlir9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.bfs = trunc nuw i8 %i.bfr to i1
  br i1 %i.bfs, label %bb.gz, label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_15clENS1_3omp15AtomicCompareOpE.exit.i.i"

bb.gz:                                            ; preds = %bb.gy
  %i.bft = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bfu = load i32, ptr %i.bft, align 4          ; 3 uses
  %i.bfv = and i32 %i.bfu, 8388607
  %i.bfw = icmp ne i32 %i.bfv, 0
  call void @llvm.assume(i1 %i.bfw)
  %i.bfx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bfy = lshr i32 %i.bfu, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i459 = and i32 %i.bfy, 1
  %i.bfz = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i459 to i64
  %i.bga = getelementptr inbounds nuw [16 x i8], ptr %i.bfx, i64 %i.bfz
  %i.bgb = lshr i32 %i.bfu, 21
  %i.bgc = and i32 %i.bgb, 2040
  %i.bgd = zext nneg i32 %i.bgc to i64
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bga, i64 %i.bgd
  %i.bgf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bgg = load i32, ptr %i.bgf, align 8, !tbaa !342
  %i.bgh = zext i32 %i.bgg to i64
  %i.bgi = getelementptr inbounds nuw [32 x i8], ptr %i.bge, i64 %i.bgh ; 2 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 8
  %i.bgk = load ptr, ptr %i.bgj, align 8, !tbaa !343 ; 4 uses
  %i.bgl = getelementptr inbounds i8, ptr %i.bgk, i64 -8 ; 3 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgk, i64 48 ; 4 uses
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !348
  %.sroa.0.0.copyload.i.i.i.i.i460 = load ptr, ptr %i.bgn, align 8
  %i.bgo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i460, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i461 = load i64, ptr %i.bgo, align 8
  %i.bgp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i461, -8
  %i.bgq = inttoptr i64 %i.bgp to ptr
  %i.bgr = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(592) %3, ptr %i.bgq) #31 ; 8 uses
  %.not270.i.i.i.i = icmp eq ptr %i.bgr, null
  br i1 %.not270.i.i.i.i, label %bb.ha, label %bb.he

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %363) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %364) #31
  %i.bgs = getelementptr inbounds nuw i8, ptr %364, i64 32
  %i.bgt = getelementptr inbounds nuw i8, ptr %364, i64 33
  store i8 1, ptr %i.bgt, align 1, !tbaa !142
  store ptr @.str.94, ptr %364, align 8, !tbaa !105
  store i8 3, ptr %i.bgs, align 8, !tbaa !141
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %363, ptr noundef nonnull align 8 dereferenceable(8) %362, ptr noundef nonnull align 8 dereferenceable(34) %364) #31
  %i.bgu = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %363) #31
  %i.bgv = load ptr, ptr %363, align 8, !tbaa !150
  %.not.i.i.i.i.i494 = icmp eq ptr %i.bgv, null
  br i1 %.not.i.i.i.i.i494, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %363) #31
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.bgw = getelementptr inbounds nuw i8, ptr %363, i64 200 ; 2 uses
  %i.bgx = load i8, ptr %i.bgw, align 8, !tbaa !156, !range !118, !noundef !119
  %i.bgy = trunc nuw i8 %i.bgx to i1
  store i8 0, ptr %i.bgw, align 8, !tbaa !156
  br i1 %i.bgy, label %bb.hd, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i

bb.hd:                                            ; preds = %bb.hc
  %i.bgz = getelementptr inbounds nuw i8, ptr %363, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bgz) #31
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i:    ; preds = %bb.hd, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %364) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %363) #31
  br label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_15clENS1_3omp15AtomicCompareOpE.exit.i.i"

bb.he:                                            ; preds = %bb.gz
  %i.bha = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bhb = load ptr, ptr %i.bha, align 8, !tbaa !220
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bhb, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i463 = load ptr, ptr %i.bhc, align 8, !tbaa !222 ; 2 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 5 uses
  %i.bhe = load ptr, ptr %i.bhd, align 8, !tbaa !115, !noalias !1442
  %i.bhf = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 5 uses
  %i.bhg = load ptr, ptr %i.bhf, align 8, !tbaa !223, !noalias !1442 ; 2 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %3, i64 252 ; 5 uses
  %i.bhi = load i32, ptr %i.bhh, align 4, !tbaa !114, !noalias !1442 ; 2 uses
  %i.bhj = icmp eq i32 %i.bhi, 0
  br i1 %i.bhj, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i464, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bhk = add i32 %i.bhi, -1                     ; 2 uses
  %i.bhl = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i463 to i64
  %i.bhm = xor i64 %i.bhl, -49064778989728563     ; 2 uses
  %i.bhn = lshr i64 %i.bhm, 30
  %i.bho = xor i64 %i.bhn, %i.bhm
  %i.bhp = mul i64 %i.bho, -4658895280553007687   ; 2 uses
  %i.bhq = lshr i64 %i.bhp, 27
  %i.bhr = xor i64 %i.bhq, %i.bhp
  %i.bhs = mul i64 %i.bhr, -7723592293110705685   ; 2 uses
  %i.bht = lshr i64 %i.bhs, 31
  %i.bhu = xor i64 %i.bht, %i.bhs
  %i.bhv = trunc i64 %i.bhu to i32
  %i.bhw = and i32 %i.bhk, %i.bhv                 ; 3 uses
  %i.bhx = zext i32 %i.bhw to i64                 ; 2 uses
  %i.bhy = lshr i64 %i.bhx, 5
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %i.bhg, i64 %i.bhy
  %i.bia = load i32, ptr %i.bhz, align 4, !tbaa !224
  %i.bib = and i32 %i.bhw, 31
  %i.bic = lshr i32 %i.bia, %i.bib
  %i.bid = trunc i32 %i.bic to i1
  br i1 %i.bid, label %.lr.ph.i.i.i.i.i.i.i491, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i464, !prof !225

.lr.ph.i.i.i.i.i.i.i491:                          ; preds = %bb.hf, %bb.hg
  %i.bie = phi i64 [ %i.bij, %bb.hg ], [ %i.bhx, %bb.hf ]
  %.01419.i.i.i.i.i.i.i492 = phi i32 [ %i.bii, %bb.hg ], [ %i.bhw, %bb.hf ]
  %i.bif = getelementptr inbounds nuw [16 x i8], ptr %i.bhe, i64 %i.bie ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i493 = load ptr, ptr %i.bif, align 8, !tbaa !222
  %i.big = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i463, %.sroa.0.0.copyload.i.i.i.i.i.i.i493
  br i1 %i.big, label %bb.hh, label %bb.hg, !prof !91

bb.hg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i491
  %i.bih = add nuw i32 %.01419.i.i.i.i.i.i.i492, 1
  %i.bii = and i32 %i.bih, %i.bhk                 ; 3 uses
  %i.bij = zext i32 %i.bii to i64                 ; 2 uses
  %i.bik = lshr i64 %i.bij, 5
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %i.bhg, i64 %i.bik
  %i.bim = load i32, ptr %i.bil, align 4, !tbaa !224
  %i.bin = and i32 %i.bii, 31
  %i.bio = lshr i32 %i.bim, %i.bin
  %i.bip = trunc i32 %i.bio to i1
  br i1 %i.bip, label %.lr.ph.i.i.i.i.i.i.i491, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i464, !prof !226

bb.hh:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i491
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bif, i64 8
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !198
  br label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i464

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i464: ; preds = %bb.hg, %bb.hh, %bb.hf, %bb.he
  %i.bis = phi ptr [ %i.bir, %bb.hh ], [ null, %bb.he ], [ null, %bb.hf ], [ null, %bb.hg ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %365) #31
  store ptr %i.bis, ptr %365, align 8, !tbaa !1422
  %i.bit = getelementptr inbounds nuw i8, ptr %365, i64 8
  store ptr %i.bgr, ptr %i.bit, align 8, !tbaa !1423
  %i.biu = getelementptr inbounds nuw i8, ptr %365, i64 16 ; 2 uses
  store i8 0, ptr %i.biu, align 8, !tbaa !1424
  %i.biv = getelementptr inbounds nuw i8, ptr %365, i64 17
  store i8 0, ptr %i.biv, align 1, !tbaa !1425
  %i.biw = call i64 @_ZN4mlir3omp15AtomicCompareOp14getMemoryOrderEv(ptr noundef nonnull align 8 dereferenceable(8) %362) #31 ; 2 uses
  %i.bix = and i64 %i.biw, 4294967296
  %.not.i279.i.i.i.i = icmp eq i64 %i.bix, 0
  br i1 %.not.i279.i.i.i.i, label %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i466, label %switch.lookup2750.a

switch.lookup2750.a:                              ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i464
  %i.biy = and i64 %i.biw, 4294967295
  %switch.gep2751.a = getelementptr inbounds nuw i8, ptr @switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.661, i64 %i.biy
  %switch.load2752.a = load i8, ptr %switch.gep2751.a, align 1
  %switch.ext2753.a = zext i8 %switch.load2752.a to i32
  br label %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i466

_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i466: ; preds = %switch.lookup2750.a, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i464
  %.0.i.i.i.i.i467 = phi i32 [ 2, %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i464 ], [ %switch.ext2753.a, %switch.lookup2750.a ] ; 4 uses
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bgk, i64 40 ; 5 uses
  %i.bja = load ptr, ptr %i.biz, align 8, !tbaa !343
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bgk, i64 32 ; 9 uses
  %i.bjc = icmp eq ptr %i.bja, %i.bjb
  br i1 %i.bjc, label %.thread449.i.i.i.i, label %_ZN4mlir5Block18without_terminatorEv.exit.i.i.i.i

_ZN4mlir5Block18without_terminatorEv.exit.i.i.i.i: ; preds = %_ZL21convertAtomicOrderingSt8optionalIN4mlir3omp21ClauseMemoryOrderKindEE.exit.i.i.i.i466
  %i.bjd = call { ptr, ptr } @_ZN4mlir5Block23without_terminator_implEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bgl) #31 ; 2 uses
  %i.bje = extractvalue { ptr, ptr } %i.bjd, 0    ; 2 uses
  %i.bjf = extractvalue { ptr, ptr } %i.bjd, 1    ; 2 uses
  %.not542600.i.i.i.i = icmp eq ptr %i.bje, %i.bjf
  br i1 %.not542600.i.i.i.i, label %.thread449.i.i.i.i, label %.lr.ph.i.i.i.i468

.lr.ph.i.i.i.i468:                                ; preds = %_ZN4mlir5Block18without_terminatorEv.exit.i.i.i.i, %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZL23convertOmpAtomicCompareNS1_3omp15AtomicCompareOpERNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_0EEbOT_T0_.exit.thread443.i.i.i.i"
  %.sroa.0421.0601.i.i.i.i = phi ptr [ %i.bvg, %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZL23convertOmpAtomicCompareNS1_3omp15AtomicCompareOpERNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_0EEbOT_T0_.exit.thread443.i.i.i.i" ], [ %i.bje, %_ZN4mlir5Block18without_terminatorEv.exit.i.i.i.i ] ; 2 uses
  %i.bjg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0421.0601.i.i.i.i) #31 ; 5 uses
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjg, i64 48
  %.val276.i.i.i.i = load ptr, ptr %i.bjh, align 8, !tbaa !121
  %i.bji = getelementptr i8, ptr %.val276.i.i.i.i, i64 16
  %.val276.val.i.i.i.i = load ptr, ptr %i.bji, align 8, !tbaa !122 ; 2 uses
  %i.bjj = insertelement <4 x ptr> poison, ptr %.val276.val.i.i.i.i, i64 0
  %i.bjk = shufflevector <4 x ptr> %i.bjj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bjl = icmp eq <4 x ptr> %i.bjk, <ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM6ICmpOpEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM6FCmpOpEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM8SelectOpEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM5AndOpEvE2idE>
  %i.bjm = icmp eq ptr %.val276.val.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM4OrOpEvE2idE
  %i.bjn = bitcast <4 x i1> %i.bjl to i4
  %i.bjo = icmp ne i4 %i.bjn, 0
  %op.rdx = or i1 %i.bjo, %i.bjm
  br i1 %op.rdx, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZL23convertOmpAtomicCompareNS1_3omp15AtomicCompareOpERNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_0EEbOT_T0_.exit.thread443.i.i.i.i", label %bb.hi

bb.hi:                                            ; preds = %.lr.ph.i.i.i.i468
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjg, i64 44
  %i.bjq = load i32, ptr %i.bjp, align 4
  %i.bjr = and i32 %i.bjq, 8388608
  %.not.i.i.i.i.i.i469 = icmp eq i32 %i.bjr, 0
  br i1 %.not.i.i.i.i.i.i469, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit.i.i.i.i470, !prof !165

_ZN4mlir9Operation11getOperandsEv.exit.i.i.i.i470: ; preds = %bb.hi
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjg, i64 72
  %i.bjt = load ptr, ptr %i.bjs, align 8, !tbaa !220 ; 6 uses
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjg, i64 68
  %i.bjv = load i32, ptr %i.bju, align 4, !tbaa !344
  %i.bjw = zext i32 %i.bjv to i64                 ; 16 uses
  %i.bjx = lshr i64 %i.bjw, 2                     ; 2 uses
  %.not543.i.i.i.i = icmp eq i64 %i.bjx, 0
  br i1 %.not543.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i.i.i.i470
  %i.bjy = load ptr, ptr %i.bhd, align 8, !tbaa !115, !noalias !1443 ; 4 uses
  %i.bjz = load ptr, ptr %i.bhf, align 8, !tbaa !223, !noalias !1443 ; 8 uses
  %i.bka = load i32, ptr %i.bhh, align 4, !tbaa !114, !noalias !1443 ; 2 uses
  %i.bkb = icmp eq i32 %i.bka, 0
  %i.bkc = add i32 %i.bka, -1                     ; 8 uses
  br i1 %i.bkb, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZL23convertOmpAtomicCompareNS1_3omp15AtomicCompareOpERNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_0EEbOT_T0_.exit.thread443.i.i.i.i", label %.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bkd = and i64 %i.bjw, 4294967292
  br label %.lr.ph.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.hq, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i
  %.0137.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bpw, %bb.hq ], [ %i.bjx, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.15.0136.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bpv, %bb.hq ], [ 0, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.bke = getelementptr inbounds nuw [32 x i8], ptr %i.bjt, i64 %.sroa.15.0136.i.i.i.i.i.i.i.i.i
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i471 = load ptr, ptr %i.bkf, align 8, !tbaa !222 ; 2 uses
  %i.bkg = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i471 to i64
  %i.bkh = xor i64 %i.bkg, -49064778989728563     ; 2 uses
  %i.bki = lshr i64 %i.bkh, 30
  %i.bkj = xor i64 %i.bki, %i.bkh
  %i.bkk = mul i64 %i.bkj, -4658895280553007687   ; 2 uses
  %i.bkl = lshr i64 %i.bkk, 27
  %i.bkm = xor i64 %i.bkl, %i.bkk
  %i.bkn = mul i64 %i.bkm, -7723592293110705685   ; 2 uses
  %i.bko = lshr i64 %i.bkn, 31
  %i.bkp = xor i64 %i.bko, %i.bkn
  %i.bkq = trunc i64 %i.bkp to i32
  %i.bkr = and i32 %i.bkc, %i.bkq                 ; 3 uses
  %i.bks = zext i32 %i.bkr to i64                 ; 2 uses
  %i.bkt = lshr i64 %i.bks, 5
  %i.bku = getelementptr inbounds nuw [4 x i8], ptr %i.bjz, i64 %i.bkt
  %i.bkv = load i32, ptr %i.bku, align 4, !tbaa !224
  %i.bkw = and i32 %i.bkr, 31
  %i.bkx = lshr i32 %i.bkv, %i.bkw
  %i.bky = trunc i32 %i.bkx to i1
  br i1 %i.bky, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZL23convertOmpAtomicCompareNS1_3omp15AtomicCompareOpERNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_0EEbOT_T0_.exit.i.i.i.i", !prof !225

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i, %bb.hj
  %i.bkz = phi i64 [ %i.ble, %bb.hj ], [ %i.bks, %.lr.ph.split.i.i.i.i.i.i.i.i.i ]
  %.01419.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bld, %bb.hj ], [ %i.bkr, %.lr.ph.split.i.i.i.i.i.i.i.i.i ]
  %i.bla = getelementptr inbounds nuw [16 x i8], ptr %i.bjy, i64 %i.bkz ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i490 = load ptr, ptr %i.bla, align 8, !tbaa !222
  %i.blb = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i471, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i490
  br i1 %i.blb, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS2_4LLVM17ModuleTranslationEE3$_0EclINS5_6detail27indexed_accessor_range_baseINS2_12OperandRangeEPNS2_9OpOperandENS2_5ValueESJ_SJ_E8iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i", label %bb.hj, !prof !91

bb.hj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.blc = add nuw i32 %.01419.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.bld = and i32 %i.blc, %i.bkc                 ; 3 uses
  %i.ble = zext i32 %i.bld to i64                 ; 2 uses
  %i.blf = lshr i64 %i.ble, 5
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %i.bjz, i64 %i.blf
  %i.blh = load i32, ptr %i.blg, align 4, !tbaa !224
  %i.bli = and i32 %i.bld, 31
  %i.blj = lshr i32 %i.blh, %i.bli
  %i.blk = trunc i32 %i.blj to i1
  br i1 %i.blk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZL23convertOmpAtomicCompareNS1_3omp15AtomicCompareOpERNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_0EEbOT_T0_.exit.i.i.i.i", !prof !226

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS2_4LLVM17ModuleTranslationEE3$_0EclINS5_6detail27indexed_accessor_range_baseINS2_12OperandRangeEPNS2_9OpOperandENS2_5ValueESJ_SJ_E8iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bll = getelementptr inbounds nuw i8, ptr %i.bla, i64 8
  %i.blm = load ptr, ptr %i.bll, align 8, !tbaa !198
  %i.bln = icmp eq ptr %i.blm, null
  br i1 %i.bln, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZL23convertOmpAtomicCompareNS1_3omp15AtomicCompareOpERNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_0EEbOT_T0_.exit.i.i.i.i", label %bb.hk

bb.hk:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS2_4LLVM17ModuleTranslationEE3$_0EclINS5_6detail27indexed_accessor_range_baseINS2_12OperandRangeEPNS2_9OpOperandENS2_5ValueESJ_SJ_E8iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i"
  %i.blo = or disjoint i64 %.sroa.15.0136.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.blp = getelementptr inbounds nuw [32 x i8], ptr %i.bjt, i64 %i.blo
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blp, i64 24
  %.sroa.0.0.copyload.i.i.i.i42.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.blq, align 8, !tbaa !222 ; 2 uses
  %i.blr = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i42.i.i.i.i.i.i.i.i.i to i64
  %i.bls = xor i64 %i.blr, -49064778989728563     ; 2 uses
  %i.blt = lshr i64 %i.bls, 30
  %i.blu = xor i64 %i.blt, %i.bls
  %i.blv = mul i64 %i.blu, -4658895280553007687   ; 2 uses
  %i.blw = lshr i64 %i.blv, 27
  %i.blx = xor i64 %i.blw, %i.blv
  %i.bly = mul i64 %i.blx, -7723592293110705685   ; 2 uses
  %i.blz = lshr i64 %i.bly, 31
  %i.bma = xor i64 %i.blz, %i.bly
  %i.bmb = trunc i64 %i.bma to i32
  %i.bmc = and i32 %i.bkc, %i.bmb                 ; 3 uses
  %i.bmd = zext i32 %i.bmc to i64                 ; 2 uses
  %i.bme = lshr i64 %i.bmd, 5
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %i.bjz, i64 %i.bme
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !224
  %i.bmh = and i32 %i.bmc, 31
  %i.bmi = lshr i32 %i.bmg, %i.bmh
  %i.bmj = trunc i32 %i.bmi to i1
  br i1 %i.bmj, label %.lr.ph.i.i.i.i.i43.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZL23convertOmpAtomicCompareNS1_3omp15AtomicCompareOpERNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_0EEbOT_T0_.exit.i.i.i.i", !prof !225

.lr.ph.i.i.i.i.i43.i.i.i.i.i.i.i.i.i:             ; preds = %bb.hk, %bb.hl
  %i.bmk = phi i64 [ %i.bmp, %bb.hl ], [ %i.bmd, %bb.hk ]
  %.01419.i.i.i.i.i44.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bmo, %bb.hl ], [ %i.bmc, %bb.hk ]
  %i.bml = getelementptr inbounds nuw [16 x i8], ptr %i.bjy, i64 %i.bmk ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i45.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bml, align 8, !tbaa !222
  %i.bmm = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i42.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i45.i.i.i.i.i.i.i.i.i
  br i1 %i.bmm, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS2_4LLVM17ModuleTranslationEE3$_0EclINS5_6detail27indexed_accessor_range_baseINS2_12OperandRangeEPNS2_9OpOperandENS2_5ValueESJ_SJ_E8iteratorEEEbT_.exit46.i.i.i.i.i.i.i.i.i", label %bb.hl, !prof !91

bb.hl:                                            ; preds = %.lr.ph.i.i.i.i.i43.i.i.i.i.i.i.i.i.i
  %i.bmn = add nuw i32 %.01419.i.i.i.i.i44.i.i.i.i.i.i.i.i.i, 1
  %i.bmo = and i32 %i.bmn, %i.bkc                 ; 3 uses
  %i.bmp = zext i32 %i.bmo to i64                 ; 2 uses
  %i.bmq = lshr i64 %i.bmp, 5
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %i.bjz, i64 %i.bmq
  %i.bms = load i32, ptr %i.bmr, align 4, !tbaa !224
  %i.bmt = and i32 %i.bmo, 31
  %i.bmu = lshr i32 %i.bms, %i.bmt
  %i.bmv = trunc i32 %i.bmu to i1
  br i1 %i.bmv, label %.lr.ph.i.i.i.i.i43.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZL23convertOmpAtomicCompareNS1_3omp15AtomicCompareOpERNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_0EEbOT_T0_.exit.i.i.i.i", !prof !226

"_ZN9__gnu_cxx5__ops12_Iter_negateIZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS2_4LLVM17ModuleTranslationEE3$_0EclINS5_6detail27indexed_accessor_range_baseINS2_12OperandRangeEPNS2_9OpOperandENS2_5ValueESJ_SJ_E8iteratorEEEbT_.exit46.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i43.i.i.i.i.i.i.i.i.i
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bml, i64 8
  %i.bmx = load ptr, ptr %i.bmw, align 8, !tbaa !198
  %i.bmy = icmp eq ptr %i.bmx, null
  br i1 %i.bmy, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZL23convertOmpAtomicCompareNS1_3omp15AtomicCompareOpERNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_0EEbOT_T0_.exit.i.i.i.i", label %bb.hm

bb.hm:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS2_4LLVM17ModuleTranslationEE3$_0EclINS5_6detail27indexed_accessor_range_baseINS2_12OperandRangeEPNS2_9OpOperandENS2_5ValueESJ_SJ_E8iteratorEEEbT_.exit46.i.i.i.i.i.i.i.i.i"
  %i.bmz = or disjoint i64 %.sroa.15.0136.i.i.i.i.i.i.i.i.i, 2 ; 4 uses
  %i.bna = getelementptr inbounds nuw [32 x i8], ptr %i.bjt, i64 %i.bmz
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 24
  %.sroa.0.0.copyload.i.i.i.i47.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bnb, align 8, !tbaa !222 ; 2 uses
  %i.bnc = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i47.i.i.i.i.i.i.i.i.i to i64
  %i.bnd = xor i64 %i.bnc, -49064778989728563     ; 2 uses
  %i.bne = lshr i64 %i.bnd, 30
  %i.bnf = xor i64 %i.bne, %i.bnd
  %i.bng = mul i64 %i.bnf, -4658895280553007687   ; 2 uses
  %i.bnh = lshr i64 %i.bng, 27
  %i.bni = xor i64 %i.bnh, %i.bng
  %i.bnj = mul i64 %i.bni, -7723592293110705685   ; 2 uses
  %i.bnk = lshr i64 %i.bnj, 31
  %i.bnl = xor i64 %i.bnk, %i.bnj
  %i.bnm = trunc i64 %i.bnl to i32
  %i.bnn = and i32 %i.bkc, %i.bnm                 ; 3 uses
  %i.bno = zext i32 %i.bnn to i64                 ; 2 uses
  %i.bnp = lshr i64 %i.bno, 5
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %i.bjz, i64 %i.bnp
  %i.bnr = load i32, ptr %i.bnq, align 4, !tbaa !224
  %i.bns = and i32 %i.bnn, 31
  %i.bnt = lshr i32 %i.bnr, %i.bns
  %i.bnu = trunc i32 %i.bnt to i1
  br i1 %i.bnu, label %.lr.ph.i.i.i.i.i48.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofIN4mlir12OperandRangeEZL23convertOmpAtomicCompareNS1_3omp15AtomicCompareOpERNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE3$_0EEbOT_T0_.exit.i.i.i.i", !prof !225

.lr.ph.i.i.i.i.i48.i.i.i.i.i.i.i.i.i:             ; preds = %bb.hm, %bb.hn
  %i.bnv = phi i64 [ %i.boa, %bb.hn ], [ %i.bno, %bb.hm ]
  %.01419.i.i.i.i.i49.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bnz, %bb.hn ], [ %i.bnn, %bb.hm ]
  %i.bnw = getelementptr inbounds nuw [16 x i8], ptr %i.bjy, i64 %i.bnv ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i50.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bnw, align 8, !tbaa !222
end_hunk_3
begin_hunk_4_@_ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE:bb.a
  %.not.i302.i.i.i.i = icmp eq ptr %i.bxl, null
  br i1 %.not.i302.i.i.i.i, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %371) #31
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %i.bxm = getelementptr inbounds nuw i8, ptr %371, i64 200 ; 2 uses
  %i.bxn = load i8, ptr %i.bxm, align 8, !tbaa !156, !range !118, !noundef !119
  %i.bxo = trunc nuw i8 %i.bxn to i1
  store i8 0, ptr %i.bxm, align 8, !tbaa !156
  br i1 %i.bxo, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.bxp = getelementptr inbounds nuw i8, ptr %371, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bxp) #31
  br label %bb.it

.thread454.i.i.i.i:                               ; preds = %"_ZZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationEENK3$_3clENS_5ValueE.exit298.i.i.i.i", %_ZNK4mlir5Value13getDefiningOpINS_4LLVM6FCmpOpEEET_v.exit289.thread.i.i.i.i, %_ZNK4mlir5Value13getDefiningOpINS_4LLVM6FCmpOpEEET_v.exit289.i.i.i.i, %.lr.ph606.i.i.i.i
  %i.bxq = getelementptr inbounds nuw i8, ptr %.sroa.0414.0605.i.i.i.i, i64 8
  %.sroa.0414.0.i.i.i.i = load ptr, ptr %i.bxq, align 8, !tbaa !343 ; 2 uses
  %.not544.i.i.i.i = icmp eq ptr %.sroa.0414.0.i.i.i.i, %i.bjb
  br i1 %.not544.i.i.i.i, label %.preheader549.loopexit.i.i.i.i, label %.lr.ph606.i.i.i.i

bb.it:                                            ; preds = %bb.is, %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %372) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %371) #31
  br label %bb.kd

bb.iu:                                            ; preds = %.lr.ph610.i.i.i.i
  %i.bxr = getelementptr inbounds nuw i8, ptr %.sroa.0401.0609.i.i.i.i, i64 8
  %.sroa.0401.0.i.i.i.i = load ptr, ptr %i.bxr, align 8, !tbaa !343 ; 2 uses
  %.not548.i.i.i.i = icmp eq ptr %.sroa.0401.0.i.i.i.i, %i.bjb
  br i1 %.not548.i.i.i.i, label %.loopexit550.thread.i.i.i.i, label %.lr.ph610.i.i.i.i

.lr.ph610.i.i.i.i:                                ; preds = %.thread480.i.i.i.i, %bb.iu
  %.sroa.0401.0609.i.i.i.i = phi ptr [ %.sroa.0401.0.i.i.i.i, %bb.iu ], [ %.sroa.0401.0607.i.i.i.i, %.thread480.i.i.i.i ] ; 2 uses
  %i.bxs = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0401.0609.i.i.i.i) #31 ; 2 uses
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxs, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i304.i.i.i.i = load ptr, ptr %i.bxt, align 8, !tbaa !121
  %i.bxu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i304.i.i.i.i, i64 16
  %i.bxv = load ptr, ptr %i.bxu, align 8, !tbaa !122
  %i.bxw = icmp eq ptr %i.bxv, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM8SelectOpEvE2idE
  br i1 %i.bxw, label %.loopexit550.i.i.i.i, label %bb.iu

.loopexit550.i.i.i.i:                             ; preds = %.lr.ph610.i.i.i.i
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxs, i64 72
  %i.bxy = load ptr, ptr %i.bxx, align 8, !tbaa !220
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxy, i64 56
  %.sroa.0.0.copyload.i.i.i.i307.i.i.i.i = load ptr, ptr %i.bxz, align 8, !tbaa !222
  %i.bya = call fastcc noundef ptr @"_ZZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationEENK3$_2clENS_5ValueE"(ptr noundef nonnull align 8 dereferenceable(24) %368, ptr %.sroa.0.0.copyload.i.i.i.i307.i.i.i.i) ; 2 uses
  %.not275.i.i.i.i = icmp eq ptr %i.bya, null
  br i1 %.not275.i.i.i.i, label %.loopexit550.thread.i.i.i.i, label %switch.lookup2754

.loopexit550.thread.i.i.i.i:                      ; preds = %bb.iu, %.loopexit550.i.i.i.i, %.thread480.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %373) #31
  %i.byb = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bgl) #31
  store ptr %i.byb, ptr %373, align 8
  %i.byc = call { ptr, i64 } @_ZN4mlir3omp7YieldOp10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %373)
  %i.byd = extractvalue { ptr, i64 } %i.byc, 1
  %i.bye = icmp eq i64 %i.byd, 0
  br i1 %i.bye, label %.thread487.i.i.i.i, label %bb.iv

.thread487.i.i.i.i:                               ; preds = %.loopexit550.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %374) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %375) #31
  %i.byf = getelementptr inbounds nuw i8, ptr %375, i64 32
  %i.byg = getelementptr inbounds nuw i8, ptr %375, i64 33
  store i8 1, ptr %i.byg, align 1, !tbaa !142
  store ptr @.str.97, ptr %375, align 8, !tbaa !105
  store i8 3, ptr %i.byf, align 8, !tbaa !141
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %374, ptr noundef nonnull align 8 dereferenceable(8) %362, ptr noundef nonnull align 8 dereferenceable(34) %375) #31
  %i.byh = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %374) #31
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %374) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %375) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %374) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %373) #31
  br label %bb.kd

bb.iv:                                            ; preds = %.loopexit550.thread.i.i.i.i
  %i.byi = call { ptr, i64 } @_ZN4mlir3omp7YieldOp10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %373)
  %i.byj = extractvalue { ptr, i64 } %i.byi, 0
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byj, i64 24
  %.sroa.0.0.copyload.i.i.i308.i.i.i.i = load ptr, ptr %i.byk, align 8, !tbaa !222
  %i.byl = call fastcc noundef ptr @"_ZZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationEENK3$_2clENS_5ValueE"(ptr noundef nonnull align 8 dereferenceable(24) %368, ptr %.sroa.0.0.copyload.i.i.i308.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %373) #31
  br label %switch.lookup2754

switch.lookup2754:                                ; preds = %bb.iv, %.loopexit550.i.i.i.i
  %.4235.i.i.i.i = phi ptr [ %i.bya, %.loopexit550.i.i.i.i ], [ %i.byl, %bb.iv ]
  %i.bym = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.byn = load ptr, ptr %i.bym, align 8, !tbaa !187
  %i.byo = call noundef ptr @_ZNK4llvm10BasicBlock9getModuleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.byn) #31
  %i.byp = getelementptr inbounds nuw i8, ptr %i.byo, i64 296 ; 3 uses
  %i.byq = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.byp, ptr noundef nonnull %i.bgr)
  %.fca.0.extract.i.i.i.i.i = extractvalue { i64, i8 } %i.byq, 0
  %i.byr = trunc i64 %.fca.0.extract.i.i.i.i.i to i32
  %i.bys = add i32 %i.byr, 7
  %i.byt = and i32 %i.bys, -8
  %i.byu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.byv = load ptr, ptr %i.byu, align 8, !tbaa !234, !nonnull !119, !align !235
  %i.byw = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.byv, i32 noundef %i.byt) #31 ; 3 uses
  %i.byx = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.byp, ptr noundef nonnull %i.bgr) #31
  %i.byy = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.byp, ptr noundef %i.byw) #31
  %.sroa.066.0.copyload.sroa.speculated.i.i.i.i = call i8 @llvm.umax.i8(i8 %i.byx, i8 %i.byy) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %376) #31
  %i.byz = getelementptr inbounds nuw i8, ptr %376, i64 32
  %i.bza = getelementptr inbounds nuw i8, ptr %376, i64 33
  store i8 1, ptr %i.bza, align 1, !tbaa !142
  store ptr @.str.98, ptr %376, align 8, !tbaa !105
  store i8 3, ptr %i.byz, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %359)
  %i.bzb = load ptr, ptr %i.bym, align 8, !tbaa !187
  %i.bzc = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bzb) #31 ; 2 uses
  %i.bzd = call i8 @_ZNK4llvm10DataLayout16getPrefTypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.bzc, ptr noundef nonnull %i.bgr) #31
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bzc, i64 4
  %i.bzf = load i32, ptr %i.bze, align 4, !tbaa !353
  %i.bzg = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #31 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %358) #31
  %i.bzh = getelementptr inbounds nuw i8, ptr %358, i64 32
  store i16 257, ptr %i.bzh, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %359, i8 0, i64 16, i1 false)
  call void @_ZN4llvm10AllocaInstC1EPNS_4TypeEjPNS_5ValueENS_5AlignERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(80) %i.bzg, ptr noundef nonnull %i.bgr, i32 noundef %i.bzf, ptr noundef null, i8 %i.bzd, ptr noundef nonnull align 8 dereferenceable(34) %358, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %359) #31
  %i.bzi = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bzj = load ptr, ptr %i.bzi, align 8, !tbaa !354, !nonnull !119, !align !235 ; 2 uses
  %i.bzk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i312.i.i.i.i = load ptr, ptr %i.bzk, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8
  %i.bzl = load ptr, ptr %i.bzj, align 8, !tbaa !72
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzl, i64 16
  %i.bzn = load ptr, ptr %i.bzm, align 8
  call void %i.bzn(ptr noundef nonnull align 8 dereferenceable(8) %i.bzj, ptr noundef nonnull %i.bzg, ptr noundef nonnull align 8 dereferenceable(34) %376, ptr %.sroa.0.0.copyload.i.i312.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i.i) #31, !inline_history !1001
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %i.bzg) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %358) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %359)
  call void @llvm.lifetime.end.p0(ptr nonnull %376) #31
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzg, i64 2 ; 2 uses
  %i.bzp = load i16, ptr %i.bzo, align 2, !tbaa !358
  %i.bzq = and i16 %i.bzp, -64
  %i.bzr = and i8 %.sroa.066.0.copyload.sroa.speculated.i.i.i.i, 63
  %i.bzs = zext nneg i8 %i.bzr to i16             ; 2 uses
  %i.bzt = or disjoint i16 %i.bzq, %i.bzs
  store i16 %i.bzt, ptr %i.bzo, align 2, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %377) #31
  %i.bzu = getelementptr inbounds nuw i8, ptr %377, i64 32
  %i.bzv = getelementptr inbounds nuw i8, ptr %377, i64 33
  store i8 1, ptr %i.bzv, align 1, !tbaa !142
  store ptr @.str.99, ptr %377, align 8, !tbaa !105
  store i8 3, ptr %i.bzu, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %357)
  %i.bzw = load ptr, ptr %i.bym, align 8, !tbaa !187
  %i.bzx = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bzw) #31 ; 2 uses
  %i.bzy = call i8 @_ZNK4llvm10DataLayout16getPrefTypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.bzx, ptr noundef nonnull %i.bgr) #31
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzx, i64 4
  %i.caa = load i32, ptr %i.bzz, align 4, !tbaa !353
  %i.cab = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #31 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %356) #31
  %i.cac = getelementptr inbounds nuw i8, ptr %356, i64 32
  store i16 257, ptr %i.cac, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %357, i8 0, i64 16, i1 false)
  call void @_ZN4llvm10AllocaInstC1EPNS_4TypeEjPNS_5ValueENS_5AlignERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(80) %i.cab, ptr noundef nonnull %i.bgr, i32 noundef %i.caa, ptr noundef null, i8 %i.bzy, ptr noundef nonnull align 8 dereferenceable(34) %356, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %357) #31
  %i.cad = load ptr, ptr %i.bzi, align 8, !tbaa !354, !nonnull !119, !align !235 ; 2 uses
  %.sroa.0.0.copyload.i.i313.i.i.i.i = load ptr, ptr %i.bzk, align 8
  %.sroa.2.0.copyload.i.i315.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !72
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cae, i64 16
  %i.cag = load ptr, ptr %i.caf, align 8
  call void %i.cag(ptr noundef nonnull align 8 dereferenceable(8) %i.cad, ptr noundef nonnull %i.cab, ptr noundef nonnull align 8 dereferenceable(34) %377, ptr %.sroa.0.0.copyload.i.i313.i.i.i.i, i64 %.sroa.2.0.copyload.i.i315.i.i.i.i) #31, !inline_history !1001
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %i.cab) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %356) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %357)
  call void @llvm.lifetime.end.p0(ptr nonnull %377) #31
  %i.cah = getelementptr inbounds nuw i8, ptr %i.cab, i64 2 ; 2 uses
  %i.cai = load i16, ptr %i.cah, align 2, !tbaa !358
  %i.caj = and i16 %i.cai, -64
  %i.cak = or disjoint i16 %i.caj, %i.bzs
  store i16 %i.cak, ptr %i.cah, align 2, !tbaa !358
  %.sroa.0386.0.insert.ext.i.i.i.i = zext i8 %.sroa.066.0.copyload.sroa.speculated.i.i.i.i to i16
  %.sroa.0386.0.insert.insert.i.i.i.i = or disjoint i16 %.sroa.0386.0.insert.ext.i.i.i.i, 256 ; 5 uses
  %i.cal = call noundef ptr @_ZN4llvm13IRBuilderBase18CreateAlignedStoreEPNS_5ValueES2_NS_10MaybeAlignEb(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %i.bxh, ptr noundef nonnull %i.bzg, i16 %.sroa.0386.0.insert.insert.i.i.i.i, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %355) #31
  %i.cam = getelementptr inbounds nuw i8, ptr %355, i64 33
  store i8 1, ptr %i.cam, align 1, !tbaa !142
  store ptr @.str.100, ptr %355, align 8, !tbaa !105
  %i.can = getelementptr inbounds nuw i8, ptr %355, i64 32
  store i8 3, ptr %i.can, align 8, !tbaa !141
  %i.cao = call noundef ptr @_ZN4llvm13IRBuilderBase17CreateAlignedLoadEPNS_4TypeEPNS_5ValueENS_10MaybeAlignEbRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %i.byw, ptr noundef nonnull %i.bzg, i16 %.sroa.0386.0.insert.insert.i.i.i.i, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %355)
  call void @llvm.lifetime.end.p0(ptr nonnull %355) #31
  %i.cap = call noundef ptr @_ZN4llvm13IRBuilderBase18CreateAlignedStoreEPNS_5ValueES2_NS_10MaybeAlignEb(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %.4235.i.i.i.i, ptr noundef nonnull %i.cab, i16 %.sroa.0386.0.insert.insert.i.i.i.i, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %354) #31
  %i.caq = getelementptr inbounds nuw i8, ptr %354, i64 33
  store i8 1, ptr %i.caq, align 1, !tbaa !142
  store ptr @.str.101, ptr %354, align 8, !tbaa !105
  %i.car = getelementptr inbounds nuw i8, ptr %354, i64 32
  store i8 3, ptr %i.car, align 8, !tbaa !141
  %i.cas = call noundef ptr @_ZN4llvm13IRBuilderBase17CreateAlignedLoadEPNS_4TypeEPNS_5ValueENS_10MaybeAlignEbRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %i.byw, ptr noundef nonnull %i.cab, i16 %.sroa.0386.0.insert.insert.i.i.i.i, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(34) %354)
  call void @llvm.lifetime.end.p0(ptr nonnull %354) #31
  %i.cat = zext nneg i32 %.0.i.i.i.i.i467 to i64
  %i.cau = getelementptr i8, ptr @switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.662, i64 %i.cat
  %switch.gep2755 = getelementptr i8, ptr %i.cau, i64 -2
  %switch.load2756 = load i8, ptr %switch.gep2755, align 1
  %switch.ext2757 = zext i8 %switch.load2756 to i32
  %i.cav = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateAtomicCmpXchgEPNS_5ValueES2_S2_NS_10MaybeAlignENS_14AtomicOrderingES4_h(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %i.bis, ptr noundef %i.cao, ptr noundef %i.cas, i16 %.sroa.0386.0.insert.insert.i.i.i.i, i32 noundef %.0.i.i.i.i.i467, i32 noundef %switch.ext2757, i8 noundef zeroext 1)
  %i.caw = call noundef zeroext i1 @_ZN4mlir3omp15AtomicCompareOp7getWeakEv(ptr noundef nonnull align 8 dereferenceable(8) %362) #31
  %i.cax = getelementptr inbounds nuw i8, ptr %i.cav, i64 2 ; 2 uses
  %i.cay = load i16, ptr %i.cax, align 2, !tbaa !358
  %i.caz = and i16 %i.cay, -3
  %i.cba = select i1 %i.caw, i16 2, i16 0
  %i.cbb = or disjoint i16 %i.caz, %i.cba
  store i16 %i.cbb, ptr %i.cax, align 2, !tbaa !358
  %i.cbc = add nsw i32 %.0.i.i.i.i.i467, -5
  %or.cond21.i.i.i.i = icmp ult i32 %i.cbc, 3
  br i1 %or.cond21.i.i.i.i, label %bb.iw, label %bb.kd

bb.iw:                                            ; preds = %switch.lookup2754
  call void @llvm.lifetime.start.p0(ptr nonnull %378) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %.sroa.2.0.copyload.i.i.i.i.i.i.i486 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1447
  %.sroa.22.8.insert.ext.i.i.i.i.i.i487 = and i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i486, 65535
  %i.cbd = load <2 x ptr>, ptr %i.bym, align 8, !noalias !1447
  store <2 x ptr> %i.cbd, ptr %378, align 16, !alias.scope !1447
  %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i488 = getelementptr inbounds nuw i8, ptr %378, i64 16
  store i64 %.sroa.22.8.insert.ext.i.i.i.i.i.i487, ptr %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i488, align 16, !alias.scope !1447
  %i.cbe = getelementptr inbounds nuw i8, ptr %378, i64 24
  %i.cbf = call ptr @_ZNK4llvm13IRBuilderBase23getCurrentDebugLocationEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #31
  store ptr %i.cbf, ptr %i.cbe, align 8
  call void @_ZN4llvm15OpenMPIRBuilder11createFlushERKNS0_19LocationDescriptionE(ptr noundef nonnull align 8 dereferenceable(1864) %i.bfq, ptr noundef nonnull align 8 dereferenceable(32) %378) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %378) #31
  br label %bb.kd

.lr.ph619.i.i.i.i:                                ; preds = %.preheader549.i.i.i.i, %bb.jp
  %.sroa.0376.0618.i.i.i.i = phi ptr [ %.sroa.0376.0.i.i.i.i, %bb.jp ], [ %.sroa.0376.0611.i.i.i.i, %.preheader549.i.i.i.i ] ; 2 uses
  %.0198617.i.i.i.i = phi i8 [ %.3201.ph.i.i.i.i, %bb.jp ], [ 0, %.preheader549.i.i.i.i ]
  %.6209616.i.i.i.i = phi i32 [ %.12215.ph.i.i.i.i, %bb.jp ], [ 0, %.preheader549.i.i.i.i ] ; 2 uses
  %.6223615.i.i.i.i = phi ptr [ %.12229.ph.i.i.i.i, %bb.jp ], [ null, %.preheader549.i.i.i.i ] ; 2 uses
  %.5236614.i.i.i.i = phi ptr [ %.10241.ph.i.i.i.i, %bb.jp ], [ null, %.preheader549.i.i.i.i ] ; 4 uses
  %.6254613.i.i.i.i = phi i1 [ %.12260.ph.i.i.i.i, %bb.jp ], [ false, %.preheader549.i.i.i.i ] ; 2 uses
  %i.cbg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0376.0618.i.i.i.i) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %379) #31
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.cbg, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i318.i.i.i.i = load ptr, ptr %i.cbh, align 8, !tbaa !121
  %i.cbi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i318.i.i.i.i, i64 16
  %i.cbj = load ptr, ptr %i.cbi, align 8, !tbaa !122 ; 3 uses
  %i.cbk = icmp eq ptr %i.cbj, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM6ICmpOpEvE2idE ; 2 uses
  %spec.select.i.i319.i.i.i.i = select i1 %i.cbk, ptr %i.cbg, ptr null
  store ptr %spec.select.i.i319.i.i.i.i, ptr %379, align 8
  br i1 %i.cbk, label %bb.ix, label %bb.je

bb.ix:                                            ; preds = %.lr.ph619.i.i.i.i
  %i.cbl = call noundef i64 @_ZN4mlir4LLVM6ICmpOp12getPredicateEv(ptr noundef nonnull align 8 dereferenceable(8) %379) #31 ; 3 uses
  %i.cbm = icmp ult i64 %i.cbl, 9
  %switch.maskindex = trunc i64 %i.cbl to i16
  %switch.shifted = lshr i16 341, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond2763 = select i1 %i.cbm, i1 %switch.lobit, i1 false
  br i1 %or.cond2763, label %switch.lookup2759, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %380) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %381) #31
  %i.cbn = getelementptr inbounds nuw i8, ptr %381, i64 32
  %i.cbo = getelementptr inbounds nuw i8, ptr %381, i64 33
  store i8 1, ptr %i.cbo, align 1, !tbaa !142
  store ptr @.str.102, ptr %381, align 8, !tbaa !105
  store i8 3, ptr %i.cbn, align 8, !tbaa !141
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %380, ptr noundef nonnull align 8 dereferenceable(8) %362, ptr noundef nonnull align 8 dereferenceable(34) %381) #31
  %i.cbp = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %380) #31
  %i.cbq = load ptr, ptr %380, align 8, !tbaa !150
  %.not.i320.i.i.i.i = icmp eq ptr %i.cbq, null
  br i1 %.not.i320.i.i.i.i, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %380) #31
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.cbr = getelementptr inbounds nuw i8, ptr %380, i64 200 ; 2 uses
  %i.cbs = load i8, ptr %i.cbr, align 8, !tbaa !156, !range !118, !noundef !119
  %i.cbt = trunc nuw i8 %i.cbs to i1
  store i8 0, ptr %i.cbr, align 8, !tbaa !156
  br i1 %i.cbt, label %bb.jb, label %bb.jd

bb.jb:                                            ; preds = %bb.ja
  %i.cbu = getelementptr inbounds nuw i8, ptr %380, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cbu) #31
  br label %bb.jd

switch.lookup2759:                                ; preds = %bb.ix
  %switch.gep2760 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.663, i64 %i.cbl
  %switch.load2761 = load i8, ptr %switch.gep2760, align 1
  %switch.ext2762 = zext i8 %switch.load2761 to i32
  %i.cbv = call noundef i64 @_ZN4mlir4LLVM6ICmpOp12getPredicateEv(ptr noundef nonnull align 8 dereferenceable(8) %379) #31
  %i.cbw = add i64 %i.cbv, -2
  %narrow.i.i.i.i = icmp ult i64 %i.cbw, 4
  %i.cbx = zext i1 %narrow.i.i.i.i to i8
  %i.cby = load ptr, ptr %379, align 8, !tbaa !195
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cby, i64 72
  %i.cca = load ptr, ptr %i.cbz, align 8, !tbaa !220 ; 2 uses
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cca, i64 24
  %.sroa.0.0.copyload.i.i.i322.i.i.i.i = load ptr, ptr %i.ccb, align 8, !tbaa !222 ; 2 uses
  %i.ccc = load ptr, ptr %i.bgm, align 8, !tbaa !348
  %.sroa.0.0.copyload.i323.i.i.i.i = load ptr, ptr %i.ccc, align 8
  %i.ccd = icmp eq ptr %.sroa.0.0.copyload.i.i.i322.i.i.i.i, %.sroa.0.0.copyload.i323.i.i.i.i ; 2 uses
  br i1 %i.ccd, label %bb.jc, label %.thread495.i.i.i.i

bb.jc:                                            ; preds = %switch.lookup2759
  %i.cce = getelementptr inbounds nuw i8, ptr %i.cca, i64 56
  %.sroa.0.0.copyload.i.i.i324.i.i.i.i = load ptr, ptr %i.cce, align 8, !tbaa !222
  br label %.thread495.i.i.i.i

.thread495.i.i.i.i:                               ; preds = %bb.jc, %switch.lookup2759
  %.sroa.039.0.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i324.i.i.i.i, %bb.jc ], [ %.sroa.0.0.copyload.i.i.i322.i.i.i.i, %switch.lookup2759 ]
  %i.ccf = call fastcc noundef ptr @"_ZZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationEENK3$_2clENS_5ValueE"(ptr noundef nonnull align 8 dereferenceable(24) %368, ptr %.sroa.039.0.i.i.i.i)
  br label %bb.jp

bb.jd:                                            ; preds = %bb.jb, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %381) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %380) #31
  br label %.thread529.i.i.i.i

bb.je:                                            ; preds = %.lr.ph619.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %382) #31
  %i.ccg = icmp eq ptr %i.cbj, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM6FCmpOpEvE2idE ; 2 uses
  %spec.select.i.i327.i.i.i.i = select i1 %i.ccg, ptr %i.cbg, ptr null
  store ptr %spec.select.i.i327.i.i.i.i, ptr %382, align 8
  br i1 %i.ccg, label %bb.jf, label %bb.jm

bb.jf:                                            ; preds = %bb.je
  %i.cch = call noundef i64 @_ZN4mlir4LLVM6FCmpOp12getPredicateEv(ptr noundef nonnull align 8 dereferenceable(8) %382) #31
  %switch.tableidx2764 = add i64 %i.cch, -1       ; 3 uses
  %i.cci = icmp ult i64 %switch.tableidx2764, 11
  %switch.maskindex2767 = trunc i64 %switch.tableidx2764 to i16
  %switch.shifted2768 = lshr i16 1419, %switch.maskindex2767
  %switch.lobit2769 = trunc i16 %switch.shifted2768 to i1
  %or.cond2773 = select i1 %i.cci, i1 %switch.lobit2769, i1 false
  br i1 %or.cond2773, label %switch.lookup2766, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %383) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %384) #31
  %i.ccj = getelementptr inbounds nuw i8, ptr %384, i64 32
  %i.cck = getelementptr inbounds nuw i8, ptr %384, i64 33
  store i8 1, ptr %i.cck, align 1, !tbaa !142
  store ptr @.str.102, ptr %384, align 8, !tbaa !105
  store i8 3, ptr %i.ccj, align 8, !tbaa !141
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %383, ptr noundef nonnull align 8 dereferenceable(8) %362, ptr noundef nonnull align 8 dereferenceable(34) %384) #31
  %i.ccl = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %383) #31
  %i.ccm = load ptr, ptr %383, align 8, !tbaa !150
  %.not.i329.i.i.i.i = icmp eq ptr %i.ccm, null
  br i1 %.not.i329.i.i.i.i, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %383) #31
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %i.ccn = getelementptr inbounds nuw i8, ptr %383, i64 200 ; 2 uses
  %i.cco = load i8, ptr %i.ccn, align 8, !tbaa !156, !range !118, !noundef !119
  %i.ccp = trunc nuw i8 %i.cco to i1
  store i8 0, ptr %i.ccn, align 8, !tbaa !156
  br i1 %i.ccp, label %bb.jj, label %bb.jo

bb.jj:                                            ; preds = %bb.ji
  %i.ccq = getelementptr inbounds nuw i8, ptr %383, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ccq) #31
  br label %bb.jo

switch.lookup2766:                                ; preds = %bb.jf
  %switch.gep2770 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.664, i64 %switch.tableidx2764
  %switch.load2771 = load i8, ptr %switch.gep2770, align 1
  %switch.ext2772 = zext i8 %switch.load2771 to i32
  %i.ccr = load ptr, ptr %382, align 8, !tbaa !195
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccr, i64 72
  %i.cct = load ptr, ptr %i.ccs, align 8, !tbaa !220 ; 2 uses
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cct, i64 24
  %.sroa.0.0.copyload.i.i.i331.i.i.i.i = load ptr, ptr %i.ccu, align 8, !tbaa !222 ; 2 uses
  %i.ccv = load ptr, ptr %i.bgm, align 8, !tbaa !348
  %.sroa.0.0.copyload.i332.i.i.i.i = load ptr, ptr %i.ccv, align 8
  %i.ccw = icmp eq ptr %.sroa.0.0.copyload.i.i.i331.i.i.i.i, %.sroa.0.0.copyload.i332.i.i.i.i ; 2 uses
  br i1 %i.ccw, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %switch.lookup2766
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.cct, i64 56
  %.sroa.0.0.copyload.i.i.i333.i.i.i.i = load ptr, ptr %i.ccx, align 8, !tbaa !222
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %switch.lookup2766
  %.sroa.037.0.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i333.i.i.i.i, %bb.jk ], [ %.sroa.0.0.copyload.i.i.i331.i.i.i.i, %switch.lookup2766 ]
  %i.ccy = call fastcc noundef ptr @"_ZZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationEENK3$_2clENS_5ValueE"(ptr noundef nonnull align 8 dereferenceable(24) %368, ptr %.sroa.037.0.i.i.i.i)
  br label %.thread507.i.i.i.i

bb.jm:                                            ; preds = %bb.je
  %i.ccz = icmp eq ptr %i.cbj, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM8SelectOpEvE2idE
  %i.cda = icmp eq ptr %.5236614.i.i.i.i, null
  %or.cond29.not.i.i.i.i = select i1 %i.ccz, i1 %i.cda, i1 false
  br i1 %or.cond29.not.i.i.i.i, label %bb.jn, label %.thread507.i.i.i.i

bb.jn:                                            ; preds = %bb.jm
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.cbg, i64 72
  %i.cdc = load ptr, ptr %i.cdb, align 8, !tbaa !220
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.cdc, i64 56
  %.sroa.0.0.copyload.i.i.i.i338.i.i.i.i = load ptr, ptr %i.cdd, align 8, !tbaa !222
  %i.cde = call fastcc noundef ptr @"_ZZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationEENK3$_2clENS_5ValueE"(ptr noundef nonnull align 8 dereferenceable(24) %368, ptr %.sroa.0.0.copyload.i.i.i.i338.i.i.i.i)
  br label %.thread507.i.i.i.i

.thread507.i.i.i.i:                               ; preds = %bb.jn, %bb.jm, %bb.jl
  %.10258.ph.i.i.i.i = phi i1 [ %.6254613.i.i.i.i, %bb.jm ], [ %.6254613.i.i.i.i, %bb.jn ], [ %i.ccw, %bb.jl ]
  %.8239.ph.i.i.i.i = phi ptr [ %.5236614.i.i.i.i, %bb.jm ], [ %i.cde, %bb.jn ], [ %.5236614.i.i.i.i, %bb.jl ]
  %.10227.ph.i.i.i.i = phi ptr [ %.6223615.i.i.i.i, %bb.jm ], [ %.6223615.i.i.i.i, %bb.jn ], [ %i.ccy, %bb.jl ]
  %.10213.ph.i.i.i.i = phi i32 [ %.6209616.i.i.i.i, %bb.jm ], [ %.6209616.i.i.i.i, %bb.jn ], [ %switch.ext2772, %bb.jl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %382) #31
  br label %bb.jp

bb.jo:                                            ; preds = %bb.jj, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %384) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %383) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %382) #31
  br label %.thread529.i.i.i.i

.thread529.i.i.i.i:                               ; preds = %bb.jo, %bb.jd
  %.sroa.0197.17.i.i.i.i = phi i8 [ %i.ccl, %bb.jo ], [ %i.cbp, %bb.jd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %379) #31
  br label %bb.kd

bb.jp:                                            ; preds = %.thread507.i.i.i.i, %.thread495.i.i.i.i
  %.12260.ph.i.i.i.i = phi i1 [ %.10258.ph.i.i.i.i, %.thread507.i.i.i.i ], [ %i.ccd, %.thread495.i.i.i.i ] ; 3 uses
  %.10241.ph.i.i.i.i = phi ptr [ %.8239.ph.i.i.i.i, %.thread507.i.i.i.i ], [ %.5236614.i.i.i.i, %.thread495.i.i.i.i ] ; 3 uses
  %.12229.ph.i.i.i.i = phi ptr [ %.10227.ph.i.i.i.i, %.thread507.i.i.i.i ], [ %i.ccf, %.thread495.i.i.i.i ] ; 3 uses
  %.12215.ph.i.i.i.i = phi i32 [ %.10213.ph.i.i.i.i, %.thread507.i.i.i.i ], [ %switch.ext2762, %.thread495.i.i.i.i ] ; 3 uses
  %.3201.ph.i.i.i.i = phi i8 [ %.0198617.i.i.i.i, %.thread507.i.i.i.i ], [ %i.cbx, %.thread495.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %379) #31
  %i.cdf = getelementptr inbounds nuw i8, ptr %.sroa.0376.0618.i.i.i.i, i64 8
  %.sroa.0376.0.i.i.i.i = load ptr, ptr %i.cdf, align 8, !tbaa !343 ; 2 uses
  %.not545.i.i.i.i = icmp eq ptr %.sroa.0376.0.i.i.i.i, %i.bjb
  br i1 %.not545.i.i.i.i, label %._crit_edge.i.i.i.i472, label %.lr.ph619.i.i.i.i

._crit_edge.i.i.i.i472:                           ; preds = %bb.jp
  %.not.i.i.i.i473 = icmp eq ptr %.10241.ph.i.i.i.i, null
  br i1 %.not.i.i.i.i473, label %._crit_edge.i..preheader.i_crit_edge.i.i.i, label %.loopexit.i.i.i.i

._crit_edge.i..preheader.i_crit_edge.i.i.i:       ; preds = %._crit_edge.i.i.i.i472
  %.sroa.0359.0624.i.pre.i.i.i = load ptr, ptr %i.biz, align 8, !tbaa !343
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge.i..preheader.i_crit_edge.i.i.i, %.preheader549.i.i.i.i
  %.sroa.0359.0624.i.i.i.i = phi ptr [ %.sroa.0359.0624.i.pre.i.i.i, %._crit_edge.i..preheader.i_crit_edge.i.i.i ], [ %.sroa.0376.0611.i.i.i.i, %.preheader549.i.i.i.i ] ; 2 uses
  %.0198.lcssa707.i.i.i.i = phi i8 [ %.3201.ph.i.i.i.i, %._crit_edge.i..preheader.i_crit_edge.i.i.i ], [ 0, %.preheader549.i.i.i.i ] ; 3 uses
  %.6209.lcssa705.i.i.i.i = phi i32 [ %.12215.ph.i.i.i.i, %._crit_edge.i..preheader.i_crit_edge.i.i.i ], [ 0, %.preheader549.i.i.i.i ] ; 3 uses
  %.6223.lcssa703.i.i.i.i = phi ptr [ %.12229.ph.i.i.i.i, %._crit_edge.i..preheader.i_crit_edge.i.i.i ], [ null, %.preheader549.i.i.i.i ] ; 3 uses
  %.6254.lcssa701.i.i.i.i = phi i1 [ %.12260.ph.i.i.i.i, %._crit_edge.i..preheader.i_crit_edge.i.i.i ], [ false, %.preheader549.i.i.i.i ] ; 3 uses
  %.not546625.i.i.i.i = icmp eq ptr %.sroa.0359.0624.i.i.i.i, %i.bjb
  br i1 %.not546625.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph627.i.i.i.i

bb.jq:                                            ; preds = %.lr.ph627.i.i.i.i
  %i.cdg = getelementptr inbounds nuw i8, ptr %.sroa.0359.0626.i.i.i.i, i64 8
  %.sroa.0359.0.i.i.i.i = load ptr, ptr %i.cdg, align 8, !tbaa !343 ; 2 uses
  %.not546.i.i.i.i = icmp eq ptr %.sroa.0359.0.i.i.i.i, %i.bjb
  br i1 %.not546.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph627.i.i.i.i

.lr.ph627.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %bb.jq
  %.sroa.0359.0626.i.i.i.i = phi ptr [ %.sroa.0359.0.i.i.i.i, %bb.jq ], [ %.sroa.0359.0624.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.cdh = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0359.0626.i.i.i.i) #31 ; 2 uses
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdh, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i339.i.i.i.i = load ptr, ptr %i.cdi, align 8, !tbaa !121
  %i.cdj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i339.i.i.i.i, i64 16
  %i.cdk = load ptr, ptr %i.cdj, align 8, !tbaa !122
  %i.cdl = icmp eq ptr %i.cdk, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM8SelectOpEvE2idE
  br i1 %i.cdl, label %.thread536.i.i.i.i, label %bb.jq

.thread536.i.i.i.i:                               ; preds = %.lr.ph627.i.i.i.i
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdh, i64 72
  %i.cdn = load ptr, ptr %i.cdm, align 8, !tbaa !220
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.cdn, i64 56
  %.sroa.0.0.copyload.i.i.i.i342.i.i.i.i = load ptr, ptr %i.cdo, align 8, !tbaa !222
  %i.cdp = call fastcc noundef ptr @"_ZZL23convertOmpAtomicCompareN4mlir3omp15AtomicCompareOpERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationEENK3$_2clENS_5ValueE"(ptr noundef nonnull align 8 dereferenceable(24) %368, ptr %.sroa.0.0.copyload.i.i.i.i342.i.i.i.i)
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.jq, %.thread536.i.i.i.i, %.preheader.i.i.i.i, %._crit_edge.i.i.i.i472
  %.0198.lcssa706.i.i.i.i = phi i8 [ %.3201.ph.i.i.i.i, %._crit_edge.i.i.i.i472 ], [ %.0198.lcssa707.i.i.i.i, %.thread536.i.i.i.i ], [ %.0198.lcssa707.i.i.i.i, %.preheader.i.i.i.i ], [ %.0198.lcssa707.i.i.i.i, %bb.jq ]
  %.6209.lcssa704.i.i.i.i = phi i32 [ %.12215.ph.i.i.i.i, %._crit_edge.i.i.i.i472 ], [ %.6209.lcssa705.i.i.i.i, %.thread536.i.i.i.i ], [ %.6209.lcssa705.i.i.i.i, %.preheader.i.i.i.i ], [ %.6209.lcssa705.i.i.i.i, %bb.jq ]
  %.6223.lcssa702.i.i.i.i = phi ptr [ %.12229.ph.i.i.i.i, %._crit_edge.i.i.i.i472 ], [ %.6223.lcssa703.i.i.i.i, %.thread536.i.i.i.i ], [ %.6223.lcssa703.i.i.i.i, %.preheader.i.i.i.i ], [ %.6223.lcssa703.i.i.i.i, %bb.jq ] ; 2 uses
  %.6254.lcssa700.i.i.i.i = phi i1 [ %.12260.ph.i.i.i.i, %._crit_edge.i.i.i.i472 ], [ %.6254.lcssa701.i.i.i.i, %.thread536.i.i.i.i ], [ %.6254.lcssa701.i.i.i.i, %.preheader.i.i.i.i ], [ %.6254.lcssa701.i.i.i.i, %bb.jq ]
  %.15246.i.i.i.i = phi ptr [ %.10241.ph.i.i.i.i, %._crit_edge.i.i.i.i472 ], [ %i.cdp, %.thread536.i.i.i.i ], [ null, %.preheader.i.i.i.i ], [ null, %bb.jq ] ; 2 uses
  %.not273.i.i.i.i = icmp eq ptr %.6223.lcssa702.i.i.i.i, null
  br i1 %.not273.i.i.i.i, label %bb.jr, label %bb.jv

bb.jr:                                            ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %385) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %386) #31
  %i.cdq = getelementptr inbounds nuw i8, ptr %386, i64 32
  %i.cdr = getelementptr inbounds nuw i8, ptr %386, i64 33
  store i8 1, ptr %i.cdr, align 1, !tbaa !142
  store ptr @.str.103, ptr %386, align 8, !tbaa !105
  store i8 3, ptr %i.cdq, align 8, !tbaa !141
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %385, ptr noundef nonnull align 8 dereferenceable(8) %362, ptr noundef nonnull align 8 dereferenceable(34) %386) #31
  %i.cds = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %385) #31
  %i.cdt = load ptr, ptr %385, align 8, !tbaa !150
  %.not.i11.i.i.i = icmp eq ptr %i.cdt, null
  br i1 %.not.i11.i.i.i, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %385) #31
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr
  %i.cdu = getelementptr inbounds nuw i8, ptr %385, i64 200 ; 2 uses
  %i.cdv = load i8, ptr %i.cdu, align 8, !tbaa !156, !range !118, !noundef !119
  %i.cdw = trunc nuw i8 %i.cdv to i1
  store i8 0, ptr %i.cdu, align 8, !tbaa !156
  br i1 %i.cdw, label %bb.ju, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit12.i.i.i

bb.ju:                                            ; preds = %bb.jt
  %i.cdx = getelementptr inbounds nuw i8, ptr %385, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cdx) #31
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit12.i.i.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit12.i.i.i:    ; preds = %bb.ju, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %386) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %385) #31
  br label %bb.kd

bb.jv:                                            ; preds = %.loopexit.i.i.i.i
  %.not274.i.i.i.i = icmp eq ptr %.15246.i.i.i.i, null
  br i1 %.not274.i.i.i.i, label %_ZN4mlir3omp7YieldOp10getResultsEv.exit10.i.i.i, label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i474

_ZN4mlir3omp7YieldOp10getResultsEv.exit10.i.i.i:  ; preds = %bb.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %387) #31
  %i.cdy = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bgl) #31
  store ptr %i.cdy, ptr %387, align 8
  %i.cdz = call i64 @_ZN4mlir3omp7YieldOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %387, i32 noundef 0) #31 ; 3 uses
  %.sroa.5.0.extract.shift.i.i7.i.i.i = lshr i64 %i.cdz, 32
  %i.cea = add i64 %.sroa.5.0.extract.shift.i.i7.i.i.i, %i.cdz
  %i.ceb = xor i64 %i.cea, %i.cdz
  %i.cec = and i64 %i.ceb, 4294967295
  %i.ced = icmp eq i64 %i.cec, 0
  br i1 %i.ced, label %.thread538.i.i.i.i, label %_ZN4mlir3omp7YieldOp10getResultsEv.exit.i.i.i

.thread538.i.i.i.i:                               ; preds = %_ZN4mlir3omp7YieldOp10getResultsEv.exit10.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %388) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %389) #31
  %i.cee = getelementptr inbounds nuw i8, ptr %389, i64 32
  %i.cef = getelementptr inbounds nuw i8, ptr %389, i64 33
  store i8 1, ptr %i.cef, align 1, !tbaa !142
  store ptr @.str.97, ptr %389, align 8, !tbaa !105
  store i8 3, ptr %i.cee, align 8, !tbaa !141
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %388, ptr noundef nonnull align 8 dereferenceable(8) %362, ptr noundef nonnull align 8 dereferenceable(34) %389) #31
  %i.ceg = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %388) #31
  %i.ceh = load ptr, ptr %388, align 8, !tbaa !150
  %.not.i4.i.i.i = icmp eq ptr %i.ceh, null
  br i1 %.not.i4.i.i.i, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %.thread538.i.i.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %388) #31
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %.thread538.i.i.i.i
  %i.cei = getelementptr inbounds nuw i8, ptr %388, i64 200 ; 2 uses
  %i.cej = load i8, ptr %i.cei, align 8, !tbaa !156, !range !118, !noundef !119
  %i.cek = trunc nuw i8 %i.cej to i1
  store i8 0, ptr %i.cei, align 8, !tbaa !156
  br i1 %i.cek, label %bb.jy, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i

bb.jy:                                            ; preds = %bb.jx
  %i.cel = getelementptr inbounds nuw i8, ptr %388, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cel) #31
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i:      ; preds = %bb.jy, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %389) #31
end_hunk_4
begin_hunk_5_@_ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE:bb.a
  store ptr %i.cex, ptr %i.cew, align 8
  %i.cey = call noundef zeroext i1 @_ZN4mlir3omp15AtomicCompareOp7getWeakEv(ptr noundef nonnull align 8 dereferenceable(8) %362) #31
  %i.cez = getelementptr inbounds nuw i8, ptr %i.bfq, i64 1825 ; 3 uses
  %i.cfa = load i8, ptr %i.cez, align 1, !tbaa !1449, !range !118, !noundef !119
  store i8 1, ptr %i.cez, align 1, !tbaa !1449
  call void @llvm.lifetime.start.p0(ptr nonnull %393) #31
  call void @_ZN4llvm15OpenMPIRBuilder19createAtomicCompareERKNS0_19LocationDescriptionERNS0_13AtomicOpValueES5_S5_PNS_5ValueES7_NS_14AtomicOrderingENS_3omp18OMPAtomicCompareOpEbbbb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IRBuilderBase::InsertPoint") align 8 %393, ptr noundef nonnull align 8 dereferenceable(1864) %i.bfq, ptr noundef nonnull align 8 dereferenceable(32) %392, ptr noundef nonnull align 8 dereferenceable(18) %365, ptr noundef nonnull align 8 dereferenceable(18) %390, ptr noundef nonnull align 8 dereferenceable(18) %391, ptr noundef nonnull %.6223.lcssa702.i.i.i.i, ptr noundef %.17.i.i.i.i, i32 noundef %.0.i.i.i.i.i467, i32 noundef %.6209.lcssa704.i.i.i.i, i1 noundef zeroext %.6254.lcssa700.i.i.i.i, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext %i.cey) #31
  %i.cfb = getelementptr inbounds nuw i8, ptr %393, i64 24 ; 3 uses
  %i.cfc = load i8, ptr %i.cfb, align 8
  %i.cfd = and i8 %i.cfc, -2                      ; 3 uses
  store i8 %i.cfd, ptr %i.cfb, align 8
  store i8 %i.cfa, ptr %i.cez, align 1, !tbaa !1449
  %.sroa.0431.0.copyload.i.i.i.i = load ptr, ptr %393, align 8 ; 3 uses
  %.sroa.2432.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %393, i64 8
  %.sroa.2432.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2432.0..sroa_idx.i.i.i.i, align 8 ; 3 uses
  %.not.i349.i.i.i.i = icmp eq ptr %.sroa.0431.0.copyload.i.i.i.i, null
  br i1 %.not.i349.i.i.i.i, label %bb.kb, label %bb.jz

bb.jz:                                            ; preds = %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i474
  %i.cfe = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3433.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %393, i64 16
  %.sroa.3433.0.copyload.i.i.i.i = load i64, ptr %.sroa.3433.0..sroa_idx.i.i.i.i, align 8
  store ptr %.sroa.0431.0.copyload.i.i.i.i, ptr %i.ceu, align 8, !tbaa !187
  store ptr %.sroa.2432.0.copyload.i.i.i.i, ptr %i.cfe, align 8
  %.sroa.45.0.extract.trunc.i.i.i.i.i.i475 = trunc i64 %.sroa.3433.0.copyload.i.i.i.i to i16
  store i16 %.sroa.45.0.extract.trunc.i.i.i.i.i.i475, ptr %.sroa.2.0..sroa_idx.i.i.i345.i.i.i.i, align 8
  %i.cff = getelementptr inbounds nuw i8, ptr %.sroa.0431.0.copyload.i.i.i.i, i64 48
  %.not.i.i353.i.i.i.i = icmp eq ptr %.sroa.2432.0.copyload.i.i.i.i, %i.cff
  br i1 %.not.i.i353.i.i.i.i, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i477, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.cfg = getelementptr inbounds i8, ptr %.sroa.2432.0.copyload.i.i.i.i, i64 -24
  %i.cfh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cfg) #31
  %i.cfi = load i64, ptr %i.cfh, align 8, !tbaa !188
  store i64 %i.cfi, ptr %2, align 8, !tbaa !188
  %.pre.i.i.i476 = load i8, ptr %i.cfb, align 8
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i477

bb.kb:                                            ; preds = %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i474
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ceu, i8 0, i64 18, i1 false)
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i477

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i477: ; preds = %bb.kb, %bb.ka, %bb.jz
  %i.cfj = phi i8 [ %i.cfd, %bb.kb ], [ %.pre.i.i.i476, %bb.ka ], [ %i.cfd, %bb.jz ]
  %i.cfk = trunc i8 %i.cfj to i1
  br i1 %i.cfk, label %bb.kc, label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i478

bb.kc:                                            ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i477
  %i.cfl = load ptr, ptr %393, align 8, !tbaa !171 ; 3 uses
  %.not.i.i354.i.i.i.i = icmp eq ptr %i.cfl, null
  br i1 %.not.i.i354.i.i.i.i, label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i478, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i479

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i479: ; preds = %bb.kc
  %i.cfm = load ptr, ptr %i.cfl, align 8, !tbaa !72
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8
  %i.cfo = load ptr, ptr %i.cfn, align 8
  call void %i.cfo(ptr noundef nonnull align 8 dereferenceable(8) %i.cfl) #31, !inline_history !1006
  br label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i478

_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i478: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i479, %bb.kc, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i477
  call void @llvm.lifetime.end.p0(ptr nonnull %393) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %392) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %391) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %390) #31
  br label %bb.kd

bb.kd:                                            ; preds = %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i478, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit12.i.i.i, %.thread529.i.i.i.i, %bb.iw, %switch.lookup2754, %.thread487.i.i.i.i, %bb.it
  %.sroa.0197.21.i.i.i.i = phi i8 [ %i.bxk, %bb.it ], [ %i.byh, %.thread487.i.i.i.i ], [ 1, %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i478 ], [ %i.ceg, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i ], [ %i.cds, %_ZN4mlir18InFlightDiagnosticD2Ev.exit12.i.i.i ], [ %.sroa.0197.17.i.i.i.i, %.thread529.i.i.i.i ], [ 1, %switch.lookup2754 ], [ 1, %bb.iw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %368) #31
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.ig
  %.sroa.0197.22.i.i.i.i = phi i8 [ %.sroa.0197.21.i.i.i.i, %bb.kd ], [ %i.buz, %bb.ig ]
  call void @llvm.lifetime.end.p0(ptr nonnull %365) #31
  br label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_15clENS1_3omp15AtomicCompareOpE.exit.i.i"

"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_15clENS1_3omp15AtomicCompareOpE.exit.i.i": ; preds = %bb.ke, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i, %bb.gy
  %.sroa.0197.24.i.i.i.i = phi i8 [ %i.bgu, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i ], [ %.sroa.0197.22.i.i.i.i, %bb.ke ], [ 0, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %362)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE4$_47EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_15EERS7_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_14EERS7_OT_.exit"
  %i.cfp = icmp ne ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_3omp8CancelOpEvE2idE
  %.not.i.i497 = or i1 %.not.i14915771580, %i.cfp
  br i1 %.not.i.i497, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_16EERS7_OT_.exit", label %bb.kf

bb.kf:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_15EERS7_OT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %351)
  store ptr %1, ptr %351, align 8
  %i.cfq = call fastcc i8 @_ZL25checkImplementationStatusRN4mlir9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.cfr = trunc nuw i8 %i.cfq to i1
  br i1 %i.cfr, label %bb.kg, label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_16clENS1_3omp8CancelOpE.exit.i.i"

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %352) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  %i.cfs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cft = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i500 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i501 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i500, align 8, !noalias !1450
  %.sroa.22.8.insert.ext.i.i.i.i.i.i502 = and i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i501, 65535
  %i.cfu = load <2 x ptr>, ptr %i.cfs, align 8, !noalias !1450
  store <2 x ptr> %i.cfu, ptr %352, align 16, !alias.scope !1450
  %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i503 = getelementptr inbounds nuw i8, ptr %352, i64 16
  store i64 %.sroa.22.8.insert.ext.i.i.i.i.i.i502, ptr %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i503, align 16, !alias.scope !1450
  %i.cfv = getelementptr inbounds nuw i8, ptr %352, i64 24
  %i.cfw = call ptr @_ZNK4llvm13IRBuilderBase23getCurrentDebugLocationEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #31
  store ptr %i.cfw, ptr %i.cfv, align 8
  %i.cfx = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation16getOpenMPBuilderEv(ptr noundef nonnull align 8 dereferenceable(592) %3) #31
  %i.cfy = call i64 @_ZN4mlir3omp8CancelOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %351, i32 noundef 0) #31 ; 3 uses
  %i.cfz = load ptr, ptr %351, align 8, !tbaa !195 ; 2 uses
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cfz, i64 44
  %i.cgb = load i32, ptr %i.cga, align 4
  %i.cgc = and i32 %i.cgb, 8388608
  %.not.i.i.i.i.i.i.i.i.i504 = icmp eq i32 %i.cgc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i504, label %_ZN4mlir3omp8CancelOp14getODSOperandsEj.exit.i.i.i.i.i, label %bb.kh, !prof !165

bb.kh:                                            ; preds = %bb.kg
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.cfz, i64 72
  %i.cge = load ptr, ptr %i.cgd, align 8, !tbaa !220
  br label %_ZN4mlir3omp8CancelOp14getODSOperandsEj.exit.i.i.i.i.i

_ZN4mlir3omp8CancelOp14getODSOperandsEj.exit.i.i.i.i.i: ; preds = %bb.kh, %bb.kg
  %.sroa.0.0.i.i.i.i.i.i.i.i.i505 = phi ptr [ %i.cge, %bb.kh ], [ null, %bb.kg ]
  %i.cgf = and i64 %i.cfy, 4294967295             ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i.i506 = lshr i64 %i.cfy, 32
  %i.cgg = add i64 %.sroa.5.0.extract.shift.i.i.i.i.i.i506, %i.cfy
  %i.cgh = and i64 %i.cgg, 4294967295
  %i.cgi = icmp eq i64 %i.cgh, %i.cgf
  br i1 %i.cgi, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i509, label %_ZN4mlir3omp8CancelOp9getIfExprEv.exit.i.i.i.i

_ZN4mlir3omp8CancelOp9getIfExprEv.exit.i.i.i.i:   ; preds = %_ZN4mlir3omp8CancelOp14getODSOperandsEj.exit.i.i.i.i.i
  %i.cgj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i505, i64 %i.cgf
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cgj, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i507 = load ptr, ptr %i.cgk, align 8, !tbaa !222 ; 3 uses
  %.not.i.i.i.i508 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i507, null
  br i1 %.not.i.i.i.i508, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i509, label %bb.ki

bb.ki:                                            ; preds = %_ZN4mlir3omp8CancelOp9getIfExprEv.exit.i.i.i.i
  %i.cgl = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.cgm = load ptr, ptr %i.cgl, align 8, !tbaa !115, !noalias !1451
  %i.cgn = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.cgo = load ptr, ptr %i.cgn, align 8, !tbaa !223, !noalias !1451 ; 2 uses
  %i.cgp = getelementptr inbounds nuw i8, ptr %3, i64 252
  %i.cgq = load i32, ptr %i.cgp, align 4, !tbaa !114, !noalias !1451 ; 2 uses
  %i.cgr = icmp eq i32 %i.cgq, 0
  br i1 %i.cgr, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i509, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.cgs = add i32 %i.cgq, -1                     ; 2 uses
  %i.cgt = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i507 to i64
  %i.cgu = xor i64 %i.cgt, -49064778989728563     ; 2 uses
  %i.cgv = lshr i64 %i.cgu, 30
  %i.cgw = xor i64 %i.cgv, %i.cgu
  %i.cgx = mul i64 %i.cgw, -4658895280553007687   ; 2 uses
  %i.cgy = lshr i64 %i.cgx, 27
  %i.cgz = xor i64 %i.cgy, %i.cgx
  %i.cha = mul i64 %i.cgz, -7723592293110705685   ; 2 uses
  %i.chb = lshr i64 %i.cha, 31
  %i.chc = xor i64 %i.chb, %i.cha
  %i.chd = trunc i64 %i.chc to i32
  %i.che = and i32 %i.cgs, %i.chd                 ; 3 uses
  %i.chf = zext i32 %i.che to i64                 ; 2 uses
  %i.chg = lshr i64 %i.chf, 5
  %i.chh = getelementptr inbounds nuw [4 x i8], ptr %i.cgo, i64 %i.chg
  %i.chi = load i32, ptr %i.chh, align 4, !tbaa !224
  %i.chj = and i32 %i.che, 31
  %i.chk = lshr i32 %i.chi, %i.chj
  %i.chl = trunc i32 %i.chk to i1
  br i1 %i.chl, label %.lr.ph.i.i.i.i.i.i.i527, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i509, !prof !225

.lr.ph.i.i.i.i.i.i.i527:                          ; preds = %bb.kj, %bb.kk
  %i.chm = phi i64 [ %i.chr, %bb.kk ], [ %i.chf, %bb.kj ]
  %.01419.i.i.i.i.i.i.i528 = phi i32 [ %i.chq, %bb.kk ], [ %i.che, %bb.kj ]
  %i.chn = getelementptr inbounds nuw [16 x i8], ptr %i.cgm, i64 %i.chm ; 2 uses
  %.sroa.0.0.copyload.i.i.i10.i.i.i.i = load ptr, ptr %i.chn, align 8, !tbaa !222
  %i.cho = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i507, %.sroa.0.0.copyload.i.i.i10.i.i.i.i
  br i1 %i.cho, label %bb.kl, label %bb.kk, !prof !91

bb.kk:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i527
  %i.chp = add nuw i32 %.01419.i.i.i.i.i.i.i528, 1
  %i.chq = and i32 %i.chp, %i.cgs                 ; 3 uses
  %i.chr = zext i32 %i.chq to i64                 ; 2 uses
  %i.chs = lshr i64 %i.chr, 5
  %i.cht = getelementptr inbounds nuw [4 x i8], ptr %i.cgo, i64 %i.chs
  %i.chu = load i32, ptr %i.cht, align 4, !tbaa !224
  %i.chv = and i32 %i.chq, 31
  %i.chw = lshr i32 %i.chu, %i.chv
  %i.chx = trunc i32 %i.chw to i1
  br i1 %i.chx, label %.lr.ph.i.i.i.i.i.i.i527, label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i509, !prof !226

bb.kl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i527
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chn, i64 8
  %i.chz = load ptr, ptr %i.chy, align 8, !tbaa !198
  br label %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i509

_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i509: ; preds = %bb.kk, %bb.kl, %bb.kj, %bb.ki, %_ZN4mlir3omp8CancelOp9getIfExprEv.exit.i.i.i.i, %_ZN4mlir3omp8CancelOp14getODSOperandsEj.exit.i.i.i.i.i
  %.0.i.i.i.i510 = phi ptr [ null, %_ZN4mlir3omp8CancelOp14getODSOperandsEj.exit.i.i.i.i.i ], [ null, %_ZN4mlir3omp8CancelOp9getIfExprEv.exit.i.i.i.i ], [ %i.chz, %bb.kl ], [ null, %bb.ki ], [ null, %bb.kj ], [ null, %bb.kk ]
  %i.cia = call noundef i32 @_ZN4mlir3omp8CancelOp18getCancelDirectiveEv(ptr noundef nonnull align 8 dereferenceable(8) %351) #31
  %i.cib = zext nneg i32 %i.cia to i64
  %switch.gep2775.a = getelementptr inbounds nuw i8, ptr @switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.666, i64 %i.cib
  %switch.load2776.a = load i8, ptr %switch.gep2775.a, align 1
  %switch.ext2777.a = zext i8 %switch.load2776.a to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %353) #31
  call void @_ZN4llvm15OpenMPIRBuilder12createCancelERKNS0_19LocationDescriptionEPNS_5ValueENS_3omp9DirectiveE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %353, ptr noundef nonnull align 8 dereferenceable(1864) %i.cfx, ptr noundef nonnull align 8 dereferenceable(32) %352, ptr noundef %.0.i.i.i.i510, i32 noundef %switch.ext2777.a) #31
  %i.cic = load ptr, ptr %351, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %350)
  %i.cid = getelementptr inbounds nuw i8, ptr %353, i64 24 ; 2 uses
  %i.cie = load i8, ptr %i.cid, align 8
  %i.cif = trunc i8 %i.cie to i1
  br i1 %i.cif, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i525, label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i.i512

_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i.i512: ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i509
  call void @llvm.lifetime.end.p0(ptr nonnull %350)
  br label %bb.kn

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i525: ; preds = %_ZNK4mlir4LLVM17ModuleTranslation11lookupValueENS_5ValueE.exit.i.i.i.i509
  call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  %i.cig = load i64, ptr %353, align 8, !tbaa !171, !noalias !1452
  %i.cih = inttoptr i64 %i.cig to ptr
  store ptr null, ptr %353, align 8, !tbaa !171, !noalias !1452
  store ptr %i.cih, ptr %350, align 8, !tbaa !173, !alias.scope !1452
  %i.cii = call fastcc i8 @_ZL11handleErrorN4llvm5ErrorERN4mlir9OperationE(ptr nofree noundef align 8 dereferenceable(8) %350, ptr noundef nonnull align 8 dereferenceable(64) %i.cic)
  %i.cij = load ptr, ptr %350, align 8, !tbaa !173 ; 3 uses
  %i.cik = icmp eq ptr %i.cij, null
  br i1 %i.cik, label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i526, label %bb.km

bb.km:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i525
  %i.cil = load ptr, ptr %i.cij, align 8, !tbaa !72
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cil, i64 8
  %i.cin = load ptr, ptr %i.cim, align 8
  call void %i.cin(ptr noundef nonnull align 8 dereferenceable(8) %i.cij) #31, !inline_history !1015
  br label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i526

_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i526: ; preds = %bb.km, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i525
  call void @llvm.lifetime.end.p0(ptr nonnull %350)
  %i.cio = trunc nuw i8 %i.cii to i1
  br i1 %i.cio, label %bb.kn, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i520

bb.kn:                                            ; preds = %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i526, %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i.i512
  %.sroa.013.0.copyload.i.i.i.i = load ptr, ptr %353, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i513 = getelementptr inbounds nuw i8, ptr %353, i64 8
  %.sroa.2.0.copyload.i.i.i.i514 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i513, align 8 ; 3 uses
  %.not.i.i.i.i.i515 = icmp eq ptr %.sroa.013.0.copyload.i.i.i.i, null
  br i1 %.not.i.i.i.i.i515, label %bb.kq, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %.sroa.3.0..sroa_idx.i.i.i.i516 = getelementptr inbounds nuw i8, ptr %353, i64 16
  %.sroa.3.0.copyload.i.i.i.i517 = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i516, align 8
  store ptr %.sroa.013.0.copyload.i.i.i.i, ptr %i.cfs, align 8, !tbaa !187
  store ptr %.sroa.2.0.copyload.i.i.i.i514, ptr %i.cft, align 8
  %.sroa.45.0.extract.trunc.i.i.i.i.i.i518 = trunc i64 %.sroa.3.0.copyload.i.i.i.i517 to i16
  store i16 %.sroa.45.0.extract.trunc.i.i.i.i.i.i518, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i500, align 8
  %i.cip = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i519 = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i514, %i.cip
  br i1 %.not.i.i.i.i.i.i519, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i520, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.ciq = getelementptr inbounds i8, ptr %.sroa.2.0.copyload.i.i.i.i514, i64 -24
  %i.cir = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ciq) #31
  %i.cis = load i64, ptr %i.cir, align 8, !tbaa !188
  store i64 %i.cis, ptr %2, align 8, !tbaa !188
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i520

bb.kq:                                            ; preds = %bb.kn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.cfs, i8 0, i64 18, i1 false)
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i520

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i520: ; preds = %bb.kq, %bb.kp, %bb.ko, %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i526
  %.sroa.09.0.i.i.i.i521 = phi i8 [ 0, %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i526 ], [ 1, %bb.ko ], [ 1, %bb.kp ], [ 1, %bb.kq ]
  %i.cit = load i8, ptr %i.cid, align 8
  %i.ciu = trunc i8 %i.cit to i1
  br i1 %i.ciu, label %bb.kr, label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i522

bb.kr:                                            ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i520
  %i.civ = load ptr, ptr %353, align 8, !tbaa !171 ; 3 uses
  %.not.i.i11.i.i.i.i523 = icmp eq ptr %i.civ, null
  br i1 %.not.i.i11.i.i.i.i523, label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i522, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i524

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i524: ; preds = %bb.kr
  %i.ciw = load ptr, ptr %i.civ, align 8, !tbaa !72
  %i.cix = getelementptr inbounds nuw i8, ptr %i.ciw, i64 8
  %i.ciy = load ptr, ptr %i.cix, align 8
  call void %i.ciy(ptr noundef nonnull align 8 dereferenceable(8) %i.civ) #31, !inline_history !1016
  br label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i522

_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i522: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i524, %bb.kr, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i520
  call void @llvm.lifetime.end.p0(ptr nonnull %353) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %352) #31
  br label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_16clENS1_3omp8CancelOpE.exit.i.i"

"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_16clENS1_3omp8CancelOpE.exit.i.i": ; preds = %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i522, %bb.kf
  %.sroa.09.1.i.i.i.i498 = phi i8 [ %.sroa.09.0.i.i.i.i521, %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i522 ], [ 0, %bb.kf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %351)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE4$_47EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_16EERS7_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_15EERS7_OT_.exit"
  %i.ciz = icmp ne ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_3omp19CancellationPointOpEvE2idE
  %.not.i.i531 = or i1 %.not.i14915771580, %i.ciz
  br i1 %.not.i.i531, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_17EERS7_OT_.exit", label %bb.ks

bb.ks:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_16EERS7_OT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %347)
  store ptr %1, ptr %347, align 8
  %i.cja = call fastcc i8 @_ZL25checkImplementationStatusRN4mlir9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.cjb = trunc nuw i8 %i.cja to i1
  br i1 %i.cjb, label %switch.lookup2778, label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_17clENS1_3omp19CancellationPointOpE.exit.i.i"

switch.lookup2778:                                ; preds = %bb.ks
  call void @llvm.lifetime.start.p0(ptr nonnull %348) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  %i.cjc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cjd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i533 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i534 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i533, align 8, !noalias !1453
  %.sroa.22.8.insert.ext.i.i.i.i.i.i535 = and i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i534, 65535
  %i.cje = load <2 x ptr>, ptr %i.cjc, align 8, !noalias !1453
  store <2 x ptr> %i.cje, ptr %348, align 16, !alias.scope !1453
  %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i536 = getelementptr inbounds nuw i8, ptr %348, i64 16
  store i64 %.sroa.22.8.insert.ext.i.i.i.i.i.i535, ptr %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i536, align 16, !alias.scope !1453
  %i.cjf = getelementptr inbounds nuw i8, ptr %348, i64 24
  %i.cjg = call ptr @_ZNK4llvm13IRBuilderBase23getCurrentDebugLocationEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #31
  store ptr %i.cjg, ptr %i.cjf, align 8
  %i.cjh = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation16getOpenMPBuilderEv(ptr noundef nonnull align 8 dereferenceable(592) %3) #31
  %i.cji = call noundef i32 @_ZN4mlir3omp19CancellationPointOp18getCancelDirectiveEv(ptr noundef nonnull align 8 dereferenceable(8) %347) #31
  %i.cjj = zext nneg i32 %i.cji to i64
  %switch.gep2779 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationE.666, i64 %i.cjj
  %switch.load2780 = load i8, ptr %switch.gep2779, align 1
  %switch.ext2781 = zext i8 %switch.load2780 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %349) #31
  call void @_ZN4llvm15OpenMPIRBuilder23createCancellationPointERKNS0_19LocationDescriptionENS_3omp9DirectiveE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %349, ptr noundef nonnull align 8 dereferenceable(1864) %i.cjh, ptr noundef nonnull align 8 dereferenceable(32) %348, i32 noundef %switch.ext2781) #31
  %i.cjk = load ptr, ptr %347, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %346)
  %i.cjl = getelementptr inbounds nuw i8, ptr %349, i64 24 ; 2 uses
  %i.cjm = load i8, ptr %i.cjl, align 8
  %i.cjn = trunc i8 %i.cjm to i1
  br i1 %i.cjn, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i550, label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i.i539

_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i.i539: ; preds = %switch.lookup2778
  call void @llvm.lifetime.end.p0(ptr nonnull %346)
  br label %bb.ku

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i550: ; preds = %switch.lookup2778
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  %i.cjo = load i64, ptr %349, align 8, !tbaa !171, !noalias !1454
  %i.cjp = inttoptr i64 %i.cjo to ptr
  store ptr null, ptr %349, align 8, !tbaa !171, !noalias !1454
  store ptr %i.cjp, ptr %346, align 8, !tbaa !173, !alias.scope !1454
  %i.cjq = call fastcc i8 @_ZL11handleErrorN4llvm5ErrorERN4mlir9OperationE(ptr nofree noundef align 8 dereferenceable(8) %346, ptr noundef nonnull align 8 dereferenceable(64) %i.cjk)
  %i.cjr = load ptr, ptr %346, align 8, !tbaa !173 ; 3 uses
  %i.cjs = icmp eq ptr %i.cjr, null
  br i1 %i.cjs, label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i551, label %bb.kt

bb.kt:                                            ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i550
  %i.cjt = load ptr, ptr %i.cjr, align 8, !tbaa !72
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjt, i64 8
  %i.cjv = load ptr, ptr %i.cju, align 8
  call void %i.cjv(ptr noundef nonnull align 8 dereferenceable(8) %i.cjr) #31, !inline_history !1021
  br label %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i551

_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i551: ; preds = %bb.kt, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i550
  call void @llvm.lifetime.end.p0(ptr nonnull %346)
  %i.cjw = trunc nuw i8 %i.cjq to i1
  br i1 %i.cjw, label %bb.ku, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i547

bb.ku:                                            ; preds = %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i551, %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.thread.i.i.i.i539
  %.sroa.07.0.copyload.i.i.i.i = load ptr, ptr %349, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i540 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %.sroa.2.0.copyload.i.i.i.i541 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i540, align 8 ; 3 uses
  %.not.i.i.i.i.i542 = icmp eq ptr %.sroa.07.0.copyload.i.i.i.i, null
  br i1 %.not.i.i.i.i.i542, label %bb.kx, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %.sroa.3.0..sroa_idx.i.i.i.i543 = getelementptr inbounds nuw i8, ptr %349, i64 16
  %.sroa.3.0.copyload.i.i.i.i544 = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i543, align 8
  store ptr %.sroa.07.0.copyload.i.i.i.i, ptr %i.cjc, align 8, !tbaa !187
  store ptr %.sroa.2.0.copyload.i.i.i.i541, ptr %i.cjd, align 8
  %.sroa.45.0.extract.trunc.i.i.i.i.i.i545 = trunc i64 %.sroa.3.0.copyload.i.i.i.i544 to i16
  store i16 %.sroa.45.0.extract.trunc.i.i.i.i.i.i545, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i533, align 8
  %i.cjx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i546 = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i541, %i.cjx
  br i1 %.not.i.i.i.i.i.i546, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i547, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.cjy = getelementptr inbounds i8, ptr %.sroa.2.0.copyload.i.i.i.i541, i64 -24
  %i.cjz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cjy) #31
  %i.cka = load i64, ptr %i.cjz, align 8, !tbaa !188
  store i64 %i.cka, ptr %2, align 8, !tbaa !188
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i547

bb.kx:                                            ; preds = %bb.ku
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.cjc, i8 0, i64 18, i1 false)
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i547

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i547: ; preds = %bb.kx, %bb.kw, %bb.kv, %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i551
  %.sroa.05.0.i.i.i.i = phi i8 [ 0, %_ZL11handleErrorIN4llvm13IRBuilderBase11InsertPointEENS0_13LogicalResultERNS0_8ExpectedIT_EERN4mlir9OperationE.exit.i.i.i.i551 ], [ 1, %bb.kv ], [ 1, %bb.kw ], [ 1, %bb.kx ]
  %i.ckb = load i8, ptr %i.cjl, align 8
  %i.ckc = trunc i8 %i.ckb to i1
  br i1 %i.ckc, label %bb.ky, label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i548

bb.ky:                                            ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i547
  %i.ckd = load ptr, ptr %349, align 8, !tbaa !171 ; 3 uses
  %.not.i.i6.i.i.i.i = icmp eq ptr %i.ckd, null
  br i1 %.not.i.i6.i.i.i.i, label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i548, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i549

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i549: ; preds = %bb.ky
  %i.cke = load ptr, ptr %i.ckd, align 8, !tbaa !72
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cke, i64 8
  %i.ckg = load ptr, ptr %i.ckf, align 8
  call void %i.ckg(ptr noundef nonnull align 8 dereferenceable(8) %i.ckd) #31, !inline_history !1022
  br label %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i548

_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i548: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i549, %bb.ky, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.i.i.i.i547
  call void @llvm.lifetime.end.p0(ptr nonnull %349) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %348) #31
  br label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_17clENS1_3omp19CancellationPointOpE.exit.i.i"

"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_17clENS1_3omp19CancellationPointOpE.exit.i.i": ; preds = %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i548, %bb.ks
  %.sroa.05.1.i.i.i.i = phi i8 [ %.sroa.05.0.i.i.i.i, %_ZN4llvm8ExpectedINS_13IRBuilderBase11InsertPointEED2Ev.exit.i.i.i.i548 ], [ 0, %bb.ks ]
  call void @llvm.lifetime.end.p0(ptr nonnull %347)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE4$_47EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_17EERS7_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_16EERS7_OT_.exit"
  %i.ckh = icmp ne ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_3omp10SectionsOpEvE2idE
  %.not.i.i554 = or i1 %.not.i14915771580, %i.ckh
  br i1 %.not.i.i554, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_18EERS7_OT_.exit", label %bb.kz

bb.kz:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_17EERS7_OT_.exit"
  %i.cki = call fastcc i8 @_ZL18convertOmpSectionsRN4mlir9OperationERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(592) %3)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE4$_47EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_18EERS7_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_17EERS7_OT_.exit"
  %i.ckj = icmp ne ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_3omp7ScopeOpEvE2idE
  %.not.i.i557 = or i1 %.not.i14915771580, %i.ckj
  br i1 %.not.i.i557, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_19EERS7_OT_.exit", label %bb.la

bb.la:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_18EERS7_OT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %345)
  store ptr %1, ptr %345, align 8
  %i.ckk = call fastcc i8 @_ZL15convertOmpScopeRN4mlir3omp7ScopeOpERN4llvm13IRBuilderBaseERNS_4LLVM17ModuleTranslationE(ptr noundef nonnull align 8 dereferenceable(8) %345, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(592) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %345)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE7DefaultIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES3_RNS_13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEE4$_47EES4_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_19EERS7_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_18EERS7_OT_.exit"
  %i.ckl = icmp ne ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_3omp8SingleOpEvE2idE
  %.not.i.i560 = or i1 %.not.i14915771580, %i.ckl
  br i1 %.not.i.i560, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_20EERS7_OT_.exit", label %bb.lb

bb.lb:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationES5_RNS_13IRBuilderBaseERNS3_4LLVM17ModuleTranslationEE4$_19EERS7_OT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %344)
  store ptr %1, ptr %344, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %341)
  call void @llvm.lifetime.start.p0(ptr nonnull %342)
  call void @llvm.lifetime.start.p0(ptr nonnull %343)
  call void @llvm.lifetime.start.p0(ptr nonnull %335) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  %i.ckm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ckn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i562 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i563 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i562, align 8, !noalias !1455
  %.sroa.22.8.insert.ext.i.i.i.i.i.i564 = and i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i563, 65535
  %i.cko = load <2 x ptr>, ptr %i.ckm, align 8, !noalias !1455
  store <2 x ptr> %i.cko, ptr %335, align 16, !alias.scope !1455
  %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i565 = getelementptr inbounds nuw i8, ptr %335, i64 16
  store i64 %.sroa.22.8.insert.ext.i.i.i.i.i.i564, ptr %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i565, align 16, !alias.scope !1455
  %i.ckp = getelementptr inbounds nuw i8, ptr %335, i64 24
  %i.ckq = call ptr @_ZNK4llvm13IRBuilderBase23getCurrentDebugLocationEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #31
  store ptr %i.ckq, ptr %i.ckp, align 8
  %i.ckr = call fastcc i8 @_ZL25checkImplementationStatusRN4mlir9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.cks = trunc nuw i8 %i.ckr to i1
  br i1 %i.cks, label %bb.lc, label %"_ZZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface16convertOperationEPN4mlir9OperationERN4llvm13IRBuilderBaseERNS1_4LLVM17ModuleTranslationEENK4$_20clENS1_3omp8SingleOpE.exit.i.i"

bb.lc:                                            ; preds = %bb.lb
  call void @llvm.lifetime.start.p0(ptr nonnull %336) #31
  store ptr %2, ptr %336, align 8, !tbaa !202
  %i.ckt = getelementptr inbounds nuw i8, ptr %336, i64 8
  store ptr %344, ptr %i.ckt, align 8, !tbaa !1456
  %i.cku = getelementptr inbounds nuw i8, ptr %336, i64 16
  store ptr %3, ptr %i.cku, align 8, !tbaa !204
  %i.ckv = call i64 @_ZN4mlir3omp8SingleOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %344, i32 noundef 2) #31 ; 3 uses
  %i.ckw = load ptr, ptr %344, align 8, !tbaa !195 ; 2 uses
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.ckw, i64 44
  %i.cky = load i32, ptr %i.ckx, align 4
  %i.ckz = and i32 %i.cky, 8388608
  %.not.i.i.i.i.i.i.i.i.i566 = icmp eq i32 %i.ckz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i566, label %_ZN4mlir3omp8SingleOp18getCopyprivateVarsEv.exit.i.i.i.i, label %bb.ld, !prof !165

bb.ld:                                            ; preds = %bb.lc
  %i.cla = getelementptr inbounds nuw i8, ptr %i.ckw, i64 72
  %i.clb = load ptr, ptr %i.cla, align 8, !tbaa !220
  br label %_ZN4mlir3omp8SingleOp18getCopyprivateVarsEv.exit.i.i.i.i

_ZN4mlir3omp8SingleOp18getCopyprivateVarsEv.exit.i.i.i.i: ; preds = %bb.ld, %bb.lc
  %.sroa.0.0.i.i.i.i.i.i.i.i.i567 = phi ptr [ %i.clb, %bb.ld ], [ null, %bb.lc ]
  %i.clc = and i64 %i.ckv, 4294967295             ; 3 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i.i568 = lshr i64 %i.ckv, 32
  %i.cld = add i64 %.sroa.5.0.extract.shift.i.i.i.i.i.i568, %i.ckv
  %i.cle = and i64 %i.cld, 4294967295             ; 2 uses
  %i.clf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i567, i64 %i.clc
  %i.clg = sub nsw i64 %i.cle, %i.clc
  call void @llvm.lifetime.start.p0(ptr nonnull %337) #31
  %i.clh = call { ptr, i8 } @_ZN4mlir3omp8SingleOp18getCopyprivateSymsEv(ptr noundef nonnull align 8 dereferenceable(8) %344) #31 ; 2 uses
  %i.cli = extractvalue { ptr, i8 } %i.clh, 0
  store ptr %i.cli, ptr %337, align 8
  %i.clj = getelementptr inbounds nuw i8, ptr %337, i64 8
  %i.clk = extractvalue { ptr, i8 } %i.clh, 1
  store i8 %i.clk, ptr %i.clj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %338) #31
  %i.cll = getelementptr inbounds nuw i8, ptr %338, i64 16 ; 2 uses
  store ptr %i.cll, ptr %338, align 8, !tbaa !68
  %i.clm = getelementptr inbounds nuw i8, ptr %338, i64 8 ; 5 uses
  store i32 0, ptr %i.clm, align 8, !tbaa !70
  %i.cln = getelementptr inbounds nuw i8, ptr %338, i64 12 ; 2 uses
  store i32 6, ptr %i.cln, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %339) #31
  %i.clo = getelementptr inbounds nuw i8, ptr %339, i64 16 ; 2 uses
  store ptr %i.clo, ptr %339, align 8, !tbaa !68
  %i.clp = getelementptr inbounds nuw i8, ptr %339, i64 8 ; 5 uses
  store i32 0, ptr %i.clp, align 8, !tbaa !70
  %i.clq = getelementptr inbounds nuw i8, ptr %339, i64 12 ; 2 uses
  store i32 6, ptr %i.clq, align 4, !tbaa !69
  %.not.i.i.i.i569 = icmp eq i64 %i.cle, %i.clc
  br i1 %.not.i.i.i.i569, label %._crit_edge.i.i.i.i580, label %.lr.ph.i.i.i.i570

.lr.ph.i.i.i.i570:                                ; preds = %_ZN4mlir3omp8SingleOp18getCopyprivateVarsEv.exit.i.i.i.i
  %i.clr = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.cls = getelementptr inbounds nuw i8, ptr %3, i64 240
end_hunk_5
begin_hunk_6_@_ZL25checkImplementationStatusRN4mlir9OperationE:bb.a

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.zq = getelementptr inbounds nuw i8, ptr %37, i64 200 ; 2 uses
  %i.zr = load i8, ptr %i.zq, align 8, !tbaa !156, !range !118, !noundef !119
  %i.zs = trunc nuw i8 %i.zr to i1
  store i8 0, ptr %i.zq, align 8, !tbaa !156
  br i1 %i.zs, label %bb.if, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i196

bb.if:                                            ; preds = %bb.ie
  %i.zt = getelementptr inbounds nuw i8, ptr %37, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.zt) #31
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i196

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i196:   ; preds = %bb.if, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  br label %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_29clINS_3omp14AtomicUpdateOpEEEDaT_.exit.i"

"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_29clINS_3omp14AtomicUpdateOpEEEDaT_.exit.i": ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i196, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIRN4mlir9OperationEvEES5_E4CaseIZL25checkImplementationStatusS5_E4$_35EERS6_OT_.exit"

"_ZN4llvm10TypeSwitchIRN4mlir9OperationEvE4CaseINS1_3omp14AtomicUpdateOpERZL25checkImplementationStatusS3_E4$_29EERS4_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIRN4mlir9OperationEvE4CaseINS1_3omp13AtomicWriteOpERZL25checkImplementationStatusS3_E4$_29EERS4_OT0_.exit"
  %i.zu = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3omp15AtomicCaptureOpEvE2idE
  br i1 %i.zu, label %bb.ig, label %"_ZN4llvm10TypeSwitchIRN4mlir9OperationEvE4CaseINS1_3omp15AtomicCaptureOpERZL25checkImplementationStatusS3_E4$_29EERS4_OT0_.exit"

bb.ig:                                            ; preds = %"_ZN4llvm10TypeSwitchIRN4mlir9OperationEvE4CaseINS1_3omp14AtomicUpdateOpERZL25checkImplementationStatusS3_E4$_29EERS4_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  store ptr %0, ptr %33, align 8
  %i.zv = call noundef i64 @_ZN4mlir3omp15AtomicCaptureOp7getHintEv(ptr noundef nonnull align 8 dereferenceable(8) %33) #31
  %.not.i.i.i198 = icmp eq i64 %i.zv, 0
  br i1 %.not.i.i.i198, label %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_29clINS_3omp15AtomicCaptureOpEEEDaT_.exit.i", label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  %i.zw = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.zx = getelementptr inbounds nuw i8, ptr %35, i64 33
  store i8 1, ptr %i.zx, align 1, !tbaa !142
  store ptr @.str.25, ptr %35, align 8, !tbaa !105
  store i8 3, ptr %i.zw, align 8, !tbaa !141
  call void @_ZN4mlir7OpState11emitWarningERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(34) %35) #31
  %i.zy = load ptr, ptr %34, align 8, !tbaa !150
  %.not.i.i.i.i199 = icmp eq ptr %i.zy, null
  br i1 %.not.i.i.i.i199, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %34) #31
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.zz = getelementptr inbounds nuw i8, ptr %34, i64 200 ; 2 uses
  %i.aaa = load i8, ptr %i.zz, align 8, !tbaa !156, !range !118, !noundef !119
  %i.aab = trunc nuw i8 %i.aaa to i1
  store i8 0, ptr %i.zz, align 8, !tbaa !156
  br i1 %i.aab, label %bb.ik, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i200

bb.ik:                                            ; preds = %bb.ij
  %i.aac = getelementptr inbounds nuw i8, ptr %34, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.aac) #31
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i200

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i200:   ; preds = %bb.ik, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  br label %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_29clINS_3omp15AtomicCaptureOpEEEDaT_.exit.i"

"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_29clINS_3omp15AtomicCaptureOpEEEDaT_.exit.i": ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i200, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIRN4mlir9OperationEvEES5_E4CaseIZL25checkImplementationStatusS5_E4$_35EERS6_OT_.exit"

"_ZN4llvm10TypeSwitchIRN4mlir9OperationEvE4CaseINS1_3omp15AtomicCaptureOpERZL25checkImplementationStatusS3_E4$_29EERS4_OT0_.exit": ; preds = %"_ZN4llvm10TypeSwitchIRN4mlir9OperationEvE4CaseINS1_3omp14AtomicUpdateOpERZL25checkImplementationStatusS3_E4$_29EERS4_OT0_.exit"
  %i.aad = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3omp15AtomicCompareOpEvE2idE
  br i1 %i.aad, label %bb.il, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIRN4mlir9OperationEvEES5_E4CaseIZL25checkImplementationStatusS5_E4$_30EERS6_OT_.exit"

bb.il:                                            ; preds = %"_ZN4llvm10TypeSwitchIRN4mlir9OperationEvE4CaseINS1_3omp15AtomicCaptureOpERZL25checkImplementationStatusS3_E4$_29EERS4_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  store ptr %0, ptr %28, align 8
  %i.aae = call noundef i64 @_ZN4mlir3omp15AtomicCompareOp7getHintEv(ptr noundef nonnull align 8 dereferenceable(8) %28) #31
  %.not.i.i.i.i202 = icmp eq i64 %i.aae, 0
  br i1 %.not.i.i.i.i202, label %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_13clINS_3omp15AtomicCompareOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i.i", label %bb.im

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #31
  %i.aaf = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.aag = getelementptr inbounds nuw i8, ptr %30, i64 33
  store i8 1, ptr %i.aag, align 1, !tbaa !142
  store ptr @.str.25, ptr %30, align 8, !tbaa !105
  store i8 3, ptr %i.aaf, align 8, !tbaa !141
  call void @_ZN4mlir7OpState11emitWarningERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %29, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(34) %30) #31
  %i.aah = load ptr, ptr %29, align 8, !tbaa !150
  %.not.i.i.i.i.i203 = icmp eq ptr %i.aah, null
  br i1 %.not.i.i.i.i.i203, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %29) #31
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.aai = getelementptr inbounds nuw i8, ptr %29, i64 200 ; 2 uses
  %i.aaj = load i8, ptr %i.aai, align 8, !tbaa !156, !range !118, !noundef !119
  %i.aak = trunc nuw i8 %i.aaj to i1
  store i8 0, ptr %i.aai, align 8, !tbaa !156
  br i1 %i.aak, label %bb.ip, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i204

bb.ip:                                            ; preds = %bb.io
  %i.aal = getelementptr inbounds nuw i8, ptr %29, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.aal) #31
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i204

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i204: ; preds = %bb.ip, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  br label %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_13clINS_3omp15AtomicCompareOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i.i"

"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_13clINS_3omp15AtomicCompareOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i.i": ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i.i204, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aan = load i32, ptr %i.aam, align 4          ; 3 uses
  %i.aao = and i32 %i.aan, 8388607
  %i.aap = icmp ne i32 %i.aao, 0
  call void @llvm.assume(i1 %i.aap)
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aar = lshr i32 %i.aan, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.aar, 1
  %i.aas = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aat = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %i.aas
  %i.aau = lshr i32 %i.aan, 21
  %i.aav = and i32 %i.aau, 2040
  %i.aaw = zext nneg i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.aaw
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aaz = load i32, ptr %i.aay, align 8, !tbaa !342
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [32 x i8], ptr %i.aax, i64 %i.aba ; 3 uses
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !345
  %i.abd = icmp eq ptr %i.abb, %i.abc
  br i1 %i.abd, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIRN4mlir9OperationEvEES5_E4CaseIZL25checkImplementationStatusS5_E4$_35EERS6_OT_.exit", label %bb.iq

bb.iq:                                            ; preds = %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_13clINS_3omp15AtomicCompareOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i.i"
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !343
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 48
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !348
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.abh, align 8
  %i.abi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.abi, align 8
  %i.abj = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.abk = inttoptr i64 %i.abj to ptr             ; 2 uses
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !491
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i3.i.i = load ptr, ptr %i.abm, align 8, !tbaa !92
  %.not.i.i.i205 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i3.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM14LLVMStructTypeEvE2idE
  br i1 %.not.i.i.i205, label %bb.ir, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIRN4mlir9OperationEvEES5_E4CaseIZL25checkImplementationStatusS5_E4$_35EERS6_OT_.exit"

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  br label %bb.is

bb.is:                                            ; preds = %bb.it, %bb.ir
  %.0.i.i.i.i = phi ptr [ %0, %bb.ir ], [ %i.abp, %bb.it ]
  %i.abn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !138 ; 2 uses
  %.not.i.i8.i.i.i206 = icmp eq ptr %i.abo, null
  br i1 %.not.i.i8.i.i.i206, label %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i.i

_ZN4mlir9Operation11getParentOpEv.exit.i.i.i.i:   ; preds = %bb.is
  %i.abp = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.abo) #31 ; 4 uses
  %.not.i9.i.i.i = icmp eq ptr %i.abp, null
  br i1 %.not.i9.i.i.i, label %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i.i, label %bb.it

bb.it:                                            ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i.i
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.abq, align 8, !tbaa !121
  %i.abr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !122
  %i.abt = icmp eq ptr %i.abs, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  br i1 %i.abt, label %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i.i, label %bb.is, !llvm.loop !6

_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i.i: ; preds = %bb.it, %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i.i, %bb.is
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.abp, %bb.it ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i.i ], [ null, %bb.is ]
  call void @_ZN4mlir10DataLayoutC1ENS_8ModuleOpE(ptr noundef nonnull align 8 dereferenceable(304) %31, ptr %.sroa.0.0.i.i.i.i) #31
  %i.abu = call { i64, i8 } @_ZNK4mlir10DataLayout17getTypeSizeInBitsENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(304) %31, ptr nonnull %i.abk) #31 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { i64, i8 } %i.abu, 1
  %i.abv = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.abv, label %bb.iu, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i

bb.iu:                                            ; preds = %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.27) #35
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i.i:               ; preds = %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i.i
  %.fca.0.extract.i.i.i = extractvalue { i64, i8 } %i.abu, 0
  %i.abw = trunc i64 %.fca.0.extract.i.i.i to i32
  %i.abx = icmp ugt i32 %i.abw, 128
  br i1 %i.abx, label %bb.iv, label %bb.iz

bb.iv:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31
  call fastcc void @"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_37clEN4llvm9StringRefE"(ptr dead_on_unwind noalias writable align 8 %32, ptr noundef nonnull readonly align 8 dereferenceable(8) %133, ptr nonnull @.str.26, i64 45)
  %i.aby = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %32) #31
  %i.abz = load ptr, ptr %32, align 8, !tbaa !150
  %.not.i11.i.i.i = icmp eq ptr %i.abz, null
  br i1 %.not.i11.i.i.i, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %32) #31
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %i.aca = getelementptr inbounds nuw i8, ptr %32, i64 200 ; 2 uses
  %i.acb = load i8, ptr %i.aca, align 8, !tbaa !156, !range !118, !noundef !119
  %i.acc = trunc nuw i8 %i.acb to i1
  store i8 0, ptr %i.aca, align 8, !tbaa !156
  br i1 %i.acc, label %bb.iy, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i207

bb.iy:                                            ; preds = %bb.ix
  %i.acd = getelementptr inbounds nuw i8, ptr %32, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.acd) #31
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i207

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i207:   ; preds = %bb.iy, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %bb.iz

bb.iz:                                            ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i207, %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i
  %.sroa.0426.55 = phi i8 [ %i.aby, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i207 ], [ 1, %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i ]
  call void @_ZN4mlir10DataLayoutD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %31) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIRN4mlir9OperationEvEES5_E4CaseIZL25checkImplementationStatusS5_E4$_35EERS6_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIRN4mlir9OperationEvEES5_E4CaseIZL25checkImplementationStatusS5_E4$_30EERS6_OT_.exit": ; preds = %"_ZN4llvm10TypeSwitchIRN4mlir9OperationEvE4CaseINS1_3omp15AtomicCaptureOpERZL25checkImplementationStatusS3_E4$_29EERS4_OT0_.exit"
  %i.ace = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3omp17TargetEnterDataOpEvE2idE
  br i1 %i.ace, label %bb.ja, label %"_ZN4llvm10TypeSwitchIRN4mlir9OperationEvE4CaseINS1_3omp17TargetEnterDataOpERZL25checkImplementationStatusS3_E4$_31EERS4_OT0_.exit"

bb.ja:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIRN4mlir9OperationEvEES5_E4CaseIZL25checkImplementationStatusS5_E4$_30EERS6_OT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  store ptr %0, ptr %26, align 8
  %i.acf = call i64 @_ZN4mlir3omp17TargetEnterDataOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 0) #31 ; 3 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i = lshr i64 %i.acf, 32
  %i.acg = add i64 %.sroa.5.0.extract.shift.i.i.i.i.i, %i.acf
  %i.ach = xor i64 %i.acg, %i.acf
  %i.aci = and i64 %i.ach, 4294967295
  %i.acj = icmp eq i64 %i.aci, 0
  br i1 %i.acj, label %bb.jb, label %.critedge.i.i.i

bb.jb:                                            ; preds = %bb.ja
  %i.ack = call { ptr, i8 } @_ZN4mlir3omp17TargetEnterDataOp14getDependKindsEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #31
  %i.acl = extractvalue { ptr, i8 } %i.ack, 1
  %i.acm = trunc nuw i8 %i.acl to i1
  br i1 %i.acm, label %.critedge.i.i.i, label %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK3$_9clINS_3omp17TargetEnterDataOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i"

.critedge.i.i.i:                                  ; preds = %bb.jb, %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  call fastcc void @"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_37clEN4llvm9StringRefE"(ptr dead_on_unwind noalias writable align 8 %27, ptr noundef nonnull align 8 dereferenceable(8) %133, ptr nonnull @.str.21, i64 6)
  %i.acn = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %27) #31
  %i.aco = load ptr, ptr %27, align 8, !tbaa !150
  %.not.i.i.i.i209 = icmp eq ptr %i.aco, null
  br i1 %.not.i.i.i.i209, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %.critedge.i.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %27) #31
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %.critedge.i.i.i
  %i.acp = getelementptr inbounds nuw i8, ptr %27, i64 200 ; 2 uses
  %i.acq = load i8, ptr %i.acp, align 8, !tbaa !156, !range !118, !noundef !119
  %i.acr = trunc nuw i8 %i.acq to i1
  store i8 0, ptr %i.acp, align 8, !tbaa !156
  br i1 %i.acr, label %bb.je, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i210

bb.je:                                            ; preds = %bb.jd
  %i.acs = getelementptr inbounds nuw i8, ptr %27, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.acs) #31
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i210

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i210:   ; preds = %bb.je, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK3$_9clINS_3omp17TargetEnterDataOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i"

"_ZZL25checkImplementationStatusRN4mlir9OperationEENK3$_9clINS_3omp17TargetEnterDataOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i": ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i210, %bb.jb
  %.sroa.0426.57 = phi i8 [ %i.acn, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i210 ], [ 1, %bb.jb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  store ptr %0, ptr %24, align 8
  %i.act = call i64 @_ZN4mlir3omp17TargetEnterDataOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 5) #31 ; 3 uses
  %.sroa.5.0.extract.shift.i.i.i3.i.i = lshr i64 %i.act, 32
  %i.acu = add i64 %.sroa.5.0.extract.shift.i.i.i3.i.i, %i.act
  %i.acv = xor i64 %i.acu, %i.act
  %i.acw = and i64 %i.acv, 4294967295
  %i.acx = icmp eq i64 %i.acw, 0
  br i1 %i.acx, label %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_31clINS_3omp17TargetEnterDataOpEEEDaT_.exit.i", label %bb.jf

bb.jf:                                            ; preds = %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK3$_9clINS_3omp17TargetEnterDataOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  call fastcc void @"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_37clEN4llvm9StringRefE"(ptr dead_on_unwind noalias writable align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %133, ptr nonnull @.str.28, i64 40)
  %i.acy = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %25) #31
  %i.acz = load ptr, ptr %25, align 8, !tbaa !150
  %.not.i.i4.i.i = icmp eq ptr %i.acz, null
  br i1 %.not.i.i4.i.i, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %25) #31
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %i.ada = getelementptr inbounds nuw i8, ptr %25, i64 200 ; 2 uses
  %i.adb = load i8, ptr %i.ada, align 8, !tbaa !156, !range !118, !noundef !119
  %i.adc = trunc nuw i8 %i.adb to i1
  store i8 0, ptr %i.ada, align 8, !tbaa !156
  br i1 %i.adc, label %bb.ji, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i5.i.i

bb.ji:                                            ; preds = %bb.jh
  %i.add = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.add) #31
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i5.i.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i5.i.i:     ; preds = %bb.ji, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  br label %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_31clINS_3omp17TargetEnterDataOpEEEDaT_.exit.i"

"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_31clINS_3omp17TargetEnterDataOpEEEDaT_.exit.i": ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i5.i.i, %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK3$_9clINS_3omp17TargetEnterDataOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i"
  %.sroa.0426.58 = phi i8 [ %.sroa.0426.57, %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK3$_9clINS_3omp17TargetEnterDataOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i" ], [ %i.acy, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i5.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIRN4mlir9OperationEvEES5_E4CaseIZL25checkImplementationStatusS5_E4$_35EERS6_OT_.exit"

"_ZN4llvm10TypeSwitchIRN4mlir9OperationEvE4CaseINS1_3omp17TargetEnterDataOpERZL25checkImplementationStatusS3_E4$_31EERS4_OT0_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIRN4mlir9OperationEvEES5_E4CaseIZL25checkImplementationStatusS5_E4$_30EERS6_OT_.exit"
  %i.ade = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3omp16TargetExitDataOpEvE2idE
  br i1 %i.ade, label %bb.jj, label %"_ZN4llvm10TypeSwitchIRN4mlir9OperationEvE4CaseINS1_3omp16TargetExitDataOpERZL25checkImplementationStatusS3_E4$_31EERS4_OT0_.exit"

bb.jj:                                            ; preds = %"_ZN4llvm10TypeSwitchIRN4mlir9OperationEvE4CaseINS1_3omp17TargetEnterDataOpERZL25checkImplementationStatusS3_E4$_31EERS4_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %0, ptr %22, align 8
  %i.adf = call i64 @_ZN4mlir3omp16TargetExitDataOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 0) #31 ; 3 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i212 = lshr i64 %i.adf, 32
  %i.adg = add i64 %.sroa.5.0.extract.shift.i.i.i.i.i212, %i.adf
  %i.adh = xor i64 %i.adg, %i.adf
  %i.adi = and i64 %i.adh, 4294967295
  %i.adj = icmp eq i64 %i.adi, 0
  br i1 %i.adj, label %bb.jk, label %.critedge.i.i.i213

bb.jk:                                            ; preds = %bb.jj
  %i.adk = call { ptr, i8 } @_ZN4mlir3omp16TargetExitDataOp14getDependKindsEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #31
  %i.adl = extractvalue { ptr, i8 } %i.adk, 1
  %i.adm = trunc nuw i8 %i.adl to i1
  br i1 %i.adm, label %.critedge.i.i.i213, label %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK3$_9clINS_3omp16TargetExitDataOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i"

.critedge.i.i.i213:                               ; preds = %bb.jk, %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call fastcc void @"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_37clEN4llvm9StringRefE"(ptr dead_on_unwind noalias writable align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %133, ptr nonnull @.str.21, i64 6)
  %i.adn = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %23) #31
  %i.ado = load ptr, ptr %23, align 8, !tbaa !150
  %.not.i.i.i.i214 = icmp eq ptr %i.ado, null
  br i1 %.not.i.i.i.i214, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %.critedge.i.i.i213
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %23) #31
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %.critedge.i.i.i213
  %i.adp = getelementptr inbounds nuw i8, ptr %23, i64 200 ; 2 uses
  %i.adq = load i8, ptr %i.adp, align 8, !tbaa !156, !range !118, !noundef !119
  %i.adr = trunc nuw i8 %i.adq to i1
  store i8 0, ptr %i.adp, align 8, !tbaa !156
  br i1 %i.adr, label %bb.jn, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i215

bb.jn:                                            ; preds = %bb.jm
  %i.ads = getelementptr inbounds nuw i8, ptr %23, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ads) #31
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i215

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i215:   ; preds = %bb.jn, %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK3$_9clINS_3omp16TargetExitDataOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i"

"_ZZL25checkImplementationStatusRN4mlir9OperationEENK3$_9clINS_3omp16TargetExitDataOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i": ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i215, %bb.jk
  %.sroa.0426.60 = phi i8 [ %i.adn, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i215 ], [ 1, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store ptr %0, ptr %20, align 8
  %i.adt = call i64 @_ZN4mlir3omp16TargetExitDataOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 5) #31 ; 3 uses
  %.sroa.5.0.extract.shift.i.i.i3.i.i216 = lshr i64 %i.adt, 32
  %i.adu = add i64 %.sroa.5.0.extract.shift.i.i.i3.i.i216, %i.adt
  %i.adv = xor i64 %i.adu, %i.adt
  %i.adw = and i64 %i.adv, 4294967295
  %i.adx = icmp eq i64 %i.adw, 0
  br i1 %i.adx, label %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_31clINS_3omp16TargetExitDataOpEEEDaT_.exit.i", label %bb.jo

bb.jo:                                            ; preds = %"_ZZL25checkImplementationStatusRN4mlir9OperationEENK3$_9clINS_3omp16TargetExitDataOpEEEDaT_RN4llvm13LogicalResultE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  call fastcc void @"_ZZL25checkImplementationStatusRN4mlir9OperationEENK4$_37clEN4llvm9StringRefE"(ptr dead_on_unwind noalias writable align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %133, ptr nonnull @.str.28, i64 40)
  %i.ady = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #31
  %i.adz = load ptr, ptr %21, align 8, !tbaa !150
  %.not.i.i4.i.i217 = icmp eq ptr %i.adz, null
  br i1 %.not.i.i4.i.i217, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #31
  br label %bb.jq

end_hunk_6
begin_hunk_7_@"_ZN4llvm12function_refIFNS_13LogicalResultEN4mlir9AttributeEEE11callback_fnIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface14amendOperationEPNS2_9OperationENS_8ArrayRefIPNS_11InstructionEEENS2_14NamedAttributeERNS2_4LLVM17ModuleTranslationEE3$_5EES1_lS3_":bb.a
  store ptr %spec.select.i.i.i.i, ptr %10, align 8
  %.not192.i.i = icmp eq ptr %spec.select.i.i.i.i, null
  br i1 %.not192.i.i, label %bb.az, label %bb.o

bb.e:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir19FunctionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.0.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.z, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !138  ; 2 uses
  %.not.i.i92.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i92.i.i, label %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i

_ZN4mlir9Operation11getParentOpEv.exit.i.i.i:     ; preds = %bb.f
  %i.z = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.y) #31 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !121
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !122
  %i.ad = icmp eq ptr %i.ac, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  br i1 %i.ad, label %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i, label %bb.f, !llvm.loop !6

_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i: ; preds = %bb.g, %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i, %bb.f
  %.sroa.0.0.i.i.i = phi ptr [ %i.z, %bb.g ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i ], [ null, %bb.f ] ; 4 uses
  %i.ae = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_3omp22OffloadModuleInterfaceENS1_6detail37OffloadModuleInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %.sroa.0.0.i.i.i)
  %.not.i.i93.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i93.i.i, label %_ZN4llvm8dyn_castIN4mlir3omp22OffloadModuleInterfaceENS1_9OperationEEEDcPT0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i
  %.not.i.i.i.i.i.i94.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not.i.i.i.i.i.i94.i.i, label %_ZN4llvm20ValueFromPointerCastIN4mlir3omp22OffloadModuleInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_3omp22OffloadModuleInterfaceENS1_6detail37OffloadModuleInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %.sroa.0.0.i.i.i)
  br label %_ZN4llvm20ValueFromPointerCastIN4mlir3omp22OffloadModuleInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir3omp22OffloadModuleInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ag = phi ptr [ %i.af, %bb.i ], [ null, %bb.h ]
  %.fca.0.insert.i.i.i95.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i.i.i, 0
  %.fca.1.insert.i.i.i96.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i95.i.i, ptr %i.ag, 1
  br label %_ZN4llvm8dyn_castIN4mlir3omp22OffloadModuleInterfaceENS1_9OperationEEEDcPT0_.exit.i.i

_ZN4llvm8dyn_castIN4mlir3omp22OffloadModuleInterfaceENS1_9OperationEEEDcPT0_.exit.i.i: ; preds = %_ZN4llvm20ValueFromPointerCastIN4mlir3omp22OffloadModuleInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i, %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i
  %.pn.i.i97.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i96.i.i, %_ZN4llvm20ValueFromPointerCastIN4mlir3omp22OffloadModuleInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i ], [ zeroinitializer, %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit.i.i ] ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %.pn.i.i97.i.i, 0 ; 2 uses
  store ptr %i.ah, ptr %8, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = extractvalue { ptr, ptr } %.pn.i.i97.i.i, 1
  store ptr %i.aj, ptr %i.ai, align 8
  %.not191.i.i = icmp eq ptr %i.ah, null
  br i1 %.not191.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.thread.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir3omp22OffloadModuleInterfaceENS1_9OperationEEEDcPT0_.exit.i.i
  %i.ak = call noundef zeroext i1 @_ZN4mlir3omp22OffloadModuleInterface17getIsTargetDeviceEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #31
  br i1 %i.ak, label %bb.k, label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.thread.i.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.al = call ptr @_ZNK4mlir3omp17DeclareTargetAttr13getDeviceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #31
  store ptr %i.al, ptr %9, align 8
  %i.am = call noundef i32 @_ZNK4mlir3omp27DeclareTargetDeviceTypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.an = icmp eq i32 %i.am, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 208 ; 4 uses
  br i1 %i.an, label %_ZNK4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i.i.i, label %bb.l

_ZNK4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.ap = call ptr @_ZN4mlir19FunctionOpInterface11getNameAttrEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #31
  store ptr %i.ap, ptr %5, align 8
  %i.aq = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #31 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 2 uses
  %i.at = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.ar, i64 %i.as) #31
  %i.au = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.ao, ptr %i.ar, i64 %i.as, i32 noundef %i.at) #31 ; 2 uses
  %i.av = icmp ne i32 %i.au, -1
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !439
  call void @llvm.assume(i1 %i.av)
  %i.ax = sext i32 %i.au to i64                   ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !440
  %.pre6.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %i.ay = icmp ne i64 %i.ax, %.pre6.i.i.i.i
  call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !442
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !446 ; 2 uses
  call void @_ZN4llvm8Function14deleteBodyImplEb(ptr noundef nonnull align 8 dereferenceable(140) %i.bc, i1 noundef zeroext true) #31
  call void @_ZN4llvm8Function15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(140) %i.bc) #31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.bd, i8 0, i64 26, i1 false)
  br label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.thread.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.be = call ptr @_ZN4mlir19FunctionOpInterface11getNameAttrEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #31
  store ptr %i.be, ptr %4, align 8
  %i.bf = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #31 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0      ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1      ; 2 uses
  %i.bi = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.bg, i64 %i.bh) #31
  %i.bj = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.ao, ptr %i.bg, i64 %i.bh, i32 noundef %i.bi) #31 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, -1
  %i.bl = load ptr, ptr %i.ao, align 8, !tbaa !439
  br i1 %i.bk, label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.thread.i.i, label %_ZNK4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i98.i.i

_ZNK4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i98.i.i: ; preds = %bb.l
  %i.bm = sext i32 %i.bj to i64                   ; 2 uses
  %.phi.trans.insert.i.i99.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %.pre.i.i100.i.i = load i32, ptr %.phi.trans.insert.i.i99.i.i, align 8, !tbaa !440
  %.pre6.i.i101.i.i = zext i32 %.pre.i.i100.i.i to i64
  %i.bn = icmp eq i64 %i.bm, %.pre6.i.i101.i.i
  br i1 %i.bn, label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.thread.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.i.i

_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.i.i: ; preds = %_ZNK4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i98.i.i
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !442
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !446 ; 3 uses
  %.not87.i.i = icmp eq ptr %i.br, null
  br i1 %.not87.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.thread.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.i.i
  %i.bs = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %i.br) #31
  br i1 %i.bs, label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8            ; 2 uses
  %i.bv = and i32 %i.bu, 63
  %or.cond197.i.i = icmp eq i32 %i.bv, 0
  br i1 %or.cond197.i.i, label %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit.i.i, label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.thread.i.i

_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit.i.i: ; preds = %bb.n
  %i.bw = or i32 %i.bu, 16400
  store i32 %i.bw, ptr %i.bt, align 8
  br label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.thread.i.i

_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.thread.i.i: ; preds = %_ZN4llvm11GlobalValue13setVisibilityENS0_15VisibilityTypesE.exit.i.i, %bb.n, %bb.m, %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit103.i.i, %_ZNK4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i98.i.i, %bb.l, %_ZNK4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i.i.i, %bb.j, %_ZN4llvm8dyn_castIN4mlir3omp22OffloadModuleInterfaceENS1_9OperationEEEDcPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ba

bb.o:                                             ; preds = %.thread188.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !239 ; 2 uses
  %i.bz = call { ptr, i64 } @_ZN4mlir4LLVM8GlobalOp10getSymNameEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #31 ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1
  %i.cc = call noundef ptr @_ZNK4llvm6Module13getNamedValueENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.by, ptr %i.ca, i64 %i.cb) #31 ; 7 uses
  %.not88.i.i = icmp eq ptr %i.cc, null
  br i1 %.not88.i.i, label %bb.az, label %switch.lookup

switch.lookup:                                    ; preds = %bb.o
  %i.cd = call noundef ptr @_ZN4mlir4LLVM17ModuleTranslation16getOpenMPBuilderEv(ptr noundef nonnull align 8 dereferenceable(592) %i.m) #31 ; 3 uses
  %i.ce = load ptr, ptr %10, align 8, !tbaa !195
  %i.cf = call noundef i32 @_ZN4mlir11SymbolTable19getSymbolVisibilityEPNS_9OperationE(ptr noundef %i.ce) #31
  %i.cg = icmp ne i32 %i.cf, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ch, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr null, ptr %2, align 8, !tbaa !338
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %2, ptr %3, align 8, !tbaa !784
  %i.ci = ptrtoint ptr %3 to i64
  %i.cj = call i32 @_ZN4mlir12LocationAttr4walkEN4llvm12function_refIFNS_10WalkResultENS_8LocationEEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr nonnull @_ZN4llvm12function_refIFN4mlir10WalkResultENS1_8LocationEEE11callback_fnIZNS1_12LocationAttr14findInstanceOfINS1_14FileLineColLocEEET_vEUlSA_E_EES2_lS3_, i64 %i.ci) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ck = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.ck, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.cl = call { ptr, i64 } @_ZN4mlir4LLVM8GlobalOp10getSymNameEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #31 ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %i.cl, 0      ; 2 uses
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.co = call ptr @_ZNK4mlir3omp17DeclareTargetAttr16getCaptureClauseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #31
  store ptr %i.co, ptr %13, align 8
  %i.cp = call noundef i32 @_ZNK4mlir3omp30DeclareTargetCaptureClauseAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #31 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.cq = zext nneg i32 %i.cp to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN4llvm12function_refIFNS_13LogicalResultEN4mlir9AttributeEEE11callback_fnIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface14amendOperationEPNS2_9OperationENS_8ArrayRefIPNS_11InstructionEEENS2_14NamedAttributeERNS2_4LLVM17ModuleTranslationEE3$_5EES1_lS3_", i64 %i.cq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.cr = call ptr @_ZNK4mlir3omp17DeclareTargetAttr13getDeviceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #31
  store ptr %i.cr, ptr %14, align 8
  %i.cs = call noundef i32 @_ZNK4mlir3omp27DeclareTargetDeviceTypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #31
  %i.ct = zext nneg i32 %i.cs to i64
  %switch.gep61 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN4llvm12function_refIFNS_13LogicalResultEN4mlir9AttributeEEE11callback_fnIZNK12_GLOBAL__N_139OpenMPDialectLLVMIRTranslationInterface14amendOperationEPNS2_9OperationENS_8ArrayRefIPNS_11InstructionEEENS2_14NamedAttributeERNS2_4LLVM17ModuleTranslationEE3$_5EES1_lS3_.667", i64 %i.ct
  %switch.load62 = load i8, ptr %switch.gep61, align 1
  %switch.ext63 = zext i8 %switch.load62 to i32   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  br label %_ZN4mlir9Operation11getParentOpEv.exit.i108.i.i

_ZN4mlir9Operation11getParentOpEv.exit.i108.i.i:  ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i108.i.i, %switch.lookup
  %.0.i106.i.i = phi ptr [ %i.l, %switch.lookup ], [ %i.cw, %_ZN4mlir9Operation11getParentOpEv.exit.i108.i.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i106.i.i, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !138, !nonnull !119, !noundef !119
  %i.cw = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cv) #31 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i110.i.i = load ptr, ptr %i.cx, align 8, !tbaa !121
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i110.i.i, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !122
  %i.da = icmp eq ptr %i.cz, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  br i1 %i.da, label %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit112.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i108.i.i, !llvm.loop !6

_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit112.i.i: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i108.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  %i.dc = load i32, ptr %i.db, align 4
  %.not.i113.i.i = icmp ult i32 %i.dc, 16777216
  br i1 %.not.i113.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit112.i.i
  %i.dd = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %i.cw, ptr nonnull @.str.193, i64 18) #31 ; 2 uses
  %i.de = extractvalue { ptr, i8 } %i.dd, 0
  %i.df = extractvalue { ptr, i8 } %i.dd, 1
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4mlir9Operation15getParentOfTypeINS_8ModuleOpEEET_v.exit112.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.di = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr nonnull @.str.193, i64 18) #31
  br label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i

_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i: ; preds = %bb.q, %bb.p
  %.sroa.05.1.i.i.i = phi ptr [ %i.di, %bb.q ], [ %i.de, %bb.p ] ; 3 uses
  %.not.i.i114.i.i = icmp eq ptr %.sroa.05.1.i.i.i, null
  br i1 %.not.i.i114.i.i, label %_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRKT0_.exit.thread.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i
  %i.dj = load ptr, ptr %.sroa.05.1.i.i.i, align 8, !tbaa !797
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i115.i.i = load ptr, ptr %i.dk, align 8, !tbaa !92
  %i.dl = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i115.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE
  br i1 %i.dl, label %bb.s, label %_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRKT0_.exit.thread.i.i

_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRKT0_.exit.thread.i.i: ; preds = %bb.r, %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i
  store ptr null, ptr %17, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  store ptr %.sroa.05.1.i.i.i, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.dm = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #31
  %i.dn = extractvalue { ptr, i64 } %i.dm, 0      ; 2 uses
  store ptr %i.dn, ptr %i.c, align 8, !tbaa !154
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !826 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !827
  %.not.i116.i.i = icmp eq ptr %i.dp, %i.dr
  br i1 %.not.i116.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm6TripleC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.dp, ptr noundef %i.dn)
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !826
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  store ptr %i.dt, ptr %i.do, align 8, !tbaa !826
  br label %_ZNSt6vectorIN4llvm6TripleESaIS1_EE12emplace_backIJPKcEEERS1_DpOT_.exit.i.i

bb.u:                                             ; preds = %bb.s
  call void @_ZNSt6vectorIN4llvm6TripleESaIS1_EE17_M_realloc_insertIJPKcEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZNSt6vectorIN4llvm6TripleESaIS1_EE12emplace_backIJPKcEEERS1_DpOT_.exit.i.i

_ZNSt6vectorIN4llvm6TripleESaIS1_EE12emplace_backIJPKcEEERS1_DpOT_.exit.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4llvm6TripleESaIS1_EE12emplace_backIJPKcEEERS1_DpOT_.exit.i.i, %_ZN4llvm16dyn_cast_or_nullIN4mlir10StringAttrENS1_9AttributeEEEDaRKT0_.exit.thread.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.cd, i64 400 ; 4 uses
  %i.dv = call noundef zeroext i1 @_ZNK4llvm21OpenMPIRBuilderConfig30hasRequiresUnifiedSharedMemoryEv(ptr noundef nonnull align 8 dereferenceable(176) %i.du) #31 ; 3 uses
  %i.dw = and i32 %i.cp, -3
  %i.dx = icmp eq i32 %i.dw, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  %i.dy = call ptr @_ZNK4mlir3omp17DeclareTargetAttr13getDeviceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #31
  store ptr %i.dy, ptr %18, align 8
  %i.dz = call noundef i32 @_ZNK4mlir3omp27DeclareTargetDeviceTypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #31
  %i.ea = icmp eq i32 %i.dz, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  %.not.i.i = xor i1 %i.dx, true
  %or.cond.i.i = or i1 %i.ea, %.not.i.i
  %or.cond3.i.i = or i1 %i.dv, %or.cond.i.i
  br i1 %or.cond3.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 8            ; 3 uses
  %i.ed = and i32 %i.ec, 15
  %i.ee = add nsw i32 %i.ed, -7
  %spec.select.i.i117.i.i = icmp ult i32 %i.ee, 2
  br i1 %spec.select.i.i117.i.i, label %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit.i.i, label %bb.y

_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit.i.i: ; preds = %bb.w
  %i.ef = and i32 %i.ec, -16                      ; 2 uses
  %i.eg = and i32 %i.ec, 48
  %.not193.i.i = icmp eq i32 %i.eg, 0
  %i.eh = or i32 %i.ef, 16384
  %spec.select.i.i = select i1 %.not193.i.i, i32 %i.ef, i32 %i.eh ; 2 uses
  store i32 %spec.select.i.i, ptr %i.eb, align 8
  %i.ei = load i8, ptr %i.du, align 1, !tbaa !117, !range !118, !noundef !119
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit.i.i
  %i.ek = and i32 %spec.select.i.i, -16400
  store i32 %i.ek, ptr %i.eb, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit.i.i, %bb.w, %bb.v
  %.084.shrunk.i.i = phi i1 [ %i.cg, %bb.v ], [ true, %bb.x ], [ true, %_ZN4llvm11GlobalValue10setLinkageENS0_12LinkageTypesE.exit.i.i ], [ %i.cg, %bb.w ] ; 2 uses
  %i.el = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4mlir4LLVM17ModuleTranslation13getFileSystemEv(ptr noundef nonnull align 8 dereferenceable(592) %i.m) #31 ; 2 uses
  %i.em = ptrtoint ptr %11 to i64                 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.ep, align 8
  store i64 %i.em, ptr %20, align 8, !tbaa !784
  store ptr @"_ZNSt17_Function_handlerIFSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvEZL24convertDeclareTargetAttrPN4mlir9OperationENS9_3omp17DeclareTargetAttrEPN4llvm15OpenMPIRBuilderERNS9_4LLVM17ModuleTranslationEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.eo, align 8, !tbaa !819
  store ptr @"_ZNSt17_Function_handlerIFSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvEZL24convertDeclareTargetAttrPN4mlir9OperationENS9_3omp17DeclareTargetAttrEPN4llvm15OpenMPIRBuilderERNS9_4LLVM17ModuleTranslationEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation", ptr %i.en, align 8, !tbaa !66
  call void @_ZN4llvm15OpenMPIRBuilder24getTargetEntryUniqueInfoESt8functionIFSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvEERNS_3vfs10FileSystemENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::TargetRegionEntryInfo") align 8 %19, ptr nofree noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(12) %i.el, ptr nonnull @.str.35, i64 0) #31
  store ptr %i.cm, ptr %21, align 8, !tbaa !154
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.cn, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !155
  %i.eq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !826 ; 3 uses
  %i.es = load ptr, ptr %16, align 8, !tbaa !828  ; 3 uses
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.er, %i.es
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = sdiv exact i64 %i.ev, 56
  %i.ex = icmp ugt i64 %i.ew, 164703072086692425
  br i1 %i.ex, label %bb.aa, label %_ZNSt15__new_allocatorIN4llvm6TripleEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !165

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorIN4llvm6TripleEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.z
  %i.ey = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #32
  %.pre.i.i = load ptr, ptr %16, align 8, !tbaa !4730
  %.pre203.i.i = load ptr, ptr %i.eq, align 8, !tbaa !4730
  br label %_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit.i.i.i

_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIN4llvm6TripleEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.y
  %i.ez = phi ptr [ %.pre203.i.i, %_ZNSt15__new_allocatorIN4llvm6TripleEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.er, %bb.y ] ; 2 uses
  %i.fa = phi ptr [ %.pre.i.i, %_ZNSt15__new_allocatorIN4llvm6TripleEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.es, %bb.y ] ; 2 uses
  %i.fb = phi ptr [ %i.ey, %_ZNSt15__new_allocatorIN4llvm6TripleEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.y ] ; 5 uses
  store ptr %i.fb, ptr %22, align 8, !tbaa !828
  %i.fc = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !826
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ev
  %i.fe = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !827
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.fa, %i.ez
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm6TripleESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit.i.i.i, %_ZSt10_ConstructIN4llvm6TripleEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.fv, %_ZSt10_ConstructIN4llvm6TripleEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ], [ %i.fb, %_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit.i.i.i ] ; 8 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.fu, %_ZSt10_ConstructIN4llvm6TripleEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ], [ %i.fa, %_ZNSt12_Vector_baseIN4llvm6TripleESaIS1_EEC2EmRKS2_.exit.i.i.i ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ff, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !553
  %i.fg = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !104 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !554 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.fi, ptr %i.b, align 8, !tbaa !155
  %i.fj = icmp ugt i64 %i.fi, 15
  br i1 %i.fj, label %bb.ab, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #31 ; 2 uses
  store ptr %i.fk, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !104
  %i.fl = load i64, ptr %i.b, align 8, !tbaa !155
  store i64 %i.fl, ptr %i.ff, align 8, !tbaa !105
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i
  %i.fm = phi ptr [ %i.fk, %bb.ab ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
end_hunk_7
