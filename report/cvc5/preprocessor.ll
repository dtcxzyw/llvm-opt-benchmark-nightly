Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/preprocessor?download=true
inline.NumInlined: 411
inline.NumDeleted: 280
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::vector.388" = type { %"struct.std::_Vector_base.389" }
%"struct.std::_Vector_base.389" = type { %"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl" }
%"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cvc5::internal::NodeTemplate" = type { ptr }
%"class.cvc5::internal::FatalStream" = type { i8 }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }

$_ZN4cvc57context3CDOIbED2Ev = comdat any

$_ZN4cvc58internal6theory8booleans17CircuitPropagatorD2Ev = comdat any

$_ZN4cvc58internal12NodeTemplateILb1EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EED2Ev = comdat any

$_ZN4cvc57context3CDOINS_8internal9TrustNodeEED2Ev = comdat any

$_ZN4cvc58internal6theory8booleans17CircuitPropagatorD0Ev = comdat any

$_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EE4saveEPNS0_20ContextMemoryManagerE = comdat any

$_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EE7restoreEPNS0_10ContextObjE = comdat any

$_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EED0Ev = comdat any

$_ZN4cvc57context10ContextObjdlEPv = comdat any

$_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4saveEPNS0_20ContextMemoryManagerE = comdat any

$_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE7restoreEPNS0_10ContextObjE = comdat any

$_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EED2Ev = comdat any

$_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EED0Ev = comdat any

$_ZNSt5dequeIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev = comdat any

$_ZNSt10_HashtableIKN4cvc58internal12NodeTemplateILb1EEESt4pairIS4_KbESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev = comdat any

$_ZNSt5dequeIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE19_M_destroy_data_auxESt15_Deque_iteratorIS3_RS3_PS3_ES9_ = comdat any

$_ZN4cvc57context10ContextObjD2Ev = comdat any

$_ZN4cvc57context10ContextObjD0Ev = comdat any

$_ZNSt5dequeIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv = comdat any

$_ZNSt10_HashtableIKN4cvc58internal12NodeTemplateILb1EEESt4pairIS4_KbESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS4_ = comdat any

$_ZNSt10_HashtableIKN4cvc58internal12NodeTemplateILb1EEESt4pairIS4_KbESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNS9_15_Hash_node_baseEPNS9_10_Hash_nodeIS7_Lb1EEE = comdat any

$_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev = comdat any

$_ZN4cvc57context3CDOINS_8internal9TrustNodeEE4saveEPNS0_20ContextMemoryManagerE = comdat any

$_ZN4cvc57context3CDOINS_8internal9TrustNodeEE7restoreEPNS0_10ContextObjE = comdat any

$_ZN4cvc57context3CDOINS_8internal9TrustNodeEED0Ev = comdat any

$_ZN4cvc57context3CDOIbE4saveEPNS0_20ContextMemoryManagerE = comdat any

$_ZN4cvc57context3CDOIbE7restoreEPNS0_10ContextObjE = comdat any

$_ZN4cvc57context3CDOIbED0Ev = comdat any

$_ZTIN4cvc58internal6EnvObjE = comdat any

$_ZTSN4cvc58internal6EnvObjE = comdat any

$_ZTVN4cvc58internal6theory8booleans17CircuitPropagatorE = comdat any

$_ZTIN4cvc58internal6theory8booleans17CircuitPropagatorE = comdat any

$_ZTSN4cvc58internal6theory8booleans17CircuitPropagatorE = comdat any

$_ZTVN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EEE = comdat any

$_ZTIN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EEE = comdat any

$_ZTSN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EEE = comdat any

$_ZTIN4cvc57context10ContextObjE = comdat any

$_ZTSN4cvc57context10ContextObjE = comdat any

$_ZTVN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE = comdat any

$_ZTIN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE = comdat any

$_ZTSN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE = comdat any

$_ZTVN4cvc57context10ContextObjE = comdat any

