inline.NumInlined: 684
inline.NumDeleted: 352
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.LogMessage = type { i8, %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
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
%"class.duckdb_re2::RegexpStatus" = type { i32, %"class.duckdb_re2::StringPiece", ptr }
%"class.duckdb_re2::StringPiece" = type { ptr, i64 }
%"class.std::unique_ptr.18" = type { %"struct.std::__uniq_ptr_data.19" }
%"struct.std::__uniq_ptr_data.19" = type { %"class.std::__uniq_ptr_impl.20" }
%"class.std::__uniq_ptr_impl.20" = type { %"class.std::tuple.21" }
%"class.std::tuple.21" = type { %"struct.std::_Tuple_impl.22" }
%"struct.std::_Tuple_impl.22" = type { %"struct.std::_Head_base.25" }
%"struct.std::_Head_base.25" = type { ptr }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", ptr }

$__clang_call_terminate = comdat any

$_ZN10LogMessageD2Ev = comdat any

$_ZN10duckdb_re212RegexpStatusD2Ev = comdat any

$_ZNSt10unique_ptrIN10duckdb_re210SparseSetTIvEESt14default_deleteIS2_EED2Ev = comdat any

$_ZNSt19__shrink_to_fit_auxISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISB_EELb1EE8_S_do_itERSD_ = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE17_M_realloc_insertIJS6_RS9_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_ = comdat any

$_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag = comdat any

@.str.1 = private unnamed_addr constant [39 x i8] c"RE2::Set::Add() called after compiling\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Error parsing '\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"': \00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"RE2::Set::Compile() called more than once\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"RE2::Set::Match() called before compiling\00", align 1
@_ZN10duckdb_re25hooks7contextE = external thread_local local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"DFA out of memory: \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"program size \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"list count \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"bytemap range \00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"RE2::Set::Match() matched, but no matches returned?!\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.12 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN10duckdb_re23RE23SetC1ERKNS0_7OptionsENS0_6AnchorE = hidden unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN10duckdb_re23RE23SetC2ERKNS0_7OptionsENS0_6AnchorE
@_ZN10duckdb_re23RE23SetD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10duckdb_re23RE23SetD2Ev
@_ZN10duckdb_re23RE23SetC1EOS1_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN10duckdb_re23RE23SetC2EOS1_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN10duckdb_re23RE23SetC2ERKNS0_7OptionsENS0_6AnchorE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 28), (32, 57), (60, 72)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(23) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.c, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i8 0, i64 25, i1 false)
  store i8 1, ptr %i.e, align 2, !tbaa !33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10duckdb_re23RE23SetD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(72) dereferenceable(72) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.e = phi ptr [ %i.c, %bb.a ], [ %i.u, %bb.c ]
  %i.f = phi ptr [ %i.d, %bb.a ], [ %i.v, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN10duckdb_re24ProgEEclEPS1_.exit.i

_ZNKSt14default_deleteIN10duckdb_re24ProgEEclEPS1_.exit.i: ; preds = %._crit_edge
  tail call void @_ZN10duckdb_re24ProgD1Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %i.h) #18
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #19
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !35
  %.pre7 = load ptr, ptr %i.b, align 8, !tbaa !34
  br label %_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt14default_deleteIN10duckdb_re24ProgEEclEPS1_.exit.i
  %i.i = phi ptr [ %i.e, %._crit_edge ], [ %.pre7, %_ZNKSt14default_deleteIN10duckdb_re24ProgEEclEPS1_.exit.i ] ; 2 uses
  %i.j = phi ptr [ %i.f, %._crit_edge ], [ %.pre, %_ZNKSt14default_deleteIN10duckdb_re24ProgEEclEPS1_.exit.i ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i ], [ %i.j, %_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.k) #19
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EED2Ev.exit
  %i.o = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i ], [ %i.j, %_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #19
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.p = phi ptr [ %i.v, %bb.c ], [ %i.d, %bb.a ]
  %.06 = phi i64 [ %i.t, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %.06
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  invoke void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.t = add nuw i64 %.06, 1                      ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 40
  %i.aa = icmp ult i64 %i.t, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !46

bb.d:                                             ; preds = %.lr.ph
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #20
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN10duckdb_re23RE23SetC2EOS1_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 28), (32, 57), (60, 72)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EE5resetEPS1_.exit:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.e, align 8, !tbaa !47
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  store ptr %i.i, ptr %i.g, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !49, !range !50, !noundef !51
  store i8 %i.l, ptr %i.j, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  store i32 %i.o, ptr %i.m, align 4, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36
  store i64 %i.r, ptr %i.p, align 8, !tbaa !36
  store i8 0, ptr %i.k, align 8, !tbaa !49
  store i32 0, ptr %i.n, align 4, !tbaa !31
  store ptr null, ptr %i.q, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN10duckdb_re23RE23SetaSEOS1_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN10duckdb_re23RE23SetD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 24, i1 false), !tbaa.struct !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.e, align 8, !tbaa !47
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  store ptr %i.i, ptr %i.g, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !49, !range !50, !noundef !51
  store i8 %i.l, ptr %i.j, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  store i32 %i.o, ptr %i.m, align 4, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36
  store i64 %i.r, ptr %i.p, align 8, !tbaa !36
  store i8 0, ptr %i.k, align 8, !tbaa !49
  store i32 0, ptr %i.n, align 4, !tbaa !31
  store ptr null, ptr %i.q, align 8, !tbaa !36
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN10duckdb_re23RE23Set3AddERKNS_11StringPieceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef captures(address) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.LogMessage, align 8          ; 11 uses
  %4 = alloca %"class.duckdb_re2::RegexpStatus", align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %class.LogMessage, align 8          ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca [2 x ptr], align 16               ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i8, ptr %i.d, align 8, !tbaa !49, !range !50, !noundef !51
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i8 0, ptr %3, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.g)
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.1, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.i = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !61
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.k = getelementptr i8, ptr %i.i, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %i.l
  store ptr %i.j, ptr %i.m, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.n, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.p) #19
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.n, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #18
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.az

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ba

