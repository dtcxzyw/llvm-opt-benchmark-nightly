Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLLexer?download=true
inline.NumInlined: 1627
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.llvm::fltSemantics" = type <{ i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8] }>
%"class.llvm::SMDiagnostic" = type { ptr, %"class.llvm::SMLoc", %"class.std::__cxx11::basic_string", i32, i32, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::vector", %"class.llvm::SmallVector" }
%"class.llvm::SMLoc" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [192 x i8] }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.llvm::ArrayRef.4" = type { ptr, i64 }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::detail::IEEEFloat" = type <{ ptr, %"union.llvm::detail::IEEEFloat::Significand", i32, i8, [3 x i8] }>
%"union.llvm::detail::IEEEFloat::Significand" = type { i64 }
%"class.llvm::APInt" = type <{ %union.anon.0, i32, [4 x i8] }>
%union.anon.0 = type { i64 }
%"class.llvm::APSInt" = type { %"class.llvm::APInt.base", i8, [3 x i8] }
%"class.llvm::APInt.base" = type <{ %union.anon.0, i32 }>
%"class.llvm::APFloat" = type { %"union.llvm::APFloat::Storage" }
%"union.llvm::APFloat::Storage" = type { %"class.llvm::detail::DoubleAPFloat", [8 x i8] }
%"class.llvm::detail::DoubleAPFloat" = type { ptr, ptr }
%"class.llvm::StringRef" = type { ptr, i64 }

$_ZN4llvm12SMDiagnosticaSEOS0_ = comdat any

$_ZN4llvm15SmallVectorImplINS_7SMFixItEEaSEOS2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm = comdat any

$_ZZN4llvm13hexDigitValueEcE3LUT = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [38 x i8] c"constant bigger than 64 bits detected\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"constant bigger than 128 bits detected\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"end of file in COMDAT variable name\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"NUL character is not allowed in names\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"end of file in string constant\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"invalid value number (too large)\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"end of file in global variable name\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"bitwidth for integer or byte type out of range\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"declare\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"dso_local\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"dso_preemptable\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"available_externally\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"linkonce\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"linkonce_odr\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"weak\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"weak_odr\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"appending\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"unnamed_addr\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"local_unnamed_addr\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"externally_initialized\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"extern_weak\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"thread_local\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"initialexec\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"localexec\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"zeroinitializer\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"poison\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"caller\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"musttail\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"notail\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"source_filename\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"unwind\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"datalayout\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"elementwise\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"atomic\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"unordered\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"acquire\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"syncscope\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"nnan\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"nsz\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"arcp\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"contract\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"reassoc\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"afn\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"nuw\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"nusw\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"exact\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"disjoint\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"nneg\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"samesign\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"inrange\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"addrspace\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"partition\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"code_model\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"sideeffect\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"inteldialect\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"prologue\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"prefalign\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"no_sanitize_address\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"no_sanitize_hwaddress\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"sanitize_address_dyninit\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"ccc\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"fastcc\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"cfguard_checkcc\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"x86_stdcallcc\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"x86_fastcallcc\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"x86_vectorcallcc\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"arm_apcscc\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"arm_aapcscc\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"arm_aapcs_vfpcc\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"aarch64_vector_pcs\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"aarch64_sve_vector_pcs\00", align 1
@.str.115 = private unnamed_addr constant [33 x i8] c"aarch64_sme_preservemost_from_x0\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"msp430_intrcc\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"avr_intrcc\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"avr_signalcc\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"ptx_kernel\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"spir_kernel\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"spir_func\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"intel_ocl_bicc\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"x86_64_sysvcc\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"win64cc\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"x86_regcallcc\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"swiftcc\00", align 1
@.str.130 = private unnamed_addr constant [12 x i8] c"swifttailcc\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"anyregcc\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"preserve_mostcc\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"preserve_allcc\00", align 1
@.str.134 = private unnamed_addr constant [16 x i8] c"preserve_nonecc\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"ghccc\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"x86_intrcc\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"hhvmcc\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"hhvm_ccc\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"cxx_fast_tlscc\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"amdgpu_vs\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c"amdgpu_cs_chain\00", align 1
@.str.148 = private unnamed_addr constant [25 x i8] c"amdgpu_cs_chain_preserve\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"amdgpu_kernel\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"amdgpu_gfx\00", align 1
@.str.151 = private unnamed_addr constant [22 x i8] c"amdgpu_gfx_whole_wave\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"tailcc\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"m68k_rtdcc\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"graalcc\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"riscv_vector_cc\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"riscv_vls_cc\00", align 1
@.str.157 = private unnamed_addr constant [26 x i8] c"cheriot_compartmentcallcc\00", align 1
@.str.158 = private unnamed_addr constant [28 x i8] c"cheriot_compartmentcalleecc\00", align 1
@.str.159 = private unnamed_addr constant [22 x i8] c"cheriot_librarycallcc\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"allocalign\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"allocptr\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"alwaysinline\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"convergent\00", align 1
@.str.171 = private unnamed_addr constant [32 x i8] c"coro_only_destroy_when_complete\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c"coro_elide_safe\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"dead_on_unwind\00", align 1
@.str.174 = private unnamed_addr constant [34 x i8] c"disable_sanitizer_instrumentation\00", align 1
@.str.175 = private unnamed_addr constant [8 x i8] c"flatten\00", align 1
@.str.176 = private unnamed_addr constant [20 x i8] c"fn_ret_thunk_extern\00", align 1
@.str.177 = private unnamed_addr constant [4 x i8] c"hot\00", align 1
@.str.178 = private unnamed_addr constant [17 x i8] c"hybrid_patchable\00", align 1
@.str.179 = private unnamed_addr constant [7 x i8] c"immarg\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"inreg\00", align 1
@.str.181 = private unnamed_addr constant [11 x i8] c"inlinehint\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"jumptable\00", align 1
@.str.183 = private unnamed_addr constant [8 x i8] c"minsize\00", align 1
@.str.184 = private unnamed_addr constant [13 x i8] c"mustprogress\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"naked\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"nest\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c"noalias\00", align 1
@.str.188 = private unnamed_addr constant [10 x i8] c"nobuiltin\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c"nocallback\00", align 1
@.str.191 = private unnamed_addr constant [22 x i8] c"nocreateundeforpoison\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"nodivergencesource\00", align 1
@.str.193 = private unnamed_addr constant [12 x i8] c"noduplicate\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"noext\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"nofree\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"noipa\00", align 1
@.str.197 = private unnamed_addr constant [16 x i8] c"noimplicitfloat\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"noinline\00", align 1
@.str.199 = private unnamed_addr constant [8 x i8] c"nomerge\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"nooutline\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"noreturn\00", align 1
@.str.205 = private unnamed_addr constant [18 x i8] c"nosanitize_bounds\00", align 1
@.str.206 = private unnamed_addr constant [20 x i8] c"nosanitize_coverage\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"nosync\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c"noundef\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"nounwind\00", align 1
@.str.210 = private unnamed_addr constant [12 x i8] c"nonlazybind\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"nonnull\00", align 1
@.str.212 = private unnamed_addr constant [22 x i8] c"null_pointer_is_valid\00", align 1
@.str.213 = private unnamed_addr constant [14 x i8] c"optforfuzzing\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"optdebug\00", align 1
@.str.215 = private unnamed_addr constant [8 x i8] c"optsize\00", align 1
@.str.217 = private unnamed_addr constant [18 x i8] c"presplitcoroutine\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"readnone\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"returns_twice\00", align 1
@.str.222 = private unnamed_addr constant [8 x i8] c"signext\00", align 1
@.str.223 = private unnamed_addr constant [10 x i8] c"safestack\00", align 1
@.str.224 = private unnamed_addr constant [17 x i8] c"sanitize_address\00", align 1
@.str.225 = private unnamed_addr constant [21 x i8] c"sanitize_alloc_token\00", align 1
@.str.226 = private unnamed_addr constant [19 x i8] c"sanitize_hwaddress\00", align 1
@.str.227 = private unnamed_addr constant [16 x i8] c"sanitize_memtag\00", align 1
@.str.229 = private unnamed_addr constant [29 x i8] c"sanitize_numerical_stability\00", align 1
@.str.230 = private unnamed_addr constant [18 x i8] c"sanitize_realtime\00", align 1
@.str.231 = private unnamed_addr constant [27 x i8] c"sanitize_realtime_blocking\00", align 1
@.str.232 = private unnamed_addr constant [16 x i8] c"sanitize_thread\00", align 1
@.str.233 = private unnamed_addr constant [14 x i8] c"sanitize_type\00", align 1
@.str.234 = private unnamed_addr constant [16 x i8] c"shadowcallstack\00", align 1
@.str.235 = private unnamed_addr constant [12 x i8] c"skipprofile\00", align 1
@.str.236 = private unnamed_addr constant [13 x i8] c"speculatable\00", align 1
@.str.237 = private unnamed_addr constant [27 x i8] c"speculative_load_hardening\00", align 1
@.str.238 = private unnamed_addr constant [4 x i8] c"ssp\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"sspreq\00", align 1
@.str.240 = private unnamed_addr constant [10 x i8] c"sspstrong\00", align 1
@.str.241 = private unnamed_addr constant [9 x i8] c"strictfp\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"swiftasync\00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c"swiftself\00", align 1
@.str.245 = private unnamed_addr constant [11 x i8] c"willreturn\00", align 1
@.str.246 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@.str.247 = private unnamed_addr constant [10 x i8] c"writeonly\00", align 1
@.str.248 = private unnamed_addr constant [8 x i8] c"zeroext\00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c"byref\00", align 1
@.str.251 = private unnamed_addr constant [12 x i8] c"elementtype\00", align 1
@.str.252 = private unnamed_addr constant [9 x i8] c"inalloca\00", align 1
@.str.253 = private unnamed_addr constant [13 x i8] c"preallocated\00", align 1
@.str.254 = private unnamed_addr constant [5 x i8] c"sret\00", align 1
@.str.255 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.256 = private unnamed_addr constant [10 x i8] c"allockind\00", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"captures\00", align 1
@.str.259 = private unnamed_addr constant [15 x i8] c"dead_on_return\00", align 1
@.str.261 = private unnamed_addr constant [16 x i8] c"dereferenceable\00", align 1
@.str.262 = private unnamed_addr constant [24 x i8] c"dereferenceable_or_null\00", align 1
@.str.263 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.264 = private unnamed_addr constant [10 x i8] c"nofpclass\00", align 1
@.str.265 = private unnamed_addr constant [11 x i8] c"alignstack\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"uwtable\00", align 1
@.str.267 = private unnamed_addr constant [13 x i8] c"vscale_range\00", align 1
@.str.268 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.269 = private unnamed_addr constant [12 x i8] c"initializes\00", align 1
@.str.270 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.271 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.272 = private unnamed_addr constant [10 x i8] c"readwrite\00", align 1
@.str.273 = private unnamed_addr constant [7 x i8] c"argmem\00", align 1
@.str.274 = private unnamed_addr constant [12 x i8] c"target_mem0\00", align 1
@.str.276 = private unnamed_addr constant [11 x i8] c"target_mem\00", align 1
@.str.277 = private unnamed_addr constant [16 x i8] c"inaccessiblemem\00", align 1
@.str.278 = private unnamed_addr constant [9 x i8] c"errnomem\00", align 1
@.str.279 = private unnamed_addr constant [11 x i8] c"argmemonly\00", align 1
@.str.280 = private unnamed_addr constant [20 x i8] c"inaccessiblememonly\00", align 1
@.str.281 = private unnamed_addr constant [30 x i8] c"inaccessiblemem_or_argmemonly\00", align 1
@.str.282 = private unnamed_addr constant [10 x i8] c"nocapture\00", align 1
@.str.283 = private unnamed_addr constant [16 x i8] c"address_is_null\00", align 1
@.str.284 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.285 = private unnamed_addr constant [11 x i8] c"provenance\00", align 1
@.str.286 = private unnamed_addr constant [16 x i8] c"read_provenance\00", align 1
@.str.287 = private unnamed_addr constant [5 x i8] c"ieee\00", align 1
@.str.288 = private unnamed_addr constant [13 x i8] c"preservesign\00", align 1
@.str.290 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.291 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.292 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.293 = private unnamed_addr constant [5 x i8] c"snan\00", align 1
@.str.294 = private unnamed_addr constant [5 x i8] c"qnan\00", align 1
@.str.295 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.296 = private unnamed_addr constant [5 x i8] c"pinf\00", align 1
@.str.298 = private unnamed_addr constant [6 x i8] c"nnorm\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"nsub\00", align 1
@.str.303 = private unnamed_addr constant [6 x i8] c"nzero\00", align 1
@.str.305 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.306 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.308 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.309 = private unnamed_addr constant [11 x i8] c"exactmatch\00", align 1
@.str.310 = private unnamed_addr constant [8 x i8] c"largest\00", align 1
@.str.311 = private unnamed_addr constant [14 x i8] c"nodeduplicate\00", align 1
@.str.312 = private unnamed_addr constant [9 x i8] c"samesize\00", align 1
@.str.313 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.315 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@.str.333 = private unnamed_addr constant [5 x i8] c"xchg\00", align 1
@.str.335 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.337 = private unnamed_addr constant [5 x i8] c"umax\00", align 1
@.str.341 = private unnamed_addr constant [9 x i8] c"fmaximum\00", align 1
@.str.343 = private unnamed_addr constant [12 x i8] c"fmaximumnum\00", align 1
@.str.345 = private unnamed_addr constant [10 x i8] c"uinc_wrap\00", align 1
@.str.348 = private unnamed_addr constant [9 x i8] c"usub_sat\00", align 1
@.str.349 = private unnamed_addr constant [6 x i8] c"splat\00", align 1
@.str.350 = private unnamed_addr constant [7 x i8] c"vscale\00", align 1
@.str.351 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.352 = private unnamed_addr constant [13 x i8] c"blockaddress\00", align 1
@.str.353 = private unnamed_addr constant [21 x i8] c"dso_local_equivalent\00", align 1
@.str.354 = private unnamed_addr constant [7 x i8] c"no_cfi\00", align 1
@.str.355 = private unnamed_addr constant [8 x i8] c"ptrauth\00", align 1
@.str.356 = private unnamed_addr constant [9 x i8] c"distinct\00", align 1
@.str.357 = private unnamed_addr constant [13 x i8] c"uselistorder\00", align 1
@.str.358 = private unnamed_addr constant [12 x i8] c"personality\00", align 1
@.str.359 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@.str.360 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.361 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.362 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.364 = private unnamed_addr constant [3 x i8] c"gv\00", align 1
@.str.365 = private unnamed_addr constant [5 x i8] c"guid\00", align 1
@.str.367 = private unnamed_addr constant [10 x i8] c"summaries\00", align 1
@.str.368 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.369 = private unnamed_addr constant [11 x i8] c"blockcount\00", align 1
@.str.370 = private unnamed_addr constant [8 x i8] c"linkage\00", align 1
@.str.371 = private unnamed_addr constant [11 x i8] c"visibility\00", align 1
@.str.372 = private unnamed_addr constant [20 x i8] c"notEligibleToImport\00", align 1
@.str.373 = private unnamed_addr constant [5 x i8] c"live\00", align 1
@.str.374 = private unnamed_addr constant [9 x i8] c"dsoLocal\00", align 1
@.str.375 = private unnamed_addr constant [12 x i8] c"canAutoHide\00", align 1
@.str.376 = private unnamed_addr constant [11 x i8] c"importType\00", align 1
@.str.378 = private unnamed_addr constant [12 x i8] c"declaration\00", align 1
@.str.379 = private unnamed_addr constant [20 x i8] c"noRenameOnPromotion\00", align 1
@.str.380 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.381 = private unnamed_addr constant [6 x i8] c"insts\00", align 1
@.str.382 = private unnamed_addr constant [10 x i8] c"funcFlags\00", align 1
@.str.383 = private unnamed_addr constant [9 x i8] c"readNone\00", align 1
@.str.385 = private unnamed_addr constant [10 x i8] c"noRecurse\00", align 1
@.str.386 = private unnamed_addr constant [19 x i8] c"returnDoesNotAlias\00", align 1
@.str.387 = private unnamed_addr constant [9 x i8] c"noInline\00", align 1
@.str.388 = private unnamed_addr constant [13 x i8] c"alwaysInline\00", align 1
@.str.389 = private unnamed_addr constant [9 x i8] c"noUnwind\00", align 1
@.str.391 = private unnamed_addr constant [15 x i8] c"hasUnknownCall\00", align 1
@.str.392 = private unnamed_addr constant [18 x i8] c"mustBeUnreachable\00", align 1
@.str.393 = private unnamed_addr constant [6 x i8] c"calls\00", align 1
@.str.394 = private unnamed_addr constant [7 x i8] c"callee\00", align 1
@.str.396 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.397 = private unnamed_addr constant [8 x i8] c"hotness\00", align 1
@.str.399 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.400 = private unnamed_addr constant [6 x i8] c"relbf\00", align 1
@.str.401 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.402 = private unnamed_addr constant [12 x i8] c"vTableFuncs\00", align 1
@.str.403 = private unnamed_addr constant [9 x i8] c"virtFunc\00", align 1
@.str.404 = private unnamed_addr constant [8 x i8] c"aliasee\00", align 1
@.str.405 = private unnamed_addr constant [5 x i8] c"refs\00", align 1
@.str.406 = private unnamed_addr constant [11 x i8] c"typeIdInfo\00", align 1
@.str.407 = private unnamed_addr constant [10 x i8] c"typeTests\00", align 1
@.str.408 = private unnamed_addr constant [21 x i8] c"typeTestAssumeVCalls\00", align 1
@.str.409 = private unnamed_addr constant [22 x i8] c"typeCheckedLoadVCalls\00", align 1
@.str.410 = private unnamed_addr constant [26 x i8] c"typeTestAssumeConstVCalls\00", align 1
@.str.411 = private unnamed_addr constant [27 x i8] c"typeCheckedLoadConstVCalls\00", align 1
@.str.412 = private unnamed_addr constant [8 x i8] c"vFuncId\00", align 1
@.str.413 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.414 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.415 = private unnamed_addr constant [7 x i8] c"typeid\00", align 1
@.str.416 = private unnamed_addr constant [23 x i8] c"typeidCompatibleVTable\00", align 1
@.str.417 = private unnamed_addr constant [8 x i8] c"summary\00", align 1
@.str.418 = private unnamed_addr constant [12 x i8] c"typeTestRes\00", align 1
@.str.419 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.420 = private unnamed_addr constant [6 x i8] c"unsat\00", align 1
@.str.421 = private unnamed_addr constant [10 x i8] c"byteArray\00", align 1
@.str.422 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.424 = private unnamed_addr constant [8 x i8] c"allOnes\00", align 1
@.str.425 = private unnamed_addr constant [15 x i8] c"sizeM1BitWidth\00", align 1
@.str.426 = private unnamed_addr constant [10 x i8] c"alignLog2\00", align 1
@.str.427 = private unnamed_addr constant [7 x i8] c"sizeM1\00", align 1
@.str.428 = private unnamed_addr constant [8 x i8] c"bitMask\00", align 1
@.str.429 = private unnamed_addr constant [11 x i8] c"inlineBits\00", align 1
@.str.430 = private unnamed_addr constant [17 x i8] c"vcall_visibility\00", align 1
@.str.431 = private unnamed_addr constant [15 x i8] c"wpdResolutions\00", align 1
@.str.432 = private unnamed_addr constant [7 x i8] c"wpdRes\00", align 1
@.str.433 = private unnamed_addr constant [6 x i8] c"indir\00", align 1
@.str.434 = private unnamed_addr constant [11 x i8] c"singleImpl\00", align 1
@.str.435 = private unnamed_addr constant [13 x i8] c"branchFunnel\00", align 1
@.str.436 = private unnamed_addr constant [15 x i8] c"singleImplName\00", align 1
@.str.437 = private unnamed_addr constant [9 x i8] c"resByArg\00", align 1
@.str.438 = private unnamed_addr constant [6 x i8] c"byArg\00", align 1
@.str.439 = private unnamed_addr constant [14 x i8] c"uniformRetVal\00", align 1
@.str.440 = private unnamed_addr constant [13 x i8] c"uniqueRetVal\00", align 1
@.str.441 = private unnamed_addr constant [17 x i8] c"virtualConstProp\00", align 1
@.str.442 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.444 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@.str.445 = private unnamed_addr constant [9 x i8] c"varFlags\00", align 1
@.str.446 = private unnamed_addr constant [10 x i8] c"callsites\00", align 1
@.str.447 = private unnamed_addr constant [7 x i8] c"clones\00", align 1
@.str.448 = private unnamed_addr constant [9 x i8] c"stackIds\00", align 1
@.str.449 = private unnamed_addr constant [7 x i8] c"allocs\00", align 1
@.str.450 = private unnamed_addr constant [9 x i8] c"versions\00", align 1
@.str.451 = private unnamed_addr constant [8 x i8] c"memProf\00", align 1
@.str.453 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.455 = private unnamed_addr constant [7 x i8] c"bfloat\00", align 1
@.str.456 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.457 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.458 = private unnamed_addr constant [9 x i8] c"x86_fp80\00", align 1
@.str.459 = private unnamed_addr constant [6 x i8] c"fp128\00", align 1
@.str.460 = private unnamed_addr constant [10 x i8] c"ppc_fp128\00", align 1
@.str.461 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.462 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@.str.463 = private unnamed_addr constant [8 x i8] c"x86_amx\00", align 1
@.str.464 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.465 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.466 = private unnamed_addr constant [5 x i8] c"fneg\00", align 1
@.str.467 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.468 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@.str.469 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.470 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@.str.471 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.472 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@.str.479 = private unnamed_addr constant [4 x i8] c"shl\00", align 1
@.str.480 = private unnamed_addr constant [5 x i8] c"lshr\00", align 1
@.str.482 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.483 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.484 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.485 = private unnamed_addr constant [5 x i8] c"icmp\00", align 1
@.str.487 = private unnamed_addr constant [4 x i8] c"phi\00", align 1
@.str.488 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.489 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.490 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@.str.492 = private unnamed_addr constant [8 x i8] c"fptrunc\00", align 1
@.str.493 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@.str.494 = private unnamed_addr constant [7 x i8] c"uitofp\00", align 1
@.str.498 = private unnamed_addr constant [9 x i8] c"inttoptr\00", align 1
@.str.499 = private unnamed_addr constant [10 x i8] c"ptrtoaddr\00", align 1
@.str.500 = private unnamed_addr constant [9 x i8] c"ptrtoint\00", align 1
@.str.501 = private unnamed_addr constant [8 x i8] c"bitcast\00", align 1
@.str.502 = private unnamed_addr constant [14 x i8] c"addrspacecast\00", align 1
@.str.503 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.505 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.506 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.507 = private unnamed_addr constant [11 x i8] c"indirectbr\00", align 1
@.str.508 = private unnamed_addr constant [7 x i8] c"invoke\00", align 1
@.str.510 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.511 = private unnamed_addr constant [7 x i8] c"callbr\00", align 1
@.str.513 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.514 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.515 = private unnamed_addr constant [8 x i8] c"cmpxchg\00", align 1
@.str.516 = private unnamed_addr constant [10 x i8] c"atomicrmw\00", align 1
@.str.517 = private unnamed_addr constant [6 x i8] c"fence\00", align 1
@.str.518 = private unnamed_addr constant [14 x i8] c"getelementptr\00", align 1
@.str.519 = private unnamed_addr constant [15 x i8] c"extractelement\00", align 1
@.str.520 = private unnamed_addr constant [14 x i8] c"insertelement\00", align 1
@.str.522 = private unnamed_addr constant [13 x i8] c"extractvalue\00", align 1
@.str.523 = private unnamed_addr constant [12 x i8] c"insertvalue\00", align 1
@.str.524 = private unnamed_addr constant [11 x i8] c"landingpad\00", align 1
@.str.526 = private unnamed_addr constant [9 x i8] c"catchret\00", align 1
@.str.527 = private unnamed_addr constant [12 x i8] c"catchswitch\00", align 1
@.str.528 = private unnamed_addr constant [9 x i8] c"catchpad\00", align 1
@.str.529 = private unnamed_addr constant [11 x i8] c"cleanuppad\00", align 1
@.str.530 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.542 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.543 = private unnamed_addr constant [12 x i8] c"dbg_declare\00", align 1
@.str.544 = private unnamed_addr constant [11 x i8] c"dbg_assign\00", align 1
@.str.545 = private unnamed_addr constant [7 x i8] c"assign\00", align 1
@.str.546 = private unnamed_addr constant [10 x i8] c"dbg_label\00", align 1
@.str.547 = private unnamed_addr constant [18 x i8] c"dbg_declare_value\00", align 1
@.str.548 = private unnamed_addr constant [14 x i8] c"declare_value\00", align 1
@.str.553 = private unnamed_addr constant [10 x i8] c"FullDebug\00", align 1
@.str.554 = private unnamed_addr constant [15 x i8] c"LineTablesOnly\00", align 1
@.str.555 = private unnamed_addr constant [20 x i8] c"DebugDirectivesOnly\00", align 1
@.str.556 = private unnamed_addr constant [4 x i8] c"GNU\00", align 1
@.str.557 = private unnamed_addr constant [6 x i8] c"Apple\00", align 1
@.str.558 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.559 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.560 = private unnamed_addr constant [7 x i8] c"Binary\00", align 1
@.str.561 = private unnamed_addr constant [8 x i8] c"Decimal\00", align 1
@.str.562 = private unnamed_addr constant [9 x i8] c"Rational\00", align 1
@.str.563 = private unnamed_addr constant [49 x i8] c"hexadecimal constant too large for half (16-bit)\00", align 1
@.str.564 = private unnamed_addr constant [51 x i8] c"hexadecimal constant too large for bfloat (16-bit)\00", align 1
@.str.565 = private unnamed_addr constant [8 x i8] c"-nan(0)\00", align 1
@.str.566 = private unnamed_addr constant [7 x i8] c"nan(0)\00", align 1
@.str.567 = private unnamed_addr constant [21 x i8] c"unclosed nan literal\00", align 1
@.str.569 = private unnamed_addr constant [35 x i8] c"bad payload format for nan literal\00", align 1
@_ZZN4llvm13hexDigitValueEcE3LUT = linkonce_odr local_unnamed_addr constant [256 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], comdat, align 16
@_ZN4llvm11APFloatBase13semIEEEdoubleE = external global %"struct.llvm::fltSemantics", align 4

