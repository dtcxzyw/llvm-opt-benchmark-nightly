Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/component_canon?download=true
inline.NumInlined: 1683
inline.NumDeleted: 1124
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0
@.str.36 = private unnamed_addr constant [13 x i8] c"user defined\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"terminated\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"generic runtime error\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"cost limit exceeded\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"wrong VM workflow\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"wasm function not found\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"AOT runtime is disabled in this build\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"execution interrupted\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"wasm module hasn't passed validation yet\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"set null value into non-nullable value type\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"set value into const\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"set value type mismatch\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"user defined error code\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"invalid AOT/JIT configure\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"Not implemented instructions in AOT/JIT\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"invalid path\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"unexpected end\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"magic header not detected\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"unknown binary version\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"malformed section id\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"section size mismatch\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"length out of bounds\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"unexpected content after last section\00", align 1
@.str.61 = private unnamed_addr constant [52 x i8] c"function and code section have inconsistent lengths\00", align 1
@.str.62 = private unnamed_addr constant [54 x i8] c"data count and data section have inconsistent lengths\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"data count section required\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"malformed import kind\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"malformed export kind\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"zero byte expected\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"malformed mutability\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"too many locals\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"malformed value type\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"malformed element type\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"malformed reference type\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"malformed UTF-8 encoding\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"integer too large\00", align 1
@.str.74 = private unnamed_addr constant [32 x i8] c"integer representation too long\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"illegal opcode\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"END opcode expected\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"invalid wasm grammar\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"intrinsics table not found\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"malformed table\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"malformed memop flags\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c"malformed limits flags\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"malformed catch flags\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"malformed sort\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"malformed alias target\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"malformed core instance\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"malformed instance\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"malformed defined type\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"malformed module type\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"malformed record type\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"malformed variant type\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"malformed tuple type\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"malformed flags type\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"malformed canonical\00", align 1
@.str.94 = private unnamed_addr constant [25 x i8] c"unknown canonical option\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"malformed name\00", align 1
@.str.96 = private unnamed_addr constant [41 x i8] c"component model (loader) not implemented\00", align 1
@.str.97 = private unnamed_addr constant [33 x i8] c"atomic alignment must be natural\00", align 1
@.str.98 = private unnamed_addr constant [42 x i8] c"alignment must not be larger than natural\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"type mismatch\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"unknown label\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"unknown local\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"unknown field\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"unknown type\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"unknown function\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"unknown table\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"unknown memory\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"unknown global\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"unknown tag\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"unknown elem segment\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"unknown data segment\00", align 1
@.str.111 = private unnamed_addr constant [30 x i8] c"undeclared function reference\00", align 1
@.str.112 = private unnamed_addr constant [29 x i8] c"constant expression required\00", align 1
@.str.113 = private unnamed_addr constant [22 x i8] c"duplicate export name\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"immutable global\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"immutable field\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"immutable array\00", align 1
@.str.117 = private unnamed_addr constant [21 x i8] c"invalid result arity\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"multiple tables\00", align 1
@.str.119 = private unnamed_addr constant [18 x i8] c"multiple memories\00", align 1
@.str.120 = private unnamed_addr constant [46 x i8] c"size minimum must not be greater than maximum\00", align 1
@.str.121 = private unnamed_addr constant [47 x i8] c"memory size must be at most 65536 pages (4GiB)\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"start function\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"invalid lane index\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"uninitialized local\00", align 1
@.str.125 = private unnamed_addr constant [30 x i8] c"field type is not defaultable\00", align 1
@.str.126 = private unnamed_addr constant [30 x i8] c"array type is not defaultable\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"field is packed\00", align 1
@.str.128 = private unnamed_addr constant [16 x i8] c"array is packed\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"field is unpacked\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"array is unpacked\00", align 1
@.str.131 = private unnamed_addr constant [20 x i8] c"invalid br ref type\00", align 1
@.str.132 = private unnamed_addr constant [25 x i8] c"array types do not match\00", align 1
@.str.133 = private unnamed_addr constant [36 x i8] c"array type is not numeric or vector\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"sub type\00", align 1
@.str.135 = private unnamed_addr constant [26 x i8] c"non-empty tag result type\00", align 1
@.str.136 = private unnamed_addr constant [32 x i8] c"shared memory must have maximum\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"memory size\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"table size\00", align 1
@.str.139 = private unnamed_addr constant [20 x i8] c"offset out of range\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"missing argument\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@.str.142 = private unnamed_addr constant [23 x i8] c"invalid type reference\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"export not found\00", align 1
@.str.144 = private unnamed_addr constant [44 x i8] c"component model (validator) not implemented\00", align 1
@.str.145 = private unnamed_addr constant [28 x i8] c"duplicate name in component\00", align 1
@.str.146 = private unnamed_addr constant [23 x i8] c"invalid component name\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"not a defined type\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c"index out of bounds\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"name cannot be empty\00", align 1
@.str.150 = private unnamed_addr constant [31 x i8] c"cannot have more than 32 flags\00", align 1
@.str.151 = private unnamed_addr constant [53 x i8] c"record field name conflicts with previous field name\00", align 1
@.str.152 = private unnamed_addr constant [52 x i8] c"variant case name conflicts with previous case name\00", align 1
@.str.153 = private unnamed_addr constant [44 x i8] c"flag name conflicts with previous flag name\00", align 1
@.str.154 = private unnamed_addr constant [47 x i8] c"enum tag name conflicts with previous tag name\00", align 1
@.str.155 = private unnamed_addr constant [41 x i8] c"variant type must have at least one case\00", align 1
@.str.156 = private unnamed_addr constant [42 x i8] c"ascribed type of export is not compatible\00", align 1
@.str.157 = private unnamed_addr constant [24 x i8] c"missing expected export\00", align 1
@.str.158 = private unnamed_addr constant [24 x i8] c"not a valid export name\00", align 1
@.str.159 = private unnamed_addr constant [24 x i8] c"not a valid extern name\00", align 1
@.str.160 = private unnamed_addr constant [21 x i8] c"module name conflict\00", align 1
@.str.161 = private unnamed_addr constant [25 x i8] c"incompatible import type\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"unknown import\00", align 1
@.str.163 = private unnamed_addr constant [26 x i8] c"data segment does not fit\00", align 1
@.str.164 = private unnamed_addr constant [30 x i8] c"elements segment does not fit\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"invalid core sort\00", align 1
@.str.166 = private unnamed_addr constant [25 x i8] c"invalid canonical option\00", align 1
@.str.167 = private unnamed_addr constant [30 x i8] c"invalid export in core module\00", align 1
@.str.168 = private unnamed_addr constant [51 x i8] c"invalid argument been used to invoke resource.drop\00", align 1
@.str.169 = private unnamed_addr constant [48 x i8] c"component model (instantiation) not implemented\00", align 1
@.str.170 = private unnamed_addr constant [23 x i8] c"wrong instance address\00", align 1
@.str.171 = private unnamed_addr constant [21 x i8] c"wrong instance index\00", align 1
@.str.172 = private unnamed_addr constant [26 x i8] c"instruction type mismatch\00", align 1
@.str.173 = private unnamed_addr constant [28 x i8] c"function signature mismatch\00", align 1
@.str.174 = private unnamed_addr constant [23 x i8] c"integer divide by zero\00", align 1
@.str.175 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.176 = private unnamed_addr constant [30 x i8] c"invalid conversion to integer\00", align 1
@.str.177 = private unnamed_addr constant [27 x i8] c"out of bounds table access\00", align 1
@.str.178 = private unnamed_addr constant [28 x i8] c"out of bounds memory access\00", align 1
@.str.179 = private unnamed_addr constant [27 x i8] c"out of bounds array access\00", align 1
@.str.180 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.181 = private unnamed_addr constant [22 x i8] c"uninitialized element\00", align 1
@.str.182 = private unnamed_addr constant [18 x i8] c"undefined element\00", align 1
@.str.183 = private unnamed_addr constant [28 x i8] c"indirect call type mismatch\00", align 1
@.str.184 = private unnamed_addr constant [21 x i8] c"host function failed\00", align 1
@.str.185 = private unnamed_addr constant [24 x i8] c"reference type mismatch\00", align 1
@.str.186 = private unnamed_addr constant [17 x i8] c"unaligned atomic\00", align 1
@.str.187 = private unnamed_addr constant [23 x i8] c"expected shared memory\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"null reference\00", align 1
@.str.189 = private unnamed_addr constant [24 x i8] c"null function reference\00", align 1
@.str.190 = private unnamed_addr constant [25 x i8] c"null structure reference\00", align 1
@.str.191 = private unnamed_addr constant [21 x i8] c"null array reference\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"null i31 reference\00", align 1
@.str.193 = private unnamed_addr constant [25 x i8] c"null exception reference\00", align 1
@.str.194 = private unnamed_addr constant [13 x i8] c"cast failure\00", align 1
@.str.195 = private unnamed_addr constant [19 x i8] c"uncaught exception\00", align 1
@.str.196 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS9_10RefVariantEEEEEE8_M_resetEvEUlOT_E_JRSt7variantIJhtjmasilfdbS8_SM_EEEE9_S_vtableE = linkonce_odr hidden local_unnamed_addr constant %"struct.std::__detail::__variant::_Multi_array" { [13 x %"struct.std::__detail::__variant::_Multi_array.376"] [%"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESS_SV_ }, %"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESS_SV_ }, %"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESS_SV_ }, %"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESS_SV_ }, %"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm4EEEE14__visit_invokeESS_SV_ }, %"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm5EEEE14__visit_invokeESS_SV_ }, %"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm6EEEE14__visit_invokeESS_SV_ }, %"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm7EEEE14__visit_invokeESS_SV_ }, %"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm8EEEE14__visit_invokeESS_SV_ }, %"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm9EEEE14__visit_invokeESS_SV_ }, %"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm10EEEE14__visit_invokeESS_SV_ }, %"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm11EEEE14__visit_invokeESS_SV_ }, %"struct.std::__detail::__variant::_Multi_array.376" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEE8_M_resetEvEUlOT_E_RSt7variantIJhtjmasilfdbS9_SN_EEEJEEESt16integer_sequenceImJLm12EEEE14__visit_invokeESS_SV_ }] }, comdat, align 8
@_ZNSt8__detail9__variant12__gen_vtableINS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSA_10RefVariantEEEEEEC1EOSO_EUlOT_T0_E_JOSt7variantIJhtjmasilfdbS9_SN_EEEE9_S_vtableE = linkonce_odr hidden local_unnamed_addr constant %"struct.std::__detail::__variant::_Multi_array.389" { [13 x %"struct.std::__detail::__variant::_Multi_array.390"] [%"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESV_SY_ }, %"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESV_SY_ }, %"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESV_SY_ }, %"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESV_SY_ }, %"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm4EEEE14__visit_invokeESV_SY_ }, %"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm5EEEE14__visit_invokeESV_SY_ }, %"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm6EEEE14__visit_invokeESV_SY_ }, %"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm7EEEE14__visit_invokeESV_SY_ }, %"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm8EEEE14__visit_invokeESV_SY_ }, %"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm9EEEE14__visit_invokeESV_SY_ }, %"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm10EEEE14__visit_invokeESV_SY_ }, %"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm11EEEE14__visit_invokeESV_SY_ }, %"struct.std::__detail::__variant::_Multi_array.390" { ptr @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEEC1EOSP_EUlOT_T0_E_OSt7variantIJhtjmasilfdbSA_SO_EEEJEEESt16integer_sequenceImJLm12EEEE14__visit_invokeESV_SY_ }] }, comdat, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor18convValsToCoreWASMEN5cxx204spanIKSt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEELm18446744073709551615EEENS3_IKNS_16ComponentValTypeELm18446744073709551615EEEPNS_7Runtime8Instance16FunctionInstanceEPNSV_14MemoryInstanceE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree readonly captures(address) %4, i64 %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cxx20::expected", align 8   ; 7 uses
  %9 = alloca %"struct.cxx20::span.89", align 8   ; 3 uses
  %.sroa.6 = alloca [12 x i8], align 4            ; 5 uses
  %10 = alloca %"class.cxx20::expected.129", align 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nuw nsw i64 %5, 3
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not154 = icmp eq i64 %5, 0
  br i1 %.not154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE9push_backERKSD_.exit81
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.fk, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE9push_backERKSD_.exit81 ] ; 5 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.fl, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE9push_backERKSD_.exit81 ] ; 17 uses
  %.0156 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE9push_backERKSD_.exit81 ] ; 5 uses
  %.016155 = phi ptr [ %4, %.lr.ph ], [ %i.fn, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE9push_backERKSD_.exit81 ] ; 2 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.fm, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE9push_backERKSD_.exit81 ] ; 32 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.016155, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18
  switch i8 %i.l, label %bb.ac [
    i8 115, label %bb.c
    i8 0, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE9push_backERKSD_.exit81
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %6), "nonnull"(ptr %7) ]
  %i.m = add i32 %.0156, 1
  %i.n = zext i32 %.0156 to i64
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i8, ptr %i.p, align 16, !tbaa !20
  %.not.i.i = icmp eq i8 %i.q, 11
  br i1 %.not.i.i, label %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJhtjmasilfdbS5_N8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS6_10RefVariantEEEEEERKT_RKSt7variantIJDpT0_EE.exit, label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.ac
  store ptr %i.j, ptr %0, align 8
  %i.r = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.r, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @.str.6, ptr %i.s, align 8, !tbaa !25
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #21
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJhtjmasilfdbS5_N8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS6_10RefVariantEEEEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.c
  %i.t = load ptr, ptr %i.o, align 16, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30   ; 7 uses
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22
          to label %bb.d unwind label %.loopexit  ; 6 uses

