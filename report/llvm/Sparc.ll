Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Sparc?download=true
inline.NumInlined: 650
inline.NumDeleted: 226
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.clang::DiagnosticBuilder" = type <{ %"class.clang::StreamingDiagnostic", ptr, %"class.clang::SourceLocation", i32, %"class.std::__cxx11::basic_string", i8, i8, [6 x i8] }>
%"class.clang::StreamingDiagnostic" = type { ptr, ptr }
%"class.clang::SourceLocation" = type { i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.llvm::opt::OptSpecifier" = type { i32 }
%"class.llvm::opt::arg_iterator" = type <{ ptr, ptr, [5 x %"class.llvm::opt::OptSpecifier"], [4 x i8] }>
%"class.llvm::iterator_range.81" = type { %"class.llvm::opt::arg_iterator.82", %"class.llvm::opt::arg_iterator.82" }
%"class.llvm::opt::arg_iterator.82" = type { ptr, ptr, [2 x %"class.llvm::opt::OptSpecifier"] }

$_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_S5_S5_S5_EEEPNS0_3ArgEDpT_ = comdat any

$_ZN5clang17DiagnosticBuilderD2Ev = comdat any

$_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_ = comdat any

$_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_EEEPNS0_3ArgEDpT_ = comdat any

$_ZN5clang17DiagnosticStorageD2Ev = comdat any

$_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj5EE13SkipToNextArgEv = comdat any

$_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE = comdat any

$_ZN5clang20DiagStorageAllocator8AllocateEv = comdat any

$_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [6 x i8] c"-Av9b\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-Av9a\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-Av9\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-Av9d\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"-Av8plus\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"-Av8\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"-Asparclite\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"-Asparclet\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"-Av8plusb\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"-Av8plusd\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"-Aleon\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"+soft-float\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"+fsmuld\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"-fsmuld\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"+popc\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"-popc\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"+vis\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"-vis\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"+vis2\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"-vis2\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"+vis3\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"-vis3\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"+hard-quad-float\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"-hard-quad-float\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"+v8plus\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"+reserve-g1\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"+reserve-g2\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"+reserve-g3\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"+reserve-g4\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"+reserve-g5\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"+reserve-g6\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"+reserve-g7\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"+reserve-o0\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"+reserve-o1\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"+reserve-o2\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"+reserve-o3\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"+reserve-o4\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"+reserve-o5\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"+reserve-l0\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"+reserve-l1\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"+reserve-l2\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"+reserve-l3\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"+reserve-l4\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"+reserve-l5\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"+reserve-l6\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"+reserve-l7\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"+reserve-i0\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"+reserve-i1\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"+reserve-i2\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"+reserve-i3\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"+reserve-i4\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"+reserve-i5\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"+fix-tn0009\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"+fix-tn0011\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"+fix-tn0012\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"+fix-tn0013\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"+fix-tn0010\00", align 1
@.str.96 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@switch.table._ZN5clang6driver5tools5sparc21getSparcAsmModeForCPUEN4llvm9StringRefERKNS3_6TripleE = private unnamed_addr constant [11 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.1, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.1, ptr @.str], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @_ZN5clang6driver5tools5sparc21getSparcAsmModeForCPUEN4llvm9StringRefERKNS3_6TripleE(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = icmp eq i32 %i.b, 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %i.e, -3             ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 11
  br i1 %i.f, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5clang6driver5tools5sparc21getSparcAsmModeForCPUEN4llvm9StringRefERKNS3_6TripleE, i64 %i.g
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup
  %.013 = phi ptr [ @.str.2, %bb.b ], [ %switch.load, %switch.lookup ] ; 3 uses
  switch i64 %1, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311 [
    i64 7, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38
    i64 8, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %0, align 1
  %i.i = icmp ne i64 %i.h, 3630308537309161838
  %i.j = zext i1 %i.i to i32
  %.not.i.i20 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i20, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %0, align 1
  %i.l = icmp ne i64 %i.k, 3702366131347089774
  %i.m = zext i1 %i.l to i32
  %.not.i.i28 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i28, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38.thread, label %.split

.split:                                           ; preds = %bb.e
  %i.n = load i64, ptr %0, align 1
  %i.o = icmp ne i64 %i.n, 3774423725385017710
  %i.p = zext i1 %i.o to i32
  %bcmp.i.i.i.i35.fr = freeze i32 %i.p
  %.not.i.i36 = icmp eq i32 %bcmp.i.i.i.i35.fr, 0 ; 2 uses
  %spec.select937 = select i1 %.not.i.i36, ptr @.str.6, ptr @.str
  br i1 %.not.i.i36, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38: ; preds = %bb.c
  %i.q = load i32, ptr %0, align 1
  %i.r = xor i32 %i.q, 1734437230
  %i.s = getelementptr i8, ptr %0, i64 3
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 %i.t, 1634885991
  %i.v = or i32 %i.r, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %bcmp.i.i.i.i.fr = freeze i32 %i.x
  %.not.i.i = icmp eq i32 %bcmp.i.i.i.i.fr, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38.thread: ; preds = %bb.d, %bb.e, %.split, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38
  %.sroa.12.3944 = phi ptr [ %spec.select937, %.split ], [ @.str, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38 ], [ @.str, %bb.d ], [ @.str.6, %bb.e ]
  br label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

bb.f:                                             ; preds = %bb.a
  %i.y = icmp eq i32 %i.e, 13
  %.str.8..str.9 = select i1 %i.y, ptr @.str.8, ptr @.str.9 ; 11 uses
  switch i64 %1, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311 [
    i64 2, label %bb.g
    i64 10, label %bb.h
    i64 9, label %bb.i
    i64 4, label %bb.j
    i64 12, label %bb.l
    i64 8, label %bb.m
    i64 6, label %bb.n
    i64 11, label %bb.o
    i64 7, label %bb.p
    i64 5, label %bb.ab
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = load i16, ptr %0, align 1
  %i.aa = icmp ne i16 %i.z, 14454
  %i.ab = zext i1 %i.aa to i32
  %.not.i.i45 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i45, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit95.thread852.thread865

bb.h:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %0, align 1
  %i.ad = xor i64 %i.ac, 7021238754235938163
  %i.ae = getelementptr i8, ptr %0, i64 8
  %i.af = load i16, ptr %i.ae, align 1
  %i.ag = zext i16 %i.af to i64
  %i.ah = xor i64 %i.ag, 25458
  %i.ai = or i64 %i.ad, %i.ah
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %.not.i.i53 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i53, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.al = load i64, ptr %0, align 1
  %i.am = xor i64 %i.al, 8388354955330809971
  %i.an = getelementptr i8, ptr %0, i64 8
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = xor i64 %i.ap, 101
  %i.ar = or i64 %i.am, %i.aq
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %.not.i.i61 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i61, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

bb.j:                                             ; preds = %bb.f
  %i.au = load i32, ptr %0, align 1
  %i.av = icmp ne i32 %i.au, 875772262
  %i.aw = zext i1 %i.av to i32
  %.not.i.i69 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i69, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

bb.k:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %0, align 1
  %i.ay = xor i64 %i.ax, 7021238754235939176
  %i.az = getelementptr i8, ptr %0, i64 8
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = zext i16 %i.ba to i64
  %i.bc = xor i64 %i.bb, 25458
  %i.bd = or i64 %i.ay, %i.bc
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %.not.i.i77 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i77, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit111.thread887

bb.l:                                             ; preds = %bb.f
  %i.bg = load i64, ptr %0, align 1
  %i.bh = xor i64 %i.bg, 8388354955330809971
  %i.bi = getelementptr i8, ptr %0, i64 8
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = xor i64 %i.bk, 2016819301
  %i.bm = or i64 %i.bh, %i.bl
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %.not.i.i85 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i85, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

bb.m:                                             ; preds = %bb.f
  %i.bp = load i64, ptr %0, align 1
  %i.bq = icmp ne i64 %i.bp, 8387229055423967347
  %i.br = zext i1 %i.bq to i32
  %.not.i.i93 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i93, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit127.thread803.thread902

bb.n:                                             ; preds = %bb.f
  %i.bs = load i32, ptr %0, align 1
  %i.bt = xor i32 %i.bs, 929264500
  %i.bu = getelementptr i8, ptr %0, i64 4
  %i.bv = load i16, ptr %i.bu, align 1
  %i.bw = zext i16 %i.bv to i32
  %i.bx = xor i32 %i.bw, 12592
  %i.by = or i32 %i.bt, %i.bx
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %.not.i.i101 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i101, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit159.thread913

_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit95.thread852.thread865: ; preds = %bb.g
  %i.cb = load i16, ptr %0, align 1
  %i.cc = icmp ne i16 %i.cb, 14710
  %i.cd = zext i1 %i.cc to i32
  %.not.i.i109 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i109, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit111.thread887: ; preds = %bb.k
  %i.ce = load i64, ptr %0, align 1
  %i.cf = xor i64 %i.ce, 7021238681439857781
  %i.cg = getelementptr i8, ptr %0, i64 8
  %i.ch = load i16, ptr %i.cg, align 1
  %i.ci = zext i16 %i.ch to i64
  %i.cj = xor i64 %i.ci, 25458
  %i.ck = or i64 %i.cf, %i.cj
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %.not.i.i117 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i117, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

bb.o:                                             ; preds = %bb.f
  %i.cn = load i64, ptr %0, align 1
  %i.co = xor i64 %i.cn, 7021238681439857781
  %i.cp = getelementptr i8, ptr %0, i64 3
  %i.cq = load i64, ptr %i.cp, align 1
  %i.cr = xor i64 %i.cq, 3702929081452683634
  %i.cs = or i64 %i.co, %i.cr
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %.not.i.i125 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i125, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

bb.p:                                             ; preds = %bb.f
  %i.cv = load i32, ptr %0, align 1
  %i.cw = xor i32 %i.cv, 1734437230
  %i.cx = getelementptr i8, ptr %0, i64 3
  %i.cy = load i32, ptr %i.cx, align 1
  %i.cz = xor i32 %i.cy, 1634885991
  %i.da = or i32 %i.cw, %i.cz
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %.not.i.i133 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i133, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit159.thread812

_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit127.thread803.thread902: ; preds = %bb.m
  %i.dd = load i64, ptr %0, align 1
  %i.de = icmp ne i64 %i.dd, 3630308537309161838
  %i.df = zext i1 %i.de to i32
  %.not.i.i141 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i141, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit143.thread567

_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit143.thread567: ; preds = %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit127.thread803.thread902
  %i.dg = load i64, ptr %0, align 1
  %i.dh = icmp ne i64 %i.dg, 3702366131347089774
  %i.di = zext i1 %i.dh to i32
  %.not.i.i149 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i149, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit143.thread567
  %i.dj = load i64, ptr %0, align 1
  %i.dk = icmp ne i64 %i.dj, 3774423725385017710
  %i.dl = zext i1 %i.dk to i32
  %.not.i.i157 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i157, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit159.thread913: ; preds = %bb.n
  %i.dm = load i32, ptr %0, align 1
  %i.dn = xor i32 %i.dm, 825385325
  %i.do = getelementptr i8, ptr %0, i64 4
  %i.dp = load i16, ptr %i.do, align 1
  %i.dq = zext i16 %i.dp to i32
  %i.dr = xor i32 %i.dq, 12336
  %i.ds = or i32 %i.dn, %i.dr
  %i.dt = icmp ne i32 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %.not.i.i165 = icmp eq i32 %i.du, 0
  br i1 %.not.i.i165, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit159.thread913
  %i.dv = load i32, ptr %0, align 1
  %i.dw = xor i32 %i.dv, 825385325
  %i.dx = getelementptr i8, ptr %0, i64 4
  %i.dy = load i16, ptr %i.dx, align 1
  %i.dz = zext i16 %i.dy to i32
  %i.ea = xor i32 %i.dz, 12341
  %i.eb = or i32 %i.dw, %i.ea
  %i.ec = icmp ne i32 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %.not.i.i173 = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i173, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = load i32, ptr %0, align 1
  %i.ef = xor i32 %i.ee, 825385325
  %i.eg = getelementptr i8, ptr %0, i64 4
  %i.eh = load i16, ptr %i.eg, align 1
  %i.ei = zext i16 %i.eh to i32
  %i.ej = xor i32 %i.ei, 13621
  %i.ek = or i32 %i.ef, %i.ej
  %i.el = icmp ne i32 %i.ek, 0
  %i.em = zext i1 %i.el to i32
  %.not.i.i181 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i181, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.en = load i32, ptr %0, align 1
  %i.eo = xor i32 %i.en, 875716973
  %i.ep = getelementptr i8, ptr %0, i64 4
  %i.eq = load i16, ptr %i.ep, align 1
  %i.er = zext i16 %i.eq to i32
  %i.es = xor i32 %i.er, 12341
  %i.et = or i32 %i.eo, %i.es
end_hunk_0
begin_hunk_1_@_ZN5clang6driver5tools5sparc21getSparcAsmModeForCPUEN4llvm9StringRefERKNS3_6TripleE:bb.a
bb.u:                                             ; preds = %bb.t
  %i.ew = load i32, ptr %0, align 1
  %i.ex = xor i32 %i.ew, 875716973
  %i.ey = getelementptr i8, ptr %0, i64 4
  %i.ez = load i16, ptr %i.ey, align 1
  %i.fa = zext i16 %i.ez to i32
  %i.fb = xor i32 %i.fa, 13621
  %i.fc = or i32 %i.ex, %i.fb
  %i.fd = icmp ne i32 %i.fc, 0
  %i.fe = zext i1 %i.fd to i32
  %.not.i.i197 = icmp eq i32 %i.fe, 0
  br i1 %.not.i.i197, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ff = load i32, ptr %0, align 1
  %i.fg = xor i32 %i.ff, 2016567661
  %i.fh = getelementptr i8, ptr %0, i64 4
  %i.fi = load i16, ptr %i.fh, align 1
  %i.fj = zext i16 %i.fi to i32
  %i.fk = xor i32 %i.fj, 30773
  %i.fl = or i32 %i.fg, %i.fk
  %i.fm = icmp ne i32 %i.fl, 0
  %i.fn = zext i1 %i.fm to i32
  %.not.i.i205 = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i205, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fo = load i32, ptr %0, align 1
  %i.fp = xor i32 %i.fo, 808608109
  %i.fq = getelementptr i8, ptr %0, i64 4
  %i.fr = load i16, ptr %i.fq, align 1
  %i.fs = zext i16 %i.fr to i32
  %i.ft = xor i32 %i.fs, 12344
  %i.fu = or i32 %i.fp, %i.ft
  %i.fv = icmp ne i32 %i.fu, 0
  %i.fw = zext i1 %i.fv to i32
  %.not.i.i213 = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i213, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fx = load i32, ptr %0, align 1
  %i.fy = xor i32 %i.fx, 808608109
  %i.fz = getelementptr i8, ptr %0, i64 4
  %i.ga = load i16, ptr %i.fz, align 1
  %i.gb = zext i16 %i.ga to i32
  %i.gc = xor i32 %i.gb, 13624
  %i.gd = or i32 %i.fy, %i.gc
  %i.ge = icmp ne i32 %i.gd, 0
  %i.gf = zext i1 %i.ge to i32
  %.not.i.i221 = icmp eq i32 %i.gf, 0
  br i1 %.not.i.i221, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gg = load i32, ptr %0, align 1
  %i.gh = xor i32 %i.gg, 875716973
  %i.gi = getelementptr i8, ptr %0, i64 4
  %i.gj = load i16, ptr %i.gi, align 1
  %i.gk = zext i16 %i.gj to i32
  %i.gl = xor i32 %i.gk, 12344
  %i.gm = or i32 %i.gh, %i.gl
  %i.gn = icmp ne i32 %i.gm, 0
  %i.go = zext i1 %i.gn to i32
  %.not.i.i229 = icmp eq i32 %i.go, 0
  br i1 %.not.i.i229, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gp = load i32, ptr %0, align 1
  %i.gq = xor i32 %i.gp, 875716973
  %i.gr = getelementptr i8, ptr %0, i64 4
  %i.gs = load i16, ptr %i.gr, align 1
  %i.gt = zext i16 %i.gs to i32
  %i.gu = xor i32 %i.gt, 13624
  %i.gv = or i32 %i.gq, %i.gu
  %i.gw = icmp ne i32 %i.gv, 0
  %i.gx = zext i1 %i.gw to i32
  %.not.i.i237 = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i237, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gy = load i32, ptr %0, align 1
  %i.gz = xor i32 %i.gy, 2016567661
  %i.ha = getelementptr i8, ptr %0, i64 4
  %i.hb = load i16, ptr %i.ha, align 1
  %i.hc = zext i16 %i.hb to i32
  %i.hd = xor i32 %i.hc, 30776
  %i.he = or i32 %i.gz, %i.hd
  %i.hf = icmp ne i32 %i.he, 0
  %i.hg = zext i1 %i.hf to i32
  %.not.i.i245 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i245, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit255.thread816

bb.ab:                                            ; preds = %bb.f
  %i.hh = load i32, ptr %0, align 1
  %i.hi = xor i32 %i.hh, 1852794220
  %i.hj = getelementptr i8, ptr %0, i64 4
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = zext i8 %i.hk to i32
  %i.hm = xor i32 %i.hl, 50
  %i.hn = or i32 %i.hi, %i.hm
  %i.ho = icmp ne i32 %i.hn, 0
  %i.hp = zext i1 %i.ho to i32
  %.not.i.i253 = icmp eq i32 %i.hp, 0
  br i1 %.not.i.i253, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit271.thread747

_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit255.thread816: ; preds = %bb.aa
  %i.hq = load i32, ptr %0, align 1
  %i.hr = xor i32 %i.hq, 959870049
  %i.hs = getelementptr i8, ptr %0, i64 4
  %i.ht = load i16, ptr %i.hs, align 1
  %i.hu = zext i16 %i.ht to i32
  %i.hv = xor i32 %i.hu, 25911
  %i.hw = or i32 %i.hr, %i.hv
  %i.hx = icmp ne i32 %i.hw, 0
  %i.hy = zext i1 %i.hx to i32
  %.not.i.i261 = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i261, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit255.thread816
  %i.hz = load i32, ptr %0, align 1
  %i.ia = xor i32 %i.hz, 959870049
  %i.ib = getelementptr i8, ptr %0, i64 4
  %i.ic = load i16, ptr %i.ib, align 1
  %i.id = zext i16 %i.ic to i32
  %i.ie = xor i32 %i.id, 26167
  %i.if = or i32 %i.ia, %i.ie
  %i.ig = icmp ne i32 %i.if, 0
  %i.ih = zext i1 %i.ig to i32
  %.not.i.i269 = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i269, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit271.thread747: ; preds = %bb.ab
  %i.ii = load i32, ptr %0, align 1
  %i.ij = xor i32 %i.ii, 1852794220
  %i.ik = getelementptr i8, ptr %0, i64 4
  %i.il = load i8, ptr %i.ik, align 1
  %i.im = zext i8 %i.il to i32
  %i.in = xor i32 %i.im, 51
  %i.io = or i32 %i.ij, %i.in
  %i.ip = icmp ne i32 %i.io, 0
  %i.iq = zext i1 %i.ip to i32
  %.not.i.i277 = icmp eq i32 %i.iq, 0
  br i1 %.not.i.i277, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit271.thread747
  %i.ir = load i32, ptr %0, align 1
  %i.is = xor i32 %i.ir, 959870069
  %i.it = getelementptr i8, ptr %0, i64 4
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = zext i8 %i.iu to i32
  %i.iw = xor i32 %i.iv, 57
  %i.ix = or i32 %i.is, %i.iw
  %i.iy = icmp ne i32 %i.ix, 0
  %i.iz = zext i1 %i.iy to i32
  %.not.i.i285 = icmp eq i32 %i.iz, 0
  br i1 %.not.i.i285, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.ae

_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit159.thread812: ; preds = %bb.p
  %i.ja = load i32, ptr %0, align 1
  %i.jb = xor i32 %i.ja, 825717351
  %i.jc = getelementptr i8, ptr %0, i64 3
  %i.jd = load i32, ptr %i.jc, align 1
  %i.je = xor i32 %i.jd, 1668428337
  %i.jf = or i32 %i.jb, %i.je
  %i.jg = icmp ne i32 %i.jf, 0
  %i.jh = zext i1 %i.jg to i32
  %.not.i.i293 = icmp eq i32 %i.jh, 0
  br i1 %.not.i.i293, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

bb.ae:                                            ; preds = %bb.ad
  %i.ji = load i32, ptr %0, align 1
  %i.jj = xor i32 %i.ji, 1852794220
  %i.jk = getelementptr i8, ptr %0, i64 4
  %i.jl = load i8, ptr %i.jk, align 1
  %i.jm = zext i8 %i.jl to i32
  %i.jn = xor i32 %i.jm, 52
  %i.jo = or i32 %i.jj, %i.jn
  %i.jp = icmp ne i32 %i.jo, 0
  %i.jq = zext i1 %i.jp to i32
  %.not.i.i301 = icmp eq i32 %i.jq, 0
  br i1 %.not.i.i301, label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, label %bb.af

_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit95.thread852.thread865, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit111.thread887, %bb.o, %bb.p, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit127.thread803.thread902, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit143.thread567, %bb.q, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit159.thread913, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit255.thread816, %bb.ac, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit271.thread747, %bb.ad, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit159.thread812, %bb.ae
  %.sroa.72.32.ph = phi ptr [ @.str.9, %bb.ad ], [ @.str.26, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit159.thread812 ], [ @.str.9, %bb.ac ], [ @.str.26, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit271.thread747 ], [ @.str.9, %bb.ab ], [ @.str.9, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit255.thread816 ], [ @.str.26, %bb.z ], [ @.str.26, %bb.aa ], [ @.str.26, %bb.x ], [ @.str.26, %bb.y ], [ @.str.26, %bb.v ], [ @.str.26, %bb.w ], [ @.str.26, %bb.t ], [ @.str.26, %bb.u ], [ @.str.26, %bb.r ], [ @.str.26, %bb.s ], [ @.str.24, %bb.q ], [ @.str.26, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit159.thread913 ], [ @.str.24, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit143.thread567 ], [ @.str.23, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit127.thread803.thread902 ], [ @.str.8, %bb.o ], [ @.str.23, %bb.p ], [ @.str.8, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit95.thread852.thread865 ], [ @.str.8, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit111.thread887 ], [ @.str.18, %bb.m ], [ @.str.18, %bb.n ], [ @.str.9, %bb.k ], [ @.str.13, %bb.l ], [ @.str.13, %bb.i ], [ @.str.13, %bb.j ], [ @.str.9, %bb.h ], [ @.str.9, %bb.g ], [ @.str.26, %bb.ae ]
  br label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

bb.af:                                            ; preds = %bb.ae
  %i.jr = load i32, ptr %0, align 1
  %i.js = xor i32 %i.jr, 876048999
  %i.jt = getelementptr i8, ptr %0, i64 4
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = zext i8 %i.ju to i32
  %i.jw = xor i32 %i.jv, 48
  %i.jx = or i32 %i.js, %i.jw
  %i.jy = icmp ne i32 %i.jx, 0
  %i.jz = zext i1 %i.jy to i32
  %.not.i.i309 = icmp eq i32 %i.jz, 0
  %i.ka = select i1 %.not.i.i309, ptr @.str.26, ptr %.str.8..str.9
  br label %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311

_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit311: ; preds = %bb.o, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit95.thread852.thread865, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit111.thread887, %bb.l, %bb.j, %bb.i, %bb.c, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38.thread, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38, %.split, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit159.thread812, %bb.ac, %bb.q, %bb.af, %bb.f
  %.0 = phi ptr [ %.str.8..str.9, %bb.f ], [ %.sroa.72.32.ph, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit303.thread ], [ %.str.8..str.9, %bb.q ], [ %i.ka, %bb.af ], [ %.str.8..str.9, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit159.thread812 ], [ %.013, %bb.c ], [ %.str.8..str.9, %bb.ac ], [ %.sroa.12.3944, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38.thread ], [ %.013, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit38 ], [ %.013, %.split ], [ %.str.8..str.9, %bb.i ], [ %.str.8..str.9, %bb.j ], [ %.str.8..str.9, %bb.l ], [ %.str.8..str.9, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit111.thread887 ], [ %.str.8..str.9, %_ZN4llvm12StringSwitchIPKcS2_E4CaseENS_13StringLiteralES2_.exit95.thread852.thread865 ], [ %.str.8..str.9, %bb.o ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN5clang6driver5tools5sparc16getSparcFloatABIERKNS0_6DriverERKN4llvm3opt7ArgListE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1208) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = tail call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_S5_S5_S5_EEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 3064, i32 noundef 2785, i32 noundef 2582, i32 noundef 2562, i32 noundef 2550) ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 3064) #13
  br i1 %i.b, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 2785) #13
  br i1 %i.c, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 2582) #13
  br i1 %i.d, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 2562) #13
  br i1 %i.e, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 5 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.critedge, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.f
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #13
  %.not.i.i.i.i = icmp eq i64 %i.i, 4
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZN4llvm9StringRefC2EPKc.exit25

