Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SanitizerArgs?download=true
inline.NumInlined: 2772
inline.NumDeleted: 587
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0
@.str.143 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"float-cast-overflow\00", align 1
@.str.145 = private unnamed_addr constant [21 x i8] c"float-divide-by-zero\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.147 = private unnamed_addr constant [23 x i8] c"integer-divide-by-zero\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"nonnull-attribute\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"nullability-arg\00", align 1
@.str.151 = private unnamed_addr constant [19 x i8] c"nullability-assign\00", align 1
@.str.152 = private unnamed_addr constant [19 x i8] c"nullability-return\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"nullability\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"object-size\00", align 1
@.str.155 = private unnamed_addr constant [17 x i8] c"pointer-overflow\00", align 1
@.str.156 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.157 = private unnamed_addr constant [26 x i8] c"returns-nonnull-attribute\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"shift-base\00", align 1
@.str.159 = private unnamed_addr constant [15 x i8] c"shift-exponent\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.161 = private unnamed_addr constant [24 x i8] c"signed-integer-overflow\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c"vla-bound\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"vptr\00", align 1
@.str.165 = private unnamed_addr constant [26 x i8] c"unsigned-integer-overflow\00", align 1
@.str.166 = private unnamed_addr constant [20 x i8] c"unsigned-shift-base\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"dataflow\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"cfi-cast-strict\00", align 1
@.str.169 = private unnamed_addr constant [17 x i8] c"cfi-derived-cast\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"cfi-icall\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"cfi-mfcall\00", align 1
@.str.172 = private unnamed_addr constant [19 x i8] c"cfi-unrelated-cast\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"cfi-nvcall\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"cfi-vcall\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"cfi\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"kcfi\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"safe-stack\00", align 1
@.str.178 = private unnamed_addr constant [18 x i8] c"shadow-call-stack\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.180 = private unnamed_addr constant [15 x i8] c"undefined-trap\00", align 1
@.str.181 = private unnamed_addr constant [37 x i8] c"implicit-unsigned-integer-truncation\00", align 1
@.str.182 = private unnamed_addr constant [35 x i8] c"implicit-signed-integer-truncation\00", align 1
@.str.183 = private unnamed_addr constant [28 x i8] c"implicit-integer-truncation\00", align 1
@.str.184 = private unnamed_addr constant [29 x i8] c"implicit-integer-sign-change\00", align 1
@.str.185 = private unnamed_addr constant [41 x i8] c"implicit-integer-arithmetic-value-change\00", align 1
@.str.186 = private unnamed_addr constant [28 x i8] c"implicit-integer-conversion\00", align 1
@.str.187 = private unnamed_addr constant [29 x i8] c"implicit-bitfield-conversion\00", align 1
@.str.188 = private unnamed_addr constant [20 x i8] c"implicit-conversion\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"objc-cast\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"local-bounds\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"bounds\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"scudo\00", align 1
@.str.194 = private unnamed_addr constant [12 x i8] c"alloc-token\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.196 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.197 = private unnamed_addr constant [20 x i8] c"asan_ignorelist.txt\00", align 1
@.str.198 = private unnamed_addr constant [22 x i8] c"hwasan_ignorelist.txt\00", align 1
@.str.199 = private unnamed_addr constant [22 x i8] c"memtag_ignorelist.txt\00", align 1
@.str.200 = private unnamed_addr constant [20 x i8] c"msan_ignorelist.txt\00", align 1
@.str.201 = private unnamed_addr constant [20 x i8] c"nsan_ignorelist.txt\00", align 1
@.str.202 = private unnamed_addr constant [20 x i8] c"tsan_ignorelist.txt\00", align 1
@.str.203 = private unnamed_addr constant [20 x i8] c"tysan_blacklist.txt\00", align 1
@.str.204 = private unnamed_addr constant [18 x i8] c"dfsan_abilist.txt\00", align 1
@.str.205 = private unnamed_addr constant [19 x i8] c"cfi_ignorelist.txt\00", align 1
@.str.206 = private unnamed_addr constant [27 x i8] c"alloc_token_ignorelist.txt\00", align 1
@.str.207 = private unnamed_addr constant [21 x i8] c"ubsan_ignorelist.txt\00", align 1
@constinit = private unnamed_addr constant [11 x %struct.Ignorelist] [%struct.Ignorelist { ptr @.str.197, %"class.clang::SanitizerMask" { [2 x i64] [i64 1, i64 0] } }, %struct.Ignorelist { ptr @.str.198, %"class.clang::SanitizerMask" { [2 x i64] [i64 16, i64 0] } }, %struct.Ignorelist { ptr @.str.199, %"class.clang::SanitizerMask" { [2 x i64] [i64 448, i64 0] } }, %struct.Ignorelist { ptr @.str.200, %"class.clang::SanitizerMask" { [2 x i64] [i64 1024, i64 0] } }, %struct.Ignorelist { ptr @.str.201, %"class.clang::SanitizerMask" { [2 x i64] [i64 65536, i64 0] } }, %struct.Ignorelist { ptr @.str.202, %"class.clang::SanitizerMask" { [2 x i64] [i64 32768, i64 0] } }, %struct.Ignorelist { ptr @.str.203, %"class.clang::SanitizerMask" { [2 x i64] [i64 16384, i64 0] } }, %struct.Ignorelist { ptr @.str.204, %"class.clang::SanitizerMask" { [2 x i64] [i64 140737488355328, i64 0] } }, %struct.Ignorelist { ptr @.str.205, %"class.clang::SanitizerMask" { [2 x i64] [i64 35465847065542656, i64 0] } }, %struct.Ignorelist { ptr @.str.206, %"class.clang::SanitizerMask" { [2 x i64] [i64 0, i64 1024] } }, %struct.Ignorelist { ptr @.str.207, %"class.clang::SanitizerMask" { [2 x i64] [i64 6917668657027350528, i64 1] } }], align 16
@.str.208 = private unnamed_addr constant [6 x i8] c"share\00", align 1
@.str.210 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.211 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.212 = private unnamed_addr constant [26 x i8] c"--linker-option=/include:\00", align 1
@.str.213 = private unnamed_addr constant [5 x i8] c"+mte\00", align 1

