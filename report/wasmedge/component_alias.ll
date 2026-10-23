Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/component_alias?download=true
inline.NumInlined: 1046
inline.NumDeleted: 587
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0
@.str.52 = private unnamed_addr constant [28 x i8] c"data count section required\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"malformed import kind\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"malformed export kind\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"zero byte expected\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"malformed mutability\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"too many locals\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"malformed value type\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"malformed element type\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"malformed reference type\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"malformed UTF-8 encoding\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"integer too large\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"integer representation too long\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"illegal opcode\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"END opcode expected\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"invalid wasm grammar\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"intrinsics table not found\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"malformed table\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"malformed memop flags\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"malformed limits flags\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"malformed catch flags\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"malformed sort\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"malformed alias target\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"malformed core instance\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"malformed instance\00", align 1
@.str.76 = private unnamed_addr constant [23 x i8] c"malformed defined type\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"malformed module type\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"malformed record type\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"malformed variant type\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"malformed tuple type\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"malformed flags type\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"malformed canonical\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"unknown canonical option\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"malformed name\00", align 1
@.str.85 = private unnamed_addr constant [41 x i8] c"component model (loader) not implemented\00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"atomic alignment must be natural\00", align 1
@.str.87 = private unnamed_addr constant [42 x i8] c"alignment must not be larger than natural\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"type mismatch\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"unknown label\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"unknown local\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"unknown field\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"unknown type\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"unknown function\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"unknown table\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"unknown memory\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"unknown global\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"unknown tag\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"unknown elem segment\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"unknown data segment\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"undeclared function reference\00", align 1
@.str.101 = private unnamed_addr constant [29 x i8] c"constant expression required\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"duplicate export name\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"immutable global\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"immutable field\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"immutable array\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c"invalid result arity\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"multiple tables\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"multiple memories\00", align 1
@.str.109 = private unnamed_addr constant [46 x i8] c"size minimum must not be greater than maximum\00", align 1
@.str.110 = private unnamed_addr constant [47 x i8] c"memory size must be at most 65536 pages (4GiB)\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"start function\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"invalid lane index\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"uninitialized local\00", align 1
@.str.114 = private unnamed_addr constant [30 x i8] c"field type is not defaultable\00", align 1
@.str.115 = private unnamed_addr constant [30 x i8] c"array type is not defaultable\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"field is packed\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"array is packed\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"field is unpacked\00", align 1
@.str.119 = private unnamed_addr constant [18 x i8] c"array is unpacked\00", align 1
@.str.120 = private unnamed_addr constant [20 x i8] c"invalid br ref type\00", align 1
@.str.121 = private unnamed_addr constant [25 x i8] c"array types do not match\00", align 1
@.str.122 = private unnamed_addr constant [36 x i8] c"array type is not numeric or vector\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"sub type\00", align 1
@.str.124 = private unnamed_addr constant [26 x i8] c"non-empty tag result type\00", align 1
@.str.125 = private unnamed_addr constant [32 x i8] c"shared memory must have maximum\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"memory size\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"table size\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"offset out of range\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"missing argument\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@.str.131 = private unnamed_addr constant [23 x i8] c"invalid type reference\00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c"export not found\00", align 1
@.str.133 = private unnamed_addr constant [44 x i8] c"component model (validator) not implemented\00", align 1
@.str.134 = private unnamed_addr constant [28 x i8] c"duplicate name in component\00", align 1
@.str.135 = private unnamed_addr constant [23 x i8] c"invalid component name\00", align 1
@.str.136 = private unnamed_addr constant [19 x i8] c"not a defined type\00", align 1
@.str.137 = private unnamed_addr constant [20 x i8] c"index out of bounds\00", align 1
@.str.138 = private unnamed_addr constant [21 x i8] c"name cannot be empty\00", align 1
@.str.139 = private unnamed_addr constant [31 x i8] c"cannot have more than 32 flags\00", align 1
@.str.140 = private unnamed_addr constant [53 x i8] c"record field name conflicts with previous field name\00", align 1
@.str.141 = private unnamed_addr constant [52 x i8] c"variant case name conflicts with previous case name\00", align 1
@.str.142 = private unnamed_addr constant [44 x i8] c"flag name conflicts with previous flag name\00", align 1
@.str.143 = private unnamed_addr constant [47 x i8] c"enum tag name conflicts with previous tag name\00", align 1
@.str.144 = private unnamed_addr constant [41 x i8] c"variant type must have at least one case\00", align 1
@.str.145 = private unnamed_addr constant [42 x i8] c"ascribed type of export is not compatible\00", align 1
@.str.146 = private unnamed_addr constant [24 x i8] c"missing expected export\00", align 1
@.str.147 = private unnamed_addr constant [24 x i8] c"not a valid export name\00", align 1
@.str.148 = private unnamed_addr constant [24 x i8] c"not a valid extern name\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"module name conflict\00", align 1
@.str.150 = private unnamed_addr constant [25 x i8] c"incompatible import type\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c"unknown import\00", align 1
@.str.152 = private unnamed_addr constant [26 x i8] c"data segment does not fit\00", align 1
@.str.153 = private unnamed_addr constant [30 x i8] c"elements segment does not fit\00", align 1
@.str.154 = private unnamed_addr constant [18 x i8] c"invalid core sort\00", align 1
@.str.155 = private unnamed_addr constant [25 x i8] c"invalid canonical option\00", align 1
@.str.156 = private unnamed_addr constant [30 x i8] c"invalid export in core module\00", align 1
@.str.157 = private unnamed_addr constant [51 x i8] c"invalid argument been used to invoke resource.drop\00", align 1
@.str.158 = private unnamed_addr constant [48 x i8] c"component model (instantiation) not implemented\00", align 1
@.str.159 = private unnamed_addr constant [23 x i8] c"wrong instance address\00", align 1
@.str.160 = private unnamed_addr constant [21 x i8] c"wrong instance index\00", align 1
@.str.161 = private unnamed_addr constant [26 x i8] c"instruction type mismatch\00", align 1
@.str.162 = private unnamed_addr constant [28 x i8] c"function signature mismatch\00", align 1
@.str.163 = private unnamed_addr constant [23 x i8] c"integer divide by zero\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.165 = private unnamed_addr constant [30 x i8] c"invalid conversion to integer\00", align 1
@.str.166 = private unnamed_addr constant [27 x i8] c"out of bounds table access\00", align 1
@.str.167 = private unnamed_addr constant [28 x i8] c"out of bounds memory access\00", align 1
@.str.168 = private unnamed_addr constant [27 x i8] c"out of bounds array access\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.170 = private unnamed_addr constant [22 x i8] c"uninitialized element\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"undefined element\00", align 1
@.str.172 = private unnamed_addr constant [28 x i8] c"indirect call type mismatch\00", align 1
@.str.173 = private unnamed_addr constant [21 x i8] c"host function failed\00", align 1
@.str.174 = private unnamed_addr constant [24 x i8] c"reference type mismatch\00", align 1
@.str.175 = private unnamed_addr constant [17 x i8] c"unaligned atomic\00", align 1
@.str.176 = private unnamed_addr constant [23 x i8] c"expected shared memory\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"null reference\00", align 1
@.str.178 = private unnamed_addr constant [24 x i8] c"null function reference\00", align 1
@.str.179 = private unnamed_addr constant [25 x i8] c"null structure reference\00", align 1
@.str.180 = private unnamed_addr constant [21 x i8] c"null array reference\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c"null i31 reference\00", align 1
@.str.182 = private unnamed_addr constant [25 x i8] c"null exception reference\00", align 1
@.str.183 = private unnamed_addr constant [13 x i8] c"cast failure\00", align 1
@.str.184 = private unnamed_addr constant [19 x i8] c"uncaught exception\00", align 1
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.185 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.187 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@.str.189 = private unnamed_addr constant [15 x i8] c"negative width\00", align 1
@.str.190 = private unnamed_addr constant [21 x i8] c"width is not integer\00", align 1
@.str.191 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"negative precision\00", align 1
@.str.193 = private unnamed_addr constant [25 x i8] c"precision is not integer\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor11instantiateERNS_7Runtime8Instance17ComponentInstanceERKNS_3AST9Component12AliasSectionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(328) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(800) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::details::log_msg", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::details::log_msg", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.spdlog::details::log_msg", align 8 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.spdlog::details::log_msg", align 8 ; 4 uses
  %14 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %15 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 2 uses
  %.not309 = icmp eq ptr %i.f, %i.h
  br i1 %.not309, label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit251, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread
  %.0310 = phi ptr [ %i.f, %.lr.ph ], [ %i.pg, %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread ] ; 20 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0310, i64 1 ; 3 uses
  %i.ad = load i8, ptr %.0310, align 8, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %.0310, i64 2
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !103, !range !17, !noundef !18 ; 3 uses
  switch i8 %i.ad, label %bb.ce [
    i8 0, label %bb.c
    i8 1, label %bb.w
    i8 2, label %bb.bs
  ]

