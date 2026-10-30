Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/finite_set_factory?download=true
inline.NumInlined: 84
inline.NumDeleted: 70
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%class.symbol = type { ptr }
%class.parameter = type { %"class.std::variant" }
%"class.std::variant" = type { %"struct.std::__detail::__variant::_Variant_base.base", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base" = type { %"struct.std::__detail::__variant::_Move_assign_base.base" }
%"struct.std::__detail::__variant::_Move_assign_base.base" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base" }
%"struct.std::__detail::__variant::_Copy_assign_base.base" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base" }
%"struct.std::__detail::__variant::_Move_ctor_base.base" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base" = type { %"struct.std::__detail::__variant::_Variant_storage.base" }
%"struct.std::__detail::__variant::_Variant_storage.base" = type <{ %"union.std::__detail::__variant::_Variadic_union", i8 }>
%"union.std::__detail::__variant::_Variadic_union" = type { %"union.std::__detail::__variant::_Variadic_union.50" }
%"union.std::__detail::__variant::_Variadic_union.50" = type { %"union.std::__detail::__variant::_Variadic_union.52" }
%"union.std::__detail::__variant::_Variadic_union.52" = type { %"union.std::__detail::__variant::_Variadic_union.54" }
%"union.std::__detail::__variant::_Variadic_union.54" = type { %"union.std::__detail::__variant::_Variadic_union.56" }
%"union.std::__detail::__variant::_Variadic_union.56" = type { %"struct.std::__detail::__variant::_Uninitialized.57" }
%"struct.std::__detail::__variant::_Uninitialized.57" = type { %union.anon }
%union.anon = type { %class.rational }
%class.rational = type { %class.mpq }
%class.mpq = type { %class.mpz, %class.mpz }
%class.mpz = type { i32, i8, ptr }

$_ZN18finite_set_factoryD0Ev = comdat any

$_ZNSt18bad_variant_accessD0Ev = comdat any

$_ZNKSt18bad_variant_access4whatEv = comdat any

$_ZTISt18bad_variant_access = comdat any

$_ZTSSt18bad_variant_access = comdat any

$_ZTVSt18bad_variant_access = comdat any

@_ZTV18finite_set_factory = hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI18finite_set_factory, ptr @_ZN14struct_factoryD2Ev, ptr @_ZN18finite_set_factoryD0Ev, ptr @_ZN18finite_set_factory14get_some_valueEP4sort, ptr @_ZN14struct_factory15get_some_valuesEP4sortR7obj_refI4expr11ast_managerES6_, ptr @_ZN18finite_set_factory15get_fresh_valueEP4sort, ptr @_ZN14struct_factory14register_valueEP4expr] }, align 8
@.str = private unnamed_addr constant [55 x i8] c"/opt-bench/work/z3/z3/src/model/finite_set_factory.cpp\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to verify: u.is_finite_set(s, elem_sort)\0A\00", align 1
@_ZTI18finite_set_factory = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18finite_set_factory, ptr @_ZTI14struct_factory }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS18finite_set_factory = hidden constant [21 x i8] c"18finite_set_factory\00", align 1
@_ZTI14struct_factory = external constant ptr
@.str.2 = private unnamed_addr constant [11 x i8] c"finite_set\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"std::get: variant is valueless\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"std::get: wrong index for variant\00", align 1
@_ZTISt18bad_variant_access = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt18bad_variant_access, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt18bad_variant_access = linkonce_odr constant [23 x i8] c"St18bad_variant_access\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVSt18bad_variant_access = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt18bad_variant_access, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt18bad_variant_accessD0Ev, ptr @_ZNKSt18bad_variant_access4whatEv] }, comdat, align 8

@_ZN18finite_set_factoryC1ER11ast_manageriR10model_core = hidden unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN18finite_set_factoryC2ER11ast_manageriR10model_core

