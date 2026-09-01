Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/find_msvc_tools-762109e8b810eaf1.find_msvc_tools.2d7dcf19d5894587-cgu.0?download=true
inline.NumInlined: 322
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [96 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/collections/btree/navigate.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\C6\00\00\00'\00\00\00" }>, align 8
@2 = private unnamed_addr constant [80 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/str/pattern.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00A\06\00\00\14\00\00\00" }>, align 8
@4 = private unnamed_addr constant [84 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/str/validations.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"S\00\00\00\00\00\00\000\00\00\00$\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"S\00\00\00\00\00\00\007\00\00\00(\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"S\00\00\00\00\00\00\00?\00\00\00,\00\00\00" }>, align 8
@8 = private unnamed_addr constant [92 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/io/error/repr_bitpacked.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"[\00\00\00\00\00\00\00\0B\01\00\00\1A\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00X\02\00\000\00\00\00" }>, align 8
@11 = private unnamed_addr constant [4 x i8] c"PATH", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00{\07\00\00I\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\E7\00\00\007\00\00\00" }>, align 8
@14 = private unnamed_addr constant [19 x i8] c"VisualStudioVersion", align 1
@15 = private unnamed_addr constant [158 x i8] c"/\0A\0Aunsupported or unknown VisualStudio version: \C0k\0Aif another version is installed consider running the appropriate vcvars script before building this crate\0A\00", align 1
@16 = private unnamed_addr constant [158 x i8] c"\0A\0Acouldn't determine visual studio generator\0Aif VisualStudio is installed, however, consider running the appropriate vcvars script before building this crate\0A", align 1
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs3U9i7nQCKwt_15find_msvc_tools10find_toolsNtB5_12StdEnvGetterNtB5_9EnvGetter7get_env }>, align 8
@18 = private unnamed_addr constant [7 x i8] c"msbuild", align 1
@19 = private unnamed_addr constant [6 x i8] c"devenv", align 1
@20 = private unnamed_addr constant [5 x i8] c"clang", align 1
@21 = private unnamed_addr constant [4 x i8] c"lldb", align 1
@22 = private unnamed_addr constant [4 x i8] c"llvm", align 1
@23 = private unnamed_addr constant [2 x i8] c"ld", align 1
@24 = private unnamed_addr constant [3 x i8] c"lld", align 1
@25 = private unnamed_addr constant [1 x i8] c"-", align 1
@26 = private unnamed_addr constant [4 x i8] c"msvc", align 1
@27 = private unnamed_addr constant [12 x i8] c"VCINSTALLDIR", align 1
@28 = private unnamed_addr constant [12 x i8] c"VSINSTALLDIR", align 1
@29 = private unnamed_addr constant [199 x i8] c"unsafe precondition(s) violated: hint::unreachable_unchecked must never be reached\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@30 = private unnamed_addr constant [79 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/slice/iter.rs\00", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"N\00\00\00\00\00\00\00O\05\00\00\1D\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00|\04\00\00$\00\00\00" }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.a, ptr %1, i64 %2, ptr %3, i64 %4)
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs3U9i7nQCKwt_15find_msvc_tools(ptr noalias align 8 %i.b, ptr align 8 %i.a) #32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = sub nuw i64 %2, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ null, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 13 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %3, %1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %3, 1
  br i1 %i.f, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %3, %1
  br i1 %i.g, label %bb.x, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %3, 33
  br i1 %i.h, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.i = load i8, ptr %2, align 1                 ; 2 uses
  %i.j = icmp ult i64 %1, 16
  br i1 %i.j, label %.lr.ph.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 %i.i, ptr %0, i64 %1)
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = icmp eq i64 %i.l, 1
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.sroa.04.09.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.09.i.i.i
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, %i.i                    ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.04.09.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.q, %1
  %or.cond = select i1 %i.p, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containsCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %bb.e
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.b, ptr %0, i64 %1, ptr %2, i64 %3)
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs3U9i7nQCKwt_15find_msvc_tools(ptr noalias align 8 %i.c, ptr align 8 %i.b) #32
  %i.r = load i64, ptr %i.c, align 8
  %i.s = icmp eq i64 %i.r, 1
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = load i8, ptr %2, align 1                 ; 3 uses
  %i.u = add nsw i64 %3, -1                       ; 2 uses
  %i.v = icmp eq i64 %3, 2
  br i1 %i.v, label %.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %3, i64 4)
  br label %.lr.ph

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  %i.x = icmp ult i64 %i.w, %i.z
  br i1 %i.x, label %.lr.ph, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containsCs3U9i7nQCKwt_15find_msvc_tools.exit.i

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.y = phi i64 [ %3, %bb.j ], [ %i.z, %bb.k ]
  %i.z = add nsw i64 %i.y, -1                     ; 6 uses
  %i.aa = icmp ult i64 %i.z, %3
  br i1 %i.aa, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.z, i64 range(i64 2, 33) %3, ptr nonnull align 8 @12) #33
  unreachable

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ac, %i.t
  br i1 %.not.i.not.i.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  %i.ad = add nuw nsw i64 %3, 15
  %i.ae = icmp ult i64 %1, %i.ad
  br i1 %i.ae, label %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i, label %bb.n

