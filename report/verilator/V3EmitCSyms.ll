Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitCSyms?download=true
inline.NumInlined: 7952
inline.NumDeleted: 1364
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 29
begin_hunk_0

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_emplace_uniqueIJS5_EEESt4pairISt17_Rb_tree_iteratorIS5_EbEDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA29_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA26_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA64_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA17_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNK7AstNode4op4pEv = comdat any

$_ZNK7AstNode4op3pEv = comdat any

$_ZNK9ExecMTask2idEv = comdat any

$_ZN7AstNode2isI12AstExecGraphS_EEbPKT0_ = comdat any

$_ZN7AstNode2isI11AstNodeStmtS_EEbPKT0_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm = comdat any

$_ZZNK6VNType5asciiEvE5names = comdat any

$_ZZN7V3Error1sEvE3s_s = comdat any

$_ZGVZN7V3Error1sEvE3s_s = comdat any

$_ZZN13V3MutexConfig1sEvE1s = comdat any

$_ZTV9EmitCSyms = comdat any

$_ZTI9EmitCSyms = comdat any

$_ZTS9EmitCSyms = comdat any

$_ZTI21EmitCBaseVisitorConst = comdat any

$_ZTS21EmitCBaseVisitorConst = comdat any

$_ZTV21EmitCBaseVisitorConst = comdat any

$_ZZN15V3LanguageWords1sEvE3s_s = comdat any

$_ZGVZN15V3LanguageWords1sEvE3s_s = comdat any

$_ZSt19piecewise_construct = comdat any

