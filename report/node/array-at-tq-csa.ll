inline.NumInlined: 361
inline.NumDeleted: 189
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.v8::internal::TNode" = type { ptr }
%"class.std::vector.38" = type { %"struct.std::_Vector_base.39" }
%"struct.std::_Vector_base.39" = type { %"struct.std::_Vector_base<v8::internal::MachineRepresentation, std::allocator<v8::internal::MachineRepresentation>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::MachineRepresentation, std::allocator<v8::internal::MachineRepresentation>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::MachineRepresentation, std::allocator<v8::internal::MachineRepresentation>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::MachineRepresentation, std::allocator<v8::internal::MachineRepresentation>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<v8::internal::compiler::Node *, std::allocator<v8::internal::compiler::Node *>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::compiler::Node *, std::allocator<v8::internal::compiler::Node *>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::compiler::Node *, std::allocator<v8::internal::compiler::Node *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::compiler::Node *, std::allocator<v8::internal::compiler::Node *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::internal::compiler::CodeAssembler" = type { ptr }
%"class.v8::internal::compiler::CodeAssemblerParameterizedLabel" = type { %"class.v8::internal::compiler::CodeAssemblerParameterizedLabelBase" }
%"class.v8::internal::compiler::CodeAssemblerParameterizedLabelBase" = type { ptr, %"class.std::vector", %"class.std::vector.0", %"class.v8::internal::compiler::CodeAssemblerLabel" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::vector<v8::internal::compiler::Node *>, std::allocator<std::vector<v8::internal::compiler::Node *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<v8::internal::compiler::Node *>, std::allocator<std::vector<v8::internal::compiler::Node *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<v8::internal::compiler::Node *>, std::allocator<std::vector<v8::internal::compiler::Node *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<v8::internal::compiler::Node *>, std::allocator<std::vector<v8::internal::compiler::Node *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::internal::compiler::CodeAssemblerLabel" = type { i8, i64, ptr, ptr, %"class.std::map", %"class.std::map.8" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<v8::internal::compiler::CodeAssemblerVariable::Impl *, std::pair<v8::internal::compiler::CodeAssemblerVariable::Impl *const, v8::internal::compiler::Node *>, std::_Select1st<std::pair<v8::internal::compiler::CodeAssemblerVariable::Impl *const, v8::internal::compiler::Node *>>, v8::internal::compiler::CodeAssemblerVariable::ImplComparator>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<v8::internal::compiler::CodeAssemblerVariable::Impl *, std::pair<v8::internal::compiler::CodeAssemblerVariable::Impl *const, v8::internal::compiler::Node *>, std::_Select1st<std::pair<v8::internal::compiler::CodeAssemblerVariable::Impl *const, v8::internal::compiler::Node *>>, v8::internal::compiler::CodeAssemblerVariable::ImplComparator>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::map.8" = type { %"class.std::_Rb_tree.9" }
%"class.std::_Rb_tree.9" = type { %"struct.std::_Rb_tree<v8::internal::compiler::CodeAssemblerVariable::Impl *, std::pair<v8::internal::compiler::CodeAssemblerVariable::Impl *const, std::vector<v8::internal::compiler::Node *>>, std::_Select1st<std::pair<v8::internal::compiler::CodeAssemblerVariable::Impl *const, std::vector<v8::internal::compiler::Node *>>>, v8::internal::compiler::CodeAssemblerVariable::ImplComparator>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<v8::internal::compiler::CodeAssemblerVariable::Impl *, std::pair<v8::internal::compiler::CodeAssemblerVariable::Impl *const, std::vector<v8::internal::compiler::Node *>>, std::_Select1st<std::pair<v8::internal::compiler::CodeAssemblerVariable::Impl *const, std::vector<v8::internal::compiler::Node *>>>, v8::internal::compiler::CodeAssemblerVariable::ImplComparator>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.13" = type { %"class.v8::internal::compiler::CodeAssemblerParameterizedLabelBase" }
%"class.v8::internal::TNode.14" = type { ptr }
%"class.v8::internal::CodeStubAssembler" = type { %"class.v8::internal::compiler::CodeAssembler", %"class.v8::internal::TorqueGeneratedExportedMacrosAssembler" }
%"class.v8::internal::TorqueGeneratedExportedMacrosAssembler" = type { ptr }
%"class.v8::internal::TNode.43" = type { ptr }
%"class.v8::internal::ArrayPrototypeAtAssembler" = type { %"class.v8::internal::CodeStubAssembler" }
%"class.v8::internal::TNode.28" = type { ptr }
%"class.v8::internal::TNode.32" = type { ptr }
%"class.v8::internal::TNode.30" = type { ptr }
%"class.v8::internal::TNode.31" = type { ptr }
%"class.v8::internal::TNode.33" = type { ptr }
%"class.std::initializer_list" = type { ptr, i64 }
%"class.v8::internal::TNode.34" = type { ptr }
%"class.v8::internal::TNode.35" = type { ptr }
%"class.v8::internal::CallInterfaceDescriptor" = type { ptr }
%"class.v8::internal::TNode.36" = type { ptr }

$_ZN2v88internal8compiler13CodeAssembler6BranchIJEJEEEvNS0_5TNodeINS0_5BoolTEEEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISE_EEPNS7_IJDpT0_EEESG_ = comdat any

$_ZN2v88internal8compiler13CodeAssembler11CallBuiltinINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEJNS0_5TNodeISE_EENSF_INS0_6ObjectEEEEEENSF_IT_EENS0_7BuiltinESI_DpT0_ = comdat any

$_ZN2v88internal4wasm13BuiltinLookup15IsWasmBuiltinIdENS0_7BuiltinE = comdat any

@.str = private unnamed_addr constant [17 x i8] c"ArrayPrototypeAt\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"gen/torque-generated/src/builtins/array-at-tq-csa.cc\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal22ConvertRelativeIndex_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES9_PNS1_18CodeAssemblerLabelESB_(ptr dead_on_unwind noalias writable writeonly sret(%"class.v8::internal::TNode") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef readonly captures(none) dead_on_return %2, ptr noundef readonly captures(none) dead_on_return %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.std::vector.38", align 8    ; 6 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 6 uses
  %8 = alloca %"class.std::vector.38", align 8    ; 6 uses
  %9 = alloca %"class.std::vector.38", align 8    ; 6 uses
  %10 = alloca %"class.std::vector.38", align 8   ; 6 uses
  %11 = alloca %"class.std::vector.38", align 8   ; 6 uses
  %12 = alloca %"class.std::vector.38", align 8   ; 7 uses
  %13 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %14 = alloca %"class.std::vector.38", align 8   ; 6 uses
  %15 = alloca %"class.std::vector.0", align 8    ; 7 uses
  %16 = alloca %"class.std::vector.38", align 8   ; 6 uses
  %17 = alloca %"class.std::vector.38", align 8   ; 6 uses
  %18 = alloca %"class.std::vector.0", align 8    ; 6 uses
  %19 = alloca %"class.v8::internal::compiler::CodeAssembler", align 8 ; 42 uses
  %20 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %21 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %22 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %23 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel.13", align 8 ; 13 uses
  %24 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %25 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %26 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %27 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %28 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 11 uses
  %29 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %30 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %31 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %32 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %33 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %34 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %35 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %36 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %37 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %38 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %39 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %40 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %41 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %42 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %43 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %44 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %45 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %46 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %47 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %48 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %49 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %50 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %51 = alloca %"class.std::vector.0", align 8    ; 4 uses
  %52 = alloca %"class.std::vector.0", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  store ptr %1, ptr %19, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler18PushSourcePositionEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  %i.a = load ptr, ptr %19, align 8
  store ptr %i.a, ptr %20, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull %19, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #8
  %i.d = load ptr, ptr %19, align 8
  store ptr %i.d, ptr %21, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %21, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull %19, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #8
  %i.g = load ptr, ptr %19, align 8
  store ptr %i.g, ptr %22, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %22, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull %19, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #8
  %i.j = load ptr, ptr %19, align 8
  store ptr %i.j, ptr %23, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.l = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #9 ; 3 uses
  store ptr %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %23, i64 56 ; 5 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.q, ptr noundef nonnull %19, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #8
  %i.r = load ptr, ptr %19, align 8
  store ptr %i.r, ptr %24, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %24, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.t, ptr noundef nonnull %19, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #8
  %i.u = load ptr, ptr %19, align 8
  store ptr %i.u, ptr %25, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %25, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.w, ptr noundef nonnull %19, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #8
  %i.x = load ptr, ptr %19, align 8
  store ptr %i.x, ptr %26, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %26, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.z, ptr noundef nonnull %19, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #8
  %i.aa = load ptr, ptr %19, align 8
  store ptr %i.aa, ptr %27, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %27, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.ac, ptr noundef nonnull %19, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #8
  %i.ad = load ptr, ptr %19, align 8
  store ptr %i.ad, ptr %28, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %28, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.af, ptr noundef nonnull %19, i64 noundef 0, ptr noundef null, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %20, ptr noundef nonnull %18) #8
  %i.ag = load ptr, ptr %18, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #10
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %i.c) #8
  %i.am = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.an = load i64, ptr %i.am, align 8
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit11, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.ao = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %20, ptr noundef nonnull %17) #8 ; 0 uses
  %i.ap = load ptr, ptr %17, align 8              ; 3 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i9, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #10
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @_ZN2v88internal47FromConstexpr_Number_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %29, ptr noundef %1, i8 0, i64 0) #8
  %i.av = load ptr, ptr %29, align 8, !noalias !5
  %i.aw = load ptr, ptr %2, align 8
  store ptr %i.aw, ptr %31, align 8
  store ptr %i.av, ptr %32, align 8
  call void @_ZN2v88internal28NumberIsGreaterThanOrEqual_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES9_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %30, ptr noundef %1, ptr noundef nonnull dead_on_return %31, ptr noundef nonnull dead_on_return %32) #8
  %i.ax = load ptr, ptr %30, align 8, !noalias !8
  store ptr %i.ax, ptr %33, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchIJEJEEEvNS0_5TNodeINS0_5BoolTEEEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISE_EEPNS7_IJDpT0_EEESG_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull dead_on_return %33, ptr noundef nonnull %21, ptr noundef nonnull %34, ptr noundef nonnull %22, ptr noundef nonnull %35)
  %i.ay = load ptr, ptr %35, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #10
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, %bb.e
  %i.be = load ptr, ptr %34, align 8              ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit11, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #10
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit11

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit11: ; preds = %bb.f, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %21, i64 64
  %i.bl = load i64, ptr %i.bk, align 8
  %.not165 = icmp eq i64 %i.bl, 0
  br i1 %.not165, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit11
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.bm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %21, ptr noundef nonnull %16) #8 ; 0 uses
  %i.bn = load ptr, ptr %16, align 8              ; 3 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i12, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit13, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #10
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit13

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit13: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.bt = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.bu = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #9 ; 3 uses
  store ptr %i.bu, ptr %15, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.bv, ptr %i.bw, align 8
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bv, ptr %i.bx, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %23, ptr noundef nonnull %15) #8
  %i.by = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i14, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEJNS0_5TNodeIS7_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit13
  %i.bz = load ptr, ptr %i.bw, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cc) #10
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEJNS0_5TNodeIS7_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEJNS0_5TNodeIS7_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit13, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %i.q) #8
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEJNS0_5TNodeIS7_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit11
  %i.cd = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.ce = load i64, ptr %i.cd, align 8
  %.not166 = icmp eq i64 %i.ce, 0
  br i1 %.not166, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %i.i) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.cf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %22, ptr noundef nonnull %14) #8 ; 0 uses
  %i.cg = load ptr, ptr %14, align 8              ; 3 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i15, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit16, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 16
end_hunk_0
