inline.NumInlined: 195
inline.NumDeleted: 46
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.google::AbbrevPair" = type { ptr, ptr }
%"struct.google::State" = type { ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8 }

@.str.1 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@_ZN6googleL17kSubstitutionListE = internal unnamed_addr constant [8 x %"struct.google::AbbrevPair"] [%"struct.google::AbbrevPair" { ptr @.str.6, ptr @.str.7 }, %"struct.google::AbbrevPair" { ptr @.str.8, ptr @.str.9 }, %"struct.google::AbbrevPair" { ptr @.str.10, ptr @.str.11 }, %"struct.google::AbbrevPair" { ptr @.str.12, ptr @.str.13 }, %"struct.google::AbbrevPair" { ptr @.str.14, ptr @.str.15 }, %"struct.google::AbbrevPair" { ptr @.str.16, ptr @.str.17 }, %"struct.google::AbbrevPair" { ptr @.str.18, ptr @.str.19 }, %"struct.google::AbbrevPair" zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"St\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"Sa\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"allocator\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"Sb\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"Ss\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"Si\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"istream\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"So\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"ostream\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"Sd\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"iostream\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"(anonymous namespace)\00", align 1
@_ZZN6googleL30IdentifierIsAnonymousNamespaceEPNS_5StateEiE11anon_prefix = internal unnamed_addr constant [12 x i8] c"_GLOBAL__N_\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZN6googleL16kBuiltinTypeListE = internal unnamed_addr constant [22 x %"struct.google::AbbrevPair"] [%"struct.google::AbbrevPair" { ptr @.str.27, ptr @.str.28 }, %"struct.google::AbbrevPair" { ptr @.str.29, ptr @.str.30 }, %"struct.google::AbbrevPair" { ptr @.str.31, ptr @.str.32 }, %"struct.google::AbbrevPair" { ptr @.str.33, ptr @.str.34 }, %"struct.google::AbbrevPair" { ptr @.str.35, ptr @.str.36 }, %"struct.google::AbbrevPair" { ptr @.str.37, ptr @.str.38 }, %"struct.google::AbbrevPair" { ptr @.str.39, ptr @.str.40 }, %"struct.google::AbbrevPair" { ptr @.str.41, ptr @.str.42 }, %"struct.google::AbbrevPair" { ptr @.str.43, ptr @.str.44 }, %"struct.google::AbbrevPair" { ptr @.str.45, ptr @.str.46 }, %"struct.google::AbbrevPair" { ptr @.str.47, ptr @.str.48 }, %"struct.google::AbbrevPair" { ptr @.str.49, ptr @.str.50 }, %"struct.google::AbbrevPair" { ptr @.str.51, ptr @.str.52 }, %"struct.google::AbbrevPair" { ptr @.str.53, ptr @.str.54 }, %"struct.google::AbbrevPair" { ptr @.str.55, ptr @.str.56 }, %"struct.google::AbbrevPair" { ptr @.str.57, ptr @.str.58 }, %"struct.google::AbbrevPair" { ptr @.str.59, ptr @.str.60 }, %"struct.google::AbbrevPair" { ptr @.str.61, ptr @.str.62 }, %"struct.google::AbbrevPair" { ptr @.str.63, ptr @.str.64 }, %"struct.google::AbbrevPair" { ptr @.str.65, ptr @.str.66 }, %"struct.google::AbbrevPair" { ptr @.str.67, ptr @.str.68 }, %"struct.google::AbbrevPair" zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"__int128\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"unsigned __int128\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"__float128\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"ellipsis\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"operator \00", align 1
@_ZN6googleL13kOperatorListE = internal unnamed_addr constant [50 x %"struct.google::AbbrevPair"] [%"struct.google::AbbrevPair" { ptr @.str.76, ptr @.str.77 }, %"struct.google::AbbrevPair" { ptr @.str.78, ptr @.str.79 }, %"struct.google::AbbrevPair" { ptr @.str.80, ptr @.str.81 }, %"struct.google::AbbrevPair" { ptr @.str.82, ptr @.str.83 }, %"struct.google::AbbrevPair" { ptr @.str.84, ptr @.str.85 }, %"struct.google::AbbrevPair" { ptr @.str.86, ptr @.str.87 }, %"struct.google::AbbrevPair" { ptr @.str.88, ptr @.str.89 }, %"struct.google::AbbrevPair" { ptr @.str.90, ptr @.str.91 }, %"struct.google::AbbrevPair" { ptr @.str.92, ptr @.str.93 }, %"struct.google::AbbrevPair" { ptr @.str.94, ptr @.str.85 }, %"struct.google::AbbrevPair" { ptr @.str.95, ptr @.str.87 }, %"struct.google::AbbrevPair" { ptr @.str.96, ptr @.str.91 }, %"struct.google::AbbrevPair" { ptr @.str.97, ptr @.str.98 }, %"struct.google::AbbrevPair" { ptr @.str.99, ptr @.str.100 }, %"struct.google::AbbrevPair" { ptr @.str.101, ptr @.str.89 }, %"struct.google::AbbrevPair" { ptr @.str.102, ptr @.str.103 }, %"struct.google::AbbrevPair" { ptr @.str.104, ptr @.str.105 }, %"struct.google::AbbrevPair" { ptr @.str.106, ptr @.str.107 }, %"struct.google::AbbrevPair" { ptr @.str.108, ptr @.str.109 }, %"struct.google::AbbrevPair" { ptr @.str.110, ptr @.str.111 }, %"struct.google::AbbrevPair" { ptr @.str.112, ptr @.str.113 }, %"struct.google::AbbrevPair" { ptr @.str.114, ptr @.str.115 }, %"struct.google::AbbrevPair" { ptr @.str.116, ptr @.str.117 }, %"struct.google::AbbrevPair" { ptr @.str.118, ptr @.str.119 }, %"struct.google::AbbrevPair" { ptr @.str.120, ptr @.str.121 }, %"struct.google::AbbrevPair" { ptr @.str.122, ptr @.str.123 }, %"struct.google::AbbrevPair" { ptr @.str.124, ptr @.str.125 }, %"struct.google::AbbrevPair" { ptr @.str.126, ptr @.str.127 }, %"struct.google::AbbrevPair" { ptr @.str.128, ptr @.str.129 }, %"struct.google::AbbrevPair" { ptr @.str.130, ptr @.str.131 }, %"struct.google::AbbrevPair" { ptr @.str.132, ptr @.str.133 }, %"struct.google::AbbrevPair" { ptr @.str.134, ptr @.str.135 }, %"struct.google::AbbrevPair" { ptr @.str.136, ptr @.str.137 }, %"struct.google::AbbrevPair" { ptr @.str.138, ptr @.str.139 }, %"struct.google::AbbrevPair" { ptr @.str.140, ptr @.str.141 }, %"struct.google::AbbrevPair" { ptr @.str.142, ptr @.str.143 }, %"struct.google::AbbrevPair" { ptr @.str.144, ptr @.str.145 }, %"struct.google::AbbrevPair" { ptr @.str.146, ptr @.str.147 }, %"struct.google::AbbrevPair" { ptr @.str.148, ptr @.str.149 }, %"struct.google::AbbrevPair" { ptr @.str.150, ptr @.str.151 }, %"struct.google::AbbrevPair" { ptr @.str.152, ptr @.str.153 }, %"struct.google::AbbrevPair" { ptr @.str.154, ptr @.str.155 }, %"struct.google::AbbrevPair" { ptr @.str.156, ptr @.str.157 }, %"struct.google::AbbrevPair" { ptr @.str.158, ptr @.str.159 }, %"struct.google::AbbrevPair" { ptr @.str.160, ptr @.str.161 }, %"struct.google::AbbrevPair" { ptr @.str.162, ptr @.str.163 }, %"struct.google::AbbrevPair" { ptr @.str.164, ptr @.str.3 }, %"struct.google::AbbrevPair" { ptr @.str.70, ptr @.str.165 }, %"struct.google::AbbrevPair" { ptr @.str.166, ptr @.str.165 }, %"struct.google::AbbrevPair" zeroinitializer], align 16
@.str.75 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"nw\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"na\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"new[]\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"da\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"delete[]\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"ng\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"ad\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"ml\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"dv\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"eo\00", align 1
@.str.105 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"aS\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"pL\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"mI\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"mL\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"dV\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"rM\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"aN\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"oR\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"eO\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"lS\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"rS\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"oo\00", align 1
@.str.149 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"pp\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.155 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"->*\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"ix\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"qu\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"sz\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"std::\00", align 1
@switch.table._ZN6googleL17ParseSubstitutionEPNS_5StateE = private unnamed_addr constant [20 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL17kSubstitutionListE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL17kSubstitutionListE, i64 32), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL17kSubstitutionListE, i64 96), ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL17kSubstitutionListE, i64 64), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL17kSubstitutionListE, i64 80), ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL17kSubstitutionListE, i64 48), ptr @_ZN6googleL17kSubstitutionListE], align 8

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6google8DemangleEPKcPcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.google::State", align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 -1, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i16 -1, ptr %i.g, align 4, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 46 ; 2 uses
  store i8 1, ptr %i.h, align 2, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 47 ; 4 uses
  store i8 0, ptr %i.i, align 1, !tbaa !19
  %i.j = load i8, ptr %0, align 1, !tbaa !20
  %i.k = icmp eq i8 %i.j, 95
  br i1 %i.k, label %bb.b, label %_ZN6googleL24ParseTopLevelMangledNameEPNS_5StateE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20
  %i.n = icmp eq i8 %i.m, 90
  br i1 %i.n, label %_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.i, label %_ZN6googleL24ParseTopLevelMangledNameEPNS_5StateE.exit