.thread.i.i:                                      ; preds = %bb.i
  %i.af = icmp ult i64 %1, 17
  br i1 %i.af, label %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i, label %.thread92.i.i

.thread92.i.i:                                    ; preds = %.thread.i.i
  %i.ag = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread92.i.i
  %i.ak = phi i8 [ %.pre.i.i, %.thread92.i.i ], [ %i.ac, %bb.n ]
  %i.al = phi <16 x i8> [ %i.ah, %.thread92.i.i ], [ %i.aj, %bb.n ] ; 6 uses
  %storemerge9194.i.i = phi i64 [ 1, %.thread92.i.i ], [ %i.z, %bb.n ] ; 6 uses
  %i.am = insertelement <16 x i8> poison, i8 %i.ak, i64 0
  %i.an = shufflevector <16 x i8> %i.am, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1
  store ptr %0, ptr %i.a, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.u, ptr %i.ar, align 8
  %i.as = add nuw nsw i64 %3, 63                  ; 2 uses
  %.not.i.i = icmp ult i64 %i.as, %1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.s, %bb.o
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %bb.o ], [ %i.co, %bb.s ] ; 2 uses
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %bb.o ], [ %.sroa.014.2.3.i.i, %bb.s ] ; 2 uses
  %i.at = add nuw nsw i64 %3, 15                  ; 2 uses
  %i.au = add i64 %.sroa.06.0.lcssa.i.i, %i.at
  %i.av = icmp uge i64 %i.au, %1
  %i.aw = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3104.i.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond3104.i.i, label %._crit_edge.i.i, label %.lr.ph106.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %bb.s
  %.sroa.06.0102.i.i = phi i64 [ %i.co, %bb.s ], [ 0, %bb.o ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.06.0102.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.i.i = load <16 x i8>, ptr %i.ay, align 1
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i, %i.al
  %i.ba = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i, %i.an
  %i.bb = and <16 x i1> %i.az, %i.ba
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.be, align 1
  %i.bf = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i, %i.al
  %i.bg = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i, %i.an
  %i.bh = and <16 x i1> %i.bf, %i.bg
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.bk, align 1
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i, %i.al
  %i.bm = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i, %i.an
  %i.bn = and <16 x i1> %i.bl, %i.bm
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.bq, align 1
  %i.br = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i, %i.al
  %i.bs = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i, %i.an
  %i.bt = and <16 x i1> %i.br, %i.bs
  %i.bu = bitcast <16 x i1> %i.bt to i16          ; 2 uses
  %i.bv = icmp eq i16 %i.bc, 0
  br i1 %i.bv, label %.preheader95.1.i.i, label %bb.t

.preheader95.1.i.i:                               ; preds = %bb.t, %.lr.ph.i.i
  %.sroa.014.2.i.i = phi i8 [ 0, %.lr.ph.i.i ], [ %i.ct, %bb.t ] ; 3 uses
  %i.bw = icmp eq i16 %i.bi, 0
  br i1 %i.bw, label %.preheader95.2.i.i, label %bb.p

bb.p:                                             ; preds = %.preheader95.1.i.i
  %i.bx = or disjoint i64 %.sroa.06.0102.i.i, 16
  %i.by = trunc nuw i8 %.sroa.014.2.i.i to i1
  %i.bz = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a, i64 %i.bx, i16 %i.bi, i1 zeroext %i.by) #32
  %i.ca = zext i1 %i.bz to i8
  %i.cb = or i8 %.sroa.014.2.i.i, %i.ca
  br label %.preheader95.2.i.i

