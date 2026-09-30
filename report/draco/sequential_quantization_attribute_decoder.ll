Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_quantization_attribute_decoder?download=true
inline.NumInlined: 113
inline.NumDeleted: 106
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }

$_ZN5draco38SequentialQuantizationAttributeDecoderD2Ev = comdat any

$_ZN5draco38SequentialQuantizationAttributeDecoderD0Ev = comdat any

$_ZNK5draco33SequentialIntegerAttributeDecoder21GetNumValueComponentsEv = comdat any

$_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_ = comdat any

@_ZTVN5draco38SequentialQuantizationAttributeDecoderE = constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN5draco38SequentialQuantizationAttributeDecoderE, ptr @_ZN5draco38SequentialQuantizationAttributeDecoderD2Ev, ptr @_ZN5draco38SequentialQuantizationAttributeDecoderD0Ev, ptr @_ZN5draco38SequentialQuantizationAttributeDecoder4InitEPNS_17PointCloudDecoderEi, ptr @_ZN5draco26SequentialAttributeDecoder20InitializeStandaloneEPNS_14PointAttributeE, ptr @_ZN5draco26SequentialAttributeDecoder23DecodePortableAttributeERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EEPNS_13DecoderBufferE, ptr @_ZN5draco38SequentialQuantizationAttributeDecoder35DecodeDataNeededByPortableTransformERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EEPNS_13DecoderBufferE, ptr @_ZN5draco33SequentialIntegerAttributeDecoder34TransformAttributeToOriginalFormatERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EE, ptr @_ZN5draco26SequentialAttributeDecoder20InitPredictionSchemeEPNS_25PredictionSchemeInterfaceE, ptr @_ZN5draco33SequentialIntegerAttributeDecoder12DecodeValuesERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EEPNS_13DecoderBufferE, ptr @_ZN5draco38SequentialQuantizationAttributeDecoder19DecodeIntegerValuesERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EEPNS_13DecoderBufferE, ptr @_ZN5draco33SequentialIntegerAttributeDecoder25CreateIntPredictionSchemeENS_22PredictionSchemeMethodENS_29PredictionSchemeTransformTypeE, ptr @_ZNK5draco33SequentialIntegerAttributeDecoder21GetNumValueComponentsEv, ptr @_ZN5draco38SequentialQuantizationAttributeDecoder11StoreValuesEj, ptr @_ZN5draco38SequentialQuantizationAttributeDecoder23DecodeQuantizedDataInfoEv, ptr @_ZN5draco38SequentialQuantizationAttributeDecoder16DequantizeValuesEj] }, align 8
@_ZTIN5draco38SequentialQuantizationAttributeDecoderE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5draco38SequentialQuantizationAttributeDecoderE, ptr @_ZTIN5draco33SequentialIntegerAttributeDecoderE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5draco38SequentialQuantizationAttributeDecoderE = constant [49 x i8] c"N5draco38SequentialQuantizationAttributeDecoderE\00", align 1
@_ZTIN5draco33SequentialIntegerAttributeDecoderE = external constant ptr
@_ZTVN5draco30AttributeQuantizationTransformE = external constant { [14 x ptr] }, align 8
@_ZTVN5draco33SequentialIntegerAttributeDecoderE = external constant { [15 x ptr] }, align 8
@_ZTVN5draco26SequentialAttributeDecoderE = external constant { [11 x ptr] }, align 8

@_ZN5draco38SequentialQuantizationAttributeDecoderC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5draco38SequentialQuantizationAttributeDecoderC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5draco38SequentialQuantizationAttributeDecoderC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5draco33SequentialIntegerAttributeDecoderC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN5draco38SequentialQuantizationAttributeDecoderE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco30AttributeQuantizationTransformE, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 -1, ptr %i.b, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.c, i8 0, i64 28, i1 false)
  ret void
}

declare void @_ZN5draco33SequentialIntegerAttributeDecoderC2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco38SequentialQuantizationAttributeDecoder4InitEPNS_17PointCloudDecoderEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5draco33SequentialIntegerAttributeDecoder4InitEPNS_17PointCloudDecoderEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = sext i32 %2 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !62
  %.not = icmp eq i32 %i.j, 9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i1 [ %.not, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN5draco33SequentialIntegerAttributeDecoder4InitEPNS_17PointCloudDecoderEi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco38SequentialQuantizationAttributeDecoder19DecodeIntegerValuesERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %3 = load i8, ptr %i.c, align 8, !tbaa !45
  %4 = icmp ult i8 %3, 2
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(96) %0)
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN5draco33SequentialIntegerAttributeDecoder19DecodeIntegerValuesERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 %1, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ %i.h, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN5draco33SequentialIntegerAttributeDecoder19DecodeIntegerValuesERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco38SequentialQuantizationAttributeDecoder35DecodeDataNeededByPortableTransformERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree nonnull readnone align 1 captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %3 = load i8, ptr %i.c, align 8, !tbaa !45
  %4 = icmp ugt i8 %3, 1
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(96) %0)
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call noundef zeroext i1 @_ZNK5draco18AttributeTransform19TransferToAttributeEPNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ %i.k, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK5draco18AttributeTransform19TransferToAttributeEPNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco38SequentialQuantizationAttributeDecoder11StoreValuesEj(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco38SequentialQuantizationAttributeDecoder23DecodeQuantizedDataInfoEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5draco26SequentialAttributeDecoder20GetPortableAttributeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = tail call noundef zeroext i1 @_ZN5draco30AttributeQuantizationTransform16DecodeParametersERKNS_14PointAttributeEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(44) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %.0, ptr noundef %i.i)
  ret i1 %i.j
}