@.str = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/verilator/verilator/src/V3EmitCSyms.cpp\00", align 1
@__FUNCTION__._ZN9EmitCSyms10emitSymHdrEv = private unnamed_addr constant [11 x i8] c"emitSymHdr\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Symbol table internal header\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"// Internal details; most calling programs do not need this header,\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"// unless using verilator public meta comments.\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"#include \22verilated.h\22\0A\00", align 1
@v3Global = external global %class.V3Global, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"#include \22\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c".h\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"#include \22verilated_profiler.h\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"\0A// INCLUDE MODEL CLASS\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"\0A#include \22\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"\0A// INCLUDE MODULE CLASSES\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"\0A// DPI TYPES for DPI Export callbacks (Internal use)\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"__Vcb_\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"_t\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c" (*) (\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"using \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"\0A// SYMS CLASS (contains all model state)\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"class alignas(VL_CACHE_LINE_BYTES) \00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c" final : public VerilatedSyms {\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"// INTERNAL STATE\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"* const __Vm_modelp;\0A\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"bool __Vm_dumping = false;  // Dumping is active\0A\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"VerilatedMutex __Vm_dumperMutex;  // Protect __Vm_dumperp\0A\00", align 1
@.str.30 = private unnamed_addr constant [87 x i8] c"* __Vm_dumperp VL_GUARDED_BY(__Vm_dumperMutex) = nullptr;  /// Trace class for $dump*\0A\00", align 1
@.str.31 = private unnamed_addr constant [87 x i8] c"bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred\0A\00", align 1
@.str.32 = private unnamed_addr constant [87 x i8] c"uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models\0A\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"std::vector<VlAssignableEvent> __Vm_triggeredEvents;\0A\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"std::vector<VlEvent*> __Vm_triggeredEvents;\0A\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"VlDeleter __Vm_deleter;\0A\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"bool __Vm_didInit = false;\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"\0A// MULTI-THREADING\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"VlThreadPool* __Vm_threadPoolp;\0A\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"bool __Vm_even_cycle__ico = false;\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"bool __Vm_even_cycle__act = false;\0A\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"bool __Vm_even_cycle__nba = false;\0A\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"\0A// EXECUTION PROFILING\0A\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"VlExecutionProfiler* const __Vm_executionProfilerp;\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"\0A// PGO PROFILING\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"VlPgoProfiler<\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"> _vm_pgoProfiler;\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"\0A// MODULE INSTANCE STATE\0A\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"%-30s \00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"\0A// COVERAGE\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"std::atomic<uint32_t>\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"uint32_t\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c" __Vcoverage[\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"];\0A\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"\0A// SCOPE NAMES\0A\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"VerilatedScope* \00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"__Vscopep_\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"\0A// SCOPE HIERARCHY\0A\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"VerilatedHierarchy __Vhier;\0A\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"\0A// CONSTRUCTORS\0A\00", align 1
@.str.60 = private unnamed_addr constant [49 x i8] c"(VerilatedContext* contextp, const char* namep, \00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"* modelp);\0A\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"();\0A\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"void \00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"\0A// METHODS\0A\00", align 1
@.str.66 = private unnamed_addr constant [50 x i8] c"const char* name() const { return TOP.vlNamep; }\0A\00", align 1
@.str.67 = private unnamed_addr constant [44 x i8] c"void fireEvent(VlAssignableEvent& event) {\0A\00", align 1
@.str.68 = private unnamed_addr constant [34 x i8] c"void fireEvent(VlEvent& event) {\0A\00", align 1
@.str.69 = private unnamed_addr constant [40 x i8] c"if (VL_LIKELY(!event.isTriggered())) {\0A\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"__Vm_triggeredEvents.push_back(event);\0A\00", align 1
@.str.71 = private unnamed_addr constant [41 x i8] c"__Vm_triggeredEvents.push_back(&event);\0A\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"event.fire();\0A\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"void clearTriggeredEvents() {\0A\00", align 1
@.str.75 = private unnamed_addr constant [66 x i8] c"for (auto& event : __Vm_triggeredEvents) event.clearTriggered();\0A\00", align 1
@.str.76 = private unnamed_addr constant [74 x i8] c"for (const auto eventp : __Vm_triggeredEvents) eventp->clearTriggered();\0A\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"__Vm_triggeredEvents.clear();\0A\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"void _traceDump();\0A\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"void _traceDumpOpen();\0A\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"void _traceDumpClose();\0A\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"__Vserialize\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"(VerilatedSerialize& os);\0A\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"__Vdeserialize\00", align 1
@.str.84 = private unnamed_addr constant [29 x i8] c"(VerilatedDeserialize& os);\0A\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"// Tear down scope hierarchy\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"// Set up scope hierarchy\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"TOP\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"SCOPE_MODULE\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"SCOPE_PACKAGE\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"__Vhier.\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"(0, \00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.98 = private unnamed_addr constant [64 x i8] c"// Clear keys from hierarchy map after values have been removed\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"__Vhier.clear();\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"Size prediction, Stack (bytes)\00", align 1
@.str.101 = private unnamed_addr constant [47 x i8] c"Size prediction, Heap, from Var Scopes (bytes)\00", align 1
@.str.102 = private unnamed_addr constant [37 x i8] c"Size prediction, Model total (bytes)\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"// Check resources\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"Verilated::stackCheck(\00", align 1
@.str.105 = private unnamed_addr constant [30 x i8] c"// Setup sub module instances\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c".ctor(this, \22\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"\22);\00", align 1
@.str.108 = private unnamed_addr constant [32 x i8] c"// Configure profiling for PGO\0A\00", align 1
@.str.109 = private unnamed_addr constant [64 x i8] c"_vm_pgoProfiler.writeHeader(_vm_contextp__->profVltFilename());\00", align 1
@.str.110 = private unnamed_addr constant [40 x i8] c"// Configure time unit / time precision\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"_vm_contextp__->timeunit(\00", align 1
@.str.112 = private unnamed_addr constant [31 x i8] c"_vm_contextp__->timeprecision(\00", align 1
@.str.113 = private unnamed_addr constant [52 x i8] c"// Setup each module's pointers to their submodules\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c" = &\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.117 = private unnamed_addr constant [75 x i8] c"// Setup each module's pointer back to symbol table (for public functions)\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"__Vconfigure\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"// Setup scopes\00", align 1
@.str.122 = private unnamed_addr constant [30 x i8] c" = new VerilatedScope{this, \22\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"\22, \22\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"\22, \00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c", VerilatedScope::\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.129 = private unnamed_addr constant [36 x i8] c"// Setup export functions - final: \00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"->exportInsert(\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c", \22\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"\22, (void*)(&\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"));\00", align 1
@.str.135 = private unnamed_addr constant [26 x i8] c"// Setup public variables\00", align 1
@.str.136 = private unnamed_addr constant [37 x i8] c"if (__Vm_dumping) _traceDumpClose();\00", align 1
@.str.137 = private unnamed_addr constant [24 x i8] c"_vm_pgoProfiler.write(\22\00", align 1
@.str.138 = private unnamed_addr constant [39 x i8] c"\22, _vm_contextp__->profVltFilename());\00", align 1
@.str.139 = private unnamed_addr constant [20 x i8] c"// Tear down scopes\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"VL_DO_CLEAR(delete \00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c" = nullptr);\00", align 1
@.str.142 = private unnamed_addr constant [34 x i8] c"// Tear down sub module instances\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c".dtor();\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"Empty split\00", align 1
@.str.145 = private unnamed_addr constant [38 x i8] c"Symbol table implementation internals\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"() {\0A\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"();\00", align 1
@__FUNCTION__._ZN9EmitCSyms10emitSymImpEPK10AstNetlist = private unnamed_addr constant [11 x i8] c"emitSymImp\00", align 1
@.str.152 = private unnamed_addr constant [48 x i8] c"VerilatedContext* contextp, const char* namep, \00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"* modelp\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.155 = private unnamed_addr constant [31 x i8] c"    : VerilatedSyms{contextp}\0A\00", align 1
@.str.156 = private unnamed_addr constant [47 x i8] c"    // Setup internal state of the Syms class\0A\00", align 1
@.str.157 = private unnamed_addr constant [27 x i8] c"    , __Vm_modelp{modelp}\0A\00", align 1
@.str.158 = private unnamed_addr constant [77 x i8] c"    , __Vm_threadPoolp{static_cast<VlThreadPool*>(contextp->threadPoolp())}\0A\00", align 1
@.str.159 = private unnamed_addr constant [134 x i8] c"    , __Vm_executionProfilerp{static_cast<VlExecutionProfiler*>(contextp->enableExecutionProfiler(&VlExecutionProfiler::construct))}\0A\00", align 1
@.str.160 = private unnamed_addr constant [23 x i8] c"    , _vm_pgoProfiler{\00", align 1
@.str.161 = private unnamed_addr constant [34 x i8] c"    // Setup top module instance\0A\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"    , \00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"{this, namep}\0A\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"::~\00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"\0Avoid \00", align 1
@.str.167 = private unnamed_addr constant [18 x i8] c"::_traceDump() {\0A\00", align 1
@.str.168 = private unnamed_addr constant [50 x i8] c"const VerilatedLockGuard lock{__Vm_dumperMutex};\0A\00", align 1
@.str.169 = private unnamed_addr constant [34 x i8] c"__Vm_dumperp->dump(VL_TIME_Q());\0A\00", align 1
@.str.170 = private unnamed_addr constant [22 x i8] c"::_traceDumpOpen() {\0A\00", align 1
@.str.171 = private unnamed_addr constant [35 x i8] c"if (VL_UNLIKELY(!__Vm_dumperp)) {\0A\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"__Vm_dumperp = new \00", align 1
@.str.173 = private unnamed_addr constant [41 x i8] c"__Vm_modelp->trace(__Vm_dumperp, 0, 0);\0A\00", align 1
@.str.174 = private unnamed_addr constant [63 x i8] c"const std::string dumpfile = _vm_contextp__->dumpfileCheck();\0A\00", align 1
@.str.175 = private unnamed_addr constant [39 x i8] c"__Vm_dumperp->open(dumpfile.c_str());\0A\00", align 1
@.str.176 = private unnamed_addr constant [22 x i8] c"__Vm_dumping = true;\0A\00", align 1
@.str.177 = private unnamed_addr constant [23 x i8] c"::_traceDumpClose() {\0A\00", align 1
@.str.178 = private unnamed_addr constant [23 x i8] c"__Vm_dumping = false;\0A\00", align 1
@.str.179 = private unnamed_addr constant [59 x i8] c"VL_DO_CLEAR(delete __Vm_dumperp, __Vm_dumperp = nullptr);\0A\00", align 1
@.str.180 = private unnamed_addr constant [21 x i8] c"VerilatedDeserialize\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c"VerilatedSerialize\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"& os) {\0A\00", align 1
@.str.185 = private unnamed_addr constant [19 x i8] c"// Internal state\0A\00", align 1
@.str.186 = private unnamed_addr constant [3 x i8] c"os\00", align 1
@.str.187 = private unnamed_addr constant [16 x i8] c"__Vm_activity;\0A\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"os \00", align 1
@.str.189 = private unnamed_addr constant [16 x i8] c" __Vm_didInit;\0A\00", align 1
@.str.190 = private unnamed_addr constant [26 x i8] c"// Module instance state\0A\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"(os);\0A\00", align 1
@__FUNCTION__._ZN9EmitCSyms10emitDpiHdrEv = private unnamed_addr constant [11 x i8] c"emitDpiHdr\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"__Dpi\00", align 1
@.str.193 = private unnamed_addr constant [48 x i8] c"Prototypes for DPI import and export functions.\00", align 1
@.str.194 = private unnamed_addr constant [85 x i8] c"// Verilator includes this file in all generated .cpp files that use DPI functions.\0A\00", align 1
@.str.195 = private unnamed_addr constant [84 x i8] c"// Manually include this file where DPI .c import functions are declared to ensure\0A\00", align 1
@.str.196 = private unnamed_addr constant [63 x i8] c"// the C functions match the expectations of the DPI imports.\0A\00", align 1
@.str.197 = private unnamed_addr constant [20 x i8] c"#include \22svdpi.h\22\0A\00", align 1
@.str.198 = private unnamed_addr constant [20 x i8] c"#ifdef __cplusplus\0A\00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"extern \22C\22 {\0A\00", align 1
@.str.200 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c" at \00", align 1
@.str.202 = private unnamed_addr constant [17 x i8] c"\0A// DPI EXPORTS\0A\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c"// DPI export\00", align 1
@.str.204 = private unnamed_addr constant [17 x i8] c"\0A// DPI IMPORTS\0A\00", align 1
@.str.205 = private unnamed_addr constant [14 x i8] c"// DPI import\00", align 1
@.str.206 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.207 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@__FUNCTION__._ZN9EmitCSyms10emitDpiImpEv = private unnamed_addr constant [11 x i8] c"emitDpiImp\00", align 1
@.str.209 = private unnamed_addr constant [39 x i8] c"Implementation of DPI export functions\00", align 1
@.str.210 = private unnamed_addr constant [65 x i8] c"// Verilator compiles this file in when DPI functions are used.\0A\00", align 1
@.str.211 = private unnamed_addr constant [70 x i8] c"// If you have multiple Verilated designs with the same DPI exported\0A\00", align 1
@.str.212 = private unnamed_addr constant [76 x i8] c"// function names, you will get multiple definition link errors from here.\0A\00", align 1
@.str.213 = private unnamed_addr constant [60 x i8] c"// This is an unfortunate result of the DPI specification.\0A\00", align 1
@.str.214 = private unnamed_addr constant [26 x i8] c"// To solve this, either\0A\00", align 1
@.str.215 = private unnamed_addr constant [15 x i8] c"//    1. Call \00", align 1
@.str.216 = private unnamed_addr constant [30 x i8] c"::{export_function} instead,\0A\00", align 1
@.str.217 = private unnamed_addr constant [54 x i8] c"//       and do not even bother to compile this file\0A\00", align 1
@.str.218 = private unnamed_addr constant [64 x i8] c"// or 2. Compile all __Dpi.cpp files in the same compiler run,\0A\00", align 1
@.str.219 = private unnamed_addr constant [70 x i8] c"//       and #ifdefs already inserted here will sort everything out.\0A\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"__Dpi.h\22\0A\00", align 1
@.str.221 = private unnamed_addr constant [20 x i8] c"#ifndef VL_DPIDECL_\00", align 1
@.str.222 = private unnamed_addr constant [3 x i8] c"_\0A\00", align 1
@.str.223 = private unnamed_addr constant [20 x i8] c"#define VL_DPIDECL_\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c") {\0A\00", align 1
@.str.225 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@__FUNCTION__._ZN7V3EmitC9emitcSymsEb = private unnamed_addr constant [10 x i8] c"emitcSyms\00", align 1
@.str.226 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZZL5debugvE7s_level = internal unnamed_addr global i32 -1, align 4
@.str.227 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.228 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"__Slow\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c".cpp\00", align 1
@.str.231 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@_ZTV8AstCFile = external constant { [42 x ptr] }, align 8
@_ZTV11AstNodeFile = external constant { [42 x ptr] }, align 8
@.str.232 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.233 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/verilator/verilator/src/V3EmitCBase.h\00", align 1
@.str.234 = private unnamed_addr constant [28 x i8] c"Output file is already open\00", align 1
@.str.235 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.236 = private unnamed_addr constant [35 x i8] c"// DESCRIPTION: Verilator output: \00", align 1
@_ZTV10V3OutCFile = external constant { [10 x ptr] }, align 8
@.str.237 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.238 = private unnamed_addr constant [6 x i8] c"_Syms\00", align 1
@.str.241 = private unnamed_addr constant [9 x i8] c"public:\0A\00", align 1
@_ZN9ExecMTask8s_nextIdE = external local_unnamed_addr global %"struct.std::atomic.158", align 4
@.str.242 = private unnamed_addr constant [30 x i8] c"No currently open output file\00", align 1
@.str.243 = private unnamed_addr constant [6 x i8] c"__pch\00", align 1
@.str.244 = private unnamed_addr constant [8 x i8] c"__PVT__\00", align 1
@.str.245 = private unnamed_addr constant [11 x i8] c"TOP__DOT__\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"TOP.\00", align 1
@.str.247 = private unnamed_addr constant [8 x i8] c"__DOT__\00", align 1
@.str.248 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.249 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZTV11V3Statistic = external constant { [5 x ptr] }, align 8
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@_ZN12VNUser1InUse12s_userCntGblE = external global i32, align 4
@.str.251 = private unnamed_addr constant [3 x i8] c" ,\00", align 1
@.str.252 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c"__VforceEn\00", align 1
@.str.254 = private unnamed_addr constant [12 x i8] c"__VforceVal\00", align 1
@.str.255 = private unnamed_addr constant [11 x i8] c"__VforceRd\00", align 1
@constinit = private unnamed_addr constant [3 x ptr] [ptr @.str.253, ptr @.str.254, ptr @.str.255], align 8
@.str.256 = private unnamed_addr constant [11 x i8] c"__DOT__TOP\00", align 1
@.str.260 = private unnamed_addr constant [14 x i8] c"Found signal \00", align 1
@.str.261 = private unnamed_addr constant [55 x i8] c" which is a force control signal, but the base signal \00", align 1
@.str.262 = private unnamed_addr constant [29 x i8] c" is not marked as forceable.\00", align 1
@.str.263 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.264 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@__const._ZNK9EmitCSyms27forceControlSignalsAreValidEPK8AstScopePK6AstVar.forceControlSuffixes = private unnamed_addr constant %"struct.std::array.171" { [2 x ptr] [ptr @.str.253, ptr @.str.254] }, align 8
@.str.265 = private unnamed_addr constant [8 x i8] c"Signal \00", align 1
@.str.266 = private unnamed_addr constant [47 x i8] c" is marked forceable, but the control signal '\00", align 1
@.str.267 = private unnamed_addr constant [45 x i8] c"' can not be found in m_scopeVars with key '\00", align 1
@.str.268 = private unnamed_addr constant [3 x i8] c"'.\00", align 1
@.str.272 = private unnamed_addr constant [23 x i8] c"->forceableVarInsert(\22\00", align 1
@.str.273 = private unnamed_addr constant [5 x i8] c", &(\00", align 1
@.str.274 = private unnamed_addr constant [11 x i8] c"), false, \00", align 1
@.str.275 = private unnamed_addr constant [5 x i8] c"), \22\00", align 1
@.str.276 = private unnamed_addr constant [4 x i8] c", {\00", align 1
@.str.277 = private unnamed_addr constant [52 x i8] c" is marked forceable, but the force enable signal '\00", align 1
@.str.278 = private unnamed_addr constant [51 x i8] c" is marked forceable, but the force value signal '\00", align 1
@.str.279 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.280 = private unnamed_addr constant [19 x i8] c"->varInsertSized(\22\00", align 1
@.str.281 = private unnamed_addr constant [14 x i8] c"->varInsert(\22\00", align 1
@.str.283 = private unnamed_addr constant [46 x i8] c", const_cast<void*>(static_cast<const void*>(\00", align 1
@.str.284 = private unnamed_addr constant [19 x i8] c".c_str())), true, \00", align 1
@.str.285 = private unnamed_addr constant [48 x i8] c", const_cast<void*>(static_cast<const void*>(&(\00", align 1
@.str.286 = private unnamed_addr constant [12 x i8] c"))), true, \00", align 1
@.str.287 = private unnamed_addr constant [8 x i8] c"sizeof(\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c") / \00", align 1
@.str.291 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@.str.292 = private unnamed_addr constant [32 x i8] c") & ~(VLVF_SIGNED|VLVF_BITVAR))\00", align 1
@.str.293 = private unnamed_addr constant [13 x i8] c"|VLVF_SIGNED\00", align 1
@.str.294 = private unnamed_addr constant [13 x i8] c"|VLVF_BITVAR\00", align 1
@.str.295 = private unnamed_addr constant [48 x i8] c"/opt-bench/work/verilator/verilator/src/V3Ast.h\00", align 1
@.str.296 = private unnamed_addr constant [56 x i8] c"AstNode is not of expected type, but instead has type '\00", align 1
@_ZZNK6VNType5asciiEvE5names = linkonce_odr dso_local local_unnamed_addr constant [484 x ptr] [ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.393, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @.str.431, ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435, ptr @.str.436, ptr @.str.437, ptr @.str.438, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @.str.443, ptr @.str.444, ptr @.str.445, ptr @.str.446, ptr @.str.447, ptr @.str.448, ptr @.str.449, ptr @.str.450, ptr @.str.451, ptr @.str.452, ptr @.str.453, ptr @.str.454, ptr @.str.455, ptr @.str.456, ptr @.str.457, ptr @.str.458, ptr @.str.459, ptr @.str.460, ptr @.str.461, ptr @.str.462, ptr @.str.463, ptr @.str.464, ptr @.str.465, ptr @.str.466, ptr @.str.467, ptr @.str.468, ptr @.str.469, ptr @.str.470, ptr @.str.471, ptr @.str.472, ptr @.str.473, ptr @.str.474, ptr @.str.475, ptr @.str.476, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493, ptr @.str.494, ptr @.str.495, ptr @.str.496, ptr @.str.497, ptr @.str.498, ptr @.str.499, ptr @.str.500, ptr @.str.501, ptr @.str.502, ptr @.str.503, ptr @.str.504, ptr @.str.505, ptr @.str.506, ptr @.str.507, ptr @.str.508, ptr @.str.509, ptr @.str.510, ptr @.str.511, ptr @.str.512, ptr @.str.513, ptr @.str.514, ptr @.str.515, ptr @.str.516, ptr @.str.517, ptr @.str.518, ptr @.str.519, ptr @.str.520, ptr @.str.521, ptr @.str.522, ptr @.str.523, ptr @.str.524, ptr @.str.525, ptr @.str.526, ptr @.str.527, ptr @.str.528, ptr @.str.529, ptr @.str.530, ptr @.str.531, ptr @.str.532, ptr @.str.533, ptr @.str.534, ptr @.str.535, ptr @.str.536, ptr @.str.537, ptr @.str.538, ptr @.str.539, ptr @.str.540, ptr @.str.541, ptr @.str.542, ptr @.str.543, ptr @.str.544, ptr @.str.545, ptr @.str.546, ptr @.str.547, ptr @.str.548, ptr @.str.549, ptr @.str.550, ptr @.str.551, ptr @.str.552, ptr @.str.553, ptr @.str.554, ptr @.str.555, ptr @.str.556, ptr @.str.557, ptr @.str.558, ptr @.str.559, ptr @.str.560, ptr @.str.561, ptr @.str.562, ptr @.str.563, ptr @.str.564, ptr @.str.565, ptr @.str.566, ptr @.str.567, ptr @.str.568, ptr @.str.569, ptr @.str.570, ptr @.str.571, ptr @.str.572, ptr @.str.573, ptr @.str.574, ptr @.str.575, ptr @.str.576, ptr @.str.577, ptr @.str.578, ptr @.str.579, ptr @.str.580, ptr @.str.581, ptr @.str.582, ptr @.str.583, ptr @.str.584, ptr @.str.585, ptr @.str.586, ptr @.str.587, ptr @.str.588, ptr @.str.589, ptr @.str.590, ptr @.str.591, ptr @.str.592, ptr @.str.593, ptr @.str.594, ptr @.str.595, ptr @.str.596, ptr @.str.597, ptr @.str.598, ptr @.str.599, ptr @.str.600, ptr @.str.601, ptr @.str.602, ptr @.str.603, ptr @.str.604, ptr @.str.605, ptr @.str.606, ptr @.str.607, ptr @.str.608, ptr @.str.609, ptr @.str.610, ptr @.str.611, ptr @.str.612, ptr @.str.613, ptr @.str.614, ptr @.str.615, ptr @.str.616, ptr @.str.617, ptr @.str.618, ptr @.str.619, ptr @.str.620, ptr @.str.621, ptr @.str.622, ptr @.str.623, ptr @.str.624, ptr @.str.625, ptr @.str.626, ptr @.str.627, ptr @.str.628, ptr @.str.629, ptr @.str.630, ptr @.str.631, ptr @.str.632, ptr @.str.633, ptr @.str.634, ptr @.str.635, ptr @.str.636, ptr @.str.637, ptr @.str.638, ptr @.str.639, ptr @.str.640, ptr @.str.641, ptr @.str.642, ptr @.str.643, ptr @.str.644, ptr @.str.645, ptr @.str.646, ptr @.str.647, ptr @.str.648, ptr @.str.649, ptr @.str.650, ptr @.str.651, ptr @.str.652, ptr @.str.653, ptr @.str.654, ptr @.str.655, ptr @.str.656, ptr @.str.657, ptr @.str.658, ptr @.str.659, ptr @.str.660, ptr @.str.661, ptr @.str.662, ptr @.str.663, ptr @.str.664, ptr @.str.665, ptr @.str.666, ptr @.str.667, ptr @.str.668, ptr @.str.669, ptr @.str.670, ptr @.str.671, ptr @.str.672, ptr @.str.673, ptr @.str.674, ptr @.str.675, ptr @.str.676, ptr @.str.677, ptr @.str.678, ptr @.str.679, ptr @.str.680, ptr @.str.681, ptr @.str.682, ptr @.str.683, ptr @.str.684, ptr @.str.685, ptr @.str.686, ptr @.str.687, ptr @.str.688, ptr @.str.689, ptr @.str.690, ptr @.str.691, ptr @.str.692, ptr @.str.693, ptr @.str.694, ptr @.str.695, ptr @.str.696, ptr @.str.697, ptr @.str.698, ptr @.str.699, ptr @.str.700, ptr @.str.701, ptr @.str.702, ptr @.str.703, ptr @.str.704, ptr @.str.705, ptr @.str.706, ptr @.str.707, ptr @.str.708, ptr @.str.709, ptr @.str.710, ptr @.str.711, ptr @.str.712, ptr @.str.713, ptr @.str.714, ptr @.str.715, ptr @.str.716, ptr @.str.717, ptr @.str.718, ptr @.str.719, ptr @.str.720, ptr @.str.721, ptr @.str.722, ptr @.str.723, ptr @.str.724, ptr @.str.725, ptr @.str.726, ptr @.str.727, ptr @.str.728, ptr @.str.729, ptr @.str.730, ptr @.str.731, ptr @.str.732, ptr @.str.733, ptr @.str.734, ptr @.str.735, ptr @.str.736, ptr @.str.737, ptr @.str.738, ptr @.str.739, ptr @.str.740, ptr @.str.741, ptr @.str.742, ptr @.str.743, ptr @.str.744, ptr @.str.745, ptr @.str.746, ptr @.str.747, ptr @.str.748, ptr @.str.749, ptr @.str.750, ptr @.str.751, ptr @.str.752, ptr @.str.753, ptr @.str.754, ptr @.str.755, ptr @.str.756, ptr @.str.757, ptr @.str.758, ptr @.str.759, ptr @.str.760, ptr @.str.761, ptr @.str.762, ptr @.str.763, ptr @.str.764, ptr @.str.765, ptr @.str.766, ptr @.str.767, ptr @.str.768, ptr @.str.769, ptr @.str.770, ptr @.str.771, ptr @.str.772, ptr @.str.773, ptr @.str.774, ptr @.str.775, ptr @.str.776, ptr @.str.777, ptr @.str.778, ptr @.str.779, ptr @.str.780], comdat, align 16
@.str.297 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.298 = private unnamed_addr constant [6 x i8] c"ALIAS\00", align 1
@.str.299 = private unnamed_addr constant [11 x i8] c"ALIASSCOPE\00", align 1
@.str.300 = private unnamed_addr constant [4 x i8] c"ARG\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"BIND\00", align 1
@.str.302 = private unnamed_addr constant [6 x i8] c"CFUNC\00", align 1
@.str.303 = private unnamed_addr constant [12 x i8] c"CLOCALSCOPE\00", align 1
@.str.304 = private unnamed_addr constant [5 x i8] c"CUSE\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"CASEITEM\00", align 1
@.str.306 = private unnamed_addr constant [5 x i8] c"CELL\00", align 1
@.str.307 = private unnamed_addr constant [11 x i8] c"CELLINLINE\00", align 1
@.str.308 = private unnamed_addr constant [16 x i8] c"CELLINLINESCOPE\00", align 1
@.str.309 = private unnamed_addr constant [15 x i8] c"CGOPTIONASSIGN\00", align 1
@.str.310 = private unnamed_addr constant [13 x i8] c"CLASSEXTENDS\00", align 1
@.str.311 = private unnamed_addr constant [9 x i8] c"CLOCKING\00", align 1
@.str.312 = private unnamed_addr constant [13 x i8] c"CLOCKINGITEM\00", align 1
@.str.313 = private unnamed_addr constant [7 x i8] c"CONFIG\00", align 1
@.str.314 = private unnamed_addr constant [11 x i8] c"CONFIGCELL\00", align 1
@.str.315 = private unnamed_addr constant [11 x i8] c"CONFIGRULE\00", align 1
@.str.316 = private unnamed_addr constant [10 x i8] c"CONFIGUSE\00", align 1
@.str.317 = private unnamed_addr constant [10 x i8] c"CONSTPOOL\00", align 1
@.str.318 = private unnamed_addr constant [11 x i8] c"CONSTRAINT\00", align 1
@.str.319 = private unnamed_addr constant [17 x i8] c"CONSTRAINTBEFORE\00", align 1
@.str.320 = private unnamed_addr constant [9 x i8] c"COVERBIN\00", align 1
@.str.321 = private unnamed_addr constant [12 x i8] c"COVEROPTION\00", align 1
@.str.322 = private unnamed_addr constant [15 x i8] c"COVERTRANSITEM\00", align 1
@.str.323 = private unnamed_addr constant [14 x i8] c"COVERTRANSSET\00", align 1
@.str.324 = private unnamed_addr constant [11 x i8] c"COVERGROUP\00", align 1
@.str.325 = private unnamed_addr constant [14 x i8] c"COVERPOINTREF\00", align 1
@.str.326 = private unnamed_addr constant [9 x i8] c"DEFPARAM\00", align 1
@.str.327 = private unnamed_addr constant [15 x i8] c"DEFAULTDISABLE\00", align 1
@.str.328 = private unnamed_addr constant [10 x i8] c"DPIEXPORT\00", align 1
@.str.329 = private unnamed_addr constant [12 x i8] c"ELABDISPLAY\00", align 1
@.str.330 = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.331 = private unnamed_addr constant [9 x i8] c"ENUMITEM\00", align 1
@.str.332 = private unnamed_addr constant [14 x i8] c"FOREACHHEADER\00", align 1
@.str.333 = private unnamed_addr constant [12 x i8] c"GENCASEITEM\00", align 1
@.str.334 = private unnamed_addr constant [9 x i8] c"IMPLICIT\00", align 1
@.str.335 = private unnamed_addr constant [9 x i8] c"INITITEM\00", align 1
@.str.336 = private unnamed_addr constant [8 x i8] c"INTFREF\00", align 1
@.str.337 = private unnamed_addr constant [8 x i8] c"LIBRARY\00", align 1
@.str.338 = private unnamed_addr constant [8 x i8] c"MODPORT\00", align 1
@.str.339 = private unnamed_addr constant [19 x i8] c"MODPORTCLOCKINGREF\00", align 1
@.str.340 = private unnamed_addr constant [16 x i8] c"MODPORTFTASKREF\00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"MODPORTVARREF\00", align 1
@.str.342 = private unnamed_addr constant [8 x i8] c"NETLIST\00", align 1
@.str.343 = private unnamed_addr constant [14 x i8] c"PACKAGEEXPORT\00", align 1
@.str.344 = private unnamed_addr constant [22 x i8] c"PACKAGEEXPORTSTARSTAR\00", align 1
@.str.345 = private unnamed_addr constant [14 x i8] c"PACKAGEIMPORT\00", align 1
@.str.346 = private unnamed_addr constant [4 x i8] c"PIN\00", align 1
@.str.347 = private unnamed_addr constant [5 x i8] c"PORT\00", align 1
end_hunk_0
begin_hunk_1_@_ZN9EmitCSyms15getSymDtorStmtsB5cxx11Ev:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.oi = load ptr, ptr %i.el, align 8, !tbaa !101
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 32
  store ptr %i.oj, ptr %i.el, align 8, !tbaa !101
  br label %"_ZZN9EmitCSyms15getSymDtorStmtsB5cxx11EvENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit227"

bb.bq:                                            ; preds = %bb.bm
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.nu, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %"_ZZN9EmitCSyms15getSymDtorStmtsB5cxx11EvENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit227" unwind label %bb.bu

"_ZZN9EmitCSyms15getSymDtorStmtsB5cxx11EvENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit227": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i223, %bb.bq
  %i.ok = load ptr, ptr %14, align 8, !tbaa !10   ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.mp
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %"_ZZN9EmitCSyms15getSymDtorStmtsB5cxx11EvENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit227"
  %i.om = load i64, ptr %i.mp, align 8, !tbaa !17
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.on) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %"_ZZN9EmitCSyms15getSymDtorStmtsB5cxx11EvENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit227", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  %i.oo = load ptr, ptr %15, align 8, !tbaa !10   ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.mr
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %i.oq = load i64, ptr %i.mr, align 8, !tbaa !17
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.or) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  %i.os = load ptr, ptr %16, align 8, !tbaa !10   ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.ms
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %i.ou = load i64, ptr %i.ms, align 8, !tbaa !17
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.br

bb.br:                                            ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %.not257 = icmp eq ptr %i.mz, %i.mn
  br i1 %.not257, label %._crit_edge, label %bb.bh

bb.bs:                                            ; preds = %bb.bi
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

bb.bt:                                            ; preds = %bb.bj
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i214
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

.loopexit.split-lp:                               ; preds = %bb.bk
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

bb.bu:                                            ; preds = %bb.bq, %.noexc.i.i.i224
  %i.oy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oz = load ptr, ptr %14, align 8, !tbaa !10   ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.mp
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.bu
  %i.pb = load i64, ptr %i.mp, align 8, !tbaa !17
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oz, i64 noundef %i.pc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.bu, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  %.pn43 = phi { ptr, i32 } [ %i.oy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.oy, %bb.bu ] ; 2 uses
  %i.pd = load ptr, ptr %15, align 8, !tbaa !10   ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.mr
  br i1 %i.pe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  %i.pf = load i64, ptr %i.mr, align 8, !tbaa !17
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %bb.bt
  %.pn43.pn = phi { ptr, i32 } [ %i.ox, %bb.bt ], [ %.pn43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ] ; 2 uses
  %i.ph = load ptr, ptr %16, align 8, !tbaa !10   ; 2 uses
  %i.pi = icmp eq ptr %i.ph, %i.ms
  br i1 %i.pi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242
  %i.pj = load i64, ptr %i.ms, align 8, !tbaa !17
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243, %bb.bs
  %.pn43.pn.pn = phi { ptr, i32 } [ %i.ow, %bb.bs ], [ %.pn43.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243 ], [ %.pn43.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.g
  %.pn52.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %i.an, %bb.g ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %.pn35.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %.pn43.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %.pn52.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EmitCSyms9emitSplitERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_m(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.d = load ptr, ptr %1, align 8, !tbaa !100
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5                   ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.preheader235.lr.ph, label %._crit_edge

.preheader235.lr.ph:                              ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 17
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 18
  br label %.preheader235

.preheader235:                                    ; preds = %.preheader235.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.aw = phi i64 [ %i.h, %.preheader235.lr.ph ], [ %i.bs, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ]
  %.051659 = phi i64 [ 0, %.preheader235.lr.ph ], [ %i.cg, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %.047658 = phi i64 [ 0, %.preheader235 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ] ; 5 uses
  %.050657 = phi i64 [ 0, %.preheader235 ], [ %i.ny, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ] ; 2 uses
  %.152656 = phi i64 [ %.051659, %.preheader235 ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ] ; 6 uses
  br label %bb.f

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !101 ; 5 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !100   ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 5                 ; 3 uses
  %i.bd = icmp ugt i64 %i.ny, %i.bc
  br i1 %i.bd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.be = sub nuw i64 %i.ny, %i.bc
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.be)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !101
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.bf = icmp ult i64 %i.ny, %i.bc
  br i1 %i.bf, label %bb.e, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.ny ; 4 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.bg
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bg, %bb.e ] ; 3 uses
  %i.bh = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !17
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, %i.ax
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !102

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !101
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bn = phi ptr [ %.pre, %bb.c ], [ %i.ax, %bb.d ], [ %i.ax, %bb.e ], [ %i.bg, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i ]
  %i.bo = load ptr, ptr %1, align 8, !tbaa !100
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 5                 ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 1
  br i1 %i.bt, label %.preheader235, label %._crit_edge, !llvm.loop !815

bb.f:                                             ; preds = %.preheader, %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %indvars.iv.in = phi i64 [ %.047658, %.preheader ], [ %indvars.iv, %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %.046654 = phi i64 [ 0, %.preheader ], [ %i.cb, %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %.148653 = phi i64 [ %.047658, %.preheader ], [ %i.bu, %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %indvars.iv = add i64 %indvars.iv.in, 1
  %i.bu = add nuw i64 %.148653, 1                 ; 4 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !100
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.148653 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !16
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull @.str.228, i64 noundef 0, i64 noundef 1) #23
  %.not.i.i75 = icmp eq i64 %i.ca, 0
  %..i = select i1 %.not.i.i75, i64 0, i64 5
  br label %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ 0, %bb.f ], [ %..i, %bb.g ]
  %i.cb = add i64 %.0.i, %.046654                 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %3
  %i.cd = sub i64 %i.bu, %.047658
  %i.ce = icmp ult i64 %i.cd, 2
  %or.cond = select i1 %i.cc, i1 true, i1 %i.ce
  %i.cf = icmp ult i64 %i.bu, %i.aw               ; 2 uses
  %or.cond74 = select i1 %or.cond, i1 %i.cf, i1 false
  br i1 %or.cond74, label %bb.f, label %.critedge, !llvm.loop !816

.critedge:                                        ; preds = %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.not.not = icmp ugt i64 %.047658, %.148653
  br i1 %.not.not, label %19, label %bb.h, !prof !9

19:                                               ; preds = %.critedge
  %20 = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 1245) ; 0 uses
  %21 = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.144)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %22) #25
  unreachable

bb.h:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cg = add i64 %.152656, 1                     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.ch = icmp ult i64 %.152656, 10
  br i1 %i.ch, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.n
  %.029.i.i = phi i32 [ %i.cp, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.co, %bb.n ], [ %.152656, %bb.h ] ; 5 uses
  %i.ci = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.cj = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ck = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.cm = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.co = udiv i64 %.02328.i.i, 10000
  %i.cp = add i32 %.029.i.i, 4                    ; 2 uses
  %i.cq = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.cq, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !465

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.h
  %.022.i.i = phi i32 [ %i.cn, %bb.m ], [ %i.cj, %bb.i ], [ %i.cl, %bb.k ], [ 1, %bb.h ], [ %i.cp, %bb.n ]
  %i.cr = zext i32 %.022.i.i to i64
  store ptr %i.j, ptr %4, align 8, !tbaa !18, !alias.scope !817
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.cr, i8 noundef signext 0)
  %i.cs = load ptr, ptr %4, align 8, !tbaa !10, !alias.scope !817 ; 4 uses
  %i.ct = icmp ugt i64 %.152656, 99
  br i1 %i.ct, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.cu = load i64, ptr %i.k, align 8, !tbaa !16, !alias.scope !817
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = add i32 %i.cv, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.cz, %.lr.ph.i4.i ], [ %.152656, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.dj, %.lr.ph.i4.i ], [ %i.cw, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cx = urem i64 %.020.i.i, 100
  %i.cy = shl nuw nsw i64 %i.cx, 1
  %i.cz = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cy ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !17, !noalias !817
  %i.dd = zext i32 %.01819.i.i to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dd
  store i8 %i.dc, ptr %i.de, align 1, !tbaa !17
  %i.df = load i8, ptr %i.da, align 2, !tbaa !17, !noalias !817
  %i.dg = add i32 %.01819.i.i, -1
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dh
  store i8 %i.df, ptr %i.di, align 1, !tbaa !17
  %i.dj = add i32 %.01819.i.i, -2
  %i.dk = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.dk, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !466

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %.152656, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.cz, %.lr.ph.i4.i ] ; 3 uses
  %i.dl = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.dl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.dm = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !17, !noalias !817
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !17
  %i.dr = load i8, ptr %i.dn, align 2, !tbaa !17, !noalias !817
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ds = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.dt = or disjoint i8 %i.ds, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.o, %bb.p
  %storemerge.i.i = phi i8 [ %i.dt, %bb.p ], [ %i.dr, %bb.o ]
  store i8 %storemerge.i.i, ptr %i.cs, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN9EmitCUtil12symClassNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9)
          to label %bb.q unwind label %bb.au