.preheader95.2.i.i:                               ; preds = %bb.p, %.preheader95.1.i.i
  %.sroa.014.2.1.i.i = phi i8 [ %.sroa.014.2.i.i, %.preheader95.1.i.i ], [ %i.cb, %bb.p ] ; 3 uses
  %i.cc = icmp eq i16 %i.bo, 0
  br i1 %i.cc, label %.preheader95.3.i.i, label %bb.q

bb.q:                                             ; preds = %.preheader95.2.i.i
  %i.cd = or disjoint i64 %.sroa.06.0102.i.i, 32
  %i.ce = trunc nuw i8 %.sroa.014.2.1.i.i to i1
  %i.cf = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a, i64 %i.cd, i16 %i.bo, i1 zeroext %i.ce) #32
  %i.cg = zext i1 %i.cf to i8
  %i.ch = or i8 %.sroa.014.2.1.i.i, %i.cg
  br label %.preheader95.3.i.i

.preheader95.3.i.i:                               ; preds = %bb.q, %.preheader95.2.i.i
  %.sroa.014.2.2.i.i = phi i8 [ %.sroa.014.2.1.i.i, %.preheader95.2.i.i ], [ %i.ch, %bb.q ] ; 3 uses
  %i.ci = icmp eq i16 %i.bu, 0
  br i1 %i.ci, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader95.3.i.i
  %i.cj = or disjoint i64 %.sroa.06.0102.i.i, 48
  %i.ck = trunc nuw i8 %.sroa.014.2.2.i.i to i1
  %i.cl = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a, i64 %i.cj, i16 %i.bu, i1 zeroext %i.ck) #32
  %i.cm = zext i1 %i.cl to i8
  %i.cn = or i8 %.sroa.014.2.2.i.i, %i.cm
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader95.3.i.i
  %.sroa.014.2.3.i.i = phi i8 [ %.sroa.014.2.2.i.i, %.preheader95.3.i.i ], [ %i.cn, %bb.r ] ; 2 uses
  %i.co = add i64 %.sroa.06.0102.i.i, 64          ; 3 uses
  %i.cp = add i64 %i.co, %i.as
  %i.cq = icmp uge i64 %i.cp, %1
  %i.cr = trunc nuw i8 %.sroa.014.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.cs = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a, i64 %.sroa.06.0102.i.i, i16 %i.bc, i1 zeroext false) #32
  %i.ct = zext i1 %i.cs to i8
  br label %.preheader95.1.i.i

._crit_edge.i.i:                                  ; preds = %bb.u, %.preheader.i.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.014.4.i.i, %bb.u ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.aw, %.preheader.i.i ], [ %i.dn, %bb.u ]
  %i.cu = sub nuw i64 %1, %i.u
  %i.cv = add i64 %i.cu, -16                      ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %i.cv ; 2 uses
  %.sroa.0.0.copyload.i52.i.i = load <16 x i8>, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i53.i.i = load <16 x i8>, ptr %i.cx, align 1
  %i.cy = icmp eq <16 x i8> %.sroa.0.0.copyload.i52.i.i, %i.al
  %i.cz = icmp eq <16 x i8> %.sroa.01.0.copyload.i53.i.i, %i.an
  %i.da = and <16 x i1> %i.cy, %i.cz
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %i.dc = icmp eq i16 %i.db, 0
  br i1 %i.dc, label %.loopexit.i, label %bb.w