_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.o, ptr %3, align 8, !tbaa !21
  %i.p = call fastcc noundef zeroext i1 @_ZN6googleL13ParseEncodingEPNS_5StateE(ptr noundef nonnull %3), !inline_history !22
  br i1 %i.p, label %bb.c, label %_ZN6googleL24ParseTopLevelMangledNameEPNS_5StateE.exit

bb.c:                                             ; preds = %_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.i
  %i.q = load ptr, ptr %3, align 8, !tbaa !21     ; 8 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !20
  switch i8 %i.r, label %_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.thread.fold.split.i [
    i8 0, label %_ZN6googleL24ParseTopLevelMangledNameEPNS_5StateE.exit
    i8 46, label %.lr.ph.i.i
    i8 64, label %bb.j
  ]

.loopexit.i.i:                                    ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.2.i.i
  switch i8 %i.an, label %_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.thread.fold.split.i [
    i8 46, label %.lr.ph.i.i
    i8 0, label %_ZN6googleL24ParseTopLevelMangledNameEPNS_5StateE.exit
  ]

.lr.ph.i.i:                                       ; preds = %bb.c, %.loopexit.i.i
  %i.t = phi ptr [ %i.s, %.loopexit.i.i ], [ %i.q, %bb.c ]
  %.026.i.i = phi i64 [ %.2.i.i, %.loopexit.i.i ], [ 0, %bb.c ]
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %i.w = and i8 %i.v, -33
  %i.x = add i8 %i.w, -65
  %i.y = icmp ult i8 %i.x, 26
  br i1 %i.y, label %bb.d, label %_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.thread.fold.split.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = add i64 %.026.i.i, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.1.i.i = phi i64 [ %i.z, %bb.d ], [ %i.af, %bb.e ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20  ; 2 uses
  %i.ac = and i8 %i.ab, -33
  %i.ad = add i8 %i.ac, -65
  %i.ae = icmp ult i8 %i.ad, 26
  %i.af = add i64 %.1.i.i, 1
  br i1 %i.ae, label %bb.e, label %bb.f, !llvm.loop !23

bb.f:                                             ; preds = %bb.e
  %.not21.i.i = icmp eq i8 %i.ab, 46
  br i1 %.not21.i.i, label %bb.g, label %_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.thread.fold.split.i

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1.i.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20
  %i.aj = add i8 %i.ai, -48
  %i.ak = icmp ult i8 %i.aj, 10
  br i1 %i.ak, label %bb.h, label %_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.thread.fold.split.i

bb.h:                                             ; preds = %bb.g
  %i.al = add i64 %.1.i.i, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.2.i.i = phi i64 [ %i.al, %bb.h ], [ %i.aq, %bb.i ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 %.2.i.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !20  ; 2 uses
  %i.ao = add i8 %i.an, -48
  %i.ap = icmp ult i8 %i.ao, 10
  %i.aq = add i64 %.2.i.i, 1
  br i1 %i.ap, label %bb.i, label %.loopexit.i.i, !llvm.loop !25

bb.j:                                             ; preds = %bb.c
  %i.ar = load i8, ptr %i.h, align 2, !tbaa !18, !range !26, !noundef !27
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN6googleL6StrLenEPKc.exit.i, label %_ZN6googleL24ParseTopLevelMangledNameEPNS_5StateE.exit

_ZN6googleL6StrLenEPKc.exit.i:                    ; preds = %bb.j
  %scevgep.i.i = getelementptr i8, ptr %i.q, i64 1
  %strlen.i.i = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %scevgep.i.i) ; 2 uses
  %i.at = trunc i64 %strlen.i.i to i32
  %i.au = icmp ult i32 %i.at, 2147483647
  br i1 %i.au, label %_ZN6googleL6AppendEPNS_5StateEPKci.exit.i.i, label %_ZN6googleL24ParseTopLevelMangledNameEPNS_5StateE.exit

_ZN6googleL6AppendEPNS_5StateEPKci.exit.i.i:      ; preds = %_ZN6googleL6StrLenEPKc.exit.i
  %i.av = add nuw nsw i64 %strlen.i.i, 1
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !7
  %wide.trip.count.i.i.i = and i64 %i.av, 4294967295
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_ZN6googleL6AppendEPNS_5StateEPKci.exit.i.i
  %i.ax = phi ptr [ %i.aw, %_ZN6googleL6AppendEPNS_5StateEPKci.exit.i.i ], [ %i.be, %bb.l ] ; 2 uses
  %indvars.iv.i18.i.i = phi i64 [ 0, %_ZN6googleL6AppendEPNS_5StateEPKci.exit.i.i ], [ %indvars.iv.next.i20.i.i, %bb.l ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.ba = icmp ult ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.l, label %.loopexit.thread.i19.i.i

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i18.i.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !20
  store i8 %i.bc, ptr %i.ax, align 1, !tbaa !20
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 3 uses
  store ptr %i.be, ptr %i.a, align 8, !tbaa !7
  %indvars.iv.next.i20.i.i = add nuw nsw i64 %indvars.iv.i18.i.i, 1 ; 2 uses
  %exitcond.not.i21.i.i = icmp eq i64 %indvars.iv.next.i20.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i21.i.i, label %.loopexit.i22.i.i, label %bb.k, !llvm.loop !28

.loopexit.thread.i19.i.i:                         ; preds = %bb.k
  store i8 1, ptr %i.i, align 1, !tbaa !19
  br label %_ZN6googleL24ParseTopLevelMangledNameEPNS_5StateE.exit

.loopexit.i22.i.i:                                ; preds = %bb.l
  %.pre13.i24.i.i = load i8, ptr %i.i, align 1, !tbaa !19, !range !26
  %i.bf = trunc nuw i8 %.pre13.i24.i.i to i1
  br i1 %i.bf, label %_ZN6googleL24ParseTopLevelMangledNameEPNS_5StateE.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit.i22.i.i
  store i8 0, ptr %i.be, align 1, !tbaa !20
  br label %_ZN6googleL24ParseTopLevelMangledNameEPNS_5StateE.exit

_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.thread.fold.split.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i, %.loopexit.i.i, %bb.c
  br label %_ZN6googleL24ParseTopLevelMangledNameEPNS_5StateE.exit

_ZN6googleL24ParseTopLevelMangledNameEPNS_5StateE.exit: ; preds = %.loopexit.i.i, %bb.m, %.loopexit.i22.i.i, %.loopexit.thread.i19.i.i, %_ZN6googleL6StrLenEPKc.exit.i, %bb.j, %bb.a, %bb.b, %_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.i, %bb.c, %_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.thread.fold.split.i
  %.0.i = phi i1 [ true, %bb.c ], [ true, %bb.m ], [ false, %_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.thread.fold.split.i ], [ false, %bb.a ], [ false, %_ZN6googleL16ParseMangledNameEPNS_5StateE.exit.i ], [ false, %bb.b ], [ true, %bb.j ], [ true, %_ZN6googleL6StrLenEPKc.exit.i ], [ true, %.loopexit.thread.i19.i.i ], [ true, %.loopexit.i22.i.i ], [ true, %.loopexit.i.i ]
  %i.bg = load i8, ptr %i.i, align 1, !range !26
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = xor i1 %i.bh, true
  %i.bj = select i1 %.0.i, i1 %i.bi, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret i1 %i.bj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN6googleL11MaybeAppendEPNS_5StateEPKc(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.b = load i8, ptr %i.a, align 2, !tbaa !18, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6googleL21MaybeAppendWithLengthEPNS_5StateEPKci.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !20      ; 3 uses
  %.not4.i = icmp eq i8 %i.d, 0
  br i1 %.not4.i, label %_ZN6googleL21MaybeAppendWithLengthEPNS_5StateEPKci.exit, label %_ZN6googleL6StrLenEPKc.exit

_ZN6googleL6StrLenEPKc.exit:                      ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %scevgep.i)
  %i.e = trunc i64 %strlen.i to i32               ; 2 uses
  %i.f = add i32 %i.e, 1                          ; 2 uses
  %i.g = icmp ult i32 %i.e, 2147483647
  br i1 %i.g, label %bb.c, label %_ZN6googleL21MaybeAppendWithLengthEPNS_5StateEPKci.exit

bb.c:                                             ; preds = %_ZN6googleL6StrLenEPKc.exit
  %i.h = icmp eq i8 %i.d, 60
  br i1 %i.h, label %bb.d, label %_ZN6googleL6AppendEPNS_5StateEPKci.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_ZN6googleL9ParseNameEPNS_5StateE:bb.a

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !29
  store ptr %i.ap, ptr %0, align 8, !tbaa !21
  %i.bc = load i8, ptr %i.ap, align 1, !tbaa !20  ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 110
  br i1 %i.bd, label %bb.p, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 2 ; 3 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !21
  %.pre.i.i.i.i = load i8, ptr %i.be, align 1, !tbaa !20
  br label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i.i.i.i

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %i.bf = phi i8 [ %i.bc, %bb.o ], [ %.pre.i.i.i.i, %bb.p ]
  %i.bg = phi ptr [ %i.ap, %bb.o ], [ %i.be, %bb.p ]
  %i.bh = add i8 %i.bf, -48
  %i.bi = icmp ult i8 %i.bh, 10
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %bb.u

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.01522.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.bg, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i.i.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01522.i.i.i.i, i64 1 ; 4 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !20
  %i.bl = add i8 %i.bk, -48
  %i.bm = icmp ult i8 %i.bl, 10
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %bb.q, !llvm.loop !37

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  store ptr %i.bj, ptr %0, align 8, !tbaa !21
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !20
  %i.bo = icmp eq i8 %i.bn, 95
  br i1 %i.bo, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.01522.i.i.i.i, i64 2
  store ptr %i.bp, ptr %0, align 8, !tbaa !21
  %i.bq = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !18, !range !26, !noundef !27
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.s, label %_ZN6googleL18ParseTemplateParamEPNS_5StateE.exit.i.i.thread217

bb.s:                                             ; preds = %bb.r
  %i.bs = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %.loopexit.i22.i.i110, label %.loopexit.thread.i19.i.i107

.loopexit.i22.i.i110:                             ; preds = %bb.s
  store i8 63, ptr %i.bs, align 1, !tbaa !20
  %i.bw = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 2 uses
  store ptr %i.bx, ptr %i.q, align 8, !tbaa !7
  %.pre13.i24.i.i112 = load i8, ptr %i.s, align 1, !tbaa !19, !range !26
  %i.by = trunc nuw i8 %.pre13.i24.i.i112 to i1
  br i1 %i.by, label %_ZN6googleL18ParseTemplateParamEPNS_5StateE.exit.i.i.thread217, label %bb.t

.loopexit.thread.i19.i.i107:                      ; preds = %bb.s
  store i8 1, ptr %i.s, align 1, !tbaa !19
  br label %_ZN6googleL18ParseTemplateParamEPNS_5StateE.exit.i.i.thread217

bb.t:                                             ; preds = %.loopexit.i22.i.i110
  store i8 0, ptr %i.bx, align 1, !tbaa !20
  br label %_ZN6googleL18ParseTemplateParamEPNS_5StateE.exit.i.i.thread217

_ZN6googleL18ParseTemplateParamEPNS_5StateE.exit.i.i.thread217: ; preds = %bb.r, %.loopexit.thread.i19.i.i107, %.loopexit.i22.i.i110, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZN6googleL18ParseTemplateParamEPNS_5StateE.exit.i.i.thread

bb.u:                                             ; preds = %bb.q, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i.i.i.i, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %13, i64 48, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.bz = load ptr, ptr %0, align 8, !tbaa !21    ; 5 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !20
  %i.cb = icmp eq i8 %i.ca, 83
  br i1 %i.cb, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !20
  %i.ce = icmp eq i8 %i.cd, 95
  br i1 %i.ce, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store ptr %i.cf, ptr %0, align 8, !tbaa !21
  %i.cg = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !18, !range !26, !noundef !27
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.x, label %_ZN6googleL18ParseTemplateParamEPNS_5StateE.exit.i.i.thread

bb.x:                                             ; preds = %bb.w
  %i.ci = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.cl = icmp ult ptr %i.cj, %i.ck
  br i1 %i.cl, label %.loopexit.i22.i.i96, label %.loopexit.thread.i19.i.i93

.loopexit.i22.i.i96:                              ; preds = %bb.x
  store i8 63, ptr %i.ci, align 1, !tbaa !20
  %i.cm = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  store ptr %i.cn, ptr %i.q, align 8, !tbaa !7
  %.pre13.i24.i.i98 = load i8, ptr %i.s, align 1, !tbaa !19, !range !26
  %i.co = trunc nuw i8 %.pre13.i24.i.i98 to i1
  br i1 %i.co, label %_ZN6googleL18ParseTemplateParamEPNS_5StateE.exit.i.i.thread, label %bb.y

.loopexit.thread.i19.i.i93:                       ; preds = %bb.x
  store i8 1, ptr %i.s, align 1, !tbaa !19
  br label %_ZN6googleL18ParseTemplateParamEPNS_5StateE.exit.i.i.thread

bb.y:                                             ; preds = %.loopexit.i22.i.i96
  store i8 0, ptr %i.cn, align 1, !tbaa !20
  br label %_ZN6googleL18ParseTemplateParamEPNS_5StateE.exit.i.i.thread

bb.z:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !29
  br label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i11.i.i

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !29
  store ptr %i.cc, ptr %0, align 8, !tbaa !21
  %i.cp = load i8, ptr %i.cc, align 1, !tbaa !20  ; 2 uses
  %.not15.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not15.i.i.i.i, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i11.i.i, label %.lr.ph.i.i13.i.i

.lr.ph.i.i13.i.i:                                 ; preds = %bb.aa, %bb.ab
  %i.cq = phi i8 [ %i.cu, %bb.ab ], [ %i.cp, %bb.aa ] ; 2 uses
  %.016.i.idx.i.i.i = phi i64 [ %.016.i.add.i.i.i, %bb.ab ], [ 1, %bb.aa ] ; 3 uses
  %i.cr = add i8 %i.cq, -48
  %i.cs = icmp ult i8 %i.cr, 10
  %i.ct = add i8 %i.cq, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.ct, 26
  %or.cond14.i.i.i.i = or i1 %i.cs, %or.cond.i.i.i.i
  br i1 %or.cond14.i.i.i.i, label %bb.ab, label %._crit_edge.i.i.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i13.i.i
  %.016.i.add.i.i.i = add nuw nsw i64 %.016.i.idx.i.i.i, 1 ; 3 uses
  %.ptr30.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.016.i.add.i.i.i
  %i.cu = load i8, ptr %.ptr30.i.i.i, align 1, !tbaa !20 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i13.i.i, !llvm.loop !38

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i13.i.i
  %.not13.not.i.i.i.i = icmp eq i64 %.016.i.idx.i.i.i, 1
  br i1 %.not13.not.i.i.i.i, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i11.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.ab, %._crit_edge.i.i.i.i
  %.016.i.idx.pn.i.i.i = phi i64 [ %.016.i.idx.i.i.i, %._crit_edge.i.i.i.i ], [ %.016.i.add.i.i.i, %bb.ab ]
  %.0.lcssa22.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.016.i.idx.pn.i.i.i ; 3 uses
  store ptr %.0.lcssa22.i.i.i.i, ptr %0, align 8, !tbaa !21
  %i.cv = load i8, ptr %.0.lcssa22.i.i.i.i, align 1, !tbaa !20
  %i.cw = icmp eq i8 %i.cv, 95
  br i1 %i.cw, label %bb.ac, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i11.i.i

bb.ac:                                            ; preds = %.loopexit.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa22.i.i.i.i, i64 1
  store ptr %i.cx, ptr %0, align 8, !tbaa !21
  %i.cy = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !18, !range !26, !noundef !27
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ad, label %_ZN6googleL17ParseSubstitutionEPNS_5StateE.exit.i.i.thread221

bb.ad:                                            ; preds = %bb.ac
  %i.da = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.dd = icmp ult ptr %i.db, %i.dc
  br i1 %i.dd, label %.loopexit.i22.i.i345, label %.loopexit.thread.i19.i.i344

.loopexit.i22.i.i345:                             ; preds = %bb.ad
  store i8 63, ptr %i.da, align 1, !tbaa !20
  %i.de = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  store ptr %i.df, ptr %i.q, align 8, !tbaa !7
  %.pre13.i24.i.i346 = load i8, ptr %i.s, align 1, !tbaa !19, !range !26
  %i.dg = trunc nuw i8 %.pre13.i24.i.i346 to i1
  br i1 %i.dg, label %_ZN6googleL17ParseSubstitutionEPNS_5StateE.exit.i.i.thread221, label %bb.ae

.loopexit.thread.i19.i.i344:                      ; preds = %bb.ad
  store i8 1, ptr %i.s, align 1, !tbaa !19
  br label %_ZN6googleL17ParseSubstitutionEPNS_5StateE.exit.i.i.thread221

bb.ae:                                            ; preds = %.loopexit.i22.i.i345
  store i8 0, ptr %i.df, align 1, !tbaa !20
  br label %_ZN6googleL17ParseSubstitutionEPNS_5StateE.exit.i.i.thread221

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i11.i.i: ; preds = %.loopexit.i.i.i, %._crit_edge.i.i.i.i, %bb.aa, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %12, i64 48, i1 false), !tbaa.struct !29
  %i.dh = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20
  %i.dj = icmp eq i8 %i.di, 83
  br i1 %i.dj, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit27.i.i.i, label %bb.ay

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit27.i.i.i: ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i11.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 1 ; 2 uses
  store ptr %i.dk, ptr %0, align 8, !tbaa !21
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !20
  %switch.tableidx = add i8 %i.dl, -97            ; 3 uses
  %15 = icmp ult i8 %switch.tableidx, 20
  br i1 %15, label %.fold.split43.i.i.i, label %bb.ay

.fold.split43.i.i.i:                              ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit27.i.i.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 803083, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %bb.af, label %bb.ay

bb.af:                                            ; preds = %.fold.split43.i.i.i
  %16 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6googleL17ParseSubstitutionEPNS_5StateE, i64 %16
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.dm = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !18, !range !26, !noundef !27
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ag, label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit85

bb.ag:                                            ; preds = %bb.af
  %i.do = load ptr, ptr %i.q, align 8, !tbaa !7   ; 3 uses
  store ptr %i.do, ptr %i.t, align 8, !tbaa !15
  store i32 3, ptr %i.u, align 8, !tbaa !16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dq = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.dr = icmp ult ptr %i.dp, %i.dq
  br i1 %i.dr, label %bb.ah, label %.loopexit.thread.i19.i.i79

bb.ah:                                            ; preds = %bb.ag
  store i8 115, ptr %i.do, align 1, !tbaa !20
  %i.ds = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.dt, ptr %i.q, align 8, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.dv = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.dw = icmp ult ptr %i.du, %i.dv
  br i1 %i.dw, label %bb.ai, label %.loopexit.thread.i19.i.i79

bb.ai:                                            ; preds = %bb.ah
  store i8 116, ptr %i.dt, align 1, !tbaa !20
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 2 uses
  store ptr %i.dy, ptr %i.q, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.ea = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.eb = icmp ult ptr %i.dz, %i.ea
  br i1 %i.eb, label %.loopexit.i22.i.i82, label %.loopexit.thread.i19.i.i79

.loopexit.i22.i.i82:                              ; preds = %bb.ai
  store i8 100, ptr %i.dy, align 1, !tbaa !20
  %i.ec = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1 ; 2 uses
  store ptr %i.ed, ptr %i.q, align 8, !tbaa !7
  %.pre13.i24.i.i84 = load i8, ptr %i.s, align 1, !tbaa !19, !range !26
  %i.ee = trunc nuw i8 %.pre13.i24.i.i84 to i1
  br i1 %i.ee, label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit85, label %bb.aj

.loopexit.thread.i19.i.i79:                       ; preds = %bb.ai, %bb.ah, %bb.ag
  store i8 1, ptr %i.s, align 1, !tbaa !19
  br label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit85

bb.aj:                                            ; preds = %.loopexit.i22.i.i82
  store i8 0, ptr %i.ed, align 1, !tbaa !20
  br label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit85

_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit85:   ; preds = %bb.af, %.loopexit.thread.i19.i.i79, %.loopexit.i22.i.i82, %bb.aj
  %i.ef = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !39 ; 5 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !20
  %.not24.i.i.i = icmp eq i8 %i.eh, 0
  br i1 %.not24.i.i.i, label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit57, label %bb.ak

bb.ak:                                            ; preds = %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit85
  %i.ei = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !18, !range !26, !noundef !27
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.al, label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit71

bb.al:                                            ; preds = %bb.ak
  %i.ek = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.em = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.en = icmp ult ptr %i.el, %i.em
  br i1 %i.en, label %bb.am, label %.loopexit.thread.i19.i.i65

bb.am:                                            ; preds = %bb.al
  store i8 58, ptr %i.ek, align 1, !tbaa !20
  %i.eo = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1 ; 2 uses
  store ptr %i.ep, ptr %i.q, align 8, !tbaa !7
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.er = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.es = icmp ult ptr %i.eq, %i.er
  br i1 %i.es, label %.loopexit.i22.i.i68, label %.loopexit.thread.i19.i.i65

.loopexit.i22.i.i68:                              ; preds = %bb.am
  store i8 58, ptr %i.ep, align 1, !tbaa !20
  %i.et = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1 ; 2 uses
  store ptr %i.eu, ptr %i.q, align 8, !tbaa !7
  %.pre13.i24.i.i70 = load i8, ptr %i.s, align 1, !tbaa !19, !range !26
  %i.ev = trunc nuw i8 %.pre13.i24.i.i70 to i1
  br i1 %i.ev, label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit71, label %bb.an

.loopexit.thread.i19.i.i65:                       ; preds = %bb.am, %bb.al
  store i8 1, ptr %i.s, align 1, !tbaa !19
  br label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit71

bb.an:                                            ; preds = %.loopexit.i22.i.i68
  store i8 0, ptr %i.eu, align 1, !tbaa !20
  br label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit71

_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit71:   ; preds = %bb.ak, %.loopexit.thread.i19.i.i65, %.loopexit.i22.i.i68, %bb.an
  %i.ew = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !18, !range !26, !noundef !27
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ao, label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit57

bb.ao:                                            ; preds = %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit71
  %i.ey = load i8, ptr %i.eg, align 1, !tbaa !20  ; 3 uses
  %.not4.i.i = icmp eq i8 %i.ey, 0
  br i1 %.not4.i.i, label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit57, label %_ZN6googleL6StrLenEPKc.exit.i

_ZN6googleL6StrLenEPKc.exit.i:                    ; preds = %bb.ao
  %scevgep.i.i = getelementptr i8, ptr %i.eg, i64 1
  %strlen.i.i47 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %scevgep.i.i)
  %i.ez = trunc i64 %strlen.i.i47 to i32          ; 2 uses
  %i.fa = add i32 %i.ez, 1                        ; 2 uses
  %i.fb = icmp ult i32 %i.ez, 2147483647
  br i1 %i.fb, label %bb.ap, label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit57

