Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/einsum?download=true
inline.NumInlined: 330
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.ncnn::Mat" = type { ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4ncnn6EinsumD2Ev = comdat any

$_ZN4ncnn6EinsumD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

@_ZTVN4ncnn6EinsumE = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn6EinsumE, ptr @_ZN4ncnn6EinsumD2Ev, ptr @_ZN4ncnn6EinsumD0Ev, ptr @_ZN4ncnn6Einsum10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn6Einsum7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn6EinsumE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn6EinsumE, ptr @_ZTIN4ncnn5LayerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn6EinsumE = hidden constant [15 x i8] c"N4ncnn6EinsumE\00", align 1
@_ZTIN4ncnn5LayerE = external constant ptr
@.str = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid equation %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"invalid rhs_token %s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"invalid lhs_token %s\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN4ncnn6EinsumC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn6EinsumC2Ev

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn6EinsumD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn6EinsumE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !18
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn6EinsumD0Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn6EinsumE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20, !inline_history !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !18
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #20, !inline_history !50
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN4ncnn6EinsumD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #20, !inline_history !50
  br label %_ZN4ncnn6EinsumD2Ev.exit

_ZN4ncnn6EinsumD2Ev.exit:                         ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(264) %0) #21, !inline_history !50
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 264) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 1) i32 @_ZN4ncnn6Einsum10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %3 = alloca %"class.ncnn::Mat", align 8         ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 0, ptr %i.e, align 8, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  invoke void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit80, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit80

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  %.not3.i = icmp eq ptr %i.i, null
  %i.j = load ptr, ptr %3, align 8, !tbaa !29     ; 3 uses
  br i1 %.not3.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j)
          to label %_ZN4ncnn3MatD2Ev.exit80 unwind label %bb.h, !inline_history !51

bb.f:                                             ; preds = %bb.d
  %.not.i98 = icmp eq ptr %i.j, null
  br i1 %.not.i98, label %_ZN4ncnn3MatD2Ev.exit80, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.j) #21
  br label %_ZN4ncnn3MatD2Ev.exit80

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit80:                          ; preds = %bb.c, %bb.b, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !31
end_hunk_0
begin_hunk_1_@_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE
declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn6Einsum7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %5 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = icmp eq ptr %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 2
  %or.cond = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread336

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = load i16, ptr %i.m, align 1
  %i.o = icmp ne i16 %i.n, 26985
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread336

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !39     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !90
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i32 noundef 1, i64 noundef %i.c, ptr noundef %i.t)
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNK4ncnn3Mat5emptyEv.exit268.thread, label %_ZNK4ncnn3Mat5emptyEv.exit268

_ZNK4ncnn3Mat5emptyEv.exit268:                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !91
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul i64 %i.x, %i.aa
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNK4ncnn3Mat5emptyEv.exit268.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit268
  %i.ad = load ptr, ptr %1, align 8, !tbaa !39    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !42 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph407, label %._crit_edge408