bb.c:                                             ; preds = %bb.b
  %16 = icmp eq i8 %i.af, 0
  tail call void @llvm.assume(i1 %16)
  %i.ag = getelementptr inbounds nuw i8, ptr %.0310, i64 8 ; 2 uses
  %i.ah = load i8, ptr %i.ac, align 1, !tbaa !19
  switch i8 %i.ah, label %bb.v [
    i8 1, label %bb.d
    i8 3, label %bb.l
    i8 2, label %bb.t
    i8 4, label %bb.t
    i8 5, label %bb.t
  ]

bb.d:                                             ; preds = %bb.c
  %i.ai = load i32, ptr %i.ag, align 8, !tbaa !105
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0310, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0310, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !25 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 432
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 424 ; 4 uses
  %.0810.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !113 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %.0810.i.i.i.i.i, null
  br i1 %.not11.i.i.i.i.i, label %_ZNK8WasmEdge7Runtime8Instance17ComponentInstance12findFunctionESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i
  %.0813.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i ], [ %.0810.i.i.i.i.i, %bb.d ] ; 4 uses
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i ], [ %i.as, %bb.d ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.au) ; 2 uses
  %i.av = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.ay = tail call i32 @memcmp(ptr noundef %i.ax, ptr noundef %i.ao, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #18 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ba = sub i64 %i.au, %i.aq
  %spec.select7.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.ay, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %i.bb = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0   ; 2 uses
  %.19.in.v.i.i.i.i.i = select i1 %i.bb, i64 24, i64 16
  %.19.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 %.19.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = select i1 %i.bb, ptr %.012.i.i.i.i.i, ptr %.0813.i.i.i.i.i ; 6 uses
  %.08.i.i.i.i.i = load ptr, ptr %.19.in.i.i.i.i.i, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance9Component16FunctionInstanceEESt10_Select1stISE_ESt4lessIvESaISE_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISE_ERKT_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !82

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance9Component16FunctionInstanceEESt10_Select1stISE_ESt4lessIvESaISE_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISE_ERKT_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, %i.as
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESt4lessIvESaISt4pairIKS5_SB_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance9Component16FunctionInstanceEESt10_Select1stISE_ESt4lessIvESaISE_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISE_ERKT_.exit.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.aq) ; 2 uses
  %i.be = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !24
  %i.bh = tail call i32 @memcmp(ptr noundef %i.ao, ptr noundef %i.bg, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #18 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.e
  %i.bj = sub i64 %i.aq, %i.bd
  %spec.select7.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i

_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %i.bk = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %i.bk, ptr %i.as, ptr %.1.i.i.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESt4lessIvESaISt4pairIKS5_SB_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESt4lessIvESaISt4pairIKS5_SB_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i: ; preds = %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance9Component16FunctionInstanceEESt10_Select1stISE_ESt4lessIvESaISE_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISE_ERKT_.exit.i.i.i.i
  %.sroa.03.0.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance9Component16FunctionInstanceEESt10_Select1stISE_ESt4lessIvESaISE_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISE_ERKT_.exit.i.i.i.i ], [ %spec.select.i.i.i.i, %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.03.0.i.i.i.i, %i.as
  br i1 %.not.i.i, label %_ZNK8WasmEdge7Runtime8Instance17ComponentInstance12findFunctionESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESt4lessIvESaISt4pairIKS5_SB_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !116
  br label %_ZNK8WasmEdge7Runtime8Instance17ComponentInstance12findFunctionESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK8WasmEdge7Runtime8Instance17ComponentInstance12findFunctionESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESt4lessIvESaISt4pairIKS5_SB_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i, %bb.f
  %.0.i.i = phi ptr [ %i.bm, %bb.f ], [ null, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESt4lessIvESaISt4pairIKS5_SB_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i ], [ null, %bb.d ] ; 2 uses
  %i.bn = load ptr, ptr %i.aa, align 8, !tbaa !119 ; 4 uses
  %i.bo = load ptr, ptr %i.ab, align 8, !tbaa !120
  %.not.i.i58 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i58, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance17ComponentInstance12findFunctionESt17basic_string_viewIcSt11char_traitsIcEE.exit
  store ptr %.0.i.i, ptr %i.bn, align 8, !tbaa !121
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bp, ptr %i.aa, align 8, !tbaa !119
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread

bb.h:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance17ComponentInstance12findFunctionESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bq = load ptr, ptr %i.z, align 8, !tbaa !122 ; 4 uses
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 6 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.i, label %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
          to label %.noexc.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #20
          to label %.noexc1.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc1.i:                                        ; preds = %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  store ptr %.0.i.i, ptr %i.cc, align 8, !tbaa !121
  %i.cd = icmp sgt i64 %i.bt, 0
  br i1 %i.cd, label %bb.j, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

bb.j:                                             ; preds = %.noexc1.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %i.bq, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i: ; preds = %bb.j, %.noexc1.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bt) #21
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  store ptr %i.cb, ptr %i.z, align 8, !tbaa !122
  store ptr %i.ce, ptr %i.aa, align 8, !tbaa !119
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cf, ptr %i.ab, align 8, !tbaa !120
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread

