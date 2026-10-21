Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/s_entity?download=true
inline.NumInlined: 401
inline.NumDeleted: 190
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%class.LogStream = type { ptr, %class.StringStreamBuffer, %class.DummyStreamBuffer, %"class.std::basic_ostream", %"class.std::basic_ostream", %class.StreamProxy, %class.StreamProxy }
%class.StringStreamBuffer = type <{ %"class.std::basic_streambuf", %"class.std::function", i32, [256 x i8], [4 x i8] }>
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%class.DummyStreamBuffer = type { %"class.std::basic_streambuf" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.StreamProxy = type { ptr }
%"struct.std::array" = type { [36 x ptr] }
%class.StackUnroller = type <{ ptr, i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, std::__detail::_Identity, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true>>::_Scoped_node" = type { ptr, ptr }

$_ZN13StackUnrollerD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJRKS7_EEEPS8_DpOT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"registered_entities\00", align 1
@errorstream = external thread_local global %class.LogStream, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"LuaEntity name \22\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\22 not defined\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ObjectRef\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"luaentities\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"on_activate\00", align 1
@__FUNCTION__._ZN15ScriptApiEntity18luaentity_ActivateEtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj = private unnamed_addr constant [19 x i8] c"luaentity_Activate\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"on_deactivate\00", align 1
@__FUNCTION__._ZN15ScriptApiEntity20luaentity_DeactivateEtb = private unnamed_addr constant [21 x i8] c"luaentity_Deactivate\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"get_staticdata\00", align 1
@__FUNCTION__._ZN15ScriptApiEntity23luaentity_GetStaticdataB5cxx11Et = private unnamed_addr constant [24 x i8] c"luaentity_GetStaticdata\00", align 1
@object_property_keys = external local_unnamed_addr global %"struct.std::array", align 8
@.str.11 = private unnamed_addr constant [85 x i8] c"Reading initial object properties directly from an entity definition is deprecated, \00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"move it to the 'initial_properties' table instead. \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"(Property '\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"' in entity '\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"')\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"initial_properties\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"on_step\00", align 1
@__FUNCTION__._ZN15ScriptApiEntity14luaentity_StepEtfPK19collisionMoveResult = private unnamed_addr constant [15 x i8] c"luaentity_Step\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"on_punch\00", align 1
@__FUNCTION__._ZN15ScriptApiEntity15luaentity_PunchEtP18ServerActiveObjectfRK16ToolCapabilitiesN4core8vector3dIfEEi = private unnamed_addr constant [16 x i8] c"luaentity_Punch\00", align 1
@__FUNCTION__._ZN15ScriptApiEntity29luaentity_run_simple_callbackEtP18ServerActiveObjectPKc = private unnamed_addr constant [30 x i8] c"luaentity_run_simple_callback\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"on_death\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"on_rightclick\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"on_attach_child\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"on_detach_child\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"on_detach\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN15ScriptApiEntity13luaentity_AddEtPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.StackUnroller, align 8       ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #19
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !10
  %i.j = getelementptr i8, ptr %i.i, i64 -24      ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 6 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !11   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.q = tail call i64 @pthread_self() #20
  store i64 %i.q, ptr %i.p, align 8, !tbaa !13
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %i.r = add nsw i32 %i.n, 1
  store i32 %i.r, ptr %i.m, align 4, !tbaa !11
  %i.s = load i64, ptr %i.j, align 8
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129) %i.t)
          to label %bb.d unwind label %bb.w

bb.d:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !10
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.z, ptr %3, align 8, !tbaa !29
  %i.aa = invoke i32 @lua_gettop(ptr noundef %i.z)
          to label %bb.e unwind label %bb.x       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !30
  invoke void @lua_getfield(ptr noundef %i.z, i32 noundef -10002, ptr noundef nonnull @.str)
          to label %bb.f unwind label %bb.an

bb.f:                                             ; preds = %bb.e
  invoke void @lua_getfield(ptr noundef %i.z, i32 noundef -1, ptr noundef nonnull @.str.1)
          to label %bb.g unwind label %bb.an

bb.g:                                             ; preds = %bb.f
  invoke void @luaL_checktype(ptr noundef %i.z, i32 noundef -1, i32 noundef 5)
          to label %bb.h unwind label %bb.an

bb.h:                                             ; preds = %bb.g
  invoke void @lua_pushstring(ptr noundef %i.z, ptr noundef %2)
          to label %bb.i unwind label %bb.an

bb.i:                                             ; preds = %bb.h
  invoke void @lua_gettable(ptr noundef %i.z, i32 noundef -2)
          to label %bb.j unwind label %bb.an

bb.j:                                             ; preds = %bb.i
  %i.ac = invoke i32 @lua_type(ptr noundef %i.z, i32 noundef -1)
          to label %bb.k unwind label %bb.an

bb.k:                                             ; preds = %bb.j
  %.not = icmp eq i32 %i.ac, 5                    ; 2 uses
  br i1 %.not, label %bb.y, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.l, %bb.m
  %i.ad = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !92, !nonnull !36, !align !93 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.noexc unwind label %bb.an, !inline_history !83