@_ZN4llvm7LLLexerC1ENS_9StringRefERNS_9SourceMgrERNS_12SMDiagnosticERNS_11LLVMContextE = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, ptr), ptr @_ZN4llvm7LLLexerC2ENS_9StringRefERNS_9SourceMgrERNS_12SMDiagnosticERNS_11LLVMContextE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(169) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SMDiagnostic", align 8 ; 15 uses
  %5 = alloca %"class.llvm::ArrayRef", align 8    ; 2 uses
  %6 = alloca %"class.llvm::ArrayRef.4", align 8  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72
  %i.c = icmp slt i32 %3, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35, !nonnull !36, !align !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @_ZNK4llvm9SourceMgr10GetMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SMDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.4") align 8 %6) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73, !nonnull !36, !align !37
  %i.h = call noundef nonnull align 8 dereferenceable(360) ptr @_ZN4llvm12SMDiagnosticaSEOS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.g, ptr noundef nonnull align 8 dereferenceable(360) %4) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.m = zext i32 %i.l to i64
  %.idx.i.i = mul nuw nsw i64 %i.m, 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.o, %_ZN4llvm7SMFixItD2Ev.exit.i.i.i ], [ %i.n, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4llvm7SMFixItD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !42
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #16
  br label %_ZN4llvm7SMFixItD2Ev.exit.i.i.i

_ZN4llvm7SMFixItD2Ev.exit.i.i.i:                  ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.j, %i.o
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !39
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, %bb.b
  %i.v = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  call void @free(ptr noundef %i.v) #15
  br label %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i: ; preds = %bb.c, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #16
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !42
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !42
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN4llvm12SMDiagnosticD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !42
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #16
  br label %_ZN4llvm12SMDiagnosticD2Ev.exit

_ZN4llvm12SMDiagnosticD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  store i32 %3, ptr %i.a, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4llvm12SMDiagnosticD2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK4llvm9SourceMgr10GetMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEE(ptr dead_on_unwind writable sret(%"class.llvm::SMDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr, i32 noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef byval(%"class.llvm::ArrayRef") align 8, ptr noundef byval(%"class.llvm::ArrayRef.4") align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(360) ptr @_ZN4llvm12SMDiagnosticaSEOS0_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !41   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !41   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %.thread.i
end_hunk_0
begin_hunk_1_@_ZN4llvm7LLLexer8LexTokenEv:bb.a
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !61
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

bb.y:                                             ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  %i.cb = load i8, ptr %i.j, align 1, !tbaa !42
  %i.cc = add i8 %i.cb, -48
  %isdigit.i = icmp ult i8 %i.cc, 10
  br i1 %isdigit.i, label %.preheader.i.i18, label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

.preheader.i.i18:                                 ; preds = %bb.y, %.preheader.i.i18
  %.pn.i.i19 = phi ptr [ %storemerge.i.i20, %.preheader.i.i18 ], [ %i.j, %bb.y ] ; 3 uses
  %storemerge.i.i20 = getelementptr inbounds nuw i8, ptr %.pn.i.i19, i64 1 ; 3 uses
  store ptr %storemerge.i.i20, ptr %0, align 8, !tbaa !67
  %i.cd = load i8, ptr %storemerge.i.i20, align 1, !tbaa !42
  %i.ce = add i8 %i.cd, -48
  %isdigit5.i.i21 = icmp ult i8 %i.ce, 10
  br i1 %isdigit5.i.i21, label %.preheader.i.i18, label %bb.z, !llvm.loop !6

bb.z:                                             ; preds = %.preheader.i.i18
  %.not17.i.i.i22 = icmp eq ptr %i.i, %.pn.i.i19
  br i1 %.not17.i.i.i22, label %_ZN4llvm7LLLexer9LexUIntIDENS_5lltok4KindE.exit.i, label %.critedge.i.i.i23

bb.aa:                                            ; preds = %.critedge.i.i.i23
  %.not.i.i.i28 = icmp eq ptr %.01418.i.i.i26, %.pn.i.i19
  br i1 %.not.i.i.i28, label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.i.i29, label %.critedge.i.i.i23, !llvm.loop !1

.critedge.i.i.i23:                                ; preds = %bb.z, %bb.aa
  %.01219.i.i.i24 = phi i64 [ %i.cj, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %.01418.i.pn.i.i25 = phi ptr [ %.01418.i.i.i26, %bb.aa ], [ %i.i, %bb.z ]
  %.01418.i.i.i26 = getelementptr inbounds nuw i8, ptr %.01418.i.pn.i.i25, i64 1 ; 3 uses
  %i.cf = mul i64 %.01219.i.i.i24, 10
  %i.cg = load i8, ptr %.01418.i.i.i26, align 1, !tbaa !42
  %i.ch = sext i8 %i.cg to i64
  %i.ci = add i64 %i.cf, -48
  %i.cj = add i64 %i.ci, %i.ch                    ; 4 uses
  %.not15.i.i.i27 = icmp ult i64 %i.cj, %.01219.i.i.i24
  br i1 %.not15.i.i.i27, label %bb.ab, label %bb.aa

bb.ab:                                            ; preds = %.critedge.i.i.i23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.cl, align 1, !tbaa !52
  store ptr @.str, ptr %3, align 8, !tbaa !42
  store i8 3, ptr %i.ck, align 8, !tbaa !53
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN4llvm7LLLexer9LexUIntIDENS_5lltok4KindE.exit.i

_ZN4llvm7LLLexer6atoullEPKcS2_.exit.i.i29:        ; preds = %bb.aa
  %i.cm = trunc i64 %i.cj to i32                  ; 2 uses
  %.not.i.i30 = icmp ult i64 %i.cj, 4294967296
  br i1 %.not.i.i30, label %_ZN4llvm7LLLexer9LexUIntIDENS_5lltok4KindE.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.i.i29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.co, align 1, !tbaa !52
  store ptr @.str.6, ptr %4, align 8, !tbaa !42
  store i8 3, ptr %i.cn, align 8, !tbaa !53
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN4llvm7LLLexer9LexUIntIDENS_5lltok4KindE.exit.i

_ZN4llvm7LLLexer9LexUIntIDENS_5lltok4KindE.exit.i: ; preds = %bb.ac, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.i.i29, %bb.ab, %bb.z
  %i.cp = phi i32 [ %i.cm, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.i.i29 ], [ %i.cm, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.z ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !61
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

bb.ad:                                            ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit, %_ZN4llvm7LLLexer8LexQuoteEv.exit, %_ZN4llvm7LLLexer8LexQuoteEv.exit, %_ZN4llvm7LLLexer8LexQuoteEv.exit, %_ZN4llvm7LLLexer8LexQuoteEv.exit, %_ZN4llvm7LLLexer8LexQuoteEv.exit, %_ZN4llvm7LLLexer8LexQuoteEv.exit, %_ZN4llvm7LLLexer8LexQuoteEv.exit, %_ZN4llvm7LLLexer8LexQuoteEv.exit, %_ZN4llvm7LLLexer8LexQuoteEv.exit, %_ZN4llvm7LLLexer8LexQuoteEv.exit
  %i.cr = tail call noundef i32 @_ZN4llvm7LLLexer18LexDigitOrNegativeEv(ptr noundef nonnull align 8 dereferenceable(169) %0)
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

bb.ae:                                            ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

bb.af:                                            ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

bb.ag:                                            ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

bb.ah:                                            ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

bb.ai:                                            ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

bb.aj:                                            ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

bb.ak:                                            ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

bb.al:                                            ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  store ptr %i.cs, ptr %0, align 8, !tbaa !67
  %i.ct = load i8, ptr %i.j, align 1, !tbaa !42
  switch i8 %i.ct, label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread [
    i8 0, label %bb.am
    i8 42, label %.preheader
  ]

bb.am:                                            ; preds = %bb.al
  %.not.i33 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i33, label %bb.an, label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

bb.an:                                            ; preds = %bb.am
  store ptr %i.j, ptr %0, align 8, !tbaa !67
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

.preheader:                                       ; preds = %bb.al, %.preheader.backedge
  %i.cu = phi ptr [ %.be, %.preheader.backedge ], [ %i.cs, %bb.al ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 6 uses
  store ptr %i.cv, ptr %0, align 8, !tbaa !67
  %i.cw = load i8, ptr %i.cu, align 1, !tbaa !42
  switch i8 %i.cw, label %.preheader.backedge [
    i8 0, label %bb.ao
    i8 42, label %bb.ap
  ]

bb.ao:                                            ; preds = %.preheader
  %.not.i.i37 = icmp eq ptr %i.cu, %i.h
  br i1 %.not.i.i37, label %_ZN4llvm7LLLexer11getNextCharEv.exit.thread12.i, label %.preheader.backedge

_ZN4llvm7LLLexer11getNextCharEv.exit.thread12.i:  ; preds = %bb.ao
  store ptr %i.cu, ptr %0, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.cy, align 1, !tbaa !52
  store ptr @.str.2, ptr %1, align 8, !tbaa !42
  store i8 3, ptr %i.cx, align 8, !tbaa !53
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(34) %1, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

bb.ap:                                            ; preds = %.preheader
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 2 ; 4 uses
  store ptr %i.cz, ptr %0, align 8, !tbaa !67
  %i.da = load i8, ptr %i.cv, align 1, !tbaa !42
  switch i8 %i.da, label %.preheader.backedge [
    i8 0, label %bb.aq
    i8 47, label %_ZN4llvm7LLLexer8LexQuoteEv.exit.backedge
  ]

bb.aq:                                            ; preds = %bb.ap
  %.not.i9.i = icmp eq ptr %i.cv, %i.h
  br i1 %.not.i9.i, label %_ZN4llvm7LLLexer11getNextCharEv.exit10.thread15.i, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.aq, %bb.ap, %bb.ao, %.preheader
  %.be = phi ptr [ %i.cv, %bb.ao ], [ %i.cz, %bb.ap ], [ %i.cv, %.preheader ], [ %i.cz, %bb.aq ]
  br label %.preheader

_ZN4llvm7LLLexer11getNextCharEv.exit10.thread15.i: ; preds = %bb.aq
  store ptr %i.cv, ptr %0, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.dc, align 1, !tbaa !52
  store ptr @.str.2, ptr %2, align 8, !tbaa !42
  store i8 3, ptr %i.db, align 8, !tbaa !53
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit: ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit162: ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit273: ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit373: ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit477: ; preds = %_ZN4llvm7LLLexer8LexQuoteEv.exit
  br label %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread

_ZN4llvm7LLLexer11getNextCharEv.exit34.thread:    ; preds = %bb.al, %_ZN4llvm7LLLexer8LexQuoteEv.exit, %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit477, %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit373, %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit273, %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit162, %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit, %bb.am, %bb.an, %bb.d, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %_ZN4llvm7LLLexer11getNextCharEv.exit.thread, %bb.q, %.loopexit, %bb.l, %bb.s, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread.i.i, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.o, %bb.p, %bb.i, %bb.j, %bb.k, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i, %bb.t, %bb.y, %_ZN4llvm7LLLexer9LexUIntIDENS_5lltok4KindE.exit.i, %_ZN4llvm7LLLexer11getNextCharEv.exit.thread12.i, %_ZN4llvm7LLLexer11getNextCharEv.exit10.thread15.i
  %.2.ph = phi i32 [ 1, %_ZN4llvm7LLLexer11getNextCharEv.exit10.thread15.i ], [ 1, %_ZN4llvm7LLLexer11getNextCharEv.exit.thread12.i ], [ 17, %bb.y ], [ 530, %_ZN4llvm7LLLexer9LexUIntIDENS_5lltok4KindE.exit.i ], [ 531, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread.i.i ], [ 532, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i ], [ %i.u, %bb.j ], [ 1, %bb.l ], [ %i.u, %bb.i ], [ 1, %bb.p ], [ %i.p, %bb.d ], [ 1, %bb.o ], [ 15, %bb.ak ], [ 5, %bb.aj ], [ 4, %bb.ai ], [ 13, %bb.ah ], [ 12, %bb.ag ], [ 11, %bb.af ], [ 10, %bb.ae ], [ 9, %_ZN4llvm7LLLexer8LexQuoteEv.exit ], [ 7, %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit373 ], [ 6, %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit273 ], [ 3, %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit162 ], [ 16, %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit ], [ %i.cr, %bb.ad ], [ 1, %bb.t ], [ 1, %bb.an ], [ %i.bk, %bb.s ], [ 532, %bb.k ], [ 532, %.loopexit ], [ 1, %bb.am ], [ 2, %bb.q ], [ 0, %_ZN4llvm7LLLexer11getNextCharEv.exit.thread ], [ %i.t, %bb.h ], [ %i.s, %bb.g ], [ %i.r, %bb.f ], [ %i.q, %bb.e ], [ 1, %bb.c ], [ 1, %bb.al ], [ 8, %_ZN4llvm7LLLexer11getNextCharEv.exit34.thread.loopexit477 ]
  ret i32 %.2.ph
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 560) i32 @_ZN4llvm7LLLexer13LexIdentifierEv(ptr noundef nonnull align 8 dereferenceable(169) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 12 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 5 uses
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -1 ; 657 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !42    ; 2 uses
  %i.d = icmp eq i8 %i.c, 105                     ; 2 uses
  %i.e = icmp eq i8 %i.c, 98
  %or.cond = or i1 %i.d, %i.e
  %i.f = select i1 %or.cond, ptr null, ptr %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.a, %bb.a ], [ %i.l, %bb.c ] ; 8 uses
  %.01116 = phi ptr [ null, %bb.a ], [ %.11117, %bb.c ] ; 4 uses
  %.01113 = phi ptr [ %i.f, %bb.a ], [ %.11114, %bb.c ] ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !42    ; 5 uses
  %i.i = zext i8 %i.h to i32
  %i.j = tail call i32 @isalnum(i32 noundef %i.i) #17
  %.fr.i = freeze i32 %i.j
  %.not.i = icmp ne i32 %.fr.i, 0                 ; 2 uses
  br i1 %.not.i, label %bb.c, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.b
  switch i8 %i.h, label %_ZL11isLabelCharc.exit [
    i8 46, label %bb.c
    i8 45, label %bb.c
    i8 36, label %bb.c
    i8 95, label %bb.c
  ]

bb.c:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.b
  %.not = icmp eq ptr %.01113, null
  %i.k = add i8 %i.h, -48
  %isdigit = icmp ult i8 %i.k, 10
  %spec.select = select i1 %isdigit, ptr null, ptr %i.g
  %.11114 = select i1 %.not, ptr %spec.select, ptr %.01113
  %.not1127 = icmp eq ptr %.01116, null
  %.not1129 = icmp eq i8 %i.h, 95
  %or.cond1130 = or i1 %.not1129, %.not.i
  %spec.select1132 = select i1 %or.cond1130, ptr null, ptr %i.g
  %.11117 = select i1 %.not1127, ptr %spec.select1132, ptr %.01116
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !67
  br label %bb.b, !llvm.loop !81

_ZL11isLabelCharc.exit:                           ; preds = %switch.early.test.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = load i8, ptr %i.m, align 8, !tbaa !65, !range !69, !noundef !36
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = icmp ne i8 %i.h, 58
  %or.cond6672.not = or i1 %i.p, %i.o
  br i1 %or.cond6672.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZL11isLabelCharc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.r, ptr %0, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i64, ptr %i.s, align 8, !tbaa !48
  %i.u = ptrtoint ptr %i.g to i64
  %i.v = ptrtoint ptr %i.b to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef 0, i64 noundef %i.t, ptr noundef nonnull %i.b, i64 noundef %i.w) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

bb.e:                                             ; preds = %_ZL11isLabelCharc.exit
  %.not1123 = icmp eq ptr %.01113, null
  %spec.select6673 = select i1 %.not1123, ptr %i.g, ptr %.01113 ; 3 uses
  %.not1124 = icmp eq ptr %spec.select6673, %i.a
  br i1 %.not1124, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %spec.select6673, ptr %0, align 8, !tbaa !67
  br label %.critedge.i

bb.g:                                             ; preds = %.critedge.i
  %i.y = getelementptr inbounds nuw i8, ptr %.01418.i, i64 1 ; 2 uses
  %.not.i1133 = icmp eq ptr %i.y, %spec.select6673
  br i1 %.not.i1133, label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %bb.f, %bb.g
  %.01219.i = phi i64 [ %i.ad, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.01418.i = phi ptr [ %i.y, %bb.g ], [ %i.a, %bb.f ] ; 2 uses
  %i.z = mul i64 %.01219.i, 10
  %i.aa = load i8, ptr %.01418.i, align 1, !tbaa !42
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add i64 %i.z, -48
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %.not15.i = icmp ult i64 %i.ad, %.01219.i
  br i1 %.not15.i, label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread, label %bb.g

_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread:       ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.af, align 1, !tbaa !52
  store ptr @.str, ptr %1, align 8, !tbaa !42
  store i8 3, ptr %i.ae, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(34) %1, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.h

_ZN4llvm7LLLexer6atoullEPKcS2_.exit:              ; preds = %bb.g
  %i.ai = add i64 %i.ad, -8388609
  %or.cond4 = icmp ult i64 %i.ai, -8388608
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.ak, align 1, !tbaa !52
  store ptr @.str.8, ptr %2, align 8, !tbaa !42
  store i8 3, ptr %i.aj, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr %i.am, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

bb.i:                                             ; preds = %_ZN4llvm7LLLexer6atoullEPKcS2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !84, !nonnull !36, !align !37 ; 2 uses
  %i.ap = trunc nuw nsw i64 %i.ad to i32          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br i1 %i.d, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i32 noundef %i.ap) #15
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.as = tail call noundef ptr @_ZN4llvm8ByteType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i32 noundef %i.ap) #15
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

bb.l:                                             ; preds = %bb.e
  %.not1125 = icmp eq ptr %.01116, null
  %spec.select6674 = select i1 %.not1125, ptr %i.g, ptr %.01116 ; 3 uses
  store ptr %spec.select6674, ptr %0, align 8, !tbaa !67
  %i.at = ptrtoint ptr %spec.select6674 to i64    ; 3 uses
  %i.au = ptrtoint ptr %i.b to i64
  %i.av = sub i64 %i.at, %i.au                    ; 457 uses
  switch i64 %i.av, label %_ZN4llvmeqENS_9StringRefES0_.exit3218.thread6606 [
    i64 4, label %_ZN4llvmeqENS_9StringRefES0_.exit
    i64 5, label %_ZN4llvmeqENS_9StringRefES0_.exit1138
    i64 7, label %_ZN4llvmeqENS_9StringRefES0_.exit1142
    i64 6, label %_ZN4llvmeqENS_9StringRefES0_.exit1146
    i64 8, label %_ZN4llvmeqENS_9StringRefES0_.exit1154
    i64 2, label %_ZN4llvmeqENS_9StringRefES0_.exit1158
    i64 9, label %_ZN4llvmeqENS_9StringRefES0_.exit1162
    i64 15, label %_ZN4llvmeqENS_9StringRefES0_.exit1166
    i64 20, label %_ZN4llvmeqENS_9StringRefES0_.exit1178
    i64 12, label %_ZN4llvmeqENS_9StringRefES0_.exit1186
    i64 18, label %_ZN4llvmeqENS_9StringRefES0_.exit1230
    i64 22, label %_ZN4llvmeqENS_9StringRefES0_.exit1234
    i64 11, label %_ZN4llvmeqENS_9StringRefES0_.exit1238
    i64 10, label %_ZN4llvmeqENS_9StringRefES0_.exit1326
    i64 3, label %_ZN4llvmeqENS_9StringRefES0_.exit1378
    i64 19, label %_ZN4llvmeqENS_9StringRefES0_.exit1494
    i64 21, label %_ZN4llvmeqENS_9StringRefES0_.exit1498
    i64 24, label %_ZN4llvmeqENS_9StringRefES0_.exit1502
    i64 13, label %_ZN4llvmeqENS_9StringRefES0_.exit1522
    i64 14, label %_ZN4llvmeqENS_9StringRefES0_.exit1526
    i64 16, label %_ZN4llvmeqENS_9StringRefES0_.exit1534
    i64 32, label %_ZN4llvmeqENS_9StringRefES0_.exit1558
    i64 25, label %_ZN4llvmeqENS_9StringRefES0_.exit1726
    i64 27, label %_ZN4llvmeqENS_9StringRefES0_.exit1730
    i64 1, label %_ZN4llvmeqENS_9StringRefES0_.exit1742
    i64 31, label %_ZN4llvmeqENS_9StringRefES0_.exit1782
    i64 33, label %_ZN4llvmeqENS_9StringRefES0_.exit1794
    i64 17, label %_ZN4llvmeqENS_9StringRefES0_.exit1918
    i64 28, label %_ZN4llvmeqENS_9StringRefES0_.exit2014
    i64 26, label %_ZN4llvmeqENS_9StringRefES0_.exit2022
    i64 23, label %_ZN4llvmeqENS_9StringRefES0_.exit2146
    i64 29, label %_ZN4llvmeqENS_9StringRefES0_.exit2222
  ]

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.l
  %i.aw = load i32, ptr %i.b, align 1
  %i.ax = icmp ne i32 %i.aw, 1702195828
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1190

_ZN4llvmeqENS_9StringRefES0_.exit1138:            ; preds = %bb.l
  %bcmp.i1137 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.10, i64 %i.av)
  %i.ba = icmp eq i32 %bcmp.i1137, 0
  br i1 %i.ba, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1266

_ZN4llvmeqENS_9StringRefES0_.exit1142:            ; preds = %bb.l
  %bcmp.i1141 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.11, i64 %i.av)
  %i.bb = icmp eq i32 %bcmp.i1141, 0
  br i1 %i.bb, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1170

_ZN4llvmeqENS_9StringRefES0_.exit1146:            ; preds = %bb.l
  %bcmp.i1145 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.12, i64 %i.av)
  %i.bc = icmp eq i32 %bcmp.i1145, 0
  br i1 %i.bc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1150

_ZN4llvmeqENS_9StringRefES0_.exit1150:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1146
  %i.bd = load i32, ptr %i.b, align 1
  %i.be = xor i32 %i.bd, 1651469415
  %i.bf = getelementptr i8, ptr %i.b, i64 4
  %i.bg = load i16, ptr %i.bf, align 1
  %i.bh = zext i16 %i.bg to i32
  %i.bi = xor i32 %i.bh, 27745
  %i.bj = or i32 %i.be, %i.bi
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1210

_ZN4llvmeqENS_9StringRefES0_.exit1154:            ; preds = %bb.l
  %bcmp.i1153 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.14, i64 %i.av)
  %i.bn = icmp eq i32 %bcmp.i1153, 0
  br i1 %i.bn, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1174

_ZN4llvmeqENS_9StringRefES0_.exit1158:            ; preds = %bb.l
  %bcmp.i1157 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.15, i64 %i.av)
  %i.bo = icmp eq i32 %bcmp.i1157, 0
  br i1 %i.bo, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1282

_ZN4llvmeqENS_9StringRefES0_.exit1162:            ; preds = %bb.l
  %bcmp.i1161 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.16, i64 %i.av)
  %i.bp = icmp eq i32 %bcmp.i1161, 0
  br i1 %i.bp, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1198

_ZN4llvmeqENS_9StringRefES0_.exit1166:            ; preds = %bb.l
  %bcmp.i1165 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.17, i64 %i.av)
  %i.bq = icmp eq i32 %bcmp.i1165, 0
  br i1 %i.bq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1262

_ZN4llvmeqENS_9StringRefES0_.exit1170:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1142
  %bcmp.i1169 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.18, i64 %i.av)
  %i.br = icmp eq i32 %bcmp.i1169, 0
  br i1 %i.br, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1214

_ZN4llvmeqENS_9StringRefES0_.exit1174:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1154
  %bcmp.i1173 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.19, i64 %i.av)
  %i.bs = icmp eq i32 %bcmp.i1173, 0
  br i1 %i.bs, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1182

_ZN4llvmeqENS_9StringRefES0_.exit1178:            ; preds = %bb.l
  %bcmp.i1177 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.20, i64 %i.av)
  %i.bt = icmp eq i32 %bcmp.i1177, 0
  br i1 %i.bt, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1998

_ZN4llvmeqENS_9StringRefES0_.exit1182:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1174
  %bcmp.i1181 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.21, i64 %i.av)
  %i.bu = icmp eq i32 %bcmp.i1181, 0
  br i1 %i.bu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1194

_ZN4llvmeqENS_9StringRefES0_.exit1186:            ; preds = %bb.l
  %bcmp.i1185 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.22, i64 %i.av)
  %i.bv = icmp eq i32 %bcmp.i1185, 0
  br i1 %i.bv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1226