.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.i
  %lpad.loopexit.split-lp410 = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %lpad.loopexit.split-lp410, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #22
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.ch = load i32, ptr %i.ag, align 8, !tbaa !105
  %i.ci = zext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !111 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0310, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0310, i64 24
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !25 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 480
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 472 ; 4 uses
  %.0810.i.i.i.i.i62 = load ptr, ptr %i.cq, align 8, !tbaa !113 ; 2 uses
  %.not11.i.i.i.i.i63 = icmp eq ptr %.0810.i.i.i.i.i62, null
  br i1 %.not11.i.i.i.i.i63, label %_ZNK8WasmEdge7Runtime8Instance17ComponentInstance8findTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %bb.l, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i69
  %.0813.i.i.i.i.i65 = phi ptr [ %.08.i.i.i.i.i74, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i69 ], [ %.0810.i.i.i.i.i62, %bb.l ] ; 4 uses
  %.012.i.i.i.i.i66 = phi ptr [ %.1.i.i.i.i.i73, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i69 ], [ %i.cr, %bb.l ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i65, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i67 = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 %i.ct) ; 2 uses
  %i.cu = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i67, 0
  br i1 %i.cu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i89, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i68

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i68: ; preds = %.lr.ph.i.i.i.i.i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i65, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !24
  %i.cx = tail call i32 @memcmp(ptr noundef %i.cw, ptr noundef %i.cn, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i67) #18 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i89, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i69

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i89: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i68, %.lr.ph.i.i.i.i.i64
  %i.cz = sub i64 %i.ct, %i.cp
  %spec.select7.i.i.i.i.i.i.i.i.i.i90 = tail call i64 @llvm.smax.i64(i64 %i.cz, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i91 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i90, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i92 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i91 to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i69

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i69: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i89, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i68
  %.0.i.i.i.i.i.i.i.i.i70 = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i92, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i89 ], [ %i.cx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i68 ]
  %i.da = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i70, 0 ; 2 uses
  %.19.in.v.i.i.i.i.i71 = select i1 %i.da, i64 24, i64 16
  %.19.in.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i65, i64 %.19.in.v.i.i.i.i.i71
  %.1.i.i.i.i.i73 = select i1 %i.da, ptr %.012.i.i.i.i.i66, ptr %.0813.i.i.i.i.i65 ; 6 uses
  %.08.i.i.i.i.i74 = load ptr, ptr %.19.in.i.i.i.i.i72, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i75 = icmp eq ptr %.08.i.i.i.i.i74, null
  br i1 %.not.i.i.i.i.i75, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN8WasmEdge3AST9Component7DefTypeEESt10_Select1stISE_ESt4lessIvESaISE_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISE_ERKT_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i64, !llvm.loop !83

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN8WasmEdge3AST9Component7DefTypeEESt10_Select1stISE_ESt4lessIvESaISE_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISE_ERKT_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i69
  %.not.i.i.i.i76 = icmp eq ptr %.1.i.i.i.i.i73, %i.cr
  br i1 %.not.i.i.i.i76, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN8WasmEdge3AST9Component7DefTypeESt4lessIvESaISt4pairIKS5_SB_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN8WasmEdge3AST9Component7DefTypeEESt10_Select1stISE_ESt4lessIvESaISE_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISE_ERKT_.exit.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i73, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i77 = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.cp) ; 2 uses
  %i.dd = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i77, 0
  br i1 %i.dd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i85, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i78

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i78: ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i73, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !24
  %i.dg = tail call i32 @memcmp(ptr noundef %i.cn, ptr noundef %i.df, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i77) #18 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i85, label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i79

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i85: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i78, %bb.m
  %i.di = sub i64 %i.cp, %i.dc
  %spec.select7.i.i.i.i.i.i.i.i.i86 = tail call i64 @llvm.smax.i64(i64 %i.di, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i87 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i86, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i88 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i87 to i32
  br label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i79

_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i79: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i85, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i78
  %.0.i.i.i.i.i.i.i.i80 = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i88, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i85 ], [ %i.dg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i78 ]
  %i.dj = icmp slt i32 %.0.i.i.i.i.i.i.i.i80, 0
  %spec.select.i.i.i.i81 = select i1 %i.dj, ptr %i.cr, ptr %.1.i.i.i.i.i73
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN8WasmEdge3AST9Component7DefTypeESt4lessIvESaISt4pairIKS5_SB_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN8WasmEdge3AST9Component7DefTypeESt4lessIvESaISt4pairIKS5_SB_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i: ; preds = %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i79, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN8WasmEdge3AST9Component7DefTypeEESt10_Select1stISE_ESt4lessIvESaISE_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISE_ERKT_.exit.i.i.i.i
  %.sroa.03.0.i.i.i.i82 = phi ptr [ %.1.i.i.i.i.i73, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN8WasmEdge3AST9Component7DefTypeEESt10_Select1stISE_ESt4lessIvESaISE_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISE_ERKT_.exit.i.i.i.i ], [ %spec.select.i.i.i.i81, %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i79 ] ; 2 uses
  %.not.i.i83 = icmp eq ptr %.sroa.03.0.i.i.i.i82, %i.cr
  br i1 %.not.i.i83, label %_ZNK8WasmEdge7Runtime8Instance17ComponentInstance8findTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.n

