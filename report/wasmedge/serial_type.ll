Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/serial_type?download=true
inline.NumInlined: 1135
inline.NumDeleted: 498
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0
@.str.121 = private unnamed_addr constant [26 x i8] c"non-empty tag result type\00", align 1
@.str.122 = private unnamed_addr constant [32 x i8] c"shared memory must have maximum\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"memory size\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"table size\00", align 1
@.str.125 = private unnamed_addr constant [20 x i8] c"offset out of range\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"missing argument\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"invalid type reference\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"export not found\00", align 1
@.str.130 = private unnamed_addr constant [44 x i8] c"component model (validator) not implemented\00", align 1
@.str.131 = private unnamed_addr constant [28 x i8] c"duplicate name in component\00", align 1
@.str.132 = private unnamed_addr constant [23 x i8] c"invalid component name\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"not a defined type\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"index out of bounds\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"name cannot be empty\00", align 1
@.str.136 = private unnamed_addr constant [31 x i8] c"cannot have more than 32 flags\00", align 1
@.str.137 = private unnamed_addr constant [53 x i8] c"record field name conflicts with previous field name\00", align 1
@.str.138 = private unnamed_addr constant [52 x i8] c"variant case name conflicts with previous case name\00", align 1
@.str.139 = private unnamed_addr constant [44 x i8] c"flag name conflicts with previous flag name\00", align 1
@.str.140 = private unnamed_addr constant [47 x i8] c"enum tag name conflicts with previous tag name\00", align 1
@.str.141 = private unnamed_addr constant [41 x i8] c"variant type must have at least one case\00", align 1
@.str.142 = private unnamed_addr constant [42 x i8] c"ascribed type of export is not compatible\00", align 1
@.str.143 = private unnamed_addr constant [24 x i8] c"missing expected export\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"not a valid export name\00", align 1
@.str.145 = private unnamed_addr constant [24 x i8] c"not a valid extern name\00", align 1
@.str.146 = private unnamed_addr constant [21 x i8] c"module name conflict\00", align 1
@.str.147 = private unnamed_addr constant [25 x i8] c"incompatible import type\00", align 1
@.str.148 = private unnamed_addr constant [15 x i8] c"unknown import\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c"data segment does not fit\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"elements segment does not fit\00", align 1
@.str.151 = private unnamed_addr constant [18 x i8] c"invalid core sort\00", align 1
@.str.152 = private unnamed_addr constant [25 x i8] c"invalid canonical option\00", align 1
@.str.153 = private unnamed_addr constant [30 x i8] c"invalid export in core module\00", align 1
@.str.154 = private unnamed_addr constant [51 x i8] c"invalid argument been used to invoke resource.drop\00", align 1
@.str.155 = private unnamed_addr constant [48 x i8] c"component model (instantiation) not implemented\00", align 1
@.str.156 = private unnamed_addr constant [23 x i8] c"wrong instance address\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c"wrong instance index\00", align 1
@.str.158 = private unnamed_addr constant [26 x i8] c"instruction type mismatch\00", align 1
@.str.159 = private unnamed_addr constant [28 x i8] c"function signature mismatch\00", align 1
@.str.160 = private unnamed_addr constant [23 x i8] c"integer divide by zero\00", align 1
@.str.161 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.162 = private unnamed_addr constant [30 x i8] c"invalid conversion to integer\00", align 1
@.str.163 = private unnamed_addr constant [27 x i8] c"out of bounds table access\00", align 1
@.str.164 = private unnamed_addr constant [28 x i8] c"out of bounds memory access\00", align 1
@.str.165 = private unnamed_addr constant [27 x i8] c"out of bounds array access\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.167 = private unnamed_addr constant [22 x i8] c"uninitialized element\00", align 1
@.str.168 = private unnamed_addr constant [18 x i8] c"undefined element\00", align 1
@.str.169 = private unnamed_addr constant [28 x i8] c"indirect call type mismatch\00", align 1
@.str.170 = private unnamed_addr constant [21 x i8] c"host function failed\00", align 1
@.str.171 = private unnamed_addr constant [24 x i8] c"reference type mismatch\00", align 1
@.str.172 = private unnamed_addr constant [17 x i8] c"unaligned atomic\00", align 1
@.str.173 = private unnamed_addr constant [23 x i8] c"expected shared memory\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"null reference\00", align 1
@.str.175 = private unnamed_addr constant [24 x i8] c"null function reference\00", align 1
@.str.176 = private unnamed_addr constant [25 x i8] c"null structure reference\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c"null array reference\00", align 1
@.str.178 = private unnamed_addr constant [19 x i8] c"null i31 reference\00", align 1
@.str.179 = private unnamed_addr constant [25 x i8] c"null exception reference\00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"cast failure\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c"uncaught exception\00", align 1
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.182 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.184 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@.str.186 = private unnamed_addr constant [15 x i8] c"negative width\00", align 1
@.str.187 = private unnamed_addr constant [21 x i8] c"width is not integer\00", align 1
@.str.188 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.189 = private unnamed_addr constant [19 x i8] c"negative precision\00", align 1
@.str.190 = private unnamed_addr constant [25 x i8] c"precision is not integer\00", align 1
@_ZN8WasmEdgeL11ProposalStrE = internal unnamed_addr constant %"class.WasmEdge::DenseEnumMap.86" { %"struct.std::array.87" { [18 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 32, ptr @.str.193 }, %"class.std::basic_string_view" { i64 37, ptr @.str.194 }, %"class.std::basic_string_view" { i64 24, ptr @.str.195 }, %"class.std::basic_string_view" { i64 11, ptr @.str.196 }, %"class.std::basic_string_view" { i64 22, ptr @.str.197 }, %"class.std::basic_string_view" { i64 15, ptr @.str.198 }, %"class.std::basic_string_view" { i64 16, ptr @.str.199 }, %"class.std::basic_string_view" { i64 9, ptr @.str.200 }, %"class.std::basic_string_view" { i64 26, ptr @.str.201 }, %"class.std::basic_string_view" { i64 25, ptr @.str.202 }, %"class.std::basic_string_view" { i64 18, ptr @.str.203 }, %"class.std::basic_string_view" { i64 17, ptr @.str.204 }, %"class.std::basic_string_view" { i64 12, ptr @.str.205 }, %"class.std::basic_string_view" { i64 43, ptr @.str.206 }, %"class.std::basic_string_view" { i64 18, ptr @.str.207 }, %"class.std::basic_string_view" { i64 8, ptr @.str.208 }, %"class.std::basic_string_view" { i64 7, ptr @.str.209 }, %"class.std::basic_string_view" { i64 15, ptr @.str.210 }] } }, align 8
@.str.191 = private unnamed_addr constant [61 x i8] c"    This instruction or syntax requires enabling {} proposal\00", align 1
@.str.192 = private unnamed_addr constant [36 x i8] c"    Unknown proposal, Code 0x{:08x}\00", align 1
@.str.193 = private unnamed_addr constant [33 x i8] c"Import/Export of Mutable Globals\00", align 1
@.str.194 = private unnamed_addr constant [38 x i8] c"Non-trapping float-to-int Conversions\00", align 1
@.str.195 = private unnamed_addr constant [25 x i8] c"Sign-extension Operators\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"Multi-value\00", align 1
@.str.197 = private unnamed_addr constant [23 x i8] c"Bulk Memory Operations\00", align 1
@.str.198 = private unnamed_addr constant [16 x i8] c"Reference Types\00", align 1
@.str.199 = private unnamed_addr constant [17 x i8] c"Fixed-width SIMD\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"Tail Call\00", align 1
@.str.201 = private unnamed_addr constant [27 x i8] c"Extended Const Expressions\00", align 1
@.str.202 = private unnamed_addr constant [26 x i8] c"Typed Function References\00", align 1
@.str.203 = private unnamed_addr constant [19 x i8] c"Garbage Collection\00", align 1
@.str.204 = private unnamed_addr constant [18 x i8] c"Multiple Memories\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"Relaxed SIMD\00", align 1
@.str.206 = private unnamed_addr constant [44 x i8] c"Custom Annotation Syntax in the Text Format\00", align 1
@.str.207 = private unnamed_addr constant [19 x i8] c"Exception Handling\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"Memory64\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"Threads\00", align 1
@.str.210 = private unnamed_addr constant [16 x i8] c"Component Model\00", align 1
@.str.211 = private unnamed_addr constant [20 x i8] c"    At AST node: {}\00", align 1
@_ZN8WasmEdgeL14ASTNodeAttrStrE = internal unnamed_addr constant %"class.WasmEdge::DenseEnumMap.96" { %"struct.std::array.97" { [88 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 6, ptr @.str.212 }, %"class.std::basic_string_view" { i64 14, ptr @.str.213 }, %"class.std::basic_string_view" { i64 12, ptr @.str.214 }, %"class.std::basic_string_view" { i64 14, ptr @.str.215 }, %"class.std::basic_string_view" { i64 16, ptr @.str.216 }, %"class.std::basic_string_view" { i64 13, ptr @.str.217 }, %"class.std::basic_string_view" { i64 14, ptr @.str.218 }, %"class.std::basic_string_view" { i64 14, ptr @.str.219 }, %"class.std::basic_string_view" { i64 14, ptr @.str.220 }, %"class.std::basic_string_view" { i64 13, ptr @.str.221 }, %"class.std::basic_string_view" { i64 15, ptr @.str.222 }, %"class.std::basic_string_view" { i64 12, ptr @.str.223 }, %"class.std::basic_string_view" { i64 12, ptr @.str.224 }, %"class.std::basic_string_view" { i64 18, ptr @.str.225 }, %"class.std::basic_string_view" { i64 11, ptr @.str.226 }, %"class.std::basic_string_view" { i64 18, ptr @.str.227 }, %"class.std::basic_string_view" { i64 18, ptr @.str.228 }, %"class.std::basic_string_view" { i64 13, ptr @.str.229 }, %"class.std::basic_string_view" { i64 14, ptr @.str.230 }, %"class.std::basic_string_view" { i64 15, ptr @.str.231 }, %"class.std::basic_string_view" { i64 12, ptr @.str.232 }, %"class.std::basic_string_view" { i64 12, ptr @.str.233 }, %"class.std::basic_string_view" { i64 14, ptr @.str.234 }, %"class.std::basic_string_view" { i64 8, ptr @.str.120 }, %"class.std::basic_string_view" { i64 5, ptr @.str.235 }, %"class.std::basic_string_view" { i64 13, ptr @.str.236 }, %"class.std::basic_string_view" { i64 11, ptr @.str.237 }, %"class.std::basic_string_view" { i64 10, ptr @.str.238 }, %"class.std::basic_string_view" { i64 11, ptr @.str.239 }, %"class.std::basic_string_view" { i64 8, ptr @.str.240 }, %"class.std::basic_string_view" { i64 10, ptr @.str.241 }, %"class.std::basic_string_view" { i64 11, ptr @.str.242 }, %"class.std::basic_string_view" { i64 11, ptr @.str.243 }, %"class.std::basic_string_view" { i64 22, ptr @.str.244 }, %"class.std::basic_string_view" { i64 29, ptr @.str.245 }, %"class.std::basic_string_view" { i64 31, ptr @.str.246 }, %"class.std::basic_string_view" { i64 27, ptr @.str.247 }, %"class.std::basic_string_view" { i64 34, ptr @.str.248 }, %"class.std::basic_string_view" { i64 26, ptr @.str.249 }, %"class.std::basic_string_view" { i64 23, ptr @.str.250 }, %"class.std::basic_string_view" { i64 22, ptr @.str.251 }, %"class.std::basic_string_view" { i64 27, ptr @.str.252 }, %"class.std::basic_string_view" { i64 23, ptr @.str.253 }, %"class.std::basic_string_view" { i64 24, ptr @.str.254 }, %"class.std::basic_string_view" { i64 24, ptr @.str.255 }, %"class.std::basic_string_view" { i64 28, ptr @.str.256 }, %"class.std::basic_string_view" { i64 27, ptr @.str.257 }, %"class.std::basic_string_view" { i64 27, ptr @.str.258 }, %"class.std::basic_string_view" { i64 23, ptr @.str.259 }, %"class.std::basic_string_view" { i64 22, ptr @.str.260 }, %"class.std::basic_string_view" { i64 22, ptr @.str.261 }, %"class.std::basic_string_view" { i64 14, ptr @.str.262 }, %"class.std::basic_string_view" { i64 15, ptr @.str.263 }, %"class.std::basic_string_view" { i64 22, ptr @.str.264 }, %"class.std::basic_string_view" { i64 17, ptr @.str.265 }, %"class.std::basic_string_view" { i64 20, ptr @.str.266 }, %"class.std::basic_string_view" { i64 18, ptr @.str.267 }, %"class.std::basic_string_view" { i64 23, ptr @.str.268 }, %"class.std::basic_string_view" { i64 22, ptr @.str.269 }, %"class.std::basic_string_view" { i64 22, ptr @.str.270 }, %"class.std::basic_string_view" { i64 15, ptr @.str.271 }, %"class.std::basic_string_view" { i64 19, ptr @.str.272 }, %"class.std::basic_string_view" { i64 26, ptr @.str.273 }, %"class.std::basic_string_view" { i64 16, ptr @.str.274 }, %"class.std::basic_string_view" { i64 16, ptr @.str.275 }, %"class.std::basic_string_view" { i64 25, ptr @.str.276 }, %"class.std::basic_string_view" { i64 21, ptr @.str.277 }, %"class.std::basic_string_view" { i64 25, ptr @.str.278 }, %"class.std::basic_string_view" { i64 25, ptr @.str.279 }, %"class.std::basic_string_view" { i64 25, ptr @.str.280 }, %"class.std::basic_string_view" { i64 20, ptr @.str.281 }, %"class.std::basic_string_view" { i64 20, ptr @.str.282 }, %"class.std::basic_string_view" { i64 22, ptr @.str.283 }, %"class.std::basic_string_view" { i64 23, ptr @.str.284 }, %"class.std::basic_string_view" { i64 21, ptr @.str.285 }, %"class.std::basic_string_view" { i64 22, ptr @.str.286 }, %"class.std::basic_string_view" { i64 19, ptr @.str.287 }, %"class.std::basic_string_view" { i64 20, ptr @.str.288 }, %"class.std::basic_string_view" { i64 20, ptr @.str.289 }, %"class.std::basic_string_view" { i64 19, ptr @.str.290 }, %"class.std::basic_string_view" { i64 21, ptr @.str.291 }, %"class.std::basic_string_view" { i64 21, ptr @.str.292 }, %"class.std::basic_string_view" { i64 18, ptr @.str.293 }, %"class.std::basic_string_view" { i64 21, ptr @.str.294 }, %"class.std::basic_string_view" { i64 21, ptr @.str.295 }, %"class.std::basic_string_view" { i64 21, ptr @.str.296 }, %"class.std::basic_string_view" { i64 22, ptr @.str.297 }, %"class.std::basic_string_view" { i64 19, ptr @.str.298 }] } }, align 8
@.str.212 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.213 = private unnamed_addr constant [15 x i8] c"custom section\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"type section\00", align 1
@.str.215 = private unnamed_addr constant [15 x i8] c"import section\00", align 1
@.str.216 = private unnamed_addr constant [17 x i8] c"function section\00", align 1
@.str.217 = private unnamed_addr constant [14 x i8] c"table section\00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"memory section\00", align 1
@.str.219 = private unnamed_addr constant [15 x i8] c"global section\00", align 1
@.str.220 = private unnamed_addr constant [15 x i8] c"export section\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"start section\00", align 1
@.str.222 = private unnamed_addr constant [16 x i8] c"element section\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"code section\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"data section\00", align 1
@.str.225 = private unnamed_addr constant [19 x i8] c"data count section\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"tag section\00", align 1
@.str.227 = private unnamed_addr constant [19 x i8] c"import description\00", align 1
@.str.228 = private unnamed_addr constant [19 x i8] c"export description\00", align 1
@.str.229 = private unnamed_addr constant [14 x i8] c"table segment\00", align 1
@.str.230 = private unnamed_addr constant [15 x i8] c"global segment\00", align 1
@.str.231 = private unnamed_addr constant [16 x i8] c"element segment\00", align 1
@.str.232 = private unnamed_addr constant [13 x i8] c"code segment\00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"data segment\00", align 1
@.str.234 = private unnamed_addr constant [15 x i8] c"recursive type\00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.236 = private unnamed_addr constant [14 x i8] c"function type\00", align 1
@.str.237 = private unnamed_addr constant [12 x i8] c"memory type\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"table type\00", align 1
@.str.239 = private unnamed_addr constant [12 x i8] c"global type\00", align 1
@.str.240 = private unnamed_addr constant [9 x i8] c"tag type\00", align 1
@.str.241 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.242 = private unnamed_addr constant [12 x i8] c"instruction\00", align 1
@.str.243 = private unnamed_addr constant [12 x i8] c"aot section\00", align 1
@.str.244 = private unnamed_addr constant [23 x i8] c"component model module\00", align 1
@.str.245 = private unnamed_addr constant [30 x i8] c"component core:module section\00", align 1
@.str.246 = private unnamed_addr constant [32 x i8] c"component core:instance section\00", align 1
@.str.247 = private unnamed_addr constant [28 x i8] c"component core:type section\00", align 1
@.str.248 = private unnamed_addr constant [35 x i8] c"component nested-component section\00", align 1
@.str.249 = private unnamed_addr constant [27 x i8] c"component instance section\00", align 1
@.str.250 = private unnamed_addr constant [24 x i8] c"component alias section\00", align 1
@.str.251 = private unnamed_addr constant [23 x i8] c"component type section\00", align 1
@.str.252 = private unnamed_addr constant [28 x i8] c"component canonical section\00", align 1
@.str.253 = private unnamed_addr constant [24 x i8] c"component start section\00", align 1
@.str.254 = private unnamed_addr constant [25 x i8] c"component import section\00", align 1
@.str.255 = private unnamed_addr constant [25 x i8] c"component export section\00", align 1
@.str.256 = private unnamed_addr constant [29 x i8] c"component core:instance expr\00", align 1
@.str.257 = private unnamed_addr constant [28 x i8] c"component core:instance arg\00", align 1
@.str.258 = private unnamed_addr constant [28 x i8] c"component core:inlineexport\00", align 1
@.str.259 = private unnamed_addr constant [24 x i8] c"component instance expr\00", align 1
@.str.260 = private unnamed_addr constant [23 x i8] c"component instance arg\00", align 1
@.str.261 = private unnamed_addr constant [23 x i8] c"component inlineexport\00", align 1
@.str.262 = private unnamed_addr constant [15 x i8] c"component sort\00", align 1
@.str.263 = private unnamed_addr constant [16 x i8] c"component alias\00", align 1
@.str.264 = private unnamed_addr constant [23 x i8] c"component core:deftype\00", align 1
@.str.265 = private unnamed_addr constant [18 x i8] c"component deftype\00", align 1
@.str.266 = private unnamed_addr constant [21 x i8] c"component defvaltype\00", align 1
@.str.267 = private unnamed_addr constant [19 x i8] c"component functype\00", align 1
@.str.268 = private unnamed_addr constant [24 x i8] c"component componenttype\00", align 1
@.str.269 = private unnamed_addr constant [23 x i8] c"component instancetype\00", align 1
@.str.270 = private unnamed_addr constant [23 x i8] c"component resourcetype\00", align 1
@.str.271 = private unnamed_addr constant [16 x i8] c"component start\00", align 1
@.str.272 = private unnamed_addr constant [20 x i8] c"component canonical\00", align 1
@.str.273 = private unnamed_addr constant [27 x i8] c"component canonical option\00", align 1
@.str.274 = private unnamed_addr constant [17 x i8] c"component import\00", align 1
@.str.275 = private unnamed_addr constant [17 x i8] c"component export\00", align 1
@.str.276 = private unnamed_addr constant [26 x i8] c"component core:importdesc\00", align 1
@.str.277 = private unnamed_addr constant [22 x i8] c"component extern desc\00", align 1
@.str.278 = private unnamed_addr constant [26 x i8] c"component core:importdecl\00", align 1
@.str.279 = private unnamed_addr constant [26 x i8] c"component core:exportdecl\00", align 1
@.str.280 = private unnamed_addr constant [26 x i8] c"component core:moduledecl\00", align 1
@.str.281 = private unnamed_addr constant [21 x i8] c"component importdecl\00", align 1
@.str.282 = private unnamed_addr constant [21 x i8] c"component exportdecl\00", align 1
@.str.283 = private unnamed_addr constant [23 x i8] c"component instancedecl\00", align 1
@.str.284 = private unnamed_addr constant [24 x i8] c"component componentdecl\00", align 1
@.str.285 = private unnamed_addr constant [22 x i8] c"component record type\00", align 1
@.str.286 = private unnamed_addr constant [23 x i8] c"component variant type\00", align 1
@.str.287 = private unnamed_addr constant [20 x i8] c"component list type\00", align 1
@.str.288 = private unnamed_addr constant [21 x i8] c"component tuple type\00", align 1
@.str.289 = private unnamed_addr constant [21 x i8] c"component flags type\00", align 1
@.str.290 = private unnamed_addr constant [20 x i8] c"component enum type\00", align 1
@.str.291 = private unnamed_addr constant [22 x i8] c"component option type\00", align 1
@.str.292 = private unnamed_addr constant [22 x i8] c"component result type\00", align 1
@.str.293 = private unnamed_addr constant [19 x i8] c"component own type\00", align 1
@.str.294 = private unnamed_addr constant [22 x i8] c"component borrow type\00", align 1
@.str.295 = private unnamed_addr constant [22 x i8] c"component stream type\00", align 1
@.str.296 = private unnamed_addr constant [22 x i8] c"component future type\00", align 1
@.str.297 = private unnamed_addr constant [23 x i8] c"component labelvaltype\00", align 1
@.str.298 = private unnamed_addr constant [20 x i8] c"component valuetype\00", align 1
@.str.299 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.300 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8WasmEdge6Loader10Serializer17serializeHeapTypeERKNS_7ValTypeENS_11ASTNodeAttrERSt6vectorIhSaIhEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, i8 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %14 = alloca %"struct.WasmEdge::ErrInfo::InfoProposal", align 1 ; 4 uses
  %15 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  %16 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %17 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %18 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %19 = alloca %"struct.WasmEdge::ErrInfo::InfoProposal", align 1 ; 4 uses
  %20 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %21 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %22 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %23 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %24 = alloca %"struct.WasmEdge::ErrInfo::InfoProposal", align 1 ; 4 uses
  %25 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %26 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %27 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %28 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %29 = alloca %"struct.WasmEdge::ErrInfo::InfoProposal", align 1 ; 4 uses
  %30 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %31 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %32 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %33 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %34 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %35 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %36 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16    ; 7 uses
  switch i8 %i.c, label %bb.ay [
    i8 111, label %bb.b
    i8 112, label %bb.j
    i8 115, label %bb.o
    i8 114, label %bb.o
    i8 113, label %bb.o
    i8 110, label %bb.o
    i8 109, label %bb.o
    i8 108, label %bb.o
    i8 107, label %bb.o
    i8 106, label %bb.o
    i8 0, label %bb.ab
    i8 116, label %bb.al
    i8 105, label %bb.al
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !20, !nonnull !21, !align !22 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.e = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %i.d) #18
  switch i32 %i.e, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #19
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #20
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %i.j = and i64 %i.i, 32
  %.not75 = icmp eq i64 %i.j, 0
  %i.k = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %i.d) #18 ; 0 uses
  br i1 %.not75, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit
  store i32 274, ptr %31, align 4, !tbaa !16
  %i.l = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i16 unwind label %bb.i, !noalias !127

