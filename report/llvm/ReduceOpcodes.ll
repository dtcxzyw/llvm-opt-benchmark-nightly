Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ReduceOpcodes?download=true
inline.NumInlined: 597
inline.NumDeleted: 396
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::InsertPosition" = type { %"class.llvm::ilist_iterator_w_bits" }
%"class.llvm::ilist_iterator_w_bits" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.llvm::IRBuilder" = type { %"class.llvm::IRBuilderBase", %"class.llvm::ConstantFolder", %"class.llvm::IRBuilderDefaultInserter" }
%"class.llvm::IRBuilderBase" = type { %"class.llvm::DebugLoc", ptr, %"class.llvm::ilist_iterator_w_bits", ptr, ptr, ptr, ptr, %"class.llvm::FastMathFlags", i8, i8, i8, %"class.llvm::ArrayRef.123" }
%"class.llvm::DebugLoc" = type { ptr }
%"class.llvm::FastMathFlags" = type { i32 }
%"class.llvm::ArrayRef.123" = type { ptr, i64 }
%"class.llvm::ConstantFolder" = type { %"class.llvm::IRBuilderFolder" }
%"class.llvm::IRBuilderFolder" = type { ptr }
%"class.llvm::IRBuilderDefaultInserter" = type { ptr }
%"class.llvm::SmallVector.143" = type { %"class.llvm::SmallVectorImpl.144", %"struct.llvm::SmallVectorStorage.147" }
%"class.llvm::SmallVectorImpl.144" = type { %"class.llvm::SmallVectorTemplateBase.145" }
%"class.llvm::SmallVectorTemplateBase.145" = type { %"class.llvm::SmallVectorTemplateCommon.146" }
%"class.llvm::SmallVectorTemplateCommon.146" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.147" = type { [32 x i8] }
%"class.llvm::function_ref" = type { ptr, i64 }
%class.anon = type { i8 }

$_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN4llvm14ConstantFolderE = external unnamed_addr constant { [22 x ptr] }, align 8
@_ZTVN4llvm24IRBuilderDefaultInserterE = external unnamed_addr constant { [5 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm22reduceOpcodesDeltaPassERNS_6OracleERNS_15ReducerWorkItemE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %8 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %9 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %11 = alloca ptr, align 8                       ; 8 uses
  %12 = alloca ptr, align 8                       ; 7 uses
  %13 = alloca %"class.llvm::IRBuilder", align 8  ; 20 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::SmallVector.143", align 8 ; 15 uses
  %16 = alloca %"class.llvm::IRBuilder", align 8  ; 25 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %20 = alloca %"class.llvm::ArrayRef.123", align 8 ; 4 uses
  %21 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %22 = alloca %class.anon, align 1               ; 3 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %26 = alloca %"class.llvm::ArrayRef.123", align 8 ; 4 uses
  %27 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %28 = alloca %class.anon, align 1               ; 3 uses
  %29 = alloca %"class.llvm::IRBuilder", align 8  ; 21 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %34 = alloca %"class.llvm::IRBuilder", align 8  ; 22 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !56     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.sroa.0116.0149 = load ptr, ptr %i.e, align 8, !tbaa !59 ; 2 uses
  %.not127150 = icmp eq ptr %.sroa.0116.0149, %i.f
  br i1 %.not127150, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %34, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %34, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %34, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %34, i64 48 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %34, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %34, i64 64 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %34, i64 68 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %34, i64 69
  %i.p = getelementptr inbounds nuw i8, ptr %34, i64 70
  %i.q = getelementptr inbounds nuw i8, ptr %34, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %29, i64 88 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %29, i64 96 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %29, i64 64 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %29, i64 68 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %29, i64 69
  %i.ac = getelementptr inbounds nuw i8, ptr %29, i64 70
  %i.ad = getelementptr inbounds nuw i8, ptr %29, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 20 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 68 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 69
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 70
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i74.i = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bd = ptrtoint ptr %28 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bj = ptrtoint ptr %22 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 68
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 69
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 70
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i33 = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 33
  %i.cf = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %33, i64 33
  %i.ck = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

._crit_edge154:                                   ; preds = %._crit_edge148, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph153, %._crit_edge148
  %.sroa.0116.0151 = phi ptr [ %.sroa.0116.0149, %.lr.ph153 ], [ %.sroa.0116.0, %._crit_edge148 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0116.0151, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0116.0151, i64 16 ; 2 uses
  %.sroa.0112.0143 = load ptr, ptr %i.cm, align 8, !tbaa !59 ; 2 uses
  %.not128144 = icmp eq ptr %.sroa.0112.0143, %i.cn
  br i1 %.not128144, label %._crit_edge148, label %.lr.ph147

._crit_edge148:                                   ; preds = %._crit_edge, %bb.b
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0116.0151, i64 8
  %.sroa.0116.0 = load ptr, ptr %i.co, align 8, !tbaa !59 ; 2 uses
  %.not127 = icmp eq ptr %.sroa.0116.0, %i.f
  br i1 %.not127, label %._crit_edge154, label %bb.b

.lr.ph147:                                        ; preds = %bb.b, %._crit_edge
  %.sroa.0112.0145 = phi ptr [ %.sroa.0112.0, %._crit_edge ], [ %.sroa.0112.0143, %bb.b ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0112.0145, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !62, !noalias !63 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0112.0145, i64 24 ; 2 uses
  %.not129141 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not129141, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11InstructionENS_5ValueEEEDaPT0_.exit.thread, %.lr.ph147
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0112.0145, i64 8
  %.sroa.0112.0 = load ptr, ptr %i.cs, align 8, !tbaa !59 ; 2 uses
  %.not128 = icmp eq ptr %.sroa.0112.0, %i.cn
  br i1 %.not128, label %._crit_edge148, label %.lr.ph147

.lr.ph:                                           ; preds = %.lr.ph147, %_ZN4llvm16dyn_cast_or_nullINS_11InstructionENS_5ValueEEEDaPT0_.exit.thread
  %.sroa.0107.0142 = phi ptr [ %i.cu, %_ZN4llvm16dyn_cast_or_nullINS_11InstructionENS_5ValueEEEDaPT0_.exit.thread ], [ %i.cq, %.lr.ph147 ] ; 31 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0107.0142, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !62 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -24 ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #7
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -16 ; 12 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !68
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !73, !nonnull !10, !align !11
  store ptr null, ptr %34, align 8, !tbaa !74
  store ptr %i.cy, ptr %i.i, align 8, !tbaa !75
  store ptr %i.g, ptr %i.j, align 8, !tbaa !76
  store ptr %i.h, ptr %i.k, align 8, !tbaa !77
  store ptr null, ptr %i.l, align 8, !tbaa !78
  store i32 0, ptr %i.m, align 8, !tbaa !79
  store i8 0, ptr %i.n, align 4, !tbaa !28
  store i8 2, ptr %i.o, align 1, !tbaa !80
  store i8 7, ptr %i.p, align 2, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.g, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0107.0142, i64 16 ; 4 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !83
  store ptr %i.da, ptr %i.r, align 8, !tbaa !84
  store ptr %.sroa.0107.0142, ptr %i.s, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.db = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cv) #7
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !85
  store i64 %i.dc, ptr %34, align 8, !tbaa !85
  %i.dd = load i8, ptr %i.cv, align 8, !tbaa !86
  switch i8 %i.dd, label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit [
    i8 52, label %bb.c
    i8 55, label %bb.c
    i8 50, label %bb.l
    i8 51, label %bb.l
    i8 53, label %bb.l
    i8 54, label %bb.l
    i8 44, label %bb.r
    i8 46, label %bb.r
    i8 88, label %bb.x
  ]

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  %i.de = load i64, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  %storemerge.in.pre.i.i = load i32, ptr %0, align 8, !tbaa !91 ; 6 uses
  br i1 %i.df, label %_ZN4llvm6Oracle10shouldKeepEv.exit.thread.i, label %bb.d

_ZN4llvm6Oracle10shouldKeepEv.exit.thread.i:      ; preds = %bb.c
  %storemerge.i79.i = add nsw i32 %storemerge.in.pre.i.i, 1
  store i32 %storemerge.i79.i, ptr %0, align 8, !tbaa !91
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dg = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !94
  %.not.i.i.i = icmp sge i32 %storemerge.in.pre.i.i, %i.dh
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dk = icmp sle i32 %storemerge.in.pre.i.i, %i.dj
  %i.dl = and i1 %.not.i.i.i, %i.dk               ; 2 uses
  %i.dm = icmp eq i32 %i.dj, %storemerge.in.pre.i.i
  br i1 %i.dm, label %.split.i, label %_ZN4llvm6Oracle10shouldKeepEv.exit.i

.split.i:                                         ; preds = %bb.d
  %i.dn = add i64 %i.de, -1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.do, ptr %i.ag, align 8, !tbaa !95
  store i64 %i.dn, ptr %i.ah, align 8, !tbaa !96
  %storemerge.i80.i = add nsw i32 %storemerge.in.pre.i.i, 1
  store i32 %storemerge.i80.i, ptr %0, align 8, !tbaa !91
  br i1 %i.dl, label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit, label %bb.e

_ZN4llvm6Oracle10shouldKeepEv.exit.i:             ; preds = %bb.d
  %storemerge.i.i = add nsw i32 %storemerge.in.pre.i.i, 1
  store i32 %storemerge.i.i, ptr %0, align 8, !tbaa !91
  br i1 %i.dl, label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm6Oracle10shouldKeepEv.exit.i, %.split.i, %_ZN4llvm6Oracle10shouldKeepEv.exit.thread.i
  %i.dp = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -20
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = and i32 %i.dq, 1073741824
  %.not.i.i40.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i40.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ds = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !97
  br label %_ZNK4llvm4User10getOperandEj.exit42.i

bb.g:                                             ; preds = %bb.e
  %i.du = and i32 %i.dq, 268435455
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr inbounds [32 x i8], ptr %i.cv, i64 %i.dw
  br label %_ZNK4llvm4User10getOperandEj.exit42.i

_ZNK4llvm4User10getOperandEj.exit42.i:            ; preds = %bb.g, %bb.f
  %.in96.i = phi ptr [ %i.dt, %bb.f ], [ %i.dx, %bb.g ] ; 2 uses
  %i.dy = load ptr, ptr %.in96.i, align 8, !tbaa !102 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.in96.i, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !102 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #7
  store i16 257, ptr %i.ck, align 8
  %i.eb = load i8, ptr %i.n, align 4, !tbaa !28, !range !31, !noundef !10
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit42.i
  %i.ed = call noundef ptr @_ZN4llvm13IRBuilderBase24CreateConstrainedFPBinOpEjPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeESt8optionalINS_12RoundingModeEES9_INS_2fp17ExceptionBehaviorEE(ptr noundef nonnull align 8 dereferenceable(88) %34, i32 noundef 117, ptr noundef %i.dy, ptr noundef %i.ea, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %35, ptr noundef null, i16 0, i16 0) #7
  br label %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit81

bb.i:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit42.i
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !32, !nonnull !10, !align !11 ; 2 uses
  %.sroa.02.0.copyload.i71 = load i32, ptr %i.m, align 8, !tbaa !33
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !30
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, i32 noundef 19, ptr noundef %i.dy, ptr noundef %i.ea, i32 %.sroa.02.0.copyload.i71) #7, !inline_history !103 ; 2 uses
  %.not.not.i72 = icmp eq ptr %i.ei, null
  br i1 %.not.not.i72, label %bb.j, label %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit81

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i16 257, ptr %i.cl, align 8
  %i.ej = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 19, ptr noundef %i.dy, ptr noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr null, i64 0) #7 ; 5 uses
  %.sroa.0.0.copyload.i74 = load i32, ptr %i.m, align 8, !tbaa !33
  %i.ek = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not9.i.i76 = icmp eq ptr %i.ek, null
  br i1 %.not9.i.i76, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i77, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.ej, i32 noundef 3, ptr noundef nonnull %i.ek) #7
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i77

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i77: ; preds = %bb.k, %bb.j
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.ej, i32 %.sroa.0.0.copyload.i74) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.el = load ptr, ptr %i.k, align 8, !tbaa !34, !nonnull !10, !align !11 ; 2 uses
  %.sroa.0.0.copyload.i.i78 = load ptr, ptr %i.s, align 8
  %.sroa.2.0.copyload.i.i80 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull %i.ej, ptr noundef nonnull align 8 dereferenceable(34) %35, ptr %.sroa.0.0.copyload.i.i78, i64 %.sroa.2.0.copyload.i.i80) #7, !inline_history !40
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %34, ptr noundef nonnull %i.ej) #7
  br label %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit81

