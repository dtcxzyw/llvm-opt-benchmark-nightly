Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/main?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::locale::id" = type { i64 }
%"class.LightGBM::Application" = type { %"struct.LightGBM::Config", %"class.std::unique_ptr", %"class.std::vector.30", %"class.std::vector.35", %"class.std::vector.40", %"class.std::unique_ptr.45", %"class.std::unique_ptr.53" }
%"struct.LightGBM::Config" = type { %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::vector", i32, double, i32, %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string", i32, i8, i8, i8, double, i32, i32, double, double, double, double, i32, i32, i8, double, double, i32, i8, i32, i32, double, i8, double, double, double, double, double, double, i32, double, i8, i8, i32, double, double, i32, i32, double, double, i32, i32, %"class.std::vector.3", %"class.std::__cxx11::basic_string", double, %"class.std::vector.8", %"class.std::__cxx11::basic_string", double, double, double, %"class.std::vector.8", %"class.std::vector.8", double, %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, i32, i8, i32, i8, i8, i8, i32, %"class.std::vector.13", i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, i8, %"class.std::__cxx11::basic_string", i32, i32, i8, i8, i8, i8, i8, i32, double, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, i32, i8, double, double, i8, i8, double, double, double, double, i32, i8, %"class.std::vector.8", double, %"class.std::vector", i32, i8, %"class.std::vector.13", i32, %"class.std::vector.8", i32, i32, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, i32, %"class.std::__cxx11::basic_string", i8, i32, i64, i8, i8, %"class.std::vector.18", %"class.std::vector.23" }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<signed char, std::allocator<signed char>>::_Vector_impl" }
%"struct.std::_Vector_base<signed char, std::allocator<signed char>>::_Vector_impl" = type { %"struct.std::_Vector_base<signed char, std::allocator<signed char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<signed char, std::allocator<signed char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.18" = type { %"struct.std::_Vector_base.19" }
%"struct.std::_Vector_base.19" = type { %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.23" = type { %"struct.std::_Vector_base.24" }
%"struct.std::_Vector_base.24" = type { %"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.29" }
%"struct.std::_Head_base.29" = type { ptr }
%"class.std::vector.30" = type { %"struct.std::_Vector_base.31" }
%"struct.std::_Vector_base.31" = type { %"struct.std::_Vector_base<std::unique_ptr<LightGBM::Dataset>, std::allocator<std::unique_ptr<LightGBM::Dataset>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<LightGBM::Dataset>, std::allocator<std::unique_ptr<LightGBM::Dataset>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<LightGBM::Dataset>, std::allocator<std::unique_ptr<LightGBM::Dataset>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<LightGBM::Dataset>, std::allocator<std::unique_ptr<LightGBM::Dataset>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.35" = type { %"struct.std::_Vector_base.36" }
%"struct.std::_Vector_base.36" = type { %"struct.std::_Vector_base<std::unique_ptr<LightGBM::Metric>, std::allocator<std::unique_ptr<LightGBM::Metric>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<LightGBM::Metric>, std::allocator<std::unique_ptr<LightGBM::Metric>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<LightGBM::Metric>, std::allocator<std::unique_ptr<LightGBM::Metric>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<LightGBM::Metric>, std::allocator<std::unique_ptr<LightGBM::Metric>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.40" = type { %"struct.std::_Vector_base.41" }
%"struct.std::_Vector_base.41" = type { %"struct.std::_Vector_base<std::vector<std::unique_ptr<LightGBM::Metric>>, std::allocator<std::vector<std::unique_ptr<LightGBM::Metric>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<std::unique_ptr<LightGBM::Metric>>, std::allocator<std::vector<std::unique_ptr<LightGBM::Metric>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<std::unique_ptr<LightGBM::Metric>>, std::allocator<std::vector<std::unique_ptr<LightGBM::Metric>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<std::unique_ptr<LightGBM::Metric>>, std::allocator<std::vector<std::unique_ptr<LightGBM::Metric>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.45" = type { %"struct.std::__uniq_ptr_data.46" }
%"struct.std::__uniq_ptr_data.46" = type { %"class.std::__uniq_ptr_impl.47" }
%"class.std::__uniq_ptr_impl.47" = type { %"class.std::tuple.48" }
%"class.std::tuple.48" = type { %"struct.std::_Tuple_impl.49" }
%"struct.std::_Tuple_impl.49" = type { %"struct.std::_Head_base.52" }
%"struct.std::_Head_base.52" = type { ptr }
%"class.std::unique_ptr.53" = type { %"struct.std::__uniq_ptr_data.54" }
%"struct.std::__uniq_ptr_data.54" = type { %"class.std::__uniq_ptr_impl.55" }
%"class.std::__uniq_ptr_impl.55" = type { %"class.std::tuple.56" }
%"class.std::tuple.56" = type { %"struct.std::_Tuple_impl.57" }
%"struct.std::_Tuple_impl.57" = type { %"struct.std::_Head_base.60" }
%"struct.std::_Head_base.60" = type { ptr }

$__clang_call_terminate = comdat any

$_ZN3fmt3v1112format_facetISt6localeE2idE = comdat any

$_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

@_ZTISt9exception = external constant ptr
@_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = linkonce_odr constant [53 x i8] c"NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\00", comdat, align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [19 x i8] c"Unknown Exceptions\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Met Exceptions:\00", align 1
@_ZN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1112format_facetISt6localeE2idE), align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1112format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1112format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: mustprogress norecurse uwtable
define noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.LightGBM::Application", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  invoke void @_ZN8LightGBM11ApplicationC1EiPPc(ptr noundef nonnull align 8 dereferenceable(1752) %2, i32 noundef %0, ptr noundef %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  switch i32 %i.b, label %bb.e [
    i32 1, label %bb.c
    i32 3, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  invoke void @_ZN8LightGBM11Application11InitPredictEv(ptr noundef nonnull align 8 dereferenceable(1752) %2)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN8LightGBM11Application7PredictEv(ptr noundef nonnull align 8 dereferenceable(1752) %2)
          to label %.critedge unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN8LightGBM11Application12ConvertModelEv(ptr noundef nonnull align 8 dereferenceable(1752) %2)
          to label %.critedge unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  invoke void @_ZN8LightGBM11Application9InitTrainEv(ptr noundef nonnull align 8 dereferenceable(1752) %2)
          to label %.noexc19 unwind label %bb.g

.noexc19:                                         ; preds = %bb.e
  invoke void @_ZN8LightGBM11Application5TrainEv(ptr noundef nonnull align 8 dereferenceable(1752) %2)
          to label %.critedge unwind label %bb.g

.critedge:                                        ; preds = %.noexc, %bb.d, %.noexc19
  call void @_ZN8LightGBM11ApplicationD1Ev(ptr noundef nonnull align 8 dead_on_return(1752) dereferenceable(1752) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 0

bb.f:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %.noexc19, %bb.e, %bb.d, %.noexc, %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null
  call void @_ZN8LightGBM11ApplicationD1Ev(ptr noundef nonnull align 8 dead_on_return(1752) dereferenceable(1752) %2) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.d, %bb.g ], [ %i.c, %bb.f ] ; 2 uses
  %.011 = extractvalue { ptr, i32 } %.pn, 0       ; 2 uses
  %.012 = extractvalue { ptr, i32 } %.pn, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.e = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #10
  %i.f = icmp eq i32 %.012, %i.e
  br i1 %i.f, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.g = call ptr @__cxa_begin_catch(ptr %.011) #10 ; 2 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.p, !inline_history !85 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #10
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.m)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_ZNSolsEPFRSoS_E.exit31 unwind label %bb.p, !inline_history !85 ; 0 uses

_ZNSolsEPFRSoS_E.exit31:                          ; preds = %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @__cxa_end_catch()
  call void @exit(i32 noundef -1) #11
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE) #10
  %i.q = icmp eq i32 %.012, %i.p
  %i.r = call ptr @__cxa_begin_catch(ptr %.011) #10 ; 2 uses
  br i1 %i.q, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %bb.l
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit28 unwind label %bb.o, !inline_history !85 ; 0 uses

_ZNSolsEPFRSoS_E.exit28:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !88
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !89
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.u, i64 noundef %i.w)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSolsEPFRSoS_E.exit28
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_ZNSolsEPFRSoS_E.exit31 unwind label %bb.o, !inline_history !85 ; 0 uses

bb.m:                                             ; preds = %bb.k
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %bb.m
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit31 unwind label %bb.n, !inline_history !85 ; 0 uses

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNSolsEPFRSoS_E.exit28, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.p:                                             ; preds = %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i, %_ZNSolsEPFRSoS_E.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.pn15 = phi { ptr, i32 } [ %i.ac, %bb.o ], [ %i.ab, %bb.n ], [ %i.ad, %bb.p ]
  resume { ptr, i32 } %.pn15

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #12
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN8LightGBM11ApplicationC1EiPPc(ptr noundef nonnull align 8 dereferenceable(1752), i32 noundef, ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN8LightGBM11ApplicationD1Ev(ptr noundef nonnull align 8 dead_on_return(1752) dereferenceable(1752)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare void @_ZN8LightGBM11Application11InitPredictEv(ptr noundef nonnull align 8 dereferenceable(1752)) local_unnamed_addr #2

declare void @_ZN8LightGBM11Application7PredictEv(ptr noundef nonnull align 8 dereferenceable(1752)) local_unnamed_addr #2

declare void @_ZN8LightGBM11Application12ConvertModelEv(ptr noundef nonnull align 8 dereferenceable(1752)) local_unnamed_addr #2

declare void @_ZN8LightGBM11Application9InitTrainEv(ptr noundef nonnull align 8 dereferenceable(1752)) local_unnamed_addr #2

declare void @_ZN8LightGBM11Application5TrainEv(ptr noundef nonnull align 8 dereferenceable(1752)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #9 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(none) }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !17, i64 32}
!10 = !{!"_ZTSN8LightGBM11ApplicationE", !11, i64 0, !49, i64 1656, !56, i64 1664, !61, i64 1688, !66, i64 1712, !71, i64 1736, !78, i64 1744}
!11 = !{!"_ZTSN8LightGBM6ConfigE", !12, i64 0, !17, i64 32, !12, i64 40, !12, i64 72, !12, i64 104, !12, i64 136, !18, i64 168, !6, i64 192, !23, i64 200, !6, i64 208, !12, i64 216, !6, i64 248, !12, i64 256, !6, i64 288, !24, i64 292, !24, i64 293, !24, i64 294, !23, i64 296, !6, i64 304, !6, i64 308, !23, i64 312, !23, i64 320, !23, i64 328, !23, i64 336, !6, i64 344, !6, i64 348, !24, i64 352, !23, i64 360, !23, i64 368, !6, i64 376, !24, i64 380, !6, i64 384, !6, i64 388, !23, i64 392, !24, i64 400, !23, i64 408, !23, i64 416, !23, i64 424, !23, i64 432, !23, i64 440, !23, i64 448, !6, i64 456, !23, i64 464, !24, i64 472, !24, i64 473, !6, i64 476, !23, i64 480, !23, i64 488, !6, i64 496, !6, i64 500, !23, i64 504, !23, i64 512, !6, i64 520, !6, i64 524, !25, i64 528, !12, i64 552, !23, i64 584, !29, i64 592, !12, i64 616, !23, i64 648, !23, i64 656, !23, i64 664, !29, i64 672, !29, i64 696, !23, i64 720, !12, i64 728, !6, i64 760, !12, i64 768, !12, i64 800, !6, i64 832, !6, i64 836, !24, i64 840, !6, i64 844, !24, i64 848, !24, i64 849, !24, i64 850, !6, i64 852, !34, i64 856, !6, i64 880, !6, i64 884, !6, i64 888, !24, i64 892, !24, i64 893, !24, i64 894, !24, i64 895, !24, i64 896, !24, i64 897, !24, i64 898, !24, i64 899, !12, i64 904, !12, i64 936, !12, i64 968, !12, i64 1000, !12, i64 1032, !12, i64 1064, !24, i64 1096, !24, i64 1097, !12, i64 1104, !6, i64 1136, !6, i64 1140, !24, i64 1144, !24, i64 1145, !24, i64 1146, !24, i64 1147, !24, i64 1148, !6, i64 1152, !23, i64 1160, !12, i64 1168, !12, i64 1200, !12, i64 1232, !6, i64 1264, !6, i64 1268, !24, i64 1272, !23, i64 1280, !23, i64 1288, !24, i64 1296, !24, i64 1297, !23, i64 1304, !23, i64 1312, !23, i64 1320, !23, i64 1328, !6, i64 1336, !24, i64 1340, !29, i64 1344, !23, i64 1368, !18, i64 1376, !6, i64 1400, !24, i64 1404, !34, i64 1408, !6, i64 1432, !29, i64 1440, !6, i64 1464, !6, i64 1468, !6, i64 1472, !12, i64 1480, !12, i64 1512, !6, i64 1544, !6, i64 1548, !12, i64 1552, !24, i64 1584, !6, i64 1588, !16, i64 1592, !24, i64 1600, !24, i64 1601, !39, i64 1608, !44, i64 1632}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !16, i64 8, !7, i64 16}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"_ZTSN8LightGBM8TaskTypeE", !7, i64 0}
!18 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!23 = !{!"double", !7, i64 0}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"_ZTSSt6vectorIaSaIaEE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!29 = !{!"_ZTSSt6vectorIdSaIdEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 double", !15, i64 0}
!34 = !{!"_ZTSSt6vectorIiSaIiEE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p1 int", !15, i64 0}
!39 = !{!"_ZTSSt6vectorIS_IdSaIdEESaIS1_EE", !40, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !15, i64 0}
!44 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !45, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!48 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !15, i64 0}
!49 = !{!"_ZTSSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EE", !50, i64 0}
!50 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM7DatasetESt14default_deleteIS1_ELb1ELb1EE", !51, i64 0}
!51 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM7DatasetESt14default_deleteIS1_EE", !52, i64 0}
!52 = !{!"_ZTSSt5tupleIJPN8LightGBM7DatasetESt14default_deleteIS1_EEE", !53, i64 0}
!53 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM7DatasetESt14default_deleteIS1_EEE", !54, i64 0}
!54 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM7DatasetELb0EE", !55, i64 0}
end_hunk_0
