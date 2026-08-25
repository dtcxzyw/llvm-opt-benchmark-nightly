Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopInversionPass?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::cl::opt" = type { %"class.llvm::cl::Option", %"class.llvm::cl::opt_storage", %"class.llvm::cl::parser", %"class.std::function" }
%"class.llvm::cl::Option" = type { ptr, i16, i16, i16, i16, %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::SmallVector", %"class.llvm::SmallPtrSet" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [8 x i8] }
%"class.llvm::SmallPtrSet" = type { %"class.llvm::SmallPtrSetImpl.base", [1 x ptr] }
%"class.llvm::SmallPtrSetImpl.base" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"class.llvm::cl::opt_storage" = type { i8, [7 x i8], %"struct.llvm::cl::OptionValue" }
%"struct.llvm::cl::OptionValue" = type { %"struct.llvm::cl::OptionValueBase.base", [6 x i8] }
%"struct.llvm::cl::OptionValueBase.base" = type { %"class.llvm::cl::OptionValueCopy.base" }
%"class.llvm::cl::OptionValueCopy.base" = type <{ %"struct.llvm::cl::GenericOptionValue", i8, i8 }>
%"struct.llvm::cl::GenericOptionValue" = type { ptr }
%"class.llvm::cl::parser" = type { %"class.llvm::cl::basic_parser" }
%"class.llvm::cl::basic_parser" = type { %"class.llvm::cl::basic_parser_impl" }
%"class.llvm::cl::basic_parser_impl" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.llvm::cl::OptionCategory" = type { %"class.llvm::StringRef", %"class.llvm::StringRef" }
%"class.llvm::cl::opt.135" = type { %"class.llvm::cl::Option", %"class.llvm::cl::opt_storage.136", %"class.llvm::cl::parser.143", %"class.std::function.149" }
%"class.llvm::cl::opt_storage.136" = type { i8, [7 x i8], %"struct.llvm::cl::OptionValue.137" }
%"struct.llvm::cl::OptionValue.137" = type { %"struct.llvm::cl::OptionValueBase.base.141", [6 x i8] }
%"struct.llvm::cl::OptionValueBase.base.141" = type { %"class.llvm::cl::OptionValueCopy.base.140" }
%"class.llvm::cl::OptionValueCopy.base.140" = type <{ %"struct.llvm::cl::GenericOptionValue", i8, i8 }>
%"class.llvm::cl::parser.143" = type { %"class.llvm::cl::generic_parser_base", %"class.llvm::SmallVector.144" }
%"class.llvm::cl::generic_parser_base" = type { ptr, ptr }
%"class.llvm::SmallVector.144" = type { %"class.llvm::SmallVectorImpl.145", %"struct.llvm::SmallVectorStorage.148" }
%"class.llvm::SmallVectorImpl.145" = type { %"class.llvm::SmallVectorTemplateBase.146" }
%"class.llvm::SmallVectorTemplateBase.146" = type { %"class.llvm::SmallVectorTemplateCommon.147" }
%"class.llvm::SmallVectorTemplateCommon.147" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.148" = type { [384 x i8] }
%"class.std::function.149" = type { %"class.std::_Function_base", ptr }
%"class.llvm::cl::opt.479" = type { %"class.llvm::cl::Option", %"class.llvm::cl::opt_storage.480", %"class.llvm::cl::parser.487", %"class.std::function.489" }
%"class.llvm::cl::opt_storage.480" = type { i32, [4 x i8], %"struct.llvm::cl::OptionValue.481" }
%"struct.llvm::cl::OptionValue.481" = type { %"struct.llvm::cl::OptionValueBase.base.485", [3 x i8] }
%"struct.llvm::cl::OptionValueBase.base.485" = type { %"class.llvm::cl::OptionValueCopy.base.484" }
%"class.llvm::cl::OptionValueCopy.base.484" = type <{ %"struct.llvm::cl::GenericOptionValue", i32, i8 }>
%"class.llvm::cl::parser.487" = type { %"class.llvm::cl::basic_parser.488" }
%"class.llvm::cl::basic_parser.488" = type { %"class.llvm::cl::basic_parser_impl" }
%"class.std::function.489" = type { %"class.std::_Function_base", ptr }
%"class.llvm::SmallVector.103" = type { %"class.llvm::SmallVectorImpl.104" }
%"class.llvm::SmallVectorImpl.104" = type { %"class.llvm::SmallVectorTemplateBase.105" }
%"class.llvm::SmallVectorTemplateBase.105" = type { %"class.llvm::SmallVectorTemplateCommon.106" }
%"class.llvm::SmallVectorTemplateCommon.106" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::Error" = type { ptr }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i64 }
%"class.std::function.152" = type { %"class.std::_Function_base", ptr }
%"class.std::function.156" = type { %"class.std::_Function_base", ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev = comdat any

$_ZN4llvm4bolt18BinaryFunctionPassD2Ev = comdat any

$_ZN4llvm4bolt17LoopInversionPassD0Ev = comdat any

$_ZNK4llvm4bolt17LoopInversionPass7getNameEv = comdat any

$_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZTVN4llvm2cl11OptionValueIbEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4optsL11LoopReorderE = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"loop-inversion-opt\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"reorder unconditional jump instructions in loops optimization\00", align 1
@_ZN4opts12BoltCategoryE = external global %"class.llvm::cl::OptionCategory", align 8
@__dso_handle = external hidden global i8
@_ZN4opts13ReorderBlocksE = external local_unnamed_addr global %"class.llvm::cl::opt.135", align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"LoopInversionPass\00", align 1
@_ZN4opts9TaskCountE = external local_unnamed_addr global %"class.llvm::cl::opt.479", align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"BOLT-INFO: \00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c" Functions were reordered by LoopInversionPass\0A\00", align 1
@_ZTVN4llvm4bolt17LoopInversionPassE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm4bolt18BinaryFunctionPass14shouldOptimizeERKNS0_14BinaryFunctionE, ptr @_ZN4llvm4bolt18BinaryFunctionPassD2Ev, ptr @_ZN4llvm4bolt17LoopInversionPassD0Ev, ptr @_ZNK4llvm4bolt17LoopInversionPass7getNameEv, ptr @_ZNK4llvm4bolt18BinaryFunctionPass11shouldPrintERKNS0_14BinaryFunctionE, ptr @_ZN4llvm4bolt17LoopInversionPass14runOnFunctionsERNS0_13BinaryContextE] }, align 8
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_LoopInversionPass.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #12, !inline_history !13 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.i) #12
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #12
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm4bolt17LoopInversionPass13runOnFunctionERNS0_14BinaryFunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1360) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.103", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1272 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1296 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %.critedge101, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  %.not.i = icmp ne i64 %i.f, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.h = load float, ptr %i.g, align 8
  %i.i = fcmp oeq float %i.h, 1.000000e+00
  %i.j = select i1 %.not.i, i1 %i.i, i1 false
  br i1 %i.j, label %bb.c, label %.critedge101

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK4llvm4bolt14FunctionLayout19updateLayoutIndicesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1288 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.m = load i32, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx102 = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx102 ; 2 uses
  %.not95 = icmp eq i32 %i.m, 0
  br i1 %.not95, label %.critedge101, label %.lr.ph99.outer