.noexc.i16:                                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %28), !noalias !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false), !noalias !127
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %28, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %31)
          to label %bb.g unwind label %bb.i, !noalias !127

bb.g:                                             ; preds = %.noexc.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %28), !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18, !noalias !127
  store i8 5, ptr %29, align 1, !tbaa !28, !noalias !127
  %i.m = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i unwind label %bb.i, !noalias !127

.noexc3.i:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %27), !noalias !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false), !noalias !127
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoProposalEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %27, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.h unwind label %bb.i, !noalias !127

bb.h:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18, !noalias !127
  store i8 %3, ptr %30, align 1, !tbaa !31, !noalias !127
  %i.n = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i unwind label %bb.i, !noalias !127

.noexc5.i:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %26), !noalias !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false), !noalias !127
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.n, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %26, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit unwind label %bb.i, !noalias !127

bb.i:                                             ; preds = %.noexc5.i, %bb.h, %.noexc3.i, %bb.g, %.noexc.i16, %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #20, !noalias !127
  unreachable

_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit: ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18, !noalias !127
  %i.q = load i32, ptr %31, align 4, !tbaa !16, !noalias !128
  store i8 0, ptr %0, align 4, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !16
  br label %bb.bi

bb.j:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 %i.c, ptr %i.t, align 1, !tbaa !16
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.s, align 8, !tbaa !37
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.l:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %4, align 8, !tbaa !39     ; 4 uses
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 8 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775807
  br i1 %i.ac, label %.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ad = add i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 9223372036854775807)
  %i.ag = select i1 %i.ae, i64 9223372036854775807, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21
          to label %.noexc17 unwind label %bb.bj  ; 4 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab ; 2 uses
  store i8 %i.c, ptr %i.ai, align 1, !tbaa !16
  %i.aj = icmp sgt i64 %i.ab, 0
  br i1 %i.aj, label %bb.m, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.m:                                             ; preds = %.noexc17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.m, %.noexc17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ah, ptr %4, align 8, !tbaa !39
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store ptr %i.al, ptr %i.u, align 8, !tbaa !38
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.k
  store i64 1, ptr %0, align 4
  br label %bb.bi

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.am = load ptr, ptr %1, align 8, !tbaa !20, !nonnull !21, !align !22 ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %i.an = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %i.am) #18
  switch i32 %i.an, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit19 [
    i32 11, label %bb.p
    i32 35, label %bb.q
  ]