bb.d:                                             ; preds = %bb.a
  %i.v = tail call noundef i32 @_ZNK10duckdb_re23RE27Options10ParseFlagsEv(ptr noundef nonnull align 8 dereferenceable(23) %0) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i32 0, ptr %4, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.x = invoke noundef ptr @_ZN10duckdb_re26Regexp5ParseERKNS_11StringPieceENS0_10ParseFlagsEPNS_12RegexpStatusE(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.v, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.o       ; 6 uses

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNK10duckdb_re212RegexpStatus4TextB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %2, align 8, !tbaa !37     ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  %i.ac = load ptr, ptr %5, align 8, !tbaa !37    ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad                ; 2 uses
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.ae, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.ae, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !68 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %.not21.i = icmp eq ptr %5, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.j, !prof !69

bb.j:                                             ; preds = %bb.i
  switch i64 %i.ag, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !70
  store i8 %i.ai, ptr %i.z, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.ac, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !68 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !68
  %i.al = load ptr, ptr %2, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !70
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %2, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load <2 x i64>, ptr %i.ao, align 8, !tbaa !70
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !70
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !70
  store ptr %i.ac, ptr %2, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !tbaa !70
  store <2 x i64> %i.at, ptr %i.as, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.z, ptr %5, align 8, !tbaa !37
  store i64 %i.aq, ptr %i.ad, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ad, ptr %5, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.au = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.z, %bb.m ], [ %i.ad, %bb.n ], [ %i.ac, %bb.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !68
  store i8 0, ptr %i.au, align 1, !tbaa !70
  %i.aw = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.aw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.q

bb.o:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.p:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.ay

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !71, !range !50, !noundef !51
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.r, label %bb.aw

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i8 0, ptr %6, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.be)
          to label %_ZN10LogMessageC2EPKci.exit unwind label %bb.u

