Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParallelSnippetGenerator?download=true
inline.NumInlined: 777
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.llvm::exegesis::InstructionTemplate" = type { ptr, %"class.llvm::SmallVector" }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [64 x i8] }
%"class.llvm::Expected" = type <{ %union.anon, i8, [7 x i8] }>
%union.anon = type { %"class.std::vector.34" }
%"class.std::vector.34" = type { %"struct.std::_Vector_base.35" }
%"struct.std::_Vector_base.35" = type { %"struct.std::_Vector_base<llvm::exegesis::CodeTemplate, std::allocator<llvm::exegesis::CodeTemplate>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::exegesis::CodeTemplate, std::allocator<llvm::exegesis::CodeTemplate>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::exegesis::CodeTemplate, std::allocator<llvm::exegesis::CodeTemplate>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::exegesis::CodeTemplate, std::allocator<llvm::exegesis::CodeTemplate>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::BitVector" = type <{ %"class.llvm::SmallVector.139", i32, [4 x i8] }>
%"class.llvm::SmallVector.139" = type { %"class.llvm::SmallVectorImpl.140", %"struct.llvm::SmallVectorStorage.143" }
%"class.llvm::SmallVectorImpl.140" = type { %"class.llvm::SmallVectorTemplateBase.141" }
%"class.llvm::SmallVectorTemplateBase.141" = type { %"class.llvm::SmallVectorTemplateCommon.142" }
%"class.llvm::SmallVectorTemplateCommon.142" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.143" = type { [48 x i8] }
%"class.std::optional.166" = type { %"struct.std::_Optional_base.167" }
%"struct.std::_Optional_base.167" = type { %"struct.std::_Optional_payload.169" }
%"struct.std::_Optional_payload.169" = type { %"struct.std::_Optional_payload.base.173", [7 x i8] }
%"struct.std::_Optional_payload.base.173" = type { %"struct.std::_Optional_payload_base.base.172" }
%"struct.std::_Optional_payload_base.base.172" = type <{ %"union.std::_Optional_payload_base<llvm::exegesis::InstructionTemplate>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::exegesis::InstructionTemplate>::_Storage" = type { %"struct.llvm::exegesis::InstructionTemplate" }
%"struct.llvm::exegesis::CodeTemplate" = type <{ i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::vector", %"class.llvm::MCRegister", [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.60 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.60 = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<llvm::exegesis::InstructionTemplate, std::allocator<llvm::exegesis::InstructionTemplate>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::exegesis::InstructionTemplate, std::allocator<llvm::exegesis::InstructionTemplate>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::exegesis::InstructionTemplate, std::allocator<llvm::exegesis::InstructionTemplate>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::exegesis::InstructionTemplate, std::allocator<llvm::exegesis::InstructionTemplate>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::MCRegister" = type { i32 }
%"struct.llvm::exegesis::AliasingConfigurations" = type { %"class.llvm::SmallVector.134" }
%"class.llvm::SmallVector.134" = type { %"class.llvm::SmallVectorImpl.135", %"struct.llvm::SmallVectorStorage.138" }
%"class.llvm::SmallVectorImpl.135" = type { %"class.llvm::SmallVectorTemplateBase.136" }
%"class.llvm::SmallVectorTemplateBase.136" = type { %"class.llvm::SmallVectorTemplateCommon.137" }
%"class.llvm::SmallVectorTemplateCommon.137" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.138" = type { [2560 x i8] }
%"class.llvm::SmallVector.144" = type <{ %"class.llvm::SmallVectorImpl.145", %"struct.llvm::SmallVectorStorage.148", [5 x i8] }>
%"class.llvm::SmallVectorImpl.145" = type { %"class.llvm::SmallVectorTemplateBase.146" }
%"class.llvm::SmallVectorTemplateBase.146" = type { %"class.llvm::SmallVectorTemplateCommon.147" }
%"class.llvm::SmallVectorTemplateCommon.147" = type { %"class.llvm::SmallVectorBase.65" }
%"class.llvm::SmallVectorBase.65" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.148" = type { [3 x i8] }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }

$_ZN4llvm8exegesis6removeERNS_9BitVectorERKS1_ = comdat any

$_ZNSt6vectorIN4llvm8exegesis19InstructionTemplateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN4llvm8exegesis12CodeTemplateEEEvT_S6_ = comdat any

$_ZNSt6vectorIN4llvm8exegesis12CodeTemplateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [22 x i8] c"randomizing registers\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"one unique register for each position\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"reusing the same register for all positions\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"instruction is parallel, repeating a random one.\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"instruction is serial, repeating a random one.\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"instruction has \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.8 = private unnamed_addr constant [122 x i8] c"tied variables, avoiding Read-After-Write issue, picking random def and use registers not aliasing each other, for uses, \00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Failed to produce any snippet via: \00", align 1
@_ZTVN4llvm8exegesis24ParallelSnippetGeneratorE = unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4llvm8exegesis24ParallelSnippetGeneratorD1Ev, ptr @_ZN4llvm8exegesis24ParallelSnippetGeneratorD0Ev, ptr @_ZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS0_19InstructionTemplateERKNS_9BitVectorE] }, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@switch.table._ZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS0_19InstructionTemplateERKNS_9BitVectorE = private unnamed_addr constant [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], align 8

@_ZN4llvm8exegesis24ParallelSnippetGeneratorD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm8exegesis24ParallelSnippetGeneratorD2Ev

; Function Attrs: nounwind
declare void @_ZN4llvm8exegesis16SnippetGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8exegesis24ParallelSnippetGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4llvm8exegesis16SnippetGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8exegesis24ParallelSnippetGeneratorD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4llvm8exegesis24ParallelSnippetGeneratorD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm8exegesis24ParallelSnippetGenerator25instantiateMemoryOperandsENS_10MCRegisterERSt6vectorINS0_19InstructionTemplateESaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::exegesis::InstructionTemplate", align 8 ; 8 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14, !nonnull !15, !align !16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 3 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !61     ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 88
  %.not2627 = icmp eq ptr %i.j, %i.i
  br i1 %.not2627, label %.lr.ph31, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !60
  %.pre32 = load ptr, ptr %2, align 8, !tbaa !61  ; 2 uses
  %.pre33 = ptrtoint ptr %.pre to i64
  %.pre34 = ptrtoint ptr %.pre32 to i64
  %.pre36 = sub i64 %.pre33, %.pre34
  %.pre38 = sdiv exact i64 %.pre36, 88
  %i.o = icmp ult i64 %.pre38, 6
  br i1 %i.o, label %.lr.ph31, label %.loopexit

.lr.ph31:                                         ; preds = %bb.b, %.preheader
  %.0.lcssa48 = phi i64 [ %i.y, %.preheader ], [ 0, %bb.b ]
  %i.p = phi ptr [ %.pre32, %.preheader ], [ %i.j, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.029 = phi i64 [ %i.y, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.sroa.020.028 = phi ptr [ %i.z, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.t = trunc i64 %.029 to i32
  %i.u = mul i32 %i.g, %i.t
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.020.028, i32 %1, i32 noundef %i.u) #15
  %i.y = add i64 %.029, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 88 ; 2 uses
  %.not26 = icmp eq ptr %i.z, %i.i
  br i1 %.not26, label %.preheader, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph31, %_ZN4llvm8exegesis19InstructionTemplateD2Ev.exit
  %i.aa = phi ptr [ %i.p, %.lr.ph31 ], [ %i.aq, %_ZN4llvm8exegesis19InstructionTemplateD2Ev.exit ]
  %.130 = phi i64 [ %.0.lcssa48, %.lr.ph31 ], [ %i.ai, %_ZN4llvm8exegesis19InstructionTemplateD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ab = urem i64 %.130, %i.n
  %i.ac = getelementptr inbounds nuw [88 x i8], ptr %i.aa, i64 %i.ab
  call void @_ZN4llvm8exegesis19InstructionTemplateC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %i.ac) #15
  %i.ad = trunc i64 %.130 to i32
  %i.ae = mul i32 %i.g, %i.ad
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %3, i32 %1, i32 noundef %i.ae) #15
  %i.ai = add i64 %.130, 1
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !60  ; 3 uses
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !62
  %.not.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm8exegesis19InstructionTemplateC1EOS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.aj, ptr noundef nonnull align 8 dereferenceable(88) %3) #15
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  store ptr %i.am, ptr %i.h, align 8, !tbaa !60
  br label %_ZNSt6vectorIN4llvm8exegesis19InstructionTemplateESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIN4llvm8exegesis19InstructionTemplateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(88) %3)
  br label %_ZNSt6vectorIN4llvm8exegesis19InstructionTemplateESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4llvm8exegesis19InstructionTemplateESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.d, %bb.e
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !64  ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.s
  br i1 %i.ao, label %_ZN4llvm8exegesis19InstructionTemplateD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm8exegesis19InstructionTemplateESaIS2_EE9push_backEOS2_.exit
  call void @free(ptr noundef %i.an) #15
  br label %_ZN4llvm8exegesis19InstructionTemplateD2Ev.exit