_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit81: ; preds = %bb.h, %bb.i, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i77
  %.1.i73 = phi ptr [ %i.ed, %bb.h ], [ %i.ej, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i77 ], [ %i.ei, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #7
  br label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit

bb.l:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.ep = load i64, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  %storemerge.in.pre.i44.i = load i32, ptr %0, align 8, !tbaa !91 ; 6 uses
  br i1 %i.eq, label %_ZN4llvm6Oracle10shouldKeepEv.exit48.thread.i, label %bb.m

_ZN4llvm6Oracle10shouldKeepEv.exit48.thread.i:    ; preds = %bb.l
  %storemerge.i4782.i = add nsw i32 %storemerge.in.pre.i44.i, 1
  store i32 %storemerge.i4782.i, ptr %0, align 8, !tbaa !91
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.er = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 3 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !94
  %.not.i.i45.i = icmp sge i32 %storemerge.in.pre.i44.i, %i.es
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.eu = load i32, ptr %i.et, align 4            ; 2 uses
  %i.ev = icmp sle i32 %storemerge.in.pre.i44.i, %i.eu
  %i.ew = and i1 %.not.i.i45.i, %i.ev             ; 2 uses
  %i.ex = icmp eq i32 %i.eu, %storemerge.in.pre.i44.i
  br i1 %i.ex, label %.split83.i, label %_ZN4llvm6Oracle10shouldKeepEv.exit48.i

.split83.i:                                       ; preds = %bb.m
  %i.ey = add i64 %i.ep, -1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.ez, ptr %i.ag, align 8, !tbaa !95
  store i64 %i.ey, ptr %i.ah, align 8, !tbaa !96
  %storemerge.i4784.i = add nsw i32 %storemerge.in.pre.i44.i, 1
  store i32 %storemerge.i4784.i, ptr %0, align 8, !tbaa !91
  br i1 %i.ew, label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit, label %bb.n

_ZN4llvm6Oracle10shouldKeepEv.exit48.i:           ; preds = %bb.m
  %storemerge.i47.i = add nsw i32 %storemerge.in.pre.i44.i, 1
  store i32 %storemerge.i47.i, ptr %0, align 8, !tbaa !91
  br i1 %i.ew, label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm6Oracle10shouldKeepEv.exit48.i, %.split83.i, %_ZN4llvm6Oracle10shouldKeepEv.exit48.thread.i
  %i.fa = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -20
  %i.fb = load i32, ptr %i.fa, align 4            ; 2 uses
  %i.fc = and i32 %i.fb, 1073741824
  %.not.i.i49.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i49.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !97
  br label %_ZNK4llvm4User10getOperandEj.exit52.i

bb.p:                                             ; preds = %bb.n
  %i.ff = and i32 %i.fb, 268435455
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = getelementptr inbounds [32 x i8], ptr %i.cv, i64 %i.fh
  br label %_ZNK4llvm4User10getOperandEj.exit52.i

_ZNK4llvm4User10getOperandEj.exit52.i:            ; preds = %bb.p, %bb.o
  %.in95.i = phi ptr [ %i.fe, %bb.o ], [ %i.fi, %bb.p ] ; 2 uses
  %i.fj = load ptr, ptr %.in95.i, align 8, !tbaa !102 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.in95.i, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !102 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #7
  store i16 257, ptr %i.ch, align 8
  %i.fm = load ptr, ptr %i.j, align 8, !tbaa !32, !nonnull !10, !align !11 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !30
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = call noundef ptr %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, i32 noundef 18, ptr noundef %i.fj, ptr noundef %i.fl, i1 noundef zeroext false, i1 noundef zeroext false) #7, !inline_history !41 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.not.i.i, label %bb.q, label %_ZN4llvm13IRBuilderBase9CreateMulEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

bb.q:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit52.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #7
  store i8 1, ptr %i.ci, align 8, !tbaa !106
  store i8 1, ptr %i.cj, align 1, !tbaa !107
  %i.fr = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 18, ptr noundef %i.fj, ptr noundef %i.fl, ptr noundef nonnull align 8 dereferenceable(34) %33, ptr null, i64 0) #7 ; 3 uses
  %i.fs = load ptr, ptr %i.k, align 8, !tbaa !34, !nonnull !10, !align !11 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.s, align 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !30
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef %i.fr, ptr noundef nonnull align 8 dereferenceable(34) %36, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #7, !inline_history !42
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %34, ptr noundef %i.fr) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #7
  br label %_ZN4llvm13IRBuilderBase9CreateMulEPNS_5ValueES2_RKNS_5TwineEbb.exit.i

_ZN4llvm13IRBuilderBase9CreateMulEPNS_5ValueES2_RKNS_5TwineEbb.exit.i: ; preds = %bb.q, %_ZNK4llvm4User10getOperandEj.exit52.i
  %.1.i.i = phi ptr [ %i.fq, %_ZNK4llvm4User10getOperandEj.exit52.i ], [ %i.fr, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #7
  br label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit

bb.r:                                             ; preds = %.lr.ph, %.lr.ph
  %i.fw = load i64, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 0
  %storemerge.in.pre.i54.i = load i32, ptr %0, align 8, !tbaa !91 ; 6 uses
  br i1 %i.fx, label %_ZN4llvm6Oracle10shouldKeepEv.exit58.thread.i, label %bb.s

_ZN4llvm6Oracle10shouldKeepEv.exit58.thread.i:    ; preds = %bb.r
  %storemerge.i5786.i = add nsw i32 %storemerge.in.pre.i54.i, 1
  store i32 %storemerge.i5786.i, ptr %0, align 8, !tbaa !91
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fy = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 3 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !94
  %.not.i.i55.i = icmp sge i32 %storemerge.in.pre.i54.i, %i.fz
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gb = load i32, ptr %i.ga, align 4            ; 2 uses
  %i.gc = icmp sle i32 %storemerge.in.pre.i54.i, %i.gb
  %i.gd = and i1 %.not.i.i55.i, %i.gc             ; 2 uses
  %i.ge = icmp eq i32 %i.gb, %storemerge.in.pre.i54.i
  br i1 %i.ge, label %.split87.i, label %_ZN4llvm6Oracle10shouldKeepEv.exit58.i

.split87.i:                                       ; preds = %bb.s
  %i.gf = add i64 %i.fw, -1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.gg, ptr %i.ag, align 8, !tbaa !95
  store i64 %i.gf, ptr %i.ah, align 8, !tbaa !96
  %storemerge.i5788.i = add nsw i32 %storemerge.in.pre.i54.i, 1
  store i32 %storemerge.i5788.i, ptr %0, align 8, !tbaa !91
  br i1 %i.gd, label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit, label %bb.t

_ZN4llvm6Oracle10shouldKeepEv.exit58.i:           ; preds = %bb.s
  %storemerge.i57.i = add nsw i32 %storemerge.in.pre.i54.i, 1
  store i32 %storemerge.i57.i, ptr %0, align 8, !tbaa !91
  br i1 %i.gd, label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm6Oracle10shouldKeepEv.exit58.i, %.split87.i, %_ZN4llvm6Oracle10shouldKeepEv.exit58.thread.i
  %i.gh = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -20
  %i.gi = load i32, ptr %i.gh, align 4            ; 2 uses
  %i.gj = and i32 %i.gi, 1073741824
  %.not.i.i59.i = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i59.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gk = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !97
  br label %_ZNK4llvm4User10getOperandEj.exit62.i

bb.v:                                             ; preds = %bb.t
  %i.gm = and i32 %i.gi, 268435455
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = sub nsw i64 0, %i.gn
  %i.gp = getelementptr inbounds [32 x i8], ptr %i.cv, i64 %i.go
  br label %_ZNK4llvm4User10getOperandEj.exit62.i

_ZNK4llvm4User10getOperandEj.exit62.i:            ; preds = %bb.v, %bb.u
  %.in.i = phi ptr [ %i.gl, %bb.u ], [ %i.gp, %bb.v ] ; 2 uses
  %i.gq = load ptr, ptr %.in.i, align 8, !tbaa !102 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.in.i, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !102 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #7
  store i16 257, ptr %i.cf, align 8
  %i.gt = load ptr, ptr %i.j, align 8, !tbaa !32, !nonnull !10, !align !11 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !30
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = call noundef ptr %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, i32 noundef 30, ptr noundef %i.gq, ptr noundef %i.gs) #7, !inline_history !43 ; 2 uses
  %.not.not.i64.i = icmp eq ptr %i.gx, null
  br i1 %.not.not.i64.i, label %bb.w, label %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i

bb.w:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit62.i
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #7
  store i16 257, ptr %i.cg, align 8
  %i.gy = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 30, ptr noundef %i.gq, ptr noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(34) %32, ptr null, i64 0) #7 ; 3 uses
  %i.gz = load ptr, ptr %i.k, align 8, !tbaa !34, !nonnull !10, !align !11 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !30
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef %i.gy, ptr noundef nonnull align 8 dereferenceable(34) %37, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #7, !inline_history !44
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %34, ptr noundef %i.gy) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #7
  br label %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i

_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i: ; preds = %bb.w, %_ZNK4llvm4User10getOperandEj.exit62.i
  %.1.i65.i = phi ptr [ %i.gy, %bb.w ], [ %i.gx, %_ZNK4llvm4User10getOperandEj.exit62.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #7
  br label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit

bb.x:                                             ; preds = %.lr.ph
  %i.hd = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -56 ; 8 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !86
  %i.hg = icmp eq i8 %i.hf, 14
  br i1 %i.hg, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i, label %select.unfold.i

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i: ; preds = %bb.y
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hi = load i32, ptr %i.hh, align 8
  %i.hj = and i32 %i.hi, 8192
  %.not.i.i66.i = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i66.i, label %select.unfold.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #7
  %i.hk = load ptr, ptr %i.cw, align 8, !tbaa !68
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !73, !nonnull !10, !align !11
  store ptr null, ptr %29, align 8, !tbaa !74
  store ptr %i.hl, ptr %i.v, align 8, !tbaa !75
  store ptr %i.t, ptr %i.w, align 8, !tbaa !76
  store ptr %i.u, ptr %i.x, align 8, !tbaa !77
  store ptr null, ptr %i.y, align 8, !tbaa !78
  store i32 0, ptr %i.z, align 8, !tbaa !79
  store i8 0, ptr %i.aa, align 4, !tbaa !28
  store i8 2, ptr %i.ab, align 1, !tbaa !80
  store i8 7, ptr %i.ac, align 2, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.t, align 8, !tbaa !30
  %i.hm = load ptr, ptr %i.cz, align 8, !tbaa !83
  store ptr %i.hm, ptr %i.ae, align 8, !tbaa !84
  store ptr %.sroa.0107.0142, ptr %i.af, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.hn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cv) #7
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !85
  store i64 %i.ho, ptr %29, align 8, !tbaa !85
  %i.hp = load ptr, ptr %i.hd, align 8, !tbaa !102
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 36
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !111
  switch i32 %i.hr, label %bb.bk [
    i32 359, label %bb.z
    i32 265, label %bb.ac
    i32 254, label %bb.ac
    i32 263, label %bb.ac
    i32 252, label %bb.ac
    i32 2497, label %bb.ac
    i32 3724, label %bb.aj
    i32 3725, label %bb.aj
    i32 3721, label %bb.as
    i32 3722, label %bb.as
    i32 2437, label %bb.bb
    i32 2494, label %bb.bb
  ]

bb.z:                                             ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i
  %i.hs = load i64, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  %storemerge.in.pre.i.i.i = load i32, ptr %0, align 8, !tbaa !91 ; 6 uses
  br i1 %i.ht, label %_ZN4llvm6Oracle10shouldKeepEv.exit.thread.i.i, label %bb.aa

_ZN4llvm6Oracle10shouldKeepEv.exit.thread.i.i:    ; preds = %bb.z
  %storemerge.i52.i.i = add nsw i32 %storemerge.in.pre.i.i.i, 1
  store i32 %storemerge.i52.i.i, ptr %0, align 8, !tbaa !91
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hu = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !94
  %.not.i.i.i.i = icmp sge i32 %storemerge.in.pre.i.i.i, %i.hv
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hx = load i32, ptr %i.hw, align 4            ; 2 uses
  %i.hy = icmp sle i32 %storemerge.in.pre.i.i.i, %i.hx
  %i.hz = and i1 %.not.i.i.i.i, %i.hy             ; 2 uses
  %i.ia = icmp eq i32 %i.hx, %storemerge.in.pre.i.i.i
  br i1 %i.ia, label %.split.i.i, label %_ZN4llvm6Oracle10shouldKeepEv.exit.i.i

.split.i.i:                                       ; preds = %bb.aa
  %i.ib = add i64 %i.hs, -1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %i.ic, ptr %i.ag, align 8, !tbaa !95
  store i64 %i.ib, ptr %i.ah, align 8, !tbaa !96
  %storemerge.i53.i.i = add nsw i32 %storemerge.in.pre.i.i.i, 1
  store i32 %storemerge.i53.i.i, ptr %0, align 8, !tbaa !91
  br i1 %i.hz, label %bb.bk, label %bb.ab