.lr.ph407:                                        ; preds = %bb.b
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !29 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !30
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !40
  %factor.op.mul = mul i64 %i.am, %i.ak           ; 9 uses
  %wide.trip.count580 = zext nneg i32 %i.af to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.af, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph407
  %n.vec = and i64 %wide.trip.count580, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %vec.phi690 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.cj, %vector.body ]
  %i.an = or disjoint i64 %index, 1               ; 2 uses
  %i.ao = or disjoint i64 %index, 2               ; 2 uses
  %i.ap = or disjoint i64 %index, 3               ; 2 uses
  %i.aq = or disjoint i64 %index, 4               ; 2 uses
  %i.ar = or disjoint i64 %index, 5               ; 2 uses
  %i.as = or disjoint i64 %index, 6               ; 2 uses
  %i.at = or disjoint i64 %index, 7               ; 2 uses
  %i.au = mul i64 %factor.op.mul, %index
  %i.av = mul i64 %factor.op.mul, %i.an
  %i.aw = mul i64 %factor.op.mul, %i.ao
  %i.ax = mul i64 %factor.op.mul, %i.ap
  %i.ay = mul i64 %factor.op.mul, %i.aq
  %i.az = mul i64 %factor.op.mul, %i.ar
  %i.ba = mul i64 %factor.op.mul, %i.as
  %i.bb = mul i64 %factor.op.mul, %i.at
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.au
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.av
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aw
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ax
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ay
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.az
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bb
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.an
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ao
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ap
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.aq
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ar
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.as
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.at
  %i.bs = load float, ptr %i.bk, align 4, !tbaa !44
  %i.bt = load float, ptr %i.bl, align 4, !tbaa !44
  %i.bu = load float, ptr %i.bm, align 4, !tbaa !44
  %i.bv = load float, ptr %i.bn, align 4, !tbaa !44
  %i.bw = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3
  %i.ca = load float, ptr %i.bo, align 4, !tbaa !44
  %i.cb = load float, ptr %i.bp, align 4, !tbaa !44
  %i.cc = load float, ptr %i.bq, align 4, !tbaa !44
  %i.cd = load float, ptr %i.br, align 4, !tbaa !44
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = fadd fast <4 x float> %i.bz, %vec.phi   ; 2 uses
  %i.cj = fadd fast <4 x float> %i.ch, %vec.phi690 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.cj, %i.ci
  %i.cl = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count580
  br i1 %cmp.n, label %._crit_edge408, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph407, %middle.block
  %indvars.iv577.ph = phi i64 [ 0, %.lr.ph407 ], [ %n.vec, %middle.block ]
  %.0217404.ph = phi float [ 0.000000e+00, %.lr.ph407 ], [ %i.cl, %middle.block ]
  br label %scalar.ph