$_ZTVN4cvc57context3CDOINS_8internal9TrustNodeEEE = comdat any

$_ZTIN4cvc57context3CDOINS_8internal9TrustNodeEEE = comdat any

$_ZTSN4cvc57context3CDOINS_8internal9TrustNodeEEE = comdat any

$_ZTVN4cvc57context3CDOIbEE = comdat any

$_ZTIN4cvc57context3CDOIbEE = comdat any

$_ZTSN4cvc57context3CDOIbEE = comdat any

@_ZTVN4cvc58internal3smt12PreprocessorE = hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN4cvc58internal3smt12PreprocessorE, ptr @_ZN4cvc58internal3smt12PreprocessorD2Ev, ptr @_ZN4cvc58internal3smt12PreprocessorD0Ev] }, align 8
@_ZTIN4cvc58internal3smt12PreprocessorE = hidden constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN4cvc58internal3smt12PreprocessorE, i32 0, i32 1, ptr @_ZTIN4cvc58internal6EnvObjE, i64 0 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN4cvc58internal3smt12PreprocessorE = hidden constant [35 x i8] c"N4cvc58internal3smt12PreprocessorE\00", align 1
@_ZTIN4cvc58internal6EnvObjE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4cvc58internal6EnvObjE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4cvc58internal6EnvObjE = linkonce_odr hidden constant [24 x i8] c"N4cvc58internal6EnvObjE\00", comdat, align 1
@_ZTVN4cvc58internal6theory8booleans17CircuitPropagatorE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN4cvc58internal6theory8booleans17CircuitPropagatorE, ptr @_ZN4cvc58internal6theory8booleans17CircuitPropagatorD2Ev, ptr @_ZN4cvc58internal6theory8booleans17CircuitPropagatorD0Ev] }, comdat, align 8
@_ZTIN4cvc58internal6theory8booleans17CircuitPropagatorE = linkonce_odr hidden constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN4cvc58internal6theory8booleans17CircuitPropagatorE, i32 0, i32 1, ptr @_ZTIN4cvc58internal6EnvObjE, i64 0 }, comdat, align 8
@_ZTSN4cvc58internal6theory8booleans17CircuitPropagatorE = linkonce_odr hidden constant [52 x i8] c"N4cvc58internal6theory8booleans17CircuitPropagatorE\00", comdat, align 1
@_ZTVN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EEE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EEE, ptr @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EE4saveEPNS0_20ContextMemoryManagerE, ptr @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EE7restoreEPNS0_10ContextObjE, ptr @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EED2Ev, ptr @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EED0Ev] }, comdat, align 8
@_ZTIN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EEE, ptr @_ZTIN4cvc57context10ContextObjE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EEE = linkonce_odr hidden constant [131 x i8] c"N4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EEE\00", comdat, align 1
@_ZTIN4cvc57context10ContextObjE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4cvc57context10ContextObjE }, comdat, align 8
@_ZTSN4cvc57context10ContextObjE = linkonce_odr constant [28 x i8] c"N4cvc57context10ContextObjE\00", comdat, align 1
@__PRETTY_FUNCTION__._ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EE4saveEPNS0_20ContextMemoryManagerE = private unnamed_addr constant [349 x i8] c"virtual ContextObj *cvc5::context::CDHashMap<cvc5::internal::NodeTemplate<false>, cvc5::internal::theory::booleans::CircuitPropagator::AssignmentStatus>::save(ContextMemoryManager *) [Key = cvc5::internal::NodeTemplate<false>, Data = cvc5::internal::theory::booleans::CircuitPropagator::AssignmentStatus, HashFcn = std::hash<cvc5::internal::TNode>]\00", align 1
@.str = private unnamed_addr constant [52 x i8] c"/opt-bench/work/cvc5/cvc5/src/./context/cdhashmap.h\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unreachable code reached \00", align 1
@__PRETTY_FUNCTION__._ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EE7restoreEPNS0_10ContextObjE = private unnamed_addr constant [335 x i8] c"virtual void cvc5::context::CDHashMap<cvc5::internal::NodeTemplate<false>, cvc5::internal::theory::booleans::CircuitPropagator::AssignmentStatus>::restore(ContextObj *) [Key = cvc5::internal::NodeTemplate<false>, Data = cvc5::internal::theory::booleans::CircuitPropagator::AssignmentStatus, HashFcn = std::hash<cvc5::internal::TNode>]\00", align 1
@__PRETTY_FUNCTION__._ZN4cvc57context10ContextObjdlEPv = private unnamed_addr constant [63 x i8] c"static void cvc5::context::ContextObj::operator delete(void *)\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/cvc5/cvc5/src/./context/context.h\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Check failure\0A\0A \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"It is not allowed to delete a ContextObj this way!\00", align 1
@_ZTVN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE, ptr @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE4saveEPNS0_20ContextMemoryManagerE, ptr @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE7restoreEPNS0_10ContextObjE, ptr @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EED2Ev, ptr @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EED0Ev] }, comdat, align 8
@_ZTIN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE, ptr @_ZTIN4cvc57context10ContextObjE }, comdat, align 8
@_ZTSN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE = linkonce_odr hidden constant [81 x i8] c"N4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE\00", comdat, align 1
@_ZTVN4cvc57context10ContextObjE = linkonce_odr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4cvc57context10ContextObjE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN4cvc57context10ContextObjD2Ev, ptr @_ZN4cvc57context10ContextObjD0Ev] }, comdat, align 8
@_ZTVN4cvc57context3CDOINS_8internal9TrustNodeEEE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4cvc57context3CDOINS_8internal9TrustNodeEEE, ptr @_ZN4cvc57context3CDOINS_8internal9TrustNodeEE4saveEPNS0_20ContextMemoryManagerE, ptr @_ZN4cvc57context3CDOINS_8internal9TrustNodeEE7restoreEPNS0_10ContextObjE, ptr @_ZN4cvc57context3CDOINS_8internal9TrustNodeEED2Ev, ptr @_ZN4cvc57context3CDOINS_8internal9TrustNodeEED0Ev] }, comdat, align 8
@_ZTIN4cvc57context3CDOINS_8internal9TrustNodeEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4cvc57context3CDOINS_8internal9TrustNodeEEE, ptr @_ZTIN4cvc57context10ContextObjE }, comdat, align 8
@_ZTSN4cvc57context3CDOINS_8internal9TrustNodeEEE = linkonce_odr hidden constant [45 x i8] c"N4cvc57context3CDOINS_8internal9TrustNodeEEE\00", comdat, align 1
@_ZTVN4cvc57context3CDOIbEE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4cvc57context3CDOIbEE, ptr @_ZN4cvc57context3CDOIbE4saveEPNS0_20ContextMemoryManagerE, ptr @_ZN4cvc57context3CDOIbE7restoreEPNS0_10ContextObjE, ptr @_ZN4cvc57context3CDOIbED2Ev, ptr @_ZN4cvc57context3CDOIbED0Ev] }, comdat, align 8
@_ZTIN4cvc57context3CDOIbEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4cvc57context3CDOIbEE, ptr @_ZTIN4cvc57context10ContextObjE }, comdat, align 8
@_ZTSN4cvc57context3CDOIbEE = linkonce_odr hidden constant [23 x i8] c"N4cvc57context3CDOIbEE\00", comdat, align 1