_ZN4llvm6Oracle10shouldKeepEv.exit.i.i:           ; preds = %bb.aa
  %storemerge.i.i.i = add nsw i32 %storemerge.in.pre.i.i.i, 1
  store i32 %storemerge.i.i.i, ptr %0, align 8, !tbaa !91
  br i1 %i.hz, label %bb.bk, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm6Oracle10shouldKeepEv.exit.i.i, %.split.i.i, %_ZN4llvm6Oracle10shouldKeepEv.exit.thread.i.i
  %i.id = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -20
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = and i32 %i.ie, 268435455
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = sub nsw i64 0, %i.ig
  %i.ii = getelementptr inbounds [32 x i8], ptr %i.cv, i64 %i.ih
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !102
  %i.ik = load ptr, ptr %i.cw, align 8, !tbaa !68
  %i.il = call noundef ptr @_ZN4llvm10ConstantFP3getEPNS_4TypeEd(ptr noundef %i.ik, double noundef 2.000000e+00) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #7
  store i16 257, ptr %i.ak, align 8
  %i.im = call noundef ptr @_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %29, ptr noundef %i.ij, ptr noundef %i.il, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %30, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #7
  br label %bb.bk

bb.ac:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i
  %i.in = load i64, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.io = icmp eq i64 %i.in, 0
  %storemerge.in.pre.i20.i.i = load i32, ptr %0, align 8, !tbaa !91 ; 6 uses
  br i1 %i.io, label %_ZN4llvm6Oracle10shouldKeepEv.exit24.thread.i.i, label %bb.ad

_ZN4llvm6Oracle10shouldKeepEv.exit24.thread.i.i:  ; preds = %bb.ac
  %storemerge.i2355.i.i = add nsw i32 %storemerge.in.pre.i20.i.i, 1
  store i32 %storemerge.i2355.i.i, ptr %0, align 8, !tbaa !91
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ip = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !94
  %.not.i.i21.i.i = icmp sge i32 %storemerge.in.pre.i20.i.i, %i.iq
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.is = load i32, ptr %i.ir, align 4            ; 2 uses
  %i.it = icmp sle i32 %storemerge.in.pre.i20.i.i, %i.is
  %i.iu = and i1 %.not.i.i21.i.i, %i.it           ; 2 uses
  %i.iv = icmp eq i32 %i.is, %storemerge.in.pre.i20.i.i
  br i1 %i.iv, label %.split56.i.i, label %_ZN4llvm6Oracle10shouldKeepEv.exit24.i.i

.split56.i.i:                                     ; preds = %bb.ad
  %i.iw = add i64 %i.in, -1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store ptr %i.ix, ptr %i.ag, align 8, !tbaa !95
  store i64 %i.iw, ptr %i.ah, align 8, !tbaa !96
  %storemerge.i2357.i.i = add nsw i32 %storemerge.in.pre.i20.i.i, 1
  store i32 %storemerge.i2357.i.i, ptr %0, align 8, !tbaa !91
  br i1 %i.iu, label %bb.bk, label %bb.ae

_ZN4llvm6Oracle10shouldKeepEv.exit24.i.i:         ; preds = %bb.ad
  %storemerge.i23.i.i = add nsw i32 %storemerge.in.pre.i20.i.i, 1
  store i32 %storemerge.i23.i.i, ptr %0, align 8, !tbaa !91
  br i1 %i.iu, label %bb.bk, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm6Oracle10shouldKeepEv.exit24.i.i, %.split56.i.i, %_ZN4llvm6Oracle10shouldKeepEv.exit24.thread.i.i
  %i.iy = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -20
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = and i32 %i.iz, 268435455
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = sub nsw i64 0, %i.jb
  %i.jd = getelementptr inbounds [32 x i8], ptr %i.cv, i64 %i.jc ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !102 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !102 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #7
  store i16 257, ptr %i.ai, align 8
  %i.jh = load i8, ptr %i.aa, align 4, !tbaa !28, !range !31, !noundef !10
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jj = call noundef ptr @_ZN4llvm13IRBuilderBase24CreateConstrainedFPBinOpEjPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeESt8optionalINS_12RoundingModeEES9_INS_2fp17ExceptionBehaviorEE(ptr noundef nonnull align 8 dereferenceable(88) %29, i32 noundef 117, ptr noundef %i.je, ptr noundef %i.jg, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %31, ptr noundef null, i16 0, i16 0) #7
  br label %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit70

bb.ag:                                            ; preds = %bb.ae
  %i.jk = load ptr, ptr %i.w, align 8, !tbaa !32, !nonnull !10, !align !11 ; 2 uses
  %.sroa.02.0.copyload.i60 = load i32, ptr %i.z, align 8, !tbaa !33
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !30
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = call noundef ptr %i.jn(ptr noundef nonnull align 8 dereferenceable(8) %i.jk, i32 noundef 19, ptr noundef %i.je, ptr noundef %i.jg, i32 %.sroa.02.0.copyload.i60) #7, !inline_history !103 ; 2 uses
  %.not.not.i61 = icmp eq ptr %i.jo, null
  br i1 %.not.not.i61, label %bb.ah, label %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit70

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i16 257, ptr %i.aj, align 8
  %i.jp = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 19, ptr noundef %i.je, ptr noundef %i.jg, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr null, i64 0) #7 ; 5 uses
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.z, align 8, !tbaa !33
  %i.jq = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not9.i.i65 = icmp eq ptr %i.jq, null
  br i1 %.not9.i.i65, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i66, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.jp, i32 noundef 3, ptr noundef nonnull %i.jq) #7
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i66

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i66: ; preds = %bb.ai, %bb.ah
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.jp, i32 %.sroa.0.0.copyload.i63) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %i.jr = load ptr, ptr %i.x, align 8, !tbaa !34, !nonnull !10, !align !11 ; 2 uses
  %.sroa.0.0.copyload.i.i67 = load ptr, ptr %i.af, align 8
  %.sroa.2.0.copyload.i.i69 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !30
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull %i.jp, ptr noundef nonnull align 8 dereferenceable(34) %31, ptr %.sroa.0.0.copyload.i.i67, i64 %.sroa.2.0.copyload.i.i69) #7, !inline_history !40
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %29, ptr noundef nonnull %i.jp) #7
  br label %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit70

_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit70: ; preds = %bb.af, %bb.ag, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i66
  %.1.i62 = phi ptr [ %i.jj, %bb.af ], [ %i.jp, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i66 ], [ %i.jo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #7
  br label %bb.bk

bb.aj:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i
  %i.jv = load i64, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.jw = icmp eq i64 %i.jv, 0
  %storemerge.in.pre.i26.i.i = load i32, ptr %0, align 8, !tbaa !91 ; 6 uses
  br i1 %i.jw, label %_ZN4llvm6Oracle10shouldKeepEv.exit30.thread.i.i, label %bb.ak

_ZN4llvm6Oracle10shouldKeepEv.exit30.thread.i.i:  ; preds = %bb.aj
  %storemerge.i2959.i.i = add nsw i32 %storemerge.in.pre.i26.i.i, 1
  store i32 %storemerge.i2959.i.i, ptr %0, align 8, !tbaa !91
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jx = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 3 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !94
  %.not.i.i27.i.i = icmp sge i32 %storemerge.in.pre.i26.i.i, %i.jy
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.ka = load i32, ptr %i.jz, align 4            ; 2 uses
  %i.kb = icmp sle i32 %storemerge.in.pre.i26.i.i, %i.ka
  %i.kc = and i1 %.not.i.i27.i.i, %i.kb           ; 2 uses
  %i.kd = icmp eq i32 %i.ka, %storemerge.in.pre.i26.i.i
  br i1 %i.kd, label %.split60.i.i, label %_ZN4llvm6Oracle10shouldKeepEv.exit30.i.i

.split60.i.i:                                     ; preds = %bb.ak
  %i.ke = add i64 %i.jv, -1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store ptr %i.kf, ptr %i.ag, align 8, !tbaa !95
  store i64 %i.ke, ptr %i.ah, align 8, !tbaa !96
  %storemerge.i2961.i.i = add nsw i32 %storemerge.in.pre.i26.i.i, 1
  store i32 %storemerge.i2961.i.i, ptr %0, align 8, !tbaa !91
  br i1 %i.kc, label %bb.bk, label %bb.al

_ZN4llvm6Oracle10shouldKeepEv.exit30.i.i:         ; preds = %bb.ak
  %storemerge.i29.i.i = add nsw i32 %storemerge.in.pre.i26.i.i, 1
  store i32 %storemerge.i29.i.i, ptr %0, align 8, !tbaa !91
  br i1 %i.kc, label %bb.bk, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm6Oracle10shouldKeepEv.exit30.i.i, %.split60.i.i, %_ZN4llvm6Oracle10shouldKeepEv.exit30.thread.i.i
  %i.kg = call noundef ptr @_ZN4llvm9Intrinsic22getOrInsertDeclarationEPNS_6ModuleEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(1288) %i.d, i32 noundef 3723, ptr null, i64 0) #7 ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !112
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0107.0142, i64 56
  store ptr %i.ki, ptr %i.kj, align 8, !tbaa !123
  %i.kk = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -40 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.km = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -48 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !125 ; 3 uses
  store ptr %i.kn, ptr %i.kl, align 8, !tbaa !97
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kn, null
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store ptr %i.kl, ptr %i.ko, align 8, !tbaa !124
  store ptr null, ptr %i.km, align 8, !tbaa !125
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  store ptr null, ptr %i.kk, align 8, !tbaa !124
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  store ptr %i.kg, ptr %i.hd, align 8, !tbaa !102
  %i.kp = load i8, ptr %i.kg, align 8, !tbaa !86
  %i.kq = icmp ugt i8 %i.kp, 10
  br i1 %i.kq, label %bb.aq, label %bb.bk

bb.aq:                                            ; preds = %bb.ap
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 3 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !97 ; 3 uses
  %i.kt = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -48 ; 2 uses
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !125
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !124
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  store ptr %i.kr, ptr %i.kk, align 8, !tbaa !124
  store ptr %i.hd, ptr %i.kr, align 8, !tbaa !97
  br label %bb.bk

bb.as:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i
  %i.kv = load i64, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 0
  %storemerge.in.pre.i31.i.i = load i32, ptr %0, align 8, !tbaa !91 ; 6 uses
  br i1 %i.kw, label %_ZN4llvm6Oracle10shouldKeepEv.exit35.thread.i.i, label %bb.at

_ZN4llvm6Oracle10shouldKeepEv.exit35.thread.i.i:  ; preds = %bb.as
  %storemerge.i3463.i.i = add nsw i32 %storemerge.in.pre.i31.i.i, 1
  store i32 %storemerge.i3463.i.i, ptr %0, align 8, !tbaa !91
  br label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kx = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !94
  %.not.i.i32.i.i = icmp sge i32 %storemerge.in.pre.i31.i.i, %i.ky
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.la = load i32, ptr %i.kz, align 4            ; 2 uses
  %i.lb = icmp sle i32 %storemerge.in.pre.i31.i.i, %i.la
  %i.lc = and i1 %.not.i.i32.i.i, %i.lb           ; 2 uses
  %i.ld = icmp eq i32 %i.la, %storemerge.in.pre.i31.i.i
  br i1 %i.ld, label %.split64.i.i, label %_ZN4llvm6Oracle10shouldKeepEv.exit35.i.i

.split64.i.i:                                     ; preds = %bb.at
  %i.le = add i64 %i.kv, -1
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store ptr %i.lf, ptr %i.ag, align 8, !tbaa !95
  store i64 %i.le, ptr %i.ah, align 8, !tbaa !96
  %storemerge.i3465.i.i = add nsw i32 %storemerge.in.pre.i31.i.i, 1
  store i32 %storemerge.i3465.i.i, ptr %0, align 8, !tbaa !91
  br i1 %i.lc, label %bb.bk, label %bb.au

_ZN4llvm6Oracle10shouldKeepEv.exit35.i.i:         ; preds = %bb.at
  %storemerge.i34.i.i = add nsw i32 %storemerge.in.pre.i31.i.i, 1
  store i32 %storemerge.i34.i.i, ptr %0, align 8, !tbaa !91
  br i1 %i.lc, label %bb.bk, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm6Oracle10shouldKeepEv.exit35.i.i, %.split64.i.i, %_ZN4llvm6Oracle10shouldKeepEv.exit35.thread.i.i
  %i.lg = call noundef ptr @_ZN4llvm9Intrinsic22getOrInsertDeclarationEPNS_6ModuleEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(1288) %i.d, i32 noundef 3720, ptr null, i64 0) #7 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !112
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0107.0142, i64 56
  store ptr %i.li, ptr %i.lj, align 8, !tbaa !123
  %i.lk = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -40 ; 3 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i.i.i.i36.i.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i.i.i.i36.i.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lm = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -48 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !125 ; 3 uses
  store ptr %i.ln, ptr %i.ll, align 8, !tbaa !97
  %.not2.i.i.i.i.i.i.i37.i.i = icmp eq ptr %i.ln, null
  br i1 %.not2.i.i.i.i.i.i.i37.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store ptr %i.ll, ptr %i.lo, align 8, !tbaa !124
  store ptr null, ptr %i.lm, align 8, !tbaa !125
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store ptr null, ptr %i.lk, align 8, !tbaa !124
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  store ptr %i.lg, ptr %i.hd, align 8, !tbaa !102
  %i.lp = load i8, ptr %i.lg, align 8, !tbaa !86
  %i.lq = icmp ugt i8 %i.lp, 10
  br i1 %i.lq, label %bb.az, label %bb.bk