.noexc:                                           ; preds = %_ZTW11errorstream.exit
  %.v.i = select i1 %i.ah, i64 976, i64 984
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.2, ptr %i.b, align 8, !tbaa !37
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.n unwind label %bb.an      ; 0 uses

bb.n:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !tbaa !37
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.o unwind label %bb.an      ; 4 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %4 = load ptr, ptr %i.ak, align 8, !tbaa !38    ; 5 uses
  %.not.i.i48 = icmp eq ptr %4, null
  br i1 %.not.i.i48, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = getelementptr i8, ptr %5, i64 -24
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %10 = load i32, ptr %9, align 8, !tbaa !45
  %.not.i45.a = icmp eq i32 %10, 0
  br i1 %.not.i45.a, label %.thread.i, label %11

11:                                               ; preds = %bb.p
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc52 unwind label %bb.an

.noexc52:                                         ; preds = %11
  %.pre.i5.i = load ptr, ptr %i.ak, align 8, !tbaa !38
  br label %.thread.i

.thread.i:                                        ; preds = %.noexc52, %bb.p
  %12 = phi ptr [ %.pre.i5.i, %.noexc52 ], [ %4, %bb.p ]
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.3, i64 noundef 13)
          to label %_ZN11StreamProxylsEPKc.exit44 unwind label %bb.an ; 0 uses

_ZN11StreamProxylsEPKc.exit44:                    ; preds = %.thread.i
  %.pr = load ptr, ptr %i.ak, align 8, !tbaa !38  ; 5 uses
  %.not.i45 = icmp eq ptr %.pr, null
  br i1 %.not.i45, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.q

bb.q:                                             ; preds = %_ZN11StreamProxylsEPKc.exit44
  %i.al = load ptr, ptr %.pr, align 8, !tbaa !10
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.pr, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !45
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
          to label %.noexc46 unwind label %bb.an

.noexc46:                                         ; preds = %bb.r
  %.pre.i = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre57 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.s

bb.s:                                             ; preds = %.noexc46, %bb.q
  %i.as = phi i64 [ %.pre57, %.noexc46 ], [ %i.an, %bb.q ]
  %i.at = phi ptr [ %.pre.i, %.noexc46 ], [ %.pr, %bb.q ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc48 unwind label %bb.an

.noexc48:                                         ; preds = %bb.t
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !58
  %.not.i1.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 67
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !59
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aw)
          to label %.noexc49 unwind label %bb.an

.noexc49:                                         ; preds = %bb.v
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef signext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(570) %i.aw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.an, !inline_history !84

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc49, %bb.u
  %.0.i.i.i = phi i8 [ %i.ba, %bb.u ], [ %i.be, %.noexc49 ]
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i8 noundef signext %.0.i.i.i)
          to label %.noexc51 unwind label %bb.an

.noexc51:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.an ; 0 uses

bb.w:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.x:                                             ; preds = %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.y:                                             ; preds = %bb.k
  %i.bj = invoke i32 @lua_gettop(ptr noundef %i.z)
          to label %bb.z unwind label %bb.an

bb.z:                                             ; preds = %bb.y
  invoke void @lua_createtable(ptr noundef %i.z, i32 noundef 0, i32 noundef 0)
          to label %bb.aa unwind label %bb.an

bb.aa:                                            ; preds = %bb.z
  %i.bk = invoke i32 @lua_gettop(ptr noundef %i.z)
          to label %bb.ab unwind label %bb.an

bb.ab:                                            ; preds = %bb.aa
  invoke void @lua_pushvalue(ptr noundef %i.z, i32 noundef %i.bj)
          to label %bb.ac unwind label %bb.an

bb.ac:                                            ; preds = %bb.ab
  %i.bl = invoke i32 @lua_setmetatable(ptr noundef %i.z, i32 noundef -2)
          to label %bb.ad unwind label %bb.an     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  invoke void @_Z14push_objectRefP9lua_Statet(ptr noundef %i.z, i16 noundef zeroext %1)
          to label %bb.ae unwind label %bb.an

bb.ae:                                            ; preds = %bb.ad
  invoke void @luaL_checktype(ptr noundef %i.z, i32 noundef -1, i32 noundef 7)
          to label %bb.af unwind label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.bm = invoke ptr @luaL_checkudata(ptr noundef %i.z, i32 noundef -1, ptr noundef nonnull @.str.4)
          to label %bb.ag unwind label %bb.an     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  invoke void @lua_setfield(ptr noundef %i.z, i32 noundef -2, ptr noundef nonnull @.str.5)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag
  invoke void @lua_getfield(ptr noundef %i.z, i32 noundef -10002, ptr noundef nonnull @.str)
          to label %bb.ai unwind label %bb.an