_ZN4llvm8exegesis19InstructionTemplateD2Ev.exit:  ; preds = %_ZNSt6vectorIN4llvm8exegesis19InstructionTemplateESaIS2_EE9push_backEOS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.aq = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 88
  %i.av = icmp ult i64 %i.au, 6
  br i1 %i.av, label %bb.c, label %.loopexit, !llvm.loop !86

.loopexit:                                        ; preds = %_ZN4llvm8exegesis19InstructionTemplateD2Ev.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN4llvm8exegesis19InstructionTemplateC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN4llvm8exegesis14getDescriptionENS0_24RegRandomizationStrategyE(i8 noundef zeroext %0) local_unnamed_addr #5 {
switch.lookup:
  %i.a = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS0_19InstructionTemplateERKNS_9BitVectorE, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS0_19InstructionTemplateERKNS_9BitVectorE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1, ptr nofree noundef align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(68) %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::BitVector", align 8   ; 14 uses
  %5 = alloca %"class.llvm::BitVector", align 8   ; 8 uses
  %6 = alloca %"class.llvm::BitVector", align 8   ; 19 uses
  %7 = alloca %"class.llvm::BitVector", align 8   ; 6 uses
  %8 = alloca %"class.llvm::BitVector", align 8   ; 6 uses
  %9 = alloca %"class.llvm::BitVector", align 8   ; 6 uses
  %10 = alloca %"class.llvm::BitVector", align 8  ; 12 uses
  %11 = alloca %"class.llvm::BitVector", align 8  ; 12 uses
  %12 = alloca %"class.llvm::BitVector", align 8  ; 6 uses
  %13 = alloca %"class.llvm::BitVector", align 8  ; 6 uses
  %14 = alloca %"class.llvm::BitVector", align 8  ; 12 uses
  %15 = alloca %"class.llvm::BitVector", align 8  ; 14 uses
  %16 = alloca %"class.std::optional.166", align 8 ; 8 uses
  %17 = alloca %"struct.llvm::exegesis::InstructionTemplate", align 8 ; 10 uses
  %18 = alloca %"struct.llvm::exegesis::CodeTemplate", align 8 ; 20 uses
  %19 = alloca %"struct.llvm::exegesis::AliasingConfigurations", align 8 ; 9 uses
  %20 = alloca %"class.std::vector.34", align 16  ; 5 uses
  %21 = alloca %"class.std::vector.34", align 16  ; 5 uses
  %22 = alloca %"class.std::vector.34", align 16  ; 13 uses
  %23 = alloca %"class.llvm::SmallVector.144", align 8 ; 7 uses
  %24 = alloca %"struct.llvm::exegesis::CodeTemplate", align 8 ; 14 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.std::vector", align 16     ; 13 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !120    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  store i8 0, ptr %18, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !129
  store i8 0, ptr %i.c, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 3 uses
  store i64 0, ptr %i.g, align 8, !tbaa !129
  store i8 0, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 72 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  %i.i = call noundef zeroext i1 @_ZNK4llvm8exegesis11Instruction17hasMemoryOperandsEv(ptr noundef nonnull align 8 dereferenceable(544) %i.a) #15
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14, !nonnull !15, !align !16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 928
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i32 %i.r(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.o) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0149.0 = phi i32 [ %i.s, %bb.b ], [ 0, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 3 uses
  store i32 %.sroa.0149.0, ptr %i.t, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @_ZN4llvm8exegesis22AliasingConfigurationsC1ERKNS0_11InstructionES4_RKNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(2576) %19, ptr noundef nonnull align 8 dereferenceable(544) %i.a, ptr noundef nonnull align 8 dereferenceable(544) %i.a, ptr noundef nonnull align 8 dereferenceable(68) %3) #15
  %i.u = call noundef zeroext i1 @_ZNK4llvm8exegesis22AliasingConfigurations5emptyEv(ptr noundef nonnull align 8 dereferenceable(2576) %19) #15
  br i1 %i.u, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.g, align 8, !tbaa !129
  %i.w = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef %i.v, ptr noundef nonnull @.str.3, i64 noundef 48) #15 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62
  %.not.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm8exegesis19InstructionTemplateC1EOS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef nonnull align 8 dereferenceable(88) %2) #15
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !60
  br label %_ZNSt6vectorIN4llvm8exegesis12CodeTemplateESaIS2_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt6vectorIN4llvm8exegesis19InstructionTemplateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(88) %2)
  br label %_ZNSt6vectorIN4llvm8exegesis12CodeTemplateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm8exegesis12CodeTemplateESaIS2_EED2Ev.exit: ; preds = %bb.f, %bb.e
  %.sroa.018.0.copyload = load i32, ptr %i.t, align 8, !tbaa !131
  call void @_ZNK4llvm8exegesis24ParallelSnippetGenerator25instantiateMemoryOperandsENS_10MCRegisterERSt6vectorINS0_19InstructionTemplateESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 %.sroa.018.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  call void @_ZN4llvm8exegesis12getSingletonEONS0_12CodeTemplateE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.34") align 8 %20, ptr noundef nonnull align 8 dereferenceable(100) %18) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = and i8 %i.ae, -2
  store i8 %i.af, ptr %i.ad, align 8
  %i.ag = load <2 x ptr>, ptr %20, align 16, !tbaa !132
  store <2 x ptr> %i.ag, ptr %0, align 8, !tbaa !132
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !73
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.dd