._crit_edge408:                                   ; preds = %scalar.ph, %middle.block, %bb.b
  %.0217.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %i.cl, %middle.block ], [ %i.cp, %scalar.ph ]
  store float %.0217.lcssa, ptr %i.u, align 4, !tbaa !44
  br label %_ZNK4ncnn3Mat5emptyEv.exit268.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv577 = phi i64 [ %indvars.iv.next578, %scalar.ph ], [ %indvars.iv577.ph, %scalar.ph.preheader ] ; 3 uses
  %.0217404 = phi float [ %i.cp, %scalar.ph ], [ %.0217404.ph, %scalar.ph.preheader ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv577
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.reass
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv577
  %i.co = load float, ptr %i.cn, align 4, !tbaa !44
  %i.cp = fadd fast float %i.co, %.0217404        ; 2 uses
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 2 uses
  %exitcond581.not = icmp eq i64 %indvars.iv.next578, %wide.trip.count580
  br i1 %exitcond581.not, label %._crit_edge408, label %scalar.ph, !llvm.loop !70

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread336: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.cq = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25 ; 33 uses
  store ptr %i.cq, ptr %4, align 8, !tbaa !46
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !92
  store <4 x i32> splat (i32 1), ptr %i.cq, align 4, !tbaa !33
  %.06.i.i.i.i.i.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x i32> splat (i32 1), ptr %.06.i.i.i.i.i.i.i.i.i.ptr.4, align 4, !tbaa !33
  %.06.i.i.i.i.i.i.i.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store <4 x i32> splat (i32 1), ptr %.06.i.i.i.i.i.i.i.i.i.ptr.8, align 4, !tbaa !33
  %.06.i.i.i.i.i.i.i.i.i.ptr.12 = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store <4 x i32> splat (i32 1), ptr %.06.i.i.i.i.i.i.i.i.i.ptr.12, align 4, !tbaa !33
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !47
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !48 ; 2 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !39    ; 3 uses
  %.not410 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not410, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread672, label %.lr.ph370

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread672: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread336
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !47
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.cz = trunc i64 %i.cy to i32
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i

.lr.ph370:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread336
  %i.da = ptrtoint ptr %i.cv to i64
  %i.db = ptrtoint ptr %i.cw to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 72
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !21
  br label %bb.d

._crit_edge371:                                   ; preds = %._crit_edge
  %i.df = zext nneg i32 %.1.lcssa to i64          ; 6 uses
  %i.dg = icmp ugt i32 %.1.lcssa, 16
  br i1 %i.dg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, label %bb.c

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %._crit_edge371
  %i.dh = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25
          to label %.noexc284 unwind label %bb.m  ; 7 uses

.noexc284:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  store i32 0, ptr %i.di, align 4, !tbaa !33
  %i.dj = add nsw i64 %i.df, -17                  ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc284
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 68
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.dj, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dl, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !33
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread

bb.c:                                             ; preds = %._crit_edge371
  %.not = icmp eq i32 %.1.lcssa, 16
  br i1 %.not, label %.sink.split, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %.lr.ph370, %._crit_edge
  %.0194368 = phi i64 [ 0, %.lr.ph370 ], [ %i.if, %._crit_edge ] ; 3 uses
  %.0335367 = phi i32 [ 0, %.lr.ph370 ], [ %.1.lcssa, %._crit_edge ] ; 6 uses
  %i.dm = getelementptr inbounds nuw [72 x i8], ptr %i.cw, i64 %.0194368 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !49 ; 4 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %.0194368
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 48 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 44 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 56 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 52
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !17 ; 19 uses
  switch i32 %i.do, label %.lr.ph.split.peel.next459 [
    i32 1, label %._crit_edge.loopexit
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %.thread661
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.dw = load i32, ptr %i.dr, align 8, !tbaa !42
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !18  ; 2 uses
  %i.dy = sext i8 %i.dx to i32
  %i.dz = sext i8 %i.dx to i64
  %i.ea = getelementptr [4 x i8], ptr %i.cq, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 -420
  store i32 %i.dw, ptr %i.eb, align 4, !tbaa !33
  %i.ec = add nsw i32 %i.dy, -104
  %.sroa.speculated.peel610 = tail call i32 @llvm.smax.i32(i32 %.0335367, i32 %i.ec)
  %i.ed = load i32, ptr %i.ds, align 4, !tbaa !30
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !18  ; 2 uses
  %i.eg = sext i8 %i.ef to i32
  %i.eh = sext i8 %i.ef to i64
  %i.ei = getelementptr [4 x i8], ptr %i.cq, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -420
  store i32 %i.ed, ptr %i.ej, align 4, !tbaa !33
  %i.ek = add nsw i32 %i.eg, -104
  %.sroa.speculated.peel433 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel610, i32 %i.ek)
  br label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  %i.el = load i32, ptr %i.dt, align 8, !tbaa !91
  %i.em = load i8, ptr %i.dv, align 1, !tbaa !18  ; 2 uses
  %i.en = sext i8 %i.em to i32
  %i.eo = sext i8 %i.em to i64
  %i.ep = getelementptr [4 x i8], ptr %i.cq, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -420
  store i32 %i.el, ptr %i.eq, align 4, !tbaa !33
  %i.er = add nsw i32 %i.en, -104
  %.sroa.speculated.peel = tail call i32 @llvm.smax.i32(i32 %.0335367, i32 %i.er)
  %i.es = load i32, ptr %i.dr, align 8, !tbaa !42
  %i.et = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !18  ; 2 uses
  %i.ev = sext i8 %i.eu to i32
  %i.ew = sext i8 %i.eu to i64
  %i.ex = getelementptr [4 x i8], ptr %i.cq, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 -420
  store i32 %i.es, ptr %i.ey, align 4, !tbaa !33
  %i.ez = add nsw i32 %i.ev, -104
  %.sroa.speculated.peel433628 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel, i32 %i.ez)
  %i.fa = load i32, ptr %i.ds, align 4, !tbaa !30
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !18  ; 2 uses
  %i.fd = sext i8 %i.fc to i32
  %i.fe = sext i8 %i.fc to i64
  %i.ff = getelementptr [4 x i8], ptr %i.cq, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 -420
  store i32 %i.fa, ptr %i.fg, align 4, !tbaa !33
  %i.fh = add nsw i32 %i.fd, -104
  %.sroa.speculated.peel456 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel433628, i32 %i.fh)
  br label %._crit_edge