@_ZN4cvc58internal3smt12PreprocessorC1ERNS0_3EnvERNS1_22SolverEngineStatisticsE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4cvc58internal3smt12PreprocessorC2ERNS0_3EnvERNS1_22SolverEngineStatisticsE
@_ZN4cvc58internal3smt12PreprocessorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4cvc58internal3smt12PreprocessorD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal3smt12PreprocessorC2ERNS0_3EnvERNS1_22SolverEngineStatisticsE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef nonnull align 1 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4cvc58internal6EnvObjC2ERNS0_3EnvE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(696) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4cvc58internal3smt12PreprocessorE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN4cvc58internal6theory8booleans17CircuitPropagatorC1ERNS0_3EnvEbb(ptr noundef nonnull align 8 dereferenceable(528) %i.b, ptr noundef nonnull align 8 dereferenceable(696) %1, i1 noundef zeroext true, i1 noundef zeroext true)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 4 uses
  %i.d = invoke noundef ptr @_ZN4cvc58internal3Env14getUserContextEv(ptr noundef nonnull align 8 dereferenceable(696) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc57context10ContextObjC2EPNS0_7ContextE(ptr noundef nonnull align 8 dereferenceable(41) %i.c, ptr noundef %i.d)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context3CDOIbEE, i64 16), ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  store i8 0, ptr %i.e, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !109
  %i.m = icmp eq ptr %i.g, %i.l
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(41) %i.c)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc, %bb.c
  store i8 0, ptr %i.e, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !150
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 608
  invoke void @_ZN4cvc58internal3smt17ProcessAssertionsC1ERNS0_3EnvERNS1_22SolverEngineStatisticsE(ptr noundef nonnull align 8 dereferenceable(100) %i.o, ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef nonnull align 1 %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  ret void

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !110  ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4cvc58internal13preprocessing24PreprocessingPassContextESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4cvc58internal13preprocessing24PreprocessingPassContextEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4cvc58internal13preprocessing24PreprocessingPassContextEEclEPS3_.exit.i: ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(168) %i.r) #15, !inline_history !0
  br label %_ZNSt10unique_ptrIN4cvc58internal13preprocessing24PreprocessingPassContextESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4cvc58internal13preprocessing24PreprocessingPassContextESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIN4cvc58internal13preprocessing24PreprocessingPassContextEEclEPS3_.exit.i
  tail call void @_ZN4cvc57context3CDOIbED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %i.c) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4cvc58internal13preprocessing24PreprocessingPassContextESt14default_deleteIS3_EED2Ev.exit, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %_ZNSt10unique_ptrIN4cvc58internal13preprocessing24PreprocessingPassContextESt14default_deleteIS3_EED2Ev.exit ], [ %i.p, %bb.f ]
  tail call void @_ZN4cvc58internal6theory8booleans17CircuitPropagatorD2Ev(ptr noundef nonnull align 8 dead_on_return(528) dereferenceable(528) %i.b) #15
  resume { ptr, i32 } %.pn
}