.lr.ph106.i.i:                                    ; preds = %.preheader.i.i, %bb.u
  %.sroa.06.1105.i.i = phi i64 [ %i.dk, %bb.u ], [ %.sroa.06.0.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.06.1105.i.i ; 2 uses
  %.sroa.0.0.copyload.i54.i.i = load <16 x i8>, ptr %i.dd, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i55.i.i = load <16 x i8>, ptr %i.de, align 1
  %i.df = icmp eq <16 x i8> %.sroa.0.0.copyload.i54.i.i, %i.al
  %i.dg = icmp eq <16 x i8> %.sroa.01.0.copyload.i55.i.i, %i.an
  %i.dh = and <16 x i1> %i.df, %i.dg
  %i.di = bitcast <16 x i1> %i.dh to i16          ; 2 uses
  %i.dj = icmp eq i16 %i.di, 0
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.v, %.lr.ph106.i.i
  %.sroa.014.4.i.i = phi i8 [ 0, %.lr.ph106.i.i ], [ %i.dp, %bb.v ] ; 2 uses
  %i.dk = add i64 %.sroa.06.1105.i.i, 16          ; 2 uses
  %i.dl = add i64 %i.dk, %i.at
  %i.dm = icmp uge i64 %i.dl, %1
  %i.dn = trunc nuw i8 %.sroa.014.4.i.i to i1     ; 2 uses
  %or.cond3.i.i = or i1 %i.dm, %i.dn
  br i1 %or.cond3.i.i, label %._crit_edge.i.i, label %.lr.ph106.i.i

bb.v:                                             ; preds = %.lr.ph106.i.i
  %i.do = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a, i64 %.sroa.06.1105.i.i, i16 %i.di, i1 zeroext false) #32
  %i.dp = zext i1 %i.do to i8
  br label %bb.u

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.dq = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a, i64 %i.cv, i16 %i.db, i1 zeroext %.lcssa.i.i) #32
  %i.dr = zext i1 %i.dq to i8
  %i.ds = or i8 %.sroa.014.3.lcssa.i.i, %i.dr
  br label %.loopexit.i

_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i: ; preds = %.thread.i.i, %bb.m
  %.not.not.i.i.i31 = icmp eq ptr %0, null
  br i1 %.not.not.i.i.i31, label %.loopexit.i, label %.split.i.i.i

_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.backedge.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.061.0.i.i32, i64 1
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  %.in = phi i64 [ %i.dv, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i ], [ %1, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i ]
  %.sroa.061.0.i.i32 = phi ptr [ %i.dt, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i ], [ %0, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i ] ; 2 uses
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %.sroa.061.0.i.i32, ptr noundef nonnull dereferenceable(1) %2, i64 range(i64 2, 33) %3)
  %i.du = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.du, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.backedge.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.backedge.i.i.i: ; preds = %.split.i.i.i
  %i.dv = add i64 %.in, -1                        ; 2 uses
  %i.dw = icmp ugt i64 %3, %i.dv
  br i1 %i.dw, label %.loopexit.i, label %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containsCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

