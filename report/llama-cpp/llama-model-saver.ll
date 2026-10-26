Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-model-saver?download=true
inline.NumInlined: 728
inline.NumDeleted: 311
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.82" = type { %"struct.std::_Vector_base.83" }
%"struct.std::_Vector_base.83" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN17llama_model_saver6add_kvISt6vectorIjSaIjEEEEv6llm_kvRKT_b = comdat any

$_ZN17llama_model_saver6add_kvISt6vectorIfSaIfEEEEv6llm_kvRKT_b = comdat any

$_ZN17llama_model_saver6add_kvISt6vectorImSaImEEEEv6llm_kvRKT_b = comdat any

$_ZN17llama_model_saver6add_kvISt5arrayIjLm512EEEEv6llm_kvRKT_b = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

@.str = private unnamed_addr constant [62 x i8] c"/opt-bench/work/llama-cpp/llama.cpp/src/llama-model-saver.cpp\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GGML_ASSERT(%s) failed\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"llama_model_saver_supports_arch(model->arch)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"fatal error\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"model != nullptr || !per_layer\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"n_values <= value.size()\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"rope_factors_long.weight\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"rope_factors_short.weight\00", align 1
@.str.9 = private unnamed_addr constant [126 x i8] c"tensor_name == \22rope_freqs.weight\22 || tensor_name == \22rope_factors_long.weight\22 || tensor_name == \22rope_factors_short.weight\22\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@switch.table._ZN17llama_model_saver17add_kv_from_modelEv = private unnamed_addr constant [6 x i8] c"\02\05\01\03\04\06", align 4

@_ZN17llama_model_saverC1EPK11llama_model = unnamed_addr alias void (ptr, ptr), ptr @_ZN17llama_model_saverC2EPK11llama_model
@_ZN17llama_model_saverC1E8llm_archP12gguf_context = unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN17llama_model_saverC2E8llm_archP12gguf_context
@_ZN17llama_model_saverD1Ev = unnamed_addr alias void (ptr), ptr @_ZN17llama_model_saverD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z31llama_model_saver_supports_arch8llm_arch(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 40, label %bb.c
    i32 48, label %bb.c
    i32 49, label %bb.c
    i32 60, label %bb.c
    i32 61, label %bb.c
    i32 64, label %bb.c
    i32 78, label %bb.c
    i32 79, label %bb.c
    i32 88, label %bb.c
    i32 107, label %bb.c
    i32 125, label %bb.c
    i32 133, label %bb.c
    i32 134, label %bb.c
    i32 66, label %bb.c
    i32 140, label %bb.c
    i32 108, label %bb.c
    i32 97, label %bb.c
    i32 105, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN17llama_model_saverC2EPK11llama_model(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 9), (16, 24)) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call ptr @gguf_init_empty()
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !102
  tail call void @_ZN6LLM_KVC1E8llm_archPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i32 noundef %i.f, ptr noundef null)
  %i.g = load i32, ptr %i.e, align 4, !tbaa !102
  %i.h = tail call noundef zeroext i1 @_Z31llama_model_saver_supports_arch8llm_arch(i32 noundef %i.g)
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 43, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

declare ptr @gguf_init_empty() local_unnamed_addr #2

declare void @_ZN6LLM_KVC1E8llm_archPKc(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: noreturn
declare void @ggml_abort(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN17llama_model_saverC2E8llm_archP12gguf_context(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 9), (16, 24)) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @gguf_init_empty()
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ %2, %bb.a ]
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = zext i1 %i.a to i8
  store i8 %i.e, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6LLM_KVC1E8llm_archPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %1, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN17llama_model_saverD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !18, !range !103, !noundef !104
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  invoke void @gguf_free(ptr noundef %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #18
  unreachable
}

declare void @gguf_free(ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN17llama_model_saver6add_kvE6llm_kvj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %1)
  %i.c = load ptr, ptr %3, align 8, !tbaa !105
  invoke void @gguf_set_val_u32(ptr noundef %i.a, ptr noundef %i.c, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !105    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !106
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !105    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !106
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.i
}