end_hunk_0
begin_hunk_1_@_ZNK8WasmEdge6Loader10Serializer17serializeHeapTypeERKNS_7ValTypeENS_11ASTNodeAttrERSt6vectorIhSaIhEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false), !noalias !129
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoProposalEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.av, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %22, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.u unwind label %bb.v, !noalias !129

bb.u:                                             ; preds = %.noexc3.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %22), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18, !noalias !129
  store i8 %3, ptr %25, align 1, !tbaa !31, !noalias !129
  %i.aw = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i22 unwind label %bb.v, !noalias !129

.noexc5.i22:                                      ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %21), !noalias !129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !noalias !129
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aw, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %21, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit23 unwind label %bb.v, !noalias !129

bb.v:                                             ; preds = %.noexc5.i22, %bb.u, %.noexc3.i21, %bb.t, %.noexc.i20, %bb.s
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #20, !noalias !129
  unreachable

_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit23: ; preds = %.noexc5.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %21), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18, !noalias !129
  %i.az = load i32, ptr %32, align 4, !tbaa !16, !noalias !130
  store i8 0, ptr %0, align 4, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !16
  br label %bb.bi

bb.w:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit19
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !38
  %.not.i.i24 = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i.i24, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 %i.c, ptr %i.bc, align 1, !tbaa !16
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !37
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit33

