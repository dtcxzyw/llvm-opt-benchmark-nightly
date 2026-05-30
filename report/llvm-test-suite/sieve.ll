inline.NumInlined: 119
inline.NumDeleted: 83
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl" }
%"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [8 x i8] c"Count: \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5sieveRNSt7__cxx114listIiSaIiEEERSt6vectorIiS1_E(ptr noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %._crit_edge19, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph18, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.f = phi ptr [ %i.a, %.lr.ph18 ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 3 uses
  %i.i = load i64, ptr %i.c, align 8, !tbaa !12
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.c, align 8, !tbaa !12
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #10
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 24) #11
  %i.k = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not1415 = icmp eq ptr %i.k, %0
  br i1 %.not1415, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.sroa.08.016 = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.b ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.016, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = srem i32 %i.m, %i.h
  %.not = icmp eq i32 %i.n, 0
  %i.o = load ptr, ptr %.sroa.08.016, align 8, !tbaa !8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.p = load i64, ptr %i.c, align 8, !tbaa !12
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.c, align 8, !tbaa !12
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.016) #10
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.08.016, i64 noundef 24) #11
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.not14 = icmp eq ptr %i.o, %0
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !19   ; 4 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %i.h, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.t, ptr %i.d, align 8, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %._crit_edge
  %i.u = load ptr, ptr %1, align 8, !tbaa !23     ; 4 uses
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 6 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775804
  br i1 %i.y, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.z = ashr exact i64 %i.x, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 2305843009213693951)
  %i.ad = select i1 %i.ab, i64 2305843009213693951, i64 %i.ac ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #13 ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.x ; 2 uses
  store i32 %i.h, ptr %i.ag, align 4, !tbaa !4
  %i.ah = icmp sgt i64 %i.x, 0
  br i1 %i.ah, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 4 %i.u, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.not.i17.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.x) #11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.af, ptr %1, align 8, !tbaa !23
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ak = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %._crit_edge19, label %bb.b, !llvm.loop !24

._crit_edge19:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 14 uses
  %3 = alloca %"class.std::__cxx11::list", align 8 ; 16 uses
  %i.a = icmp eq i32 %0, 2
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #10, !inline_history !27 ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %.ph = phi i64 [ 500, %bb.a ], [ 1, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %i.d, 2147483647                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not27 = icmp eq i64 %i.g, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.c
  %i.h = phi i64 [ %.ph, %.thread ], [ %i.g, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit
  %.in = phi i64 [ %i.h, %.lr.ph ], [ %i.l, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit ]
  %i.l = add nsw i64 %.in, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %3, ptr %i.i, align 8, !tbaa !28
  store ptr %3, ptr %3, align 8, !tbaa !8
  store i64 0, ptr %i.j, align 8, !tbaa !29
  br label %bb.e

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.f
  %i.m = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.m
  %spec.store.select = select i1 %.not.i.i, ptr %i.n, ptr %i.m
  store ptr %spec.store.select, ptr %i.k, align 8
  invoke void @_Z5sieveRNSt7__cxx114listIiSaIiEEERSt6vectorIiS1_E(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.f
  %storemerge26 = phi i32 [ 2, %bb.d ], [ %i.s, %bb.f ] ; 2 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 %storemerge26, ptr %i.p, align 4, !tbaa !4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  %i.q = load i64, ptr %i.j, align 8, !tbaa !12
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.j, align 8, !tbaa !12
  %i.s = add nuw nsw i32 %storemerge26, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, 8192
  br i1 %exitcond.not, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.e, !llvm.loop !30

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.u = load ptr, ptr %3, align 8, !tbaa !8      ; 2 uses
  %.not8.i.i = icmp eq ptr %i.u, %3
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.u, %bb.h ] ; 2 uses
  %i.v = load ptr, ptr %.09.i.i, align 8, !tbaa !8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #11
  %.not.i.i12 = icmp eq ptr %i.v, %3
  br i1 %.not.i.i12, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !31

_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit:       ; preds = %.lr.ph.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !32

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.w, %bb.i ]
  %i.x = load ptr, ptr %3, align 8, !tbaa !8      ; 2 uses
  %.not8.i.i13 = icmp eq ptr %i.x, %3
  br i1 %.not8.i.i13, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit17, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %bb.j, %.lr.ph.i.i14
  %.09.i.i15 = phi ptr [ %i.y, %.lr.ph.i.i14 ], [ %i.x, %bb.j ] ; 2 uses
  %i.y = load ptr, ptr %.09.i.i15, align 8, !tbaa !8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i15, i64 noundef 24) #11
  %.not.i.i16 = icmp eq ptr %i.y, %3
  br i1 %.not.i.i16, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit17, label %.lr.ph.i.i14, !llvm.loop !31

