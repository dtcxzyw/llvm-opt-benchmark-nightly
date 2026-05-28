inline.NumInlined: 404
inline.NumDeleted: 279
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector.46" = type { %"struct.std::_Vector_base.47" }
%"struct.std::_Vector_base.47" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::locale::id" = type { i64 }
%"class.LIEF::iterator_range" = type { %"class.LIEF::assembly::Instruction::Iterator", %"class.LIEF::assembly::Instruction::Iterator" }
%"class.LIEF::assembly::Instruction::Iterator" = type { %"class.std::unique_ptr.38" }
%"class.std::unique_ptr.38" = type { %"struct.std::__uniq_ptr_data.39" }
%"struct.std::__uniq_ptr_data.39" = type { %"class.std::__uniq_ptr_impl.40" }
%"class.std::__uniq_ptr_impl.40" = type { %"class.std::tuple.41" }
%"class.std::tuple.41" = type { %"struct.std::_Tuple_impl.42" }
%"struct.std::_Tuple_impl.42" = type { %"struct.std::_Head_base.45" }
%"struct.std::_Head_base.45" = type { ptr }
%"class.std::unique_ptr.51" = type { %"struct.std::__uniq_ptr_data.52" }
%"struct.std::__uniq_ptr_data.52" = type { %"class.std::__uniq_ptr_impl.53" }
%"class.std::__uniq_ptr_impl.53" = type { %"class.std::tuple.54" }
%"class.std::tuple.54" = type { %"struct.std::_Tuple_impl.55" }
%"struct.std::_Tuple_impl.55" = type { %"struct.std::_Head_base.58" }
%"struct.std::_Head_base.58" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.LIEF::iterator_range.76" = type { %"class.LIEF::assembly::aarch64::Operand::Iterator", %"class.LIEF::assembly::aarch64::Operand::Iterator" }
%"class.LIEF::assembly::aarch64::Operand::Iterator" = type { %"class.std::unique_ptr.78" }
%"class.std::unique_ptr.78" = type { %"struct.std::__uniq_ptr_data.79" }
%"struct.std::__uniq_ptr_data.79" = type { %"class.std::__uniq_ptr_impl.80" }
%"class.std::__uniq_ptr_impl.80" = type { %"class.std::tuple.81" }
%"class.std::tuple.81" = type { %"struct.std::_Tuple_impl.82" }
%"struct.std::_Tuple_impl.82" = type { %"struct.std::_Head_base.85" }
%"struct.std::_Head_base.85" = type { ptr }
%"class.LIEF::iterator_range.86" = type { %"class.LIEF::assembly::x86::Operand::Iterator", %"class.LIEF::assembly::x86::Operand::Iterator" }
%"class.LIEF::assembly::x86::Operand::Iterator" = type { %"class.std::unique_ptr.88" }
%"class.std::unique_ptr.88" = type { %"struct.std::__uniq_ptr_data.89" }
%"struct.std::__uniq_ptr_data.89" = type { %"class.std::__uniq_ptr_impl.90" }
%"class.std::__uniq_ptr_impl.90" = type { %"class.std::tuple.91" }
%"class.std::tuple.91" = type { %"struct.std::_Tuple_impl.92" }
%"struct.std::_Tuple_impl.92" = type { %"struct.std::_Head_base.95" }
%"struct.std::_Head_base.95" = type { ptr }
%"class.std::unique_ptr.96" = type { %"struct.std::__uniq_ptr_data.97" }
%"struct.std::__uniq_ptr_data.97" = type { %"class.std::__uniq_ptr_impl.98" }
%"class.std::__uniq_ptr_impl.98" = type { %"class.std::tuple.99" }
%"class.std::tuple.99" = type { %"struct.std::_Tuple_impl.100" }
%"struct.std::_Tuple_impl.100" = type { %"struct.std::_Head_base.103" }
%"struct.std::_Head_base.103" = type { ptr }
%"class.std::unique_ptr.112" = type { %"struct.std::__uniq_ptr_data.113" }
%"struct.std::__uniq_ptr_data.113" = type { %"class.std::__uniq_ptr_impl.114" }
%"class.std::__uniq_ptr_impl.114" = type { %"class.std::tuple.115" }
%"class.std::tuple.115" = type { %"struct.std::_Tuple_impl.116" }
%"struct.std::_Tuple_impl.116" = type { %"struct.std::_Head_base.119" }
%"struct.std::_Head_base.119" = type { ptr }

