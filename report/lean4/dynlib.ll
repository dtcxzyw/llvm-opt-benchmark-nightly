Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/dynlib?download=true
inline.NumInlined: 214
inline.NumDeleted: 128
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.lean::sstream" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.lean::string_ref" = type { %"class.lean::object_ref" }
%"class.lean::object_ref" = type { ptr }

$_ZN4lean7sstreamD2Ev = comdat any

$_ZN4lean17consume_io_resultEP11lean_object = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN4lean3decEP11lean_object = comdat any

$_ZNK4lean10string_ref13to_std_stringB5cxx11Ev = comdat any

$_ZN4lean10object_refD2Ev = comdat any

$_ZN4lean9exceptionD0Ev = comdat any

$_ZTIN4lean9exceptionE = comdat any

$_ZTSN4lean9exceptionE = comdat any

$_ZTVN4lean9exceptionE = comdat any

@_ZN4leanL23g_dynlib_external_classE = internal unnamed_addr global ptr null, align 8
@_ZN4leanL30g_dynlib_symbol_external_classE = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [24 x i8] c"error loading library, \00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTIN4lean9exceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4lean9exceptionE, ptr @_ZTIN4lean9throwableE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4lean9exceptionE = linkonce_odr constant [18 x i8] c"N4lean9exceptionE\00", comdat, align 1
@_ZTIN4lean9throwableE = external constant ptr
@_ZTVN4lean9exceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4lean9exceptionE, ptr @_ZN4lean9throwableD2Ev, ptr @_ZN4lean9exceptionD0Ev, ptr @_ZNK4lean9throwable4whatEv] }, comdat, align 8

; Function Attrs: mustprogress uwtable
define void @_ZN4lean17initialize_dynlibEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_register_external_class(ptr noundef nonnull @_ZN4leanL16dynlib_finalizerEPv, ptr noundef nonnull @_ZN4leanL12noop_foreachEPvP11lean_object)
  store ptr %i.a, ptr @_ZN4leanL23g_dynlib_external_classE, align 8, !tbaa !9
  %i.b = tail call ptr @lean_register_external_class(ptr noundef nonnull @_ZN4leanL14noop_finalizerEPv, ptr noundef nonnull @_ZN4leanL12noop_foreachEPvP11lean_object)
  store ptr %i.b, ptr @_ZN4leanL30g_dynlib_symbol_external_classE, align 8, !tbaa !9
  ret void
}

declare ptr @lean_register_external_class(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4leanL16dynlib_finalizerEPv(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call i32 @dlclose(ptr noundef %0) #20 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4leanL12noop_foreachEPvP11lean_object(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4leanL14noop_finalizerEPv(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @lean_dynlib_load(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.lean::sstream", align 8     ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call ptr @dlopen(ptr noundef nonnull %i.a, i32 noundef 257) #20 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %2, i8 0, i64 376, i1 false)
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull @.str, i64 noundef 23)
          to label %_ZN4lean7sstreamlsIA24_cEERS0_RKT_.exit unwind label %3 ; 0 uses

_ZN4lean7sstreamlsIA24_cEERS0_RKT_.exit:          ; preds = %bb.b
  %i.d = call ptr @dlerror() #20                  ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4lean7sstreamlsIA24_cEERS0_RKT_.exit
  %i.e = load ptr, ptr %2, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %2, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43
  %i.k = or i32 %i.j, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.h, i32 noundef %i.k)
          to label %_ZN4lean7sstreamlsIPcEERS0_RKT_.exit unwind label %bb.i

bb.d:                                             ; preds = %_ZN4lean7sstreamlsIA24_cEERS0_RKT_.exit
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.d, i64 noundef %i.l)
          to label %_ZN4lean7sstreamlsIPcEERS0_RKT_.exit unwind label %bb.i ; 0 uses

_ZN4lean7sstreamlsIPcEERS0_RKT_.exit:             ; preds = %bb.c, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !15, !alias.scope !47
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !17, !alias.scope !47
  store i8 0, ptr %i.n, align 8, !tbaa !18, !alias.scope !47
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49, !noalias !47 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !47 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4lean7sstreamlsIPcEERS0_RKT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50, !noalias !47 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNK4lean7sstream3strB5cxx11Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !19, !alias.scope !47 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !18, !alias.scope !47
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #21
  br label %.body

bb.g:                                             ; preds = %_ZN4lean7sstreamlsIPcEERS0_RKT_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNK4lean7sstream3strB5cxx11Ev.exit unwind label %bb.f

_ZNK4lean7sstream3strB5cxx11Ev.exit:              ; preds = %bb.g, %bb.e
  %i.ag = invoke noundef ptr @_ZN4lean18io_result_mk_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNK4lean7sstream3strB5cxx11Ev.exit
  %i.ah = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.n
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aj = load i64, ptr %i.n, align 8, !tbaa !18
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.al = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !11
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aq, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !19 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN4lean7sstreamD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.at, align 8, !tbaa !18
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #21
  br label %_ZN4lean7sstreamD2Ev.exit