declare void @gguf_set_val_u32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define void @_ZN17llama_model_saver6add_kvE6llm_kvi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
end_hunk_0
begin_hunk_1_@_ZN17llama_model_saver6add_kvISt6vectorImSaImEEEEv6llm_kvRKT_b:bb.a
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %or.cond = and i1 %3, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 88, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.d, label %.thread55

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = tail call noundef i32 @_ZNK13llama_hparams7n_layerEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.d) ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !129
  %.pre36 = load ptr, ptr %2, align 8, !tbaa !130 ; 3 uses
  %.pre38 = ptrtoint ptr %.pre to i64
  %.pre39 = ptrtoint ptr %.pre36 to i64
  %.pre41 = sub i64 %.pre38, %.pre39
  %.pre43 = ashr exact i64 %.pre41, 3
  %i.g = icmp ult i64 %.pre43, %i.f
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 90, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq i32 %i.e, 0
  br i1 %i.h, label %bb.k, label %.preheader

.thread55:                                        ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129  ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !130    ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp eq ptr %i.j, %i.k
  br i1 %i.p, label %bb.k, label %.critedge29

.preheader:                                       ; preds = %bb.f
  %.not2734.not = icmp eq i32 %i.e, 1
  %.pre37 = load i64, ptr %.pre36, align 8, !tbaa !110 ; 2 uses
  br i1 %.not2734.not, label %.critedge30, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.q = add nuw i64 %.02335, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.f
  br i1 %exitcond.not, label %.critedge30, label %.lr.ph, !llvm.loop !126

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.02335 = phi i64 [ %i.q, %bb.g ], [ 1, %.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre36, i64 %.02335
  %i.s = load i64, ptr %i.r, align 8, !tbaa !110
  %.not26 = icmp eq i64 %i.s, %.pre37
  br i1 %.not26, label %bb.g, label %.critedge29

.critedge29:                                      ; preds = %.lr.ph, %.thread55
  %i.t = phi i64 [ %i.o, %.thread55 ], [ %i.f, %.lr.ph ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i32 noundef %1)
  %i.w = load ptr, ptr %5, align 8, !tbaa !105
  %i.x = load ptr, ptr %2, align 8, !tbaa !130
  invoke void @gguf_set_arr_data(ptr noundef %i.u, ptr noundef %i.w, i32 noundef 10, ptr noundef %i.x, i64 noundef %i.t)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %.critedge29
  %i.y = load ptr, ptr %5, align 8, !tbaa !105    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !106
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.k

.critedge30:                                      ; preds = %bb.g, %.preheader
  %i.ad = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i32 noundef %1)
  %i.af = load ptr, ptr %4, align 8, !tbaa !105
  invoke void @gguf_set_val_u64(ptr noundef %i.ad, ptr noundef %i.af, i64 noundef %.pre37)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.critedge30
  %i.ag = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN17llama_model_saver6add_kvE6llm_kvm.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !106
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #20
  br label %_ZN17llama_model_saver6add_kvE6llm_kvm.exit

bb.j:                                             ; preds = %.critedge30
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.j
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !106
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume

_ZN17llama_model_saver6add_kvE6llm_kvm.exit:      ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.k

bb.k:                                             ; preds = %.thread55, %_ZN17llama_model_saver6add_kvE6llm_kvm.exit, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.l:                                             ; preds = %.critedge29
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.l
  %i.av = load i64, ptr %i.at, align 8, !tbaa !106
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN17llama_model_saver6add_kvE6llm_kvRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !112    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 7 uses
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
  unreachable

_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.noexc15

.noexc15:                                         ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.i = ashr exact i64 %i.f, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #21 ; 6 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g
  store ptr null, ptr %i.j, align 8, !tbaa !133
  %i.l = getelementptr i8, ptr %i.j, i64 8        ; 3 uses
  %i.m = add nsw i64 %i.g, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader, label %_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc15
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !133
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc15
  %.0.i.i.i.i.i.ph = phi ptr [ %i.l, %.noexc15 ], [ %i.o, %_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %min.iters.check = icmp ult i64 %i.g, 5
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.ph

.lr.ph.preheader43:                               ; preds = %vector.body, %.lr.ph.preheader
  %.027.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.p = and i64 %i.g, 3                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 4, i64 %i.p
  %n.vec = sub nsw i64 %i.g, %i.r                 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %index
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !105
  %i.ab = insertelement <2 x ptr> poison, ptr %i.z, i64 0
  %i.ac = insertelement <2 x ptr> %i.ab, ptr %i.aa, i64 1
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !105
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !105
  %i.af = insertelement <2 x ptr> poison, ptr %i.ad, i64 0
  %i.ag = insertelement <2 x ptr> %i.af, ptr %i.ae, i64 1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x ptr> %i.ac, ptr %i.ah, align 8, !tbaa !133
  store <2 x ptr> %i.ag, ptr %i.ai, align 8, !tbaa !133
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %.lr.ph.preheader43, label %vector.body, !llvm.loop !131

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ak = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.al = ptrtoint ptr %i.k to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.0.i.i.i.i.i42 = phi i64 [ 0, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.ak, %._crit_edge.loopexit ]
  %.sroa.021.040 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.j, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.13.038 = phi i64 [ 0, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.al, %._crit_edge.loopexit ] ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i32 noundef %1)
          to label %bb.b unwind label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %.027 = phi i64 [ %i.ar, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader43 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.027
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !105
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.027
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !133
  %i.ar = add nuw nsw i64 %.027, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !132

bb.b:                                             ; preds = %._crit_edge
  %i.as = load ptr, ptr %3, align 8, !tbaa !105
  %i.at = ptrtoint ptr %.sroa.021.040 to i64      ; 2 uses
  %i.au = sub i64 %.0.i.i.i.i.i42, %i.at
  %i.av = ashr exact i64 %i.au, 3
  invoke void @gguf_set_arr_str(ptr noundef %i.am, ptr noundef %i.as, ptr noundef %.sroa.021.040, i64 noundef %i.av)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aw = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !106
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not.i.i.i = icmp eq ptr %.sroa.021.040, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = sub i64 %.sroa.13.038, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.021.040, i64 noundef %i.bb) #20
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  ret void