bb.ap:                                            ; preds = %_ZN6googleL6StrLenEPKc.exit.i
  %i.fc = icmp eq i8 %i.ey, 60
  %.pre286 = load ptr, ptr %i.q, align 8, !tbaa !7 ; 8 uses
  br i1 %i.fc, label %bb.aq, label %_ZN6googleL6AppendEPNS_5StateEPKci.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fd = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.fe = icmp ult ptr %i.fd, %.pre286
  br i1 %i.fe, label %bb.ar, label %_ZN6googleL6AppendEPNS_5StateEPKci.exitthread-pre-split.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.ff = getelementptr inbounds i8, ptr %.pre286, i64 -1
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !20
  %i.fh = icmp eq i8 %i.fg, 60
  br i1 %i.fh, label %bb.as, label %_ZN6googleL6AppendEPNS_5StateEPKci.exitthread-pre-split.i.i

bb.as:                                            ; preds = %bb.ar
  %i.fi = getelementptr inbounds nuw i8, ptr %.pre286, i64 1
  %i.fj = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.fk = icmp ult ptr %i.fi, %i.fj
  br i1 %i.fk, label %.loopexit.i.i.i56, label %.loopexit.thread.i.i.i

.loopexit.i.i.i56:                                ; preds = %bb.as
  store i8 32, ptr %.pre286, align 1, !tbaa !20
  %i.fl = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1 ; 3 uses
  store ptr %i.fm, ptr %i.q, align 8, !tbaa !7
  %.pre13.i.i.i = load i8, ptr %i.s, align 1, !tbaa !19, !range !26
  %i.fn = trunc nuw i8 %.pre13.i.i.i to i1
  br i1 %i.fn, label %_ZN6googleL6AppendEPNS_5StateEPKci.exitthread-pre-split.i.i, label %bb.at