_ZN10LogMessageC2EPKci.exit:                      ; preds = %bb.r
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re23RE23Set7CompileEv:bb.a
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 4 uses
  %i.an = sub nsw i64 %i.ak, %indvars.iv.ph
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader45, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader45 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader45 ]
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv.prol
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.prol
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !76
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !86

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader45
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader45 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.as = sub nsw i64 %indvars.iv.ph, %i.ak
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge, label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.au = shl nuw nsw i64 %i.ak, 3
  %scevgep = getelementptr i8, ptr %i.am, i64 %i.au
  %scevgep43 = getelementptr i8, ptr %.pre, i64 32
  %i.av = mul nuw nsw i64 %i.ak, 40
  %scevgep44 = getelementptr i8, ptr %.pre, i64 %i.av
  %bound0 = icmp ult ptr %i.am, %scevgep44
  %bound1 = icmp ult ptr %scevgep43, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.ak, 3                    ; 2 uses
  %i.aw = icmp eq i64 %n.mod.vf, 0
  %i.ax = select i1 %i.aw, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.ak, %i.ax               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %index
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %index
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %index
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !43, !alias.scope !88
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !43, !alias.scope !88
  %i.bi = insertelement <2 x ptr> poison, ptr %i.bg, i64 0
  %i.bj = insertelement <2 x ptr> %i.bi, ptr %i.bh, i64 1
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !43, !alias.scope !88
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !43, !alias.scope !88
  %i.bm = insertelement <2 x ptr> poison, ptr %i.bk, i64 0
  %i.bn = insertelement <2 x ptr> %i.bm, ptr %i.bl, i64 1
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <2 x ptr> %i.bj, ptr %i.bo, align 8, !tbaa !76, !alias.scope !91, !noalias !88
  store <2 x ptr> %i.bn, ptr %i.bp, align 8, !tbaa !76, !alias.scope !91, !noalias !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %.lr.ph.preheader45, label %vector.body, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZN10duckdb_re28PODArrayIPNS_6RegexpEEC2Ei.exit
  %i.br = load ptr, ptr %i.t, align 8, !tbaa !34  ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.br, %.pre
  br i1 %.not.i.i21, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE5clearEv.exit, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %._crit_edge, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bv, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.bs = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i22
  tail call void @_ZdlPv(ptr noundef %i.bs) #19
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bv, %i.br
  br i1 %.not.i.i.i.i23, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i22, !llvm.loop !41

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i.i
  store ptr %.pre, ptr %i.t, align 8, !tbaa !34
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE5clearEv.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE5clearEv.exit: ; preds = %._crit_edge, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !48
  %i.by = icmp eq ptr %i.bx, %.pre
  br i1 %i.by, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE13shrink_to_fitEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE5clearEv.exit
  %i.bz = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISB_EELb1EE8_S_do_itERSD_(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #18 ; 0 uses
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE13shrink_to_fitEv.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !43
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv.next
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !43
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv.next.1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !43
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.1
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !76
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cm = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %indvars.iv.next.2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !43
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next.2
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !76
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.ak
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !96

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE13shrink_to_fitEv.exit: ; preds = %bb.h, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE5clearEv.exit
  %i.cq = invoke noundef i32 @_ZNK10duckdb_re23RE27Options10ParseFlagsEv(ptr noundef nonnull align 8 dereferenceable(23) %0)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE13shrink_to_fitEv.exit
  %i.cr = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.cs = invoke noundef ptr @_ZN10duckdb_re26Regexp9AlternateEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.am, i32 noundef %i.cr, i32 noundef %i.cq)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !14
  %i.cw = load i64, ptr %0, align 8, !tbaa !97
  %i.cx = invoke noundef ptr @_ZN10duckdb_re24Prog10CompileSetEPNS_6RegexpENS_3RE26AnchorEl(ptr noundef %i.cs, i32 noundef %i.cv, i64 noundef %i.cw)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !36 ; 3 uses
  store ptr %i.cx, ptr %i.ct, align 8, !tbaa !36
  %.not.i.i24 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i24, label %_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN10duckdb_re24ProgEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN10duckdb_re24ProgEEclEPS1_.exit.i.i: ; preds = %bb.k
  tail call void @_ZN10duckdb_re24ProgD1Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %i.cy) #18
  tail call void @_ZdlPv(ptr noundef nonnull %i.cy) #19
  br label %_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN10duckdb_re24ProgEEclEPS1_.exit.i.i
  invoke void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cs)
          to label %_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit unwind label %bb.m

_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit:  ; preds = %_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !36
  %i.da = icmp ne ptr %i.cz, null
  tail call void @_ZdlPv(ptr noundef nonnull %i.am) #19
  br label %bb.n

bb.l:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE13shrink_to_fitEv.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit27

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN10duckdb_re24ProgESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.j, %bb.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit27

_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit27: ; preds = %bb.l, %bb.m
  %.pn17 = phi { ptr, i32 } [ %i.db, %bb.l ], [ %i.dc, %bb.m ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.am) #19
  br label %bb.o

bb.n:                                             ; preds = %_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit, %_ZN10LogMessageD2Ev.exit
  %.0 = phi i1 [ false, %_ZN10LogMessageD2Ev.exit ], [ %i.da, %_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit ]
  ret i1 %.0

bb.o:                                             ; preds = %_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit27, %bb.c
  %.pn19 = phi { ptr, i32 } [ %i.r, %bb.c ], [ %.pn17, %_ZN10duckdb_re28PODArrayIPNS_6RegexpEED2Ev.exit27 ]
  resume { ptr, i32 } %.pn19
}

declare noundef ptr @_ZN10duckdb_re26Regexp9AlternateEPPS0_iNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN10duckdb_re24Prog10CompileSetEPNS_6RegexpENS_3RE26AnchorEl(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK10duckdb_re23RE23Set5MatchERKNS_11StringPieceEPSt6vectorIiSaIiEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK10duckdb_re23RE23Set5MatchERKNS_11StringPieceEPSt6vectorIiSaIiEEPNS1_9ErrorInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef null)
  ret i1 %i.a
}

; Function Attrs: uwtable
define hidden noundef zeroext i1 @_ZNK10duckdb_re23RE23Set5MatchERKNS_11StringPieceEPSt6vectorIiSaIiEEPNS1_9ErrorInfoE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"class.std::unique_ptr.18", align 8 ; 6 uses
  %6 = alloca %class.LogMessage, align 8          ; 11 uses
  %7 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i8, ptr %i.b, align 8, !tbaa !49, !range !50, !noundef !51
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !98
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i8 0, ptr %4, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.e)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.5, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.g = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !61
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.n) #19
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #18
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.an

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ao