bb.az:                                            ; preds = %bb.ay
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 3 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !97 ; 3 uses
  %i.lt = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -48 ; 2 uses
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !125
  %.not.i.i.i.i.i.i.i.i38.i.i = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i.i.i.i.i.i38.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i39.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store ptr %i.lt, ptr %i.lu, align 8, !tbaa !124
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i39.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i39.i.i: ; preds = %bb.ba, %bb.az
  store ptr %i.lr, ptr %i.lk, align 8, !tbaa !124
  store ptr %i.hd, ptr %i.lr, align 8, !tbaa !97
  br label %bb.bk

bb.bb:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i
  %i.lv = load i64, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 0
  %storemerge.in.pre.i41.i.i = load i32, ptr %0, align 8, !tbaa !91 ; 6 uses
  br i1 %i.lw, label %_ZN4llvm6Oracle10shouldKeepEv.exit45.thread.i.i, label %bb.bc

_ZN4llvm6Oracle10shouldKeepEv.exit45.thread.i.i:  ; preds = %bb.bb
  %storemerge.i4467.i.i = add nsw i32 %storemerge.in.pre.i41.i.i, 1
  store i32 %storemerge.i4467.i.i, ptr %0, align 8, !tbaa !91
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.lx = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 3 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !94
  %.not.i.i42.i.i = icmp sge i32 %storemerge.in.pre.i41.i.i, %i.ly
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.ma = load i32, ptr %i.lz, align 4            ; 2 uses
  %i.mb = icmp sle i32 %storemerge.in.pre.i41.i.i, %i.ma
  %i.mc = and i1 %.not.i.i42.i.i, %i.mb           ; 2 uses
  %i.md = icmp eq i32 %i.ma, %storemerge.in.pre.i41.i.i
  br i1 %i.md, label %.split68.i.i, label %_ZN4llvm6Oracle10shouldKeepEv.exit45.i.i

.split68.i.i:                                     ; preds = %bb.bc
  %i.me = add i64 %i.lv, -1
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store ptr %i.mf, ptr %i.ag, align 8, !tbaa !95
  store i64 %i.me, ptr %i.ah, align 8, !tbaa !96
  %storemerge.i4469.i.i = add nsw i32 %storemerge.in.pre.i41.i.i, 1
  store i32 %storemerge.i4469.i.i, ptr %0, align 8, !tbaa !91
  br i1 %i.mc, label %bb.bk, label %bb.bd

_ZN4llvm6Oracle10shouldKeepEv.exit45.i.i:         ; preds = %bb.bc
  %storemerge.i44.i.i = add nsw i32 %storemerge.in.pre.i41.i.i, 1
  store i32 %storemerge.i44.i.i, ptr %0, align 8, !tbaa !91
  br i1 %i.mc, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm6Oracle10shouldKeepEv.exit45.i.i, %.split68.i.i, %_ZN4llvm6Oracle10shouldKeepEv.exit45.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.mg = load ptr, ptr %i.cw, align 8, !tbaa !68
  store ptr %i.mg, ptr %i.c, align 8, !tbaa !126
  %i.mh = call noundef ptr @_ZN4llvm9Intrinsic22getOrInsertDeclarationEPNS_6ModuleEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(1288) %i.d, i32 noundef 183, ptr nonnull %i.c, i64 1) #7 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !112
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0107.0142, i64 56
  store ptr %i.mj, ptr %i.mk, align 8, !tbaa !123
  %i.ml = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -40 ; 3 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i.i.i.i46.i.i = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i.i.i.i46.i.i, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mn = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -48 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !125 ; 3 uses
  store ptr %i.mo, ptr %i.mm, align 8, !tbaa !97
  %.not2.i.i.i.i.i.i.i47.i.i = icmp eq ptr %i.mo, null
  br i1 %.not2.i.i.i.i.i.i.i47.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store ptr %i.mm, ptr %i.mp, align 8, !tbaa !124
  store ptr null, ptr %i.mn, align 8, !tbaa !125
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  store ptr null, ptr %i.ml, align 8, !tbaa !124
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bd
  store ptr %i.mh, ptr %i.hd, align 8, !tbaa !102
  %i.mq = load i8, ptr %i.mh, align 8, !tbaa !86
  %i.mr = icmp ugt i8 %i.mq, 10
  br i1 %i.mr, label %bb.bi, label %_ZL16replaceIntrinsicRN4llvm6ModuleEPNS_13IntrinsicInstEjNS_8ArrayRefIPNS_4TypeEEE.exit50.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mh, i64 16 ; 3 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !97 ; 3 uses
  %i.mu = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -48 ; 2 uses
  store ptr %i.mt, ptr %i.mu, align 8, !tbaa !125
  %.not.i.i.i.i.i.i.i.i48.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i.i.i.i.i.i48.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i49.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store ptr %i.mu, ptr %i.mv, align 8, !tbaa !124
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i49.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i49.i.i: ; preds = %bb.bj, %bb.bi
  store ptr %i.ms, ptr %i.ml, align 8, !tbaa !124
  store ptr %i.hd, ptr %i.ms, align 8, !tbaa !97
  br label %_ZL16replaceIntrinsicRN4llvm6ModuleEPNS_13IntrinsicInstEjNS_8ArrayRefIPNS_4TypeEEE.exit50.i.i

_ZL16replaceIntrinsicRN4llvm6ModuleEPNS_13IntrinsicInstEjNS_8ArrayRefIPNS_4TypeEEE.exit50.i.i: ; preds = %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i49.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.bk

bb.bk:                                            ; preds = %_ZL16replaceIntrinsicRN4llvm6ModuleEPNS_13IntrinsicInstEjNS_8ArrayRefIPNS_4TypeEEE.exit50.i.i, %_ZN4llvm6Oracle10shouldKeepEv.exit45.i.i, %.split68.i.i, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i39.i.i, %bb.ay, %_ZN4llvm6Oracle10shouldKeepEv.exit35.i.i, %.split64.i.i, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i.i.i, %bb.ap, %_ZN4llvm6Oracle10shouldKeepEv.exit30.i.i, %.split60.i.i, %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit70, %_ZN4llvm6Oracle10shouldKeepEv.exit24.i.i, %.split56.i.i, %bb.ab, %_ZN4llvm6Oracle10shouldKeepEv.exit.i.i, %.split.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i
  %.0.i67.i = phi ptr [ null, %_ZN4llvm6Oracle10shouldKeepEv.exit45.i.i ], [ %i.cv, %_ZL16replaceIntrinsicRN4llvm6ModuleEPNS_13IntrinsicInstEjNS_8ArrayRefIPNS_4TypeEEE.exit50.i.i ], [ %i.im, %bb.ab ], [ null, %_ZN4llvm6Oracle10shouldKeepEv.exit.i.i ], [ %.1.i62, %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit70 ], [ null, %_ZN4llvm6Oracle10shouldKeepEv.exit24.i.i ], [ null, %.split60.i.i ], [ null, %_ZN4llvm6Oracle10shouldKeepEv.exit30.i.i ], [ null, %.split64.i.i ], [ null, %_ZN4llvm6Oracle10shouldKeepEv.exit35.i.i ], [ null, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i ], [ null, %.split.i.i ], [ null, %.split56.i.i ], [ %i.cv, %bb.ap ], [ %i.cv, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i.i.i ], [ %i.cv, %bb.ay ], [ %i.cv, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i39.i.i ], [ null, %.split68.i.i ]
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #7
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #7
  br label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit

select.unfold.i:                                  ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i, %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  store ptr %i.al, ptr %15, align 8, !tbaa !36
  store i32 0, ptr %i.am, align 8, !tbaa !37
  store i32 4, ptr %i.an, align 4, !tbaa !127
  %i.mw = load ptr, ptr %i.cw, align 8, !tbaa !68 ; 2 uses
  %i.mx = call noundef zeroext i1 @_ZNK4llvm4Type16isFirstClassTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mw) #7
  br i1 %i.mx, label %bb.bl, label %_ZL21callLooksLikeOperatorPN4llvm8CallBaseERNS_15SmallVectorImplIPNS_5ValueEEE.exit.i.i

bb.bl:                                            ; preds = %select.unfold.i
  %i.my = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -20 ; 3 uses
  %i.mz = load i32, ptr %i.my, align 4            ; 3 uses
  %i.na = and i32 %i.mz, 268435455
  %i.nb = zext nneg i32 %i.na to i64
  %.neg = mul nsw i64 %i.nb, -32                  ; 2 uses
  %i.nc = getelementptr inbounds i8, ptr %i.cv, i64 %.neg
  %i.nd = load i8, ptr %i.cv, align 8, !tbaa !86
  switch i8 %i.nd, label %bb.bo [
    i8 88, label %_ZN4llvm8CallBase17data_operands_endEv.exit.i
    i8 36, label %bb.bm
    i8 42, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.ne = call noundef i32 @_ZNK4llvm8CallBase34getNumSubclassExtraOperandsDynamicEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cv) #7
  %i.nf = zext i32 %i.ne to i64
  %i.ng = shl nuw nsw i64 %i.nf, 5
  %i.nh = sub nuw nsw i64 -32, %i.ng
  %.pre = load i32, ptr %i.my, align 4
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i

bb.bo:                                            ; preds = %bb.bl
  unreachable

_ZN4llvm8CallBase17data_operands_endEv.exit.i:    ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.ni = phi i32 [ %.pre, %bb.bn ], [ %i.mz, %bb.bm ], [ %i.mz, %bb.bl ]
  %.0.i.i.i.neg = phi i64 [ %i.nh, %bb.bn ], [ -96, %bb.bm ], [ -32, %bb.bl ]
  %i.nj = icmp slt i32 %i.ni, 0
  br i1 %i.nj, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i: ; preds = %_ZN4llvm8CallBase17data_operands_endEv.exit.i
  %i.nk = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cv) #7
  %i.nl = extractvalue { ptr, i64 } %i.nk, 0      ; 2 uses
  %.pr.i.i.i.i = load i32, ptr %i.my, align 4
  %i.nm = icmp slt i32 %.pr.i.i.i.i, 0
  br i1 %i.nm, label %bb.bp, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i

bb.bp:                                            ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i
  %i.nn = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cv) #7 ; 2 uses
  %i.no = extractvalue { ptr, i64 } %i.nn, 0
  %i.np = extractvalue { ptr, i64 } %i.nn, 1
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.np
  %i.nr = ptrtoint ptr %i.nq to i64
  br label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i

_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i: ; preds = %bb.bp, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i, %_ZN4llvm8CallBase17data_operands_endEv.exit.i
  %.0.i.i3.i.i.i.i = phi ptr [ %i.nl, %bb.bp ], [ %i.nl, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i ], [ null, %_ZN4llvm8CallBase17data_operands_endEv.exit.i ]
  %.0.i.i1.i.i.i.i = phi i64 [ %i.nr, %bb.bp ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i ], [ 0, %_ZN4llvm8CallBase17data_operands_endEv.exit.i ]
  %i.ns = ptrtoint ptr %.0.i.i3.i.i.i.i to i64
  %i.nt = sub i64 %.0.i.i1.i.i.i.i, %i.ns
  %i.nu = and i64 %i.nt, 68719476720
  %.not.i.i58 = icmp eq i64 %i.nu, 0
  br i1 %.not.i.i58, label %_ZN4llvm8CallBase7arg_endEv.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i
  %i.nv = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cv) #7
  %i.nw = extractvalue { ptr, i64 } %i.nv, 0
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !130
  %i.nz = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cv) #7 ; 2 uses
  %i.oa = extractvalue { ptr, i64 } %i.nz, 0
  %i.ob = extractvalue { ptr, i64 } %i.nz, 1
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.ob
  %i.od = getelementptr inbounds i8, ptr %i.oc, i64 -4
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !131
  %i.of = sub i32 %i.oe, %i.ny
  %i.og = zext i32 %i.of to i64
  %.neg133 = mul nsw i64 %i.og, -32
  br label %_ZN4llvm8CallBase7arg_endEv.exit

_ZN4llvm8CallBase7arg_endEv.exit:                 ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i, %bb.bq
  %.0.i.i59.neg = phi i64 [ %.neg133, %bb.bq ], [ 0, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i ]
  %i.oh = add nsw i64 %.0.i.i59.neg, %.0.i.i.i.neg ; 2 uses
  %i.oi = getelementptr inbounds i8, ptr %i.cv, i64 %i.oh
  %.not21.i.i.i = icmp eq i64 %.neg, %i.oh
  br i1 %.not21.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm8CallBase7arg_endEv.exit, %bb.bv
  %.022.i.i.i = phi ptr [ %i.ou, %bb.bv ], [ %i.nc, %_ZN4llvm8CallBase7arg_endEv.exit ] ; 2 uses
  %i.oj = load ptr, ptr %.022.i.i.i, align 8, !tbaa !102 ; 4 uses
  %i.ok = load i8, ptr %i.oj, align 8, !tbaa !86
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ok, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.i.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !68
  %.not19.i.i.i = icmp eq ptr %i.om, %i.mw
  br i1 %.not19.i.i.i, label %bb.bs, label %_ZL21callLooksLikeOperatorPN4llvm8CallBaseERNS_15SmallVectorImplIPNS_5ValueEEE.exit.i.i