.loopexit.thread.i.i.i:                           ; preds = %bb.as
  store i8 1, ptr %i.s, align 1, !tbaa !19
  br label %_ZN6googleL6AppendEPNS_5StateEPKci.exitthread-pre-split.i.i

bb.at:                                            ; preds = %.loopexit.i.i.i56
  store i8 0, ptr %i.fm, align 1, !tbaa !20
  %.pre285.pre = load ptr, ptr %i.q, align 8, !tbaa !7
  br label %_ZN6googleL6AppendEPNS_5StateEPKci.exitthread-pre-split.i.i

_ZN6googleL6AppendEPNS_5StateEPKci.exitthread-pre-split.i.i: ; preds = %bb.at, %.loopexit.thread.i.i.i, %.loopexit.i.i.i56, %bb.ar, %bb.aq
  %.pre285 = phi ptr [ %.pre285.pre, %bb.at ], [ %.pre286, %.loopexit.thread.i.i.i ], [ %i.fm, %.loopexit.i.i.i56 ], [ %.pre286, %bb.ar ], [ %.pre286, %bb.aq ]
  %.pr.i.i = load i8, ptr %i.eg, align 1, !tbaa !20
  br label %_ZN6googleL6AppendEPNS_5StateEPKci.exit.i.i

_ZN6googleL6AppendEPNS_5StateEPKci.exit.i.i:      ; preds = %_ZN6googleL6AppendEPNS_5StateEPKci.exitthread-pre-split.i.i, %bb.ap
  %i.fo = phi ptr [ %.pre285, %_ZN6googleL6AppendEPNS_5StateEPKci.exitthread-pre-split.i.i ], [ %.pre286, %bb.ap ] ; 2 uses
  %i.fp = phi i8 [ %.pr.i.i, %_ZN6googleL6AppendEPNS_5StateEPKci.exitthread-pre-split.i.i ], [ %i.ey, %bb.ap ] ; 2 uses
  %i.fq = and i8 %i.fp, -33
  %i.fr = add i8 %i.fq, -65
  %i.fs = icmp ult i8 %i.fr, 26
  %i.ft = icmp eq i8 %i.fp, 95
  %or.cond26.i.i = or i1 %i.ft, %i.fs
  br i1 %or.cond26.i.i, label %bb.au, label %_ZN6googleL6AppendEPNS_5StateEPKci.exit._crit_edge.i.i