bb.n:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN8WasmEdge3AST9Component7DefTypeESt4lessIvESaISt4pairIKS5_SB_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i82, i64 64
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !125
  br label %_ZNK8WasmEdge7Runtime8Instance17ComponentInstance8findTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK8WasmEdge7Runtime8Instance17ComponentInstance8findTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.l, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN8WasmEdge3AST9Component7DefTypeESt4lessIvESaISt4pairIKS5_SB_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i, %bb.n
  %.0.i.i84 = phi ptr [ %i.dl, %bb.n ], [ null, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN8WasmEdge3AST9Component7DefTypeESt4lessIvESaISt4pairIKS5_SB_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i ], [ null, %bb.l ] ; 2 uses
  %i.dm = load ptr, ptr %i.x, align 8, !tbaa !128 ; 4 uses
  %i.dn = load ptr, ptr %i.y, align 8, !tbaa !129
  %.not.i.i93 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i.i93, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance17ComponentInstance8findTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  store ptr %.0.i.i84, ptr %i.dm, align 8, !tbaa !130
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.do, ptr %i.x, align 8, !tbaa !128
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread

bb.p:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance17ComponentInstance8findTypeESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.dp = load ptr, ptr %i.w, align 8, !tbaa !131 ; 4 uses
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 6 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775800
  br i1 %i.dt, label %bb.q, label %_ZNKSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
          to label %.noexc.i97 unwind label %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i97:                                       ; preds = %bb.q
  unreachable

_ZNKSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.du = ashr exact i64 %i.ds, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i94 = tail call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i.i94, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 1152921504606846975)
  %i.dy = select i1 %i.dw, i64 1152921504606846975, i64 %i.dx ; 3 uses
  %.not.i.i.i.i95 = icmp ne i64 %i.dy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i95)
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #20
          to label %.noexc2.i unwind label %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc2.i:                                        ; preds = %_ZNKSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.ds ; 2 uses
  store ptr %.0.i.i84, ptr %i.eb, align 8, !tbaa !130
  %i.ec = icmp sgt i64 %i.ds, 0
  br i1 %i.ec, label %bb.r, label %_ZNSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

bb.r:                                             ; preds = %.noexc2.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr align 8 %i.dp, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i

_ZNSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i: ; preds = %bb.r, %.noexc2.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.not.i17.i.i.i96 = icmp eq ptr %i.dp, null
  br i1 %.not.i17.i.i.i96, label %_ZNSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.ds) #21
  br label %_ZNSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i
  store ptr %i.ea, ptr %i.w, align 8, !tbaa !131
  store ptr %i.ed, ptr %i.x, align 8, !tbaa !128
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dy
  store ptr %i.ee, ptr %i.y, align 8, !tbaa !129
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread

.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.q
  %lpad.loopexit.split-lp407 = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %lpad.loopexit.split-lp407, 0
  tail call void @__clang_call_terminate(ptr %i.ef) #22
  unreachable

bb.t:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 932, ptr %i.a, align 4, !tbaa !28
  %i.eg = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.eg, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %15, i32 noundef 4, ptr nonnull @.str.7, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.eh = call noundef ptr @_ZN6spdlog18default_logger_rawEv() ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ej = load atomic i32, ptr %i.ei monotonic, align 4
  %i.ek = icmp slt i32 %i.ej, 5                   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 104
  %i.em = call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.el) ; 2 uses
  %or.cond.i.i.i.i = or i1 %i.ek, %i.em
  br i1 %or.cond.i.i.i.i, label %bb.u, label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !25
  call void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, ptr %i.eo, i64 %i.eq, i32 noundef 4, ptr nonnull @.str, i64 27)
  call void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.eh, ptr noundef nonnull align 8 dereferenceable(96) %13, i1 noundef zeroext %i.ek, i1 noundef zeroext %i.em)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit

bb.v:                                             ; preds = %bb.c
  unreachable

_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  store i8 0, ptr %0, align 4, !tbaa !133
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 932, ptr %i.er, align 4, !tbaa !19
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit251.thread277

