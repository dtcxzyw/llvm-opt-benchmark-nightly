inline.NumInlined: 326
inline.NumDeleted: 200
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
%"class.duckdb_re2::StringPiece" = type { ptr, i64 }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EED2Ev = comdat any

$_ZN10LogMessageD2Ev = comdat any

@.str.1 = private unnamed_addr constant [48 x i8] c"Couldn't compile regular expression, skipping: \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" due to error \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Compile called already.\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Compile called before Add.\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"FirstMatch called before Compile.\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN10duckdb_re211FilteredRE2C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10duckdb_re211FilteredRE2C2Ev
@_ZN10duckdb_re211FilteredRE2C1Ei = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN10duckdb_re211FilteredRE2C2Ei
@_ZN10duckdb_re211FilteredRE2D1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10duckdb_re211FilteredRE2D2Ev
@_ZN10duckdb_re211FilteredRE2C1EOS0_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN10duckdb_re211FilteredRE2C2EOS0_

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re211FilteredRE2C2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 25)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 25, i1 false)
  %1 = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #11 ; 3 uses
  invoke void @_ZN10duckdb_re213PrefilterTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  ret void

bb.c:                                             ; preds = %bb.a
  %2 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %1) #12
  %.pr = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %.pr) #12
  br label %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %2
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN10duckdb_re213PrefilterTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re211FilteredRE2C2Ei(ptr noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 25)) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 25, i1 false)
  %2 = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #11 ; 3 uses
  invoke void @_ZN10duckdb_re213PrefilterTreeC1Ei(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8, !tbaa !7
  ret void

bb.c:                                             ; preds = %bb.a
  %3 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  %.pr = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %.pr) #12
  br label %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %3
}

declare void @_ZN10duckdb_re213PrefilterTreeC1Ei(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10duckdb_re211FilteredRE2D2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.d = phi ptr [ %i.c, %bb.a ], [ %i.m, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit.i: ; preds = %._crit_edge
  tail call void @_ZN10duckdb_re213PrefilterTreeD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.f) #13
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #12
  %.pre6 = load ptr, ptr %0, align 8, !tbaa !10
  br label %_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit.i
  %i.g = phi ptr [ %i.d, %._crit_edge ], [ %.pre6, %_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #12
  br label %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EED2Ev.exit, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.h = phi ptr [ %i.m, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %i.n, %bb.d ], [ %i.b, %bb.a ]
  %.04 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.a ]    ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.04
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN10duckdb_re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.k) #13
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #12
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  %.pre5 = load ptr, ptr %0, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.m = phi ptr [ %i.h, %.lr.ph ], [ %.pre5, %bb.c ] ; 3 uses
  %i.n = phi ptr [ %i.i, %.lr.ph ], [ %.pre, %bb.c ] ; 2 uses
  %i.o = add nuw i64 %.04, 1                      ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = icmp ult i64 %i.o, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare void @_ZN10duckdb_re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit

_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN10duckdb_re213PrefilterTreeD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.a) #13
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #12
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re211FilteredRE2C2EOS0_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 25), (32, 40)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EE13shrink_to_fitEv.exit:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !19
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  store ptr %i.d, ptr %i.b, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !21, !range !33, !noundef !34
  store i8 %i.g, ptr %i.e, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !7
  store i64 %i.j, ptr %i.h, align 8, !tbaa !7
  store ptr null, ptr %i.i, align 8, !tbaa !7
  store i8 0, ptr %i.f, align 8, !tbaa !21
  %i.k = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #11
          to label %bb.a unwind label %bb.c       ; 3 uses

bb.a:                                             ; preds = %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EE13shrink_to_fitEv.exit
  invoke void @_ZN10duckdb_re213PrefilterTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !7    ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !7
  %.not.i.i11 = icmp eq ptr %i.l, null
  br i1 %.not.i.i11, label %_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit.i.i: ; preds = %bb.b
  tail call void @_ZN10duckdb_re213PrefilterTreeD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.l) #13
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #12
  br label %_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit.i.i
  ret void

