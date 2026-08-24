Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cpp?download=true
inline.NumInlined: 552
inline.NumDeleted: 311
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%class.anon.4 = type { ptr, ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { i8 }

$_ZZN6Plugin8tb_transEP14qemu_plugin_tbENKUlvE_clEv = comdat any

$_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZZN6Plugin8tb_transEP14qemu_plugin_tbENUljPvE_8__invokeEjS2_ = comdat any

$_ZN6Plugin7at_exitEv = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_ = comdat any

$_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEESC_SC_SC_SF_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_RSF_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_RSF_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

@qemu_plugin_version = local_unnamed_addr global i32 7, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Top 10 executed TB are:\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/stl_vector.h\00", align 1
@__PRETTY_FUNCTION__._ZNSt6vectorISt4pairImmESaIS1_EE4backEv = private unnamed_addr constant [185 x i8] c"reference std::vector<std::pair<unsigned long, unsigned long>>::back() [_Tp = std::pair<unsigned long, unsigned long>, _Alloc = std::allocator<std::pair<unsigned long, unsigned long>>]\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"!this->empty()\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1

; Function Attrs: mustprogress sspstrong uwtable
define noundef i32 @qemu_plugin_install(i64 noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #18 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, i8 0, i64 56, i1 false)
  tail call void @qemu_plugin_register_vcpu_tb_trans_cb(i64 noundef %0, ptr noundef nonnull @"_ZZ19qemu_plugin_installEN3$_08__invokeEP14qemu_plugin_tbPv", ptr noundef nonnull %i.a)
  tail call void @qemu_plugin_register_atexit_cb(i64 noundef %0, ptr noundef nonnull @"_ZZ19qemu_plugin_installEN3$_18__invokeEPv", ptr noundef nonnull %i.a)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare void @qemu_plugin_register_vcpu_tb_trans_cb(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @qemu_plugin_register_atexit_cb(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define internal void @"_ZZ19qemu_plugin_installEN3$_08__invokeEP14qemu_plugin_tbPv"(ptr noundef %0, ptr noundef %1) #5 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %class.anon.4, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = tail call i64 @qemu_plugin_tb_vaddr(ptr noundef %0)
  store i64 %i.b, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %1, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = call noundef ptr @_ZZN6Plugin8tb_transEP14qemu_plugin_tbENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @qemu_plugin_register_vcpu_tb_exec_cb(ptr noundef %0, ptr noundef nonnull @_ZZN6Plugin8tb_transEP14qemu_plugin_tbENUljPvE_8__invokeEjS2_, i32 noundef 0, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare i64 @qemu_plugin_tb_vaddr(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr noundef ptr @_ZZN6Plugin8tb_transEP14qemu_plugin_tbENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #20
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !7
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = urem i64 %i.f, %i.h                      ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.f, %i.o
  br i1 %i.p, label %.thread, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %bb.e
  %i.q = icmp eq i64 %i.f, %i.t
  br i1 %i.q, label %.thread, label %.lr.ph.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.020.i.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.m, %bb.c ]
  %i.r = load ptr, ptr %.020.i.i.i.i, align 8     ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not18.i.i.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = urem i64 %i.t, %i.h
  %.not19.i.i.i.i = icmp eq i64 %i.u, %i.i
  br i1 %.not19.i.i.i.i, label %bb.d, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.e
  br label %.critedge.i.i, !llvm.loop !8

.critedge.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.v = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %.noexc unwind label %bb.g     ; 5 uses

.noexc:                                           ; preds = %.critedge.i.i
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.f, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = invoke ptr @_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.i, i64 noundef %i.f, ptr noundef nonnull %i.v, i64 noundef 1)
          to label %bb.f unwind label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i ; 2 uses

_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i: ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 32) #21
  br label %.body

.thread:                                          ; preds = %bb.d, %bb.c
  %.sroa.028.0.i.i.ph = phi ptr [ %i.m, %bb.c ], [ %i.r, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i.i.ph, i64 16
  br label %bb.h

bb.f:                                             ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  store atomic i64 0, ptr %i.ab seq_cst, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.a, ptr %i.ac, align 8
  br label %bb.h

bb.g:                                             ; preds = %.critedge.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.z, %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i ]
  %i.ae = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #19 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %.thread, %bb.f
  %i.af = phi ptr [ %i.aa, %.thread ], [ %i.ab, %bb.f ]
  %i.ag = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #19 ; 0 uses
  ret ptr %i.af
}

declare void @qemu_plugin_register_vcpu_tb_exec_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr ptr @_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #19 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8
  invoke void @__cxa_rethrow() #20
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #22
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr %3, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.0
  %i.z = load ptr, ptr %i.y, align 8
  store ptr %3, ptr %i.z, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  store ptr %i.ab, ptr %3, align 8
  store ptr %3, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %3, align 8               ; 2 uses
  %.not11.i = icmp eq ptr %i.ac, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.d, align 8
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = urem i64 %i.ag, %i.af
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ah
  store ptr %3, ptr %i.ai, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.0
  store ptr %i.aa, ptr %i.ak, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit

_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.al = load i64, ptr %i.f, align 8
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.f, align 8
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr void @_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmS0_ISt6atomicImEP6PluginEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmS2_ISt6atomicImEP6PluginEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !41

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1
  store i8 %i.w, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1
  ret ptr %0
}

; Function Attrs: cold mustprogress noinline optsize sspstrong uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %.not50 = icmp ugt i64 %4, %2
  %i.a = add i64 %4, -1
  %or.cond.not = icmp ult i64 %i.a, %2
  br i1 %or.cond.not, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.b:                                             ; preds = %bb.a
  %cond62 = icmp eq i64 %4, 1
  br i1 %cond62, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %3, align 1
  store i8 %i.b, ptr %1, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.d, %bb.c, %bb.a
  %.not51 = icmp eq i64 %5, 0
  %.not52 = icmp eq i64 %2, %4
  %or.cond55 = or i1 %.not52, %.not51
  br i1 %or.cond55, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit56, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %cond61 = icmp eq i64 %5, 1
  br i1 %cond61, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = load i8, ptr %i.d, align 1
  store i8 %i.e, ptr %i.c, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit56

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.d, i64 %5, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit56: ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  br i1 %.not50, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit57

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit56
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %.not53 = icmp ugt ptr %i.f, %i.g
  br i1 %.not53, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %cond60 = icmp eq i64 %4, 1
  br i1 %cond60, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.h = load i8, ptr %3, align 1
  store i8 %i.h, ptr %1, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit57

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit57

bb.l:                                             ; preds = %bb.h
  %.not54 = icmp ult ptr %3, %i.g
  br i1 %.not54, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.i = ptrtoint ptr %3 to i64
  %i.j = ptrtoint ptr %1 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sub i64 %4, %2
  %i.m = getelementptr i8, ptr %1, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.l     ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.o = load i8, ptr %i.n, align 1
  store i8 %i.o, ptr %1, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit57

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.n, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit57

bb.p:                                             ; preds = %bb.l
  %i.p = ptrtoint ptr %i.g to i64
  %i.q = ptrtoint ptr %3 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  switch i64 %i.r, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit58
  ]