@_ZN5clang6driver13SanitizerArgsC1ERKNS0_9ToolChainERKN4llvm3opt7ArgListEbbNS_9BoundArchENS0_6Action11OffloadKindE = unnamed_addr alias void (ptr, ptr, ptr, i1, i1, ptr, i32), ptr @_ZN5clang6driver13SanitizerArgsC2ERKNS0_9ToolChainERKN4llvm3opt7ArgListEbbNS_9BoundArchENS0_6Action11OffloadKindE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang6driver13SanitizerArgs23needsFuzzerInterceptorsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(378) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 37889
  %i.b = icmp eq i64 %i.a, 4096
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang6driver13SanitizerArgs12needsUbsanRtEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(378) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 262161
  %i.b = icmp eq i64 %i.a, 262144
  %i.c = and i64 %.sroa.0.0.copyload.i.i, 140737488471057
  %i.d = icmp ne i64 %i.c, 0
  %or.cond31 = or i1 %i.d, %i.b
  br i1 %or.cond31, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 35465847065542656
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8
  %i.g = xor i64 %.sroa.0.0.copyload.i, -1        ; 2 uses
  %i.h = and i64 %i.e, %i.g
  %.not.i.i = icmp ne i64 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 262
  %i.j = load i8, ptr %i.i, align 2, !range !23
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.m = load i8, ptr %i.l, align 4, !range !23
  %i.n = trunc nuw i8 %i.m to i1
  %not.or.cond.i = xor i1 %or.cond.i, true
  %i.o = select i1 %not.or.cond.i, i1 true, i1 %i.n
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !24 ; 2 uses
  %i.p = and i64 %.sroa.2.0.copyload.i.i, 512
  %.not = icmp eq i64 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = load i8, ptr %i.q, align 8, !range !23
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = and i64 %.sroa.0.0.copyload.i.i, 6953134504092893184
  %i.u = and i64 %.sroa.2.0.copyload.i.i, 201
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !24
  %i.v = xor i64 %.sroa.2.0.copyload, -1
  %i.w = and i64 %i.t, %i.g
  %i.x = and i64 %i.u, %i.v
  %.not.i = icmp ne i64 %i.w, 0
  %i.y = icmp ne i64 %i.x, 0
  %i.z = select i1 %.not.i, i1 true, i1 %i.y
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.ac = icmp ne i32 %i.ab, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ %i.ac, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang6driver13SanitizerArgs22needsCfiCrossDsoDiagRtEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(378) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8
  %i.a = and i64 %.sroa.01.0.copyload, 35465847065542656
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8
  %i.c = xor i64 %.sroa.0.0.copyload, -1
  %i.d = and i64 %i.a, %i.c
  %.not.i = icmp ne i64 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 262
  %i.f = load i8, ptr %i.e, align 2, !range !23
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not.i, i1 %i.g, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.i = load i8, ptr %i.h, align 4, !range !23
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = xor i1 %i.j, true
  %i.l = select i1 %or.cond, i1 %i.k, i1 false
  ret i1 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang6driver13SanitizerArgs15needsUbsanCXXRtEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(378) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 8
  %i.a = and i64 %.sroa.01.0.copyload, 35483439251587072
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8
  %i.c = xor i64 %.sroa.0.0.copyload, -1
  %i.d = and i64 %i.a, %i.c
  %.not.i = icmp ne i64 %i.d, 0
  ret i1 %.not.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang6driver13SanitizerArgs18needsCfiCrossDsoRtEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(378) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.01.0.copyload.i = load i64, ptr %0, align 8
  %i.a = and i64 %.sroa.01.0.copyload.i, 35465847065542656
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8
  %i.c = xor i64 %.sroa.0.0.copyload.i, -1
  %i.d = and i64 %i.a, %i.c
  %.not.i.i = icmp ne i64 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 262
  %i.f = load i8, ptr %i.e, align 2, !range !23
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond.i = select i1 %.not.i.i, i1 %i.g, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.i = load i8, ptr %i.h, align 4, !range !23
  %i.j = trunc nuw i8 %i.i to i1
  %1 = xor i1 %i.j, true
  %not.or.cond.i = xor i1 %or.cond.i, true
  %i.k = select i1 %not.or.cond.i, i1 %i.g, i1 false
  %i.l = select i1 %i.k, i1 %1, i1 false
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang6driver13SanitizerArgs11requiresPIEEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(378) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 322
  %i.b = load i8, ptr %i.a, align 2, !tbaa !48, !range !23, !noundef !49
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang6driver13SanitizerArgs17needsUnwindTablesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(378) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %i.a = and i64 %.sroa.0.0.copyload, 140737488471057
  %.not.i = icmp ne i64 %i.a, 0
  ret i1 %.not.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang6driver13SanitizerArgs8needsLTOEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(378) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %i.a = and i64 %.sroa.0.0.copyload, 35465847065542656
  %.not.i = icmp ne i64 %i.a, 0
  ret i1 %.not.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6driver13SanitizerArgsC2ERKNS0_9ToolChainERKN4llvm3opt7ArgListEbbNS_9BoundArchENS0_6Action11OffloadKindE(ptr noundef nonnull align 8 dereferenceable(378) initializes((0, 267), (268, 281), (284, 288)) %0, ptr noundef nonnull align 8 dereferenceable(2568) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef readonly byval(%"struct.clang::BoundArch") align 8 captures(none) %5, i32 noundef %6) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %8 = alloca [2 x %"class.llvm::opt::OptSpecifier"], align 4 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 17 uses
  %10 = alloca [1 x %"class.llvm::opt::OptSpecifier"], align 4 ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.llvm::SmallString", align 8 ; 13 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %20 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 17 uses
  %21 = alloca %"struct.clang::BoundArch", align 8 ; 2 uses
  %22 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %27 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %28 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %32 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %33 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %34 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %36 = alloca %"struct.clang::SanitizerSet", align 8 ; 5 uses
  %37 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %40 = alloca %"struct.clang::SanitizerSet", align 8 ; 5 uses
  %41 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %44 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %46 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %48 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %49 = alloca [14 x %"struct.std::pair"], align 16 ; 44 uses
  %50 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %52 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %54 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %56 = alloca %"struct.clang::SanitizerSet", align 8 ; 5 uses
  %57 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %60 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %63 = alloca %"class.clang::SanitizerMaskCutoffs", align 16 ; 9 uses
  %64 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %66 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %69 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 13 uses
  %70 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %71 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %73 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %75 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 10 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %77 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %78 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %79 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %80 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 10 uses
  %81 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 10 uses
  %82 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 10 uses
  %83 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %84 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %86 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %89 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %90 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %91 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %92 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %94 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 18 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %0, i8 0, i64 260, i1 false)
  store i8 1, ptr %i.s, align 4, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 261 ; 3 uses
  store i8 1, ptr %i.t, align 1, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 262 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 263 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  store i32 0, ptr %i.z, align 4, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store i8 0, ptr %i.aa, align 8, !tbaa !401
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 273 ; 2 uses
  store i8 0, ptr %i.ab, align 1, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 274 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.u, i8 0, i64 5, i1 false)
  store i8 1, ptr %i.ac, align 2, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 275 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 277
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 278
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 279
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ad, i8 0, i64 6, i1 false)
  store i32 2, ptr %i.aj, align 4, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  store i64 0, ptr %i.am, align 8, !tbaa !57
  store i8 0, ptr %i.al, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i8 1, ptr %i.an, align 8, !tbaa !402
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 321 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 322 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 323
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 325 ; 3 uses
  store i32 0, ptr %i.ao, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 326 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 327 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.as, align 1, !tbaa !403
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 329 ; 2 uses
  store i8 0, ptr %i.aw, align 1, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 330 ; 3 uses
  store i8 1, ptr %i.ax, align 2, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 331 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 334 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store i32 0, ptr %i.ay, align 1
  store i32 3, ptr %i.bb, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !56
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
end_hunk_0