bb.q:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.du = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !820
  %i.dv = and i64 %i.du, -2
  %i.dw = icmp eq i64 %i.dv, 4611686018427387902
  br i1 %i.dw, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.991) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.q
  %i.dx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.133, i64 noundef 2)
          to label %.noexc76 unwind label %.loopexit ; 6 uses

.noexc76:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.m, ptr %8, align 8, !tbaa !18, !alias.scope !820
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !10 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.s:                                             ; preds = %.noexc76
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !16 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  %i.ee = add nuw nsw i64 %i.ec, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.dz, i64 %i.ee, i1 false)
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc76
  store ptr %i.dy, ptr %8, align 8, !tbaa !10, !alias.scope !820
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !17
  store i64 %i.ef, ptr %i.m, align 8, !tbaa !17, !alias.scope !820
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.s
  %i.eg = phi i64 [ %i.ec, %bb.s ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.eg, ptr %i.n, align 8, !tbaa !16, !alias.scope !820
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !10
  store i64 0, ptr %i.eh, align 8, !tbaa !16
  store i8 0, ptr %i.dz, align 8, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.ei = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !823 ; 2 uses
  %i.ej = load i64, ptr %i.n, align 8, !tbaa !16, !noalias !823
  %i.ek = sub i64 4611686018427387903, %i.ej
  %i.el = icmp ult i64 %i.ek, %i.ei
  br i1 %i.el, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.991) #25
          to label %.noexc80 unwind label %.loopexit.split-lp237

.noexc80:                                         ; preds = %bb.u
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.t
  %i.em = load ptr, ptr %2, align 8, !tbaa !10, !noalias !823
  %i.en = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.em, i64 noundef %i.ei)
          to label %.noexc81 unwind label %.loopexit236 ; 6 uses

.noexc81:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.p, ptr %7, align 8, !tbaa !18, !alias.scope !823
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !10 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 5 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

bb.v:                                             ; preds = %.noexc81
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !16 ; 3 uses
  %i.et = icmp ult i64 %i.es, 16
  call void @llvm.assume(i1 %i.et)
  %i.eu = add nuw nsw i64 %i.es, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.ep, i64 %i.eu, i1 false)
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %.noexc81
  store ptr %i.eo, ptr %7, align 8, !tbaa !10, !alias.scope !823
  %i.ev = load i64, ptr %i.ep, align 8, !tbaa !17
  store i64 %i.ev, ptr %i.p, align 8, !tbaa !17, !alias.scope !823
  %.phi.trans.insert.i78 = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.pre.i79 = load i64, ptr %.phi.trans.insert.i78, align 8, !tbaa !16
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.v
  %i.ew = phi i64 [ %i.es, %bb.v ], [ %.pre.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 8
end_hunk_1