bb.d:                                             ; preds = %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJhtjmasilfdbS5_N8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS6_10RefVariantEEEEEERKT_RKSt7variantIJDpT0_EE.exit
  store i32 0, ptr %i.x, align 16
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 0, ptr %.sroa.4115.0..sroa_idx, align 16
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 1, ptr %.sroa.5117.0..sroa_idx, align 16
  %.sroa.6119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i32 %i.w, ptr %.sroa.6119.0..sroa_idx, align 16
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !154, !nonnull !31, !align !32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !157 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !158 ; 4 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.ae
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp ugt i64 %i.ae, 9223372036854775800
  br i1 %i.ag, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN8WasmEdge7ValTypeEE8allocateEmPKv.exit.i.i.i.i, !prof !159

.noexc.i.i:                                       ; preds = %bb.e
  store ptr %i.j, ptr %0, align 8
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #21
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge7ValTypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #22
          to label %.noexc19 unwind label %.loopexit ; 6 uses

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7ValTypeEE8allocateEmPKv.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae ; 3 uses
  %i.aj = icmp samesign ugt i64 %i.ae, 8
  br i1 %i.aj, label %bb.f, label %bb.g, !prof !160

bb.f:                                             ; preds = %.noexc19
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %i.ab, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EEC2ERKS3_.exit