bb.w:                                             ; preds = %bb.b
  %17 = trunc nuw i8 %i.af to i1
  tail call void @llvm.assume(i1 %17)
  %i.es = getelementptr inbounds nuw i8, ptr %.0310, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !105
  %i.eu = zext i32 %i.et to i64
  %i.ev = load ptr, ptr %i.m, align 8, !tbaa !136
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.eu
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !138 ; 12 uses
  %i.ey = load i8, ptr %i.ac, align 1, !tbaa !19
  switch i8 %i.ey, label %bb.br [
    i8 0, label %bb.x
    i8 1, label %bb.ai
    i8 2, label %bb.at
    i8 3, label %bb.be
    i8 16, label %bb.bp
    i8 17, label %bb.bp
    i8 18, label %bb.bp
  ]

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 56 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %i.fa = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.ez) #18
  switch i32 %i.fa, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i [
    i32 11, label %bb.y
    i32 35, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #19
          to label %.noexc.i98 unwind label %bb.ac

.noexc.i98:                                       ; preds = %bb.z
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i: ; preds = %bb.y
  %i.fb = getelementptr i8, ptr %.0310, i64 16
  %.val2.val.i = load ptr, ptr %i.fb, align 8, !tbaa !24 ; 2 uses
  %i.fc = getelementptr i8, ptr %.0310, i64 24
  %.val2.val3.i = load i64, ptr %i.fc, align 8, !tbaa !25 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 624
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 616 ; 4 uses
  %.0810.i.i.i.i.i.i = load ptr, ptr %i.fd, align 8, !tbaa !113 ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq ptr %.0810.i.i.i.i.i.i, null
  br i1 %.not11.i.i.i.i.i.i, label %"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance14getFuncExportsIRZNS_8Executor8Executor11instantiateERNS1_17ComponentInstanceERKNS_3AST9Component12AliasSectionEE3$_0EEDaOT_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i
  %.0813.i.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i, %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i ] ; 4 uses
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i ], [ %i.fe, %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i, i64 40
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val2.val3.i, i64 %i.fg) ; 2 uses
  %i.fh = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !24
  %i.fk = tail call i32 @memcmp(ptr noundef %i.fj, ptr noundef readonly %.val2.val.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #18 ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.fm = sub i64 %i.fg, %.val2.val3.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.fm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.fk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.fn = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %.19.in.v.i.i.i.i.i.i = select i1 %i.fn, i64 24, i64 16
  %.19.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i, i64 %.19.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = select i1 %i.fn, ptr %.012.i.i.i.i.i.i, ptr %.0813.i.i.i.i.i.i ; 6 uses
  %.08.i.i.i.i.i.i = load ptr, ptr %.19.in.i.i.i.i.i.i, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISD_ERKT_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !84

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISD_ERKT_.exit.i.i.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i
  %.not.i.i.i.i.i99 = icmp eq ptr %.1.i.i.i.i.i.i, %i.fe
  br i1 %.not.i.i.i.i.i99, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISD_ERKT_.exit.i.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 40
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i100 = tail call i64 @llvm.umin.i64(i64 %i.fp, i64 %.val2.val3.i) ; 2 uses
  %i.fq = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i100, 0
  br i1 %i.fq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i103, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i101

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i101: ; preds = %bb.aa
  %i.fr = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !24
  %i.ft = tail call i32 @memcmp(ptr noundef readonly %.val2.val.i, ptr noundef %i.fs, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i100) #18 ; 2 uses
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i103, label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i103: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i101, %bb.aa
  %i.fv = sub i64 %.val2.val3.i, %i.fp
  %spec.select7.i.i.i.i.i.i.i.i.i.i104 = tail call i64 @llvm.smax.i64(i64 %i.fv, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i105 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i104, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i106 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i105 to i32
  br label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i

_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i103, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i101
  %.0.i.i.i.i.i.i.i.i.i102 = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i106, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i103 ], [ %i.ft, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i101 ]
  %i.fw = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i102, 0
  %spec.select.i.i.i.i.i = select i1 %i.fw, ptr %i.fe, ptr %.1.i.i.i.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISD_ERKT_.exit.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISD_ERKT_.exit.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.03.0.i.i.i.i.i, %i.fe
  br i1 %.not.i.i.i, label %"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance14getFuncExportsIRZNS_8Executor8Executor11instantiateERNS1_17ComponentInstanceERKNS_3AST9Component12AliasSectionEE3$_0EEDaOT_.exit", label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i, i64 64
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !141
  br label %"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance14getFuncExportsIRZNS_8Executor8Executor11instantiateERNS1_17ComponentInstanceERKNS_3AST9Component12AliasSectionEE3$_0EEDaOT_.exit"

bb.ac:                                            ; preds = %bb.z
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  tail call void @__clang_call_terminate(ptr %i.ga) #22
  unreachable

"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance14getFuncExportsIRZNS_8Executor8Executor11instantiateERNS1_17ComponentInstanceERKNS_3AST9Component12AliasSectionEE3$_0EEDaOT_.exit": ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i, %bb.ab
  %.0.i.i.i = phi ptr [ %i.fy, %bb.ab ], [ null, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i ], [ null, %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i ] ; 2 uses
  %i.gb = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.ez) #18 ; 0 uses
  %i.gc = load ptr, ptr %i.k, align 8, !tbaa !144 ; 4 uses
  %i.gd = load ptr, ptr %i.l, align 8, !tbaa !145
  %.not.i.i107 = icmp eq ptr %i.gc, %i.gd
  br i1 %.not.i.i107, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance14getFuncExportsIRZNS_8Executor8Executor11instantiateERNS1_17ComponentInstanceERKNS_3AST9Component12AliasSectionEE3$_0EEDaOT_.exit"
  store ptr %.0.i.i.i, ptr %i.gc, align 8, !tbaa !146
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.ge, ptr %i.k, align 8, !tbaa !144
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread

bb.ae:                                            ; preds = %"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance14getFuncExportsIRZNS_8Executor8Executor11instantiateERNS1_17ComponentInstanceERKNS_3AST9Component12AliasSectionEE3$_0EEDaOT_.exit"
  %i.gf = load ptr, ptr %i.j, align 8, !tbaa !147 ; 4 uses
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh                    ; 6 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775800
  br i1 %i.gj, label %bb.af, label %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
          to label %.noexc.i112 unwind label %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i112:                                      ; preds = %bb.af
  unreachable

_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ae
  %i.gk = ashr exact i64 %i.gi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i108 = tail call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i.i108, %i.gk ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gk
  %i.gn = tail call i64 @llvm.umin.i64(i64 %i.gl, i64 1152921504606846975)
  %i.go = select i1 %i.gm, i64 1152921504606846975, i64 %i.gn ; 3 uses
  %.not.i.i.i.i109 = icmp ne i64 %i.go, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i109)
  %i.gp = shl nuw nsw i64 %i.go, 3
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #20
          to label %.noexc1.i110 unwind label %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc1.i110:                                     ; preds = %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gi ; 2 uses
  store ptr %.0.i.i.i, ptr %i.gr, align 8, !tbaa !146
  %i.gs = icmp sgt i64 %i.gi, 0
  br i1 %i.gs, label %bb.ag, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.ag:                                            ; preds = %.noexc1.i110
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr align 8 %i.gf, i64 %i.gi, i1 false)
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.ag, %.noexc1.i110
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.not.i17.i.i.i111 = icmp eq ptr %i.gf, null
  br i1 %.not.i17.i.i.i111, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gi) #21
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ah, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.gq, ptr %i.j, align 8, !tbaa !147
  store ptr %i.gt, ptr %i.k, align 8, !tbaa !144
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.go
  store ptr %i.gu, ptr %i.l, align 8, !tbaa !145
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread

.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.af
  %lpad.loopexit.split-lp404 = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %lpad.loopexit.split-lp404, 0
  tail call void @__clang_call_terminate(ptr %i.gv) #22
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge8Executor8Executor11instantiateERNS_7Runtime8Instance17ComponentInstanceERKNS_3AST9Component12AliasSectionE:bb.a
  br i1 %.not11.i.i.i.i.i.i202, label %"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance16getGlobalExportsIRZNS_8Executor8Executor11instantiateERNS1_17ComponentInstanceERKNS_3AST9Component12AliasSectionEE3$_0EEDaOT_.exit", label %.lr.ph.i.i.i.i.i.i203

.lr.ph.i.i.i.i.i.i203:                            ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i198, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i208
  %.0813.i.i.i.i.i.i204 = phi ptr [ %.08.i.i.i.i.i.i213, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i208 ], [ %.0810.i.i.i.i.i.i201, %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i198 ] ; 4 uses
  %.012.i.i.i.i.i.i205 = phi ptr [ %.1.i.i.i.i.i.i212, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i208 ], [ %i.kv, %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i198 ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i204, i64 40
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i206 = tail call i64 @llvm.umin.i64(i64 %.val2.val3.i200, i64 %i.kx) ; 2 uses
  %i.ky = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i206, 0
  br i1 %i.ky, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i228, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i207

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i207: ; preds = %.lr.ph.i.i.i.i.i.i203
  %i.kz = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i204, i64 32
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !24
  %i.lb = tail call i32 @memcmp(ptr noundef %i.la, ptr noundef readonly %.val2.val.i199, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i206) #18 ; 2 uses
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i228, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i208

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i228: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i207, %.lr.ph.i.i.i.i.i.i203
  %i.ld = sub i64 %i.kx, %.val2.val3.i200
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i229 = tail call i64 @llvm.smax.i64(i64 %i.ld, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i230 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i229, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i231 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i230 to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i208

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i208: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i228, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i207
  %.0.i.i.i.i.i.i.i.i.i.i209 = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i231, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i228 ], [ %i.lb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i207 ]
  %i.le = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i209, 0 ; 2 uses
  %.19.in.v.i.i.i.i.i.i210 = select i1 %i.le, i64 24, i64 16
  %.19.in.i.i.i.i.i.i211 = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i204, i64 %.19.in.v.i.i.i.i.i.i210
  %.1.i.i.i.i.i.i212 = select i1 %i.le, ptr %.012.i.i.i.i.i.i205, ptr %.0813.i.i.i.i.i.i204 ; 6 uses
  %.08.i.i.i.i.i.i213 = load ptr, ptr %.19.in.i.i.i.i.i.i211, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i.i214 = icmp eq ptr %.08.i.i.i.i.i.i213, null
  br i1 %.not.i.i.i.i.i.i214, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance14GlobalInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISD_ERKT_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i203, !llvm.loop !87

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance14GlobalInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISD_ERKT_.exit.i.i.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt17basic_string_viewIcS5_EEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i.i208
  %.not.i.i.i.i.i215 = icmp eq ptr %.1.i.i.i.i.i.i212, %i.kv
  br i1 %.not.i.i.i.i.i215, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14GlobalInstanceESt4lessIvESaISt4pairIKS5_SA_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance14GlobalInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISD_ERKT_.exit.i.i.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i212, i64 40
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i216 = tail call i64 @llvm.umin.i64(i64 %i.lg, i64 %.val2.val3.i200) ; 2 uses
  %i.lh = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i216, 0
  br i1 %i.lh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i224, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i217

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i217: ; preds = %bb.bh
  %i.li = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i212, i64 32
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !24
  %i.lk = tail call i32 @memcmp(ptr noundef readonly %.val2.val.i199, ptr noundef %i.lj, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i216) #18 ; 2 uses
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i224, label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i218

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i224: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i217, %bb.bh
  %i.lm = sub i64 %.val2.val3.i200, %i.lg
  %spec.select7.i.i.i.i.i.i.i.i.i.i225 = tail call i64 @llvm.smax.i64(i64 %i.lm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i226 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i225, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i227 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i226 to i32
  br label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i218

_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i218: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i224, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i217
  %.0.i.i.i.i.i.i.i.i.i219 = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i227, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i224 ], [ %i.lk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i217 ]
  %i.ln = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i219, 0
  %spec.select.i.i.i.i.i220 = select i1 %i.ln, ptr %i.kv, ptr %.1.i.i.i.i.i.i212
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14GlobalInstanceESt4lessIvESaISt4pairIKS5_SA_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14GlobalInstanceESt4lessIvESaISt4pairIKS5_SA_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i218, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance14GlobalInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISD_ERKT_.exit.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i221 = phi ptr [ %.1.i.i.i.i.i.i212, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance14GlobalInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE17_M_lower_bound_trISt17basic_string_viewIcS3_EvEESt23_Rb_tree_const_iteratorISD_ERKT_.exit.i.i.i.i.i ], [ %spec.select.i.i.i.i.i220, %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1112basic_stringIcS4_SaIcEEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSE_OSF_.exit.i.i.i.i.i218 ] ; 2 uses
  %.not.i.i.i222 = icmp eq ptr %.sroa.03.0.i.i.i.i.i221, %i.kv
  br i1 %.not.i.i.i222, label %"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance16getGlobalExportsIRZNS_8Executor8Executor11instantiateERNS1_17ComponentInstanceERKNS_3AST9Component12AliasSectionEE3$_0EEDaOT_.exit", label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14GlobalInstanceESt4lessIvESaISt4pairIKS5_SA_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i221, i64 64
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !168
  br label %"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance16getGlobalExportsIRZNS_8Executor8Executor11instantiateERNS1_17ComponentInstanceERKNS_3AST9Component12AliasSectionEE3$_0EEDaOT_.exit"

bb.bj:                                            ; preds = %bb.bg
  %i.lq = landingpad { ptr, i32 }
          catch ptr null
  %i.lr = extractvalue { ptr, i32 } %i.lq, 0
  tail call void @__clang_call_terminate(ptr %i.lr) #22
  unreachable

"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance16getGlobalExportsIRZNS_8Executor8Executor11instantiateERNS1_17ComponentInstanceERKNS_3AST9Component12AliasSectionEE3$_0EEDaOT_.exit": ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i198, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14GlobalInstanceESt4lessIvESaISt4pairIKS5_SA_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i, %bb.bi
  %.0.i.i.i223 = phi ptr [ %i.lp, %bb.bi ], [ null, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance14GlobalInstanceESt4lessIvESaISt4pairIKS5_SA_EEE4findISt17basic_string_viewIcS3_EEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i ], [ null, %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i198 ] ; 2 uses
  %i.ls = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.kq) #18 ; 0 uses
  %i.lt = load ptr, ptr %i.o, align 8, !tbaa !171 ; 4 uses
  %i.lu = load ptr, ptr %i.p, align 8, !tbaa !172
  %.not.i.i232 = icmp eq ptr %i.lt, %i.lu
  br i1 %.not.i.i232, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance16getGlobalExportsIRZNS_8Executor8Executor11instantiateERNS1_17ComponentInstanceERKNS_3AST9Component12AliasSectionEE3$_0EEDaOT_.exit"
  store ptr %.0.i.i.i223, ptr %i.lt, align 8, !tbaa !173
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store ptr %i.lv, ptr %i.o, align 8, !tbaa !171
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread

bb.bl:                                            ; preds = %"_ZNK8WasmEdge7Runtime8Instance14ModuleInstance16getGlobalExportsIRZNS_8Executor8Executor11instantiateERNS1_17ComponentInstanceERKNS_3AST9Component12AliasSectionEE3$_0EEDaOT_.exit"
  %i.lw = load ptr, ptr %i.n, align 8, !tbaa !174 ; 4 uses
  %i.lx = ptrtoint ptr %i.lt to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly                    ; 6 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %bb.bm, label %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
          to label %.noexc.i237 unwind label %.loopexit.split-lp280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i237:                                      ; preds = %bb.bm
  unreachable

_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bl
  %i.mb = ashr exact i64 %i.lz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i233 = tail call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i.i.i233, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = tail call i64 @llvm.umin.i64(i64 %i.mc, i64 1152921504606846975)
  %i.mf = select i1 %i.md, i64 1152921504606846975, i64 %i.me ; 3 uses
  %.not.i.i.i.i234 = icmp ne i64 %i.mf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i234)
  %i.mg = shl nuw nsw i64 %i.mf, 3
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #20
          to label %.noexc1.i235 unwind label %.loopexit.split-lp280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc1.i235:                                     ; preds = %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.lz ; 2 uses
  store ptr %.0.i.i.i223, ptr %i.mi, align 8, !tbaa !173
  %i.mj = icmp sgt i64 %i.lz, 0
  br i1 %i.mj, label %bb.bn, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.bn:                                            ; preds = %.noexc1.i235
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mh, ptr align 8 %i.lw, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.bn, %.noexc1.i235
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %.not.i17.i.i.i236 = icmp eq ptr %i.lw, null
  br i1 %.not.i17.i.i.i236, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.lz) #21
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.bo, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.mh, ptr %i.n, align 8, !tbaa !174
  store ptr %i.mk, ptr %i.o, align 8, !tbaa !171
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mf
  store ptr %i.ml, ptr %i.p, align 8, !tbaa !172
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread

.loopexit.split-lp280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.bm
  %lpad.loopexit.split-lp396 = landingpad { ptr, i32 }
          catch ptr null
  %i.mm = extractvalue { ptr, i32 } %lpad.loopexit.split-lp396, 0
  tail call void @__clang_call_terminate(ptr %i.mm) #22
  unreachable

bb.bp:                                            ; preds = %bb.w, %bb.w, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 932, ptr %i.b, align 4, !tbaa !28
  %i.mn = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.mn, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 4, ptr nonnull @.str.7, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.mo = call noundef ptr @_ZN6spdlog18default_logger_rawEv() ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.mq = load atomic i32, ptr %i.mp monotonic, align 4
  %i.mr = icmp slt i32 %i.mq, 5                   ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 104
  %i.mt = call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.ms) ; 2 uses
  %or.cond.i.i.i.i238 = or i1 %i.mr, %i.mt
  br i1 %or.cond.i.i.i.i238, label %bb.bq, label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !24
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !25
  call void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, ptr %i.mv, i64 %i.mx, i32 noundef 4, ptr nonnull @.str.1, i64 32)
  call void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.mo, ptr noundef nonnull align 8 dereferenceable(96) %10, i1 noundef zeroext %i.mr, i1 noundef zeroext %i.mt)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit

bb.br:                                            ; preds = %bb.w
  unreachable

_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit: ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  store i8 0, ptr %0, align 4, !tbaa !133
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 932, ptr %i.my, align 4, !tbaa !19
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit251.thread277

bb.bs:                                            ; preds = %bb.b
  %18 = trunc nuw i8 %i.af to i1
  br i1 %18, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 932, ptr %i.c, align 4, !tbaa !28
  %i.mz = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.mz, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.7, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.na = call noundef ptr @_ZN6spdlog18default_logger_rawEv() ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.nc = load atomic i32, ptr %i.nb monotonic, align 4
  %i.nd = icmp slt i32 %i.nc, 5                   ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 104
  %i.nf = call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.ne) ; 2 uses
  %or.cond.i.i.i.i240 = or i1 %i.nd, %i.nf
  br i1 %or.cond.i.i.i.i240, label %bb.bu, label %_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit241

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ng = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !24
  %i.ni = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !25
  call void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, ptr %i.nh, i64 %i.nj, i32 noundef 4, ptr nonnull @.str.2, i64 44)
  call void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.na, ptr noundef nonnull align 8 dereferenceable(96) %7, i1 noundef zeroext %i.nd, i1 noundef zeroext %i.nf)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit241