bb.au:                                            ; preds = %_ZN6googleL6AppendEPNS_5StateEPKci.exit.i.i
  store ptr %i.fo, ptr %i.t, align 8, !tbaa !15
  store i32 %i.fa, ptr %i.u, align 8, !tbaa !16
  br label %_ZN6googleL6AppendEPNS_5StateEPKci.exit._crit_edge.i.i

_ZN6googleL6AppendEPNS_5StateEPKci.exit._crit_edge.i.i: ; preds = %bb.au, %_ZN6googleL6AppendEPNS_5StateEPKci.exit.i.i
  %wide.trip.count.i.i.i48 = zext nneg i32 %i.fa to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %_ZN6googleL6AppendEPNS_5StateEPKci.exit._crit_edge.i.i
  %i.fu = phi ptr [ %i.fo, %_ZN6googleL6AppendEPNS_5StateEPKci.exit._crit_edge.i.i ], [ %i.gb, %bb.aw ] ; 2 uses
  %indvars.iv.i18.i.i49 = phi i64 [ 0, %_ZN6googleL6AppendEPNS_5StateEPKci.exit._crit_edge.i.i ], [ %indvars.iv.next.i20.i.i51, %bb.aw ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  %i.fw = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.fx = icmp ult ptr %i.fv, %i.fw
  br i1 %i.fx, label %bb.aw, label %.loopexit.thread.i19.i.i50

bb.aw:                                            ; preds = %bb.av
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eg, i64 %indvars.iv.i18.i.i49
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !20
  store i8 %i.fz, ptr %i.fu, align 1, !tbaa !20
  %i.ga = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 3 uses
  store ptr %i.gb, ptr %i.q, align 8, !tbaa !7
  %indvars.iv.next.i20.i.i51 = add nuw nsw i64 %indvars.iv.i18.i.i49, 1 ; 2 uses
  %exitcond.not.i21.i.i52 = icmp eq i64 %indvars.iv.next.i20.i.i51, %wide.trip.count.i.i.i48
  br i1 %exitcond.not.i21.i.i52, label %.loopexit.i22.i.i53, label %bb.av, !llvm.loop !28

.loopexit.thread.i19.i.i50:                       ; preds = %bb.av
  store i8 1, ptr %i.s, align 1, !tbaa !19
  br label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit57

.loopexit.i22.i.i53:                              ; preds = %bb.aw
  %.pre13.i24.i.i55 = load i8, ptr %i.s, align 1, !tbaa !19, !range !26
  %i.gc = trunc nuw i8 %.pre13.i24.i.i55 to i1
  br i1 %i.gc, label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit57, label %bb.ax

bb.ax:                                            ; preds = %.loopexit.i22.i.i53
  store i8 0, ptr %i.gb, align 1, !tbaa !20
  br label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit57

_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit57:   ; preds = %bb.ax, %.loopexit.i22.i.i53, %.loopexit.thread.i19.i.i50, %_ZN6googleL6StrLenEPKc.exit.i, %bb.ao, %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit71, %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit85
  %i.gd = load ptr, ptr %0, align 8, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  store ptr %i.ge, ptr %0, align 8, !tbaa !21
  br label %_ZN6googleL17ParseSubstitutionEPNS_5StateE.exit.i.i.thread221

_ZN6googleL17ParseSubstitutionEPNS_5StateE.exit.i.i.thread221: ; preds = %bb.ae, %.loopexit.i22.i.i345, %.loopexit.thread.i19.i.i344, %bb.ac, %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZN6googleL18ParseTemplateParamEPNS_5StateE.exit.i.i.thread

bb.ay:                                            ; preds = %.fold.split43.i.i.i, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit27.i.i.i, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i11.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %12, i64 48, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.gf = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !20  ; 2 uses
  %.not.i.i = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i, label %_ZN6googleL17ParseOperatorNameEPNS_5StateE.exit.thread, label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %bb.ay
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !20  ; 2 uses
  %.not.i.1.i = icmp eq i8 %i.gi, 0
  br i1 %.not.i.1.i, label %_ZN6googleL17ParseOperatorNameEPNS_5StateE.exit.thread, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i349)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i349, ptr noundef nonnull align 8 dereferenceable(44) %0, i64 44, i1 false), !tbaa.struct !29
  %.sroa.5.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !31 ; 3 uses
  %i.gj = load i16, ptr %.sroa.5.0..sroa_idx.i, align 2 ; 3 uses
  %i.gk = icmp eq i8 %i.gg, 99
  %i.gl = icmp eq i8 %i.gi, 118
  %or.cond.i = and i1 %i.gk, %i.gl
  br i1 %or.cond.i, label %bb.ba, label %_ZN6googleL17ParseTwoCharTokenEPNS_5StateEPKc.exit.thread.i