.thread661:                                       ; preds = %.lr.ph
  %i.fi = load i32, ptr %i.dt, align 8, !tbaa !91
  %i.fj = load i8, ptr %i.dv, align 1, !tbaa !18  ; 2 uses
  %i.fk = sext i8 %i.fj to i32
  %i.fl = sext i8 %i.fj to i64
  %i.fm = getelementptr [4 x i8], ptr %i.cq, i64 %i.fl
  %i.fn = getelementptr i8, ptr %i.fm, i64 -420
  store i32 %i.fi, ptr %i.fn, align 4, !tbaa !33
  %i.fo = add nsw i32 %i.fk, -104
  %.sroa.speculated.peel605623 = tail call i32 @llvm.smax.i32(i32 %.0335367, i32 %i.fo)
  %i.fp = load i32, ptr %i.du, align 4, !tbaa !93
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !18  ; 2 uses
  %i.fs = sext i8 %i.fr to i32
  %i.ft = sext i8 %i.fr to i64
  %i.fu = getelementptr [4 x i8], ptr %i.cq, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 -420
  store i32 %i.fp, ptr %i.fv, align 4, !tbaa !33
  %i.fw = add nsw i32 %i.fs, -104
  %.sroa.speculated.peel433628635646 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel605623, i32 %i.fw)
  %i.fx = load i32, ptr %i.dr, align 8, !tbaa !42
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !18  ; 2 uses
  %i.ga = sext i8 %i.fz to i32
  %i.gb = sext i8 %i.fz to i64
  %i.gc = getelementptr [4 x i8], ptr %i.cq, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 -420
  store i32 %i.fx, ptr %i.gd, align 4, !tbaa !33
  %i.ge = add nsw i32 %i.ga, -104
  %.sroa.speculated.peel456652658 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel433628635646, i32 %i.ge)
  %i.gf = load i32, ptr %i.ds, align 4, !tbaa !30
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !18  ; 2 uses
  %i.gi = sext i8 %i.gh to i32
  %i.gj = sext i8 %i.gh to i64
  %i.gk = getelementptr [4 x i8], ptr %i.cq, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.gk, i64 -420
  store i32 %i.gf, ptr %i.gl, align 4, !tbaa !33
  %i.gm = add nsw i32 %i.gi, -104
  %.sroa.speculated.peel479664 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel456652658, i32 %i.gm)
  br label %._crit_edge

.lr.ph.split.peel.next459:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.do to i64   ; 2 uses
  %i.gn = load i8, ptr %i.dv, align 1, !tbaa !18  ; 2 uses
  %i.go = sext i8 %i.gn to i32
  %i.gp = sext i8 %i.gn to i64
  %i.gq = getelementptr [4 x i8], ptr %i.cq, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.gq, i64 -420
  store i32 1, ptr %i.gr, align 4, !tbaa !33
  %i.gs = add nsw i32 %i.go, -104
  %.sroa.speculated.peel605 = tail call i32 @llvm.smax.i32(i32 %.0335367, i32 %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !18  ; 2 uses
  %i.gv = sext i8 %i.gu to i32
  %i.gw = sext i8 %i.gu to i64
  %i.gx = getelementptr [4 x i8], ptr %i.cq, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 -420
  store i32 1, ptr %i.gy, align 4, !tbaa !33
  %i.gz = add nsw i32 %i.gv, -104
  %.sroa.speculated.peel433628635 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel605, i32 %i.gz)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !18  ; 2 uses
  %i.hc = sext i8 %i.hb to i32
  %i.hd = sext i8 %i.hb to i64
  %i.he = getelementptr [4 x i8], ptr %i.cq, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 -420
  store i32 1, ptr %i.hf, align 4, !tbaa !33
  %i.hg = add nsw i32 %i.hc, -104
  %.sroa.speculated.peel456652 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel433628635, i32 %i.hg)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !18  ; 2 uses
  %i.hj = sext i8 %i.hi to i32
  %i.hk = sext i8 %i.hi to i64
  %i.hl = getelementptr [4 x i8], ptr %i.cq, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -420
  store i32 1, ptr %i.hm, align 4, !tbaa !33
  %i.hn = add nsw i32 %i.hj, -104
  %.sroa.speculated.peel479 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel456652, i32 %i.hn) ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ho = add nsw i32 %i.do, -5
  %i.hp = icmp ult i32 %i.ho, 3
  br i1 %i.hp, label %.epil.preheader, label %.lr.ph.split.peel.next459.new

.lr.ph.split.peel.next459.new:                    ; preds = %.lr.ph.split.peel.next459
  %i.hq = and i64 %wide.trip.count, 2147483644
  %i.hr = add nsw i64 %i.hq, -8
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.3186.us.peel = load i32, ptr %i.ds, align 4, !tbaa !33
  %i.hs = load i8, ptr %i.dv, align 1, !tbaa !18  ; 2 uses
  %i.ht = sext i8 %i.hs to i64
  %i.hu = getelementptr [4 x i8], ptr %i.cq, i64 %i.ht
  %i.hv = getelementptr i8, ptr %i.hu, i64 -420
  store i32 %.3186.us.peel, ptr %i.hv, align 4, !tbaa !33
  %i.hw = sext i8 %i.hs to i32
  %i.hx = add nsw i32 %i.hw, -104
  %.sroa.speculated.us.peel = tail call i32 @llvm.smax.i32(i32 %.0335367, i32 %i.hx)
  br label %._crit_edge