; Function Attrs: mustprogress uwtable
define hidden void @_ZN18finite_set_factoryC2ER11ast_manageriR10model_core(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(96) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.symbol, align 8              ; 4 uses
  tail call void @_ZN14struct_factoryC2ER11ast_manageriR10model_core(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(96) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV18finite_set_factory, i64 16), ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.2)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.b = invoke noundef i32 @_ZN14family_manager12mk_family_idERK6symbol(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  store i32 %i.b, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.d, align 8, !tbaa !33
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14struct_factoryD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #9
  resume { ptr, i32 } %i.e
}

declare void @_ZN14struct_factoryC2ER11ast_manageriR10model_core(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN18finite_set_factory14get_some_valueEP4sort(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.parameter, align 8           ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !37   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !38   ; 3 uses
  %i.f = add i32 %i.e, -1
  %i.g = and i32 %i.f, %i.c                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.i = zext i32 %i.g to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i ; 3 uses
  %i.k = zext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.k
  %.not34.i.i.i = icmp eq i32 %i.g, %i.e
  br i1 %.not34.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %bb.a
  %.not2736.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not2736.i.i.i, label %_ZNK7obj_mapI4sortPN14struct_factory9value_setEE9find_coreEPS0_.exit.i, label %.lr.ph38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.d
  %.035.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.j, %bb.a ] ; 3 uses
  %i.m = load ptr, ptr %.035.i.i.i, align 8, !tbaa !44 ; 4 uses
  %i.n = icmp ult ptr %i.m, inttoptr (i64 2 to ptr)
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !37
  %i.q = icmp eq i32 %i.p, %i.c
  %i.r = icmp eq ptr %i.m, %1
  %or.cond.i.i.i = and i1 %i.r, %i.q
  br i1 %or.cond.i.i.i, label %_ZNK7obj_mapI4sortPN14struct_factory9value_setEE9find_coreEPS0_.exit.i, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = icmp eq ptr %i.m, null
  br i1 %i.s, label %_ZNK7obj_mapI4sortPN14struct_factory9value_setEE9find_coreEPS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.l
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !34

.lr.ph38.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph38.i.i.i.backedge
  %.137.i.i.i = phi ptr [ %.137.i.i.i.be, %.lr.ph38.i.i.i.backedge ], [ %i.h, %.preheader.i.i.i ] ; 4 uses
  %i.u = load ptr, ptr %.137.i.i.i, align 8, !tbaa !44 ; 4 uses
  %i.v = icmp ult ptr %i.u, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph38.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37
  %i.y = icmp eq i32 %i.x, %i.c
  %i.z = icmp eq ptr %i.u, %1
  %or.cond31.i.i.i = and i1 %i.z, %i.y
  br i1 %or.cond31.i.i.i, label %_ZNK7obj_mapI4sortPN14struct_factory9value_setEE9find_coreEPS0_.exit.i, label %bb.g

bb.f:                                             ; preds = %.lr.ph38.i.i.i
  %i.aa = icmp eq ptr %i.u, null
  %i.ab = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.ab, %i.j
  %or.cond43.i.i.i = select i1 %i.aa, i1 true, i1 %.not27.i.i.i
  br i1 %or.cond43.i.i.i, label %_ZNK7obj_mapI4sortPN14struct_factory9value_setEE9find_coreEPS0_.exit.i, label %.lr.ph38.i.i.i.backedge

bb.g:                                             ; preds = %bb.e
  %.old.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i = icmp eq ptr %.old.i.i.i, %i.j
  br i1 %.not27.old.i.i.i, label %_ZNK7obj_mapI4sortPN14struct_factory9value_setEE9find_coreEPS0_.exit.i, label %.lr.ph38.i.i.i.backedge

.lr.ph38.i.i.i.backedge:                          ; preds = %bb.g, %bb.f
  %.137.i.i.i.be = phi ptr [ %i.ab, %bb.f ], [ %.old.i.i.i, %bb.g ]
  br label %.lr.ph38.i.i.i, !llvm.loop !35

_ZNK7obj_mapI4sortPN14struct_factory9value_setEE9find_coreEPS0_.exit.i: ; preds = %bb.c, %bb.b, %bb.g, %bb.f, %bb.e, %.preheader.i.i.i
  %.026.i.i.i = phi ptr [ null, %.preheader.i.i.i ], [ %.137.i.i.i, %bb.e ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.c ], [ %.035.i.i.i, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.026.i.i.i, null
  br i1 %.not, label %_ZNK7obj_mapI4sortPN14struct_factory9value_setEE4findEPS0_RS3_.exit.thread, label %.loopexit

.loopexit:                                        ; preds = %_ZNK7obj_mapI4sortPN14struct_factory9value_setEE9find_coreEPS0_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNK7obj_mapI4sortPN14struct_factory9value_setEE4findEPS0_RS3_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !49 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !50 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %.idx.i = shl nuw nsw i64 %i.ak, 3
  %i.al = getelementptr i8, ptr %i.ah, i64 %.idx.i ; 2 uses
  %.not1.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not1.i.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5beginEv.exit, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %bb.h, %bb.i
  %.sroa.0.0.i = phi ptr [ %i.ao, %bb.i ], [ %i.ah, %bb.h ] ; 3 uses
  %i.am = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !52
  %i.an = icmp ult ptr %i.am, inttoptr (i64 2 to ptr)
  br i1 %i.an, label %bb.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5beginEv.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i4
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ao, %i.al
  br i1 %.not.i.i.i5, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5beginEv.exit, label %.lr.ph.i.i.i4, !llvm.loop !36

_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5beginEv.exit: ; preds = %.lr.ph.i.i.i4, %bb.i, %bb.h
  %.sroa.0.1.i = phi ptr [ %i.ah, %bb.h ], [ %i.al, %bb.i ], [ %.sroa.0.0.i, %.lr.ph.i.i.i4 ]
  %i.ap = load ptr, ptr %.sroa.0.1.i, align 8, !tbaa !19
  br label %bb.k

_ZNK7obj_mapI4sortPN14struct_factory9value_setEE4findEPS0_RS3_.exit.thread: ; preds = %_ZNK7obj_mapI4sortPN14struct_factory9value_setEE9find_coreEPS0_.exit.i, %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %1, ptr %2, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.ar, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !26, !nonnull !27, !align !28
  %i.au = load i32, ptr %i.aq, align 8, !tbaa !11
  %i.av = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.at, i32 noundef %i.au, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %2, i32 noundef 0, ptr noundef null, ptr noundef null)
          to label %_ZN15finite_set_util8mk_emptyEP4sort.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNK7obj_mapI4sortPN14struct_factory9value_setEE4findEPS0_RS3_.exit.thread
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  resume { ptr, i32 } %i.aw

_ZN15finite_set_util8mk_emptyEP4sort.exit:        ; preds = %_ZNK7obj_mapI4sortPN14struct_factory9value_setEE4findEPS0_RS3_.exit.thread
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.k

bb.k:                                             ; preds = %_ZN15finite_set_util8mk_emptyEP4sort.exit, %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5beginEv.exit
  %.0 = phi ptr [ %i.av, %_ZN15finite_set_util8mk_emptyEP4sort.exit ], [ %i.ap, %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5beginEv.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN18finite_set_factory15get_fresh_valueEP4sort(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.parameter, align 8           ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i:   ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !11
  %i.f = load i32, ptr %i.c, align 8, !tbaa !62
  %i.g = icmp eq i32 %i.f, %i.e
  br i1 %i.g, label %_ZNK22finite_set_recognizers13is_finite_setEP4sort.exit.i, label %bb.d

_ZNK22finite_set_recognizers13is_finite_setEP4sort.exit.i: ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !63
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNK22finite_set_recognizers13is_finite_setEP4sort.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !24
  switch i8 %i.n, label %bb.c [
    i8 1, label %_ZNK22finite_set_recognizers13is_finite_setEP4sortRS1_.exit.a
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i
  ], !prof !65

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #9 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.o, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @.str.4, ptr %i.p, align 8, !tbaa !32
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #10
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i:   ; preds = %bb.b
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #9 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.q, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @.str.3, ptr %i.r, align 8, !tbaa !32
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #10
  unreachable

_ZNK22finite_set_recognizers13is_finite_setEP4sortRS1_.exit.a: ; preds = %bb.b
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !66
  br label %bb.e

bb.d:                                             ; preds = %_ZNK22finite_set_recognizers13is_finite_setEP4sort.exit.i, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i, %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 35, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.e

bb.e:                                             ; preds = %_ZNK22finite_set_recognizers13is_finite_setEP4sortRS1_.exit.a, %bb.d
  %.033 = phi ptr [ %i.s, %_ZNK22finite_set_recognizers13is_finite_setEP4sortRS1_.exit.a ], [ null, %bb.d ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN14struct_factory13get_value_setEP4sort(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70   ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !71   ; 4 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit26

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread: ; preds = %bb.e, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %1, ptr %2, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.aa, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26, !nonnull !27, !align !28
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !11
  %i.ae = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.ac, i32 noundef %i.ad, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %2, i32 noundef 0, ptr noundef null, ptr noundef null)
          to label %_ZN15finite_set_util8mk_emptyEP4sort.exit unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  resume { ptr, i32 } %i.af

_ZN15finite_set_util8mk_emptyEP4sort.exit:        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.ag = load ptr, ptr %0, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ae)
  br label %bb.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit26: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aj = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.y)
  %or.cond = icmp eq i32 %i.aj, 1
  br i1 %or.cond, label %bb.g, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit28

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !86, !nonnull !27, !align !28 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(96) %i.al, ptr noundef %.033) ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26, !nonnull !27, !align !28
  %i.as = load i32, ptr %i.a, align 8, !tbaa !11
  %i.at = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ar, i32 noundef %i.as, i32 noundef 1, ptr noundef nonnull %i.ap) ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.at)
  br label %bb.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit28: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit26, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit28
  %.022 = phi i32 [ %i.ax, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit28 ], [ 1, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit26 ] ; 3 uses
  %i.ax = shl i32 %.022, 1                        ; 2 uses
  %i.ay = icmp ult i32 %i.ax, %i.y
  br i1 %i.ay, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit28, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30, !llvm.loop !53

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit28
  %i.az = sub i32 %i.y, %.022
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !19
  %i.bd = zext i32 %.022 to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !26, !nonnull !27, !align !28
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !11
  %i.bj = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bh, i32 noundef %i.bi, i32 noundef 2, ptr noundef %i.bc, ptr noundef %i.bf) ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.bj)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30, %bb.g, %bb.h, %_ZN15finite_set_util8mk_emptyEP4sort.exit
  %.2 = phi ptr [ %i.ae, %_ZN15finite_set_util8mk_emptyEP4sort.exit ], [ %i.bj, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit30 ], [ %i.at, %bb.h ], [ null, %bb.g ]
  ret ptr %.2
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN14struct_factory13get_value_setEP4sort(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN14struct_factoryD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN18finite_set_factoryD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN14struct_factoryD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #9
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #11
  ret void
}

declare noundef zeroext i1 @_ZN14struct_factory15get_some_valuesEP4sortR7obj_refI4expr11ast_managerES6_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN14struct_factory14register_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #1

declare void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN14family_manager12mk_family_idERK6symbol(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager6mk_appEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #9
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTS22finite_set_recognizers", !5, i64 0}
!11 = !{!10, !5, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 _ZTS11ast_manager", !12, i64 0}
!14 = !{!"_ZTS3ast", !5, i64 0, !5, i64 4, !5, i64 6, !5, i64 6, !5, i64 6, !5, i64 8, !5, i64 12}
!15 = !{!"p1 _ZTSN7obj_mapI4sortPN14struct_factory9value_setEE13obj_map_entryE", !12, i64 0}
!16 = !{!"_ZTS14core_hashtableIN7obj_mapI4sortPN14struct_factory9value_setEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE", !15, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"p1 _ZTS4expr", !12, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 _ZTS3ast", !12, i64 0}
!21 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIP3astLb1EEE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJiP3ast6symbolP7zstring8rationaldjEEE", !4, i64 0, !4, i64 32}
!24 = !{!23, !4, i64 32}
end_hunk_0