bb.ba:                                            ; preds = %bb.az
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  store ptr %i.gm, ptr %0, align 8, !tbaa !21
  %i.gn = trunc i16 %i.gj to i1
  br i1 %i.gn, label %bb.bb, label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit364

bb.bb:                                            ; preds = %bb.ba
  %i.go = load ptr, ptr %i.q, align 8, !tbaa !7   ; 3 uses
  store ptr %i.go, ptr %i.t, align 8, !tbaa !15
  store i32 9, ptr %i.u, align 8, !tbaa !16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gq = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.gr = icmp ult ptr %i.gp, %i.gq
  br i1 %i.gr, label %bb.bc, label %.loopexit.thread.i19.i.i358

bb.bc:                                            ; preds = %bb.bb
  store i8 111, ptr %i.go, align 1, !tbaa !20
  %i.gs = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1 ; 2 uses
  store ptr %i.gt, ptr %i.q, align 8, !tbaa !7
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.gv = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.gw = icmp ult ptr %i.gu, %i.gv
  br i1 %i.gw, label %bb.bd, label %.loopexit.thread.i19.i.i358

bb.bd:                                            ; preds = %bb.bc
  store i8 112, ptr %i.gt, align 1, !tbaa !20
  %i.gx = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1 ; 2 uses
  store ptr %i.gy, ptr %i.q, align 8, !tbaa !7
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %i.ha = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.hb = icmp ult ptr %i.gz, %i.ha
  br i1 %i.hb, label %bb.be, label %.loopexit.thread.i19.i.i358

bb.be:                                            ; preds = %bb.bd
  store i8 101, ptr %i.gy, align 1, !tbaa !20
  %i.hc = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1 ; 2 uses
  store ptr %i.hd, ptr %i.q, align 8, !tbaa !7
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.hf = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.hg = icmp ult ptr %i.he, %i.hf
  br i1 %i.hg, label %bb.bf, label %.loopexit.thread.i19.i.i358

bb.bf:                                            ; preds = %bb.be
  store i8 114, ptr %i.hd, align 1, !tbaa !20
  %i.hh = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1 ; 2 uses
  store ptr %i.hi, ptr %i.q, align 8, !tbaa !7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hk = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.hl = icmp ult ptr %i.hj, %i.hk
  br i1 %i.hl, label %bb.bg, label %.loopexit.thread.i19.i.i358

bb.bg:                                            ; preds = %bb.bf
  store i8 97, ptr %i.hi, align 1, !tbaa !20
  %i.hm = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 1 ; 2 uses
  store ptr %i.hn, ptr %i.q, align 8, !tbaa !7
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.hp = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.hq = icmp ult ptr %i.ho, %i.hp
  br i1 %i.hq, label %bb.bh, label %.loopexit.thread.i19.i.i358

bb.bh:                                            ; preds = %bb.bg
  store i8 116, ptr %i.hn, align 1, !tbaa !20
  %i.hr = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1 ; 2 uses
  store ptr %i.hs, ptr %i.q, align 8, !tbaa !7
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.hu = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.hv = icmp ult ptr %i.ht, %i.hu
  br i1 %i.hv, label %bb.bi, label %.loopexit.thread.i19.i.i358

bb.bi:                                            ; preds = %bb.bh
  store i8 111, ptr %i.hs, align 1, !tbaa !20
  %i.hw = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1 ; 2 uses
  store ptr %i.hx, ptr %i.q, align 8, !tbaa !7
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.hz = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.ia = icmp ult ptr %i.hy, %i.hz
  br i1 %i.ia, label %bb.bj, label %.loopexit.thread.i19.i.i358

bb.bj:                                            ; preds = %bb.bi
  store i8 114, ptr %i.hx, align 1, !tbaa !20
  %i.ib = load ptr, ptr %i.q, align 8, !tbaa !7   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1 ; 2 uses
  store ptr %i.ic, ptr %i.q, align 8, !tbaa !7
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.ie = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.if = icmp ult ptr %i.id, %i.ie
  br i1 %i.if, label %.loopexit.i22.i.i361, label %.loopexit.thread.i19.i.i358

.loopexit.i22.i.i361:                             ; preds = %bb.bj
  store i8 32, ptr %i.ic, align 1, !tbaa !20
  %i.ig = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1 ; 2 uses
  store ptr %i.ih, ptr %i.q, align 8, !tbaa !7
  %.pre13.i24.i.i363 = load i8, ptr %i.s, align 1, !tbaa !19, !range !26
  %i.ii = trunc nuw i8 %.pre13.i24.i.i363 to i1
  br i1 %i.ii, label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit364, label %bb.bk

.loopexit.thread.i19.i.i358:                      ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb
  store i8 1, ptr %i.s, align 1, !tbaa !19
  br label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit364

bb.bk:                                            ; preds = %.loopexit.i22.i.i361
  store i8 0, ptr %i.ih, align 1, !tbaa !20
  br label %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit364

_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit364:  ; preds = %bb.ba, %.loopexit.thread.i19.i.i358, %.loopexit.i22.i.i361, %bb.bk
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !17
  %i.ij = tail call fastcc noundef zeroext i1 @_ZN6googleL9ParseTypeEPNS_5StateE(ptr noundef nonnull %0), !inline_history !41
  br i1 %i.ij, label %bb.bl, label %_ZN6googleL17ParseTwoCharTokenEPNS_5StateEPKc.exit.thread.i

bb.bl:                                            ; preds = %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit364
  store i16 %.sroa.5.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !17
  br label %_ZN6googleL17ParseOperatorNameEPNS_5StateE.exit.thread367

_ZN6googleL17ParseTwoCharTokenEPNS_5StateEPKc.exit.thread.i: ; preds = %_ZN6googleL11MaybeAppendEPNS_5StateEPKc.exit364, %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i349, i64 44, i1 false), !tbaa.struct !29
  store i16 %.sroa.5.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !31
  store i16 %i.gj, ptr %.sroa.5.0..sroa_idx.i, align 2
  %i.ik = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !20
  %i.im = icmp eq i8 %i.il, 118
  br i1 %i.im, label %bb.bm, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i

bb.bm:                                            ; preds = %_ZN6googleL17ParseTwoCharTokenEPNS_5StateEPKc.exit.thread.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 1 ; 2 uses
  store ptr %i.in, ptr %0, align 8, !tbaa !21
  %i.io = load i8, ptr %i.in, align 1, !tbaa !20
  %.off.i = add i8 %i.io, -48
  %switch.i = icmp ult i8 %.off.i, 10
  br i1 %switch.i, label %bb.bn, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i