._crit_edge.loopexit695.unr-lcssa:                ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit695.unr-lcssa, %.lr.ph.split.peel.next459
  %indvars.iv.epil.init = phi i64 [ 4, %.lr.ph.split.peel.next459 ], [ %indvars.iv.next.3, %._crit_edge.loopexit695.unr-lcssa ]
  %.1365.epil.init = phi i32 [ %.sroa.speculated.peel479, %.lr.ph.split.peel.next459 ], [ %.sroa.speculated.3, %._crit_edge.loopexit695.unr-lcssa ]
  %lcmp.mod697 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod697)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.g ] ; 2 uses
  %.1365.epil = phi i32 [ %.1365.epil.init, %.epil.preheader ], [ %.sroa.speculated.epil, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.epil
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !18  ; 2 uses
  %i.ia = sext i8 %i.hz to i32
  %i.ib = sext i8 %i.hz to i64
  %i.ic = getelementptr [4 x i8], ptr %i.cq, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 -420
  store i32 1, ptr %i.id, align 4, !tbaa !33
  %i.ie = add nsw i32 %i.ia, -104
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %.1365.epil, i32 %i.ie) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.g, !llvm.loop !71

._crit_edge:                                      ; preds = %._crit_edge.loopexit695.unr-lcssa, %bb.g, %bb.e, %bb.f, %.thread661, %._crit_edge.loopexit, %bb.d
  %.1.lcssa = phi i32 [ %.0335367, %bb.d ], [ %.sroa.speculated.us.peel, %._crit_edge.loopexit ], [ %.sroa.speculated.peel479664, %.thread661 ], [ %.sroa.speculated.peel456, %bb.f ], [ %.sroa.speculated.peel433, %bb.e ], [ %.sroa.speculated.3, %._crit_edge.loopexit695.unr-lcssa ], [ %.sroa.speculated.epil, %bb.g ] ; 5 uses
  %i.if = add nuw i64 %.0194368, 1                ; 2 uses
  %exitcond546.not = icmp eq i64 %i.if, %i.dd
  br i1 %exitcond546.not, label %._crit_edge371, label %bb.d, !llvm.loop !72