bb.c:                                             ; preds = %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EE13shrink_to_fitEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.m, %bb.c ]
  tail call void @_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #13
  %i.o = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #12
  br label %_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10duckdb_re23RE2ESaIS2_EED2Ev.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN10duckdb_re211FilteredRE2aSEOS0_(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  %i.d = phi ptr [ %i.c, %bb.a ], [ %i.m, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit.i.i: ; preds = %._crit_edge.i
  tail call void @_ZN10duckdb_re213PrefilterTreeD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.f) #13
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #12
  %.pre6.i = load ptr, ptr %0, align 8, !tbaa !10
  br label %_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit.i.i, %._crit_edge.i
  %i.g = phi ptr [ %i.d, %._crit_edge.i ], [ %.pre6.i, %_ZNKSt14default_deleteIN10duckdb_re213PrefilterTreeEEclEPS1_.exit.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN10duckdb_re211FilteredRE2D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #12
  br label %_ZN10duckdb_re211FilteredRE2D2Ev.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %i.h = phi ptr [ %i.m, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %i.n, %bb.d ], [ %i.b, %bb.a ]
  %.04.i = phi i64 [ %i.o, %bb.d ], [ 0, %bb.a ]  ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.04.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_ZN10duckdb_re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.k) #13
end_hunk_0
begin_hunk_1_@_ZNK10duckdb_re211FilteredRE210FirstMatchERKNS_11StringPieceERKSt6vectorIiSaIiEE:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.k, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #13
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7
  invoke void @_ZNK10duckdb_re213PrefilterTree19RegexpsGivenStringsERKSt6vectorIiSaIiEEPS3_(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %5)
          to label %.preheader unwind label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = load ptr, ptr %5, align 8, !tbaa !76     ; 3 uses
  %.not27.not = icmp eq ptr %i.v, %i.w
  br i1 %.not27.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %i.z = phi ptr [ %i.w, %.lr.ph ], [ %i.an, %bb.i ]
  %.01028 = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.01028
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load ptr, ptr %0, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !69
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.copyload.i, ptr %3, align 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.x, align 8
  %i.ag = invoke noundef zeroext i1 @_ZN10duckdb_re23RE213PartialMatchNERKNS_11StringPieceERKS0_PKPKNS0_3ArgEi(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(148) %i.af, ptr noundef null, i32 noundef 0)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.ag, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.g
  %i.ah = load ptr, ptr %5, align 8, !tbaa !76    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01028
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.al = add nuw i64 %.01028, 1                  ; 2 uses
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.an = load ptr, ptr %5, align 8, !tbaa !76    ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %.not = icmp ult i64 %i.al, %i.ar
  br i1 %.not, label %bb.f, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %.pr = phi ptr [ %i.w, %.preheader ], [ %i.an, %bb.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread, %._crit_edge
  %spec.select23 = phi i32 [ %i.aj, %.thread ], [ -1, %._crit_edge ]
  %i.as = phi ptr [ %i.ah, %.thread ], [ %.pr, %._crit_edge ]
  call void @_ZdlPv(ptr noundef nonnull %i.as) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.j
  %spec.select24 = phi i32 [ -1, %._crit_edge ], [ %spec.select23, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.m

bb.k:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.y, %bb.e ]
  %i.at = load ptr, ptr %5, align 8, !tbaa !76    ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIiSaIiEED2Ev.exit19, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPv(ptr noundef nonnull %i.at) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit19

_ZNSt6vectorIiSaIiEED2Ev.exit19:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZN10LogMessageD2Ev.exit
  %.2 = phi i32 [ %spec.select24, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ -1, %_ZN10LogMessageD2Ev.exit ]
  ret i32 %.2

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit19, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit19 ], [ %i.r, %bb.c ]
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNK10duckdb_re213PrefilterTree19RegexpsGivenStringsERKSt6vectorIiSaIiEEPS3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK10duckdb_re211FilteredRE210AllMatchesERKNS_11StringPieceERKSt6vectorIiSaIiEEPS6_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 5 uses
  %5 = alloca %"class.std::vector.7", align 8     ; 10 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !73
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7
  invoke void @_ZNK10duckdb_re213PrefilterTree19RegexpsGivenStringsERKSt6vectorIiSaIiEEPS3_(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %5)
          to label %.preheader unwind label %bb.c

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = load ptr, ptr %5, align 8, !tbaa !76     ; 3 uses
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.preheader
  %.lcssa = phi ptr [ %i.h, %.preheader ], [ %i.as, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !78
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !78
  %.not.i.i.i = icmp eq ptr %.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %.lcssa) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.b
  %i.m = icmp ne ptr %i.k, %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i1 %i.m

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.o = phi ptr [ %i.h, %.lr.ph ], [ %i.as, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.at, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.020
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = sext i32 %i.q to i64
  %i.s = load ptr, ptr %0, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !69
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.i, align 8
  %i.v = invoke noundef zeroext i1 @_ZN10duckdb_re23RE213PartialMatchNERKNS_11StringPieceERKS0_PKPKNS0_3ArgEi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(148) %i.u, ptr noundef null, i32 noundef 0)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre22 = load ptr, ptr %5, align 8, !tbaa !76  ; 4 uses
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.pre22, i64 %.020 ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !73   ; 4 uses
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.w, align 4, !tbaa !3
  store i32 %i.z, ptr %i.x, align 4, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !73
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %3, align 8, !tbaa !76    ; 4 uses
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #14
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i14)
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #11
          to label %.noexc15 unwind label %.loopexit ; 4 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  %i.ao = load i32, ptr %i.w, align 4, !tbaa !3
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !3
  %i.ap = icmp sgt i64 %i.ae, 0
  br i1 %i.ap, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc15
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %i.ab, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #12
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !76
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.k ], [ %.pre22, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i ]
  store ptr %i.am, ptr %3, align 8, !tbaa !76
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !79
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %bb.d, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g, %bb.e
  %i.as = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.pre22, %bb.g ], [ %.pre22, %bb.e ] ; 3 uses
  %i.at = add nuw i64 %.020, 1                    ; 2 uses
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 2
  %i.az = icmp ult i64 %i.at, %i.ay
  br i1 %i.az, label %bb.d, label %._crit_edge, !llvm.loop !80

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ba = load ptr, ptr %5, align 8, !tbaa !76    ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIiSaIiEED2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPv(ptr noundef nonnull %i.ba) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit17