bb.ai:                                            ; preds = %bb.ah
  invoke void @lua_getfield(ptr noundef %i.z, i32 noundef -1, ptr noundef nonnull @.str.6)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  invoke void @luaL_checktype(ptr noundef %i.z, i32 noundef -1, i32 noundef 5)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.bn = uitofp nsz i16 %1 to double
  invoke void @lua_pushnumber(ptr noundef %i.z, double noundef %i.bn)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  invoke void @lua_pushvalue(ptr noundef %i.z, i32 noundef %i.bk)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @lua_settable(ptr noundef %i.z, i32 noundef -3)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.an

bb.an:                                            ; preds = %.noexc51, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc49, %bb.v, %bb.t, %.thread.i, %11, %bb.r, %bb.n, %.noexc, %_ZTW11errorstream.exit, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.y, %bb.z, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #18
  br label %bb.ap

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.o, %_ZN11StreamProxylsEPKc.exit44, %.noexc51, %bb.am
  invoke void @lua_settop(ptr noundef %i.z, i32 noundef %i.aa)
          to label %_ZN13StackUnrollerD2Ev.exit unwind label %bb.ao

bb.ao:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #21
  unreachable

_ZN13StackUnrollerD2Ev.exit:                      ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.br = load i32, ptr %i.m, align 4, !tbaa !11
  %i.bs = add nsw i32 %i.br, -1
  store i32 %i.bs, ptr %i.m, align 4, !tbaa !11
  %i.bt = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #18 ; 0 uses
  ret i1 %.not

bb.ap:                                            ; preds = %bb.an, %bb.x
  %.pn37.pn = phi { ptr, i32 } [ %i.bo, %bb.an ], [ %i.bi, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %bb.ap ], [ %i.bh, %bb.w ]
  %i.bu = load i32, ptr %i.m, align 4, !tbaa !11
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.m, align 4, !tbaa !11
  %i.bw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #18 ; 0 uses
  resume { ptr, i32 } %.pn37.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129)) local_unnamed_addr #2

declare void @lua_getfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @luaL_checktype(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_gettable(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #2

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_setmetatable(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z14push_objectRefP9lua_Statet(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare ptr @luaL_checkudata(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #2

declare void @lua_settable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13StackUnrollerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  invoke void @lua_settop(ptr noundef %i.a, i32 noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ScriptApiEntity18luaentity_ActivateEtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.StackUnroller, align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #19
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  %i.h = getelementptr i8, ptr %i.g, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 6 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.o = tail call i64 @pthread_self() #20
  store i64 %i.o, ptr %i.n, align 8, !tbaa !13
  br label %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit

_ZN11LockCheckerC2EPiPNSt6thread2idE.exit:        ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %i.p = add nsw i32 %i.l, 1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !11
  %i.q = load i64, ptr %i.h, align 8
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  invoke void @_ZN13ScriptApiBase12realityCheckEv(ptr noundef nonnull align 8 dereferenceable(129) %i.r)
          to label %bb.d unwind label %bb.t

bb.d:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !10
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27   ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %i.x, ptr %4, align 8, !tbaa !29
  %i.y = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.e unwind label %bb.u       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !30
  invoke void @lua_rawgeti(ptr noundef %i.x, i32 noundef -10000, i32 noundef 4)
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  invoke void @_Z13luaentity_getP9lua_Statet(ptr noundef %i.x, i16 noundef zeroext %1)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke i32 @lua_gettop(ptr noundef %i.x)
          to label %bb.i unwind label %bb.v       ; 2 uses

bb.i:                                             ; preds = %bb.h
  invoke void @lua_getfield(ptr noundef %i.x, i32 noundef -1, ptr noundef nonnull @.str.7)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.ac = invoke i32 @lua_type(ptr noundef %i.x, i32 noundef -1)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @luaL_checktype(ptr noundef %i.x, i32 noundef -1, i32 noundef 6)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  invoke void @lua_pushvalue(ptr noundef %i.x, i32 noundef %i.ab)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %2, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !61
  invoke void @lua_pushlstring(ptr noundef %i.x, ptr noundef %i.ae, i64 noundef %i.ag)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ah = zext i32 %3 to i64
  invoke void @lua_pushinteger(ptr noundef %i.x, i64 noundef %i.ah)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ai = load ptr, ptr %0, align 8, !tbaa !10
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  invoke void @_ZN13ScriptApiBase21setOriginFromTableRawEiPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.al, i32 noundef %i.ab, ptr noundef nonnull @__FUNCTION__._ZN15ScriptApiEntity18luaentity_ActivateEtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.am = invoke i32 @lua_pcall(ptr noundef %i.x, i32 noundef 3, i32 noundef 0, i32 noundef %i.aa)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = load ptr, ptr %0, align 8, !tbaa !10
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  invoke void @_ZN13ScriptApiBase11scriptErrorEiPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.aq, i32 noundef %i.am, ptr noundef nonnull @__FUNCTION__._ZN15ScriptApiEntity18luaentity_ActivateEtRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj)
          to label %bb.x unwind label %bb.v

bb.t:                                             ; preds = %_ZN11LockCheckerC2EPiPNSt6thread2idE.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab
end_hunk_0