bb.bs:                                            ; preds = %bb.br
  %i.on = load i32, ptr %i.am, align 8, !tbaa !37 ; 2 uses
  %i.oo = load i32, ptr %i.an, align 4, !tbaa !127
  %.not.i.i.i69.i = icmp ult i32 %i.on, %i.oo
  br i1 %.not.i.i.i69.i, label %bb.bu, label %bb.bt, !prof !132

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.oj)
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.op = zext i32 %i.on to i64
  %i.oq = load ptr, ptr %15, align 8, !tbaa !36
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %i.op
  store ptr %i.oj, ptr %i.or, align 1
  %i.os = load i32, ptr %i.am, align 8, !tbaa !37
  %i.ot = add i32 %i.os, 1
  store i32 %i.ot, ptr %i.am, align 8, !tbaa !37
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %.lr.ph.i.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %.022.i.i.i, i64 32 ; 2 uses
  %.not.i.i70.i = icmp eq ptr %i.ou, %i.oi
  br i1 %.not.i.i70.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %bb.bv, %_ZN4llvm8CallBase7arg_endEv.exit
  %i.ov = load i32, ptr %i.am, align 8, !tbaa !37
  %i.ow = icmp ugt i32 %i.ov, 3
  br i1 %i.ow, label %_ZL21callLooksLikeOperatorPN4llvm8CallBaseERNS_15SmallVectorImplIPNS_5ValueEEE.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %.loopexit.i.i
  %i.ox = load i64, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.oy = icmp eq i64 %i.ox, 0
  %storemerge.in.pre.i.i71.i = load i32, ptr %0, align 8, !tbaa !91 ; 6 uses
  br i1 %i.oy, label %_ZN4llvm6Oracle10shouldKeepEv.exit.thread.i77.i, label %bb.bx

_ZN4llvm6Oracle10shouldKeepEv.exit.thread.i77.i:  ; preds = %bb.bw
  %storemerge.i25.i.i = add nsw i32 %storemerge.in.pre.i.i71.i, 1
  store i32 %storemerge.i25.i.i, ptr %0, align 8, !tbaa !91
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.oz = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 3 uses
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !94
  %.not.i.i10.i.i = icmp sge i32 %storemerge.in.pre.i.i71.i, %i.pa
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  %i.pc = load i32, ptr %i.pb, align 4            ; 2 uses
  %i.pd = icmp sle i32 %storemerge.in.pre.i.i71.i, %i.pc
  %i.pe = and i1 %.not.i.i10.i.i, %i.pd           ; 2 uses
  %i.pf = icmp eq i32 %i.pc, %storemerge.in.pre.i.i71.i
  br i1 %i.pf, label %.split.i76.i, label %_ZN4llvm6Oracle10shouldKeepEv.exit.i72.i

.split.i76.i:                                     ; preds = %bb.bx
  %i.pg = add i64 %i.ox, -1
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  store ptr %i.ph, ptr %i.ag, align 8, !tbaa !95
  store i64 %i.pg, ptr %i.ah, align 8, !tbaa !96
  %storemerge.i26.i.i = add nsw i32 %storemerge.in.pre.i.i71.i, 1
  store i32 %storemerge.i26.i.i, ptr %0, align 8, !tbaa !91
  br i1 %i.pe, label %_ZL21callLooksLikeOperatorPN4llvm8CallBaseERNS_15SmallVectorImplIPNS_5ValueEEE.exit.i.i, label %bb.by

_ZN4llvm6Oracle10shouldKeepEv.exit.i72.i:         ; preds = %bb.bx
  %storemerge.i.i73.i = add nsw i32 %storemerge.in.pre.i.i71.i, 1
  store i32 %storemerge.i.i73.i, ptr %0, align 8, !tbaa !91
  br i1 %i.pe, label %_ZL21callLooksLikeOperatorPN4llvm8CallBaseERNS_15SmallVectorImplIPNS_5ValueEEE.exit.i.i, label %bb.by

bb.by:                                            ; preds = %_ZN4llvm6Oracle10shouldKeepEv.exit.i72.i, %.split.i76.i, %_ZN4llvm6Oracle10shouldKeepEv.exit.thread.i77.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  %i.pi = load ptr, ptr %i.cw, align 8, !tbaa !68
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !73, !nonnull !10, !align !11
  store ptr null, ptr %16, align 8, !tbaa !74
  store ptr %i.pj, ptr %i.aq, align 8, !tbaa !75
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !76
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !77
  store ptr null, ptr %i.at, align 8, !tbaa !78
  store i32 0, ptr %i.au, align 8, !tbaa !79
  store i8 0, ptr %i.av, align 4, !tbaa !28
  store i8 2, ptr %i.aw, align 1, !tbaa !80
  store i8 7, ptr %i.ax, align 2, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.ao, align 8, !tbaa !30
  %i.pk = load ptr, ptr %i.cz, align 8, !tbaa !83
  store ptr %i.pk, ptr %i.az, align 8, !tbaa !84
  store ptr %.sroa.0107.0142, ptr %i.ba, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i74.i, align 8
  %i.pl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cv) #7
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !85
  store i64 %i.pm, ptr %16, align 8, !tbaa !85
  %i.pn = load ptr, ptr %i.cw, align 8, !tbaa !68 ; 5 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pp = load i32, ptr %i.po, align 8            ; 3 uses
  %i.pq = and i32 %i.pp, 254
  %spec.select.i.i.i.i.i = icmp eq i32 %i.pq, 18  ; 2 uses
  br i1 %spec.select.i.i.i.i.i, label %bb.bz, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !133
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !126
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i:       ; preds = %bb.bz, %bb.by
  %i.pu = phi i32 [ %.pre.i.i.i, %bb.bz ], [ %i.pp, %bb.by ] ; 2 uses
  %trunc.i.i.i.i.i = trunc i32 %i.pu to i8
  switch i8 %trunc.i.i.i.i.i, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i [
    i8 3, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread.i.i
    i8 2, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread.i.i
    i8 0, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread.i.i
    i8 1, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread.i.i
    i8 5, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread.i.i
  ]

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i:      ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i
  %i.pv = and i32 %i.pu, 253
  %spec.select.i.i.i.i = icmp eq i32 %i.pv, 4
  br i1 %spec.select.i.i.i.i, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread.i.i, label %bb.cj

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread.i.i: ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i
  %i.pw = load i32, ptr %i.am, align 8, !tbaa !37
  switch i32 %i.pw, label %bb.cq [
    i32 1, label %bb.ca
    i32 2, label %bb.cd
    i32 3, label %bb.ci
  ]

bb.ca:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread.i.i
  %i.px = load ptr, ptr %15, align 8, !tbaa !36
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !134 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #7
  store i16 257, ptr %i.bm, align 8
  %i.pz = load ptr, ptr %i.ar, align 8, !tbaa !32, !nonnull !10, !align !11 ; 2 uses
  %.sroa.02.0.copyload.i48 = load i32, ptr %i.au, align 8, !tbaa !33
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !30
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.qc = load ptr, ptr %i.qb, align 8
  %i.qd = call noundef ptr %i.qc(ptr noundef nonnull align 8 dereferenceable(8) %i.pz, i32 noundef 13, ptr noundef %i.py, i32 %.sroa.02.0.copyload.i48) #7, !inline_history !45 ; 2 uses
  %.not.not.i49 = icmp eq ptr %i.qd, null
  br i1 %.not.not.i49, label %bb.cb, label %_ZN4llvm13IRBuilderBase13CreateFNegFMFEPNS_5ValueENS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store i16 257, ptr %i.bn, align 8
  %i.qe = call noundef ptr @_ZN4llvm13UnaryOperator6CreateENS_11Instruction8UnaryOpsEPNS_5ValueERKNS_5TwineENS_14InsertPositionE(i32 noundef 13, ptr noundef %i.py, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, i64 0) #7 ; 5 uses
  %.sroa.0.0.copyload.i51 = load i32, ptr %i.au, align 8, !tbaa !33
  %i.qf = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not9.i.i53 = icmp eq ptr %i.qf, null
  br i1 %.not9.i.i53, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i54, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.qe, i32 noundef 3, ptr noundef nonnull %i.qf) #7
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i54

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i54: ; preds = %bb.cc, %bb.cb
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.qe, i32 %.sroa.0.0.copyload.i51) #7
  %i.qg = load ptr, ptr %i.as, align 8, !tbaa !34, !nonnull !10, !align !11 ; 2 uses
  %.sroa.0.0.copyload.i.i55 = load ptr, ptr %i.ba, align 8
  %.sroa.2.0.copyload.i.i57 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i74.i, align 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !30
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8
  call void %i.qj(ptr noundef nonnull align 8 dereferenceable(8) %i.qg, ptr noundef nonnull %i.qe, ptr noundef nonnull align 8 dereferenceable(34) %17, ptr %.sroa.0.0.copyload.i.i55, i64 %.sroa.2.0.copyload.i.i57) #7, !inline_history !46
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull %i.qe) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZN4llvm13IRBuilderBase13CreateFNegFMFEPNS_5ValueENS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit

_ZN4llvm13IRBuilderBase13CreateFNegFMFEPNS_5ValueENS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit: ; preds = %bb.ca, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i54
  %.1.i50 = phi ptr [ %i.qe, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i54 ], [ %i.qd, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #7
  br label %bb.cq

bb.cd:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread.i.i
  %i.qk = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !134 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !134 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #7
  store i16 257, ptr %i.bk, align 8
  %i.qo = load i8, ptr %i.av, align 4, !tbaa !28, !range !31, !noundef !10
  %i.qp = trunc nuw i8 %i.qo to i1
  br i1 %i.qp, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.qq = call noundef ptr @_ZN4llvm13IRBuilderBase24CreateConstrainedFPBinOpEjPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeESt8optionalINS_12RoundingModeEES9_INS_2fp17ExceptionBehaviorEE(ptr noundef nonnull align 8 dereferenceable(88) %16, i32 noundef 117, ptr noundef %i.ql, ptr noundef %i.qn, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %18, ptr noundef null, i16 0, i16 0) #7
  br label %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit

bb.cf:                                            ; preds = %bb.cd
  %i.qr = load ptr, ptr %i.ar, align 8, !tbaa !32, !nonnull !10, !align !11 ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.au, align 8, !tbaa !33
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !30
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 40
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = call noundef ptr %i.qu(ptr noundef nonnull align 8 dereferenceable(8) %i.qr, i32 noundef 19, ptr noundef %i.ql, ptr noundef %i.qn, i32 %.sroa.02.0.copyload.i) #7, !inline_history !103 ; 2 uses
  %.not.not.i41 = icmp eq ptr %i.qv, null
  br i1 %.not.not.i41, label %bb.cg, label %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store i16 257, ptr %i.bl, align 8
  %i.qw = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 19, ptr noundef %i.ql, ptr noundef %i.qn, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, i64 0) #7 ; 5 uses
  %.sroa.0.0.copyload.i43 = load i32, ptr %i.au, align 8, !tbaa !33
  %i.qx = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not9.i.i = icmp eq ptr %i.qx, null
  br i1 %.not9.i.i, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.qw, i32 noundef 3, ptr noundef nonnull %i.qx) #7
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i: ; preds = %bb.ch, %bb.cg
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.qw, i32 %.sroa.0.0.copyload.i43) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.qy = load ptr, ptr %i.as, align 8, !tbaa !34, !nonnull !10, !align !11 ; 2 uses
  %.sroa.0.0.copyload.i.i45 = load ptr, ptr %i.ba, align 8
  %.sroa.2.0.copyload.i.i47 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i74.i, align 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !30
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(8) %i.qy, ptr noundef nonnull %i.qw, ptr noundef nonnull align 8 dereferenceable(34) %18, ptr %.sroa.0.0.copyload.i.i45, i64 %.sroa.2.0.copyload.i.i47) #7, !inline_history !40
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull %i.qw) #7
  br label %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit

_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit: ; preds = %bb.ce, %bb.cf, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i
  %.1.i42 = phi ptr [ %i.qq, %bb.ce ], [ %i.qw, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit.i ], [ %i.qv, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #7
  br label %bb.cq

bb.ci:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr %i.pn, ptr %i.a, align 8, !tbaa !126
  %i.rc = load ptr, ptr %15, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #7
  store i16 257, ptr %i.bh, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #7
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %21, align 8, !tbaa !136
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !137
  %i.rd = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %16, i32 noundef 183, ptr nonnull %i.a, i64 1, ptr %i.rc, i64 3, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %19, ptr noundef nonnull byval(%"class.llvm::ArrayRef.123") align 8 %20, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %21) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.cq

bb.cj:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i
  br i1 %spec.select.i.i.i.i.i, label %bb.ck, label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.re = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !133
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !126
  %.phi.trans.insert.i16.i.i = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %.pre.i17.i.i = load i32, ptr %.phi.trans.insert.i16.i.i, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i