bb.y:                                             ; preds = %bb.w
  %i.bh = load ptr, ptr %4, align 8, !tbaa !39    ; 4 uses
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 8 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775807
  br i1 %i.bl, label %.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i25

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i25: ; preds = %bb.y
  %.sroa.speculated.i.i.i.i26 = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bm = add i64 %.sroa.speculated.i.i.i.i26, %i.bk ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bk
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 9223372036854775807)
  %i.bp = select i1 %i.bn, i64 9223372036854775807, i64 %i.bo ; 3 uses
  %.not.i.i.i.i27 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i27)
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #21
          to label %.noexc32 unwind label %bb.bj  ; 4 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i25
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk ; 2 uses
  store i8 %i.c, ptr %i.br, align 1, !tbaa !16
  %i.bs = icmp sgt i64 %i.bk, 0
  br i1 %i.bs, label %bb.z, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i28

bb.z:                                             ; preds = %.noexc32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.bh, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i28

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i28: ; preds = %bb.z, %.noexc32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %.not.i17.i.i.i29 = icmp eq ptr %i.bh, null
  br i1 %.not.i17.i.i.i29, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i30, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bk) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i30

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i30: ; preds = %bb.aa, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i28
  store ptr %i.bq, ptr %4, align 8, !tbaa !39
  store ptr %i.bt, ptr %i.bb, align 8, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !38
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit33