.lr.ph99.outer:                                   ; preds = %bb.c, %.critedge.thread
  %.06297.ph = phi i1 [ true, %.critedge.thread ], [ false, %bb.c ]
  %.06696.ph = phi ptr [ %i.bc, %.critedge.thread ], [ %i.l, %bb.c ]
  br label %.lr.ph99

._crit_edge100:                                   ; preds = %.critedge
  br i1 %.06297.ph, label %._crit_edge100.thread, label %.critedge101

.lr.ph99:                                         ; preds = %.lr.ph99.outer, %.critedge
  %.06696 = phi ptr [ %i.az, %.critedge ], [ %.06696.ph, %.lr.ph99.outer ] ; 3 uses
  %i.p = load ptr, ptr %.06696, align 8, !tbaa !152 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !23
  %.not76 = icmp eq i32 %i.r, 1
  br i1 %.not76, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph99
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !23
  %.not77 = icmp eq i32 %i.t, 1
  br i1 %.not77, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152  ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !152
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 164
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !154 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 164
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !154 ; 4 uses
  %i.ae = icmp eq ptr %i.w, %i.z
  br i1 %i.ae, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ne ptr %i.p, %i.w
  %i.ag = icmp ne i32 %i.ab, 0
  %or.cond = and i1 %i.af, %i.ag
  %i.ah = icmp ne i32 %i.ad, 0
  %or.cond5 = and i1 %or.cond, %i.ah
  br i1 %or.cond5, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !23
  %i.ak = icmp eq i32 %i.aj, 2
  br i1 %i.ak, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %.sroa.0.0.copyload.i = load i32, ptr %i.al, align 8, !tbaa !174
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  %.sroa.0.0.copyload.i81 = load i32, ptr %i.am, align 8, !tbaa !174
  %i.an = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i81
  br i1 %i.an, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !152 ; 2 uses
  %.not79 = icmp eq ptr %i.aq, %i.p
  br i1 %.not79, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %.06792.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %.06792.ptr.1, align 8, !tbaa !152
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.1, %.lr.ph.preheader
  %.270.ph = phi ptr [ %i.aq, %.lr.ph.preheader ], [ %i.ar, %.lr.ph.1 ]
  %i.as = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm4bolt16BinaryBasicBlock13getBranchInfoERKS1_(ptr noundef nonnull align 8 dereferenceable(192) %i.w, ptr noundef nonnull align 8 dereferenceable(192) %i.p) #12
  %i.at = load i64, ptr %i.as, align 8, !tbaa !175
  %i.au = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm4bolt16BinaryBasicBlock13getBranchInfoERKS1_(ptr noundef nonnull align 8 dereferenceable(192) %i.w, ptr noundef nonnull align 8 dereferenceable(192) %.270.ph) #12
  %i.av = load i64, ptr %i.au, align 8, !tbaa !175
  %i.aw = icmp ult i64 %i.at, %i.av
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ax = icmp ugt i32 %i.ab, %i.ad
  br i1 %i.ax, label %.critedge, label %.critedge.thread