_ZN4llvmeqENS_9StringRefES0_.exit1190:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %bcmp.i1189 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.23, i64 %i.av)
  %i.bw = icmp eq i32 %bcmp.i1189, 0
  br i1 %i.bw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1270

_ZN4llvmeqENS_9StringRefES0_.exit1194:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1182
  %bcmp.i1193 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.24, i64 %i.av)
  %i.bx = icmp eq i32 %bcmp.i1193, 0
  br i1 %i.bx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1242

_ZN4llvmeqENS_9StringRefES0_.exit1198:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1162
  %bcmp.i1197 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.25, i64 %i.av)
  %i.by = icmp eq i32 %bcmp.i1197, 0
  br i1 %i.by, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1202

_ZN4llvmeqENS_9StringRefES0_.exit1202:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1198
  %i.bz = load i64, ptr %i.b, align 1
  %i.ca = xor i64 %i.bz, 8245933057961127012
  %i.cb = getelementptr i8, ptr %i.b, i64 8
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i64
  %i.ce = xor i64 %i.cd, 116
  %i.cf = or i64 %i.ca, %i.ce
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1206

_ZN4llvmeqENS_9StringRefES0_.exit1206:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1202
  %i.cj = load i64, ptr %i.b, align 1
  %i.ck = xor i64 %i.cj, 8245933105138658404
  %i.cl = getelementptr i8, ptr %i.b, i64 8
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i64
  %i.co = xor i64 %i.cn, 116
  %i.cp = or i64 %i.ck, %i.co
  %i.cq = icmp ne i64 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1222

_ZN4llvmeqENS_9StringRefES0_.exit1210:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1150
  %bcmp.i1209 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.28, i64 %i.av)
  %i.ct = icmp eq i32 %bcmp.i1209, 0
  br i1 %i.ct, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1218

_ZN4llvmeqENS_9StringRefES0_.exit1214:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1170
  %bcmp.i1213 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.29, i64 %i.av)
  %i.cu = icmp eq i32 %bcmp.i1213, 0
  br i1 %i.cu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1350

_ZN4llvmeqENS_9StringRefES0_.exit1218:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1210
  %bcmp.i1217 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.30, i64 %i.av)
  %i.cv = icmp eq i32 %bcmp.i1217, 0
  br i1 %i.cv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1278

_ZN4llvmeqENS_9StringRefES0_.exit1222:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1206
  %bcmp.i1221 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.31, i64 %i.av)
  %i.cw = icmp eq i32 %bcmp.i1221, 0
  br i1 %i.cw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1258

_ZN4llvmeqENS_9StringRefES0_.exit1226:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1186
  %bcmp.i1225 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.32, i64 %i.av)
  %i.cx = icmp eq i32 %bcmp.i1225, 0
  br i1 %i.cx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1246

_ZN4llvmeqENS_9StringRefES0_.exit1230:            ; preds = %bb.l
  %bcmp.i1229 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.33, i64 %i.av)
  %i.cy = icmp eq i32 %bcmp.i1229, 0
  br i1 %i.cy, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1550

_ZN4llvmeqENS_9StringRefES0_.exit1234:            ; preds = %bb.l
  %bcmp.i1233 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.34, i64 %i.av)
  %i.cz = icmp eq i32 %bcmp.i1233, 0
  br i1 %i.cz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1554

_ZN4llvmeqENS_9StringRefES0_.exit1238:            ; preds = %bb.l
  %bcmp.i1237 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.35, i64 %i.av)
  %i.da = icmp eq i32 %bcmp.i1237, 0
  br i1 %i.da, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1254

_ZN4llvmeqENS_9StringRefES0_.exit1242:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1194
  %bcmp.i1241 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.36, i64 %i.av)
  %i.db = icmp eq i32 %bcmp.i1241, 0
  br i1 %i.db, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1302

_ZN4llvmeqENS_9StringRefES0_.exit1246:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1226
  %bcmp.i1245 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.37, i64 %i.av)
  %i.dc = icmp eq i32 %bcmp.i1245, 0
  br i1 %i.dc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1250

_ZN4llvmeqENS_9StringRefES0_.exit1250:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1246
  %i.dd = load i64, ptr %i.b, align 1
  %i.de = xor i64 %i.dd, 7960504233007214444
  %i.df = getelementptr i8, ptr %i.b, i64 8
  %i.dg = load i32, ptr %i.df, align 1
  %i.dh = zext i32 %i.dg to i64
  %i.di = xor i64 %i.dh, 1667853665
  %i.dj = or i64 %i.de, %i.di
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1474

_ZN4llvmeqENS_9StringRefES0_.exit1254:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1238
  %bcmp.i1253 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.39, i64 %i.av)
  %i.dn = icmp eq i32 %bcmp.i1253, 0
  br i1 %i.dn, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1334

_ZN4llvmeqENS_9StringRefES0_.exit1258:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1222
  %bcmp.i1257 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.40, i64 %i.av)
  %i.do = icmp eq i32 %bcmp.i1257, 0
  br i1 %i.do, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1342

_ZN4llvmeqENS_9StringRefES0_.exit1262:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1166
  %bcmp.i1261 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.41, i64 %i.av)
  %i.dp = icmp eq i32 %bcmp.i1261, 0
  br i1 %i.dp, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1318
end_hunk_1
begin_hunk_2_@_ZN4llvm7LLLexer13LexIdentifierEv:bb.a
_ZN4llvmeqENS_9StringRefES0_.exit1274:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1270
  %i.ds = load i32, ptr %i.b, align 1
  %i.dt = icmp ne i32 %i.ds, 1701736302
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1294

_ZN4llvmeqENS_9StringRefES0_.exit1278:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1218
  %bcmp.i1277 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.45, i64 %i.av)
  %i.dw = icmp eq i32 %bcmp.i1277, 0
  br i1 %i.dw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1286

_ZN4llvmeqENS_9StringRefES0_.exit1282:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1158
  %bcmp.i1281 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.46, i64 %i.av)
  %i.dx = icmp eq i32 %bcmp.i1281, 0
  br i1 %i.dx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1478

_ZN4llvmeqENS_9StringRefES0_.exit1286:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1278
  %bcmp.i1285 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.47, i64 %i.av)
  %i.dy = icmp eq i32 %bcmp.i1285, 0
  br i1 %i.dy, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1290

_ZN4llvmeqENS_9StringRefES0_.exit1290:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1286
  %i.dz = load i32, ptr %i.b, align 1
  %i.ea = xor i32 %i.dz, 1752459639
  %i.eb = getelementptr i8, ptr %i.b, i64 4
  %i.ec = load i16, ptr %i.eb, align 1
  %i.ed = zext i16 %i.ec to i32
  %i.ee = xor i32 %i.ed, 28265
  %i.ef = or i32 %i.ea, %i.ee
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1306

_ZN4llvmeqENS_9StringRefES0_.exit1294:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1274
  %bcmp.i1293 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.49, i64 %i.av)
  %i.ej = icmp eq i32 %bcmp.i1293, 0
  br i1 %i.ej, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1298

_ZN4llvmeqENS_9StringRefES0_.exit1298:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1294
  %i.ek = load i32, ptr %i.b, align 1
  %i.el = icmp ne i32 %i.ek, 1818845556
  %i.em = zext i1 %i.el to i32
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1370

_ZN4llvmeqENS_9StringRefES0_.exit1302:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1242
  %bcmp.i1301 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.51, i64 %i.av)
  %i.eo = icmp eq i32 %bcmp.i1301, 0
  br i1 %i.eo, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1330

_ZN4llvmeqENS_9StringRefES0_.exit1306:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1290
  %bcmp.i1305 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.52, i64 %i.av)
  %i.ep = icmp eq i32 %bcmp.i1305, 0
  br i1 %i.ep, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1310

_ZN4llvmeqENS_9StringRefES0_.exit1310:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1306
  %i.eq = load i32, ptr %i.b, align 1
  %i.er = xor i32 %i.eq, 1735549300
  %i.es = getelementptr i8, ptr %i.b, i64 4
  %i.et = load i16, ptr %i.es, align 1
  %i.eu = zext i16 %i.et to i32
  %i.ev = xor i32 %i.eu, 29797
  %i.ew = or i32 %i.er, %i.ev
  %i.ex = icmp ne i32 %i.ew, 0
  %i.ey = zext i1 %i.ex to i32
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1314

_ZN4llvmeqENS_9StringRefES0_.exit1314:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1310
  %i.fa = load i32, ptr %i.b, align 1
  %i.fb = xor i32 %i.fa, 1885958772
  %i.fc = getelementptr i8, ptr %i.b, i64 4
  %i.fd = load i16, ptr %i.fc, align 1
  %i.fe = zext i16 %i.fd to i32
  %i.ff = xor i32 %i.fe, 25964
  %i.fg = or i32 %i.fb, %i.ff
  %i.fh = icmp ne i32 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1322

_ZN4llvmeqENS_9StringRefES0_.exit1318:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1262
  %bcmp.i1317 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.55, i64 %i.av)
  %i.fk = icmp eq i32 %bcmp.i1317, 0
  br i1 %i.fk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1518

_ZN4llvmeqENS_9StringRefES0_.exit1322:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1314
  %bcmp.i1321 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.56, i64 %i.av)
  %i.fl = icmp eq i32 %bcmp.i1321, 0
  br i1 %i.fl, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1338

_ZN4llvmeqENS_9StringRefES0_.exit1326:            ; preds = %bb.l
  %bcmp.i1325 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.57, i64 %i.av)
  %i.fm = icmp eq i32 %bcmp.i1325, 0
  br i1 %i.fm, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1450

_ZN4llvmeqENS_9StringRefES0_.exit1330:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1302
  %bcmp.i1329 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.58, i64 %i.av)
  %i.fn = icmp eq i32 %bcmp.i1329, 0
  br i1 %i.fn, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1386

_ZN4llvmeqENS_9StringRefES0_.exit1334:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1254
  %bcmp.i1333 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.59, i64 %i.av)
  %i.fo = icmp eq i32 %bcmp.i1333, 0
  br i1 %i.fo, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1542

_ZN4llvmeqENS_9StringRefES0_.exit1338:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1322
  %bcmp.i1337 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.60, i64 %i.av)
  %i.fp = icmp eq i32 %bcmp.i1337, 0
  br i1 %i.fp, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1462

_ZN4llvmeqENS_9StringRefES0_.exit1342:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1258
  %bcmp.i1341 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.61, i64 %i.av)
  %i.fq = icmp eq i32 %bcmp.i1341, 0
  br i1 %i.fq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1346

_ZN4llvmeqENS_9StringRefES0_.exit1346:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1342
  %i.fr = load i64, ptr %i.b, align 1
  %i.fs = xor i64 %i.fr, 7597132167297003373
  %i.ft = getelementptr i8, ptr %i.b, i64 8
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = zext i8 %i.fu to i64
  %i.fw = xor i64 %i.fv, 99
  %i.fx = or i64 %i.fs, %i.fw
  %i.fy = icmp ne i64 %i.fx, 0
  %i.fz = zext i1 %i.fy to i32
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1366

_ZN4llvmeqENS_9StringRefES0_.exit1350:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1214
  %bcmp.i1349 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.63, i64 %i.av)
  %i.gb = icmp eq i32 %bcmp.i1349, 0
  br i1 %i.gb, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1354

_ZN4llvmeqENS_9StringRefES0_.exit1354:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1350
  %i.gc = load i32, ptr %i.b, align 1
  %i.gd = xor i32 %i.gc, 1701602674
  %i.ge = getelementptr i8, ptr %i.b, i64 3
  %i.gf = load i32, ptr %i.ge, align 1
  %i.gg = xor i32 %i.gf, 1702060389
  %i.gh = or i32 %i.gd, %i.gg
  %i.gi = icmp ne i32 %i.gh, 0
  %i.gj = zext i1 %i.gi to i32
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1358

_ZN4llvmeqENS_9StringRefES0_.exit1358:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1354
  %i.gl = load i32, ptr %i.b, align 1
  %i.gm = xor i32 %i.gl, 1601266529
  %i.gn = getelementptr i8, ptr %i.b, i64 3
  %i.go = load i32, ptr %i.gn, align 1
  %i.gp = xor i32 %i.go, 1818587743
  %i.gq = or i32 %i.gm, %i.gp
  %i.gr = icmp ne i32 %i.gq, 0
  %i.gs = zext i1 %i.gr to i32
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1362

_ZN4llvmeqENS_9StringRefES0_.exit1362:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1358
  %i.gu = load i32, ptr %i.b, align 1
  %i.gv = xor i32 %i.gu, 1601267059
  %i.gw = getelementptr i8, ptr %i.b, i64 3
  %i.gx = load i32, ptr %i.gw, align 1
  %i.gy = xor i32 %i.gx, 1953719135
  %i.gz = or i32 %i.gv, %i.gy
  %i.ha = icmp ne i32 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1390

_ZN4llvmeqENS_9StringRefES0_.exit1366:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1346
  %bcmp.i1365 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.67, i64 %i.av)
  %i.hd = icmp eq i32 %bcmp.i1365, 0
  br i1 %i.hd, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1438

_ZN4llvmeqENS_9StringRefES0_.exit1370:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1298
  %bcmp.i1369 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.68, i64 %i.av)
  %i.he = icmp eq i32 %bcmp.i1369, 0
  br i1 %i.he, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1374

_ZN4llvmeqENS_9StringRefES0_.exit1374:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1370
  %i.hf = load i32, ptr %i.b, align 1
  %i.hg = icmp ne i32 %i.hf, 1718511982
  %i.hh = zext i1 %i.hg to i32
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1382

_ZN4llvmeqENS_9StringRefES0_.exit1378:            ; preds = %bb.l
  %bcmp.i1377 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.70, i64 %i.av)
  %i.hj = icmp eq i32 %bcmp.i1377, 0
  br i1 %i.hj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1394

_ZN4llvmeqENS_9StringRefES0_.exit1382:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1374
  %bcmp.i1381 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.71, i64 %i.av)
  %i.hk = icmp eq i32 %bcmp.i1381, 0
  br i1 %i.hk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1398

_ZN4llvmeqENS_9StringRefES0_.exit1386:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1330
  %bcmp.i1385 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.72, i64 %i.av)
  %i.hl = icmp eq i32 %bcmp.i1385, 0
  br i1 %i.hl, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1418

_ZN4llvmeqENS_9StringRefES0_.exit1390:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1362
  %bcmp.i1389 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.73, i64 %i.av)
  %i.hm = icmp eq i32 %bcmp.i1389, 0
  br i1 %i.hm, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1434

_ZN4llvmeqENS_9StringRefES0_.exit1394:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1378
  %bcmp.i1393 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.74, i64 %i.av)
  %i.hn = icmp eq i32 %bcmp.i1393, 0
  br i1 %i.hn, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1402

_ZN4llvmeqENS_9StringRefES0_.exit1398:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1382
  %bcmp.i1397 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.75, i64 %i.av)
  %i.ho = icmp eq i32 %bcmp.i1397, 0
  br i1 %i.ho, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1410

_ZN4llvmeqENS_9StringRefES0_.exit1402:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1394
  %bcmp.i1401 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.76, i64 %i.av)
  %i.hp = icmp eq i32 %bcmp.i1401, 0
  br i1 %i.hp, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1406

_ZN4llvmeqENS_9StringRefES0_.exit1406:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1402
  %i.hq = load i16, ptr %i.b, align 1
  %i.hr = xor i16 %i.hq, 29550
  %i.hs = getelementptr i8, ptr %i.b, i64 2
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = zext i8 %i.ht to i16
  %i.hv = xor i16 %i.hu, 119
  %i.hw = or i16 %i.hr, %i.hv
  %i.hx = icmp ne i16 %i.hw, 0
  %i.hy = zext i1 %i.hx to i32
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1466

_ZN4llvmeqENS_9StringRefES0_.exit1410:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1398
  %bcmp.i1409 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.78, i64 %i.av)
  %i.ia = icmp eq i32 %bcmp.i1409, 0
  br i1 %i.ia, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1426

_ZN4llvmeqENS_9StringRefES0_.exit1414:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1266
  %bcmp.i1413 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.79, i64 %i.av)
  %i.ib = icmp eq i32 %bcmp.i1413, 0
  br i1 %i.ib, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1454

_ZN4llvmeqENS_9StringRefES0_.exit1418:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1386
  %bcmp.i1417 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.80, i64 %i.av)
  %i.ic = icmp eq i32 %bcmp.i1417, 0
  br i1 %i.ic, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1422

_ZN4llvmeqENS_9StringRefES0_.exit1422:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1418
  %i.id = load i64, ptr %i.b, align 1
  %i.ie = icmp ne i64 %i.id, 8314892262691729001
  %i.if = zext i1 %i.ie to i32
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1430

_ZN4llvmeqENS_9StringRefES0_.exit1426:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1410
  %bcmp.i1425 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.82, i64 %i.av)
  %i.ih = icmp eq i32 %bcmp.i1425, 0
  br i1 %i.ih, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1750

_ZN4llvmeqENS_9StringRefES0_.exit1430:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1422
  %bcmp.i1429 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.83, i64 %i.av)
  %i.ii = icmp eq i32 %bcmp.i1429, 0
  br i1 %i.ii, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1486

_ZN4llvmeqENS_9StringRefES0_.exit1434:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1390
  %bcmp.i1433 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.84, i64 %i.av)
  %i.ij = icmp eq i32 %bcmp.i1433, 0
  br i1 %i.ij, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1442

_ZN4llvmeqENS_9StringRefES0_.exit1438:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1366
  %bcmp.i1437 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.85, i64 %i.av)
  %i.ik = icmp eq i32 %bcmp.i1437, 0
  br i1 %i.ik, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1446

_ZN4llvmeqENS_9StringRefES0_.exit1442:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1434
  %bcmp.i1441 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.86, i64 %i.av)
  %i.il = icmp eq i32 %bcmp.i1441, 0
  br i1 %i.il, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1606

_ZN4llvmeqENS_9StringRefES0_.exit1446:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1438
  %bcmp.i1445 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.87, i64 %i.av)
  %i.im = icmp eq i32 %bcmp.i1445, 0
  br i1 %i.im, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1490

_ZN4llvmeqENS_9StringRefES0_.exit1450:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1326
  %bcmp.i1449 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.88, i64 %i.av)
  %i.in = icmp eq i32 %bcmp.i1449, 0
  br i1 %i.in, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1470

_ZN4llvmeqENS_9StringRefES0_.exit1454:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1414
  %bcmp.i1453 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.89, i64 %i.av)
  %i.io = icmp eq i32 %bcmp.i1453, 0
  br i1 %i.io, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1458

_ZN4llvmeqENS_9StringRefES0_.exit1458:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1454
  %i.ip = load i32, ptr %i.b, align 1
  %i.iq = xor i32 %i.ip, 1853187689
  %i.ir = getelementptr i8, ptr %i.b, i64 4
  %i.is = load i8, ptr %i.ir, align 1
  %i.it = zext i8 %i.is to i32
  %i.iu = xor i32 %i.it, 99
  %i.iv = or i32 %i.iq, %i.iu
  %i.iw = icmp ne i32 %i.iv, 0
  %i.ix = zext i1 %i.iw to i32
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1638

_ZN4llvmeqENS_9StringRefES0_.exit1462:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1338
  %bcmp.i1461 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.91, i64 %i.av)
  %i.iz = icmp eq i32 %bcmp.i1461, 0
  br i1 %i.iz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1482

_ZN4llvmeqENS_9StringRefES0_.exit1466:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1406
  %bcmp.i1465 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.92, i64 %i.av)
  %i.ja = icmp eq i32 %bcmp.i1465, 0
  br i1 %i.ja, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1506

_ZN4llvmeqENS_9StringRefES0_.exit1470:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1450
  %bcmp.i1469 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.93, i64 %i.av)
  %i.jb = icmp eq i32 %bcmp.i1469, 0
  br i1 %i.jb, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1538

_ZN4llvmeqENS_9StringRefES0_.exit1474:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1250
  %bcmp.i1473 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.94, i64 %i.av)
  %i.jc = icmp eq i32 %bcmp.i1473, 0
  br i1 %i.jc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1578

_ZN4llvmeqENS_9StringRefES0_.exit1478:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1282
  %bcmp.i1477 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.95, i64 %i.av)
  %i.jd = icmp eq i32 %bcmp.i1477, 0
  br i1 %i.jd, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1738

_ZN4llvmeqENS_9StringRefES0_.exit1482:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1462
  %bcmp.i1481 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.96, i64 %i.av)
  %i.je = icmp eq i32 %bcmp.i1481, 0
  br i1 %i.je, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1510

_ZN4llvmeqENS_9StringRefES0_.exit1486:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1430
  %bcmp.i1485 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.97, i64 %i.av)
  %i.jf = icmp eq i32 %bcmp.i1485, 0
  br i1 %i.jf, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1622

_ZN4llvmeqENS_9StringRefES0_.exit1490:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1446
  %bcmp.i1489 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.98, i64 %i.av)
  %i.jg = icmp eq i32 %bcmp.i1489, 0
  br i1 %i.jg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1594

_ZN4llvmeqENS_9StringRefES0_.exit1494:            ; preds = %bb.l
  %bcmp.i1493 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.99, i64 %i.av)
  %i.jh = icmp eq i32 %bcmp.i1493, 0
  br i1 %i.jh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1802

_ZN4llvmeqENS_9StringRefES0_.exit1498:            ; preds = %bb.l
  %bcmp.i1497 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.100, i64 %i.av)
  %i.ji = icmp eq i32 %bcmp.i1497, 0
  br i1 %i.ji, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1702

_ZN4llvmeqENS_9StringRefES0_.exit1502:            ; preds = %bb.l
  %bcmp.i1501 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.101, i64 %i.av)
  %i.jj = icmp eq i32 %bcmp.i1501, 0
  br i1 %i.jj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1690

_ZN4llvmeqENS_9StringRefES0_.exit1506:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1466
  %bcmp.i1505 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.102, i64 %i.av)
  %i.jk = icmp eq i32 %bcmp.i1505, 0
  br i1 %i.jk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1806

_ZN4llvmeqENS_9StringRefES0_.exit1510:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1482
  %bcmp.i1509 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.103, i64 %i.av)
  %i.jl = icmp eq i32 %bcmp.i1509, 0
  br i1 %i.jl, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1514

_ZN4llvmeqENS_9StringRefES0_.exit1514:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1510
  %i.jm = load i32, ptr %i.b, align 1
  %i.jn = xor i32 %i.jm, 1684828003
  %i.jo = getelementptr i8, ptr %i.b, i64 4
  %i.jp = load i16, ptr %i.jo, align 1
  %i.jq = zext i16 %i.jp to i32
  %i.jr = xor i32 %i.jq, 25443
  %i.js = or i32 %i.jn, %i.jr
  %i.jt = icmp ne i32 %i.js, 0
  %i.ju = zext i1 %i.jt to i32
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1646

_ZN4llvmeqENS_9StringRefES0_.exit1518:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1318
  %bcmp.i1517 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.105, i64 %i.av)
  %i.jw = icmp eq i32 %bcmp.i1517, 0
  br i1 %i.jw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1546

_ZN4llvmeqENS_9StringRefES0_.exit1522:            ; preds = %bb.l
  %bcmp.i1521 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.106, i64 %i.av)
  %i.jx = icmp eq i32 %bcmp.i1521, 0
  br i1 %i.jx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1570

_ZN4llvmeqENS_9StringRefES0_.exit1526:            ; preds = %bb.l
  %bcmp.i1525 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.107, i64 %i.av)
  %i.jy = icmp eq i32 %bcmp.i1525, 0
  br i1 %i.jy, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1530

_ZN4llvmeqENS_9StringRefES0_.exit1530:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1526
  %i.jz = load i64, ptr %i.b, align 1
  %i.ka = xor i64 %i.jz, 8316293035939215480
  %i.kb = getelementptr i8, ptr %i.b, i64 6
  %i.kc = load i64, ptr %i.kb, align 1
  %i.kd = xor i64 %i.kc, 7161687045195395945
  %i.ke = or i64 %i.ka, %i.kd
  %i.kf = icmp ne i64 %i.ke, 0
  %i.kg = zext i1 %i.kf to i32
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1598

_ZN4llvmeqENS_9StringRefES0_.exit1534:            ; preds = %bb.l
  %bcmp.i1533 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.109, i64 %i.av)
  %i.ki = icmp eq i32 %bcmp.i1533, 0
  br i1 %i.ki, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1810

_ZN4llvmeqENS_9StringRefES0_.exit1538:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1470
  %bcmp.i1537 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.110, i64 %i.av)
  %i.kj = icmp eq i32 %bcmp.i1537, 0
  br i1 %i.kj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1574

_ZN4llvmeqENS_9StringRefES0_.exit1542:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1334
  %bcmp.i1541 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.111, i64 %i.av)
  %i.kk = icmp eq i32 %bcmp.i1541, 0
  br i1 %i.kk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1590

_ZN4llvmeqENS_9StringRefES0_.exit1546:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1518
  %bcmp.i1545 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.112, i64 %i.av)
  %i.kl = icmp eq i32 %bcmp.i1545, 0
  br i1 %i.kl, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1626

_ZN4llvmeqENS_9StringRefES0_.exit1550:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1230
  %bcmp.i1549 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.113, i64 %i.av)
  %i.km = icmp eq i32 %bcmp.i1549, 0
  br i1 %i.km, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1866

_ZN4llvmeqENS_9StringRefES0_.exit1554:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1234
  %bcmp.i1553 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.114, i64 %i.av)
  %i.kn = icmp eq i32 %bcmp.i1553, 0
  br i1 %i.kn, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2762