bb.g:                                             ; preds = %bb.c
  %i.ak = call noundef zeroext i1 @_ZNK4llvm8exegesis22AliasingConfigurations19hasImplicitAliasingEv(ptr noundef nonnull align 8 dereferenceable(2576) %19) #15
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = load i64, ptr %i.g, align 8, !tbaa !129
  %i.am = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef %i.al, ptr noundef nonnull @.str.4, i64 noundef 46) #15 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %18, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62
  %.not.i.i31 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i.i31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm8exegesis19InstructionTemplateC1EOS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.ao, ptr noundef nonnull align 8 dereferenceable(88) %2) #15
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  store ptr %i.as, ptr %i.an, align 8, !tbaa !60
  br label %_ZNSt6vectorIN4llvm8exegesis12CodeTemplateESaIS2_EED2Ev.exit34

bb.j:                                             ; preds = %bb.h
  call void @_ZNSt6vectorIN4llvm8exegesis19InstructionTemplateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(88) %2)
  br label %_ZNSt6vectorIN4llvm8exegesis12CodeTemplateESaIS2_EED2Ev.exit34

_ZNSt6vectorIN4llvm8exegesis12CodeTemplateESaIS2_EED2Ev.exit34: ; preds = %bb.j, %bb.i
  %.sroa.014.0.copyload = load i32, ptr %i.t, align 8, !tbaa !131
  call void @_ZNK4llvm8exegesis24ParallelSnippetGenerator25instantiateMemoryOperandsENS_10MCRegisterERSt6vectorINS0_19InstructionTemplateESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 %.sroa.014.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  call void @_ZN4llvm8exegesis12getSingletonEONS0_12CodeTemplateE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.34") align 8 %21, ptr noundef nonnull align 8 dereferenceable(100) %18) #15
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.at, align 8
  %i.aw = load <2 x ptr>, ptr %21, align 16, !tbaa !132
  store <2 x ptr> %i.aw, ptr %0, align 8, !tbaa !132
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !73
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.dd

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.ba = getelementptr i8, ptr %i.a, i64 360
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !64 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.a, i64 368
  %.val28 = load i32, ptr %i.bb, align 8, !tbaa !133 ; 2 uses
  %i.bc = zext i32 %.val28 to i64
  %.idx.i = shl nuw nsw i64 %i.bc, 5
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %.not2.not.i = icmp eq i32 %.val28, 0
  br i1 %.not2.not.i, label %_ZN4llvm8exegesisL28hasVariablesWithTiedOperandsERKNS0_11InstructionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.0103.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.val, %bb.k ] ; 2 uses
  %i.be = call noundef zeroext i1 @_ZNK4llvm8exegesis8Variable15hasTiedOperandsEv(ptr noundef nonnull align 8 dereferenceable(26) %.0103.i) #15 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0103.i, i64 32 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bf, %i.bd
  %or.cond329 = select i1 %i.be, i1 true, i1 %.not.not.i
  br i1 %or.cond329, label %_ZN4llvm8exegesisL28hasVariablesWithTiedOperandsERKNS0_11InstructionE.exit, label %.lr.ph.i