bb.bn:                                            ; preds = %bb.bm
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  store ptr %i.ip, ptr %0, align 8, !tbaa !21
  %i.iq = tail call fastcc noundef zeroext i1 @_ZN6googleL15ParseSourceNameEPNS_5StateE(ptr noundef nonnull %0), !inline_history !41
  br i1 %i.iq, label %_ZN6googleL17ParseOperatorNameEPNS_5StateE.exit.thread367, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i: ; preds = %bb.bn, %bb.bm, %_ZN6googleL17ParseTwoCharTokenEPNS_5StateEPKc.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i349, i64 44, i1 false), !tbaa.struct !29
  store i16 %.sroa.5.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !31
  store i16 %i.gj, ptr %.sroa.5.0..sroa_idx.i, align 2
  %i.ir = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !20  ; 3 uses
  %i.it = add i8 %i.is, -97
  %i.iu = icmp ult i8 %i.it, 26
  br i1 %i.iu, label %bb.bo, label %_ZN6googleL17ParseOperatorNameEPNS_5StateE.exit

bb.bo:                                            ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !20  ; 3 uses
  %i.ix = and i8 %i.iw, -33
  %i.iy = add i8 %i.ix, -65
  %i.iz = icmp ult i8 %i.iy, 26
  br i1 %i.iz, label %.preheader.i, label %_ZN6googleL17ParseOperatorNameEPNS_5StateE.exit

.preheader.i:                                     ; preds = %bb.bo, %bb.bu
  %i.ja = phi ptr [ %i.jw, %bb.bu ], [ @.str.76, %bb.bo ] ; 2 uses
  %.038.i = phi ptr [ %i.jv, %bb.bu ], [ @_ZN6googleL13kOperatorListE, %bb.bo ] ; 4 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !20
  %i.jc = icmp eq i8 %i.is, %i.jb
  br i1 %i.jc, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.preheader.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !20
  %i.jf = icmp eq i8 %i.iw, %i.je
  br i1 %i.jf, label %.split.loop.exit483, label %bb.bs

.split.loop.exit:                                 ; preds = %bb.bt
  %i.jg = getelementptr inbounds nuw i8, ptr %.038.i, i64 16
end_hunk_1
begin_hunk_2_@_ZN6googleL17ParseTemplateArgsEPNS_5StateE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.d, ptr %0, align 8, !tbaa !21
  %i.e = tail call fastcc noundef zeroext i1 @_ZN6googleL16ParseTemplateArgEPNS_5StateE(ptr noundef nonnull %0), !callees !33, !inline_history !53
  br i1 %i.e, label %.preheader.i, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %i.f = tail call fastcc noundef zeroext i1 @_ZN6googleL16ParseTemplateArgEPNS_5StateE(ptr noundef nonnull %0), !callees !33, !inline_history !53
  br i1 %i.f, label %.preheader.i, label %bb.c, !llvm.loop !35