declare noundef ptr @_ZN5draco26SequentialAttributeDecoder20GetPortableAttributeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5draco30AttributeQuantizationTransform16DecodeParametersERKNS_14PointAttributeEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco38SequentialQuantizationAttributeDecoder16DequantizeValuesEj(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call noundef ptr @_ZN5draco26SequentialAttributeDecoder20GetPortableAttributeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = tail call noundef zeroext i1 @_ZN5draco30AttributeQuantizationTransform25InverseTransformAttributeERKNS_14PointAttributeEPS1_(ptr noundef nonnull align 8 dereferenceable(44) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef %i.d)
  ret i1 %i.e
}

declare noundef zeroext i1 @_ZN5draco30AttributeQuantizationTransform25InverseTransformAttributeERKNS_14PointAttributeEPS1_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco38SequentialQuantizationAttributeDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN5draco38SequentialQuantizationAttributeDecoderE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco30AttributeQuantizationTransformE, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5draco30AttributeQuantizationTransformD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #6
  br label %_ZN5draco30AttributeQuantizationTransformD2Ev.exit

_ZN5draco30AttributeQuantizationTransformD2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5draco33SequentialIntegerAttributeDecoderE, i64 16), ptr %0, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEEEclEPS2_.exit.i.i: ; preds = %_ZN5draco30AttributeQuantizationTransformD2Ev.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #7, !inline_history !64
  br label %_ZNSt10unique_ptrIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEEEclEPS2_.exit.i.i, %_ZN5draco30AttributeQuantizationTransformD2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5draco26SequentialAttributeDecoderE, i64 16), ptr %0, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN5draco33SequentialIntegerAttributeDecoderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEESt14default_deleteIS2_EED2Ev.exit.i
  tail call void @_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.o)
  br label %_ZN5draco33SequentialIntegerAttributeDecoderD2Ev.exit

_ZN5draco33SequentialIntegerAttributeDecoderD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEESt14default_deleteIS2_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco38SequentialQuantizationAttributeDecoderD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN5draco38SequentialQuantizationAttributeDecoderE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco30AttributeQuantizationTransformE, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco30AttributeQuantizationTransformD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #6, !inline_history !66
  br label %_ZN5draco30AttributeQuantizationTransformD2Ev.exit.i

_ZN5draco30AttributeQuantizationTransformD2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5draco33SequentialIntegerAttributeDecoderE, i64 16), ptr %0, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEESt14default_deleteIS2_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEEEclEPS2_.exit.i.i.i: ; preds = %_ZN5draco30AttributeQuantizationTransformD2Ev.exit.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #7, !inline_history !65
  br label %_ZNSt10unique_ptrIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEEEclEPS2_.exit.i.i.i, %_ZN5draco30AttributeQuantizationTransformD2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5draco26SequentialAttributeDecoderE, i64 16), ptr %0, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5draco38SequentialQuantizationAttributeDecoderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEESt14default_deleteIS2_EED2Ev.exit.i.i
  tail call void @_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.o), !inline_history !66
  br label %_ZN5draco38SequentialQuantizationAttributeDecoderD2Ev.exit

_ZN5draco38SequentialQuantizationAttributeDecoderD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5draco37PredictionSchemeTypedDecoderInterfaceIiiEESt14default_deleteIS2_EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #6
  ret void
}

declare noundef zeroext i1 @_ZN5draco26SequentialAttributeDecoder20InitializeStandaloneEPNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN5draco26SequentialAttributeDecoder23DecodePortableAttributeERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN5draco33SequentialIntegerAttributeDecoder34TransformAttributeToOriginalFormatERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN5draco26SequentialAttributeDecoder20InitPredictionSchemeEPNS_25PredictionSchemeInterfaceE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN5draco33SequentialIntegerAttributeDecoder12DecodeValuesERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