_ZN4llvmeqENS_9StringRefES0_.exit1558:            ; preds = %bb.l
  %bcmp.i1557 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.115, i64 %i.av)
  %i.ko = icmp eq i32 %bcmp.i1557, 0
  br i1 %i.ko, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1562

_ZN4llvmeqENS_9StringRefES0_.exit1562:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1558
  %i.kp = load i128, ptr %i.b, align 1
  %i.kq = xor i128 %i.kp, 153387962595750055169444760822851199329
  %i.kr = getelementptr i8, ptr %i.b, i64 16
  %i.ks = load i128, ptr %i.kr, align 1
  %i.kt = xor i128 %i.ks, 65757182915758255127031761305358201445
  %i.ku = or i128 %i.kq, %i.kt
  %i.kv = icmp ne i128 %i.ku, 0
  %i.kw = zext i1 %i.kv to i32
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1566

_ZN4llvmeqENS_9StringRefES0_.exit1566:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1562
  %i.ky = load i128, ptr %i.b, align 1
  %i.kz = xor i128 %i.ky, 153387962595750055169444760822851199329
  %i.la = getelementptr i8, ptr %i.b, i64 16
  %i.lb = load i128, ptr %i.la, align 1
  %i.lc = xor i128 %i.lb, 67086410911543170999935568365638546021
  %i.ld = or i128 %i.kz, %i.lc
  %i.le = icmp ne i128 %i.ld, 0
  %i.lf = zext i1 %i.le to i32
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit1570:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1522
  %bcmp.i1569 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.118, i64 %i.av)
  %i.lh = icmp eq i32 %bcmp.i1569, 0
  br i1 %i.lh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1602

_ZN4llvmeqENS_9StringRefES0_.exit1574:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1538
  %bcmp.i1573 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.119, i64 %i.av)
  %i.li = icmp eq i32 %bcmp.i1573, 0
  br i1 %i.li, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1582

_ZN4llvmeqENS_9StringRefES0_.exit1578:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1474
  %bcmp.i1577 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.120, i64 %i.av)
  %i.lj = icmp eq i32 %bcmp.i1577, 0
  br i1 %i.lj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1722

_ZN4llvmeqENS_9StringRefES0_.exit1582:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1574
  %bcmp.i1581 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.121, i64 %i.av)
  %i.lk = icmp eq i32 %bcmp.i1581, 0
  br i1 %i.lk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1586

_ZN4llvmeqENS_9StringRefES0_.exit1586:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1582
  %i.ll = load i64, ptr %i.b, align 1
  %i.lm = xor i64 %i.ll, 7599372903007155312
  %i.ln = getelementptr i8, ptr %i.b, i64 8
  %i.lo = load i16, ptr %i.ln, align 1
  %i.lp = zext i16 %i.lo to i64
  %i.lq = xor i64 %i.lp, 25955
  %i.lr = or i64 %i.lm, %i.lq
  %i.ls = icmp ne i64 %i.lr, 0
  %i.lt = zext i1 %i.ls to i32
  %i.lu = icmp eq i32 %i.lt, 0
  br i1 %i.lu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1642

_ZN4llvmeqENS_9StringRefES0_.exit1590:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1542
  %bcmp.i1589 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.123, i64 %i.av)
  %i.lv = icmp eq i32 %bcmp.i1589, 0
  br i1 %i.lv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1618

_ZN4llvmeqENS_9StringRefES0_.exit1594:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1490
  %bcmp.i1593 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.124, i64 %i.av)
  %i.lw = icmp eq i32 %bcmp.i1593, 0
  br i1 %i.lw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1658

_ZN4llvmeqENS_9StringRefES0_.exit1598:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1530
  %bcmp.i1597 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.125, i64 %i.av)
  %i.lx = icmp eq i32 %bcmp.i1597, 0
  br i1 %i.lx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1630

_ZN4llvmeqENS_9StringRefES0_.exit1602:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1570
  %bcmp.i1601 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.126, i64 %i.av)
  %i.ly = icmp eq i32 %bcmp.i1601, 0
  br i1 %i.ly, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1610

_ZN4llvmeqENS_9StringRefES0_.exit1606:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1442
  %bcmp.i1605 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.127, i64 %i.av)
  %i.lz = icmp eq i32 %bcmp.i1605, 0
  br i1 %i.lz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1614

_ZN4llvmeqENS_9StringRefES0_.exit1610:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1602
  %bcmp.i1609 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.128, i64 %i.av)
  %i.ma = icmp eq i32 %bcmp.i1609, 0
  br i1 %i.ma, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1694

_ZN4llvmeqENS_9StringRefES0_.exit1614:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1606
  %bcmp.i1613 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.129, i64 %i.av)
  %i.mb = icmp eq i32 %bcmp.i1613, 0
  br i1 %i.mb, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1714

_ZN4llvmeqENS_9StringRefES0_.exit1618:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1590
  %bcmp.i1617 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.130, i64 %i.av)
  %i.mc = icmp eq i32 %bcmp.i1617, 0
  br i1 %i.mc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1870

_ZN4llvmeqENS_9StringRefES0_.exit1622:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1486
  %bcmp.i1621 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.131, i64 %i.av)
  %i.md = icmp eq i32 %bcmp.i1621, 0
  br i1 %i.md, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1650

_ZN4llvmeqENS_9StringRefES0_.exit1626:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1546
  %bcmp.i1625 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.132, i64 %i.av)
  %i.me = icmp eq i32 %bcmp.i1625, 0
  br i1 %i.me, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1634

_ZN4llvmeqENS_9StringRefES0_.exit1630:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1598
  %bcmp.i1629 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.133, i64 %i.av)
  %i.mf = icmp eq i32 %bcmp.i1629, 0
  br i1 %i.mf, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1654

_ZN4llvmeqENS_9StringRefES0_.exit1634:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1626
  %bcmp.i1633 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.134, i64 %i.av)
  %i.mg = icmp eq i32 %bcmp.i1633, 0
  br i1 %i.mg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1686

_ZN4llvmeqENS_9StringRefES0_.exit1638:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1458
  %bcmp.i1637 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.135, i64 %i.av)
  %i.mh = icmp eq i32 %bcmp.i1637, 0
  br i1 %i.mh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1754

_ZN4llvmeqENS_9StringRefES0_.exit1642:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1586
  %bcmp.i1641 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.136, i64 %i.av)
  %i.mi = icmp eq i32 %bcmp.i1641, 0
  br i1 %i.mi, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1698

_ZN4llvmeqENS_9StringRefES0_.exit1646:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1514
  %bcmp.i1645 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.137, i64 %i.av)
  %i.mj = icmp eq i32 %bcmp.i1645, 0
  br i1 %i.mj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1706

_ZN4llvmeqENS_9StringRefES0_.exit1650:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1622
  %bcmp.i1649 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.138, i64 %i.av)
  %i.mk = icmp eq i32 %bcmp.i1649, 0
  br i1 %i.mk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1762

_ZN4llvmeqENS_9StringRefES0_.exit1654:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1630
  %bcmp.i1653 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.139, i64 %i.av)
  %i.ml = icmp eq i32 %bcmp.i1653, 0
  br i1 %i.ml, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1790

_ZN4llvmeqENS_9StringRefES0_.exit1658:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1594
  %bcmp.i1657 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.140, i64 %i.av)
  %i.mm = icmp eq i32 %bcmp.i1657, 0
  br i1 %i.mm, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1662

_ZN4llvmeqENS_9StringRefES0_.exit1662:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1658
  %i.mn = load i64, ptr %i.b, align 1
  %i.mo = xor i64 %i.mn, 7809089404515151201
  %i.mp = getelementptr i8, ptr %i.b, i64 8
  %i.mq = load i8, ptr %i.mp, align 1
  %i.mr = zext i8 %i.mq to i64
  %i.ms = xor i64 %i.mr, 115
  %i.mt = or i64 %i.mo, %i.ms
  %i.mu = icmp ne i64 %i.mt, 0
  %i.mv = zext i1 %i.mu to i32
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1666

_ZN4llvmeqENS_9StringRefES0_.exit1666:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1662
  %i.mx = load i64, ptr %i.b, align 1
  %i.my = xor i64 %i.mx, 7520859028363439457
  %i.mz = getelementptr i8, ptr %i.b, i64 8
  %i.na = load i8, ptr %i.mz, align 1
  %i.nb = zext i8 %i.na to i64
  %i.nc = xor i64 %i.nb, 115
  %i.nd = or i64 %i.my, %i.nc
  %i.ne = icmp ne i64 %i.nd, 0
  %i.nf = zext i1 %i.ne to i32
  %i.ng = icmp eq i32 %i.nf, 0
  br i1 %i.ng, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1670

_ZN4llvmeqENS_9StringRefES0_.exit1670:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1666
  %i.nh = load i64, ptr %i.b, align 1
  %i.ni = xor i64 %i.nh, 7304686246249655649
  %i.nj = getelementptr i8, ptr %i.b, i64 8
  %i.nk = load i8, ptr %i.nj, align 1
  %i.nl = zext i8 %i.nk to i64
  %i.nm = xor i64 %i.nl, 115
  %i.nn = or i64 %i.ni, %i.nm
  %i.no = icmp ne i64 %i.nn, 0
  %i.np = zext i1 %i.no to i32
  %i.nq = icmp eq i32 %i.np, 0
  br i1 %i.nq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1674

_ZN4llvmeqENS_9StringRefES0_.exit1674:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1670
  %i.nr = load i64, ptr %i.b, align 1
  %i.ns = xor i64 %i.nr, 7448801434325511521
  %i.nt = getelementptr i8, ptr %i.b, i64 8
  %i.nu = load i8, ptr %i.nt, align 1
  %i.nv = zext i8 %i.nu to i64
  %i.nw = xor i64 %i.nv, 115
  %i.nx = or i64 %i.ns, %i.nw
  %i.ny = icmp ne i64 %i.nx, 0
  %i.nz = zext i1 %i.ny to i32
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1678

_ZN4llvmeqENS_9StringRefES0_.exit1678:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1674
  %i.ob = load i64, ptr %i.b, align 1
  %i.oc = xor i64 %i.ob, 8097319780666862945
  %i.od = getelementptr i8, ptr %i.b, i64 8
  %i.oe = load i8, ptr %i.od, align 1
  %i.of = zext i8 %i.oe to i64
  %i.og = xor i64 %i.of, 115
  %i.oh = or i64 %i.oc, %i.og
  %i.oi = icmp ne i64 %i.oh, 0
  %i.oj = zext i1 %i.oi to i32
  %i.ok = icmp eq i32 %i.oj, 0
  br i1 %i.ok, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1682

_ZN4llvmeqENS_9StringRefES0_.exit1682:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1678
  %i.ol = load i64, ptr %i.b, align 1
  %i.om = xor i64 %i.ol, 7160571058173799777
  %i.on = getelementptr i8, ptr %i.b, i64 8
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = zext i8 %i.oo to i64
  %i.oq = xor i64 %i.op, 115
  %i.or = or i64 %i.om, %i.oq
  %i.os = icmp ne i64 %i.or, 0
  %i.ot = zext i1 %i.os to i32
  %i.ou = icmp eq i32 %i.ot, 0
  br i1 %i.ou, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1826

_ZN4llvmeqENS_9StringRefES0_.exit1686:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1634
  %bcmp.i1685 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.147, i64 %i.av)
  %i.ov = icmp eq i32 %bcmp.i1685, 0
  br i1 %i.ov, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1718

_ZN4llvmeqENS_9StringRefES0_.exit1690:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1502
  %bcmp.i1689 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.148, i64 %i.av)
  %i.ow = icmp eq i32 %bcmp.i1689, 0
  br i1 %i.ow, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit1694:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1610
  %bcmp.i1693 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.149, i64 %i.av)
  %i.ox = icmp eq i32 %bcmp.i1693, 0
  br i1 %i.ox, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1950

_ZN4llvmeqENS_9StringRefES0_.exit1698:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1642
  %bcmp.i1697 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.150, i64 %i.av)
  %i.oy = icmp eq i32 %bcmp.i1697, 0
  br i1 %i.oy, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1710

_ZN4llvmeqENS_9StringRefES0_.exit1702:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1498
  %bcmp.i1701 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.151, i64 %i.av)
  %i.oz = icmp eq i32 %bcmp.i1701, 0
  br i1 %i.oz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1734

_ZN4llvmeqENS_9StringRefES0_.exit1706:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1646
  %bcmp.i1705 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.152, i64 %i.av)
  %i.pa = icmp eq i32 %bcmp.i1705, 0
  br i1 %i.pa, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1814

_ZN4llvmeqENS_9StringRefES0_.exit1710:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1698
  %bcmp.i1709 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.153, i64 %i.av)
  %i.pb = icmp eq i32 %bcmp.i1709, 0
  br i1 %i.pb, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1746

_ZN4llvmeqENS_9StringRefES0_.exit1714:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1614
  %bcmp.i1713 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.154, i64 %i.av)
  %i.pc = icmp eq i32 %bcmp.i1713, 0
  br i1 %i.pc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1770

_ZN4llvmeqENS_9StringRefES0_.exit1718:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1686
  %bcmp.i1717 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.155, i64 %i.av)
  %i.pd = icmp eq i32 %bcmp.i1717, 0
  br i1 %i.pd, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1786

_ZN4llvmeqENS_9StringRefES0_.exit1722:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1578
  %bcmp.i1721 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.156, i64 %i.av)
  %i.pe = icmp eq i32 %bcmp.i1721, 0
  br i1 %i.pe, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1766

_ZN4llvmeqENS_9StringRefES0_.exit1726:            ; preds = %bb.l
  %bcmp.i1725 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.157, i64 %i.av)
  %i.pf = icmp eq i32 %bcmp.i1725, 0
  br i1 %i.pf, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2738

_ZN4llvmeqENS_9StringRefES0_.exit1730:            ; preds = %bb.l
  %bcmp.i1729 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.158, i64 %i.av)
  %i.pg = icmp eq i32 %bcmp.i1729, 0
  br i1 %i.pg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit1734:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1702
  %bcmp.i1733 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.159, i64 %i.av)
  %i.ph = icmp eq i32 %bcmp.i1733, 0
  br i1 %i.ph, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1862

_ZN4llvmeqENS_9StringRefES0_.exit1738:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1478
  %bcmp.i1737 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.160, i64 %i.av)
  %i.pi = icmp eq i32 %bcmp.i1737, 0
  br i1 %i.pi, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2350

_ZN4llvmeqENS_9StringRefES0_.exit1742:            ; preds = %bb.l
  %bcmp.i1741 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.161, i64 %i.av)
  %i.pj = icmp eq i32 %bcmp.i1741, 0
  br i1 %i.pj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2502

_ZN4llvmeqENS_9StringRefES0_.exit1746:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1710
  %bcmp.i1745 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.162, i64 %i.av)
  %i.pk = icmp eq i32 %bcmp.i1745, 0
  br i1 %i.pk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1758

_ZN4llvmeqENS_9StringRefES0_.exit1750:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1426
  %bcmp.i1749 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.163, i64 %i.av)
  %i.pl = icmp eq i32 %bcmp.i1749, 0
  br i1 %i.pl, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1774

_ZN4llvmeqENS_9StringRefES0_.exit1754:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1638
  %bcmp.i1753 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.164, i64 %i.av)
  %i.pm = icmp eq i32 %bcmp.i1753, 0
  br i1 %i.pm, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1818

_ZN4llvmeqENS_9StringRefES0_.exit1758:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1746
  %bcmp.i1757 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.165, i64 %i.av)
  %i.pn = icmp eq i32 %bcmp.i1757, 0
  br i1 %i.pn, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1778

_ZN4llvmeqENS_9StringRefES0_.exit1762:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1650
  %bcmp.i1761 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.166, i64 %i.av)
  %i.po = icmp eq i32 %bcmp.i1761, 0
  br i1 %i.po, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1890

_ZN4llvmeqENS_9StringRefES0_.exit1766:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1722
  %bcmp.i1765 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.167, i64 %i.av)
  %i.pp = icmp eq i32 %bcmp.i1765, 0
  br i1 %i.pp, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1834

_ZN4llvmeqENS_9StringRefES0_.exit1770:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1714
  %bcmp.i1769 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.168, i64 %i.av)
  %i.pq = icmp eq i32 %bcmp.i1769, 0
  br i1 %i.pq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1798

_ZN4llvmeqENS_9StringRefES0_.exit1774:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1750
  %bcmp.i1773 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.169, i64 %i.av)
  %i.pr = icmp eq i32 %bcmp.i1773, 0
  br i1 %i.pr, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1842

_ZN4llvmeqENS_9StringRefES0_.exit1778:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1758
  %bcmp.i1777 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.170, i64 %i.av)
  %i.ps = icmp eq i32 %bcmp.i1777, 0
  br i1 %i.ps, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1822

_ZN4llvmeqENS_9StringRefES0_.exit1782:            ; preds = %bb.l
  %bcmp.i1781 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.171, i64 %i.av)
  %i.pt = icmp eq i32 %bcmp.i1781, 0
  br i1 %i.pt, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit1786:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1718
  %bcmp.i1785 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.172, i64 %i.av)
  %i.pu = icmp eq i32 %bcmp.i1785, 0
  br i1 %i.pu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1886

_ZN4llvmeqENS_9StringRefES0_.exit1790:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1654
  %bcmp.i1789 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.173, i64 %i.av)
  %i.pv = icmp eq i32 %bcmp.i1789, 0
  br i1 %i.pv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2134

_ZN4llvmeqENS_9StringRefES0_.exit1794:            ; preds = %bb.l
  %bcmp.i1793 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.174, i64 %i.av)
  %i.pw = icmp eq i32 %bcmp.i1793, 0
  br i1 %i.pw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit1798:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1770
  %bcmp.i1797 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.175, i64 %i.av)
  %i.px = icmp eq i32 %bcmp.i1797, 0
  br i1 %i.px, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1830

_ZN4llvmeqENS_9StringRefES0_.exit1802:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1494
  %bcmp.i1801 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.176, i64 %i.av)
  %i.py = icmp eq i32 %bcmp.i1801, 0
  br i1 %i.py, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1922

_ZN4llvmeqENS_9StringRefES0_.exit1806:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1506
  %bcmp.i1805 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.177, i64 %i.av)
  %i.pz = icmp eq i32 %bcmp.i1805, 0
  br i1 %i.pz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2050

_ZN4llvmeqENS_9StringRefES0_.exit1810:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1534
  %bcmp.i1809 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.178, i64 %i.av)
  %i.qa = icmp eq i32 %bcmp.i1809, 0
  br i1 %i.qa, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1994

_ZN4llvmeqENS_9StringRefES0_.exit1814:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1706
  %bcmp.i1813 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.179, i64 %i.av)
  %i.qb = icmp eq i32 %bcmp.i1813, 0
  br i1 %i.qb, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1878

_ZN4llvmeqENS_9StringRefES0_.exit1818:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1754
  %bcmp.i1817 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.180, i64 %i.av)
  %i.qc = icmp eq i32 %bcmp.i1817, 0
  br i1 %i.qc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1838

_ZN4llvmeqENS_9StringRefES0_.exit1822:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1778
  %bcmp.i1821 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.181, i64 %i.av)
  %i.qd = icmp eq i32 %bcmp.i1821, 0
  br i1 %i.qd, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1854

_ZN4llvmeqENS_9StringRefES0_.exit1826:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1682
  %bcmp.i1825 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.182, i64 %i.av)
  %i.qe = icmp eq i32 %bcmp.i1825, 0
  br i1 %i.qe, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1850

_ZN4llvmeqENS_9StringRefES0_.exit1830:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1798
  %bcmp.i1829 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.183, i64 %i.av)
  %i.qf = icmp eq i32 %bcmp.i1829, 0
  br i1 %i.qf, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1846

_ZN4llvmeqENS_9StringRefES0_.exit1834:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1766
  %bcmp.i1833 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.184, i64 %i.av)
  %i.qg = icmp eq i32 %bcmp.i1833, 0
  br i1 %i.qg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2042

_ZN4llvmeqENS_9StringRefES0_.exit1838:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1818
  %bcmp.i1837 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.185, i64 %i.av)
  %i.qh = icmp eq i32 %bcmp.i1837, 0
  br i1 %i.qh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1874

_ZN4llvmeqENS_9StringRefES0_.exit1842:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1774
  %bcmp.i1841 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.186, i64 %i.av)
  %i.qi = icmp eq i32 %bcmp.i1841, 0
  br i1 %i.qi, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2114

_ZN4llvmeqENS_9StringRefES0_.exit1846:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1830
  %bcmp.i1845 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.187, i64 %i.av)
  %i.qj = icmp eq i32 %bcmp.i1845, 0
  br i1 %i.qj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1894

_ZN4llvmeqENS_9StringRefES0_.exit1850:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1826
  %bcmp.i1849 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.188, i64 %i.av)
  %i.qk = icmp eq i32 %bcmp.i1849, 0
  br i1 %i.qk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1898

_ZN4llvmeqENS_9StringRefES0_.exit1854:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1822
  %bcmp.i1853 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.189, i64 %i.av)
  %i.ql = icmp eq i32 %bcmp.i1853, 0
  br i1 %i.ql, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1858

_ZN4llvmeqENS_9StringRefES0_.exit1858:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1854
  %i.qm = load i64, ptr %i.b, align 1
  %i.qn = xor i64 %i.qm, 7307199656799465326
  %i.qo = getelementptr i8, ptr %i.b, i64 8
  %i.qp = load i16, ptr %i.qo, align 1
  %i.qq = zext i16 %i.qp to i64
  %i.qr = xor i64 %i.qq, 27491
  %i.qs = or i64 %i.qn, %i.qr
  %i.qt = icmp ne i64 %i.qs, 0
  %i.qu = zext i1 %i.qt to i32
  %i.qv = icmp eq i32 %i.qu, 0
  br i1 %i.qv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2066

_ZN4llvmeqENS_9StringRefES0_.exit1862:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1734
  %bcmp.i1861 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.191, i64 %i.av)
  %i.qw = icmp eq i32 %bcmp.i1861, 0
  br i1 %i.qw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1946

_ZN4llvmeqENS_9StringRefES0_.exit1866:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1550
  %bcmp.i1865 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.192, i64 %i.av)
  %i.qx = icmp eq i32 %bcmp.i1865, 0
  br i1 %i.qx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2002

_ZN4llvmeqENS_9StringRefES0_.exit1870:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1618
  %bcmp.i1869 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.193, i64 %i.av)
  %i.qy = icmp eq i32 %bcmp.i1869, 0
  br i1 %i.qy, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1938

_ZN4llvmeqENS_9StringRefES0_.exit1874:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1838
  %bcmp.i1873 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.194, i64 %i.av)
  %i.qz = icmp eq i32 %bcmp.i1873, 0
  br i1 %i.qz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1882

_ZN4llvmeqENS_9StringRefES0_.exit1878:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1814
  %bcmp.i1877 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.195, i64 %i.av)
  %i.ra = icmp eq i32 %bcmp.i1877, 0
  br i1 %i.ra, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1926

_ZN4llvmeqENS_9StringRefES0_.exit1882:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1874
  %bcmp.i1881 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.196, i64 %i.av)
  %i.rb = icmp eq i32 %bcmp.i1881, 0
  br i1 %i.rb, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2094

_ZN4llvmeqENS_9StringRefES0_.exit1886:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1786
  %bcmp.i1885 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.197, i64 %i.av)
  %i.rc = icmp eq i32 %bcmp.i1885, 0
  br i1 %i.rc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2006

_ZN4llvmeqENS_9StringRefES0_.exit1890:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1762
  %bcmp.i1889 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.198, i64 %i.av)
  %i.rd = icmp eq i32 %bcmp.i1889, 0
  br i1 %i.rd, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1914

_ZN4llvmeqENS_9StringRefES0_.exit1894:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1846
  %bcmp.i1893 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.199, i64 %i.av)
  %i.re = icmp eq i32 %bcmp.i1893, 0
  br i1 %i.re, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1930

_ZN4llvmeqENS_9StringRefES0_.exit1898:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1850
  %bcmp.i1897 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.200, i64 %i.av)
  %i.rf = icmp eq i32 %bcmp.i1897, 0
  br i1 %i.rf, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1902

_ZN4llvmeqENS_9StringRefES0_.exit1902:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1898
  %i.rg = load i64, ptr %i.b, align 1
  %i.rh = xor i64 %i.rg, 7811887657498210158
  %i.ri = getelementptr i8, ptr %i.b, i64 8
  %i.rj = load i8, ptr %i.ri, align 1
  %i.rk = zext i8 %i.rj to i64
  %i.rl = xor i64 %i.rk, 101
  %i.rm = or i64 %i.rh, %i.rl
  %i.rn = icmp ne i64 %i.rm, 0
  %i.ro = zext i1 %i.rn to i32
  %i.rp = icmp eq i32 %i.ro, 0
  br i1 %i.rp, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1906

_ZN4llvmeqENS_9StringRefES0_.exit1906:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1902
  %i.rq = load i64, ptr %i.b, align 1
  %i.rr = xor i64 %i.rq, 8318840531470937966
  %i.rs = getelementptr i8, ptr %i.b, i64 8
  %i.rt = load i8, ptr %i.rs, align 1
  %i.ru = zext i8 %i.rt to i64
  %i.rv = xor i64 %i.ru, 101
  %i.rw = or i64 %i.rr, %i.rv
  %i.rx = icmp ne i64 %i.rw, 0
  %i.ry = zext i1 %i.rx to i32
  %i.rz = icmp eq i32 %i.ry, 0
  br i1 %i.rz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1910