bb.h:                                             ; preds = %bb.h, %.lr.ph.split.peel.next459.new
  %indvars.iv = phi i64 [ 4, %.lr.ph.split.peel.next459.new ], [ %indvars.iv.next.3, %bb.h ] ; 5 uses
  %.1365 = phi i32 [ %.sroa.speculated.peel479, %.lr.ph.split.peel.next459.new ], [ %.sroa.speculated.3, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.split.peel.next459.new ], [ %niter.next.3, %bb.h ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !18  ; 2 uses
  %i.ii = sext i8 %i.ih to i32
  %i.ij = sext i8 %i.ih to i64
  %i.ik = getelementptr [4 x i8], ptr %i.cq, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 -420
  store i32 1, ptr %i.il, align 4, !tbaa !33
  %i.im = add nsw i32 %i.ii, -104
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.1365, i32 %i.im)
  %i.in = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !18  ; 2 uses
  %i.iq = sext i8 %i.ip to i32
  %i.ir = sext i8 %i.ip to i64
  %i.is = getelementptr [4 x i8], ptr %i.cq, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.is, i64 -420
  store i32 1, ptr %i.it, align 4, !tbaa !33
  %i.iu = add nsw i32 %i.iq, -104
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.iu)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !18  ; 2 uses
  %i.iy = sext i8 %i.ix to i32
  %i.iz = sext i8 %i.ix to i64
  %i.ja = getelementptr [4 x i8], ptr %i.cq, i64 %i.iz
  %i.jb = getelementptr i8, ptr %i.ja, i64 -420
  store i32 1, ptr %i.jb, align 4, !tbaa !33
  %i.jc = add nsw i32 %i.iy, -104
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 %i.jc)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 3
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !18  ; 2 uses
  %i.jg = sext i8 %i.jf to i32
  %i.jh = sext i8 %i.jf to i64
  %i.ji = getelementptr [4 x i8], ptr %i.cq, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 -420
  store i32 1, ptr %i.jj, align 4, !tbaa !33
  %i.jk = add nsw i32 %i.jg, -104
  %.sroa.speculated.3 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.2, i32 %i.jk) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter, %i.hr
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit695.unr-lcssa, label %bb.h, !llvm.loop !73

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc284
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.dh, ptr noundef nonnull align 4 dereferenceable(64) %i.cq, i64 64, i1 false)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 64) #20
  store ptr %i.dh, ptr %4, align 8, !tbaa !46
  %6 = getelementptr [4 x i8], ptr %i.dh, i64 %i.df
  store ptr %6, ptr %i.ct, align 8, !tbaa !47
  %7 = getelementptr inbounds nuw i8, ptr %i.dh, i64 128 ; 2 uses
  store ptr %7, ptr %i.cs, align 8, !tbaa !92
  br label %.sink.split

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %.idx = shl nuw nsw i64 %i.df, 2
  %i.jl = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx
  store ptr %i.jl, ptr %i.ct, align 8, !tbaa !47
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.jo = trunc i64 %i.jn to i32                  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %bb.i

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread672, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.jp = phi i32 [ %i.cz, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread672 ], [ %i.jo, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %bb.j

.sink.split:                                      ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.jq = phi ptr [ %7, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread ], [ %i.cr, %bb.c ]
  %.ph685 = phi ptr [ %i.dh, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread ], [ %i.cq, %bb.c ]
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.jt = trunc i64 %i.js to i32
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ju = phi ptr [ %i.cr, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.jq, %.sink.split ] ; 3 uses
  %i.jv = phi i32 [ %i.jo, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.jt, %.sink.split ] ; 2 uses
  %i.jw = phi ptr [ %i.cq, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.ph685, %.sink.split ] ; 3 uses
  %i.jx = shl nuw nsw i64 %i.df, 2
  %i.jy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jx) #25
          to label %.noexc275 unwind label %bb.n  ; 6 uses