_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i:    ; preds = %bb.ck, %bb.cj
  %i.rh = phi i32 [ %.pre.i17.i.i, %bb.ck ], [ %i.pp, %bb.cj ]
  %i.ri = and i32 %i.rh, 255
  %i.rj = icmp eq i32 %i.ri, 12
  br i1 %i.rj, label %bb.cl, label %bb.cq

bb.cl:                                            ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i
  %i.rk = load i32, ptr %i.am, align 8, !tbaa !37
  switch i32 %i.rk, label %bb.cq [
    i32 1, label %bb.cm
    i32 2, label %bb.cn
    i32 3, label %bb.cp
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.rl = load ptr, ptr %15, align 8, !tbaa !36
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #7
  store i16 257, ptr %i.bg, align 8
  %i.rn = call noundef ptr @_ZN4llvm13IRBuilderBase20CreateUnaryIntrinsicEjPNS_5ValueENS_9FMFSourceERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %16, i32 noundef 20, ptr noundef %i.rm, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %23) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #7
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  %i.ro = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !134 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !134 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #7
  store i16 257, ptr %i.be, align 8
  %i.rs = load ptr, ptr %i.ar, align 8, !tbaa !32, !nonnull !10, !align !11 ; 2 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !30
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.rv = load ptr, ptr %i.ru, align 8
  %i.rw = call noundef ptr %i.rv(ptr noundef nonnull align 8 dereferenceable(8) %i.rs, i32 noundef 29, ptr noundef %i.rp, ptr noundef %i.rr) #7, !inline_history !47 ; 2 uses
  %.not.not.i = icmp eq ptr %i.rw, null
  br i1 %.not.not.i, label %bb.co, label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store i16 257, ptr %i.bf, align 8
  %i.rx = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 29, ptr noundef %i.rp, ptr noundef %i.rr, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, i64 0) #7 ; 3 uses
  %i.ry = load ptr, ptr %i.as, align 8, !tbaa !34, !nonnull !10, !align !11 ; 2 uses
  %.sroa.0.0.copyload.i.i40 = load ptr, ptr %i.ba, align 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i74.i, align 8
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !30
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(8) %i.ry, ptr noundef %i.rx, ptr noundef nonnull align 8 dereferenceable(34) %24, ptr %.sroa.0.0.copyload.i.i40, i64 %.sroa.2.0.copyload.i.i) #7, !inline_history !48
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef %i.rx) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit: ; preds = %bb.cn, %bb.co
  %.1.i39 = phi ptr [ %i.rx, %bb.co ], [ %i.rw, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #7
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.pn, ptr %i.b, align 8, !tbaa !126
  %i.sc = load ptr, ptr %15, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #7
  store i16 257, ptr %i.bb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #7
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %27, align 8, !tbaa !136
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !137
  %i.sd = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %16, i32 noundef 190, ptr nonnull %i.b, i64 1, ptr %i.sc, i64 3, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %25, ptr noundef nonnull byval(%"class.llvm::ArrayRef.123") align 8 %26, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %27) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit, %bb.cm, %bb.cl, %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i, %bb.ci, %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit, %_ZN4llvm13IRBuilderBase13CreateFNegFMFEPNS_5ValueENS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread.i.i
  %.0.i75.i = phi ptr [ null, %bb.cl ], [ %.1.i50, %_ZN4llvm13IRBuilderBase13CreateFNegFMFEPNS_5ValueENS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit ], [ %.1.i42, %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit ], [ %i.rd, %bb.ci ], [ null, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread.i.i ], [ %i.rn, %bb.cm ], [ %.1.i39, %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit ], [ %i.sd, %bb.cp ], [ null, %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i ]
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #7
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  br label %_ZL21callLooksLikeOperatorPN4llvm8CallBaseERNS_15SmallVectorImplIPNS_5ValueEEE.exit.i.i

_ZL21callLooksLikeOperatorPN4llvm8CallBaseERNS_15SmallVectorImplIPNS_5ValueEEE.exit.i.i: ; preds = %bb.br, %bb.cq, %_ZN4llvm6Oracle10shouldKeepEv.exit.i72.i, %.split.i76.i, %.loopexit.i.i, %select.unfold.i
  %.1.i68.i = phi ptr [ %.0.i75.i, %bb.cq ], [ null, %_ZN4llvm6Oracle10shouldKeepEv.exit.i72.i ], [ null, %.loopexit.i.i ], [ null, %select.unfold.i ], [ null, %.split.i76.i ], [ null, %bb.br ] ; 2 uses
  %i.se = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.sf = icmp eq ptr %i.se, %i.al
  br i1 %i.sf, label %_ZL26tryReplaceCallWithOperatorRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZL21callLooksLikeOperatorPN4llvm8CallBaseERNS_15SmallVectorImplIPNS_5ValueEEE.exit.i.i
  call void @free(ptr noundef %i.se) #7
  br label %_ZL26tryReplaceCallWithOperatorRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit.i

_ZL26tryReplaceCallWithOperatorRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit.i: ; preds = %bb.cr, %_ZL21callLooksLikeOperatorPN4llvm8CallBaseERNS_15SmallVectorImplIPNS_5ValueEEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %.not38.i = icmp eq ptr %.1.i68.i, null
  br i1 %.not38.i, label %bb.cs, label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit

bb.cs:                                            ; preds = %_ZL26tryReplaceCallWithOperatorRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.sg = load ptr, ptr %i.cw, align 8, !tbaa !68
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.si = load i32, ptr %i.sh, align 8
  %.fr.i.i = freeze i32 %i.si
  %i.sj = and i32 %.fr.i.i, 255
  %i.sk = icmp eq i32 %i.sj, 7                    ; 2 uses
  store ptr null, ptr %11, align 8, !tbaa !134
  store ptr null, ptr %12, align 8, !tbaa !134
  %i.sl = getelementptr inbounds i8, ptr %.sroa.0107.0142, i64 -20 ; 3 uses
  %i.sm = load i32, ptr %i.sl, align 4            ; 3 uses
  %i.sn = and i32 %i.sm, 268435455
  %i.so = zext nneg i32 %i.sn to i64
  %.neg136 = mul nsw i64 %i.so, -32               ; 2 uses
  %i.sp = getelementptr inbounds i8, ptr %i.cv, i64 %.neg136 ; 2 uses
  %i.sq = load i8, ptr %i.cv, align 8, !tbaa !86
  switch i8 %i.sq, label %bb.cv [
    i8 88, label %_ZN4llvm8CallBase17data_operands_endEv.exit.i91
    i8 36, label %bb.ct
    i8 42, label %bb.cu
  ]

bb.ct:                                            ; preds = %bb.cs
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i91

bb.cu:                                            ; preds = %bb.cs
  %i.sr = call noundef i32 @_ZNK4llvm8CallBase34getNumSubclassExtraOperandsDynamicEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cv) #7
  %i.ss = zext i32 %i.sr to i64
  %i.st = shl nuw nsw i64 %i.ss, 5
  %i.su = sub nuw nsw i64 -32, %i.st
  %.pre157 = load i32, ptr %i.sl, align 4
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit.i91

bb.cv:                                            ; preds = %bb.cs
  unreachable

_ZN4llvm8CallBase17data_operands_endEv.exit.i91:  ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.sv = phi i32 [ %.pre157, %bb.cu ], [ %i.sm, %bb.ct ], [ %i.sm, %bb.cs ]
  %.0.i.i.i92.neg = phi i64 [ %i.su, %bb.cu ], [ -96, %bb.ct ], [ -32, %bb.cs ]
  %i.sw = icmp slt i32 %i.sv, 0
  br i1 %i.sw, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i98, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i93

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i98: ; preds = %_ZN4llvm8CallBase17data_operands_endEv.exit.i91
  %i.sx = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cv) #7
  %i.sy = extractvalue { ptr, i64 } %i.sx, 0      ; 2 uses
  %.pr.i.i.i.i99 = load i32, ptr %i.sl, align 4
  %i.sz = icmp slt i32 %.pr.i.i.i.i99, 0
  br i1 %i.sz, label %bb.cw, label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i93

bb.cw:                                            ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i98
  %i.ta = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cv) #7 ; 2 uses
  %i.tb = extractvalue { ptr, i64 } %i.ta, 0
  %i.tc = extractvalue { ptr, i64 } %i.ta, 1
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.tc
  %i.te = ptrtoint ptr %i.td to i64
  br label %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i93

_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i93: ; preds = %bb.cw, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i98, %_ZN4llvm8CallBase17data_operands_endEv.exit.i91
  %.0.i.i3.i.i.i.i94 = phi ptr [ %i.sy, %bb.cw ], [ %i.sy, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i98 ], [ null, %_ZN4llvm8CallBase17data_operands_endEv.exit.i91 ]
  %.0.i.i1.i.i.i.i95 = phi i64 [ %i.te, %bb.cw ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i98 ], [ 0, %_ZN4llvm8CallBase17data_operands_endEv.exit.i91 ]
  %i.tf = ptrtoint ptr %.0.i.i3.i.i.i.i94 to i64
  %i.tg = sub i64 %.0.i.i1.i.i.i.i95, %i.tf
  %i.th = and i64 %i.tg, 68719476720
  %.not.i.i96 = icmp eq i64 %i.th, 0
  br i1 %.not.i.i96, label %_ZN4llvm8CallBase7arg_endEv.exit100, label %bb.cx

bb.cx:                                            ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i93
  %i.ti = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cv) #7
  %i.tj = extractvalue { ptr, i64 } %i.ti, 0
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !130
  %i.tm = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cv) #7 ; 2 uses
  %i.tn = extractvalue { ptr, i64 } %i.tm, 0
  %i.to = extractvalue { ptr, i64 } %i.tm, 1
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.to
  %i.tq = getelementptr inbounds i8, ptr %i.tp, i64 -4
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !131
  %i.ts = sub i32 %i.tr, %i.tl
  %i.tt = zext i32 %i.ts to i64
  %.neg138 = mul nsw i64 %i.tt, -32
  br label %_ZN4llvm8CallBase7arg_endEv.exit100

_ZN4llvm8CallBase7arg_endEv.exit100:              ; preds = %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i93, %bb.cx
  %.0.i.i97.neg = phi i64 [ %.neg138, %bb.cx ], [ 0, %_ZNK4llvm8CallBase17hasOperandBundlesEv.exit.i.i93 ]
  %i.tu = add nsw i64 %.0.i.i97.neg, %.0.i.i.i92.neg ; 2 uses
  %i.tv = getelementptr inbounds i8, ptr %i.cv, i64 %i.tu ; 2 uses
  %.not45.i.i = icmp eq i64 %.neg136, %i.tu
  br i1 %.not45.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm8CallBase7arg_endEv.exit100
  br i1 %i.sk, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.dd
  %.03446.us.i.i = phi ptr [ %i.um, %bb.dd ], [ %i.sp, %.lr.ph.i.i ] ; 2 uses
  %i.tw = load ptr, ptr %.03446.us.i.i, align 8, !tbaa !102 ; 3 uses
  %i.tx = load i8, ptr %i.tw, align 8, !tbaa !86
  %spec.select.i.i.i.i.i.i.i.i.i.us.i.i = icmp ult i8 %i.tx, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.us.i.i, label %bb.dd, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.split.us.i.i
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 8 ; 2 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !68 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = load i32, ptr %i.ua, align 8
  %.fr9.i.us.i.i = freeze i32 %i.ub               ; 4 uses
  %i.uc = and i32 %.fr9.i.us.i.i, 255             ; 2 uses
  %i.ud = icmp eq i32 %i.uc, 12
  br i1 %i.ud, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %trunc.i.i.i.us.i.i = trunc i32 %.fr9.i.us.i.i to i8 ; 2 uses
  switch i8 %trunc.i.i.i.us.i.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i.us.i.i [
    i8 3, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i
    i8 2, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i
    i8 0, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i
    i8 1, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i
    i8 5, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit.i.us.i.i: ; preds = %bb.cz
  %i.ue = and i32 %.fr9.i.us.i.i, 253
  %spec.select.i.i.us.i.i = icmp eq i32 %i.ue, 4
  br i1 %spec.select.i.i.us.i.i, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i, label %switch.early.test.i.us.i.i

switch.early.test.i.us.i.i:                       ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i.us.i.i
  switch i8 %trunc.i.i.i.us.i.i, label %bb.da [
    i8 15, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i
    i8 13, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i
    i8 10, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i
    i8 16, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.us.i.i
    i8 17, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.us.i.i
  ]

bb.da:                                            ; preds = %switch.early.test.i.us.i.i
  %i.uf = and i32 %.fr9.i.us.i.i, 254
  %spec.select.i5.i.us.i.i = icmp eq i32 %i.uf, 18
  %.not4.i.us.i.i = icmp eq i32 %i.uc, 21
  %or.cond8.i.us.i.i = or i1 %spec.select.i5.i.us.i.i, %.not4.i.us.i.i
  br i1 %or.cond8.i.us.i.i, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.us.i.i, label %_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit

_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.us.i.i: ; preds = %bb.da, %switch.early.test.i.us.i.i, %switch.early.test.i.us.i.i
  %i.ug = call noundef zeroext i1 @_ZNK4llvm4Type18isSizedDerivedTypeEPNS_15SmallPtrSetImplIPS0_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.tz, ptr noundef null) #7
  br i1 %i.ug, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i, label %_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit

_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i: ; preds = %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.us.i.i, %switch.early.test.i.us.i.i, %switch.early.test.i.us.i.i, %switch.early.test.i.us.i.i, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i.us.i.i, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cy
  %.0..0..0..0..0.7.i = load ptr, ptr %11, align 8, !tbaa !134
  %.not35.us.i.i = icmp eq ptr %.0..0..0..0..0.7.i, null
  br i1 %.not35.us.i.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i
  %i.uh = load ptr, ptr %i.ty, align 8, !tbaa !68
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.uj = load i32, ptr %i.ui, align 8
  %i.uk = and i32 %i.uj, 255
  %i.ul = icmp eq i32 %i.uk, 15
  br i1 %i.ul, label %.sink.split.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.us.i.i
  %.0..0..0..0..0.2.i = load ptr, ptr %12, align 8, !tbaa !134
  %.not36.us.i.i = icmp eq ptr %.0..0..0..0..0.2.i, null
  br i1 %.not36.us.i.i, label %.sink.split.i.i, label %_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit

.sink.split.i.i:                                  ; preds = %bb.dc, %bb.db
  %.sink.i.i = phi ptr [ %12, %bb.dc ], [ %11, %bb.db ]
  store ptr %i.tw, ptr %.sink.i.i, align 8, !tbaa !134
  br label %bb.dd

bb.dd:                                            ; preds = %.sink.split.i.i, %.lr.ph.split.us.i.i
  %i.um = getelementptr inbounds nuw i8, ptr %.03446.us.i.i, i64 32 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.um, %i.tv
  br i1 %.not.us.i.i, label %.critedge.i.loopexit.i, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.di
  %.0.516.i = phi ptr [ %.0.515.i, %bb.di ], [ null, %.lr.ph.i.i ] ; 3 uses
  %.03446.i.i = phi ptr [ %i.uz, %bb.di ], [ %i.sp, %.lr.ph.i.i ] ; 2 uses
  %i.un = load ptr, ptr %.03446.i.i, align 8, !tbaa !102 ; 3 uses
  %i.uo = load i8, ptr %i.un, align 8, !tbaa !86
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.uo, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %bb.di, label %bb.de

bb.de:                                            ; preds = %.lr.ph.split.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 8 ; 2 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !68 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.us = load i32, ptr %i.ur, align 8
  %.fr9.i.i.i = freeze i32 %i.us                  ; 4 uses
  %i.ut = and i32 %.fr9.i.i.i, 255                ; 3 uses
  %i.uu = icmp eq i32 %i.ut, 12
  br i1 %i.uu, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %trunc.i.i.i.i.i27 = trunc i32 %.fr9.i.i.i to i8 ; 2 uses
  switch i8 %trunc.i.i.i.i.i27, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i.i.i [
    i8 3, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i
    i8 2, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i
    i8 0, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i
    i8 1, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i
    i8 5, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit.i.i.i:   ; preds = %bb.df
  %i.uv = and i32 %.fr9.i.i.i, 253
  %spec.select.i.i.i.i38 = icmp eq i32 %i.uv, 4
  br i1 %spec.select.i.i.i.i38, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i.i.i
  switch i8 %trunc.i.i.i.i.i27, label %bb.dg [
    i8 15, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i
    i8 13, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i
    i8 10, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i
    i8 16, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.i.i
    i8 17, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.i.i
  ]

bb.dg:                                            ; preds = %switch.early.test.i.i.i
  %i.uw = and i32 %.fr9.i.i.i, 254
  %spec.select.i5.i.i.i = icmp eq i32 %i.uw, 18
  %.not4.i.i.i = icmp eq i32 %i.ut, 21
  %or.cond8.i.i.i = or i1 %spec.select.i5.i.i.i, %.not4.i.i.i
  br i1 %or.cond8.i.i.i, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.i.i, label %_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit

_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.i.i: ; preds = %bb.dg, %switch.early.test.i.i.i, %switch.early.test.i.i.i
  %i.ux = call noundef zeroext i1 @_ZNK4llvm4Type18isSizedDerivedTypeEPNS_15SmallPtrSetImplIPS0_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.uq, ptr noundef null) #7
  %.not35.i.i = icmp eq ptr %.0.516.i, null
  %or.cond.i = select i1 %i.ux, i1 %.not35.i.i, i1 false
  br i1 %or.cond.i, label %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.i._crit_edge.i, label %_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit

_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.i._crit_edge.i: ; preds = %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.i.i
  %.pre.i = load ptr, ptr %i.up, align 8, !tbaa !68
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre19.i = load i32, ptr %.phi.trans.insert.i, align 8
  %.pre158 = and i32 %.pre19.i, 255
  br label %bb.dh

_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i: ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i.i.i, %bb.df, %bb.df, %bb.df, %bb.df, %bb.df, %bb.de
  %.not35.i.old.i = icmp eq ptr %.0.516.i, null
  br i1 %.not35.i.old.i, label %bb.dh, label %_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit

bb.dh:                                            ; preds = %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i, %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.i._crit_edge.i
  %.pre-phi = phi i32 [ %i.ut, %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i ], [ %.pre158, %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.i._crit_edge.i ]
  %i.uy = icmp eq i32 %.pre-phi, 15
  br i1 %i.uy, label %bb.di, label %_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit

bb.di:                                            ; preds = %bb.dh, %.lr.ph.split.i.i
  %.0.515.i = phi ptr [ %.0.516.i, %.lr.ph.split.i.i ], [ %i.un, %bb.dh ] ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.03446.i.i, i64 32 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.uz, %i.tv
  br i1 %.not.i.i28, label %.critedge.i.loopexit14.i, label %.lr.ph.split.i.i

.critedge.i.loopexit14.i:                         ; preds = %bb.di
  store ptr %.0.515.i, ptr %11, align 8
  br label %.critedge.i.i

.critedge.i.loopexit.i:                           ; preds = %bb.dd
  %.0..0..0..0..0.1.pre.i = load ptr, ptr %12, align 8
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.loopexit.i, %.critedge.i.loopexit14.i, %_ZN4llvm8CallBase7arg_endEv.exit100
  %.0..0.1.i = phi ptr [ %.0..0..0..0..0.1.pre.i, %.critedge.i.loopexit.i ], [ null, %.critedge.i.loopexit14.i ], [ null, %_ZN4llvm8CallBase7arg_endEv.exit100 ] ; 2 uses
  %.not37.i.i = icmp eq ptr %.0..0.1.i, null
  %or.cond12.i = select i1 %i.sk, i1 %.not37.i.i, i1 false
  br i1 %or.cond12.i, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.critedge.i.i
  %i.va = load ptr, ptr %i.cw, align 8, !tbaa !68
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !73, !nonnull !10, !align !11
  %i.vc = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.vb) #7
  %i.vd = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.vc, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #7 ; 2 uses
  store ptr %i.vd, ptr %12, align 8, !tbaa !134
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.critedge.i.i
  %.0..0..i = phi ptr [ %i.vd, %bb.dj ], [ %.0..0.1.i, %.critedge.i.i ] ; 3 uses
  %.0..0..0..0..0.6.i = load ptr, ptr %11, align 8, !tbaa !134 ; 2 uses
  %.not38.i.i = icmp eq ptr %.0..0..0..0..0.6.i, null
  br i1 %.not38.i.i, label %bb.dl, label %_ZL22callLooksLikeLoadStorePN4llvm8CallBaseERPNS_5ValueES4_.exit.i

bb.dl:                                            ; preds = %bb.dk
  %i.ve = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11Instruction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cv) #7
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !170
  %i.vh = load ptr, ptr %i.cw, align 8, !tbaa !68
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !73, !nonnull !10, !align !11
  %i.vj = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.vi, i32 noundef %i.vg) #7
  %i.vk = call noundef ptr @_ZN4llvm19ConstantPointerNull3getEPNS_11PointerTypeE(ptr noundef %i.vj) #7 ; 2 uses
  store ptr %i.vk, ptr %11, align 8, !tbaa !134
  br label %_ZL22callLooksLikeLoadStorePN4llvm8CallBaseERPNS_5ValueES4_.exit.i

_ZL22callLooksLikeLoadStorePN4llvm8CallBaseERPNS_5ValueES4_.exit.i: ; preds = %bb.dl, %bb.dk
  %.0..0.4.i = phi ptr [ %i.vk, %bb.dl ], [ %.0..0..0..0..0.6.i, %bb.dk ] ; 2 uses
  %i.vl = load i64, ptr %i.ah, align 8, !tbaa !89 ; 2 uses
  %i.vm = icmp eq i64 %i.vl, 0
  %storemerge.in.pre.i.i29 = load i32, ptr %0, align 8, !tbaa !91 ; 6 uses
  br i1 %i.vm, label %_ZN4llvm6Oracle10shouldKeepEv.exit.thread.i37, label %bb.dm

_ZN4llvm6Oracle10shouldKeepEv.exit.thread.i37:    ; preds = %_ZL22callLooksLikeLoadStorePN4llvm8CallBaseERPNS_5ValueES4_.exit.i
  %storemerge.i10.i = add nsw i32 %storemerge.in.pre.i.i29, 1
  store i32 %storemerge.i10.i, ptr %0, align 8, !tbaa !91
  br label %bb.dn

bb.dm:                                            ; preds = %_ZL22callLooksLikeLoadStorePN4llvm8CallBaseERPNS_5ValueES4_.exit.i
  %i.vn = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 3 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !94
  %.not.i.i.i30 = icmp sge i32 %storemerge.in.pre.i.i29, %i.vo
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 4
  %i.vq = load i32, ptr %i.vp, align 4            ; 2 uses
  %i.vr = icmp sle i32 %storemerge.in.pre.i.i29, %i.vq
  %i.vs = and i1 %.not.i.i.i30, %i.vr             ; 2 uses
  %i.vt = icmp eq i32 %i.vq, %storemerge.in.pre.i.i29
  br i1 %i.vt, label %.split.i36, label %_ZN4llvm6Oracle10shouldKeepEv.exit.i31

.split.i36:                                       ; preds = %bb.dm
  %i.vu = add i64 %i.vl, -1
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  store ptr %i.vv, ptr %i.ag, align 8, !tbaa !95
  store i64 %i.vu, ptr %i.ah, align 8, !tbaa !96
  %storemerge.i11.i = add nsw i32 %storemerge.in.pre.i.i29, 1
  store i32 %storemerge.i11.i, ptr %0, align 8, !tbaa !91
  br i1 %i.vs, label %_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit, label %bb.dn

_ZN4llvm6Oracle10shouldKeepEv.exit.i31:           ; preds = %bb.dm
  %storemerge.i.i32 = add nsw i32 %storemerge.in.pre.i.i29, 1
  store i32 %storemerge.i.i32, ptr %0, align 8, !tbaa !91
  br i1 %i.vs, label %_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit, label %bb.dn