$_ZNSt6vectorIhSaIhEED2Ev = comdat any

$_ZN3fmt3v1112format_facetISt6localeE2idE = comdat any

@_ZTVN4LIEF8assembly11InstructionE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF8assembly11InstructionD2Ev, ptr @_ZN4LIEF8assembly11InstructionD0Ev] }, align 8
@_ZZNK4LIEF8assembly11Instruction3rawEvE5empty = internal global %"class.std::vector.46" zeroinitializer, align 8
@_ZGVZNK4LIEF8assembly11Instruction3rawEvE5empty = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZNK4LIEF8assembly11Instruction6mcinstEvE4FAKE = internal global i64 0, align 8
@_ZTVN4LIEF8assembly3x867OperandE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF8assembly3x867OperandD2Ev, ptr @_ZN4LIEF8assembly3x867OperandD0Ev] }, align 8
@_ZTVN4LIEF8assembly7aarch647OperandE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF8assembly7aarch647OperandD2Ev, ptr @_ZN4LIEF8assembly7aarch647OperandD0Ev] }, align 8
@_ZN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1112format_facetISt6localeE2idE), align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"LIEF\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1112format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1112format_facetISt6localeE2idE], section "llvm.metadata"

@_ZN4LIEF8assembly11Instruction8IteratorC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF8assembly11Instruction8IteratorC2Ev
@_ZN4LIEF8assembly11Instruction8IteratorC1ESt10unique_ptrINS0_7details13InstructionItESt14default_deleteIS5_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly11Instruction8IteratorC2ESt10unique_ptrINS0_7details13InstructionItESt14default_deleteIS5_EE
@_ZN4LIEF8assembly11Instruction8IteratorC1ERKS2_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly11Instruction8IteratorC2ERKS2_
@_ZN4LIEF8assembly11Instruction8IteratorC1EOS2_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly11Instruction8IteratorC2EOS2_
@_ZN4LIEF8assembly11Instruction8IteratorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF8assembly11Instruction8IteratorD2Ev
@_ZN4LIEF8assembly11InstructionC1ESt10unique_ptrINS0_7details11InstructionESt14default_deleteIS4_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly11InstructionC2ESt10unique_ptrINS0_7details11InstructionESt14default_deleteIS4_EE
@_ZN4LIEF8assembly11InstructionD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF8assembly11InstructionD2Ev
@_ZN4LIEF8assembly6EngineC1ESt10unique_ptrINS0_7details6EngineESt14default_deleteIS4_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly6EngineC2ESt10unique_ptrINS0_7details6EngineESt14default_deleteIS4_EE
@_ZN4LIEF8assembly6EngineC1EOS1_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly6EngineC2EOS1_
@_ZN4LIEF8assembly6EngineD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF8assembly6EngineD2Ev
@_ZN4LIEF8assembly3x867Operand8IteratorC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF8assembly3x867Operand8IteratorC2Ev
@_ZN4LIEF8assembly3x867Operand8IteratorC1ESt10unique_ptrINS1_7details9OperandItESt14default_deleteIS6_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly3x867Operand8IteratorC2ESt10unique_ptrINS1_7details9OperandItESt14default_deleteIS6_EE
@_ZN4LIEF8assembly3x867Operand8IteratorC1ERKS3_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly3x867Operand8IteratorC2ERKS3_
@_ZN4LIEF8assembly3x867Operand8IteratorC1EOS3_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly3x867Operand8IteratorC2EOS3_
@_ZN4LIEF8assembly3x867Operand8IteratorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF8assembly3x867Operand8IteratorD2Ev
@_ZN4LIEF8assembly3x867OperandD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF8assembly3x867OperandD2Ev
@_ZN4LIEF8assembly3x867OperandC1ESt10unique_ptrINS1_7details7OperandESt14default_deleteIS5_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly3x867OperandC2ESt10unique_ptrINS1_7details7OperandESt14default_deleteIS5_EE
@_ZN4LIEF8assembly7aarch647Operand8IteratorC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF8assembly7aarch647Operand8IteratorC2Ev
@_ZN4LIEF8assembly7aarch647Operand8IteratorC1ESt10unique_ptrINS1_7details9OperandItESt14default_deleteIS6_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly7aarch647Operand8IteratorC2ESt10unique_ptrINS1_7details9OperandItESt14default_deleteIS6_EE
@_ZN4LIEF8assembly7aarch647Operand8IteratorC1ERKS3_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly7aarch647Operand8IteratorC2ERKS3_
@_ZN4LIEF8assembly7aarch647Operand8IteratorC1EOS3_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly7aarch647Operand8IteratorC2EOS3_
@_ZN4LIEF8assembly7aarch647Operand8IteratorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF8assembly7aarch647Operand8IteratorD2Ev
@_ZN4LIEF8assembly7aarch647OperandD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF8assembly7aarch647OperandD2Ev
@_ZN4LIEF8assembly7aarch647OperandC1ESt10unique_ptrINS1_7details7OperandESt14default_deleteIS5_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF8assembly7aarch647OperandC2ESt10unique_ptrINS1_7details7OperandESt14default_deleteIS5_EE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF6Binary11disassembleEmm(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.2) #9 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF6Binary11disassembleEm(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.2) #9 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF6Binary11disassembleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.2) #9 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF6Binary11disassembleEPKhmm(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr noundef readnone captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.2) #9 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF6Binary8assembleEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_8assembly15AssemblerConfigE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.46") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, i64 noundef %2, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(32) %3, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(12) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.2) #9 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF6Binary8assembleEmRKN4llvm6MCInstE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.46") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, i64 noundef %2, ptr noundef nonnull readnone align 1 captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.2) #9 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF6Binary8assembleEmRKSt6vectorIN4llvm6MCInstESaIS3_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.46") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, i64 noundef %2, ptr noundef nonnull readnone align 1 captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.2) #9 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noalias noundef ptr @_ZNK4LIEF6Binary10get_engineEm(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noalias noundef ptr @_ZNK4LIEF4COFF6Binary10get_engineEm(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(160) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF4COFF6Binary11disassembleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(160) %1, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.2) #9 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF4COFF6Binary11disassembleERKNS0_6SymbolE(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(160) %1, ptr noundef nonnull readnone align 1 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.2) #9 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF4COFF6Binary11disassembleEPKhmm(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(160) %1, ptr noundef readnone captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.2) #9 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly11Instruction8IteratorC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly11Instruction8IteratorC2ESt10unique_ptrINS0_7details13InstructionItESt14default_deleteIS5_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr readnone captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly11Instruction8IteratorC2ERKS2_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF8assembly11Instruction8IteratoraSERKS2_(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4LIEF8assembly11Instruction8IteratorC2EOS2_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF8assembly11Instruction8IteratoraSEOS2_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4LIEF8assembly7details13InstructionItESt14default_deleteIS3_EEaSEOS6_.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly7details13InstructionItEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN4LIEF8assembly7details13InstructionItEEclEPS3_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #10
  br label %_ZNSt10unique_ptrIN4LIEF8assembly7details13InstructionItESt14default_deleteIS3_EEaSEOS6_.exit