.loopexit.i:                                      ; preds = %.split.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.backedge.i.i.i, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i, %bb.w, %._crit_edge.i.i
  %.sroa.0.0.i.ph.i = phi i8 [ %.sroa.014.3.lcssa.i.i, %._crit_edge.i.i ], [ %i.ds, %bb.w ], [ 0, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.backedge.i.i.i ], [ 1, %.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dx = trunc nuw i8 %.sroa.0.0.i.ph.i to i1
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.x:                                             ; preds = %bb.d
  %bcmp.i = tail call i32 @bcmp(ptr %2, ptr %0, i64 %3)
  %i.dy = icmp eq i32 %bcmp.i, 0
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %.lr.ph.i.i.i, %bb.a, %bb.d, %bb.g, %bb.h, %.loopexit.i, %bb.x
  %.sroa.0.0.i = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ %i.dx, %.loopexit.i ], [ %i.s, %bb.h ], [ %i.dy, %bb.x ], [ %i.m, %bb.g ], [ %i.p, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE3mapNtNtCsaL1QbXo9JQH_3std7process7CommandNCNvNtBM_10find_tools4find0EBM_(ptr nofree writeonly sret([200 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [200 x i8], align 8               ; 2 uses
  %i.d = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !4
  invoke void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3new(ptr nonnull sret([200 x i8]) align 8 %i.a, ptr %.val.i.i.i.i, i64 %.val1.i.i.i.i)
          to label %.noexc.i unwind label %bb.f, !noalias !4

.noexc.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noalias !4
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  br label %_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3envRNtNtNtB8_3ffi6os_str8OsStringBP_ECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i

bb.c:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6common7CommandECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a)
          to label %.body.i unwind label %bb.e, !noalias !4

_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3envRNtNtNtB8_3ffi6os_str8OsStringBP_ECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i: ; preds = %bb.d, %.noexc.i
  %.sroa.0.0.i.i = phi ptr [ %i.h, %.noexc.i ], [ %i.o, %bb.d ] ; 7 uses
  %i.n = icmp eq ptr %.sroa.0.0.i.i, %i.k
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i, null
  %or.cond.i.i = or i1 %i.n, %.not.i.i
  br i1 %or.cond.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3envRNtNtNtB8_3ffi6os_str8OsStringBP_ECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48
  %i.p = getelementptr i8, ptr %.sroa.0.0.i.i, i64 8
  %.val.i.i4.i.i = load ptr, ptr %i.p, align 8, !noalias !4
  %i.q = getelementptr i8, ptr %.sroa.0.0.i.i, i64 16
  %.val1.i.i5.i.i = load i64, ptr %i.q, align 8, !noalias !4
  %i.r = getelementptr i8, ptr %.sroa.0.0.i.i, i64 32
  %.val.i1.i.i.i = load ptr, ptr %i.r, align 8, !noalias !4
  %i.s = getelementptr i8, ptr %.sroa.0.0.i.i, i64 40
  %.val1.i2.i.i.i = load i64, ptr %i.s, align 8, !noalias !4
  invoke void @_RNvMs_NtNtNtCsaL1QbXo9JQH_3std3sys7process3envNtB4_10CommandEnv3set(ptr nonnull align 8 %i.l, ptr %.val.i.i4.i.i, i64 %.val1.i.i5.i.i, ptr %.val.i1.i.i.i, i64 %.val1.i2.i.i.i)
          to label %_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3envRNtNtNtB8_3ffi6os_str8OsStringBP_ECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i unwind label %bb.c, !noalias !4

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.m, %bb.c ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_(ptr nonnull align 8 %i.b) #35
          to label %common.resume.i unwind label %bb.l, !noalias !4

bb.g:                                             ; preds = %_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3envRNtNtNtB8_3ffi6os_str8OsStringBP_ECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef nonnull align 8 dereferenceable(200) %i.a, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i unwind label %bb.h, !noalias !4

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.b)
          to label %.body.i.i unwind label %bb.i, !noalias !4

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.b)
          to label %_RNCNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools4find0B5_.exit unwind label %bb.j, !noalias !4

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.v, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.y) #35
          to label %common.resume.i unwind label %bb.k, !noalias !4

bb.k:                                             ; preds = %.body.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4
  unreachable

common.resume.i:                                  ; preds = %.body.i.i, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %.body.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4
  unreachable

_RNCNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools4find0B5_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.ab), !noalias !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.c, i64 200, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNCNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools4find0B5_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE7or_elseNCNvNtBM_10find_tools18find_tool_with_envs0_0EBM_(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_.exit

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !7
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEEB11_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %1)
          to label %.body.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.d, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