bb.f:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr @_ZTHN10duckdb_re25hooks7contextE, null
  br i1 %.not.i, label %_ZTWN10duckdb_re25hooks7contextE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZTHN10duckdb_re25hooks7contextE()
  br label %_ZTWN10duckdb_re25hooks7contextE.exit

_ZTWN10duckdb_re25hooks7contextE.exit:            ; preds = %bb.f, %bb.g
  %i.t = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN10duckdb_re25hooks7contextE)
  store ptr null, ptr %i.t, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !103
  %.not34 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not34, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZTWN10duckdb_re25hooks7contextE.exit
  %i.u = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %bb.i unwind label %bb.k       ; 9 uses

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31   ; 6 uses
  store i32 0, ptr %i.u, align 8, !tbaa !106
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i, !prof !69

.noexc.i.i:                                       ; preds = %bb.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i: ; preds = %bb.i
  %i.y = zext nneg i32 %i.w to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 2 uses
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #21
          to label %.noexc47 unwind label %bb.l   ; 3 uses

.noexc47:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.w, ptr %i.ab, align 8, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !119
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #21
          to label %bb.j unwind label %.thread.i

bb.j:                                             ; preds = %.noexc47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %i.w, ptr %i.ae, align 8, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !119
  %.not.i46 = icmp eq i32 %i.w, 0
  br i1 %.not.i46, label %_ZNSt10unique_ptrIN10duckdb_re210SparseSetTIvEESt14default_deleteIS2_EE5resetEPS2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.ag = add nsw i32 %i.w, -1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aa, i8 -85, i64 %i.aj, i1 false), !tbaa !3
  br label %_ZNSt10unique_ptrIN10duckdb_re210SparseSetTIvEESt14default_deleteIS2_EE5resetEPS2_.exit

.thread.i:                                        ; preds = %.noexc47
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #19
  br label %.body

_ZNSt10unique_ptrIN10duckdb_re210SparseSetTIvEESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.j, %.lr.ph.i.i
  store ptr %i.u, ptr %5, align 8, !tbaa !120
  %i.al = load ptr, ptr %2, align 8, !tbaa !121   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !123
  %.not.i.i48 = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i48, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt10unique_ptrIN10duckdb_re210SparseSetTIvEESt14default_deleteIS2_EE5resetEPS2_.exit
  store ptr %i.al, ptr %i.am, align 8, !tbaa !123
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

bb.k:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i, %.noexc.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.ak, %.thread.i ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #19
  br label %bb.am

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %_ZNSt10unique_ptrIN10duckdb_re210SparseSetTIvEESt14default_deleteIS2_EE5resetEPS2_.exit, %_ZTWN10duckdb_re25hooks7contextE.exit
  %i.aq = phi ptr [ %i.u, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.u, %_ZNSt10unique_ptrIN10duckdb_re210SparseSetTIvEESt14default_deleteIS2_EE5resetEPS2_.exit ], [ null, %_ZTWN10duckdb_re25hooks7contextE.exit ] ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !36
  %i.at = invoke noundef zeroext i1 @_ZN10duckdb_re24Prog9SearchDFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_PbPNS_10SparseSetTIvEE(ptr noundef nonnull align 8 dereferenceable(432) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef 3, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %i.aq)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.au = load i8, ptr %i.a, align 1, !tbaa !12, !range !50, !noundef !51
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !71, !range !50, !noundef !51
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i8 0, ptr %6, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.az)
          to label %_ZN10LogMessageC2EPKci.exit unwind label %bb.t

_ZN10LogMessageC2EPKci.exit:                      ; preds = %bb.o
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.6, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51: ; preds = %_ZN10LogMessageC2EPKci.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.7, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51
  %i.bc = load ptr, ptr %i.ar, align 8, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !124
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i32 noundef %i.be)
end_hunk_1
begin_hunk_2_@_ZNSt10unique_ptrIN10duckdb_re210SparseSetTIvEESt14default_deleteIS2_EED2Ev:bb.a

bb.d:                                             ; preds = %_ZN10duckdb_re28PODArrayIiED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #19
  br label %_ZNKSt14default_deleteIN10duckdb_re210SparseSetTIvEEEclEPS2_.exit