declare void @_ZN5draco33SequentialIntegerAttributeDecoder25CreateIntPredictionSchemeENS_22PredictionSchemeMethodENS_29PredictionSchemeTransformTypeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8, ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5draco33SequentialIntegerAttributeDecoder21GetNumValueComponentsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !67
  %i.e = zext i8 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #6
  br label %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 48) #6
  br label %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #6
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78   ; 4 uses
  %.not.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i1.i, label %_ZN5draco14PointAttributeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #6
  br label %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 40) #6
  br label %_ZN5draco14PointAttributeD2Ev.exit

_ZN5draco14PointAttributeD2Ev.exit:               ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i, %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 112) #6
  br label %bb.h

bb.h:                                             ; preds = %_ZN5draco14PointAttributeD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { builtin nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 float", !10, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!"p1 _ZTSN5draco10PointCloudE", !10, i64 0}
!14 = !{!"p1 _ZTSSt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS1_EE", !10, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !15, i64 0}
!17 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE", !16, i64 0}
!18 = !{!"_ZTSSt6vectorISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE", !17, i64 0}
!19 = !{!"p1 int", !10, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !20, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !21, i64 0}
!23 = !{!"_ZTSSt6vectorIiSaIiEE", !22, i64 0}
!24 = !{!"p1 _ZTSN5draco13DecoderBufferE", !10, i64 0}
!25 = !{!"p1 _ZTSN5draco12DracoOptionsINS_17GeometryAttribute4TypeEEE", !10, i64 0}
!26 = !{!"_ZTSN5draco17PointCloudDecoderE", !13, i64 8, !18, i64 16, !23, i64 40, !24, i64 64, !4, i64 72, !4, i64 73, !25, i64 80}
!27 = !{!"p1 _ZTSN5draco14PointAttributeE", !10, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 _ZTSN5draco10DataBufferE", !10, i64 0}
!30 = !{!"long", !4, i64 0}
!31 = !{!"_ZTSN5draco20DataBufferDescriptorE", !30, i64 0, !30, i64 8}
!32 = !{!"_ZTSN5draco8DataTypeE", !4, i64 0}
!33 = !{!"bool", !4, i64 0}
!34 = !{!"_ZTSN5draco17GeometryAttribute4TypeE", !4, i64 0}
!35 = !{!"_ZTSN5draco17GeometryAttributeE", !29, i64 0, !31, i64 8, !4, i64 24, !32, i64 28, !33, i64 32, !30, i64 40, !30, i64 48, !34, i64 56, !5, i64 60}
!36 = !{!"p1 _ZTSN5draco17PointCloudDecoderE", !10, i64 0}
!37 = !{!"_ZTSSt10_Head_baseILm0EPN5draco14PointAttributeELb0EE", !27, i64 0}
!38 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !37, i64 0}
!39 = !{!"_ZTSSt5tupleIJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !38, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_implIN5draco14PointAttributeESt14default_deleteIS1_EE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco14PointAttributeESt14default_deleteIS1_ELb1ELb1EE", !40, i64 0}
!42 = !{!"_ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !41, i64 0}
!43 = !{!"_ZTSN5draco26SequentialAttributeDecoderE", !36, i64 8, !27, i64 16, !5, i64 24, !42, i64 32}
!44 = !{!43, !36, i64 8}
!45 = !{!26, !4, i64 72}
!46 = !{!43, !27, i64 16}
!47 = !{!12, !11, i64 0}
!48 = !{!12, !11, i64 16}
!49 = !{!"p1 _ZTSN5draco37PredictionSchemeTypedDecoderInterfaceIiiEE", !10, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"_ZTSN5draco18AttributeTransformE"}
!52 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !12, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIfSaIfEE", !53, i64 0}
!55 = !{!"float", !4, i64 0}
!56 = !{!"_ZTSN5draco30AttributeQuantizationTransformE", !51, i64 0, !5, i64 8, !54, i64 16, !55, i64 40}
!57 = !{!56, !5, i64 8}
!58 = !{!26, !13, i64 8}
!59 = !{!"p1 _ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !10, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!60, !59, i64 0}
!62 = !{!35, !32, i64 28}
!63 = !{!26, !24, i64 64}
!64 = distinct !{null, null, null}
!65 = distinct !{ptr @_ZN5draco38SequentialQuantizationAttributeDecoderD2Ev, null, null, null}
!66 = !{ptr @_ZN5draco38SequentialQuantizationAttributeDecoderD2Ev}
!67 = !{!35, !4, i64 24}
!68 = !{!"p1 _ZTSN5draco22AttributeTransformDataE", !10, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"p1 omnipotent char", !10, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!71, !70, i64 0}
!73 = !{!71, !70, i64 16}
!74 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !10, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 0}
!77 = !{!75, !74, i64 16}
!78 = !{!29, !29, i64 0}
end_hunk_0