bb.g:                                             ; preds = %.noexc19
  %i.ak = icmp eq i64 %i.ae, 8
  br i1 %i.ak, label %bb.h, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EEC2ERKS3_.exit

bb.h:                                             ; preds = %bb.g
  %i.al = load i64, ptr %i.ab, align 4, !tbaa !18
  store i64 %i.al, ptr %i.ah, align 4, !tbaa !18
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EEC2ERKS3_.exit

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EEC2ERKS3_.exit: ; preds = %bb.h, %bb.g, %bb.f, %.thread
  %i.am = phi ptr [ %i.ai, %bb.f ], [ %i.ai, %bb.g ], [ %i.ai, %bb.h ], [ %i.af, %.thread ]
  %i.an = phi ptr [ %i.ah, %bb.f ], [ %i.ah, %bb.g ], [ %i.ah, %bb.h ], [ null, %.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 3
  store ptr %i.an, ptr %9, align 8, !tbaa !162
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !163
  invoke void @_ZN8WasmEdge8Executor8Executor6invokeEPKNS_7Runtime8Instance16FunctionInstanceEN5cxx204spanIKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEELm18446744073709551615EEENS8_IKNS_7ValTypeELm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 8 %8, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull %6, ptr nonnull %i.x, i64 4, ptr noundef nonnull byval(%"struct.cxx20::span.89") align 8 %9)
          to label %bb.i unwind label %.loopexit