bb.e:                                             ; preds = %._crit_edge
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.f:                                             ; preds = %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.f
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !106
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.e ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.bd, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not.i.i.i19 = icmp eq ptr %.sroa.021.040, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit20, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bj = ptrtoint ptr %.sroa.021.040 to i64
  %i.bk = sub i64 %.sroa.13.038, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.021.040, i64 noundef %i.bk) #20
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit20

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit20:              ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  resume { ptr, i32 } %.pn
}

declare void @gguf_set_arr_str(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN17llama_model_saver10add_tensorEPK11ggml_tensor(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.d = tail call i64 @gguf_find_tensor(ptr noundef %i.b, ptr noundef nonnull %i.c)
  %i.e = icmp sgt i64 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !115
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.g, ptr %i.a, align 8, !tbaa !110
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !105
  %i.j = load i64, ptr %i.a, align 8, !tbaa !110
  store i64 %i.j, ptr %i.f, align 8, !tbaa !106
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !106
  store i8 %i.l, ptr %i.k, align 1, !tbaa !106
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.c, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !116
  %i.o = load ptr, ptr %2, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.q = load i64, ptr %i.n, align 8, !tbaa !116  ; 4 uses
  switch i64 %i.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18 [
    i64 17, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 24, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10
    i64 25, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8, !tbaa !105    ; 3 uses
  %i.s = load i128, ptr %i.r, align 1
  %i.t = xor i128 %i.s, 138776655829998007314207150964139388786
  %i.u = getelementptr i8, ptr %i.r, i64 16
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i128
  %i.x = xor i128 %i.w, 116
  %i.y = or i128 %i.t, %i.x
  %i.z = icmp ne i128 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10: ; preds = %bb.f
  %.pre = load ptr, ptr %2, align 8, !tbaa !105   ; 2 uses
  %bcmp.i9 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.7, i64 %i.q)
  %i.ac = icmp eq i32 %bcmp.i9, 0
  br i1 %i.ac, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12: ; preds = %bb.f
  %.pre19 = load ptr, ptr %2, align 8, !tbaa !105 ; 2 uses
  %bcmp.i11 = call i32 @bcmp(ptr %.pre19, ptr nonnull @.str.8, i64 %i.q)
  %i.ad = icmp eq i32 %bcmp.i11, 0
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 151, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #17
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18
  unreachable

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread18
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %2, align 8, !tbaa !105   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.f
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !106
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aj = phi ptr [ %.pre19, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12 ], [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10 ], [ %i.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.f
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i14: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.al = icmp samesign ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.al)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.am = load i64, ptr %i.f, align 8, !tbaa !106
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.b
  %i.ao = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @gguf_add_tensor(ptr noundef %i.ao, ptr noundef nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  ret void
}

declare i64 @gguf_find_tensor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gguf_add_tensor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN17llama_model_saver17add_kv_from_modelEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %103 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %105 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %106 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %107 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %109 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %111 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %112 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %113 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %115 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %117 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %118 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %119 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %120 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %121 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %123 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %124 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %125 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %126 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %127 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %128 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %129 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %130 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %131 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %132 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %133 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %134 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %135 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %136 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %137 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %138 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_1