_ZNKSt14default_deleteIN10duckdb_re210SparseSetTIvEEEclEPS2_.exit: ; preds = %_ZN10duckdb_re28PODArrayIiED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN10duckdb_re210SparseSetTIvEEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN10duckdb_re24ProgD1Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISB_EELb1EE8_S_do_itERSD_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 40
  %i.h = icmp ugt i64 %i.g, 230584300921369395
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit.thread: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr %i.j, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21
          to label %.lr.ph.i.i.i.i.i.i unwind label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader.i.i ] ; 6 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.preheader.i.i ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !82
  %i.m = load ptr, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !68   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.m, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !37
  %i.t = load i64, ptr %i.n, align 8, !tbaa !70
  store i64 %i.t, ptr %i.l, align 8, !tbaa !70
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !68
  br label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %i.u = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.q, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !68
  store ptr %i.n, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !37
  store i64 0, ptr %i.v, align 8, !tbaa !68
  store i8 0, ptr %i.n, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43
  store ptr %i.z, ptr %i.x, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !163

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.ac, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %.09) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit unwind label %bb.e

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEJSA_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !35    ; 4 uses
  %.pre16 = load ptr, ptr %i.b, align 8, !tbaa !34 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %0, align 8, !tbaa !35
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !34
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !48
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre16
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit ] ; 3 uses
  %i.ag = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ag) #19
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.aj, %.pre16
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit.thread, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit
  %i.ak = phi ptr [ %i.a, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit.thread ], [ %.pre, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSA_SC_EEEvEET_SK_RKSB_.exit ], [ %.pre, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEEvPT_.exit.i.i.i ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ak) #19
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit: ; preds = %bb.d, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_EvT_SC_RSaIT0_E.exit.i ], [ true, %bb.d ]
  ret i1 %.0

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EED2Ev.exit.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #20
  unreachable
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE17_M_realloc_insertIJS6_RS9_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i.a = icmp eq i64 %i.l, 0
  br i1 %.not.i.a, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_M_allocateEm.exit, label %4