bb.j:                                             ; preds = %._crit_edge
  %i.ay = icmp ult i32 %i.ab, %i.ad
  br i1 %i.ay, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %bb.g, %bb.e, %bb.f, %bb.i, %bb.j, %bb.h, %.lr.ph99, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.06696, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.o
  br i1 %.not, label %._crit_edge100, label %.lr.ph99

.critedge.thread:                                 ; preds = %bb.i, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 164
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 164
  store i32 %i.ad, ptr %i.ba, align 4, !tbaa !154
  store i32 %i.ab, ptr %i.bb, align 4, !tbaa !154
  %i.bc = getelementptr inbounds nuw i8, ptr %.06696, i64 8 ; 2 uses
  %.not119 = icmp eq ptr %i.bc, %i.o
  br i1 %.not119, label %._crit_edge100.thread, label %.lr.ph99.outer

._crit_edge100.thread:                            ; preds = %.critedge.thread, %._crit_edge100
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.be = load i32, ptr %i.b, align 8, !tbaa !23  ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.bf, ptr %2, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.bg, align 8, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !177
  %.not.i84 = icmp eq i32 %i.be, 0
  br i1 %.not.i84, label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2IPS3_vEET_S7_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge100.thread
  %i.bi = zext i32 %i.be to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.bi, 3
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.bf, i64 noundef %i.bi, i64 noundef 8) #12
  %.pre8.pre.i.i = load i32, ptr %i.bg, align 8, !tbaa !23
  %i.bj = load ptr, ptr %2, align 8, !tbaa !21
  %i.bk = zext i32 %.pre8.pre.i.i to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 8 %i.bd, i64 %.idx, i1 false)
  %.pre.i.i = load i32, ptr %i.bg, align 8, !tbaa !23
  %.val.pre = load ptr, ptr %2, align 8, !tbaa !21
  br label %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2IPS3_vEET_S7_.exit