_ZN4llvmeqENS_9StringRefES0_.exit1910:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1906
  %i.sa = load i64, ptr %i.b, align 1
  %i.sb = xor i64 %i.sa, 7957713638204272494
  %i.sc = getelementptr i8, ptr %i.b, i64 8
  %i.sd = load i8, ptr %i.sc, align 1
  %i.se = zext i8 %i.sd to i64
  %i.sf = xor i64 %i.se, 101
  %i.sg = or i64 %i.sb, %i.sf
  %i.sh = icmp ne i64 %i.sg, 0
  %i.si = zext i1 %i.sh to i32
  %i.sj = icmp eq i32 %i.si, 0
  br i1 %i.sj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1990

_ZN4llvmeqENS_9StringRefES0_.exit1914:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1890
  %bcmp.i1913 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.204, i64 %i.av)
  %i.sk = icmp eq i32 %bcmp.i1913, 0
  br i1 %i.sk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1934

_ZN4llvmeqENS_9StringRefES0_.exit1918:            ; preds = %bb.l
  %bcmp.i1917 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.205, i64 %i.av)
  %i.sl = icmp eq i32 %bcmp.i1917, 0
  br i1 %i.sl, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1966

_ZN4llvmeqENS_9StringRefES0_.exit1922:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1802
  %bcmp.i1921 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.206, i64 %i.av)
  %i.sm = icmp eq i32 %bcmp.i1921, 0
  br i1 %i.sm, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2218

_ZN4llvmeqENS_9StringRefES0_.exit1926:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1878
  %bcmp.i1925 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.207, i64 %i.av)
  %i.sn = icmp eq i32 %bcmp.i1925, 0
  br i1 %i.sn, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2054

_ZN4llvmeqENS_9StringRefES0_.exit1930:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1894
  %bcmp.i1929 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.208, i64 %i.av)
  %i.so = icmp eq i32 %bcmp.i1929, 0
  br i1 %i.so, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1942

_ZN4llvmeqENS_9StringRefES0_.exit1934:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1914
  %bcmp.i1933 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.209, i64 %i.av)
  %i.sp = icmp eq i32 %bcmp.i1933, 0
  br i1 %i.sp, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1954

_ZN4llvmeqENS_9StringRefES0_.exit1938:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1870
  %bcmp.i1937 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.210, i64 %i.av)
  %i.sq = icmp eq i32 %bcmp.i1937, 0
  br i1 %i.sq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2038

_ZN4llvmeqENS_9StringRefES0_.exit1942:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1930
  %bcmp.i1941 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.211, i64 %i.av)
  %i.sr = icmp eq i32 %bcmp.i1941, 0
  br i1 %i.sr, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1958

_ZN4llvmeqENS_9StringRefES0_.exit1946:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1862
  %bcmp.i1945 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.212, i64 %i.av)
  %i.ss = icmp eq i32 %bcmp.i1945, 0
  br i1 %i.ss, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2734

_ZN4llvmeqENS_9StringRefES0_.exit1950:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1694
  %bcmp.i1949 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.213, i64 %i.av)
  %i.st = icmp eq i32 %bcmp.i1949, 0
  br i1 %i.st, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1982

_ZN4llvmeqENS_9StringRefES0_.exit1954:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1934
  %bcmp.i1953 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.214, i64 %i.av)
  %i.su = icmp eq i32 %bcmp.i1953, 0
  br i1 %i.su, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1970

_ZN4llvmeqENS_9StringRefES0_.exit1958:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1942
  %bcmp.i1957 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.215, i64 %i.av)
  %i.sv = icmp eq i32 %bcmp.i1957, 0
  br i1 %i.sv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1962

_ZN4llvmeqENS_9StringRefES0_.exit1962:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1958
  %i.sw = load i32, ptr %i.b, align 1
  %i.sx = xor i32 %i.sw, 1853124719
  %i.sy = getelementptr i8, ptr %i.b, i64 3
  %i.sz = load i32, ptr %i.sy, align 1
  %i.ta = xor i32 %i.sz, 1701736302
  %i.tb = or i32 %i.sx, %i.ta
  %i.tc = icmp ne i32 %i.tb, 0
  %i.td = zext i1 %i.tc to i32
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1986

_ZN4llvmeqENS_9StringRefES0_.exit1966:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1918
  %bcmp.i1965 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.217, i64 %i.av)
  %i.tf = icmp eq i32 %bcmp.i1965, 0
  br i1 %i.tf, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2018

_ZN4llvmeqENS_9StringRefES0_.exit1970:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1954
  %bcmp.i1969 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.218, i64 %i.av)
  %i.tg = icmp eq i32 %bcmp.i1969, 0
  br i1 %i.tg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1974

_ZN4llvmeqENS_9StringRefES0_.exit1974:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1970
  %i.th = load i64, ptr %i.b, align 1
  %i.ti = icmp ne i64 %i.th, 8749489600778560882
  %i.tj = zext i1 %i.ti to i32
  %i.tk = icmp eq i32 %i.tj, 0
  br i1 %i.tk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit1978

_ZN4llvmeqENS_9StringRefES0_.exit1978:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1974
  %i.tl = load i64, ptr %i.b, align 1
  %i.tm = icmp ne i64 %i.tl, 7234309814316459378
  %i.tn = zext i1 %i.tm to i32
  %i.to = icmp eq i32 %i.tn, 0
  br i1 %i.to, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2062

_ZN4llvmeqENS_9StringRefES0_.exit1982:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1950
  %bcmp.i1981 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.221, i64 %i.av)
  %i.tp = icmp eq i32 %bcmp.i1981, 0
  br i1 %i.tp, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2030

_ZN4llvmeqENS_9StringRefES0_.exit1986:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1962
  %bcmp.i1985 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.222, i64 %i.av)
  %i.tq = icmp eq i32 %bcmp.i1985, 0
  br i1 %i.tq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2090

_ZN4llvmeqENS_9StringRefES0_.exit1990:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1910
  %bcmp.i1989 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.223, i64 %i.av)
  %i.tr = icmp eq i32 %bcmp.i1989, 0
  br i1 %i.tr, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2058

_ZN4llvmeqENS_9StringRefES0_.exit1994:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1810
  %bcmp.i1993 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.224, i64 %i.av)
  %i.ts = icmp eq i32 %bcmp.i1993, 0
  br i1 %i.ts, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2818

_ZN4llvmeqENS_9StringRefES0_.exit1998:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1178
  %bcmp.i1997 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.225, i64 %i.av)
  %i.tt = icmp eq i32 %bcmp.i1997, 0
  br i1 %i.tt, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2510

_ZN4llvmeqENS_9StringRefES0_.exit2002:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1866
  %bcmp.i2001 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.226, i64 %i.av)
  %i.tu = icmp eq i32 %bcmp.i2001, 0
  br i1 %i.tu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2642

_ZN4llvmeqENS_9StringRefES0_.exit2006:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1886
  %bcmp.i2005 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.227, i64 %i.av)
  %i.tv = icmp eq i32 %bcmp.i2005, 0
  br i1 %i.tv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2010

_ZN4llvmeqENS_9StringRefES0_.exit2010:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2006
  %i.tw = load i64, ptr %i.b, align 1
  %i.tx = xor i64 %i.tw, 7312272893695385971
  %i.ty = getelementptr i8, ptr %i.b, i64 7
  %i.tz = load i64, ptr %i.ty, align 1
  %i.ua = xor i64 %i.tz, 8751179541578080101
  %i.ub = or i64 %i.tx, %i.ua
  %i.uc = icmp ne i64 %i.ub, 0
  %i.ud = zext i1 %i.uc to i32
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2026

_ZN4llvmeqENS_9StringRefES0_.exit2014:            ; preds = %bb.l
  %bcmp.i2013 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.229, i64 %i.av)
  %i.uf = icmp eq i32 %bcmp.i2013, 0
  br i1 %i.uf, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2018:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1966
  %bcmp.i2017 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.230, i64 %i.av)
  %i.ug = icmp eq i32 %bcmp.i2017, 0
  br i1 %i.ug, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2666

_ZN4llvmeqENS_9StringRefES0_.exit2022:            ; preds = %bb.l
  %bcmp.i2021 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.231, i64 %i.av)
  %i.uh = icmp eq i32 %bcmp.i2021, 0
  br i1 %i.uh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2046

_ZN4llvmeqENS_9StringRefES0_.exit2026:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2010
  %bcmp.i2025 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.232, i64 %i.av)
  %i.ui = icmp eq i32 %bcmp.i2025, 0
  br i1 %i.ui, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2034

_ZN4llvmeqENS_9StringRefES0_.exit2030:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1982
  %bcmp.i2029 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.233, i64 %i.av)
  %i.uj = icmp eq i32 %bcmp.i2029, 0
  br i1 %i.uj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2342

_ZN4llvmeqENS_9StringRefES0_.exit2034:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2026
  %bcmp.i2033 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.234, i64 %i.av)
  %i.uk = icmp eq i32 %bcmp.i2033, 0
  br i1 %i.uk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2142

_ZN4llvmeqENS_9StringRefES0_.exit2038:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1938
  %bcmp.i2037 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.235, i64 %i.av)
  %i.ul = icmp eq i32 %bcmp.i2037, 0
  br i1 %i.ul, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2102

_ZN4llvmeqENS_9StringRefES0_.exit2042:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1834
  %bcmp.i2041 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.236, i64 %i.av)
  %i.um = icmp eq i32 %bcmp.i2041, 0
  br i1 %i.um, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2110

_ZN4llvmeqENS_9StringRefES0_.exit2046:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2022
  %bcmp.i2045 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.237, i64 %i.av)
  %i.un = icmp eq i32 %bcmp.i2045, 0
  br i1 %i.un, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2742

_ZN4llvmeqENS_9StringRefES0_.exit2050:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1806
  %bcmp.i2049 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.238, i64 %i.av)
  %i.uo = icmp eq i32 %bcmp.i2049, 0
  br i1 %i.uo, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2262

_ZN4llvmeqENS_9StringRefES0_.exit2054:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1926
  %bcmp.i2053 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.239, i64 %i.av)
  %i.up = icmp eq i32 %bcmp.i2053, 0
  br i1 %i.up, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2150

_ZN4llvmeqENS_9StringRefES0_.exit2058:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1990
  %bcmp.i2057 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.240, i64 %i.av)
  %i.uq = icmp eq i32 %bcmp.i2057, 0
  br i1 %i.uq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2074

_ZN4llvmeqENS_9StringRefES0_.exit2062:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1978
  %bcmp.i2061 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.241, i64 %i.av)
  %i.ur = icmp eq i32 %bcmp.i2061, 0
  br i1 %i.ur, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2082

_ZN4llvmeqENS_9StringRefES0_.exit2066:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1858
  %bcmp.i2065 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.242, i64 %i.av)
  %i.us = icmp eq i32 %bcmp.i2065, 0
  br i1 %i.us, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2070

_ZN4llvmeqENS_9StringRefES0_.exit2070:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2066
  %i.ut = load i64, ptr %i.b, align 1
  %i.uu = xor i64 %i.ut, 8246765418277599091
  %i.uv = getelementptr i8, ptr %i.b, i64 8
  %i.uw = load i16, ptr %i.uv, align 1
  %i.ux = zext i16 %i.uw to i64
  %i.uy = xor i64 %i.ux, 29295
  %i.uz = or i64 %i.uu, %i.uy
  %i.va = icmp ne i64 %i.uz, 0
  %i.vb = zext i1 %i.va to i32
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2078

_ZN4llvmeqENS_9StringRefES0_.exit2074:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2058
  %bcmp.i2073 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.244, i64 %i.av)
  %i.vd = icmp eq i32 %bcmp.i2073, 0
  br i1 %i.vd, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2086

_ZN4llvmeqENS_9StringRefES0_.exit2078:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2070
  %bcmp.i2077 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.245, i64 %i.av)
  %i.ve = icmp eq i32 %bcmp.i2077, 0
  br i1 %i.ve, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2158

_ZN4llvmeqENS_9StringRefES0_.exit2082:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2062
  %bcmp.i2081 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.246, i64 %i.av)
  %i.vf = icmp eq i32 %bcmp.i2081, 0
  br i1 %i.vf, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2106

_ZN4llvmeqENS_9StringRefES0_.exit2086:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2074
  %bcmp.i2085 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.247, i64 %i.av)
  %i.vg = icmp eq i32 %bcmp.i2085, 0
  br i1 %i.vg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2122

_ZN4llvmeqENS_9StringRefES0_.exit2090:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1986
  %bcmp.i2089 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.248, i64 %i.av)
  %i.vh = icmp eq i32 %bcmp.i2089, 0
  br i1 %i.vh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2162

_ZN4llvmeqENS_9StringRefES0_.exit2094:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1882
  %bcmp.i2093 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.249, i64 %i.av)
  %i.vi = icmp eq i32 %bcmp.i2093, 0
  br i1 %i.vi, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2098

_ZN4llvmeqENS_9StringRefES0_.exit2098:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2094
  %i.vj = load i32, ptr %i.b, align 1
  %i.vk = xor i32 %i.vj, 1635154274
  %i.vl = getelementptr i8, ptr %i.b, i64 4
  %i.vm = load i8, ptr %i.vl, align 1
  %i.vn = zext i8 %i.vm to i32
  %i.vo = xor i32 %i.vn, 108
  %i.vp = or i32 %i.vk, %i.vo
  %i.vq = icmp ne i32 %i.vp, 0
  %i.vr = zext i1 %i.vq to i32
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2118

_ZN4llvmeqENS_9StringRefES0_.exit2102:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2038
  %bcmp.i2101 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.251, i64 %i.av)
  %i.vt = icmp eq i32 %bcmp.i2101, 0
  br i1 %i.vt, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2174

_ZN4llvmeqENS_9StringRefES0_.exit2106:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2082
  %bcmp.i2105 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.252, i64 %i.av)
  %i.vu = icmp eq i32 %bcmp.i2105, 0
  br i1 %i.vu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2130

_ZN4llvmeqENS_9StringRefES0_.exit2110:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2042
  %bcmp.i2109 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.253, i64 %i.av)
  %i.vv = icmp eq i32 %bcmp.i2109, 0
  br i1 %i.vv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2166

_ZN4llvmeqENS_9StringRefES0_.exit2114:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1842
  %bcmp.i2113 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.254, i64 %i.av)
  %i.vw = icmp eq i32 %bcmp.i2113, 0
  br i1 %i.vw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2178

_ZN4llvmeqENS_9StringRefES0_.exit2118:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2098
  %bcmp.i2117 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.255, i64 %i.av)
  %i.vx = icmp eq i32 %bcmp.i2117, 0
  br i1 %i.vx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2170

_ZN4llvmeqENS_9StringRefES0_.exit2122:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2086
  %bcmp.i2121 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.256, i64 %i.av)
  %i.vy = icmp eq i32 %bcmp.i2121, 0
  br i1 %i.vy, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2126

_ZN4llvmeqENS_9StringRefES0_.exit2126:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2122
  %i.vz = load i64, ptr %i.b, align 1
  %i.wa = xor i64 %i.vz, 8820708216090160225
  %i.wb = getelementptr i8, ptr %i.b, i64 8
  %i.wc = load i8, ptr %i.wb, align 1
  %i.wd = zext i8 %i.wc to i64
  %i.we = xor i64 %i.wd, 101
  %i.wf = or i64 %i.wa, %i.we
  %i.wg = icmp ne i64 %i.wf, 0
  %i.wh = zext i1 %i.wg to i32
  %i.wi = icmp eq i32 %i.wh, 0
  br i1 %i.wi, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2154

_ZN4llvmeqENS_9StringRefES0_.exit2130:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2106
  %bcmp.i2129 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.258, i64 %i.av)
  %i.wj = icmp eq i32 %bcmp.i2129, 0
  br i1 %i.wj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2210

_ZN4llvmeqENS_9StringRefES0_.exit2134:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1790
  %bcmp.i2133 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.259, i64 %i.av)
  %i.wk = icmp eq i32 %bcmp.i2133, 0
  br i1 %i.wk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2138

_ZN4llvmeqENS_9StringRefES0_.exit2138:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2134
  %i.wl = load i64, ptr %i.b, align 1
  %i.wm = xor i64 %i.wl, 7809643567100355940
  %i.wn = getelementptr i8, ptr %i.b, i64 6
  %i.wo = load i64, ptr %i.wn, align 1
  %i.wp = xor i64 %i.wo, 8533869877341940833
  %i.wq = or i64 %i.wm, %i.wp
  %i.wr = icmp ne i64 %i.wq, 0
  %i.ws = zext i1 %i.wr to i32
  %i.wt = icmp eq i32 %i.ws, 0
  br i1 %i.wt, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2662

_ZN4llvmeqENS_9StringRefES0_.exit2142:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2034
  %bcmp.i2141 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.261, i64 %i.av)
  %i.wu = icmp eq i32 %bcmp.i2141, 0
  br i1 %i.wu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2206

_ZN4llvmeqENS_9StringRefES0_.exit2146:            ; preds = %bb.l
  %bcmp.i2145 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.262, i64 %i.av)
  %i.wv = icmp eq i32 %bcmp.i2145, 0
  br i1 %i.wv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2150:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2054
  %bcmp.i2149 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.263, i64 %i.av)
  %i.ww = icmp eq i32 %bcmp.i2149, 0
  br i1 %i.ww, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2190

_ZN4llvmeqENS_9StringRefES0_.exit2154:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2126
  %bcmp.i2153 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.264, i64 %i.av)
  %i.wx = icmp eq i32 %bcmp.i2153, 0
  br i1 %i.wx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2186

_ZN4llvmeqENS_9StringRefES0_.exit2158:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2078
  %bcmp.i2157 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.265, i64 %i.av)
  %i.wy = icmp eq i32 %bcmp.i2157, 0
  br i1 %i.wy, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2202

_ZN4llvmeqENS_9StringRefES0_.exit2162:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2090
  %bcmp.i2161 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.266, i64 %i.av)
  %i.wz = icmp eq i32 %bcmp.i2161, 0
  br i1 %i.wz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2234

_ZN4llvmeqENS_9StringRefES0_.exit2166:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2110
  %bcmp.i2165 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.267, i64 %i.av)
  %i.xa = icmp eq i32 %bcmp.i2165, 0
  br i1 %i.xa, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2250

_ZN4llvmeqENS_9StringRefES0_.exit2170:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2118
  %bcmp.i2169 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.268, i64 %i.av)
  %i.xb = icmp eq i32 %bcmp.i2169, 0
  br i1 %i.xb, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2182

_ZN4llvmeqENS_9StringRefES0_.exit2174:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2102
  %bcmp.i2173 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.269, i64 %i.av)
  %i.xc = icmp eq i32 %bcmp.i2173, 0
  br i1 %i.xc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2194

_ZN4llvmeqENS_9StringRefES0_.exit2178:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2114
  %bcmp.i2177 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.270, i64 %i.av)
  %i.xd = icmp eq i32 %bcmp.i2177, 0
  br i1 %i.xd, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2246

_ZN4llvmeqENS_9StringRefES0_.exit2182:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2170
  %bcmp.i2181 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.271, i64 %i.av)
  %i.xe = icmp eq i32 %bcmp.i2181, 0
  br i1 %i.xe, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2290

_ZN4llvmeqENS_9StringRefES0_.exit2186:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2154
  %bcmp.i2185 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.272, i64 %i.av)
  %i.xf = icmp eq i32 %bcmp.i2185, 0
  br i1 %i.xf, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2226

_ZN4llvmeqENS_9StringRefES0_.exit2190:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2150
  %bcmp.i2189 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.273, i64 %i.av)
  %i.xg = icmp eq i32 %bcmp.i2189, 0
  br i1 %i.xg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2322

_ZN4llvmeqENS_9StringRefES0_.exit2194:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2174
  %bcmp.i2193 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.274, i64 %i.av)
  %i.xh = icmp eq i32 %bcmp.i2193, 0
  br i1 %i.xh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2198

_ZN4llvmeqENS_9StringRefES0_.exit2198:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2194
  %i.xi = load i64, ptr %i.b, align 1
  %i.xj = xor i64 %i.xi, 7881145851797725556
  %i.xk = getelementptr i8, ptr %i.b, i64 3
  %i.xl = load i64, ptr %i.xk, align 1
  %i.xm = xor i64 %i.xl, 3561614400747234663
  %i.xn = or i64 %i.xj, %i.xm
  %i.xo = icmp ne i64 %i.xn, 0
  %i.xp = zext i1 %i.xo to i32
  %i.xq = icmp eq i32 %i.xp, 0
  br i1 %i.xq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2470

_ZN4llvmeqENS_9StringRefES0_.exit2202:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2158
  %bcmp.i2201 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.276, i64 %i.av)
  %i.xr = icmp eq i32 %bcmp.i2201, 0
  br i1 %i.xr, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2214

_ZN4llvmeqENS_9StringRefES0_.exit2206:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2142
  %bcmp.i2205 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.277, i64 %i.av)
  %i.xs = icmp eq i32 %bcmp.i2205, 0
  br i1 %i.xs, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2230

_ZN4llvmeqENS_9StringRefES0_.exit2210:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2130
  %bcmp.i2209 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.278, i64 %i.av)
  %i.xt = icmp eq i32 %bcmp.i2209, 0
  br i1 %i.xt, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2346

_ZN4llvmeqENS_9StringRefES0_.exit2214:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2202
  %bcmp.i2213 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.279, i64 %i.av)
  %i.xu = icmp eq i32 %bcmp.i2213, 0
  br i1 %i.xu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2238

_ZN4llvmeqENS_9StringRefES0_.exit2218:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1922
  %bcmp.i2217 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.280, i64 %i.av)
  %i.xv = icmp eq i32 %bcmp.i2217, 0
  br i1 %i.xv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2586

_ZN4llvmeqENS_9StringRefES0_.exit2222:            ; preds = %bb.l
  %bcmp.i2221 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.281, i64 %i.av)
  %i.xw = icmp eq i32 %bcmp.i2221, 0
  br i1 %i.xw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2226:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2186
  %bcmp.i2225 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.282, i64 %i.av)
  %i.xx = icmp eq i32 %bcmp.i2225, 0
  br i1 %i.xx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2478

_ZN4llvmeqENS_9StringRefES0_.exit2230:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2206
  %bcmp.i2229 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.283, i64 %i.av)
  %i.xy = icmp eq i32 %bcmp.i2229, 0
  br i1 %i.xy, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2242

_ZN4llvmeqENS_9StringRefES0_.exit2234:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2162
  %bcmp.i2233 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.284, i64 %i.av)
  %i.xz = icmp eq i32 %bcmp.i2233, 0
  br i1 %i.xz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2258

_ZN4llvmeqENS_9StringRefES0_.exit2238:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2214
  %bcmp.i2237 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.285, i64 %i.av)
  %i.ya = icmp eq i32 %bcmp.i2237, 0
  br i1 %i.ya, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2334

_ZN4llvmeqENS_9StringRefES0_.exit2242:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2230
  %bcmp.i2241 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.286, i64 %i.av)
  %i.yb = icmp eq i32 %bcmp.i2241, 0
  br i1 %i.yb, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2246:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2178
  %bcmp.i2245 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.287, i64 %i.av)
  %i.yc = icmp eq i32 %bcmp.i2245, 0
  br i1 %i.yc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2270

_ZN4llvmeqENS_9StringRefES0_.exit2250:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2166
  %bcmp.i2249 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.288, i64 %i.av)
  %i.yd = icmp eq i32 %bcmp.i2249, 0
  br i1 %i.yd, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2254

_ZN4llvmeqENS_9StringRefES0_.exit2254:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2250
  %i.ye = load i64, ptr %i.b, align 1
  %i.yf = xor i64 %i.ye, 7311146993788874608
  %i.yg = getelementptr i8, ptr %i.b, i64 8
  %i.yh = load i32, ptr %i.yg, align 1
  %i.yi = zext i32 %i.yh to i64
  %i.yj = xor i64 %i.yi, 1869768058
  %i.yk = or i64 %i.yf, %i.yj
  %i.yl = icmp ne i64 %i.yk, 0
  %i.ym = zext i1 %i.yl to i32
  %i.yn = icmp eq i32 %i.ym, 0
  br i1 %i.yn, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2506

_ZN4llvmeqENS_9StringRefES0_.exit2258:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2234
  %bcmp.i2257 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.290, i64 %i.av)
  %i.yo = icmp eq i32 %bcmp.i2257, 0
  br i1 %i.yo, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2338

_ZN4llvmeqENS_9StringRefES0_.exit2262:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2050
  %bcmp.i2261 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.291, i64 %i.av)
  %i.yp = icmp eq i32 %bcmp.i2261, 0
  br i1 %i.yp, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2266

_ZN4llvmeqENS_9StringRefES0_.exit2266:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2262
  %i.yq = load i16, ptr %i.b, align 1
  %i.yr = xor i16 %i.yq, 24942
  %i.ys = getelementptr i8, ptr %i.b, i64 2
  %i.yt = load i8, ptr %i.ys, align 1
  %i.yu = zext i8 %i.yt to i16
  %i.yv = xor i16 %i.yu, 110
  %i.yw = or i16 %i.yr, %i.yv
  %i.yx = icmp ne i16 %i.yw, 0
  %i.yy = zext i1 %i.yx to i32
  %i.yz = icmp eq i32 %i.yy, 0
  br i1 %i.yz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2278

_ZN4llvmeqENS_9StringRefES0_.exit2270:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2246
  %bcmp.i2269 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.293, i64 %i.av)
  %i.za = icmp eq i32 %bcmp.i2269, 0
  br i1 %i.za, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2274