4:                                                ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE12_M_check_lenEmPKc.exit
  %5 = mul nuw nsw i64 %i.l, 40
  %6 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #21
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE12_M_check_lenEmPKc.exit, %4
  %7 = phi ptr [ %6, %4 ], [ null, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %i.n ; 5 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %9, ptr %8, align 8, !tbaa !82
  %10 = load ptr, ptr %2, align 8, !tbaa !37      ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_M_allocateEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !68   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %i.r, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_M_allocateEm.exit
  store ptr %10, ptr %8, align 8, !tbaa !37
  %i.s = load i64, ptr %11, align 8, !tbaa !70
  store i64 %i.s, ptr %9, align 8, !tbaa !70
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !68
  store ptr %11, ptr %2, align 8, !tbaa !37
  store i64 0, ptr %i.u, align 8, !tbaa !68
  store i8 0, ptr %11, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.x = load ptr, ptr %3, align 8, !tbaa !76
  store ptr %i.x, ptr %i.w, align 8, !tbaa !43
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %7, %bb.d ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %bb.d ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.y, ptr %.012.i.i.i.i, align 8, !tbaa !82, !alias.scope !164, !noalias !167
  %i.z = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !37, !alias.scope !167, !noalias !164 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !68, !alias.scope !167, !noalias !164 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false), !alias.scope !169
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.z, ptr %.012.i.i.i.i, align 8, !tbaa !37, !alias.scope !164, !noalias !167
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !70, !alias.scope !167, !noalias !164
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !70, !alias.scope !164, !noalias !167
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !68, !alias.scope !167, !noalias !164
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !68, !alias.scope !164, !noalias !167
  store ptr %i.aa, ptr %.0911.i.i.i.i, align 8, !tbaa !37, !alias.scope !167, !noalias !164
  store i64 0, ptr %i.ai, align 8, !tbaa !68, !alias.scope !167, !noalias !164
  store i8 0, ptr %i.aa, align 8, !tbaa !70, !alias.scope !167, !noalias !164
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43, !alias.scope !167, !noalias !164
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !43, !alias.scope !164, !noalias !167
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !170

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i = phi ptr [ %7, %bb.d ], [ %i.ao, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i27, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34
  %.012.i.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34 ], [ %i.ap, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 6 uses
  %.0911.i.i.i.i30 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 16 ; 3 uses
  store ptr %i.aq, ptr %.012.i.i.i.i29, align 8, !tbaa !82, !alias.scope !171, !noalias !174
  %i.ar = load ptr, ptr %.0911.i.i.i.i30, align 8, !tbaa !37, !alias.scope !174, !noalias !171 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31

bb.f:                                             ; preds = %.lr.ph.i.i.i.i28
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !68, !alias.scope !174, !noalias !171 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !176
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i28
  store ptr %i.ar, ptr %.012.i.i.i.i29, align 8, !tbaa !37, !alias.scope !171, !noalias !174
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !70, !alias.scope !174, !noalias !171
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !70, !alias.scope !171, !noalias !174
  %.phi.trans.insert.i.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %.pre.i.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i.i32, align 8, !tbaa !68, !alias.scope !174, !noalias !171
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31, %bb.f
  %i.az = phi i64 [ %i.av, %bb.f ], [ %.pre.i.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !68, !alias.scope !171, !noalias !174
  store ptr %i.as, ptr %.0911.i.i.i.i30, align 8, !tbaa !37, !alias.scope !174, !noalias !171
  store i64 0, ptr %i.ba, align 8, !tbaa !68, !alias.scope !174, !noalias !171
  store i8 0, ptr %i.as, align 8, !tbaa !70, !alias.scope !174, !noalias !171
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !43, !alias.scope !174, !noalias !171
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !43, !alias.scope !171, !noalias !174
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 40 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i.i35, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37, label %.lr.ph.i.i.i.i28, !llvm.loop !170

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit
  %.0.lcssa.i.i.i.i36 = phi ptr [ %i.ap, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ], [ %i.bg, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i.i34 ]
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE13_M_deallocateEPSA_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #19
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE13_M_deallocateEPSA_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE13_M_deallocateEPSA_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit37, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !35
  store ptr %.0.lcssa.i.i.i.i36, ptr %i.a, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %7, i64 %i.l
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 10 uses
  %4 = alloca %"struct.std::pair", align 8        ; 9 uses
  %5 = alloca %"struct.std::pair", align 8        ; 8 uses
  %6 = alloca %"struct.std::pair", align 8        ; 9 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph68

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEET_SO_SO_T0_.exit"
  %i.k = icmp eq i64 %i.cn, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph68, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa64 = phi i64 [ %i.c, %.lr.ph ], [ %i.eu, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.023.1.i.i, %bb.b ]
  %i.l = udiv exact i64 %.lcssa64, 40             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.m = add nsw i64 %i.l, -2
  %i.n = lshr i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit15.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.n, %._crit_edge ], [ %i.ao, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit15.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.u = getelementptr inbounds [40 x i8], ptr %0, i64 %.010.i.i.i ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !68   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.v, ptr %5, align 8, !tbaa !37
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !70
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !70
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !68
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.ad = phi ptr [ %i.o, %bb.d ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 2 uses
  %i.ae = phi i64 [ %i.z, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.w, ptr %i.u, align 8, !tbaa !37
  store i64 0, ptr %i.af, align 8, !tbaa !68
  store i8 0, ptr %i.w, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43 ; 2 uses
  store ptr %i.ah, ptr %i.q, align 8, !tbaa !43
  store ptr %i.r, ptr %6, align 8, !tbaa !82
  %i.ai = icmp eq ptr %i.ad, %i.o
  br i1 %i.ai, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i

bb.e:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit.i.i.i
  %i.aj = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.ak, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit.i.i.i
  store ptr %i.ad, ptr %6, align 8, !tbaa !37
  %i.al = load i64, ptr %i.o, align 8, !tbaa !70
  store i64 %i.al, ptr %i.r, align 8, !tbaa !70
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit12.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i, %bb.e
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !68
  store ptr %i.o, ptr %5, align 8, !tbaa !37
  store i64 0, ptr %i.p, align 8, !tbaa !68
  store i8 0, ptr %i.o, align 8, !tbaa !70
  store ptr %i.ah, ptr %i.t, align 8, !tbaa !43
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEElSC_NS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_T0_SP_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.l, ptr noundef %6)
  %i.am = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.r
  br i1 %i.an, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit12.i.i.i
  call void @_ZdlPv(ptr noundef %i.am) #19
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit12.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ao = add nsw i64 %.010.i.i.i, -1
  %i.ap = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.o
  br i1 %i.aq, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.ap) #19
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit15.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit15.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_RT0_.exit.i.i", label %bb.c, !llvm.loop !178

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_RT0_.exit.i.i": ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.ay, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_SO_RT0_.exit" ], [ %storemerge25.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_RT0_.exit.i.i" ] ; 6 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -40 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %i.ar, ptr %3, align 8, !tbaa !82
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !37 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 9 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i9.i
  %i.bc = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !68 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.az, ptr %3, align 8, !tbaa !37
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !70
  store i64 %i.bg, ptr %i.ar, align 8, !tbaa !70
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !68
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.bh = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bd, %bb.f ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 3 uses
  store i64 %i.bh, ptr %i.as, align 8, !tbaa !68
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !37
  store i64 0, ptr %i.bi, align 8, !tbaa !68
  store i8 0, ptr %i.ba, align 8, !tbaa !70
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !43
  store ptr %i.bk, ptr %i.at, align 8, !tbaa !43
  %i.bl = load ptr, ptr %0, align 8, !tbaa !37    ; 5 uses
  %i.bm = icmp eq ptr %i.bl, %i.au
  br i1 %i.bm, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  %i.bn = load i64, ptr %i.i, align 8, !tbaa !68  ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %.not21.i.i.i = icmp eq ptr %0, %i.ay
  br i1 %.not21.i.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  switch i64 %i.bn, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !70
  store i8 %i.bp, ptr %i.ba, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.j:                                             ; preds = %bb.h
end_hunk_2
begin_hunk_3_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEElSC_NS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_T0_SP_T1_T2_":bb.a
  %i.cw = sub i64 %.val2.i.i, %.val10.i
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cw, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN10duckdb_re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESI_EEbT_RT0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN10duckdb_re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESI_EEbT_RT0_.exit.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.cv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.cx = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.cx, label %bb.r, label %.critedge.i

bb.r:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN10duckdb_re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESI_EEbT_RT0_.exit.i"
  %i.cy = getelementptr inbounds [40 x i8], ptr %0, i64 %.010.i ; 9 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !37 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 4 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  %i.dc = load ptr, ptr %i.cs, align 8, !tbaa !37 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 6 uses
  %i.de = icmp eq ptr %i.dc, %i.dd                ; 2 uses
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  br i1 %i.de, label %bb.s, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.r
  br i1 %i.de, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.df = icmp ult i64 %.val2.i.i, 16
  call void @llvm.assume(i1 %i.df)
  %.not21.i.i.i = icmp eq i64 %.0911.i, %.010.i
  br i1 %.not21.i.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i, label %bb.t, !prof !69

bb.t:                                             ; preds = %bb.s
  switch i64 %.val2.i.i, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !70
  store i8 %i.dg, ptr %i.cz, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.dc, i64 %.val2.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.dh = load i64, ptr %i.ct, align 8, !tbaa !68 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !68
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !37
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  store i8 0, ptr %i.dk, align 1, !tbaa !70
  %.pre.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !37
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !37
  store i64 %.val2.i.i, ptr %i.dl, align 8, !tbaa !68
  %i.dm = load i64, ptr %i.dd, align 8, !tbaa !70
  store i64 %i.dm, ptr %i.da, align 8, !tbaa !70
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.dn = load i64, ptr %i.da, align 8, !tbaa !70
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !37
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %.val2.i.i, ptr %i.do, align 8, !tbaa !68
  %i.dp = load i64, ptr %i.dd, align 8, !tbaa !70
  store i64 %i.dp, ptr %i.da, align 8, !tbaa !70
  %.not.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.cz, ptr %i.cs, align 8, !tbaa !37
  store i64 %i.dn, ptr %i.dd, align 8, !tbaa !70
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.dd, ptr %i.cs, align 8, !tbaa !37
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i: ; preds = %bb.x, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.s
  %i.dq = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.cz, %bb.w ], [ %i.dd, %bb.x ], [ %i.dc, %bb.s ]
  store i64 0, ptr %i.ct, align 8, !tbaa !68
  store i8 0, ptr %i.dq, align 1, !tbaa !70
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !76
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !43
  %i.du = icmp sgt i64 %.0911.i, %1
  br i1 %i.du, label %.lr.ph.i, label %.critedge.i, !llvm.loop !184

.critedge.i:                                      ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN10duckdb_re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESI_EEbT_RT0_.exit.i", %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit
  %.0.lcssa.i = phi i64 [ %.1, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit ], [ %.010.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN10duckdb_re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESI_EEbT_RT0_.exit.i" ], [ %.0911.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i ]
  %i.dv = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa.i ; 10 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !37 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 4 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  %i.dz = load ptr, ptr %4, align 8, !tbaa !37    ; 6 uses
  %i.ea = icmp eq ptr %i.dz, %i.cc                ; 2 uses
  %.pre53 = load i64, ptr %i.cn, align 8, !tbaa !68 ; 5 uses
  br i1 %i.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %.critedge.i
  br i1 %i.ea, label %bb.y, label %.thread.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i11.i: ; preds = %.critedge.i
  br i1 %i.ea, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i12.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  %i.eb = icmp ult i64 %.pre53, 16
  call void @llvm.assume(i1 %i.eb)
  %.not21.i.i14.i = icmp eq ptr %4, %i.dv
  br i1 %.not21.i.i14.i, label %bb.ae, label %bb.z, !prof !69

bb.z:                                             ; preds = %bb.y
  switch i64 %.pre53, label %bb.ab [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i15.i
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ec = load i8, ptr %i.dz, align 1, !tbaa !70
  store i8 %i.ec, ptr %i.dw, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i15.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dw, ptr align 1 %i.dz, i64 %.pre53, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i15.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i15.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ed = load i64, ptr %i.cn, align 8, !tbaa !68 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !68
  %i.ef = load ptr, ptr %i.dv, align 8, !tbaa !37
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ed
  store i8 0, ptr %i.eg, align 1, !tbaa !70
  %.pre.i.i16.i = load ptr, ptr %4, align 8, !tbaa !37
  br label %bb.ae

.thread.i.i18.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !37
  store i64 %.pre53, ptr %i.eh, align 8, !tbaa !68
  %i.ei = load i64, ptr %i.cc, align 8, !tbaa !70
  store i64 %i.ei, ptr %i.dx, align 8, !tbaa !70
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i12.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i11.i
  %i.ej = load i64, ptr %i.dx, align 8, !tbaa !70
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !37
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %.pre53, ptr %i.ek, align 8, !tbaa !68
  %i.el = load i64, ptr %i.cc, align 8, !tbaa !70
  store i64 %i.el, ptr %i.dx, align 8, !tbaa !70
  %.not.i.i13.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i13.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i12.i
  store ptr %i.dw, ptr %4, align 8, !tbaa !37
  store i64 %i.ej, ptr %i.cc, align 8, !tbaa !70
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i12.i, %.thread.i.i18.i
  store ptr %i.cc, ptr %4, align 8, !tbaa !37
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i15.i, %bb.y
  %i.em = phi ptr [ %.pre.i.i16.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i15.i ], [ %i.dw, %bb.ac ], [ %i.cc, %bb.ad ], [ %i.dz, %bb.y ]
  store i64 0, ptr %i.cn, align 8, !tbaa !68
  store i8 0, ptr %i.em, align 1, !tbaa !70
  %i.en = load ptr, ptr %i.co, align 8, !tbaa !76
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !43
  %i.ep = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.cc
  br i1 %i.eq, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.ep) #19
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterIZNS9_3RE23Set7CompileEvE3$_0EEEvT_SO_T0_"(ptr %0, ptr readnone captures(address) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair", align 8        ; 13 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit20, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.021 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.0.021, %1
  br i1 %.not22, label %.loopexit20, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not21.i.i = icmp eq ptr %2, %0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.024 = phi ptr [ %.sroa.0.021, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 8 uses
  %.pn23 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.024, %bb.q ] ; 4 uses
  %i.i = getelementptr i8, ptr %.pn23, i64 48     ; 3 uses
  %.val1.i = load i64, ptr %i.i, align 8, !tbaa !68 ; 4 uses
  %.val3.i = load i64, ptr %i.b, align 8, !tbaa !68 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val3.i, i64 %.val1.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %.val2.i = load ptr, ptr %0, align 8
  %.val.i = load ptr, ptr %.sroa.0.024, align 8
  %i.k = call i32 @memcmp(ptr noundef readonly %.val.i, ptr noundef readonly %.val2.i, i64 noundef %.sroa.speculated.i.i.i.i) #18 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN10duckdb_re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.l = sub i64 %.val1.i, %.val3.i
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN10duckdb_re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN10duckdb_re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.m, label %bb.c, label %bb.p

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN10duckdb_re23RE23Set7CompileEvE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_6RegexpEESt6vectorISI_SaISI_EEEESN_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %i.c, ptr %2, align 8, !tbaa !82
  %i.n = load ptr, ptr %.sroa.0.024, align 8, !tbaa !37 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pn23, i64 56 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %.val1.i, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %.val1.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.r, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.n, ptr %2, align 8, !tbaa !37
  %i.s = load i64, ptr %i.o, align 8, !tbaa !70
  store i64 %i.s, ptr %i.c, align 8, !tbaa !70
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = load i64, ptr %i.i, align 8, !tbaa !68
  store i64 %i.t, ptr %i.d, align 8, !tbaa !68
  store ptr %i.o, ptr %.sroa.0.024, align 8, !tbaa !37
  store i64 0, ptr %i.i, align 8, !tbaa !68
  store i8 0, ptr %i.o, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %.pn23, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  store ptr %i.v, ptr %i.e, align 8, !tbaa !43
  %i.w = ptrtoint ptr %.sroa.0.024 to i64
  %i.x = sub i64 %i.w, %i.f                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.pn23, i64 80
  %i.aa = udiv exact i64 %i.x, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bf, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ac, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i.i.i.i.i ], [ %i.z, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i.i.i.i.i ], [ %.sroa.0.024, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 6 uses
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 4 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 6 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ai, label %bb.e, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ai, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !68 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  switch i64 %i.ak, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !70
  store i8 %i.am, ptr %i.ad, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !68 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !68
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !70
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !37
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !37
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !68
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !68
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !70
  store i64 %i.au, ptr %i.ae, align 8, !tbaa !70
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !70
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !37
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !68
  %i.ay = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !68
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !70
  store i64 %i.az, ptr %i.ae, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !37
  store i64 %i.av, ptr %i.ah, align 8, !tbaa !70
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !37
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
  %i.ba = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ], [ %i.ad, %bb.h ], [ %i.ah, %bb.i ]
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  store i64 0, ptr %i.bb, align 8, !tbaa !68
  store i8 0, ptr %i.ba, align 1, !tbaa !70
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !76
  %i.be = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !43
  %i.bf = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bg = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !185

.loopexit:                                        ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEaSEOS9_.exit.i.i.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN10duckdb_re26RegexpEEC2EOS9_.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !37    ; 6 uses
  %i.bi = icmp eq ptr %i.bh, %i.g
  %i.bj = load ptr, ptr %2, align 8, !tbaa !37    ; 6 uses
  %i.bk = icmp eq ptr %i.bj, %i.c                 ; 2 uses
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %.loopexit
  br i1 %i.bk, label %bb.j, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.loopexit
  br i1 %i.bk, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !68  ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
end_hunk_3