_ZNSt6vectorIhSaIhEE9push_backEOh.exit33:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i30, %bb.x
  store i64 1, ptr %0, align 4
  br label %bb.bi

bb.ab:                                            ; preds = %bb.a
  %i.bv = load ptr, ptr %1, align 8, !tbaa !20, !nonnull !21, !align !22 ; 3 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %i.bw = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %i.bv) #18
  switch i32 %i.bw, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit35 [
    i32 11, label %bb.ac
    i32 35, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #19
          to label %.noexc.i34 unwind label %bb.ae

.noexc.i34:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  tail call void @__clang_call_terminate(ptr %i.by) #20
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit35: ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !25
  %i.cb = and i64 %i.ca, 512
  %.not73 = icmp eq i64 %i.cb, 0
  %i.cc = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %i.bv) #18 ; 0 uses
  br i1 %.not73, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit35
  store i32 275, ptr %33, align 4, !tbaa !16
  %i.cd = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i36 unwind label %bb.ai, !noalias !131

.noexc.i36:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !noalias !131
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cd, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %18, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %33)
          to label %bb.ag unwind label %bb.ai, !noalias !131

bb.ag:                                            ; preds = %.noexc.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18, !noalias !131
  store i8 9, ptr %19, align 1, !tbaa !28, !noalias !131
  %i.ce = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i37 unwind label %bb.ai, !noalias !131