bb.q:                                             ; preds = %bb.p
  %i.s = load i8, ptr %3, align 1
  store i8 %i.s, ptr %1, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit58

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %3, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit58: ; preds = %bb.p, %bb.q, %bb.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %4 ; 2 uses
  %i.v = sub i64 %4, %i.r                         ; 2 uses
  switch i64 %i.v, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit57
  ]

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit58
  %i.w = load i8, ptr %i.u, align 1
  store i8 %i.w, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit57

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.u, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit57: ; preds = %bb.t, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit58, %bb.o, %bb.n, %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit56
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #20
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !10

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #18 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr %i.z, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %5 = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %5)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = load i64, ptr %i.h, align 8
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !10

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #18 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i64, ptr %i.d, align 8
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.p) #21
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8
  store i64 %.0, ptr %i.d, align 8
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.c, align 1
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.r = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %1, align 8                ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.t = load i8, ptr %i.s, align 1
  store i8 %i.t, ptr %i.r, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.s, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.u, align 8
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.b
  store i8 0, ptr %i.w, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold mustprogress noinline optsize sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!6 = !{}
!7 = !{i64 8}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = !{!14, !16}
!14 = distinct !{!14, !15, !"_ZSt19__relocate_object_aISt4pairImmES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!15 = distinct !{!15, !"_ZSt19__relocate_object_aISt4pairImmES1_SaIS1_EEvPT_PT0_RT1_"}
!16 = distinct !{!16, !15, !"_ZSt19__relocate_object_aISt4pairImmES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!17 = distinct !{!17, !9}
!18 = !{!"auto-init"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!21 = distinct !{!21, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!24 = distinct !{!24, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!25 = !{!23, !20}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