_ZN4llvmeqENS_9StringRefES0_.exit2274:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2270
  %i.zb = load i32, ptr %i.b, align 1
  %i.zc = icmp ne i32 %i.zb, 1851879025
  %i.zd = zext i1 %i.zc to i32
  %i.ze = icmp eq i32 %i.zd, 0
  br i1 %i.ze, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2282

_ZN4llvmeqENS_9StringRefES0_.exit2278:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2266
  %bcmp.i2277 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.295, i64 %i.av)
  %i.zf = icmp eq i32 %bcmp.i2277, 0
  br i1 %i.zf, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2330

_ZN4llvmeqENS_9StringRefES0_.exit2282:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2274
  %bcmp.i2281 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.296, i64 %i.av)
  %i.zg = icmp eq i32 %bcmp.i2281, 0
end_hunk_2
begin_hunk_3_@_ZN4llvm7LLLexer13LexIdentifierEv:bb.a
_ZN4llvmeqENS_9StringRefES0_.exit2498:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2326
  %bcmp.i2497 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.350, i64 %i.av)
  %i.akq = icmp eq i32 %bcmp.i2497, 0
  br i1 %i.akq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2514

_ZN4llvmeqENS_9StringRefES0_.exit2502:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1742
  %bcmp.i2501 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.351, i64 %i.av)
  %i.akr = icmp eq i32 %bcmp.i2501, 0
  br i1 %i.akr, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617

_ZN4llvmeqENS_9StringRefES0_.exit2506:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2254
  %bcmp.i2505 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.352, i64 %i.av)
  %i.aks = icmp eq i32 %bcmp.i2505, 0
  br i1 %i.aks, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2526

_ZN4llvmeqENS_9StringRefES0_.exit2510:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1998
  %bcmp.i2509 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.353, i64 %i.av)
  %i.akt = icmp eq i32 %bcmp.i2509, 0
  br i1 %i.akt, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2730

_ZN4llvmeqENS_9StringRefES0_.exit2514:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2498
  %bcmp.i2513 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.354, i64 %i.av)
  %i.aku = icmp eq i32 %bcmp.i2513, 0
  br i1 %i.aku, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2542

_ZN4llvmeqENS_9StringRefES0_.exit2518:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2338
  %bcmp.i2517 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.355, i64 %i.av)
  %i.akv = icmp eq i32 %bcmp.i2517, 0
  br i1 %i.akv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2534

_ZN4llvmeqENS_9StringRefES0_.exit2522:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2490
  %bcmp.i2521 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.356, i64 %i.av)
  %i.akw = icmp eq i32 %bcmp.i2521, 0
  br i1 %i.akw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2594

_ZN4llvmeqENS_9StringRefES0_.exit2526:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2506
  %bcmp.i2525 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.357, i64 %i.av)
  %i.akx = icmp eq i32 %bcmp.i2525, 0
  br i1 %i.akx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2650

_ZN4llvmeqENS_9StringRefES0_.exit2530:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2474
  %bcmp.i2529 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.358, i64 %i.av)
  %i.aky = icmp eq i32 %bcmp.i2529, 0
  br i1 %i.aky, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2598

_ZN4llvmeqENS_9StringRefES0_.exit2534:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2518
  %bcmp.i2533 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.359, i64 %i.av)
  %i.akz = icmp eq i32 %bcmp.i2533, 0
  br i1 %i.akz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2578

_ZN4llvmeqENS_9StringRefES0_.exit2538:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2494
  %bcmp.i2537 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.360, i64 %i.av)
  %i.ala = icmp eq i32 %bcmp.i2537, 0
  br i1 %i.ala, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2570

_ZN4llvmeqENS_9StringRefES0_.exit2542:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2514
  %bcmp.i2541 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.361, i64 %i.av)
  %i.alb = icmp eq i32 %bcmp.i2541, 0
  br i1 %i.alb, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2674

_ZN4llvmeqENS_9StringRefES0_.exit2546:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2458
  %bcmp.i2545 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.362, i64 %i.av)
  %i.alc = icmp eq i32 %bcmp.i2545, 0
  br i1 %i.alc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2550

_ZN4llvmeqENS_9StringRefES0_.exit2550:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2546
  %i.ald = load i32, ptr %i.b, align 1
  %i.ale = icmp ne i32 %i.ald, 1752392040
  %i.alf = zext i1 %i.ale to i32
  %i.alg = icmp eq i32 %i.alf, 0
  br i1 %i.alg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2558

_ZN4llvmeqENS_9StringRefES0_.exit2554:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2354
  %bcmp.i2553 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.364, i64 %i.av)
  %i.alh = icmp eq i32 %bcmp.i2553, 0
  br i1 %i.alh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3030

_ZN4llvmeqENS_9StringRefES0_.exit2558:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2550
  %bcmp.i2557 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.365, i64 %i.av)
  %i.ali = icmp eq i32 %bcmp.i2557, 0
  br i1 %i.ali, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2562

_ZN4llvmeqENS_9StringRefES0_.exit2562:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2558
  %i.alj = load i32, ptr %i.b, align 1
  %i.alk = icmp ne i32 %i.alj, 1701667182
  %i.all = zext i1 %i.alk to i32
  %i.alm = icmp eq i32 %i.all, 0
  br i1 %i.alm, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2590

_ZN4llvmeqENS_9StringRefES0_.exit2566:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2486
  %bcmp.i2565 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.367, i64 %i.av)
  %i.aln = icmp eq i32 %bcmp.i2565, 0
  br i1 %i.aln, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2626

_ZN4llvmeqENS_9StringRefES0_.exit2570:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2538
  %bcmp.i2569 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.368, i64 %i.av)
  %i.alo = icmp eq i32 %bcmp.i2569, 0
  br i1 %i.alo, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2622

_ZN4llvmeqENS_9StringRefES0_.exit2574:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2334
  %bcmp.i2573 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.369, i64 %i.av)
  %i.alp = icmp eq i32 %bcmp.i2573, 0
  br i1 %i.alp, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2582

_ZN4llvmeqENS_9StringRefES0_.exit2578:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2534
  %bcmp.i2577 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.370, i64 %i.av)
  %i.alq = icmp eq i32 %bcmp.i2577, 0
  br i1 %i.alq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2686

_ZN4llvmeqENS_9StringRefES0_.exit2582:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2574
  %bcmp.i2581 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.371, i64 %i.av)
  %i.alr = icmp eq i32 %bcmp.i2581, 0
  br i1 %i.alr, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2602

_ZN4llvmeqENS_9StringRefES0_.exit2586:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2218
  %bcmp.i2585 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.372, i64 %i.av)
  %i.als = icmp eq i32 %bcmp.i2585, 0
  br i1 %i.als, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2614

_ZN4llvmeqENS_9StringRefES0_.exit2590:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2562
  %bcmp.i2589 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.373, i64 %i.av)
  %i.alt = icmp eq i32 %bcmp.i2589, 0
  br i1 %i.alt, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2718

_ZN4llvmeqENS_9StringRefES0_.exit2594:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2522
  %bcmp.i2593 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.374, i64 %i.av)
  %i.alu = icmp eq i32 %bcmp.i2593, 0
  br i1 %i.alu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2618

_ZN4llvmeqENS_9StringRefES0_.exit2598:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2530
  %bcmp.i2597 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.375, i64 %i.av)
  %i.alv = icmp eq i32 %bcmp.i2597, 0
  br i1 %i.alv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2610

_ZN4llvmeqENS_9StringRefES0_.exit2602:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2582
  %bcmp.i2601 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.376, i64 %i.av)
  %i.alw = icmp eq i32 %bcmp.i2601, 0
  br i1 %i.alw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2606

_ZN4llvmeqENS_9StringRefES0_.exit2606:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2602
  %i.alx = load i64, ptr %i.b, align 1
  %i.aly = xor i64 %i.alx, 7598814394216506724
  %i.alz = getelementptr i8, ptr %i.b, i64 8
  %i.ama = load i16, ptr %i.alz, align 1
  %i.amb = zext i16 %i.ama to i64
  %i.amc = xor i64 %i.amb, 28271
  %i.amd = or i64 %i.aly, %i.amc
  %i.ame = icmp ne i64 %i.amd, 0
  %i.amf = zext i1 %i.ame to i32
  %i.amg = icmp eq i32 %i.amf, 0
  br i1 %i.amg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2722

_ZN4llvmeqENS_9StringRefES0_.exit2610:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2598
  %bcmp.i2609 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.378, i64 %i.av)
  %i.amh = icmp eq i32 %bcmp.i2609, 0
  br i1 %i.amh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2706

_ZN4llvmeqENS_9StringRefES0_.exit2614:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2586
  %bcmp.i2613 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.379, i64 %i.av)
  %i.ami = icmp eq i32 %bcmp.i2613, 0
  br i1 %i.ami, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2618:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2594
  %bcmp.i2617 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.380, i64 %i.av)
  %i.amj = icmp eq i32 %bcmp.i2617, 0
  br i1 %i.amj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2630

_ZN4llvmeqENS_9StringRefES0_.exit2622:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2570
  %bcmp.i2621 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.381, i64 %i.av)
  %i.amk = icmp eq i32 %bcmp.i2621, 0
  br i1 %i.amk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2670

_ZN4llvmeqENS_9StringRefES0_.exit2626:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2566
  %bcmp.i2625 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.382, i64 %i.av)
  %i.aml = icmp eq i32 %bcmp.i2625, 0
  br i1 %i.aml, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2638

_ZN4llvmeqENS_9StringRefES0_.exit2630:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2618
  %bcmp.i2629 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.383, i64 %i.av)
  %i.amm = icmp eq i32 %bcmp.i2629, 0
  br i1 %i.amm, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2634

_ZN4llvmeqENS_9StringRefES0_.exit2634:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2630
  %i.amn = load i64, ptr %i.b, align 1
  %i.amo = icmp ne i64 %i.amn, 8749489463339607410
  %i.amp = zext i1 %i.amo to i32
  %i.amq = icmp eq i32 %i.amp, 0
  br i1 %i.amq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2646

_ZN4llvmeqENS_9StringRefES0_.exit2638:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2626
  %bcmp.i2637 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.385, i64 %i.av)
  %i.amr = icmp eq i32 %bcmp.i2637, 0
  br i1 %i.amr, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2726

_ZN4llvmeqENS_9StringRefES0_.exit2642:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2002
  %bcmp.i2641 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.386, i64 %i.av)
  %i.ams = icmp eq i32 %bcmp.i2641, 0
  br i1 %i.ams, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2646:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2634
  %bcmp.i2645 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.387, i64 %i.av)
  %i.amt = icmp eq i32 %bcmp.i2645, 0
  br i1 %i.amt, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2654

_ZN4llvmeqENS_9StringRefES0_.exit2650:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2526
  %bcmp.i2649 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.388, i64 %i.av)
  %i.amu = icmp eq i32 %bcmp.i2649, 0
  br i1 %i.amu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2838

_ZN4llvmeqENS_9StringRefES0_.exit2654:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2646
  %bcmp.i2653 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.389, i64 %i.av)
  %i.amv = icmp eq i32 %bcmp.i2653, 0
  br i1 %i.amv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2658

_ZN4llvmeqENS_9StringRefES0_.exit2658:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2654
  %i.amw = load i64, ptr %i.b, align 1
  %i.amx = icmp ne i64 %i.amw, 8606223205347713389
  %i.amy = zext i1 %i.amx to i32
  %i.amz = icmp eq i32 %i.amy, 0
  br i1 %i.amz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2694

_ZN4llvmeqENS_9StringRefES0_.exit2662:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2138
  %bcmp.i2661 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.391, i64 %i.av)
  %i.ana = icmp eq i32 %bcmp.i2661, 0
  br i1 %i.ana, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2798

_ZN4llvmeqENS_9StringRefES0_.exit2666:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2018
  %bcmp.i2665 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.392, i64 %i.av)
  %i.anb = icmp eq i32 %bcmp.i2665, 0
  br i1 %i.anb, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2670:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2622
  %bcmp.i2669 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.393, i64 %i.av)
  %i.anc = icmp eq i32 %bcmp.i2669, 0
  br i1 %i.anc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2682

_ZN4llvmeqENS_9StringRefES0_.exit2674:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2542
  %bcmp.i2673 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.394, i64 %i.av)
  %i.and = icmp eq i32 %bcmp.i2673, 0
  br i1 %i.and, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2678

_ZN4llvmeqENS_9StringRefES0_.exit2678:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2674
  %i.ane = load i32, ptr %i.b, align 1
  %i.anf = xor i32 %i.ane, 1634886000
  %i.ang = getelementptr i8, ptr %i.b, i64 4
  %i.anh = load i16, ptr %i.ang, align 1
  %i.ani = zext i16 %i.anh to i32
  %i.anj = xor i32 %i.ani, 29549
  %i.ank = or i32 %i.anf, %i.anj
  %i.anl = icmp ne i32 %i.ank, 0
  %i.anm = zext i1 %i.anl to i32
  %i.ann = icmp eq i32 %i.anm, 0
  br i1 %i.ann, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2750

_ZN4llvmeqENS_9StringRefES0_.exit2682:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2670
  %bcmp.i2681 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.396, i64 %i.av)
  %i.ano = icmp eq i32 %bcmp.i2681, 0
  br i1 %i.ano, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2698

_ZN4llvmeqENS_9StringRefES0_.exit2686:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2578
  %bcmp.i2685 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.397, i64 %i.av)
  %i.anp = icmp eq i32 %bcmp.i2685, 0
  br i1 %i.anp, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2690

_ZN4llvmeqENS_9StringRefES0_.exit2690:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2686
  %i.anq = load i32, ptr %i.b, align 1
  %i.anr = xor i32 %i.anq, 1852534389
  %i.ans = getelementptr i8, ptr %i.b, i64 3
  %i.ant = load i32, ptr %i.ans, align 1
  %i.anu = xor i32 %i.ant, 1853321070
  %i.anv = or i32 %i.anr, %i.anu
  %i.anw = icmp ne i32 %i.anv, 0
  %i.anx = zext i1 %i.anw to i32
  %i.any = icmp eq i32 %i.anx, 0
  br i1 %i.any, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2714

_ZN4llvmeqENS_9StringRefES0_.exit2694:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2658
  %bcmp.i2693 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.399, i64 %i.av)
  %i.anz = icmp eq i32 %bcmp.i2693, 0
  br i1 %i.anz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2702

_ZN4llvmeqENS_9StringRefES0_.exit2698:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2682
  %bcmp.i2697 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.400, i64 %i.av)
  %i.aoa = icmp eq i32 %bcmp.i2697, 0
  br i1 %i.aoa, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2778

_ZN4llvmeqENS_9StringRefES0_.exit2702:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2694
  %bcmp.i2701 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.401, i64 %i.av)
  %i.aob = icmp eq i32 %bcmp.i2701, 0
  br i1 %i.aob, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2710

_ZN4llvmeqENS_9StringRefES0_.exit2706:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2610
  %bcmp.i2705 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.402, i64 %i.av)
  %i.aoc = icmp eq i32 %bcmp.i2705, 0
  br i1 %i.aoc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2770

_ZN4llvmeqENS_9StringRefES0_.exit2710:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2702
  %bcmp.i2709 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.403, i64 %i.av)
  %i.aod = icmp eq i32 %bcmp.i2709, 0
  br i1 %i.aod, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2846

_ZN4llvmeqENS_9StringRefES0_.exit2714:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2690
  %bcmp.i2713 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.404, i64 %i.av)
  %i.aoe = icmp eq i32 %bcmp.i2713, 0
  br i1 %i.aoe, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2746

_ZN4llvmeqENS_9StringRefES0_.exit2718:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2590
  %bcmp.i2717 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.405, i64 %i.av)
  %i.aof = icmp eq i32 %bcmp.i2717, 0
  br i1 %i.aof, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2754

_ZN4llvmeqENS_9StringRefES0_.exit2722:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2606
  %bcmp.i2721 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.406, i64 %i.av)
  %i.aog = icmp eq i32 %bcmp.i2721, 0
  br i1 %i.aog, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2814

_ZN4llvmeqENS_9StringRefES0_.exit2726:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2638
  %bcmp.i2725 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.407, i64 %i.av)
  %i.aoh = icmp eq i32 %bcmp.i2725, 0
  br i1 %i.aoh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2782

_ZN4llvmeqENS_9StringRefES0_.exit2730:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2510
  %bcmp.i2729 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.408, i64 %i.av)
  %i.aoi = icmp eq i32 %bcmp.i2729, 0
  br i1 %i.aoi, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2734:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1946
  %bcmp.i2733 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.409, i64 %i.av)
  %i.aoj = icmp eq i32 %bcmp.i2733, 0
  br i1 %i.aoj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2738:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1726
  %bcmp.i2737 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.410, i64 %i.av)
  %i.aok = icmp eq i32 %bcmp.i2737, 0
  br i1 %i.aok, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2742:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2046
  %bcmp.i2741 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.411, i64 %i.av)
  %i.aol = icmp eq i32 %bcmp.i2741, 0
  br i1 %i.aol, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2746:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2714
  %bcmp.i2745 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.412, i64 %i.av)
  %i.aom = icmp eq i32 %bcmp.i2745, 0
  br i1 %i.aom, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2766

_ZN4llvmeqENS_9StringRefES0_.exit2750:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2678
  %bcmp.i2749 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.413, i64 %i.av)
  %i.aon = icmp eq i32 %bcmp.i2749, 0
  br i1 %i.aon, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2758

_ZN4llvmeqENS_9StringRefES0_.exit2754:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2718
  %bcmp.i2753 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.414, i64 %i.av)
  %i.aoo = icmp eq i32 %bcmp.i2753, 0
  br i1 %i.aoo, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2774

_ZN4llvmeqENS_9StringRefES0_.exit2758:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2750
  %bcmp.i2757 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.415, i64 %i.av)
  %i.aop = icmp eq i32 %bcmp.i2757, 0
  br i1 %i.aop, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2786

_ZN4llvmeqENS_9StringRefES0_.exit2762:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1554
  %bcmp.i2761 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.416, i64 %i.av)
  %i.aoq = icmp eq i32 %bcmp.i2761, 0
  br i1 %i.aoq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2766:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2746
  %bcmp.i2765 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.417, i64 %i.av)
  %i.aor = icmp eq i32 %bcmp.i2765, 0
  br i1 %i.aor, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2794

_ZN4llvmeqENS_9StringRefES0_.exit2770:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2706
  %bcmp.i2769 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.418, i64 %i.av)
  %i.aos = icmp eq i32 %bcmp.i2769, 0
  br i1 %i.aos, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3138

_ZN4llvmeqENS_9StringRefES0_.exit2774:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2754
  %bcmp.i2773 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.419, i64 %i.av)
  %i.aot = icmp eq i32 %bcmp.i2773, 0
  br i1 %i.aot, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2866

_ZN4llvmeqENS_9StringRefES0_.exit2778:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2698
  %bcmp.i2777 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.420, i64 %i.av)
  %i.aou = icmp eq i32 %bcmp.i2777, 0
  br i1 %i.aou, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2830

_ZN4llvmeqENS_9StringRefES0_.exit2782:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2726
  %bcmp.i2781 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.421, i64 %i.av)
  %i.aov = icmp eq i32 %bcmp.i2781, 0
  br i1 %i.aov, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2802

_ZN4llvmeqENS_9StringRefES0_.exit2786:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2758
  %bcmp.i2785 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.422, i64 %i.av)
  %i.aow = icmp eq i32 %bcmp.i2785, 0
  br i1 %i.aow, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2790

_ZN4llvmeqENS_9StringRefES0_.exit2790:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2786
  %i.aox = load i32, ptr %i.b, align 1
  %i.aoy = xor i32 %i.aox, 1735289203
  %i.aoz = getelementptr i8, ptr %i.b, i64 4
  %i.apa = load i16, ptr %i.aoz, align 1
  %i.apb = zext i16 %i.apa to i32
  %i.apc = xor i32 %i.apb, 25964
  %i.apd = or i32 %i.aoy, %i.apc
  %i.ape = icmp ne i32 %i.apd, 0
  %i.apf = zext i1 %i.ape to i32
  %i.apg = icmp eq i32 %i.apf, 0
  br i1 %i.apg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2806

_ZN4llvmeqENS_9StringRefES0_.exit2794:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2766
  %bcmp.i2793 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.424, i64 %i.av)
  %i.aph = icmp eq i32 %bcmp.i2793, 0
  br i1 %i.aph, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2810

_ZN4llvmeqENS_9StringRefES0_.exit2798:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2662
  %bcmp.i2797 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.425, i64 %i.av)
  %i.api = icmp eq i32 %bcmp.i2797, 0
  br i1 %i.api, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2822

_ZN4llvmeqENS_9StringRefES0_.exit2802:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2782
  %bcmp.i2801 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.426, i64 %i.av)
  %i.apj = icmp eq i32 %bcmp.i2801, 0
  br i1 %i.apj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2882

_ZN4llvmeqENS_9StringRefES0_.exit2806:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2790
  %bcmp.i2805 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.427, i64 %i.av)
  %i.apk = icmp eq i32 %bcmp.i2805, 0
  br i1 %i.apk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2826

_ZN4llvmeqENS_9StringRefES0_.exit2810:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2794
  %bcmp.i2809 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.428, i64 %i.av)
  %i.apl = icmp eq i32 %bcmp.i2809, 0
  br i1 %i.apl, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2902

_ZN4llvmeqENS_9StringRefES0_.exit2814:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2722
  %bcmp.i2813 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.429, i64 %i.av)
  %i.apm = icmp eq i32 %bcmp.i2813, 0
  br i1 %i.apm, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2834

_ZN4llvmeqENS_9StringRefES0_.exit2818:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1994
  %bcmp.i2817 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.430, i64 %i.av)
  %i.apn = icmp eq i32 %bcmp.i2817, 0
  br i1 %i.apn, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2862

_ZN4llvmeqENS_9StringRefES0_.exit2822:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2798
  %bcmp.i2821 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.431, i64 %i.av)
  %i.apo = icmp eq i32 %bcmp.i2821, 0
  br i1 %i.apo, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2842

_ZN4llvmeqENS_9StringRefES0_.exit2826:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2806
  %bcmp.i2825 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.432, i64 %i.av)
  %i.app = icmp eq i32 %bcmp.i2825, 0
  br i1 %i.app, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2886

_ZN4llvmeqENS_9StringRefES0_.exit2830:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2778
  %bcmp.i2829 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.433, i64 %i.av)
  %i.apq = icmp eq i32 %bcmp.i2829, 0
  br i1 %i.apq, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2850

_ZN4llvmeqENS_9StringRefES0_.exit2834:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2814
  %bcmp.i2833 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.434, i64 %i.av)
  %i.apr = icmp eq i32 %bcmp.i2833, 0
  br i1 %i.apr, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3126

_ZN4llvmeqENS_9StringRefES0_.exit2838:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2650
  %bcmp.i2837 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.435, i64 %i.av)
  %i.aps = icmp eq i32 %bcmp.i2837, 0
  br i1 %i.aps, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2858

_ZN4llvmeqENS_9StringRefES0_.exit2842:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2822
  %bcmp.i2841 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.436, i64 %i.av)
  %i.apt = icmp eq i32 %bcmp.i2841, 0
  br i1 %i.apt, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3174

_ZN4llvmeqENS_9StringRefES0_.exit2846:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2710
  %bcmp.i2845 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.437, i64 %i.av)
  %i.apu = icmp eq i32 %bcmp.i2845, 0
  br i1 %i.apu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2878

_ZN4llvmeqENS_9StringRefES0_.exit2850:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2830
  %bcmp.i2849 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.438, i64 %i.av)
  %i.apv = icmp eq i32 %bcmp.i2849, 0
  br i1 %i.apv, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2922

_ZN4llvmeqENS_9StringRefES0_.exit2854:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2342
  %bcmp.i2853 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.439, i64 %i.av)
  %i.apw = icmp eq i32 %bcmp.i2853, 0
  br i1 %i.apw, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3106

_ZN4llvmeqENS_9StringRefES0_.exit2858:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2838
  %bcmp.i2857 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.440, i64 %i.av)
  %i.apx = icmp eq i32 %bcmp.i2857, 0
  br i1 %i.apx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3186

_ZN4llvmeqENS_9StringRefES0_.exit2862:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2818
  %bcmp.i2861 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.441, i64 %i.av)
  %i.apy = icmp eq i32 %bcmp.i2861, 0
  br i1 %i.apy, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit2866:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2774
  %bcmp.i2865 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.442, i64 %i.av)
  %i.apz = icmp eq i32 %bcmp.i2865, 0
  br i1 %i.apz, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2870

_ZN4llvmeqENS_9StringRefES0_.exit2870:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2866
  %i.aqa = load i32, ptr %i.b, align 1
  %i.aqb = icmp ne i32 %i.aqa, 1702132066
  %i.aqc = zext i1 %i.aqb to i32
  %i.aqd = icmp eq i32 %i.aqc, 0
  br i1 %i.aqd, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2910

_ZN4llvmeqENS_9StringRefES0_.exit2874:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2442
  %bcmp.i2873 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.444, i64 %i.av)
  %i.aqe = icmp eq i32 %bcmp.i2873, 0
  br i1 %i.aqe, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2958

_ZN4llvmeqENS_9StringRefES0_.exit2878:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2846
  %bcmp.i2877 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.445, i64 %i.av)
  %i.aqf = icmp eq i32 %bcmp.i2877, 0
  br i1 %i.aqf, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2890