.noexc3.i37:                                      ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !noalias !131
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoProposalEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ce, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %17, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.ah unwind label %bb.ai, !noalias !131

bb.ah:                                            ; preds = %.noexc3.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18, !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18, !noalias !131
  store i8 %3, ptr %20, align 1, !tbaa !31, !noalias !131
  %i.cf = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i38 unwind label %bb.ai, !noalias !131

.noexc5.i38:                                      ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !noalias !131
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cf, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %16, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit39 unwind label %bb.ai, !noalias !131

bb.ai:                                            ; preds = %.noexc5.i38, %bb.ah, %.noexc3.i37, %bb.ag, %.noexc.i36, %bb.af
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #20, !noalias !131
  unreachable

_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit39: ; preds = %.noexc5.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !131
  %i.ci = load i32, ptr %33, align 4, !tbaa !16, !noalias !132
  store i8 0, ptr %0, align 4, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !16
  br label %bb.bi

bb.aj:                                            ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit35
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.cm = trunc i32 %i.cl to i8                   ; 2 uses
  %i.cn = lshr i32 %i.cl, 7                       ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  %.not.i.i4077 = icmp ult i32 %i.cl, 64
  %or.cond.i.i78 = and i1 %.not.i.i4077, %i.co
  br i1 %or.cond.i.i78, label %.thread.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aj
  %i.cp = zext nneg i32 %i.cn to i64
  br label %.lr.ph