_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2IPS3_vEET_S7_.exit: ; preds = %._crit_edge100.thread, %bb.k
  %.val = phi ptr [ %.val.pre, %bb.k ], [ %i.bf, %._crit_edge100.thread ] ; 17 uses
  %i.bm = phi i32 [ %.pre.i.i, %bb.k ], [ 0, %._crit_edge100.thread ]
  %i.bn = add i32 %i.bm, %i.be                    ; 5 uses
  store i32 %i.bn, ptr %i.bg, align 8, !tbaa !23
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.bo, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEEZNS2_17LoopInversionPass13runOnFunctionERNS2_14BinaryFunctionEE3$_0EEvOT_T0_.exit", label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEC2IPS3_vEET_S7_.exit
  %i.bq = ptrtoint ptr %.val to i64
  %i.br = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bs = shl nuw nsw i64 %i.br, 1
  %i.bt = xor i64 %i.bs, 126
  call fastcc void @"_ZSt16__introsort_loopIPPN4llvm4bolt16BinaryBasicBlockElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17LoopInversionPass13runOnFunctionERNS1_14BinaryFunctionEE3$_0EEEvT_SD_T0_T1_"(ptr noundef %.val, ptr noundef nonnull %i.bp, i64 noundef %i.bt)
  %i.bu = icmp ugt i32 %i.bn, 16
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val, i64 8 ; 2 uses
  br i1 %i.bu, label %.preheader.i.i.i, label %bb.q

.preheader.i.i.i:                                 ; preds = %bb.l, %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i
  %.020.i.idx.i.i.i.i.i = phi i64 [ %.020.i.add.i.i.i.i.i, %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i ], [ 8, %bb.l ] ; 4 uses
  %.pn19.i.i.i.i.i.i = phi ptr [ %.020.i.ptr.i.i.i.i.i, %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i ], [ %.val, %bb.l ] ; 3 uses
  %.020.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.020.i.idx.i.i.i.i.i ; 4 uses
  %.0.val.i.i.i.i.i.i = load ptr, ptr %.020.i.ptr.i.i.i.i.i, align 8, !tbaa !152 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.val, align 8, !tbaa !152 ; 2 uses
  %i.bv = getelementptr i8, ptr %.0.val.i.i.i.i.i.i, i64 164
  %.0.val.val.i.i.i.i.i.i = load i32, ptr %i.bv, align 4, !tbaa !154 ; 3 uses
  %i.bw = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 164
  %.val.val.i.i.i.i.i.i = load i32, ptr %i.bw, align 4, !tbaa !154
  %i.bx = icmp ult i32 %.0.val.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i.i
  br i1 %i.bx, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.preheader.i.i.i
  %i.by = icmp samesign ugt i64 %.020.i.idx.i.i.i.i.i, 8
  br i1 %i.by, label %bb.n, label %bb.o, !prof !178