bb.g:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.j = load i32, ptr %i.h, align 1
  %i.k = icmp ne i32 %i.j, 1952870259
  %i.l = zext i1 %i.k to i32
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr %i.h, align 1
  %i.n = icmp ne i32 %i.m, 1685217640
  %i.o = zext i1 %i.n to i32
  %.not.i.i20 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i20, label %.critedge, label %_ZN4llvm9StringRefC2EPKc.exit25

_ZN4llvm9StringRefC2EPKc.exit25:                  ; preds = %bb.h, %_ZN4llvm9StringRefC2EPKc.exit
  %char0 = load i8, ptr %i.h, align 1
  %i.p = icmp eq i8 %char0, 0
  br i1 %i.p, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.q = load ptr, ptr %0, align 8, !tbaa !131, !noalias !132, !nonnull !31, !align !133
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %2, ptr noundef nonnull align 8 dereferenceable(15256) %i.q, i32 0, i32 noundef 394) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZNK4llvm3opt3Arg11getAsStringB5cxx11ERKNS0_7ArgListE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %1) #13
  %i.r = load ptr, ptr %3, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !33
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %2, ptr %i.r, i64 %i.t)
  %i.u = load ptr, ptr %3, align 8, !tbaa !32     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !34
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g, %bb.d, %bb.e, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b, %bb.f, %_ZN4llvm9StringRefC2EPKc.exit25, %bb.a
  %i.z = phi i32 [ 2, %bb.f ], [ 2, %bb.a ], [ 2, %_ZN4llvm9StringRefC2EPKc.exit25 ], [ 1, %bb.b ], [ 2, %bb.d ], [ 2, %bb.e ], [ 1, %bb.c ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 2, %bb.h ], [ 1, %bb.g ]
  ret i32 %i.z
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_S5_S5_S5_EEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %6 = alloca [5 x %"class.llvm::opt::OptSpecifier"], align 4 ; 8 uses
  %7 = alloca %"class.llvm::opt::arg_iterator", align 8 ; 11 uses
  %8 = alloca %"class.llvm::opt::arg_iterator", align 8 ; 11 uses
  %9 = alloca %"class.llvm::opt::arg_iterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !136
  store i32 %1, ptr %6, align 4, !noalias !136
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %2, ptr %i.a, align 4, !noalias !136
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %3, ptr %i.b, align 4, !noalias !136
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %4, ptr %i.c, align 4, !noalias !136
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %5, ptr %i.d, align 4, !noalias !136
  %i.e = call i64 @_ZNK4llvm3opt7ArgList8getRangeESt16initializer_listINS0_12OptSpecifierEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull %6, i64 5) #13, !noalias !136 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.e, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25, !noalias !136 ; 2 uses
  %i.h = and i64 %i.e, 4294967295
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.4.0.extract.shift.i ; 3 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !37, !noalias !136
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !38, !noalias !136
  %.ptr8.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %1, ptr %.ptr8.i.i, align 8, !tbaa !39, !noalias !136
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %2, ptr %i.l, align 4, !tbaa !39, !noalias !136
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %3, ptr %i.m, align 8, !tbaa !39, !noalias !136
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %4, ptr %i.n, align 4, !tbaa !39, !noalias !136
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %5, ptr %i.o, align 8, !tbaa !39, !noalias !136
  call void @_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj5EE13SkipToNextArgEv(ptr noundef nonnull align 8 dereferenceable(36) %7), !noalias !136
  store ptr %i.j, ptr %8, align 8, !tbaa !37, !noalias !136
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.j, ptr %i.p, align 8, !tbaa !38, !noalias !136
  %.ptr8.i20.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %1, ptr %.ptr8.i20.i, align 8, !tbaa !39, !noalias !136
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %2, ptr %i.q, align 4, !tbaa !39, !noalias !136
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %3, ptr %i.r, align 8, !tbaa !39, !noalias !136
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %4, ptr %i.s, align 4, !tbaa !39, !noalias !136
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %5, ptr %i.t, align 8, !tbaa !39, !noalias !136
  call void @_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj5EE13SkipToNextArgEv(ptr noundef nonnull align 8 dereferenceable(36) %8), !noalias !136
  %.sroa.418.40.copyload = load ptr, ptr %8, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.sroa.010.0.copyload19 = load ptr, ptr %9, align 8, !tbaa !40 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.010.0.copyload19, %.sroa.418.40.copyload
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %i.u, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  ret ptr %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.010.0.copyload21 = phi ptr [ %.sroa.010.0.copyload, %.lr.ph ], [ %.sroa.010.0.copyload19, %bb.a ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.010.0.copyload21, align 8, !tbaa !42 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58   ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.u, ptr %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 44 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4
  %i.z = or i8 %i.y, 1
  store i8 %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload21, i64 8
  store ptr %i.aa, ptr %9, align 8, !tbaa !37
  call void @_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj5EE13SkipToNextArgEv(ptr noundef nonnull align 8 dereferenceable(36) %9)
  %.sroa.010.0.copyload = load ptr, ptr %9, align 8, !tbaa !40 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0.copyload, %.sroa.418.40.copyload
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16), i32) local_unnamed_addr #4

declare void @_ZNK4llvm3opt3Arg11getAsStringB5cxx11ERKNS0_7ArgListE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !139, !range !140, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5clang17DiagnosticBuilder4EmitEv.exit

end_hunk_1