declare void @_ZN4cvc58internal6EnvObjC2ERNS0_3EnvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(696)) unnamed_addr #1

declare void @_ZN4cvc58internal6theory8booleans17CircuitPropagatorC1ERNS0_3EnvEbb(ptr noundef nonnull align 8 dereferenceable(528), ptr noundef nonnull align 8 dereferenceable(696), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN4cvc58internal3Env14getUserContextEv(ptr noundef nonnull align 8 dereferenceable(696)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN4cvc58internal3smt17ProcessAssertionsC1ERNS0_3EnvERNS1_22SolverEngineStatisticsE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(696), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc57context3CDOIbED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context3CDOIbEE, i64 16), ptr %0, align 8, !tbaa !12
  invoke void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #16
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory8booleans17CircuitPropagatorD2Ev(ptr noundef nonnull align 8 dead_on_return(528) dereferenceable(528) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4cvc58internal6theory8booleans17CircuitPropagatorE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4cvc58internal16LazyCDProofChainESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4cvc58internal16LazyCDProofChainEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4cvc58internal16LazyCDProofChainEEclEPS2_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(424) %i.b) #15, !inline_history !151
  br label %_ZNSt10unique_ptrIN4cvc58internal16LazyCDProofChainESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4cvc58internal16LazyCDProofChainESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4cvc58internal16LazyCDProofChainEEclEPS2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154  ; 3 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN4cvc58internal16LazyCDProofChainESt14default_deleteIS2_EED2Ev.exit3, label %_ZNKSt14default_deleteIN4cvc58internal16LazyCDProofChainEEclEPS2_.exit.i2

_ZNKSt14default_deleteIN4cvc58internal16LazyCDProofChainEEclEPS2_.exit.i2: ; preds = %_ZNSt10unique_ptrIN4cvc58internal16LazyCDProofChainESt14default_deleteIS2_EED2Ev.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(424) %i.g) #15, !inline_history !151
  br label %_ZNSt10unique_ptrIN4cvc58internal16LazyCDProofChainESt14default_deleteIS2_EED2Ev.exit3