_ZNSt10unique_ptrIN4LIEF8assembly7details13InstructionItESt14default_deleteIS3_EEaSEOS6_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly7details13InstructionItEEclEPS3_.exit.i.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF8assembly11Instruction8IteratorppEv(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF8assembly11Instruction8IteratordeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.51") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assemblyeqERKNS0_11Instruction8IteratorES4_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF8assembly11Instruction8IteratorD2Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF8assembly7details13InstructionItESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly7details13InstructionItEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4LIEF8assembly7details13InstructionItEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #10
  br label %_ZNSt10unique_ptrIN4LIEF8assembly7details13InstructionItESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF8assembly7details13InstructionItESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly7details13InstructionItEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly11InstructionC2ESt10unique_ptrINS0_7details11InstructionESt14default_deleteIS4_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr readnone captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF8assembly11InstructionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly11Instruction6createESt10unique_ptrINS0_7details11InstructionESt14default_deleteIS4_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.51") align 8 captures(none) initializes((0, 8)) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF8assembly11InstructionD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF8assembly11InstructionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF8assembly7details11InstructionESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly7details11InstructionEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4LIEF8assembly7details11InstructionEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #10
  br label %_ZNSt10unique_ptrIN4LIEF8assembly7details11InstructionESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF8assembly7details11InstructionESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly7details11InstructionEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF8assembly11InstructionD0Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF8assembly11InstructionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF8assembly11InstructionD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly7details11InstructionEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF8assembly7details11InstructionEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #10, !inline_history !25
  br label %_ZN4LIEF8assembly11InstructionD2Ev.exit

_ZN4LIEF8assembly11InstructionD2Ev.exit:          ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly7details11InstructionEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #10
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF8assembly11Instruction7addressEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF8assembly11Instruction4sizeEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4LIEF8assembly11Instruction3rawEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK4LIEF8assembly11Instruction3rawEvE5empty acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4LIEF8assembly11Instruction3rawEvE5empty) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK4LIEF8assembly11Instruction3rawEvE5empty, i8 0, i64 24, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIhSaIhEED2Ev, ptr nonnull @_ZZNK4LIEF8assembly11Instruction3rawEvE5empty, ptr nonnull @__dso_handle) #9 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4LIEF8assembly11Instruction3rawEvE5empty) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZNK4LIEF8assembly11Instruction3rawEvE5empty
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #10
  br label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit:             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF8assembly11Instruction8mnemonicB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF8assembly11Instruction9to_stringB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction9is_branchEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction13is_terminatorEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction7is_callEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction10is_syscallEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 1 ptr @_ZNK4LIEF8assembly11Instruction6mcinstEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret ptr @_ZZNK4LIEF8assembly11Instruction6mcinstEvE4FAKE
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction16is_memory_accessEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction11is_move_regEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction6is_addEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction7is_trapEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction10is_barrierEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction9is_returnEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction18is_indirect_branchEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction21is_conditional_branchEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction23is_unconditional_branchEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction10is_compareEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction17is_move_immediateEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4LIEF8assembly11Instruction10is_bitcastEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i8 @_ZNK4LIEF8assembly11Instruction13memory_accessEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, i8 } @_ZNK4LIEF8assembly11Instruction13branch_targetEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret { i64, i8 } { i64 3, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly6EngineC2ESt10unique_ptrINS0_7details6EngineESt14default_deleteIS4_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr readnone captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly6EngineC2EOS1_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF8assembly6EngineaSEOS1_(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly6Engine11disassembleEPKhmm(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1, ptr noundef readnone captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly6Engine8assembleEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_15AssemblerConfigE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.46") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(32) %3, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(12) %4) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly6Engine8assembleEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6BinaryERNS0_15AssemblerConfigE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.46") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(32) %3, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(88) %4, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(12) %5) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF8assembly6EngineD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF8assembly7details6EngineESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly7details6EngineEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4LIEF8assembly7details6EngineEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #10
  br label %_ZNSt10unique_ptrIN4LIEF8assembly7details6EngineESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF8assembly7details6EngineESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly7details6EngineEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF8assembly7aarch6411Instruction6opcodeEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 9000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF8assembly7aarch6411Instruction8operandsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range.76") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly7aarch6411Instruction7classofEPKNS0_11InstructionE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4LIEF8assembly7aarch6417get_register_nameENS1_3REGE(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4LIEF8assembly7aarch6417get_register_nameENS1_6SYSREGE(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF8assembly3x8611Instruction6opcodeEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 22335
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly3x8611Instruction7classofEPKNS0_11InstructionE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4LIEF8assembly3x8617get_register_nameENS1_3REGE(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF8assembly3x8611Instruction8operandsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range.86") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF8assembly3arm11Instruction6opcodeEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 4511
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly3arm11Instruction7classofEPKNS0_11InstructionE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4LIEF8assembly3arm17get_register_nameENS1_3REGE(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF8assembly4mips11Instruction6opcodeEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 2912
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly4mips11Instruction7classofEPKNS0_11InstructionE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4LIEF8assembly4mips17get_register_nameENS1_3REGE(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF8assembly4ebpf11Instruction6opcodeEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 513
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly4ebpf11Instruction7classofEPKNS0_11InstructionE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4LIEF8assembly4ebpf17get_register_nameENS1_3REGE(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF8assembly5riscv11Instruction6opcodeEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 14312
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly5riscv11Instruction7classofEPKNS0_11InstructionE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4LIEF8assembly5riscv17get_register_nameENS1_3REGE(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF8assembly7powerpc11Instruction6opcodeEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 2923
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly7powerpc11Instruction7classofEPKNS0_11InstructionE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4LIEF8assembly7powerpc17get_register_nameENS1_3REGE(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly3x867Operand8IteratorC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly3x867Operand8IteratorC2ESt10unique_ptrINS1_7details9OperandItESt14default_deleteIS6_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr readnone captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly3x867Operand8IteratorC2ERKS3_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF8assembly3x867Operand8IteratoraSERKS3_(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4LIEF8assembly3x867Operand8IteratorC2EOS3_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF8assembly3x867Operand8IteratoraSEOS3_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4LIEF8assembly3x867details9OperandItESt14default_deleteIS4_EEaSEOS7_.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly3x867details9OperandItEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN4LIEF8assembly3x867details9OperandItEEclEPS4_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #10
  br label %_ZNSt10unique_ptrIN4LIEF8assembly3x867details9OperandItESt14default_deleteIS4_EEaSEOS7_.exit

_ZNSt10unique_ptrIN4LIEF8assembly3x867details9OperandItESt14default_deleteIS4_EEaSEOS7_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly3x867details9OperandItEEclEPS4_.exit.i.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF8assembly3x867Operand8IteratorppEv(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF8assembly3x867Operand8IteratordeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.96") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly3x86eqERKNS1_7Operand8IteratorES5_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF8assembly3x867Operand8IteratorD2Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF8assembly3x867details9OperandItESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly3x867details9OperandItEEclEPS4_.exit.i

_ZNKSt14default_deleteIN4LIEF8assembly3x867details9OperandItEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #10
  br label %_ZNSt10unique_ptrIN4LIEF8assembly3x867details9OperandItESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF8assembly3x867details9OperandItESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly3x867details9OperandItEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF8assembly3x867OperandD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF8assembly3x867OperandE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF8assembly3x867details7OperandESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly3x867details7OperandEEclEPS4_.exit.i

_ZNKSt14default_deleteIN4LIEF8assembly3x867details7OperandEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #10
  br label %_ZNSt10unique_ptrIN4LIEF8assembly3x867details7OperandESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF8assembly3x867details7OperandESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly3x867details7OperandEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF8assembly3x867OperandD0Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF8assembly3x867OperandE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF8assembly3x867OperandD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly3x867details7OperandEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN4LIEF8assembly3x867details7OperandEEclEPS4_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #10, !inline_history !36
  br label %_ZN4LIEF8assembly3x867OperandD2Ev.exit

_ZN4LIEF8assembly3x867OperandD2Ev.exit:           ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly3x867details7OperandEEclEPS4_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly3x867OperandC2ESt10unique_ptrINS1_7details7OperandESt14default_deleteIS5_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr readnone captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF8assembly3x867OperandE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF8assembly3x867Operand9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly3x867Operand6createESt10unique_ptrINS1_7details7OperandESt14default_deleteIS5_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.96") align 8 captures(none) initializes((0, 8)) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly3x868operands6Memory7classofEPKNS1_7OperandE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF8assembly3x868operands6Memory4baseEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF8assembly3x868operands6Memory15scaled_registerEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF8assembly3x868operands6Memory16segment_registerEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF8assembly3x868operands6Memory5scaleEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF8assembly3x868operands6Memory12displacementEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly3x868operands10PCRelative7classofEPKNS1_7OperandE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF8assembly3x868operands10PCRelative5valueEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly3x868operands8Register7classofEPKNS1_7OperandE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF8assembly3x868operands8Register5valueEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly3x868operands9Immediate7classofEPKNS1_7OperandE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF8assembly3x868operands9Immediate5valueEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly7aarch647Operand8IteratorC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly7aarch647Operand8IteratorC2ESt10unique_ptrINS1_7details9OperandItESt14default_deleteIS6_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr readnone captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly7aarch647Operand8IteratorC2ERKS3_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF8assembly7aarch647Operand8IteratoraSERKS3_(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4LIEF8assembly7aarch647Operand8IteratorC2EOS3_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF8assembly7aarch647Operand8IteratoraSEOS3_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4LIEF8assembly7aarch647details9OperandItESt14default_deleteIS4_EEaSEOS7_.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly7aarch647details9OperandItEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN4LIEF8assembly7aarch647details9OperandItEEclEPS4_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #10
  br label %_ZNSt10unique_ptrIN4LIEF8assembly7aarch647details9OperandItESt14default_deleteIS4_EEaSEOS7_.exit

_ZNSt10unique_ptrIN4LIEF8assembly7aarch647details9OperandItESt14default_deleteIS4_EEaSEOS7_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly7aarch647details9OperandItEEclEPS4_.exit.i.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF8assembly7aarch647Operand8IteratorppEv(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF8assembly7aarch647Operand8IteratordeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.112") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly7aarch64eqERKNS1_7Operand8IteratorES5_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF8assembly7aarch647Operand8IteratorD2Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF8assembly7aarch647details9OperandItESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly7aarch647details9OperandItEEclEPS4_.exit.i

_ZNKSt14default_deleteIN4LIEF8assembly7aarch647details9OperandItEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #10
  br label %_ZNSt10unique_ptrIN4LIEF8assembly7aarch647details9OperandItESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF8assembly7aarch647details9OperandItESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly7aarch647details9OperandItEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF8assembly7aarch647OperandD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF8assembly7aarch647OperandE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF8assembly7aarch647details7OperandESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly7aarch647details7OperandEEclEPS4_.exit.i

_ZNKSt14default_deleteIN4LIEF8assembly7aarch647details7OperandEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #10
  br label %_ZNSt10unique_ptrIN4LIEF8assembly7aarch647details7OperandESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF8assembly7aarch647details7OperandESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly7aarch647details7OperandEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF8assembly7aarch647OperandD0Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF8assembly7aarch647OperandE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF8assembly7aarch647OperandD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF8assembly7aarch647details7OperandEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN4LIEF8assembly7aarch647details7OperandEEclEPS4_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #10, !inline_history !37
  br label %_ZN4LIEF8assembly7aarch647OperandD2Ev.exit

_ZN4LIEF8assembly7aarch647OperandD2Ev.exit:       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF8assembly7aarch647details7OperandEEclEPS4_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly7aarch647OperandC2ESt10unique_ptrINS1_7details7OperandESt14default_deleteIS5_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr readnone captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF8assembly7aarch647OperandE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF8assembly7aarch647Operand9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF8assembly7aarch647Operand6createESt10unique_ptrINS1_7details7OperandESt14default_deleteIS5_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.112") align 8 captures(none) initializes((0, 8)) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly7aarch648operands6Memory7classofEPKNS1_7OperandE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF8assembly7aarch648operands6Memory4baseEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, i32 } @_ZNK4LIEF8assembly7aarch648operands6Memory6offsetEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret { i64, i32 } zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF8assembly7aarch648operands6Memory5shiftEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 1095216660480
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly7aarch648operands10PCRelative7classofEPKNS1_7OperandE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF8assembly7aarch648operands10PCRelative5valueEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly7aarch648operands8Register7classofEPKNS1_7OperandE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF8assembly7aarch648operands8Register5valueEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF8assembly7aarch648operands9Immediate7classofEPKNS1_7OperandE(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF8assembly7aarch648operands9Immediate5valueEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #7 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav: argument 0"}
!6 = distinct !{!6, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav: argument 0"}
!9 = distinct !{!9, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav: argument 0"}
!12 = distinct !{!12, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav: argument 0"}
!15 = distinct !{!15, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav: argument 0"}
!18 = distinct !{!18, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav: argument 0"}
!21 = distinct !{!21, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav: argument 0"}
!24 = distinct !{!24, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav"}
!25 = !{ptr @_ZN4LIEF8assembly11InstructionD2Ev}
!26 = !{!"branch_weights", i32 1, i32 1048575}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav: argument 0"}
!29 = distinct !{!29, !"_ZN4LIEF19make_empty_iteratorINS_8assembly11InstructionEEEDav"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN4LIEF19make_empty_iteratorINS_8assembly7aarch647OperandEEEDav: argument 0"}
!32 = distinct !{!32, !"_ZN4LIEF19make_empty_iteratorINS_8assembly7aarch647OperandEEEDav"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN4LIEF19make_empty_iteratorINS_8assembly3x867OperandEEEDav: argument 0"}
!35 = distinct !{!35, !"_ZN4LIEF19make_empty_iteratorINS_8assembly3x867OperandEEEDav"}
!36 = !{ptr @_ZN4LIEF8assembly3x867OperandD2Ev}
!37 = !{ptr @_ZN4LIEF8assembly7aarch647OperandD2Ev}
end_hunk_0