_ZNSt6vectorIiSaIiEED2Ev.exit17:                  ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK10duckdb_re211FilteredRE213AllPotentialsERKSt6vectorIiSaIiEEPS3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  tail call void @_ZNK10duckdb_re213PrefilterTree19RegexpsGivenStringsERKSt6vectorIiSaIiEEPS3_(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re211FilteredRE219RegexpsGivenStringsERKSt6vectorIiSaIiEEPS3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  tail call void @_ZNK10duckdb_re213PrefilterTree19RegexpsGivenStringsERKSt6vectorIiSaIiEEPS3_(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re211FilteredRE214PrintPrefilterEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  tail call void @_ZN10duckdb_re213PrefilterTree14PrintPrefilterEi(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i32 noundef %1)
  ret void
}

declare void @_ZN10duckdb_re213PrefilterTree14PrintPrefilterEi(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN10duckdb_re213PrefilterTreeD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN10duckdb_re23RE213PartialMatchNERKNS_11StringPieceERKS0_PKPKNS0_3ArgEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(148), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN10duckdb_re213PrefilterTreeE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIPN10duckdb_re23RE2ESaIS2_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"p2 _ZTSN10duckdb_re23RE2E", !13, i64 0}
!13 = !{!"any p2 pointer", !9, i64 0}
!14 = !{!11, !12, i64 8}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSN10duckdb_re23RE2E", !9, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!12, !12, i64 0}
!20 = !{!11, !12, i64 16}
!21 = !{!22, !26, i64 24}
!22 = !{!"_ZTSN10duckdb_re211FilteredRE2E", !23, i64 0, !26, i64 24, !27, i64 32}
!23 = !{!"_ZTSSt6vectorIPN10duckdb_re23RE2ESaIS2_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIPN10duckdb_re23RE2ESaIS2_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIPN10duckdb_re23RE2ESaIS2_EE12_Vector_implE", !11, i64 0}
!26 = !{!"bool", !5, i64 0}
!27 = !{!"_ZTSSt10unique_ptrIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EE", !28, i64 0}
!28 = !{!"_ZTSSt15__uniq_ptr_dataIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_ELb1ELb1EE", !29, i64 0}
!29 = !{!"_ZTSSt15__uniq_ptr_implIN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EE", !30, i64 0}
!30 = !{!"_ZTSSt5tupleIJPN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EEE", !31, i64 0}
!31 = !{!"_ZTSSt11_Tuple_implILm0EJPN10duckdb_re213PrefilterTreeESt14default_deleteIS1_EEE", !32, i64 0}
!32 = !{!"_ZTSSt10_Head_baseILm0EPN10duckdb_re213PrefilterTreeELb0EE", !8, i64 0}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!36, !26, i64 14}
!36 = !{!"_ZTSN10duckdb_re23RE27OptionsE", !37, i64 0, !38, i64 8, !26, i64 12, !26, i64 13, !26, i64 14, !26, i64 15, !26, i64 16, !26, i64 17, !26, i64 18, !26, i64 19, !26, i64 20, !26, i64 21, !26, i64 22}
!37 = !{!"long", !5, i64 0}
!38 = !{!"_ZTSN10duckdb_re23RE27Options8EncodingE", !5, i64 0}
!39 = !{!40, !26, i64 0}
!40 = !{!"_ZTS10LogMessage", !26, i64 0, !41, i64 8}
!41 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !42, i64 0, !43, i64 8}
!42 = !{!"_ZTSSo"}
!43 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !44, i64 0, !48, i64 64, !49, i64 72}
!44 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !46, i64 56}
!45 = !{!"p1 omnipotent char", !9, i64 0}
!46 = !{!"_ZTSSt6locale", !47, i64 0}
!47 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!48 = !{!"_ZTSSt13_Ios_Openmode", !5, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !37, i64 8, !5, i64 16}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!51 = !{!52, !53, i64 48}
!52 = !{!"_ZTSN10duckdb_re23RE2E", !53, i64 0, !36, i64 8, !54, i64 32, !54, i64 40, !53, i64 48, !53, i64 56, !4, i64 64, !55, i64 68, !26, i64 71, !26, i64 71, !26, i64 71, !49, i64 72, !56, i64 104, !56, i64 112, !57, i64 120, !58, i64 128, !59, i64 136, !59, i64 140, !59, i64 144}
!53 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!54 = !{!"p1 _ZTSN10duckdb_re26RegexpE", !9, i64 0}
!55 = !{!"_ZTSN10duckdb_re23RE29ErrorCodeE", !5, i64 0}
!56 = !{!"p1 _ZTSN10duckdb_re24ProgE", !9, i64 0}
!57 = !{!"p1 _ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE", !9, i64 0}
!58 = !{!"p1 _ZTSSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE", !9, i64 0}
!59 = !{!"_ZTSSt9once_flag", !4, i64 0}
!60 = !{!49, !45, i64 0}
!61 = !{!49, !37, i64 8}
!62 = !{!63, !63, i64 0}
!63 = !{!"vtable pointer", !6, i64 0}
!64 = !{!65, !53, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!66 = !{!65, !53, i64 8}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18}
!69 = !{!45, !45, i64 0}
!70 = !{!37, !37, i64 0}
!71 = distinct !{null}
!72 = distinct !{!72, !18}
!73 = !{!74, !75, i64 8}
!74 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!75 = !{!"p1 int", !9, i64 0}
!76 = !{!74, !75, i64 0}
!77 = distinct !{!77, !18}
!78 = !{!75, !75, i64 0}
end_hunk_1