_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit17:     ; preds = %.lr.ph.i.i14, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, %bb.c
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ac = load ptr, ptr %2, align 8, !tbaa !23    ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.ag)
          to label %_ZNSolsEm.exit unwind label %bb.o ; 3 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i20 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i20, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.k:                                             ; preds = %_ZNSolsEm.exit
  invoke void @_ZSt16__throw_bad_castv() #12
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.k
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !51
  %.not.i1.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i1.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 67
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.an)
          to label %.noexc21 unwind label %bb.o

.noexc21:                                         ; preds = %bb.m
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef signext i8 %i.au(ptr noundef nonnull align 8 dereferenceable(570) %i.an, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.o, !inline_history !57

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc21, %bb.l
  %.0.i.i.i = phi i8 [ %i.ar, %bb.l ], [ %i.av, %.noexc21 ]
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i8 noundef signext %.0.i.i.i)
          to label %.noexc23 unwind label %bb.o

.noexc23:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.o ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc23
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !22
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.bb) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSolsEPFRSoS_E.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 0

bb.o:                                             ; preds = %.noexc23, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc21, %bb.m, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %._crit_edge
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit17
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit17 ], [ %i.bc, %bb.o ]
  %i.bd = load ptr, ptr %2, align 8, !tbaa !23    ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIiSaIiEED2Ev.exit19, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !22
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit19

_ZNSt6vectorIiSaIiEED2Ev.exit19:                  ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  resume { ptr, i32 } %.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt8__detail15_List_node_baseE", !10, i64 0, !10, i64 8}
!10 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !16, i64 16}
!13 = !{!"_ZTSNSt7__cxx1110_List_baseIiSaIiEEE", !14, i64 0}
!14 = !{!"_ZTSNSt7__cxx1110_List_baseIiSaIiEE10_List_implE", !15, i64 0}
!15 = !{!"_ZTSNSt8__detail17_List_node_headerE", !9, i64 0, !16, i64 16}
!16 = !{!"long", !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !21, i64 8}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"p1 int", !11, i64 0}
!22 = !{!20, !21, i64 16}
!23 = !{!20, !21, i64 0}
!24 = distinct !{!24, !18}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !11, i64 0}
!27 = distinct !{null}
!28 = !{!9, !10, i64 8}
!29 = !{!15, !16, i64 16}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !7, i64 0}
!35 = !{!36, !48, i64 240}
!36 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !37, i64 0, !45, i64 216, !6, i64 224, !46, i64 225, !47, i64 232, !48, i64 240, !49, i64 248, !50, i64 256}
!37 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !38, i64 24, !39, i64 28, !39, i64 32, !40, i64 40, !41, i64 48, !6, i64 64, !5, i64 192, !42, i64 200, !43, i64 208}
!38 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!39 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!40 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!41 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !16, i64 8}
!42 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!43 = !{!"_ZTSSt6locale", !44, i64 0}
!44 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!45 = !{!"p1 _ZTSSo", !11, i64 0}
!46 = !{!"bool", !6, i64 0}
!47 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!48 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!49 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!50 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!51 = !{!52, !6, i64 56}
!52 = !{!"_ZTSSt5ctypeIcE", !53, i64 0, !54, i64 16, !46, i64 24, !21, i64 32, !21, i64 40, !55, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!53 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!54 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!55 = !{!"p1 short", !11, i64 0}
!56 = !{!6, !6, i64 0}
!57 = distinct !{null, null}
end_hunk_0