_ZNSt10unique_ptrIN4cvc58internal16LazyCDProofChainESt14default_deleteIS2_EED2Ev.exit3: ; preds = %_ZNSt10unique_ptrIN4cvc58internal16LazyCDProofChainESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4cvc58internal16LazyCDProofChainEEclEPS2_.exit.i2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155  ; 3 uses
  %.not.i4 = icmp eq ptr %i.l, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN4cvc58internal19EagerProofGeneratorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4cvc58internal19EagerProofGeneratorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4cvc58internal19EagerProofGeneratorEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4cvc58internal16LazyCDProofChainESt14default_deleteIS2_EED2Ev.exit3
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(216) %i.l) #15, !inline_history !152
  br label %_ZNSt10unique_ptrIN4cvc58internal19EagerProofGeneratorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4cvc58internal19EagerProofGeneratorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4cvc58internal16LazyCDProofChainESt14default_deleteIS2_EED2Ev.exit3, %_ZNKSt14default_deleteIN4cvc58internal19EagerProofGeneratorEEclEPS2_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb0EEENS2_6theory8booleans17CircuitPropagator16AssignmentStatusESt4hashIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.p) #15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE, i64 16), ptr %i.q, align 8, !tbaa !12
  invoke void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %bb.b unwind label %bb.d, !inline_history !111

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4cvc58internal19EagerProofGeneratorESt14default_deleteIS2_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  tail call void @_ZNSt10_HashtableIKN4cvc58internal12NodeTemplateILb1EEESt4pairIS4_KbESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.u) #15, !inline_history !111
  tail call void @_ZNSt5dequeIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(136) %i.s) #15, !inline_history !111
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 136) #17, !inline_history !111
  br label %_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4cvc58internal19EagerProofGeneratorESt14default_deleteIS2_EED2Ev.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #16, !inline_history !111
  unreachable

_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EED2Ev.exit: ; preds = %bb.b, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN4cvc57context16ContextNotifyObjD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.x) #15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !156 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.aa, %_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EED2Ev.exit ] ; 3 uses
  %i.ab = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !113 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  tail call void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ac) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #17
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !153

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EED2Ev.exit
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !157
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !158
  %i.ag = shl i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ag, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !157 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !158
  %i.al = shl i64 %i.ak, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #17
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN4cvc57context16ContextNotifyObjD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.am) #15
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !115 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !116 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit, %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bc, %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i ], [ %i.ao, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !117 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = and i64 %i.at, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.au, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i, label %bb.f, !prof !118

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.av = add i64 %i.at, 1152920405095219200
  %i.aw = and i64 %i.av, 1152920405095219200      ; 2 uses
  %i.ax = and i64 %i.at, -1152920405095219201
  %i.ay = or disjoint i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.as, align 8
  %i.az = icmp eq i64 %i.aw, 0
  br i1 %i.az, label %bb.g, label %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i, !prof !118

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #16
  unreachable

_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %i.aq
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.an, align 8, !tbaa !115
  br label %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit
  %i.bd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ao, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !159
end_hunk_0