.thread.i.i.loopexit:                             ; preds = %.lr.ph
  %37 = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.i.i.loopexit, %bb.aj
  %.01520.i.i.lcssa = phi i32 [ 0, %bb.aj ], [ %37, %.thread.i.i.loopexit ] ; 2 uses
  %.lcssa = phi i8 [ %i.cm, %bb.aj ], [ %i.db, %.thread.i.i.loopexit ]
  %38 = zext i32 %.01520.i.i.lcssa to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %38
  store i8 %.lcssa, ptr %i.cq, align 1, !tbaa !16
  %39 = add nuw i32 %.01520.i.i.lcssa, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !40
  %40 = zext i32 %39 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %40
  %i.cu = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 %i.cx
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cy, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ct)
          to label %_ZNK8WasmEdge6Loader10Serializer12serializeS33ElRSt6vectorIhSaIhEE.exit unwind label %bb.ak

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.cz = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.i.i, %.lr.ph ] ; 2 uses
  %41 = phi i64 [ %i.cp, %.lr.ph.preheader ], [ %i.dc, %.lr.ph ] ; 3 uses
  %42 = phi i8 [ %i.cm, %.lr.ph.preheader ], [ %i.db, %.lr.ph ]
  %spec.select19.i.i = or i8 %42, -128
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cz
  store i8 %spec.select19.i.i, ptr %i.da, align 1, !tbaa !16
  %indvars.iv.next.i.i = add nuw i64 %i.cz, 1     ; 2 uses
  %i.db = trunc i64 %41 to i8                     ; 2 uses
  %i.dc = lshr i64 %41, 7                         ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  %.not.i.i40 = icmp samesign ult i64 %41, 64
  %or.cond.i.i = and i1 %.not.i.i40, %i.dd
  br i1 %or.cond.i.i, label %.thread.i.i.loopexit, label %.lr.ph, !llvm.loop !114

bb.ak:                                            ; preds = %.thread.i.i
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #20
  unreachable

_ZNK8WasmEdge6Loader10Serializer12serializeS33ElRSt6vectorIhSaIhEE.exit: ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i64 1, ptr %0, align 4
  br label %bb.bi