bb.dn:                                            ; preds = %_ZN4llvm6Oracle10shouldKeepEv.exit.i31, %.split.i36, %_ZN4llvm6Oracle10shouldKeepEv.exit.thread.i37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  %i.vw = load ptr, ptr %i.cw, align 8, !tbaa !68
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !73, !nonnull !10, !align !11
  store ptr null, ptr %13, align 8, !tbaa !74
  store ptr %i.vx, ptr %i.bq, align 8, !tbaa !75
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !76
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !77
  store ptr null, ptr %i.bt, align 8, !tbaa !78
  store i32 0, ptr %i.bu, align 8, !tbaa !79
  store i8 0, ptr %i.bv, align 4, !tbaa !28
  store i8 2, ptr %i.bw, align 1, !tbaa !80
  store i8 7, ptr %i.bx, align 2, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.bo, align 8, !tbaa !30
  %i.vy = load ptr, ptr %i.cz, align 8, !tbaa !83
  store ptr %i.vy, ptr %i.bz, align 8, !tbaa !84
  store ptr %.sroa.0107.0142, ptr %i.ca, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i33, align 8
  %i.vz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cv) #7
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !85
  store i64 %i.wa, ptr %13, align 8, !tbaa !85
  %.not.i = icmp eq ptr %.0..0..i, null
  br i1 %.not.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.wb = load ptr, ptr %i.bz, align 8, !tbaa !84
  %i.wc = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.wb) #7
  %i.wd = getelementptr inbounds nuw i8, ptr %.0..0..i, i64 8
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !68
  %i.wf = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.wc, ptr noundef %i.we) #7
  %i.wg = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #7 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.wg, ptr noundef nonnull %.0..0..i, ptr noundef %.0..0.4.i, i1 noundef zeroext true, i8 %i.wf, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  store i16 257, ptr %i.cb, align 8
  %i.wh = load ptr, ptr %i.bs, align 8, !tbaa !34, !nonnull !10, !align !11 ; 2 uses
  %.sroa.0.0.copyload.i.i.i34 = load ptr, ptr %i.ca, align 8
  %.sroa.2.0.copyload.i.i.i35 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i33, align 8
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !30
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wk = load ptr, ptr %i.wj, align 8
  call void %i.wk(ptr noundef nonnull align 8 dereferenceable(8) %i.wh, ptr noundef nonnull %i.wg, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr %.sroa.0.0.copyload.i.i.i34, i64 %.sroa.2.0.copyload.i.i.i35) #7, !inline_history !49
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %13, ptr noundef nonnull %i.wg) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.wl = load ptr, ptr %i.cw, align 8, !tbaa !68 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  store i16 257, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.wm = load ptr, ptr %i.bz, align 8, !tbaa !84
  %i.wn = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.wm) #7
  %i.wo = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.wn, ptr noundef %i.wl) #7
  %i.wp = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store i8 1, ptr %i.cd, align 8, !tbaa !106
  store i8 1, ptr %i.ce, align 1, !tbaa !107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.wp, ptr noundef %i.wl, ptr noundef %.0..0.4.i, ptr noundef nonnull align 8 dereferenceable(34) %7, i1 noundef zeroext true, i8 %i.wo, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %8) #7
  %i.wq = load ptr, ptr %i.bs, align 8, !tbaa !34, !nonnull !10, !align !11 ; 2 uses
  %.sroa.0.0.copyload.i.i7.i = load ptr, ptr %i.ca, align 8
  %.sroa.2.0.copyload.i.i9.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i33, align 8
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !30
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load ptr, ptr %i.ws, align 8
  call void %i.wt(ptr noundef nonnull align 8 dereferenceable(8) %i.wq, ptr noundef nonnull %i.wp, ptr noundef nonnull align 8 dereferenceable(34) %14, ptr %.sroa.0.0.copyload.i.i7.i, i64 %.sroa.2.0.copyload.i.i9.i) #7, !inline_history !50
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %13, ptr noundef nonnull %i.wp) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.0.i = phi ptr [ %i.wg, %bb.do ], [ %i.wp, %bb.dp ]
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bp) #7
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  br label %_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit

_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit: ; preds = %bb.dg, %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.i.i, %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i, %bb.dh, %bb.da, %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.us.i.i, %bb.dc, %.split.i36, %_ZN4llvm6Oracle10shouldKeepEv.exit.i31, %bb.dq
  %.1.i = phi ptr [ %.0.i, %bb.dq ], [ null, %_ZN4llvm6Oracle10shouldKeepEv.exit.i31 ], [ null, %.split.i36 ], [ null, %bb.da ], [ null, %bb.dc ], [ null, %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.us.i.i ], [ null, %bb.dh ], [ null, %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.thread.i.i ], [ null, %_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE.exit.i.i ], [ null, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit

_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit: ; preds = %.lr.ph, %.split.i, %_ZN4llvm6Oracle10shouldKeepEv.exit.i, %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit81, %.split83.i, %_ZN4llvm6Oracle10shouldKeepEv.exit48.i, %_ZN4llvm13IRBuilderBase9CreateMulEPNS_5ValueES2_RKNS_5TwineEbb.exit.i, %.split87.i, %_ZN4llvm6Oracle10shouldKeepEv.exit58.i, %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i, %bb.bk, %_ZL26tryReplaceCallWithOperatorRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit.i, %_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit
  %.4.i = phi ptr [ %.1.i68.i, %_ZL26tryReplaceCallWithOperatorRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit.i ], [ %.0.i67.i, %bb.bk ], [ %.1.i73, %_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE.exit81 ], [ null, %_ZN4llvm6Oracle10shouldKeepEv.exit.i ], [ %.1.i.i, %_ZN4llvm13IRBuilderBase9CreateMulEPNS_5ValueES2_RKNS_5TwineEbb.exit.i ], [ null, %_ZN4llvm6Oracle10shouldKeepEv.exit48.i ], [ %.1.i65.i, %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit.i ], [ null, %_ZN4llvm6Oracle10shouldKeepEv.exit58.i ], [ null, %.lr.ph ], [ %.1.i, %_ZL27tryReplaceCallWithLoadStoreRN4llvm6OracleERNS_6ModuleEPNS_8CallBaseE.exit ], [ null, %.split.i ], [ null, %.split83.i ], [ null, %.split87.i ] ; 9 uses
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #7
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #7
  %.not.i.i = icmp eq ptr %.4.i, null
  br i1 %.not.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_11InstructionENS_5ValueEEEDaPT0_.exit.thread, label %_ZN4llvm16dyn_cast_or_nullINS_11InstructionENS_5ValueEEEDaPT0_.exit

_ZN4llvm16dyn_cast_or_nullINS_11InstructionENS_5ValueEEEDaPT0_.exit: ; preds = %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit
  %i.wu = load i8, ptr %.4.i, align 8, !tbaa !86  ; 3 uses
  %i.wv = icmp ugt i8 %i.wu, 29
  %spec.select.i.i.i = select i1 %i.wv, ptr %.4.i, ptr null ; 2 uses
  %.not = icmp eq ptr %spec.select.i.i.i, null
  %.not21 = icmp eq ptr %spec.select.i.i.i, %i.cv
  %or.cond = or i1 %.not, %.not21
  br i1 %or.cond, label %_ZN4llvm16dyn_cast_or_nullINS_11InstructionENS_5ValueEEEDaPT0_.exit.thread, label %bb.dr

bb.dr:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11InstructionENS_5ValueEEEDaPT0_.exit
  %i.ww = icmp ult i8 %i.wu, 30
  br i1 %i.ww, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread125, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  switch i8 %i.wu, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread125 [
    i8 43, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 45, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 47, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 49, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 52, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 55, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 76, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 77, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 74, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 75, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 86, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 87, label %bb.dt
    i8 89, label %bb.dt
    i8 88, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds, %bb.ds, %bb.ds
  %i.wx = getelementptr inbounds nuw i8, ptr %.4.i, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !68 ; 6 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  %i.xa = load i32, ptr %i.wz, align 8            ; 5 uses
  %i.xb = and i32 %i.xa, 254
  %spec.select.i.i.i.i.i82 = icmp eq i32 %i.xb, 18
  br i1 %spec.select.i.i.i.i.i82, label %bb.du, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i83

bb.du:                                            ; preds = %bb.dt
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !133
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !126
  %.phi.trans.insert.i.i.i89 = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %.pre.i.i.i90 = load i32, ptr %.phi.trans.insert.i.i.i89, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i83

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i83:     ; preds = %bb.du, %bb.dt
  %i.xf = phi i32 [ %.pre.i.i.i90, %bb.du ], [ %i.xa, %bb.dt ] ; 2 uses
  %trunc.i.i.i.i.i84 = trunc i32 %i.xf to i8
  switch i8 %trunc.i.i.i.i.i84, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i86 [
    i8 3, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 2, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 0, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 1, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 5, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
  ]

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i86:    ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i83
  %i.xg = and i32 %i.xf, 253
  %spec.select.i.i.i.i87 = icmp eq i32 %i.xg, 4
  br i1 %spec.select.i.i.i.i87, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread, label %bb.dv

bb.dv:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i86
  %trunc.i.i = trunc i32 %i.xa to i8
  switch i8 %trunc.i.i, label %.loopexit.i.i.i [
    i8 16, label %bb.dw
    i8 17, label %.preheader.i.i.i
  ]

bb.dw:                                            ; preds = %bb.dv
  %i.xh = and i32 %i.xa, 1024
  %.not26.i.i.i = icmp eq i32 %i.xh, 0
  br i1 %.not26.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread125, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.xi = call noundef zeroext i1 @_ZNK4llvm10StructType24containsHomogeneousTypesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.wy) #7
  br i1 %i.xi, label %bb.dy, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread125

bb.dy:                                            ; preds = %bb.dx
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !133
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !126 ; 2 uses
  %.phi.trans.insert.i2.i.i = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %.pre.i3.i.i = load i32, ptr %.phi.trans.insert.i2.i.i, align 8
  br label %.loopexit.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.dv, %.preheader.i.i.i
  %.0.i.i.i88 = phi ptr [ %i.xn, %.preheader.i.i.i ], [ %i.wy, %bb.dv ]
  %i.xm = getelementptr inbounds nuw i8, ptr %.0.i.i.i88, i64 24
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !172 ; 4 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xp = load i32, ptr %i.xo, align 8            ; 2 uses
  %i.xq = and i32 %i.xp, 255
  %i.xr = icmp ne i32 %i.xq, 17
  %.not1828.i.i.i = icmp eq ptr %i.xn, null
  %.not18.i.i.i = or i1 %.not1828.i.i.i, %i.xr
  br i1 %.not18.i.i.i, label %.loopexit.i.i.i, label %.preheader.i.i.i, !llvm.loop !51

.loopexit.i.i.i:                                  ; preds = %.preheader.i.i.i, %bb.dy, %bb.dv
  %i.xs = phi i32 [ %i.xa, %bb.dv ], [ %.pre.i3.i.i, %bb.dy ], [ %i.xp, %.preheader.i.i.i ] ; 2 uses
  %.2.ph.i.i.i = phi ptr [ %i.wy, %bb.dv ], [ %i.xl, %bb.dy ], [ %i.xn, %.preheader.i.i.i ]
  %i.xt = and i32 %i.xs, 254
  %spec.select.i.i.i.i.i.i = icmp eq i32 %i.xt, 18
  br i1 %spec.select.i.i.i.i.i.i, label %bb.dz, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i

bb.dz:                                            ; preds = %.loopexit.i.i.i
  %i.xu = getelementptr inbounds nuw i8, ptr %.2.ph.i.i.i, i64 16
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !133
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !126
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i:     ; preds = %bb.dz, %.loopexit.i.i.i
  %i.xx = phi i32 [ %.pre.i.i.i.i, %bb.dz ], [ %i.xs, %.loopexit.i.i.i ] ; 2 uses
  %trunc.i.i.i.i.i.i = trunc i32 %i.xx to i8
  switch i8 %trunc.i.i.i.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit [
    i8 3, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 2, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 0, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 1, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
    i8 5, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread
  ]

_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit: ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i
  %i.xy = and i32 %i.xx, 253
  %spec.select.i.i21.i.i.i = icmp eq i32 %i.xy, 4
  br i1 %spec.select.i.i21.i.i.i, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread, label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread125

_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread: ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i83, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i83, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i83, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i83, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i83, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i.i.i.i, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.i.i86, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %bb.ds, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit
  call void @_ZN4llvm11Instruction17copyFastMathFlagsEPKS0_(ptr noundef nonnull align 8 dereferenceable(72) %.4.i, ptr noundef nonnull %i.cv) #7
  br label %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread125

_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread125: ; preds = %bb.ds, %bb.dw, %bb.dr, %bb.dx, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit
  call void @_ZN4llvm11Instruction11copyIRFlagsEPKNS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(72) %.4.i, ptr noundef nonnull %i.cv, i1 noundef zeroext true) #7
  call void @_ZN4llvm11Instruction12copyMetadataERKS0_NS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(72) %.4.i, ptr noundef nonnull align 8 dereferenceable(72) %i.cv, ptr null, i64 0) #7
  call void @_ZN4llvm5Value8takeNameEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %.4.i, ptr noundef nonnull %i.cv) #7
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull %.4.i) #7
  %i.xz = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cv) #7 ; 0 uses
  br label %_ZN4llvm16dyn_cast_or_nullINS_11InstructionENS_5ValueEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullINS_11InstructionENS_5ValueEEEDaPT0_.exit.thread: ; preds = %_ZL17reduceInstructionRN4llvm6OracleERNS_6ModuleERNS_11InstructionE.exit, %_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE.exit.thread125, %_ZN4llvm16dyn_cast_or_nullINS_11InstructionENS_5ValueEEEDaPT0_.exit
  %.not129 = icmp eq ptr %i.cu, %i.cr
  br i1 %.not129, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4llvm11Instruction17copyFastMathFlagsEPKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm11Instruction11copyIRFlagsEPKNS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm11Instruction12copyMetadataERKS0_NS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @_ZN4llvm5Value8takeNameEPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %.sroa.024.0.extract.trunc = trunc i64 %3 to i32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i8, ptr %i.a, align 4, !tbaa !28, !range !31, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4llvm13IRBuilderBase24CreateConstrainedFPBinOpEjPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeESt8optionalINS_12RoundingModeEES9_INS_2fp17ExceptionBehaviorEE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 117, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef %5, i16 0, i16 0) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32, !nonnull !10, !align !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.02.0.copyload = load i32, ptr %i.g, align 8, !tbaa !33
  %i.h = and i64 %3, 4294967296
  %.not26 = icmp eq i64 %i.h, 0                   ; 2 uses
  %.sroa.0.0.i.i = select i1 %.not26, i32 %.sroa.02.0.copyload, i32 %.sroa.024.0.extract.trunc
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef 19, ptr noundef %1, ptr noundef %2, i32 %.sroa.0.0.i.i) #7 ; 2 uses
end_hunk_0