_ZN4llvmeqENS_9StringRefES0_.exit2882:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2802
  %bcmp.i2881 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.446, i64 %i.av)
  %i.aqg = icmp eq i32 %bcmp.i2881, 0
  br i1 %i.aqg, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2938

_ZN4llvmeqENS_9StringRefES0_.exit2886:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2826
  %bcmp.i2885 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.447, i64 %i.av)
  %i.aqh = icmp eq i32 %bcmp.i2885, 0
  br i1 %i.aqh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2894

_ZN4llvmeqENS_9StringRefES0_.exit2890:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2878
  %bcmp.i2889 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.448, i64 %i.av)
  %i.aqi = icmp eq i32 %bcmp.i2889, 0
  br i1 %i.aqi, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2898

_ZN4llvmeqENS_9StringRefES0_.exit2894:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2886
  %bcmp.i2893 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.449, i64 %i.av)
  %i.aqj = icmp eq i32 %bcmp.i2893, 0
  br i1 %i.aqj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2918

_ZN4llvmeqENS_9StringRefES0_.exit2898:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2890
  %bcmp.i2897 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.450, i64 %i.av)
  %i.aqk = icmp eq i32 %bcmp.i2897, 0
  br i1 %i.aqk, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2930

_ZN4llvmeqENS_9StringRefES0_.exit2902:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2810
  %bcmp.i2901 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.451, i64 %i.av)
  %i.aql = icmp eq i32 %bcmp.i2901, 0
  br i1 %i.aql, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2906

_ZN4llvmeqENS_9StringRefES0_.exit2906:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2902
  %i.aqm = load i32, ptr %i.b, align 1
  %i.aqn = xor i32 %i.aqm, 1668575086
  %i.aqo = getelementptr i8, ptr %i.b, i64 3
  %i.aqp = load i32, ptr %i.aqo, align 1
  %i.aqq = xor i32 %i.aqp, 1684828003
  %i.aqr = or i32 %i.aqn, %i.aqq
  %i.aqs = icmp ne i32 %i.aqr, 0
  %i.aqt = zext i1 %i.aqs to i32
  %i.aqu = icmp eq i32 %i.aqt, 0
  br i1 %i.aqu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2950

_ZN4llvmeqENS_9StringRefES0_.exit2910:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2870
  %bcmp.i2909 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.453, i64 %i.av)
  %i.aqv = icmp eq i32 %bcmp.i2909, 0
  br i1 %i.aqv, label %_ZN4llvmeqENS_9StringRefES0_.exit2910.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2914

_ZN4llvmeqENS_9StringRefES0_.exit2910.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2910
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.aqy = tail call noundef ptr @_ZN4llvm4Type9getVoidTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.aqx) #15
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.aqy, ptr %i.aqz, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2914:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2910
  %i.ara = load i32, ptr %i.b, align 1
  %i.arb = icmp ne i32 %i.ara, 1718378856
  %i.arc = zext i1 %i.arb to i32
  %i.ard = icmp eq i32 %i.arc, 0
  br i1 %i.ard, label %_ZN4llvmeqENS_9StringRefES0_.exit2914.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2962

_ZN4llvmeqENS_9StringRefES0_.exit2914.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2914
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.arg = tail call noundef ptr @_ZN4llvm4Type9getHalfTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.arf) #15
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.arg, ptr %i.arh, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2918:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2894
  %bcmp.i2917 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.455, i64 %i.av)
  %i.ari = icmp eq i32 %bcmp.i2917, 0
  br i1 %i.ari, label %_ZN4llvmeqENS_9StringRefES0_.exit2918.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2926

_ZN4llvmeqENS_9StringRefES0_.exit2918.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2918
  %i.arj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.arl = tail call noundef ptr @_ZN4llvm4Type11getBFloatTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ark) #15
  %i.arm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.arl, ptr %i.arm, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2922:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2850
  %bcmp.i2921 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.456, i64 %i.av)
  %i.arn = icmp eq i32 %bcmp.i2921, 0
  br i1 %i.arn, label %_ZN4llvmeqENS_9StringRefES0_.exit2922.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2934

_ZN4llvmeqENS_9StringRefES0_.exit2922.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2922
  %i.aro = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.arq = tail call noundef ptr @_ZN4llvm4Type10getFloatTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.arp) #15
  %i.arr = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.arq, ptr %i.arr, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2926:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2918
  %bcmp.i2925 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.457, i64 %i.av)
  %i.ars = icmp eq i32 %bcmp.i2925, 0
  br i1 %i.ars, label %_ZN4llvmeqENS_9StringRefES0_.exit2926.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3074

_ZN4llvmeqENS_9StringRefES0_.exit2926.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2926
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.arv = tail call noundef ptr @_ZN4llvm4Type11getDoubleTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.aru) #15
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.arv, ptr %i.arw, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2930:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2898
  %bcmp.i2929 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.458, i64 %i.av)
  %i.arx = icmp eq i32 %bcmp.i2929, 0
  br i1 %i.arx, label %_ZN4llvmeqENS_9StringRefES0_.exit2930.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2946

_ZN4llvmeqENS_9StringRefES0_.exit2930.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2930
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.asa = tail call noundef ptr @_ZN4llvm4Type13getX86_FP80TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.arz) #15
  %i.asb = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.asa, ptr %i.asb, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2934:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2922
  %bcmp.i2933 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.459, i64 %i.av)
  %i.asc = icmp eq i32 %bcmp.i2933, 0
  br i1 %i.asc, label %_ZN4llvmeqENS_9StringRefES0_.exit2934.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2942

_ZN4llvmeqENS_9StringRefES0_.exit2934.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2934
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.asf = tail call noundef ptr @_ZN4llvm4Type10getFP128TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ase) #15
  %i.asg = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.asf, ptr %i.asg, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2938:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2882
  %bcmp.i2937 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.460, i64 %i.av)
  %i.ash = icmp eq i32 %bcmp.i2937, 0
  br i1 %i.ash, label %_ZN4llvmeqENS_9StringRefES0_.exit2938.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3094

_ZN4llvmeqENS_9StringRefES0_.exit2938.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2938
  %i.asi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.ask = tail call noundef ptr @_ZN4llvm4Type14getPPC_FP128TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.asj) #15
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ask, ptr %i.asl, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2942:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2934
  %bcmp.i2941 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.461, i64 %i.av)
  %i.asm = icmp eq i32 %bcmp.i2941, 0
  br i1 %i.asm, label %_ZN4llvmeqENS_9StringRefES0_.exit2942.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2954

_ZN4llvmeqENS_9StringRefES0_.exit2942.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2942
  %i.asn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aso = load ptr, ptr %i.asn, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.asp = tail call noundef ptr @_ZN4llvm4Type10getLabelTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.aso) #15
  %i.asq = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.asp, ptr %i.asq, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2946:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2930
  %bcmp.i2945 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.462, i64 %i.av)
  %i.asr = icmp eq i32 %bcmp.i2945, 0
  br i1 %i.asr, label %_ZN4llvmeqENS_9StringRefES0_.exit2946.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3090

_ZN4llvmeqENS_9StringRefES0_.exit2946.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2946
  %i.ass = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.asu = tail call noundef ptr @_ZN4llvm4Type13getMetadataTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ast) #15
  %i.asv = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.asu, ptr %i.asv, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2950:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2906
  %bcmp.i2949 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.463, i64 %i.av)
  %i.asw = icmp eq i32 %bcmp.i2949, 0
  br i1 %i.asw, label %_ZN4llvmeqENS_9StringRefES0_.exit2950.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3066

_ZN4llvmeqENS_9StringRefES0_.exit2950.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2950
  %i.asx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.asy = load ptr, ptr %i.asx, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.asz = tail call noundef ptr @_ZN4llvm4Type12getX86_AMXTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.asy) #15
  %i.ata = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.asz, ptr %i.ata, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2954:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2942
  %bcmp.i2953 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.464, i64 %i.av)
  %i.atb = icmp eq i32 %bcmp.i2953, 0
  br i1 %i.atb, label %_ZN4llvmeqENS_9StringRefES0_.exit2954.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3054

_ZN4llvmeqENS_9StringRefES0_.exit2954.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2954
  %i.atc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.ate = tail call noundef ptr @_ZN4llvm4Type10getTokenTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.atd) #15
  %i.atf = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ate, ptr %i.atf, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2958:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2874
  %bcmp.i2957 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.465, i64 %i.av)
  %i.atg = icmp eq i32 %bcmp.i2957, 0
  br i1 %i.atg, label %_ZN4llvmeqENS_9StringRefES0_.exit2958.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2966

_ZN4llvmeqENS_9StringRefES0_.exit2958.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2958
  %i.ath = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !84, !nonnull !36, !align !37
  %i.atj = tail call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ati, i32 noundef 0) #15
  %i.atk = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.atj, ptr %i.atk, align 8, !tbaa !62
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit2962:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2914
  %bcmp.i2961 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.466, i64 %i.av)
  %i.atl = icmp eq i32 %bcmp.i2961, 0
  br i1 %i.atl, label %_ZN4llvmeqENS_9StringRefES0_.exit2962.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit2970

_ZN4llvmeqENS_9StringRefES0_.exit2962.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2962
  %i.atm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 13, ptr %i.atm, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

end_hunk_3
begin_hunk_4_@_ZN4llvm7LLLexer13LexIdentifierEv:bb.a
  br i1 %i.axm, label %_ZN4llvmeqENS_9StringRefES0_.exit3082.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3086

_ZN4llvmeqENS_9StringRefES0_.exit3082.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3082
  %i.axn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 42, ptr %i.axn, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3086:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3082
  %i.axo = load i32, ptr %i.b, align 1
  %i.axp = xor i32 %i.axo, 1869901926
  %i.axq = getelementptr i8, ptr %i.b, i64 4
  %i.axr = load i16, ptr %i.axq, align 1
  %i.axs = zext i16 %i.axr to i32
  %i.axt = xor i32 %i.axs, 26995
  %i.axu = or i32 %i.axp, %i.axt
  %i.axv = icmp ne i32 %i.axu, 0
  %i.axw = zext i1 %i.axv to i32
  %i.axx = icmp eq i32 %i.axw, 0
  br i1 %i.axx, label %_ZN4llvmeqENS_9StringRefES0_.exit3086.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3110

_ZN4llvmeqENS_9StringRefES0_.exit3086.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3086
  %i.axy = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 43, ptr %i.axy, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3090:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2946
  %bcmp.i3089 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.498, i64 %i.av)
  %i.axz = icmp eq i32 %bcmp.i3089, 0
  br i1 %i.axz, label %_ZN4llvmeqENS_9StringRefES0_.exit3090.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3098

_ZN4llvmeqENS_9StringRefES0_.exit3090.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3090
  %i.aya = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 50, ptr %i.aya, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3094:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2938
  %bcmp.i3093 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.499, i64 %i.av)
  %i.ayb = icmp eq i32 %bcmp.i3093, 0
  br i1 %i.ayb, label %_ZN4llvmeqENS_9StringRefES0_.exit3094.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3162

_ZN4llvmeqENS_9StringRefES0_.exit3094.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3094
  %i.ayc = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 49, ptr %i.ayc, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3098:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3090
  %bcmp.i3097 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.500, i64 %i.av)
  %i.ayd = icmp eq i32 %bcmp.i3097, 0
  br i1 %i.ayd, label %_ZN4llvmeqENS_9StringRefES0_.exit3098.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3202

_ZN4llvmeqENS_9StringRefES0_.exit3098.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3098
  %i.aye = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 48, ptr %i.aye, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3102:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3066
  %bcmp.i3101 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.501, i64 %i.av)
  %i.ayf = icmp eq i32 %bcmp.i3101, 0
  br i1 %i.ayf, label %_ZN4llvmeqENS_9StringRefES0_.exit3102.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3158

_ZN4llvmeqENS_9StringRefES0_.exit3102.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3102
  %i.ayg = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 51, ptr %i.ayg, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3106:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2854
  %bcmp.i3105 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.502, i64 %i.av)
  %i.ayh = icmp eq i32 %bcmp.i3105, 0
  br i1 %i.ayh, label %_ZN4llvmeqENS_9StringRefES0_.exit3106.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3170

_ZN4llvmeqENS_9StringRefES0_.exit3106.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3106
  %i.ayi = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 52, ptr %i.ayi, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3110:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3086
  %bcmp.i3109 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.503, i64 %i.av)
  %i.ayj = icmp eq i32 %bcmp.i3109, 0
  br i1 %i.ayj, label %_ZN4llvmeqENS_9StringRefES0_.exit3110.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3114

_ZN4llvmeqENS_9StringRefES0_.exit3110.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3110
  %i.ayk = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 59, ptr %i.ayk, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3114:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3110
  %i.ayl = load i32, ptr %i.b, align 1
  %i.aym = xor i32 %i.ayl, 1633640822
  %i.ayn = getelementptr i8, ptr %i.b, i64 4
  %i.ayo = load i16, ptr %i.ayn, align 1
  %i.ayp = zext i16 %i.ayo to i32
  %i.ayq = xor i32 %i.ayp, 26482
  %i.ayr = or i32 %i.aym, %i.ayq
  %i.ays = icmp ne i32 %i.ayr, 0
  %i.ayt = zext i1 %i.ays to i32
  %i.ayu = icmp eq i32 %i.ayt, 0
  br i1 %i.ayu, label %_ZN4llvmeqENS_9StringRefES0_.exit3114.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3122

_ZN4llvmeqENS_9StringRefES0_.exit3114.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3114
  %i.ayv = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 62, ptr %i.ayv, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3118:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3046
  %bcmp.i3117 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.505, i64 %i.av)
  %i.ayw = icmp eq i32 %bcmp.i3117, 0
  br i1 %i.ayw, label %_ZN4llvmeqENS_9StringRefES0_.exit3118.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617

_ZN4llvmeqENS_9StringRefES0_.exit3118.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3118
  %i.ayx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.ayx, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3122:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3114
  %bcmp.i3121 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.506, i64 %i.av)
  %i.ayy = icmp eq i32 %bcmp.i3121, 0
  br i1 %i.ayy, label %_ZN4llvmeqENS_9StringRefES0_.exit3122.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3130

_ZN4llvmeqENS_9StringRefES0_.exit3122.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3122
  %i.ayz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 4, ptr %i.ayz, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3126:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2834
  %bcmp.i3125 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.507, i64 %i.av)
  %i.aza = icmp eq i32 %bcmp.i3125, 0
  br i1 %i.aza, label %_ZN4llvmeqENS_9StringRefES0_.exit3126.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3194

_ZN4llvmeqENS_9StringRefES0_.exit3126.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3126
  %i.azb = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 5, ptr %i.azb, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3130:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3122
  %bcmp.i3129 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.508, i64 %i.av)
  %i.azc = icmp eq i32 %bcmp.i3129, 0
  br i1 %i.azc, label %_ZN4llvmeqENS_9StringRefES0_.exit3130.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3134

_ZN4llvmeqENS_9StringRefES0_.exit3130.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3130
  %i.azd = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 6, ptr %i.azd, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3134:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3130
  %i.aze = load i32, ptr %i.b, align 1
  %i.azf = xor i32 %i.aze, 1970496882
  %i.azg = getelementptr i8, ptr %i.b, i64 4
  %i.azh = load i16, ptr %i.azg, align 1
  %i.azi = zext i16 %i.azh to i32
  %i.azj = xor i32 %i.azi, 25965
  %i.azk = or i32 %i.azf, %i.azj
  %i.azl = icmp ne i32 %i.azk, 0
  %i.azm = zext i1 %i.azl to i32
  %i.azn = icmp eq i32 %i.azm, 0
  br i1 %i.azn, label %_ZN4llvmeqENS_9StringRefES0_.exit3134.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3142

_ZN4llvmeqENS_9StringRefES0_.exit3134.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3134
  %i.azo = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 7, ptr %i.azo, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3138:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2770
  %bcmp.i3137 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.510, i64 %i.av)
  %i.azp = icmp eq i32 %bcmp.i3137, 0
  br i1 %i.azp, label %_ZN4llvmeqENS_9StringRefES0_.exit3138.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3190

_ZN4llvmeqENS_9StringRefES0_.exit3138.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3138
  %i.azq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 8, ptr %i.azq, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3142:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3134
  %bcmp.i3141 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.511, i64 %i.av)
  %i.azr = icmp eq i32 %bcmp.i3141, 0
  br i1 %i.azr, label %_ZN4llvmeqENS_9StringRefES0_.exit3142.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3146

_ZN4llvmeqENS_9StringRefES0_.exit3142.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3142
  %i.azs = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 12, ptr %i.azs, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3146:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3142
  %i.azt = load i32, ptr %i.b, align 1
  %i.azu = xor i32 %i.azt, 1869376609
  %i.azv = getelementptr i8, ptr %i.b, i64 4
  %i.azw = load i16, ptr %i.azv, align 1
  %i.azx = zext i16 %i.azw to i32
  %i.azy = xor i32 %i.azx, 24931
  %i.azz = or i32 %i.azu, %i.azy
  %i.baa = icmp ne i32 %i.azz, 0
  %i.bab = zext i1 %i.baa to i32
  %i.bac = icmp eq i32 %i.bab, 0
  br i1 %i.bac, label %_ZN4llvmeqENS_9StringRefES0_.exit3146.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3218

_ZN4llvmeqENS_9StringRefES0_.exit3146.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3146
  %i.bad = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 32, ptr %i.bad, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3150:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3062
  %bcmp.i3149 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.513, i64 %i.av)
  %i.bae = icmp eq i32 %bcmp.i3149, 0
  br i1 %i.bae, label %_ZN4llvmeqENS_9StringRefES0_.exit3150.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617

_ZN4llvmeqENS_9StringRefES0_.exit3150.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3150
  %i.baf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 33, ptr %i.baf, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3154:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3070
  %bcmp.i3153 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.514, i64 %i.av)
  %i.bag = icmp eq i32 %bcmp.i3153, 0
  br i1 %i.bag, label %_ZN4llvmeqENS_9StringRefES0_.exit3154.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3166

_ZN4llvmeqENS_9StringRefES0_.exit3154.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3154
  %i.bah = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 34, ptr %i.bah, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3158:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3102
  %bcmp.i3157 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.515, i64 %i.av)
  %i.bai = icmp eq i32 %bcmp.i3157, 0
  br i1 %i.bai, label %_ZN4llvmeqENS_9StringRefES0_.exit3158.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit3158.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3158
  %i.baj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 37, ptr %i.baj, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3162:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3094
  %bcmp.i3161 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.516, i64 %i.av)
  %i.bak = icmp eq i32 %bcmp.i3161, 0
  br i1 %i.bak, label %_ZN4llvmeqENS_9StringRefES0_.exit3162.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit3162.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3162
  %i.bal = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 38, ptr %i.bal, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3166:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3154
  %bcmp.i3165 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.517, i64 %i.av)
  %i.bam = icmp eq i32 %bcmp.i3165, 0
  br i1 %i.bam, label %_ZN4llvmeqENS_9StringRefES0_.exit3166.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617

_ZN4llvmeqENS_9StringRefES0_.exit3166.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3166
  %i.ban = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 36, ptr %i.ban, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3170:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3106
  %bcmp.i3169 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.518, i64 %i.av)
  %i.bao = icmp eq i32 %bcmp.i3169, 0
  br i1 %i.bao, label %_ZN4llvmeqENS_9StringRefES0_.exit3170.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3178

_ZN4llvmeqENS_9StringRefES0_.exit3170.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3170
  %i.bap = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 35, ptr %i.bap, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3174:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2842
  %bcmp.i3173 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.519, i64 %i.av)
  %i.baq = icmp eq i32 %bcmp.i3173, 0
  br i1 %i.baq, label %_ZN4llvmeqENS_9StringRefES0_.exit3174.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit3174.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3174
  %i.bar = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 63, ptr %i.bar, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3178:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3170
  %bcmp.i3177 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.520, i64 %i.av)
  %i.bas = icmp eq i32 %bcmp.i3177, 0
  br i1 %i.bas, label %_ZN4llvmeqENS_9StringRefES0_.exit3178.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3182

_ZN4llvmeqENS_9StringRefES0_.exit3178.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3178
  %i.bat = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 64, ptr %i.bat, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3182:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3178
  %i.bau = load i64, ptr %i.b, align 1
  %i.bav = xor i64 %i.bau, 8531344256184707187
  %i.baw = getelementptr i8, ptr %i.b, i64 5
  %i.bax = load i64, ptr %i.baw, align 1
  %i.bay = xor i64 %i.bax, 8245937412991509868
  %i.baz = or i64 %i.bav, %i.bay
  %i.bba = icmp ne i64 %i.baz, 0
  %i.bbb = zext i1 %i.bba to i32
  %i.bbc = icmp eq i32 %i.bbb, 0
  br i1 %i.bbc, label %_ZN4llvmeqENS_9StringRefES0_.exit3182.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit3182.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3182
  %i.bbd = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 65, ptr %i.bbd, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3186:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2858
  %bcmp.i3185 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.522, i64 %i.av)
  %i.bbe = icmp eq i32 %bcmp.i3185, 0
  br i1 %i.bbe, label %_ZN4llvmeqENS_9StringRefES0_.exit3186.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit3186.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3186
  %i.bbf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 66, ptr %i.bbf, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3190:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3138
  %bcmp.i3189 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.523, i64 %i.av)
  %i.bbg = icmp eq i32 %bcmp.i3189, 0
  br i1 %i.bbg, label %_ZN4llvmeqENS_9StringRefES0_.exit3190.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3206

_ZN4llvmeqENS_9StringRefES0_.exit3190.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3190
  %i.bbh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 67, ptr %i.bbh, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3194:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3126
  %bcmp.i3193 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.524, i64 %i.av)
  %i.bbi = icmp eq i32 %bcmp.i3193, 0
  br i1 %i.bbi, label %_ZN4llvmeqENS_9StringRefES0_.exit3194.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3198

_ZN4llvmeqENS_9StringRefES0_.exit3194.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3194
  %i.bbj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 68, ptr %i.bbj, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3198:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3194
  %i.bbk = load i64, ptr %i.b, align 1
  %i.bbl = xor i64 %i.bbk, 8246220034656267363
  %i.bbm = getelementptr i8, ptr %i.b, i64 8
  %i.bbn = load i16, ptr %i.bbm, align 1
  %i.bbo = zext i16 %i.bbn to i64
  %i.bbp = xor i64 %i.bbo, 29797
  %i.bbq = or i64 %i.bbl, %i.bbp
  %i.bbr = icmp ne i64 %i.bbq, 0
  %i.bbs = zext i1 %i.bbr to i32
  %i.bbt = icmp eq i32 %i.bbs, 0
  br i1 %i.bbt, label %_ZN4llvmeqENS_9StringRefES0_.exit3198.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3214

_ZN4llvmeqENS_9StringRefES0_.exit3198.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3198
  %i.bbu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 9, ptr %i.bbu, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3202:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3098
  %bcmp.i3201 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.526, i64 %i.av)
  %i.bbv = icmp eq i32 %bcmp.i3201, 0
  br i1 %i.bbv, label %_ZN4llvmeqENS_9StringRefES0_.exit3202.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3210

_ZN4llvmeqENS_9StringRefES0_.exit3202.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3202
  %i.bbw = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 10, ptr %i.bbw, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3206:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3190
  %bcmp.i3205 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.527, i64 %i.av)
  %i.bbx = icmp eq i32 %bcmp.i3205, 0
  br i1 %i.bbx, label %_ZN4llvmeqENS_9StringRefES0_.exit3206.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit3206.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3206
  %i.bby = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 11, ptr %i.bby, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3210:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3202
  %bcmp.i3209 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.528, i64 %i.av)
  %i.bbz = icmp eq i32 %bcmp.i3209, 0
  br i1 %i.bbz, label %_ZN4llvmeqENS_9StringRefES0_.exit3210.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit3210.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3210
  %i.bca = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 54, ptr %i.bca, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3214:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3198
  %bcmp.i3213 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.529, i64 %i.av)
  %i.bcb = icmp eq i32 %bcmp.i3213, 0
  br i1 %i.bcb, label %_ZN4llvmeqENS_9StringRefES0_.exit3214.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit3214.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3214
  %i.bcc = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 53, ptr %i.bcc, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3218:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3146
  %bcmp.i3217 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.530, i64 %i.av)
  %i.bcd = icmp eq i32 %bcmp.i3217, 0
  br i1 %i.bcd, label %_ZN4llvmeqENS_9StringRefES0_.exit3218.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3238