_ZN4llvm8exegesisL28hasVariablesWithTiedOperandsERKNS0_11InstructionE.exit: ; preds = %.lr.ph.i, %bb.k
  %.not.lcssa.i = phi i1 [ false, %bb.k ], [ %i.be, %.lr.ph.i ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val29 = load ptr, ptr %i.bg, align 8, !tbaa !64 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.a, i64 32
  %.val30 = load i32, ptr %i.bh, align 8, !tbaa !133 ; 2 uses
  %i.bi = zext i32 %.val30 to i64
  %.idx.i35 = mul nuw nsw i64 %i.bi, 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.val29, i64 %.idx.i35
  %.not6.i.i.i = icmp eq i32 %.val30, 0
  br i1 %.not6.i.i.i, label %"_ZN4llvm8count_ifIRKNS_11SmallVectorINS_8exegesis7OperandELj8EEEZNKS2_24ParallelSnippetGenerator21generateCodeTemplatesENS2_19InstructionTemplateERKNS_9BitVectorEE3$_0EEDaOT_T0_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm8exegesisL28hasVariablesWithTiedOperandsERKNS0_11InstructionE.exit, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.thread.i.i.i"
  %.08.i.i.i = phi i32 [ %i.br, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.thread.i.i.i" ], [ 0, %_ZN4llvm8exegesisL28hasVariablesWithTiedOperandsERKNS0_11InstructionE.exit ] ; 5 uses
  %.057.i.i.i = phi ptr [ %i.bs, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.thread.i.i.i" ], [ %.val29, %_ZN4llvm8exegesisL28hasVariablesWithTiedOperandsERKNS0_11InstructionE.exit ] ; 6 uses
  %i.bk = call noundef zeroext i1 @_ZNK4llvm8exegesis7Operand5isRegEv(ptr noundef nonnull align 8 dereferenceable(34) %.057.i.i.i) #15
  br i1 %i.bk, label %bb.l, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.thread.i.i.i"

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.bl = call noundef zeroext i1 @_ZNK4llvm8exegesis7Operand10isExplicitEv(ptr noundef nonnull align 8 dereferenceable(34) %.057.i.i.i) #15
  br i1 %i.bl, label %bb.m, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.thread.i.i.i"

bb.m:                                             ; preds = %bb.l
  %i.bm = call noundef zeroext i1 @_ZNK4llvm8exegesis7Operand8isMemoryEv(ptr noundef nonnull align 8 dereferenceable(34) %.057.i.i.i) #15
  br i1 %i.bm, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.thread.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = call noundef zeroext i1 @_ZNK4llvm8exegesis7Operand5isUseEv(ptr noundef nonnull align 8 dereferenceable(34) %.057.i.i.i) #15
  br i1 %i.bn, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.i.i.i": ; preds = %bb.n
  %i.bo = call noundef zeroext i1 @_ZNK4llvm8exegesis7Operand6isTiedEv(ptr noundef nonnull align 8 dereferenceable(34) %.057.i.i.i) #15
  %i.bp = xor i1 %i.bo, true
  %i.bq = zext i1 %i.bp to i32
  %spec.select.i.i.i = add i32 %.08.i.i.i, %i.bq
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.thread.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.i.i.i", %bb.n, %bb.m, %bb.l, %.lr.ph.i.i.i
  %i.br = phi i32 [ %.08.i.i.i, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.i.i.i" ], [ %.08.i.i.i, %bb.n ], [ %.08.i.i.i, %bb.m ], [ %.08.i.i.i, %bb.l ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bs, %i.bj
  br i1 %.not.i.i.i36, label %"_ZN4llvm8count_ifIRKNS_11SmallVectorINS_8exegesis7OperandELj8EEEZNKS2_24ParallelSnippetGenerator21generateCodeTemplatesENS2_19InstructionTemplateERKNS_9BitVectorEE3$_0EEDaOT_T0_.exit", label %.lr.ph.i.i.i, !llvm.loop !87

"_ZN4llvm8count_ifIRKNS_11SmallVectorINS_8exegesis7OperandELj8EEEZNKS2_24ParallelSnippetGenerator21generateCodeTemplatesENS2_19InstructionTemplateERKNS_9BitVectorEE3$_0EEDaOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.thread.i.i.i", %_ZN4llvm8exegesisL28hasVariablesWithTiedOperandsERKNS0_11InstructionE.exit
  %.0.lcssa.i.i.i = phi i32 [ 0, %_ZN4llvm8exegesisL28hasVariablesWithTiedOperandsERKNS0_11InstructionE.exit ], [ %i.br, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS3_19InstructionTemplateERKNS2_9BitVectorEE3$_0EclIPKNS3_7OperandEEEbT_.exit.thread.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.bt = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 7 uses
  store ptr %i.bt, ptr %23, align 8, !tbaa !135
  %i.bu = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 3, ptr %i.bv, align 8, !tbaa !136
  %i.bw = icmp ugt i32 %.0.lcssa.i.i.i, 2
  %or.cond = or i1 %.not.lcssa.i, %i.bw
  br i1 %or.cond, label %_ZN4llvm23SmallVectorTemplateBaseINS_8exegesis24RegRandomizationStrategyELb1EE9push_backES2_.exit, label %bb.o

_ZN4llvm23SmallVectorTemplateBaseINS_8exegesis24RegRandomizationStrategyELb1EE9push_backES2_.exit: ; preds = %"_ZN4llvm8count_ifIRKNS_11SmallVectorINS_8exegesis7OperandELj8EEEZNKS2_24ParallelSnippetGenerator21generateCodeTemplatesENS2_19InstructionTemplateERKNS_9BitVectorEE3$_0EEDaOT_T0_.exit"
  store i8 0, ptr %i.bt, align 8
  br label %bb.o

bb.o:                                             ; preds = %"_ZN4llvm8count_ifIRKNS_11SmallVectorINS_8exegesis7OperandELj8EEEZNKS2_24ParallelSnippetGenerator21generateCodeTemplatesENS2_19InstructionTemplateERKNS_9BitVectorEE3$_0EEDaOT_T0_.exit", %_ZN4llvm23SmallVectorTemplateBaseINS_8exegesis24RegRandomizationStrategyELb1EE9push_backES2_.exit
  %i.bx = phi i64 [ 0, %"_ZN4llvm8count_ifIRKNS_11SmallVectorINS_8exegesis7OperandELj8EEEZNKS2_24ParallelSnippetGenerator21generateCodeTemplatesENS2_19InstructionTemplateERKNS_9BitVectorEE3$_0EEDaOT_T0_.exit" ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_8exegesis24RegRandomizationStrategyELb1EE9push_backES2_.exit ] ; 3 uses
  %i.by = icmp ugt i32 %.0.lcssa.i.i.i, 1
  br i1 %i.by, label %bb.p, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bx
  store i8 1, ptr %i.bz, align 1
  %i.ca = add nuw nsw i64 %i.bx, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %i.cb = phi i64 [ %i.ca, %bb.p ], [ %i.bx, %bb.o ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cb
  store i8 2, ptr %i.cc, align 1
  %i.cd = add nuw nsw i64 %i.cb, 1                ; 2 uses
  store i64 %i.cd, ptr %i.bu, align 8, !tbaa !137
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %28, i64 33
  %i.ci = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %27, i64 33
  %i.ck = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %26, i64 33
  %i.cn = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %24, i64 56 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %24, i64 72 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %24, i64 80 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %24, i64 88 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %24, i64 96
  %i.ek = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %30, i64 33
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  %.014.i46 = select i1 %.not.lcssa.i, i8 3, i8 2
  %.sroa.05.0.i47 = select i1 %.not.lcssa.i, ptr @.str.5, ptr %28
  br label %bb.r

bb.q:                                             ; preds = %_ZN4llvm8exegesis12CodeTemplateD2Ev.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.0166, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.es, %i.ce
  br i1 %.not, label %.critedge, label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %.0166 = phi ptr [ %i.bt, %.lr.ph ], [ %i.es, %bb.q ] ; 2 uses
  %i.et = load i8, ptr %.0166, align 1, !tbaa !139 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  call void @_ZNK4llvm8exegesis12CodeTemplate5cloneEv(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::exegesis::CodeTemplate") align 8 %24, ptr noundef nonnull align 8 dereferenceable(100) %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  store ptr @.str.5, ptr %28, align 8
  br i1 %.not.lcssa.i, label %_ZNK4llvm5Twine6concatERKS0_.exit57, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr @.str.7, ptr %i.cf, align 8, !alias.scope !140
  br label %_ZNK4llvm5Twine6concatERKS0_.exit57

_ZNK4llvm5Twine6concatERKS0_.exit57:              ; preds = %bb.r, %bb.s
  %storemerge = phi i8 [ 3, %bb.s ], [ 1, %bb.r ]
  store i8 3, ptr %i.cg, align 8, !tbaa !142
  store i8 %storemerge, ptr %i.ch, align 1, !tbaa !142
  store ptr %.sroa.05.0.i47, ptr %27, align 8, !alias.scope !143
  store ptr @.str.8, ptr %i.ck, align 8, !alias.scope !143
  store i8 %.014.i46, ptr %i.ci, align 8, !tbaa !145, !alias.scope !143
  store i8 3, ptr %i.cj, align 1, !tbaa !146, !alias.scope !143
  %i.eu = zext nneg i8 %i.et to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm8exegesis24ParallelSnippetGenerator21generateCodeTemplatesENS0_19InstructionTemplateERKNS_9BitVectorE, i64 %i.eu
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.ev = load i8, ptr %switch.load, align 1, !tbaa !70
  %.not.i59 = icmp eq i8 %i.ev, 0
  br i1 %.not.i59, label %bb.t, label %_ZN4llvm5TwineC2EPKc.exit61

bb.t:                                             ; preds = %_ZNK4llvm5Twine6concatERKS0_.exit57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(40) %27, i64 40, i1 false), !tbaa.struct !147
  br label %_ZNK4llvm5Twine6concatERKS0_.exit76

_ZN4llvm5TwineC2EPKc.exit61:                      ; preds = %_ZNK4llvm5Twine6concatERKS0_.exit57
  store ptr %27, ptr %26, align 8, !alias.scope !148
  store ptr %switch.load, ptr %i.cn, align 8, !alias.scope !148
  store i8 2, ptr %i.cl, align 8, !tbaa !145, !alias.scope !148
  store i8 3, ptr %i.cm, align 1, !tbaa !146, !alias.scope !148
  br label %_ZNK4llvm5Twine6concatERKS0_.exit76

_ZNK4llvm5Twine6concatERKS0_.exit76:              ; preds = %bb.t, %_ZN4llvm5TwineC2EPKc.exit61
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(34) %26) #15
  %i.ew = load ptr, ptr %i.co, align 8, !tbaa !74 ; 6 uses
  %i.ex = icmp eq ptr %i.ew, %i.cp
  %i.ey = load ptr, ptr %25, align 8, !tbaa !74   ; 5 uses
  %i.ez = icmp eq ptr %i.ey, %i.cq                ; 2 uses
  br i1 %i.ex, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvm5Twine6concatERKS0_.exit76
  br i1 %i.ez, label %bb.u, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvm5Twine6concatERKS0_.exit76
  br i1 %i.ez, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fa = load i64, ptr %i.cr, align 8, !tbaa !129 ; 3 uses
  %i.fb = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.fb)
  switch i64 %i.fa, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.fc = load i8, ptr %i.ey, align 1, !tbaa !70
  store i8 %i.fc, ptr %i.ew, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ew, ptr align 1 %i.ey, i64 %i.fa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.fd = load i64, ptr %i.cr, align 8, !tbaa !129 ; 2 uses
  store i64 %i.fd, ptr %i.cs, align 8, !tbaa !129
  %i.fe = load ptr, ptr %i.co, align 8, !tbaa !74
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fd
  store i8 0, ptr %i.ff, align 1, !tbaa !70
  %.pre.i = load ptr, ptr %25, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ey, ptr %i.co, align 8, !tbaa !74
  %i.fg = load <2 x i64>, ptr %i.cr, align 8, !tbaa !70
  store <2 x i64> %i.fg, ptr %i.cs, align 8, !tbaa !70
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fh = load i64, ptr %i.cp, align 8, !tbaa !70
  store ptr %i.ey, ptr %i.co, align 8, !tbaa !74
  %i.fi = load <2 x i64>, ptr %i.cr, align 8, !tbaa !70
  store <2 x i64> %i.fi, ptr %i.cs, align 8, !tbaa !70
  %.not.i77 = icmp eq ptr %i.ew, null
  br i1 %.not.i77, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ew, ptr %25, align 8, !tbaa !74
  store i64 %i.fh, ptr %i.cq, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cq, ptr %25, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.x, %bb.y
  %i.fj = phi ptr [ %i.ew, %bb.x ], [ %i.cq, %bb.y ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.cr, align 8, !tbaa !129
  store i8 0, ptr %i.fj, align 1, !tbaa !70
  %i.fk = load ptr, ptr %25, align 8, !tbaa !74   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.cq
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.fm = load i64, ptr %i.cq, align 8, !tbaa !70
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  %i.fo = load ptr, ptr %i.ct, align 8, !tbaa !14, !nonnull !15, !align !16
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15, !noalias !149
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 10 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !130, !noalias !149 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1080
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !151, !noalias !149
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !166, !noalias !149 ; 2 uses
  %i.fv = add i32 %i.fu, 63                       ; 2 uses
  %i.fw = lshr i32 %i.fv, 6                       ; 3 uses
  %i.fx = zext nneg i32 %i.fw to i64              ; 3 uses
  store ptr %i.cu, ptr %10, align 8, !tbaa !64, !noalias !149
  store i32 6, ptr %i.cw, align 4, !tbaa !167, !noalias !149
  %i.fy = icmp ugt i32 %i.fv, 447
  br i1 %i.fy, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i32 0, ptr %i.cv, align 8, !tbaa !133, !noalias !149
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %10, ptr noundef nonnull %i.cu, i64 noundef %i.fx, i64 noundef 8) #15
  %i.fz = load ptr, ptr %10, align 8, !tbaa !64, !noalias !149
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fz, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !75
  %.pre.i83 = load ptr, ptr %i.fp, align 8, !tbaa !130, !noalias !149
  br label %_ZN4llvm9BitVectorC2Ejb.exit.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i.i.i78 = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i.i78, label %_ZN4llvm9BitVectorC2Ejb.exit.i, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit94.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit94.i:        ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fx, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cu, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !75, !noalias !149
  br label %_ZN4llvm9BitVectorC2Ejb.exit.i

_ZN4llvm9BitVectorC2Ejb.exit.i:                   ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.loopexit94.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i
  %i.ga = phi ptr [ %i.fq, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit94.i ], [ %.pre.i83, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit.i ], [ %i.fq, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  store i32 %i.fw, ptr %i.cv, align 8, !tbaa !133, !noalias !149
  store i32 %i.fu, ptr %i.cx, align 8, !tbaa !82, !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15, !noalias !149
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1080
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !151
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !166 ; 2 uses
  %i.gf = add i32 %i.ge, 63                       ; 2 uses
  %i.gg = lshr i32 %i.gf, 6                       ; 3 uses
  %i.gh = zext nneg i32 %i.gg to i64              ; 2 uses
  store ptr %i.cy, ptr %11, align 8, !tbaa !64, !noalias !149
  store i32 6, ptr %i.da, align 4, !tbaa !167, !noalias !149
  %i.gi = icmp ugt i32 %i.gf, 447
  br i1 %i.gi, label %_ZN4llvm9BitVectorC2Ejb.exit38.loopexit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i28.i

_ZN4llvm9BitVectorC2Ejb.exit38.loopexit.i:        ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i
  store i32 0, ptr %i.cz, align 8, !tbaa !133, !noalias !149
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %11, ptr noundef nonnull %i.cy, i64 noundef %i.gh, i64 noundef 8) #15
  %i.gj = load ptr, ptr %11, align 8, !tbaa !64, !noalias !149
  br label %_ZN4llvm9BitVectorC2Ejb.exit38.sink.split.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i28.i:    ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.i
  %.not.i.i29.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i29.i, label %_ZN4llvm9BitVectorC2Ejb.exit38.i, label %_ZN4llvm9BitVectorC2Ejb.exit38.sink.split.i

_ZN4llvm9BitVectorC2Ejb.exit38.sink.split.i:      ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i28.i, %_ZN4llvm9BitVectorC2Ejb.exit38.loopexit.i
  %.sink.i = phi ptr [ %i.gj, %_ZN4llvm9BitVectorC2Ejb.exit38.loopexit.i ], [ %i.cy, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i28.i ]
  %.idx.i.i.i.i.i.i.i30.i = shl nuw nsw i64 %i.gh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %.idx.i.i.i.i.i.i.i30.i, i1 false), !tbaa !75
  br label %_ZN4llvm9BitVectorC2Ejb.exit38.i

_ZN4llvm9BitVectorC2Ejb.exit38.i:                 ; preds = %_ZN4llvm9BitVectorC2Ejb.exit38.sink.split.i, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i28.i
  store i32 %i.gg, ptr %i.cz, align 8, !tbaa !133, !noalias !149
  store i32 %i.ge, ptr %i.db, align 8, !tbaa !82, !noalias !149
  %i.gk = load ptr, ptr %2, align 8, !tbaa !120, !noalias !149 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !64 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !133 ; 2 uses
  %i.gp = zext i32 %i.go to i64
  %.idx.i79 = mul nuw nsw i64 %i.gp, 40
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.idx.i79
  %.not81.i = icmp eq i32 %i.go, 0
  br i1 %.not81.i, label %._crit_edge.i, label %.lr.ph.i80

._crit_edge.i:                                    ; preds = %bb.ab, %_ZN4llvm9BitVectorC2Ejb.exit38.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !149
  %i.gr = load ptr, ptr %i.fp, align 8, !tbaa !130, !noalias !149
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 1080
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !151
end_hunk_0