bb.i:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EEC2ERKS3_.exit
  %i.as = load i8, ptr %8, align 8, !tbaa !165, !range !34, !noundef !31
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !168 ; 2 uses
  %.sroa.099.0.copyload = load i32, ptr %i.au, align 16 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, i64 12, i1 false), !tbaa.struct !169
  %i.av = icmp slt i64 %i.v, 0
  br i1 %i.av, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  store ptr %i.j, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #21
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.j
  %.not.i.i.i = icmp samesign eq i64 %i.v, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEEC2IPKcvEET_S5_RKS0_.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #22
          to label %.noexc4.i unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i.loopexit ; 3 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.t, i64 %i.v, i1 false), !tbaa !18
  %i.ay = ptrtoint ptr %i.ax to i64
  br label %_ZNSt6vectorIhSaIhEEC2IPKcvEET_S5_RKS0_.exit

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i.loopexit:  ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %lpad.loopexit136 = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.j, ptr %0, align 8
  br label %.body

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i.loopexit.split-lp: ; preds = %bb.k
  %lpad.loopexit.split-lp137 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

_ZNSt6vectorIhSaIhEEC2IPKcvEET_S5_RKS0_.exit:     ; preds = %.noexc4.i, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.094.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.aw, %.noexc4.i ] ; 4 uses
  %.sroa.9.0 = phi i64 [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ay, %.noexc4.i ]
  %i.az = ptrtoint ptr %.sroa.094.0 to i64
  %i.ba = sub i64 %.sroa.9.0, %i.az               ; 2 uses
  %i.bb = zext i32 %.sroa.099.0.copyload to i64
  %i.bc = and i64 %i.v, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @_ZN8WasmEdge7Runtime8Instance14MemoryInstance8setBytesEN5cxx204spanIKhLm18446744073709551615EEEmmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.129") align 4 %10, ptr noundef nonnull align 8 dereferenceable(136) %7, ptr %.sroa.094.0, i64 %i.ba, i64 noundef %i.bb, i64 noundef 0, i64 noundef %i.bc) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %.not.i.i.i20 = icmp eq ptr %.sroa.094.0, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2IPKcvEET_S5_RKS0_.exit
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.094.0, i64 noundef %i.ba) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEEC2IPKcvEET_S5_RKS0_.exit, %bb.l
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !172
  %.not.i = icmp eq ptr %i.i, %i.bd
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  store i32 %.sroa.099.0.copyload, ptr %i.i, align 16
  %.sroa.6.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx102, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6, i64 12, i1 false), !tbaa.struct !169
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.be, ptr %i.d, align 8, !tbaa !173
  %.pre176 = load ptr, ptr %i.e, align 8, !tbaa !172
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE9push_backERKSD_.exit

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bf = ptrtoint ptr %i.i to i64
  %i.bg = ptrtoint ptr %i.j to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 4 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775792
  br i1 %i.bi, label %.invoke224, label %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i

.invoke224:                                       ; preds = %bb.n, %bb.ae, %bb.x, %bb.u, %bb.q
  %.lcssa221.sink = phi ptr [ %i.dl, %bb.x ], [ %i.j, %bb.u ], [ %i.bx, %bb.q ], [ %i.j, %bb.ae ], [ %i.j, %bb.n ]
  store ptr %.lcssa221.sink, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #21
          to label %.cont225 unwind label %.loopexit.split-lp

.cont225:                                         ; preds = %.invoke224
  unreachable

_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.bj = ashr exact i64 %i.bh, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bk, i64 576460752303423487)
  %i.bn = select i1 %i.bl, i64 576460752303423487, i64 %i.bm ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.bn, 0
  call void @llvm.assume(i1 %.not.i.i.i22)
end_hunk_0