.noexc275:                                        ; preds = %bb.i
  store ptr %i.jy, ptr %5, align 8, !tbaa !46
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.df ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !92
  store i32 0, ptr %i.jy, align 4, !tbaa !33
  %i.kb = getelementptr i8, ptr %i.jy, i64 4      ; 3 uses
  %i.kc = add nsw i64 %i.df, -1                   ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %bb.j, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc275
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.kc, 2  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kb, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !33
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc275, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %i.kf = phi ptr [ %i.cr, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.ju, %.noexc275 ], [ %i.ju, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %i.kg = phi i32 [ %i.jp, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.jv, %.noexc275 ], [ %i.jv, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %i.kh = phi ptr [ %i.cq, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.jw, %.noexc275 ], [ %i.jw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 14 uses
  %i.ki = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.jz, %.noexc275 ], [ %i.jz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.kj = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.jy, %.noexc275 ], [ %i.jy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 16 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.kb, %.noexc275 ], [ %i.ke, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.kk, align 8, !tbaa !47
  switch i32 %i.kg, label %.critedge [
    i32 1, label %bb.k
    i32 2, label %bb.p
    i32 3, label %bb.t
    i32 4, label %bb.x
  ]

bb.k:                                             ; preds = %bb.j
  %i.kl = load ptr, ptr %2, align 8, !tbaa !39    ; 6 uses
  %i.km = load i32, ptr %i.kh, align 4, !tbaa !33
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.kl, i32 noundef %i.km, i64 noundef %i.c, ptr noundef %i.ko)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.kp = load ptr, ptr %i.kl, align 8, !tbaa !29
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit267

_ZNK4ncnn3Mat5emptyEv.exit267:                    ; preds = %bb.l
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !28
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kl, i64 56
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !91
  %i.kv = sext i32 %i.ku to i64
  %i.kw = mul i64 %i.ks, %i.kv
  %i.kx = icmp eq i64 %i.kw, 0
  br i1 %i.kx, label %.critedge, label %.preheader364

.preheader364:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit267
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kl, i64 44 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !30
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %.lr.ph374, label %.critedge

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.n:                                             ; preds = %bb.i
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit279

bb.o:                                             ; preds = %bb.k
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph374:                                        ; preds = %.preheader364, %.lr.ph374
  %indvars.iv547 = phi i64 [ %indvars.iv.next548, %.lr.ph374 ], [ 0, %.preheader364 ] ; 3 uses
  %i.le = trunc nuw nsw i64 %indvars.iv547 to i32
  store i32 %i.le, ptr %i.kj, align 4, !tbaa !33
  %i.lf = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.lg = load ptr, ptr %i.kl, align 8, !tbaa !29
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv547
  store float %i.lf, ptr %i.lh, align 4, !tbaa !44
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %i.li = load i32, ptr %i.ky, align 4, !tbaa !30
  %i.lj = sext i32 %i.li to i64
  %i.lk = icmp slt i64 %indvars.iv.next548, %i.lj
  br i1 %i.lk, label %.lr.ph374, label %.critedge.thread, !llvm.loop !74

bb.p:                                             ; preds = %bb.j
  %i.ll = load ptr, ptr %2, align 8, !tbaa !39    ; 8 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !33
  %i.lo = load i32, ptr %i.kh, align 4, !tbaa !33
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ll, i32 noundef %i.ln, i32 noundef %i.lo, i64 noundef %i.c, ptr noundef %i.lq)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.lr = load ptr, ptr %i.ll, align 8, !tbaa !29
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit266

_ZNK4ncnn3Mat5emptyEv.exit266:                    ; preds = %bb.q
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ll, i64 64
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !28
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !91
  %i.lx = sext i32 %i.lw to i64
  %i.ly = mul i64 %i.lu, %i.lx
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %.critedge, label %.preheader363

.preheader363:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit266
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ll, i64 48 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !42
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %.lr.ph381, label %.critedge

.lr.ph381:                                        ; preds = %.preheader363
  %i.md = getelementptr inbounds nuw i8, ptr %i.ll, i64 44 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %.lr.ph381, %._crit_edge379
  %indvars.iv553 = phi i64 [ 0, %.lr.ph381 ], [ %indvars.iv.next554, %._crit_edge379 ] ; 3 uses
  %i.mh = trunc nuw nsw i64 %indvars.iv553 to i32
  store i32 %i.mh, ptr %i.kj, align 4, !tbaa !33
  %i.mi = load i32, ptr %i.md, align 4, !tbaa !30
  %i.mj = icmp sgt i32 %i.mi, 0
  br i1 %i.mj, label %.lr.ph378, label %._crit_edge379

._crit_edge379:                                   ; preds = %.lr.ph378, %bb.s
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %i.mk = load i32, ptr %i.ma, align 8, !tbaa !42
  %i.ml = sext i32 %i.mk to i64
  %i.mm = icmp slt i64 %indvars.iv.next554, %i.ml
  br i1 %i.mm, label %bb.s, label %._crit_edge382, !llvm.loop !75

.lr.ph378:                                        ; preds = %bb.s, %.lr.ph378
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %.lr.ph378 ], [ 0, %bb.s ] ; 3 uses
  %i.mn = trunc nuw nsw i64 %indvars.iv550 to i32
  store i32 %i.mn, ptr %i.me, align 4, !tbaa !33
  %i.mo = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.mp = load ptr, ptr %i.ll, align 8, !tbaa !29
  %i.mq = load i32, ptr %i.md, align 4, !tbaa !30
  %i.mr = sext i32 %i.mq to i64                   ; 2 uses
  %i.ms = mul nsw i64 %indvars.iv553, %i.mr
  %i.mt = load i64, ptr %i.mf, align 8, !tbaa !40
  %i.mu = mul i64 %i.ms, %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mu
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv550
  store float %i.mo, ptr %i.mw, align 4, !tbaa !44
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %i.mx = icmp slt i64 %indvars.iv.next551, %i.mr
  br i1 %i.mx, label %.lr.ph378, label %._crit_edge379, !llvm.loop !76

._crit_edge382:                                   ; preds = %._crit_edge379
  switch i32 %i.kg, label %.critedge.thread [
    i32 3, label %bb.t
    i32 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.j, %._crit_edge382
  %i.my = load ptr, ptr %2, align 8, !tbaa !39    ; 8 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !33
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !33
  %i.nd = load i32, ptr %i.kh, align 4, !tbaa !33
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.my, i32 noundef %i.na, i32 noundef %i.nc, i32 noundef %i.nd, i64 noundef %i.c, ptr noundef %i.nf)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ng = load ptr, ptr %i.my, align 8, !tbaa !29
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit265