_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit241: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store i8 0, ptr %0, align 4, !tbaa !133
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 932, ptr %i.nk, align 4, !tbaa !19
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit251.thread277

bb.bv:                                            ; preds = %bb.bs
  %i.nl = load i8, ptr %i.ac, align 1, !tbaa !19
  %i.nm = icmp eq i8 %i.nl, 1
  br i1 %i.nm, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  %i.nn = getelementptr inbounds nuw i8, ptr %.0310, i64 8
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !176
  %i.np = zext i32 %i.no to i64
  %i.nq = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.np
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !111
  %i.nt = getelementptr inbounds nuw i8, ptr %.0310, i64 12
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !177
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 152
  %i.nw = zext i32 %i.nu to i64
  %i.nx = load ptr, ptr %i.nv, align 8, !tbaa !147
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.nw
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !146 ; 2 uses
  %i.oa = load ptr, ptr %i.k, align 8, !tbaa !144 ; 4 uses
  %i.ob = load ptr, ptr %i.l, align 8, !tbaa !145
  %.not.i.i242 = icmp eq ptr %i.oa, %i.ob
  br i1 %.not.i.i242, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store ptr %i.nz, ptr %i.oa, align 8, !tbaa !146
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store ptr %i.oc, ptr %i.k, align 8, !tbaa !144
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread

bb.by:                                            ; preds = %bb.bw
  %i.od = load ptr, ptr %i.j, align 8, !tbaa !147 ; 4 uses
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of                    ; 6 uses
  %i.oh = icmp eq i64 %i.og, 9223372036854775800
  br i1 %i.oh, label %bb.bz, label %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i243

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
          to label %.noexc.i250 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i250:                                      ; preds = %bb.bz
  unreachable

_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i243: ; preds = %bb.by
  %i.oi = ashr exact i64 %i.og, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i244 = tail call i64 @llvm.umax.i64(i64 %i.oi, i64 1)
  %i.oj = add nsw i64 %.sroa.speculated.i.i.i.i244, %i.oi ; 2 uses
  %i.ok = icmp ult i64 %i.oj, %i.oi
  %i.ol = tail call i64 @llvm.umin.i64(i64 %i.oj, i64 1152921504606846975)
  %i.om = select i1 %i.ok, i64 1152921504606846975, i64 %i.ol ; 3 uses
  %.not.i.i.i.i245 = icmp ne i64 %i.om, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i245)
  %i.on = shl nuw nsw i64 %i.om, 3
  %i.oo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.on) #20
          to label %.noexc1.i246 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc1.i246:                                     ; preds = %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i243
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 %i.og ; 2 uses
  store ptr %i.nz, ptr %i.op, align 8, !tbaa !146
  %i.oq = icmp sgt i64 %i.og, 0
  br i1 %i.oq, label %bb.ca, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i247

bb.ca:                                            ; preds = %.noexc1.i246
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oo, ptr align 8 %i.od, i64 %i.og, i1 false)
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i247

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i247: ; preds = %bb.ca, %.noexc1.i246
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %.not.i17.i.i.i248 = icmp eq ptr %i.od, null
  br i1 %.not.i17.i.i.i248, label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i249, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i247
  tail call void @_ZdlPvm(ptr noundef nonnull %i.od, i64 noundef %i.og) #21
  br label %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i249

_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i249: ; preds = %bb.cb, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i247
  store ptr %i.oo, ptr %i.j, align 8, !tbaa !147
  store ptr %i.or, ptr %i.k, align 8, !tbaa !144
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.om
  store ptr %i.os, ptr %i.l, align 8, !tbaa !145
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i243, %bb.bz
  %lpad.loopexit.split-lp394 = landingpad { ptr, i32 }
          catch ptr null
  %i.ot = extractvalue { ptr, i32 } %lpad.loopexit.split-lp394, 0
  tail call void @__clang_call_terminate(ptr %i.ot) #22
  unreachable

bb.cc:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 932, ptr %i.d, align 4, !tbaa !28
  %i.ou = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ou, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.7, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.ov = call noundef ptr @_ZN6spdlog18default_logger_rawEv() ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ox = load atomic i32, ptr %i.ow monotonic, align 4
  %i.oy = icmp slt i32 %i.ox, 5                   ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 104
  %i.pa = call noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104) %i.oz) ; 2 uses
  %or.cond.i.i.i.i252 = or i1 %i.oy, %i.pa
  br i1 %or.cond.i.i.i.i252, label %bb.cd, label %_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit253

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !24
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !25
  call void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, ptr %i.pc, i64 %i.pe, i32 noundef 4, ptr nonnull @.str.3, i64 39)
  call void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %i.ov, ptr noundef nonnull align 8 dereferenceable(96) %4, i1 noundef zeroext %i.oy, i1 noundef zeroext %i.pa)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit253

_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit253: ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i8 0, ptr %0, align 4, !tbaa !133
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 932, ptr %i.pf, align 4, !tbaa !19
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit251.thread277

bb.ce:                                            ; preds = %bb.b
  unreachable

_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread: ; preds = %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14GlobalInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.bk, %bb.az, %bb.ao, %bb.ad, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance13TableInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance14MemoryInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %_ZNSt6vectorIPKN8WasmEdge3AST9Component7DefTypeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.o, %bb.g, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance9Component16FunctionInstanceESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %_ZNSt6vectorIPN8WasmEdge7Runtime8Instance16FunctionInstanceESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i249, %bb.bx
  %i.pg = getelementptr inbounds nuw i8, ptr %.0310, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.pg, %i.h
  br i1 %.not, label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit251, label %bb.b

_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit251: ; preds = %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit.thread, %bb.a
  store i64 1, ptr %0, align 4
  br label %_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit251.thread277

_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit251.thread277: ; preds = %_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit241, %_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit, %_ZN8WasmEdge7Runtime8Instance17ComponentInstance11addFunctionEPNS1_9Component16FunctionInstanceE.exit, %_ZN6spdlog5errorISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit253, %_ZN8WasmEdge7Runtime8Instance17ComponentInstance15addCoreFunctionEPNS1_16FunctionInstanceE.exit251
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
end_hunk_1