_ZN4llvmeqENS_9StringRefES0_.exit3218.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3218
  %i.bce = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 69, ptr %i.bce, align 8, !tbaa !61
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3218.thread6606: ; preds = %bb.l
  %.not.i3219 = icmp ult i64 %i.av, 7
  br i1 %.not.i3219, label %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit1566, %_ZN4llvmeqENS_9StringRefES0_.exit1690, %_ZN4llvmeqENS_9StringRefES0_.exit1730, %_ZN4llvmeqENS_9StringRefES0_.exit1782, %_ZN4llvmeqENS_9StringRefES0_.exit1794, %_ZN4llvmeqENS_9StringRefES0_.exit2014, %_ZN4llvmeqENS_9StringRefES0_.exit2146, %_ZN4llvmeqENS_9StringRefES0_.exit2222, %_ZN4llvmeqENS_9StringRefES0_.exit2242, %_ZN4llvmeqENS_9StringRefES0_.exit2614, %_ZN4llvmeqENS_9StringRefES0_.exit2642, %_ZN4llvmeqENS_9StringRefES0_.exit2666, %_ZN4llvmeqENS_9StringRefES0_.exit2730, %_ZN4llvmeqENS_9StringRefES0_.exit2734, %_ZN4llvmeqENS_9StringRefES0_.exit2738, %_ZN4llvmeqENS_9StringRefES0_.exit2742, %_ZN4llvmeqENS_9StringRefES0_.exit2762, %_ZN4llvmeqENS_9StringRefES0_.exit2862, %_ZN4llvmeqENS_9StringRefES0_.exit3158, %_ZN4llvmeqENS_9StringRefES0_.exit3162, %_ZN4llvmeqENS_9StringRefES0_.exit3174, %_ZN4llvmeqENS_9StringRefES0_.exit3182, %_ZN4llvmeqENS_9StringRefES0_.exit3186, %_ZN4llvmeqENS_9StringRefES0_.exit3206, %_ZN4llvmeqENS_9StringRefES0_.exit3210, %_ZN4llvmeqENS_9StringRefES0_.exit3214, %_ZN4llvmeqENS_9StringRefES0_.exit3218.thread6606
  %i.bcf = load i32, ptr %i.b, align 1
  %i.bcg = xor i32 %i.bcf, 1415534404
  %i.bch = getelementptr i8, ptr %i.b, i64 3
  %i.bci = load i32, ptr %i.bch, align 1
  %i.bcj = xor i32 %i.bci, 1598505300
  %i.bck = or i32 %i.bcg, %i.bcj
  %i.bcl = icmp ne i32 %i.bck, 0
  %i.bcm = zext i1 %i.bcl to i32
  %i.bcn = icmp eq i32 %i.bcm, 0
  br i1 %i.bcn, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3223

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.bco = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bcp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bcq = load i64, ptr %i.bcp, align 8, !tbaa !48
  %i.bcr = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bco, i64 noundef 0, i64 noundef %i.bcq, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3223:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.bcs = load i32, ptr %i.b, align 1
  %i.bct = xor i32 %i.bcs, 1096767300
  %i.bcu = getelementptr i8, ptr %i.b, i64 3
  %i.bcv = load i32, ptr %i.bcu, align 1
  %i.bcw = xor i32 %i.bcv, 1598379073
  %i.bcx = or i32 %i.bct, %i.bcw
  %i.bcy = icmp ne i32 %i.bcx, 0
  %i.bcz = zext i1 %i.bcy to i32
  %i.bda = icmp eq i32 %i.bcz, 0
  br i1 %i.bda, label %_ZNK4llvm9StringRef11starts_withES0_.exit3223.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3223.thread6609

_ZNK4llvm9StringRef11starts_withES0_.exit3223.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3223
  %i.bdb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bdc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bdd = load i64, ptr %i.bdc, align 8, !tbaa !48
  %i.bde = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bdb, i64 noundef 0, i64 noundef %i.bdd, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3223.thread6609: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3223
  %.not.i3224 = icmp ult i64 %i.av, 14
  br i1 %.not.i3224, label %_ZNK4llvm9StringRef11starts_withES0_.exit3229.thread6611, label %_ZNK4llvm9StringRef11starts_withES0_.exit3226

_ZNK4llvm9StringRef11starts_withES0_.exit3226:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3223.thread6609
  %i.bdf = load i64, ptr %i.b, align 1
  %i.bdg = xor i64 %i.bdf, 6148629866202748740
  %i.bdh = getelementptr i8, ptr %i.b, i64 6
  %i.bdi = load i64, ptr %i.bdh, align 1
  %i.bdj = xor i64 %i.bdi, 6870615380319098196
  %i.bdk = or i64 %i.bdg, %i.bdj
  %i.bdl = icmp ne i64 %i.bdk, 0
  %i.bdm = zext i1 %i.bdl to i32
  %i.bdn = icmp eq i32 %i.bdm, 0
  br i1 %i.bdn, label %_ZNK4llvm9StringRef11starts_withES0_.exit3226.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3226.thread6610

_ZNK4llvm9StringRef11starts_withES0_.exit3226.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3226
  %i.bdo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bdp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bdq = load i64, ptr %i.bdp, align 8, !tbaa !48
  %i.bdr = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bdo, i64 noundef 0, i64 noundef %i.bdq, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3226.thread6610: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3226
  %.not.i3227 = icmp ult i64 %i.av, 21
  br i1 %.not.i3227, label %_ZNK4llvm9StringRef11starts_withES0_.exit3232, label %_ZNK4llvm9StringRef11starts_withES0_.exit3229

_ZNK4llvm9StringRef11starts_withES0_.exit3229:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3226.thread6610
  %i.bds = load i128, ptr %i.b, align 1
  %i.bdt = xor i128 %i.bds, 86780244149289101598217701926478239556
  %i.bdu = getelementptr i8, ptr %i.b, i64 5
  %i.bdv = load i128, ptr %i.bdu, align 1
  %i.bdw = xor i128 %i.bdv, 126714176947470378511510495653756095830
  %i.bdx = or i128 %i.bdt, %i.bdw
  %i.bdy = icmp ne i128 %i.bdx, 0
  %i.bdz = zext i1 %i.bdy to i32
  %i.bea = icmp eq i32 %i.bdz, 0
  br i1 %i.bea, label %_ZNK4llvm9StringRef11starts_withES0_.exit3229.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3232

_ZNK4llvm9StringRef11starts_withES0_.exit3229.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3229
  %i.beb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bec = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bed = load i64, ptr %i.bec, align 8, !tbaa !48
  %i.bee = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.beb, i64 noundef 0, i64 noundef %i.bed, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3229.thread6611: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3223.thread6609
  %.not.i3230 = icmp samesign ult i64 %i.av, 8
  br i1 %.not.i3230, label %_ZNK4llvm9StringRef11starts_withES0_.exit3238, label %_ZNK4llvm9StringRef11starts_withES0_.exit3232

_ZNK4llvm9StringRef11starts_withES0_.exit3232:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3229, %_ZNK4llvm9StringRef11starts_withES0_.exit3226.thread6610, %_ZNK4llvm9StringRef11starts_withES0_.exit3229.thread6611
  %i.bef = load i64, ptr %i.b, align 1
  %i.beg = icmp ne i64 %i.bef, 6865542199310767940
  %i.beh = zext i1 %i.beg to i32
  %i.bei = icmp eq i32 %i.beh, 0
  br i1 %i.bei, label %_ZNK4llvm9StringRef11starts_withES0_.exit3232.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3232.thread6612

_ZNK4llvm9StringRef11starts_withES0_.exit3232.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3232
  %i.bej = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bek = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bel = load i64, ptr %i.bek, align 8, !tbaa !48
  %i.bem = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bej, i64 noundef 0, i64 noundef %i.bel, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3232.thread6612: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3232
  %.not.i3233 = icmp ult i64 %i.av, 9
  br i1 %.not.i3233, label %_ZNK4llvm9StringRef11starts_withES0_.exit3238, label %_ZNK4llvm9StringRef11starts_withES0_.exit3235

_ZNK4llvm9StringRef11starts_withES0_.exit3235:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3232.thread6612
  %i.ben = load i64, ptr %i.b, align 1
  %i.beo = xor i64 %i.ben, 4993719366368319300
  %i.bep = getelementptr i8, ptr %i.b, i64 8
  %i.beq = load i8, ptr %i.bep, align 1
  %i.ber = zext i8 %i.beq to i64
  %i.bes = xor i64 %i.ber, 95
  %i.bet = or i64 %i.beo, %i.bes
  %i.beu = icmp ne i64 %i.bet, 0
  %i.bev = zext i1 %i.beu to i32
  %i.bew = icmp eq i32 %i.bev, 0
  br i1 %i.bew, label %_ZNK4llvm9StringRef11starts_withES0_.exit3235.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3238

_ZNK4llvm9StringRef11starts_withES0_.exit3235.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3235
  %i.bex = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bez = load i64, ptr %i.bey, align 8, !tbaa !48
  %i.bfa = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bex, i64 noundef 0, i64 noundef %i.bez, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3238:    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3218, %_ZNK4llvm9StringRef11starts_withES0_.exit3235, %_ZNK4llvm9StringRef11starts_withES0_.exit3232.thread6612, %_ZNK4llvm9StringRef11starts_withES0_.exit3229.thread6611
  %.not.i3230672167266729 = phi i1 [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit3229.thread6611 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit3235 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit3232.thread6612 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit3218 ] ; 3 uses
  %i.bfb = load i32, ptr %i.b, align 1
  %i.bfc = xor i32 %i.bfb, 1130321732
  %i.bfd = getelementptr i8, ptr %i.b, i64 4
  %i.bfe = load i16, ptr %i.bfd, align 1
  %i.bff = zext i16 %i.bfe to i32
  %i.bfg = xor i32 %i.bff, 24387
  %i.bfh = or i32 %i.bfc, %i.bfg
  %i.bfi = icmp ne i32 %i.bfh, 0
  %i.bfj = zext i1 %i.bfi to i32
  %i.bfk = icmp eq i32 %i.bfj, 0
  br i1 %i.bfk, label %_ZNK4llvm9StringRef11starts_withES0_.exit3238.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3241

_ZNK4llvm9StringRef11starts_withES0_.exit3238.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3238
  %i.bfl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bfm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bfn = load i64, ptr %i.bfm, align 8, !tbaa !48
  %i.bfo = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bfl, i64 noundef 0, i64 noundef %i.bfn, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3241:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3238
  %i.bfp = load i32, ptr %i.b, align 1
  %i.bfq = xor i32 %i.bfp, 1331648324
  %i.bfr = getelementptr i8, ptr %i.b, i64 4
  %i.bfs = load i16, ptr %i.bfr, align 1
  %i.bft = zext i16 %i.bfs to i32
  %i.bfu = xor i32 %i.bft, 24400
  %i.bfv = or i32 %i.bfq, %i.bfu
  %i.bfw = icmp ne i32 %i.bfv, 0
  %i.bfx = zext i1 %i.bfw to i32
  %i.bfy = icmp eq i32 %i.bfx, 0
  br i1 %i.bfy, label %_ZNK4llvm9StringRef11starts_withES0_.exit3241.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3241.thread6615

_ZNK4llvm9StringRef11starts_withES0_.exit3241.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3241
  %i.bfz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bga = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bgb = load i64, ptr %i.bga, align 8, !tbaa !48
  %i.bgc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bfz, i64 noundef 0, i64 noundef %i.bgb, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3241.thread6615: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3241
  %.not.i3242 = icmp ult i64 %i.av, 11
  br i1 %.not.i3242, label %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617, label %_ZNK4llvm9StringRef11starts_withES0_.exit3244

_ZNK4llvm9StringRef11starts_withES0_.exit3244:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3241.thread6615
  %i.bgd = load i64, ptr %i.b, align 1
  %i.bge = xor i64 %i.bgd, 5641113956008286020
  %i.bgf = getelementptr i8, ptr %i.b, i64 3
  %i.bgg = load i64, ptr %i.bgf, align 1
  %i.bgh = xor i64 %i.bgg, 6867785258813833549
  %i.bgi = or i64 %i.bge, %i.bgh
  %i.bgj = icmp ne i64 %i.bgi, 0
  %i.bgk = zext i1 %i.bgj to i32
  %i.bgl = icmp eq i32 %i.bgk, 0
  br i1 %i.bgl, label %_ZNK4llvm9StringRef11starts_withES0_.exit3244.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3244.thread6616

_ZNK4llvm9StringRef11starts_withES0_.exit3244.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3244
  %i.bgm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bgn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bgo = load i64, ptr %i.bgn, align 8, !tbaa !48
  %i.bgp = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bgm, i64 noundef 0, i64 noundef %i.bgo, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3244.thread6616: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3244
  %.not.i3245 = icmp ult i64 %i.av, 19
  br i1 %.not.i3245, label %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617, label %_ZNK4llvm9StringRef11starts_withES0_.exit3247

_ZNK4llvm9StringRef11starts_withES0_.exit3247:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3244.thread6616
  %i.bgq = load i128, ptr %i.b, align 1
  %i.bgr = xor i128 %i.bgq, 97424998912570680950627703634545039172
  %i.bgs = getelementptr i8, ptr %i.b, i64 3
  %i.bgt = load i128, ptr %i.bgs, align 1
  %i.bgu = xor i128 %i.bgt, 126631323620878913461488172704866521153
  %i.bgv = or i128 %i.bgr, %i.bgu
  %i.bgw = icmp ne i128 %i.bgv, 0
  %i.bgx = zext i1 %i.bgw to i32
  %i.bgy = icmp eq i32 %i.bgx, 0
  br i1 %i.bgy, label %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617

_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3247
  %i.bgz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bha = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bhb = load i64, ptr %i.bha, align 8, !tbaa !48
  %i.bhc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bgz, i64 noundef 0, i64 noundef %i.bhb, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3166, %_ZN4llvmeqENS_9StringRefES0_.exit3150, %_ZN4llvmeqENS_9StringRefES0_.exit3118, %_ZN4llvmeqENS_9StringRefES0_.exit3030, %_ZN4llvmeqENS_9StringRefES0_.exit2502, %_ZN4llvmeqENS_9StringRefES0_.exit3218.thread6606, %_ZNK4llvm9StringRef11starts_withES0_.exit3241.thread6615, %_ZNK4llvm9StringRef11starts_withES0_.exit3244.thread6616, %_ZNK4llvm9StringRef11starts_withES0_.exit3247
  %.not.i3230672167266730674267486754 = phi i1 [ %.not.i3230672167266729, %_ZNK4llvm9StringRef11starts_withES0_.exit3247 ], [ %.not.i3230672167266729, %_ZNK4llvm9StringRef11starts_withES0_.exit3244.thread6616 ], [ %.not.i3230672167266729, %_ZNK4llvm9StringRef11starts_withES0_.exit3241.thread6615 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit3218.thread6606 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit2502 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit3030 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit3118 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit3150 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit3166 ]
  %.not.i32366732674167496753 = phi i1 [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit3247 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit3244.thread6616 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit3241.thread6615 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit3218.thread6606 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit2502 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit3030 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit3118 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit3150 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit3166 ]
  switch i64 %i.av, label %_ZN4llvmeqENS_9StringRefES0_.exit3267.thread6631 [
    i64 9, label %_ZN4llvmeqENS_9StringRefES0_.exit3251
    i64 11, label %_ZN4llvmeqENS_9StringRefES0_.exit3255
    i64 10, label %_ZN4llvmeqENS_9StringRefES0_.exit3259
    i64 17, label %_ZN4llvmeqENS_9StringRefES0_.exit3267
  ]

_ZN4llvmeqENS_9StringRefES0_.exit3251:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617
  %i.bhd = load i64, ptr %i.b, align 1
  %i.bhe = xor i64 %i.bhd, 8461244960956965476
  %i.bhf = getelementptr i8, ptr %i.b, i64 8
  %i.bhg = load i8, ptr %i.bhf, align 1
  %i.bhh = zext i8 %i.bhg to i64
  %i.bhi = xor i64 %i.bhh, 101
  %i.bhj = or i64 %i.bhe, %i.bhi
  %i.bhk = icmp ne i64 %i.bhj, 0
  %i.bhl = zext i1 %i.bhk to i32
  %i.bhm = icmp eq i32 %i.bhl, 0
  br i1 %i.bhm, label %_ZN4llvmeqENS_9StringRefES0_.exit3251.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3263

_ZN4llvmeqENS_9StringRefES0_.exit3251.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3251
  %i.bhn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bho = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bhn, ptr noundef nonnull @.str.542) ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3255:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617
  %bcmp.i3254 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.543, i64 %i.av)
  %i.bhp = icmp eq i32 %bcmp.i3254, 0
  br i1 %i.bhp, label %_ZN4llvmeqENS_9StringRefES0_.exit3255.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3267.thread6631

_ZN4llvmeqENS_9StringRefES0_.exit3255.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3255
  %i.bhq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bhr = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bhq, ptr noundef nonnull @.str.11) ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3259:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617
  %bcmp.i3258 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.544, i64 %i.av)
  %i.bhs = icmp eq i32 %bcmp.i3258, 0
  br i1 %i.bhs, label %_ZN4llvmeqENS_9StringRefES0_.exit3259.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3267.thread6631

_ZN4llvmeqENS_9StringRefES0_.exit3259.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3259
  %i.bht = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bhu = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bht, ptr noundef nonnull @.str.545) ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3263:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3251
  %bcmp.i3262 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.546, i64 %i.av)
  %i.bhv = icmp eq i32 %bcmp.i3262, 0
  br i1 %i.bhv, label %_ZN4llvmeqENS_9StringRefES0_.exit3263.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3267.thread6631

_ZN4llvmeqENS_9StringRefES0_.exit3263.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3263
  %i.bhw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bhx = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bhw, ptr noundef nonnull @.str.461) ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3267:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617
  %bcmp.i3266 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.547, i64 %i.av)
  %i.bhy = icmp eq i32 %bcmp.i3266, 0
  br i1 %i.bhy, label %_ZN4llvmeqENS_9StringRefES0_.exit3267.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3267.thread6631

_ZN4llvmeqENS_9StringRefES0_.exit3267.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3267
  %i.bhz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bia = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bhz, ptr noundef nonnull @.str.548) ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3267.thread6631: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3263, %_ZN4llvmeqENS_9StringRefES0_.exit3259, %_ZN4llvmeqENS_9StringRefES0_.exit3255, %_ZNK4llvm9StringRef11starts_withES0_.exit3247.thread6617, %_ZN4llvmeqENS_9StringRefES0_.exit3267
  br i1 %.not.i32366732674167496753, label %_ZNK4llvm9StringRef11starts_withES0_.exit3270.thread6633, label %_ZNK4llvm9StringRef11starts_withES0_.exit3270

_ZNK4llvm9StringRef11starts_withES0_.exit3270:    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3267.thread6631
  %i.bib = load i32, ptr %i.b, align 1
  %i.bic = xor i32 %i.bib, 1816545604
  %i.bid = getelementptr i8, ptr %i.b, i64 4
  %i.bie = load i16, ptr %i.bid, align 1
  %i.bif = zext i16 %i.bie to i32
  %i.big = xor i32 %i.bif, 26465
  %i.bih = or i32 %i.bic, %i.big
  %i.bii = icmp ne i32 %i.bih, 0
  %i.bij = zext i1 %i.bii to i32
  %i.bik = icmp eq i32 %i.bij, 0
  br i1 %i.bik, label %_ZNK4llvm9StringRef11starts_withES0_.exit3270.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3270.thread6633

_ZNK4llvm9StringRef11starts_withES0_.exit3270.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3270
  %i.bil = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bim = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bin = load i64, ptr %i.bim, align 8, !tbaa !48
  %i.bio = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bil, i64 noundef 0, i64 noundef %i.bin, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3270.thread6633: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3267.thread6631, %_ZNK4llvm9StringRef11starts_withES0_.exit3270
  br i1 %.not.i3230672167266730674267486754, label %_ZNK4llvm9StringRef11starts_withES0_.exit3273.thread6634, label %_ZNK4llvm9StringRef11starts_withES0_.exit3273

_ZNK4llvm9StringRef11starts_withES0_.exit3273:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3270.thread6633
  %i.bip = load i64, ptr %i.b, align 1
  %i.biq = icmp ne i64 %i.bip, 7449354307898657092
  %i.bir = zext i1 %i.biq to i32
  %i.bis = icmp eq i32 %i.bir, 0
  br i1 %i.bis, label %_ZNK4llvm9StringRef11starts_withES0_.exit3273.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3273.thread6634

_ZNK4llvm9StringRef11starts_withES0_.exit3273.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3273
  %i.bit = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.biu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.biv = load i64, ptr %i.biu, align 8, !tbaa !48
  %i.biw = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bit, i64 noundef 0, i64 noundef %i.biv, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3273.thread6634: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3270.thread6633, %_ZNK4llvm9StringRef11starts_withES0_.exit3273
  %.not.i3274 = icmp ult i64 %i.av, 4
  br i1 %.not.i3274, label %_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread6635, label %_ZNK4llvm9StringRef11starts_withES0_.exit3276

_ZNK4llvm9StringRef11starts_withES0_.exit3276:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3273.thread6634
  %i.bix = load i32, ptr %i.b, align 1
  %i.biy = icmp ne i32 %i.bix, 1598772035
  %i.biz = zext i1 %i.biy to i32
  %i.bja = icmp eq i32 %i.biz, 0
  br i1 %i.bja, label %_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread6635

_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3276
  %i.bjb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bjc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bjd = load i64, ptr %i.bjc, align 8, !tbaa !48
  %i.bje = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bjb, i64 noundef 0, i64 noundef %i.bjd, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread6635: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3273.thread6634, %_ZNK4llvm9StringRef11starts_withES0_.exit3276
  switch i64 %i.av, label %_ZN4llvmeqENS_9StringRefES0_.exit3320.thread6667 [
    i64 7, label %_ZN4llvmeqENS_9StringRefES0_.exit3280
    i64 9, label %_ZN4llvmeqENS_9StringRefES0_.exit3284
    i64 14, label %_ZN4llvmeqENS_9StringRefES0_.exit3288
    i64 19, label %_ZN4llvmeqENS_9StringRefES0_.exit3292
    i64 3, label %_ZN4llvmeqENS_9StringRefES0_.exit3296
    i64 5, label %_ZN4llvmeqENS_9StringRefES0_.exit3300
    i64 4, label %_ZN4llvmeqENS_9StringRefES0_.exit3304
    i64 6, label %_ZN4llvmeqENS_9StringRefES0_.exit3312
    i64 8, label %_ZN4llvmeqENS_9StringRefES0_.exit3320
  ]

_ZN4llvmeqENS_9StringRefES0_.exit3280:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread6635
  %i.bjf = load i32, ptr %i.b, align 1
  %i.bjg = xor i32 %i.bjf, 1698983758
  %i.bjh = getelementptr i8, ptr %i.b, i64 3
  %i.bji = load i32, ptr %i.bjh, align 1
  %i.bjj = xor i32 %i.bji, 1735746149
  %i.bjk = or i32 %i.bjg, %i.bjj
  %i.bjl = icmp ne i32 %i.bjk, 0
  %i.bjm = zext i1 %i.bjl to i32
  %i.bjn = icmp eq i32 %i.bjm, 0
  br i1 %i.bjn, label %_ZN4llvmeqENS_9StringRefES0_.exit3280.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3308

_ZN4llvmeqENS_9StringRefES0_.exit3284:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread6635
  %bcmp.i3283 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.553, i64 %i.av)
  %i.bjo = icmp eq i32 %bcmp.i3283, 0
  br i1 %i.bjo, label %_ZN4llvmeqENS_9StringRefES0_.exit3280.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3320.thread6667

_ZN4llvmeqENS_9StringRefES0_.exit3288:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread6635
  %bcmp.i3287 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.554, i64 %i.av)
  %i.bjp = icmp eq i32 %bcmp.i3287, 0
  br i1 %i.bjp, label %_ZN4llvmeqENS_9StringRefES0_.exit3280.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3320.thread6667

_ZN4llvmeqENS_9StringRefES0_.exit3292:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread6635
  %bcmp.i3291 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.555, i64 %i.av)
  %i.bjq = icmp eq i32 %bcmp.i3291, 0
  br i1 %i.bjq, label %_ZN4llvmeqENS_9StringRefES0_.exit3280.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3320.thread6667

_ZN4llvmeqENS_9StringRefES0_.exit3280.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3292, %_ZN4llvmeqENS_9StringRefES0_.exit3288, %_ZN4llvmeqENS_9StringRefES0_.exit3284, %_ZN4llvmeqENS_9StringRefES0_.exit3280
  %i.bjr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bjs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bjt = load i64, ptr %i.bjs, align 8, !tbaa !48
  %i.bju = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bjr, i64 noundef 0, i64 noundef %i.bjt, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3296:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread6635
  %bcmp.i3295 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.556, i64 %i.av)
  %i.bjv = icmp eq i32 %bcmp.i3295, 0
  br i1 %i.bjv, label %_ZN4llvmeqENS_9StringRefES0_.exit3296.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3320.thread6667

_ZN4llvmeqENS_9StringRefES0_.exit3300:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread6635
  %bcmp.i3299 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.557, i64 %i.av)
  %i.bjw = icmp eq i32 %bcmp.i3299, 0
  br i1 %i.bjw, label %_ZN4llvmeqENS_9StringRefES0_.exit3296.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3320.thread6667

_ZN4llvmeqENS_9StringRefES0_.exit3304:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread6635
  %bcmp.i3303 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.558, i64 %i.av)
  %i.bjx = icmp eq i32 %bcmp.i3303, 0
  br i1 %i.bjx, label %_ZN4llvmeqENS_9StringRefES0_.exit3296.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3320.thread6667

_ZN4llvmeqENS_9StringRefES0_.exit3308:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3280
  %bcmp.i3307 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.559, i64 %i.av)
  %i.bjy = icmp eq i32 %bcmp.i3307, 0
  br i1 %i.bjy, label %_ZN4llvmeqENS_9StringRefES0_.exit3296.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit3316

_ZN4llvmeqENS_9StringRefES0_.exit3296.thread:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit3308, %_ZN4llvmeqENS_9StringRefES0_.exit3304, %_ZN4llvmeqENS_9StringRefES0_.exit3300, %_ZN4llvmeqENS_9StringRefES0_.exit3296
  %i.bjz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bka = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bkb = load i64, ptr %i.bka, align 8, !tbaa !48
  %i.bkc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bjz, i64 noundef 0, i64 noundef %i.bkb, ptr noundef nonnull %i.b, i64 noundef %i.av) #15 ; 0 uses
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit3312:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit3276.thread6635
end_hunk_4