bb.c:                                             ; preds = %.preheader.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  %i.i = icmp eq i8 %i.h, 69
  br i1 %i.i, label %bb.d, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.j, ptr %0, align 8, !tbaa !21
  %i.k = and i8 %.sroa.4.0.copyload, 1
  store i8 %i.k, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !18
  tail call fastcc void @_ZN6googleL11MaybeAppendEPNS_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.21)
  br label %bb.e

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef nonnull align 8 dereferenceable(46) %.sroa.0, i64 46, i1 false), !tbaa.struct !29
  store i8 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !32
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN6googleL18ParseTemplateParamEPNS_5StateE(ptr noundef captures(none) %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %"struct.google::State", align 8    ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20
  %i.c = icmp eq i8 %i.b, 84
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20
  %i.f = icmp eq i8 %i.e, 95
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store ptr %i.g, ptr %0, align 8, !tbaa !21
  tail call fastcc void @_ZN6googleL11MaybeAppendEPNS_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !29
  br label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %i.i = load i8, ptr %i.h, align 1, !tbaa !20    ; 2 uses
  %i.j = icmp eq i8 %i.i, 110
  br i1 %i.j, label %bb.f, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !21
  %.pre.i = load i8, ptr %i.k, align 1, !tbaa !20
  br label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i: ; preds = %bb.f, %bb.e
  %i.l = phi i8 [ %i.i, %bb.e ], [ %.pre.i, %bb.f ]
  %i.m = phi ptr [ %i.h, %bb.e ], [ %i.k, %bb.f ]
  %i.n = add i8 %i.l, -48
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %.lr.ph.i, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit

.lr.ph.i:                                         ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i, %.lr.ph.i
  %.01522.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.m, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01522.i, i64 1 ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20
  %i.r = add i8 %i.q, -48
  %i.s = icmp ult i8 %i.r, 10
  br i1 %i.s, label %.lr.ph.i, label %bb.g, !llvm.loop !37

bb.g:                                             ; preds = %.lr.ph.i
  store ptr %i.p, ptr %0, align 8, !tbaa !21
  %i.t = load i8, ptr %i.p, align 1, !tbaa !20
  %i.u = icmp eq i8 %i.t, 95
  br i1 %i.u, label %bb.h, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.01522.i, i64 2
  store ptr %i.v, ptr %0, align 8, !tbaa !21
  tail call fastcc void @_ZN6googleL11MaybeAppendEPNS_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
  br label %bb.i

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit: ; preds = %bb.d, %bb.g, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !29
  br label %bb.i

bb.i:                                             ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit, %bb.h
  %.0 = phi i1 [ true, %bb.h ], [ false, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.1 = phi i1 [ true, %bb.c ], [ %.0, %bb.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN6googleL17ParseSubstitutionEPNS_5StateE(ptr noundef captures(none) %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %"struct.google::State", align 8    ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 6 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20
  %i.c = icmp eq i8 %i.b, 83
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20
  %i.f = icmp eq i8 %i.e, 95
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store ptr %i.g, ptr %0, align 8, !tbaa !21
  tail call fastcc void @_ZN6googleL11MaybeAppendEPNS_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !29
  br label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !29
  %.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %.ptr, ptr %0, align 8, !tbaa !21
  %i.h = load i8, ptr %.ptr, align 1, !tbaa !20   ; 2 uses
  %.not15.i = icmp eq i8 %i.h, 0
  br i1 %.not15.i, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %i.i = phi i8 [ %i.m, %bb.f ], [ %i.h, %bb.e ]  ; 2 uses
  %.016.i.idx = phi i64 [ %.016.i.add, %bb.f ], [ 1, %bb.e ] ; 3 uses
  %i.j = add i8 %i.i, -48
  %i.k = icmp ult i8 %i.j, 10
  %i.l = add i8 %i.i, -65
  %or.cond.i = icmp ult i8 %i.l, 26
  %or.cond14.i = or i1 %i.k, %or.cond.i
  br i1 %or.cond14.i, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %.lr.ph.i
  %.016.i.add = add nuw nsw i64 %.016.i.idx, 1    ; 3 uses
  %.ptr30 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.016.i.add
  %i.m = load i8, ptr %.ptr30, align 1, !tbaa !20 ; 2 uses
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not13.not.i = icmp eq i64 %.016.i.idx, 1
  br i1 %.not13.not.i, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %._crit_edge.i
  %.016.i.idx.pn = phi i64 [ %.016.i.idx, %._crit_edge.i ], [ %.016.i.add, %bb.f ]
  %.0.lcssa22.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.016.i.idx.pn ; 3 uses
  store ptr %.0.lcssa22.i, ptr %0, align 8, !tbaa !21
  %i.n = load i8, ptr %.0.lcssa22.i, align 1, !tbaa !20
  %i.o = icmp eq i8 %i.n, 95
  br i1 %i.o, label %bb.g, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit

bb.g:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %.0.lcssa22.i, i64 1
  store ptr %i.p, ptr %0, align 8, !tbaa !21
  tail call fastcc void @_ZN6googleL11MaybeAppendEPNS_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
  br label %bb.k

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit: ; preds = %bb.d, %bb.e, %._crit_edge.i, %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !29
  %i.q = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !20
  %i.s = icmp eq i8 %i.r, 83
  br i1 %i.s, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit27, label %.critedge

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit27: ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !21
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  %switch.tableidx = add i8 %i.u, -97             ; 3 uses
  %2 = icmp ult i8 %switch.tableidx, 20
  br i1 %2, label %.fold.split43, label %.critedge

.fold.split43:                                    ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit27
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 803083, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.fold.split43
  %3 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6googleL17ParseSubstitutionEPNS_5StateE, i64 %3
  %switch.load = load ptr, ptr %switch.gep, align 8
  tail call fastcc void @_ZN6googleL11MaybeAppendEPNS_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.5)
  %i.v = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20
  %.not24 = icmp eq i8 %i.x, 0
  br i1 %.not24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @_ZN6googleL11MaybeAppendEPNS_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.1)
  tail call fastcc void @_ZN6googleL11MaybeAppendEPNS_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull %i.w)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %0, align 8, !tbaa !21
  br label %bb.k

.critedge:                                        ; preds = %.fold.split43, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit27, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge, %bb.g
  %.1 = phi i1 [ true, %bb.g ], [ false, %.critedge ], [ true, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %.2 = phi i1 [ true, %bb.c ], [ %.1, %bb.k ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN6googleL11ParseNumberEPNS_5StateEPi(ptr noundef captures(none) %0, ptr noundef writeonly captures(address_is_null) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20    ; 2 uses
  %i.c = icmp eq i8 %i.b, 110
  br i1 %i.c, label %bb.b, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !21
  %.pre = load i8, ptr %i.d, align 1, !tbaa !20
  br label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i8 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.f = phi ptr [ %i.a, %bb.a ], [ %i.d, %bb.b ]
  %spec.select = phi i32 [ 1, %bb.a ], [ -1, %bb.b ]
  %i.g = add i8 %i.e, -48
  %i.h = icmp ult i8 %i.g, 10                     ; 2 uses
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit, %.lr.ph
  %i.i = phi i8 [ %i.o, %.lr.ph ], [ %i.e, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit ]
  %.023 = phi i32 [ %i.m, %.lr.ph ], [ 0, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit ]
  %.01522 = phi ptr [ %i.n, %.lr.ph ], [ %i.f, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit ]
  %i.j = mul nsw i32 %.023, 10
  %i.k = zext nneg i8 %i.i to i32
  %i.l = add i32 %i.j, -48
  %i.m = add i32 %i.l, %i.k                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01522, i64 1 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20    ; 2 uses
  %i.p = add i8 %i.o, -48
  %i.q = icmp ult i8 %i.p, 10
  br i1 %i.q, label %.lr.ph, label %bb.c, !llvm.loop !37

bb.c:                                             ; preds = %.lr.ph
  store ptr %i.n, ptr %0, align 8, !tbaa !21
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = mul nsw i32 %i.m, %spec.select
  store i32 %i.r, ptr %1, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit, %bb.c, %bb.d
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN6googleL16ParseTemplateArgEPNS_5StateE(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"struct.google::State", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !29
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20
  %.off = add i8 %i.b, -73
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.thread, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit14

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.thread: ; preds = %bb.a
  %storemerge = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %storemerge, ptr %0, align 8, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.thread
  %i.c = tail call fastcc noundef zeroext i1 @_ZN6googleL16ParseTemplateArgEPNS_5StateE(ptr noundef nonnull %0), !inline_history !54
  br i1 %i.c, label %bb.b, label %_ZN6googleL10ZeroOrMoreEPFbPNS_5StateEES1_.exit, !llvm.loop !55

_ZN6googleL10ZeroOrMoreEPFbPNS_5StateEES1_.exit:  ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20
  %i.f = icmp eq i8 %i.e, 69
  br i1 %i.f, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit15.thread, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit14

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit15.thread: ; preds = %_ZN6googleL10ZeroOrMoreEPFbPNS_5StateEES1_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.g, ptr %0, align 8, !tbaa !21
  br label %bb.g

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit14: ; preds = %bb.a, %_ZN6googleL10ZeroOrMoreEPFbPNS_5StateEES1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !29
  %i.h = tail call fastcc noundef zeroext i1 @_ZN6googleL9ParseTypeEPNS_5StateE(ptr noundef nonnull %0)
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit14
  %i.i = tail call fastcc noundef zeroext i1 @_ZN6googleL16ParseExprPrimaryEPNS_5StateE(ptr noundef nonnull %0)
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !29
  %i.j = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  %i.l = icmp eq i8 %i.k, 88
  br i1 %i.l, label %bb.e, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit16

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.m, ptr %0, align 8, !tbaa !21
  %i.n = tail call fastcc noundef zeroext i1 @_ZN6googleL15ParseExpressionEPNS_5StateE(ptr noundef nonnull %0)
  br i1 %i.n, label %bb.f, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit16

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !20
  %i.q = icmp eq i8 %i.p, 69
  br i1 %i.q, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit17.thread, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit16

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit17.thread: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.r, ptr %0, align 8, !tbaa !21
  br label %bb.g

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit16: ; preds = %bb.f, %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !29
  br label %bb.g

bb.g:                                             ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit17.thread, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit15.thread, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit14, %bb.c, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit16
  %.0 = phi i1 [ false, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit16 ], [ true, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit15.thread ], [ true, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit14 ], [ true, %bb.c ], [ true, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit17.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN6googleL9ParseTypeEPNS_5StateE(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"struct.google::State", align 8    ; 5 uses
  %2 = alloca %"struct.google::State", align 8    ; 6 uses
  %3 = alloca %"struct.google::State", align 8    ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20    ; 2 uses
  %i.c = icmp eq i8 %i.b, 114                     ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !21
  %.pre.i = load i8, ptr %i.d, align 1, !tbaa !20
  br label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i: ; preds = %bb.b, %bb.a
  %i.e = phi i8 [ %i.b, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.f = phi ptr [ %i.a, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = icmp eq i8 %i.e, 86                      ; 2 uses
  br i1 %i.g, label %bb.c, label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit6.i

bb.c:                                             ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %.pre8.i = load i8, ptr %i.h, align 1, !tbaa !20
  br label %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit6.i

_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit6.i: ; preds = %bb.c, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i
  %i.i = phi i8 [ %i.e, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i ], [ %.pre8.i, %bb.c ]
  %i.j = phi ptr [ %i.f, %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit.i ], [ %i.h, %bb.c ]
  %i.k = icmp eq i8 %i.i, 75                      ; 2 uses
  br i1 %i.k, label %bb.d, label %_ZN6googleL17ParseCVQualifiersEPNS_5StateE.exit

bb.d:                                             ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit6.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.l, ptr %0, align 8, !tbaa !21
  br label %_ZN6googleL17ParseCVQualifiersEPNS_5StateE.exit

_ZN6googleL17ParseCVQualifiersEPNS_5StateE.exit:  ; preds = %_ZN6googleL17ParseOneCharTokenEPNS_5StateEc.exit6.i, %bb.d
  %i.m = zext i1 %i.c to i32
  %i.n = zext i1 %i.g to i32
  %i.o = add nuw nsw i32 %i.n, %i.m
  %i.p = zext i1 %i.k to i32
  %i.q = or i32 %i.o, %i.p
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6googleL17ParseCVQualifiersEPNS_5StateE.exit
  %i.r = tail call fastcc noundef zeroext i1 @_ZN6googleL9ParseTypeEPNS_5StateE(ptr noundef nonnull %0)
  br i1 %i.r, label %_ZN6googleL16ParseBuiltinTypeEPNS_5StateE.exit.thread54, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6googleL17ParseCVQualifiersEPNS_5StateE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20
  switch i8 %i.t, label %_ZN6googleL14ParseCharClassEPNS_5StateEPKc.exit [
    i8 79, label %bb.g
    i8 80, label %bb.g
    i8 82, label %bb.g
end_hunk_2