bb.n:                                             ; preds = %bb.m
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val, i64 %.020.i.idx.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i.i, i64 8
  store ptr %.val.i.i.i.i.i.i, ptr %i.bz, align 8, !tbaa !152
  br label %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %.preheader.i.i.i
  %.0.val11.i.i.i.i.i.i.i = load ptr, ptr %.pn19.i.i.i.i.i.i, align 8, !tbaa !152 ; 2 uses
  %i.ca = getelementptr i8, ptr %.0.val11.i.i.i.i.i.i.i, i64 164
  %.0.val.val12.i.i.i.i.i.i.i = load i32, ptr %i.ca, align 4, !tbaa !154
  %i.cb = icmp ult i32 %.0.val.val.i.i.i.i.i.i, %.0.val.val12.i.i.i.i.i.i.i
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i
  %.0.val15.i.i.i.i.i.i.i = phi ptr [ %.0.val.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.val11.i.i.i.i.i.i.i, %bb.p ]
  %.014.i.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.pn19.i.i.i.i.i.i, %bb.p ] ; 3 uses
  %.0913.i.i.i.i.i.i.i = phi ptr [ %.014.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.020.i.ptr.i.i.i.i.i, %bb.p ]
  store ptr %.0.val15.i.i.i.i.i.i.i, ptr %.0913.i.i.i.i.i.i.i, align 8, !tbaa !152
  %.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !152 ; 2 uses
  %i.cc = getelementptr i8, ptr %.0.val.i.i.i.i.i.i.i, i64 164
  %.0.val.val.i.i.i.i.i.i.i = load i32, ptr %i.cc, align 4, !tbaa !154
  %i.cd = icmp ult i32 %.0.val.val.i.i.i.i.i.i, %.0.val.val.i.i.i.i.i.i.i
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i, !llvm.loop !179

_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.p, %bb.o, %bb.n
  %.sink.i.i.i.i.i.i = phi ptr [ %.val, %bb.o ], [ %.val, %bb.n ], [ %.020.i.ptr.i.i.i.i.i, %bb.p ], [ %.014.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.val.i.i.i.i.i.i, ptr %.sink.i.i.i.i.i.i, align 8, !tbaa !152
  %.020.i.add.i.i.i.i.i = add nuw nsw i64 %.020.i.idx.i.i.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.020.i.add.i.i.i.i.i, 128
  br i1 %.not.i.i.i.i.i.i, label %"_ZSt16__insertion_sortIPPN4llvm4bolt16BinaryBasicBlockEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17LoopInversionPass13runOnFunctionERNS1_14BinaryFunctionEE3$_0EEEvT_SD_T0_.exit.i.i.i.i.i", label %.preheader.i.i.i, !llvm.loop !181

"_ZSt16__insertion_sortIPPN4llvm4bolt16BinaryBasicBlockEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17LoopInversionPass13runOnFunctionERNS1_14BinaryFunctionEE3$_0EEEvT_SD_T0_.exit.i.i.i.i.i": ; preds = %_ZSt13move_backwardIPPN4llvm4bolt16BinaryBasicBlockES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 128
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZSt25__unguarded_linear_insertIPPN4llvm4bolt16BinaryBasicBlockEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17LoopInversionPass13runOnFunctionERNS1_14BinaryFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %"_ZSt16__insertion_sortIPPN4llvm4bolt16BinaryBasicBlockEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17LoopInversionPass13runOnFunctionERNS1_14BinaryFunctionEE3$_0EEEvT_SD_T0_.exit.i.i.i.i.i"
  %.07.i.i.i.i.i.i = phi ptr [ %i.cl, %"_ZSt25__unguarded_linear_insertIPPN4llvm4bolt16BinaryBasicBlockEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17LoopInversionPass13runOnFunctionERNS1_14BinaryFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i" ], [ %i.ce, %"_ZSt16__insertion_sortIPPN4llvm4bolt16BinaryBasicBlockEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17LoopInversionPass13runOnFunctionERNS1_14BinaryFunctionEE3$_0EEEvT_SD_T0_.exit.i.i.i.i.i" ] ; 5 uses
  %i.cf = load ptr, ptr %.07.i.i.i.i.i.i, align 8, !tbaa !152 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 164
  %.val.val.i.i.i.i.i.i.i = load i32, ptr %i.cg, align 4, !tbaa !154 ; 2 uses
  %.010.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -8 ; 2 uses
end_hunk_0