_ZN4lean7sstreamD2Ev.exit:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aq, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ay) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.n

3:                                                ; preds = %bb.b
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %_ZNK4lean7sstream3strB5cxx11Ev.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.n
  br i1 %i.bc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.j
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !18
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #21
  br label %.body

.body:                                            ; preds = %bb.j, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %3
  %.pn.pn = phi { ptr, i32 } [ %4, %3 ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.az, %bb.i ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.aa, %bb.f ], [ %i.ba, %bb.j ]
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr @_ZN4leanL23g_dynlib_external_classE, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat()
  %i.bg = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #20 ; 6 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.l, label %_ZN4leanL11wrap_dynlibEPv.exit

bb.l:                                             ; preds = %bb.k
  tail call void @lean_internal_panic_out_of_memory() #22
  unreachable

_ZN4leanL11wrap_dynlibEPv.exit:                   ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 1, ptr %i.bg, align 4, !tbaa !21
  store i32 -33554408, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bf, ptr %i.bj, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.b, ptr %i.bk, align 8, !tbaa !24
  tail call void @lean_inc_heartbeat()
  %i.bl = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #20 ; 5 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.m, label %_ZN4lean15io_result_mk_okEP11lean_object.exit

bb.m:                                             ; preds = %_ZN4leanL11wrap_dynlibEPv.exit
  tail call void @lean_internal_panic_out_of_memory() #22
  unreachable

_ZN4lean15io_result_mk_okEP11lean_object.exit:    ; preds = %_ZN4leanL11wrap_dynlibEPv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 1, ptr %i.bl, align 4, !tbaa !21
  store i32 65552, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bg, ptr %i.bo, align 8, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %_ZN4lean15io_result_mk_okEP11lean_object.exit, %_ZN4lean7sstreamD2Ev.exit
  %.07 = phi ptr [ %i.bl, %_ZN4lean15io_result_mk_okEP11lean_object.exit ], [ %i.ag, %_ZN4lean7sstreamD2Ev.exit ]
  ret ptr %.07
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4lean18io_result_mk_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare ptr @dlerror() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.n) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @lean_dynlib_get(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @dlerror() #20             ; 0 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = tail call ptr @dlsym(ptr noundef %.val, ptr noundef nonnull %i.c) #20
  %i.e = tail call ptr @dlerror() #20
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @_ZN4leanL30g_dynlib_symbol_external_classE, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat()
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #20 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_ZN4leanL11wrap_symbolEPv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #22
  unreachable

_ZN4leanL11wrap_symbolEPv.exit:                   ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !21
  store i32 -33554408, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.d, ptr %i.k, align 8, !tbaa !24
  tail call void @lean_inc_heartbeat()
  %i.l = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #20 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN4lean14mk_option_someEP11lean_object.exit

bb.d:                                             ; preds = %_ZN4leanL11wrap_symbolEPv.exit
  tail call void @lean_internal_panic_out_of_memory() #22
  unreachable

_ZN4lean14mk_option_someEP11lean_object.exit:     ; preds = %_ZN4leanL11wrap_symbolEPv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 1, ptr %i.l, align 4, !tbaa !21
  store i32 16842768, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.g, ptr %i.o, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4lean14mk_option_someEP11lean_object.exit
  %.0 = phi ptr [ %i.l, %_ZN4lean14mk_option_someEP11lean_object.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef ptr @lean_dynlib_symbol_run_as_init(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.b = tail call noundef ptr %.val(i8 noundef zeroext 1)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean11load_dynlibENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4lean9mk_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = tail call ptr @lean_load_dynlib(ptr noundef %i.a)
  tail call void @_ZN4lean17consume_io_resultEP11lean_object(ptr noundef %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean17consume_io_resultEP11lean_object(ptr noundef %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.lean::string_ref", align 8  ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.a, align 4
  %.mask.i.i = and i32 %.val.i, -16777216
  %i.b = icmp eq i32 %.mask.i.i, 16777216
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i11 = load ptr, ptr %i.c, align 8, !tbaa !9 ; 5 uses
  %i.d = ptrtoint ptr %.val.i11 to i64
  %i.e = and i64 %i.d, 1
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4lean3incEP11lean_object.exit

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load i32, ptr %.val.i11, align 4, !tbaa !21 ; 3 uses
  %i.f = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i32 %.val.i.i.i, 1
  store i32 %i.g, ptr %.val.i11, align 4, !tbaa !21
  br label %_ZN4lean3incEP11lean_object.exit
end_hunk_0