_ZNK4ncnn3Mat5emptyEv.exit265:                    ; preds = %bb.u
  %i.ni = getelementptr inbounds nuw i8, ptr %i.my, i64 64 ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !28
  %i.nk = getelementptr inbounds nuw i8, ptr %i.my, i64 56 ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !91 ; 2 uses
  %i.nm = sext i32 %i.nl to i64
  %i.nn = mul i64 %i.nj, %i.nm
  %i.no = icmp eq i64 %i.nn, 0
  br i1 %i.no, label %.critedge, label %.preheader362

.preheader362:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit265
  %i.np = icmp sgt i32 %i.nl, 0
  br i1 %i.np, label %.lr.ph390, label %.critedge

.lr.ph390:                                        ; preds = %.preheader362
  %i.nq = getelementptr inbounds nuw i8, ptr %i.my, i64 48 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.ns = getelementptr inbounds nuw i8, ptr %i.my, i64 44 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %.lr.ph390, %._crit_edge388
  %indvars.iv562 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next563, %._crit_edge388 ] ; 3 uses
  %i.nw = trunc nuw nsw i64 %indvars.iv562 to i32
  store i32 %i.nw, ptr %i.kj, align 4, !tbaa !33
  %i.nx = load i32, ptr %i.nq, align 8, !tbaa !42
  %i.ny = icmp sgt i32 %i.nx, 0
  br i1 %i.ny, label %.lr.ph387, label %._crit_edge388

._crit_edge388:                                   ; preds = %._crit_edge384, %bb.w
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %i.nz = load i32, ptr %i.nk, align 8, !tbaa !91
  %i.oa = sext i32 %i.nz to i64
  %i.ob = icmp slt i64 %indvars.iv.next563, %i.oa
  br i1 %i.ob, label %bb.w, label %._crit_edge391, !llvm.loop !77

.lr.ph387:                                        ; preds = %bb.w, %._crit_edge384
  %indvars.iv559 = phi i64 [ %indvars.iv.next560, %._crit_edge384 ], [ 0, %bb.w ] ; 3 uses
  %i.oc = trunc nuw nsw i64 %indvars.iv559 to i32
  store i32 %i.oc, ptr %i.nr, align 4, !tbaa !33
  %i.od = load i32, ptr %i.ns, align 4, !tbaa !30
  %i.oe = icmp sgt i32 %i.od, 0
  br i1 %i.oe, label %.noexc270, label %._crit_edge384

._crit_edge384:                                   ; preds = %.noexc270, %.lr.ph387
  %indvars.iv.next560 = add nuw nsw i64 %indvars.iv559, 1 ; 2 uses
  %i.of = load i32, ptr %i.nq, align 8, !tbaa !42
  %i.og = sext i32 %i.of to i64
  %i.oh = icmp slt i64 %indvars.iv.next560, %i.og
  br i1 %i.oh, label %.lr.ph387, label %._crit_edge388, !llvm.loop !78

.noexc270:                                        ; preds = %.lr.ph387, %.noexc270
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %.noexc270 ], [ 0, %.lr.ph387 ] ; 3 uses
  %i.oi = trunc nuw nsw i64 %indvars.iv556 to i32
  store i32 %i.oi, ptr %i.nt, align 4, !tbaa !33
  %i.oj = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.ok = load i32, ptr %i.ns, align 4, !tbaa !30, !noalias !95
  %i.ol = load ptr, ptr %i.my, align 8, !tbaa !29, !noalias !95
  %i.om = load i64, ptr %i.ni, align 8, !tbaa !28, !noalias !95
  %i.on = mul i64 %i.om, %indvars.iv562
  %i.oo = load i64, ptr %i.nu, align 8, !tbaa !40, !noalias !95 ; 2 uses
  %i.op = mul i64 %i.on, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.op
  %i.or = sext i32 %i.ok to i64                   ; 2 uses
  %i.os = mul nsw i64 %indvars.iv559, %i.or
  %i.ot = mul i64 %i.os, %i.oo
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.ot
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv556
end_hunk_1