bb.al:                                            ; preds = %bb.a, %bb.a
  %i.dg = load ptr, ptr %1, align 8, !tbaa !20, !nonnull !21, !align !22 ; 3 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %bb.al
  %i.dh = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %i.dg) #18
  switch i32 %i.dh, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit42 [
    i32 11, label %bb.am
    i32 35, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #19
          to label %.noexc.i41 unwind label %bb.ao

.noexc.i41:                                       ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  tail call void @__clang_call_terminate(ptr %i.dj) #20
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit42: ; preds = %bb.am
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !25
  %i.dm = and i64 %i.dl, 16384
  %.not = icmp eq i64 %i.dm, 0
  %i.dn = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %i.dg) #18 ; 0 uses
  br i1 %.not, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit42
  store i32 275, ptr %34, align 4, !tbaa !16
  %i.do = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i43 unwind label %bb.as, !noalias !133

.noexc.i43:                                       ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !noalias !133
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.do, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %13, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %34)
          to label %bb.aq unwind label %bb.as, !noalias !133

bb.aq:                                            ; preds = %.noexc.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18, !noalias !133
  store i8 14, ptr %14, align 1, !tbaa !28, !noalias !133
  %i.dp = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i44 unwind label %bb.as, !noalias !133

.noexc3.i44:                                      ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !133
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoProposalEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dp, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ar unwind label %bb.as, !noalias !133

bb.ar:                                            ; preds = %.noexc3.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18, !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18, !noalias !133
  store i8 %3, ptr %15, align 1, !tbaa !31, !noalias !133
  %i.dq = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i45 unwind label %bb.as, !noalias !133

.noexc5.i45:                                      ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !133
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit46 unwind label %bb.as, !noalias !133

bb.as:                                            ; preds = %.noexc5.i45, %bb.ar, %.noexc3.i44, %bb.aq, %.noexc.i43, %bb.ap
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #20, !noalias !133
  unreachable

_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit46: ; preds = %.noexc5.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !133
  %i.dt = load i32, ptr %34, align 4, !tbaa !16, !noalias !134
  store i8 0, ptr %0, align 4, !tbaa !34
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !16
  br label %bb.bi

bb.at:                                            ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit42
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !37 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !38
  %.not.i.i47 = icmp eq ptr %i.dw, %i.dy
  br i1 %.not.i.i47, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 %i.c, ptr %i.dw, align 1, !tbaa !16
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !37
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store ptr %i.ea, ptr %i.dv, align 8, !tbaa !37
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit56

bb.av:                                            ; preds = %bb.at
  %i.eb = load ptr, ptr %4, align 8, !tbaa !39    ; 4 uses
  %i.ec = ptrtoint ptr %i.dw to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed                    ; 8 uses
  %i.ef = icmp eq i64 %i.ee, 9223372036854775807
  br i1 %i.ef, label %.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i48

.invoke:                                          ; preds = %bb.av, %bb.y, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.300) #19
          to label %.cont unwind label %bb.bj

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i48: ; preds = %bb.av
  %.sroa.speculated.i.i.i.i49 = tail call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.eg = add i64 %.sroa.speculated.i.i.i.i49, %i.ee ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ee
  %i.ei = tail call i64 @llvm.umin.i64(i64 %i.eg, i64 9223372036854775807)
  %i.ej = select i1 %i.eh, i64 9223372036854775807, i64 %i.ei ; 3 uses
  %.not.i.i.i.i50 = icmp ne i64 %i.ej, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i50)
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #21
          to label %.noexc55 unwind label %bb.bj  ; 4 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i48
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ee ; 2 uses
  store i8 %i.c, ptr %i.el, align 1, !tbaa !16
  %i.em = icmp sgt i64 %i.ee, 0
  br i1 %i.em, label %bb.aw, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i51

bb.aw:                                            ; preds = %.noexc55
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr align 1 %i.eb, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i51

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i51: ; preds = %bb.aw, %.noexc55
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %.not.i17.i.i.i52 = icmp eq ptr %i.eb, null
  br i1 %.not.i17.i.i.i52, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i53, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i51
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ee) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i53

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i53: ; preds = %bb.ax, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i51
  store ptr %i.ek, ptr %4, align 8, !tbaa !39
  store ptr %i.en, ptr %i.dv, align 8, !tbaa !37
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej
  store ptr %i.eo, ptr %i.dx, align 8, !tbaa !38
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit56

_ZNSt6vectorIhSaIhEE9push_backEOh.exit56:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i53, %bb.au
  store i64 1, ptr %0, align 4
  br label %bb.bi

bb.ay:                                            ; preds = %bb.a
  %i.ep = load ptr, ptr %1, align 8, !tbaa !20, !nonnull !21, !align !22 ; 3 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %i.eq = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %i.ep) #18
  switch i32 %i.eq, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit58 [
    i32 11, label %bb.az
    i32 35, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #19
          to label %.noexc.i57 unwind label %bb.bb

.noexc.i57:                                       ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  tail call void @__clang_call_terminate(ptr %i.es) #20
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit58: ; preds = %bb.az
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !25
  %i.ev = and i64 %i.eu, 32
end_hunk_1
