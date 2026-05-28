inline.NumInlined: 2498
inline.NumDeleted: 992
begin_hunk_0_@_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev:bb.a
  call void @__clang_call_terminate(ptr %i.ac) #29
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.d)
  %i.e = load ptr, ptr %1, align 8, !tbaa !61     ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 225 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !398, !range !87, !noundef !88
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !191  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !198
  %.not.i1.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.d
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 32)
          to label %.noexc8._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge unwind label %bb.i, !inline_history !399 ; 0 uses

.noexc8._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge: ; preds = %.noexc8
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !61
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc8._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc8._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge ], [ %i.e, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i ]
  store i8 1, ptr %i.i, align 1, !tbaa !398
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.t = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  store i8 48, ptr %i.u, align 8, !tbaa !400
  %i.v = getelementptr i8, ptr %i.t, i64 -24      ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 130, ptr %i.y, align 8, !tbaa !401
  %i.z = load i64, ptr %i.v, align 8
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 2, ptr %i.ab, align 8, !tbaa !158
  %i.ac = load i64, ptr %0, align 8, !tbaa !78
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ac)
          to label %_ZNSolsEl.exit unwind label %bb.i ; 0 uses

_ZNSolsEl.exit:                                   ; preds = %._crit_edge.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !410
  %i.ag = and i32 %i.af, 8192
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSolsEl.exit
  %i.ah = call noundef i32 @_ZSt19uncaught_exceptionsv() #33
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %2, align 8, !tbaa !413, !nonnull !88, !align !414 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !72
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 232
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !415 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(64) %i.ao)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit unwind label %bb.h, !inline_history !416 ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #29
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit: ; preds = %_ZNSolsEl.exit, %bb.e, %bb.f, %bb.g
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %1

bb.i:                                             ; preds = %._crit_edge.i.i, %.noexc8, %bb.d, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL12load_indicesERSii(ptr dead_on_unwind noalias nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !114
  store ptr %i.d, ptr %i.e, align 8, !tbaa !422
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store ptr %i.f, ptr %i.b, align 8, !tbaa !117
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit ] ; 4 uses
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.c unwind label %.loopexit  ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !117
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.a, align 1, !tbaa !31
  store i8 %i.l, ptr %i.i, align 1, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !422
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !114    ; 5 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 8 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775807
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.s = add i64 %.sroa.speculated.i.i.i, %i.q    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807)
  %i.v = select i1 %i.t, i64 9223372036854775807, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %3 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #32
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i unwind label %.loopexit ; 4 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %i.q ; 2 uses
  %i.x = load i8, ptr %i.a, align 1, !tbaa !31
  store i8 %i.x, ptr %i.w, align 1, !tbaa !31
  %i.y = icmp sgt i64 %i.q, 0
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %3, ptr align 1 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #28
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %3, ptr %0, align 8, !tbaa !114
  store ptr %i.z, ptr %i.h, align 8, !tbaa !422
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !117
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit

_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.d
  %i.ab = phi ptr [ %i.z, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ac = add nuw nsw i32 %.013, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !423

.loopexit:                                        ; preds = %bb.b, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !114
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit, %bb.a, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  ret void

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pre = phi ptr [ %.pre.pre, %.loopexit ], [ %i.n, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %.pre to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ag) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL11load_ttinfoERSii(ptr dead_on_unwind noalias nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored::date::detail::ttinfo", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !109
  store ptr %i.d, ptr %i.e, align 8, !tbaa !106
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.b
  store ptr %i.f, ptr %i.a, align 8, !tbaa !116
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_M_allocateEm.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ] ; 4 uses
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i64 noundef 6)
          to label %bb.c unwind label %.loopexit  ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %3, align 8, !tbaa !3
  %i.l = call noundef i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %i.l, ptr %3, align 8, !tbaa !3
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !116
  %.not.i = icmp eq ptr %i.i, %i.m
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %3, align 8
  store i64 %i.n, ptr %i.i, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.h, align 8, !tbaa !106
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !109    ; 5 uses
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #32
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  %i.ac = load i64, ptr %3, align 8
  store i64 %i.ac, ptr %i.ab, align 4
  %i.ad = icmp sgt i64 %i.s, 0
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.g:                                             ; preds = %.noexc11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.g, %.noexc11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !109
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.af, ptr %i.a, align 8, !tbaa !116
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.d
  %i.ag = phi ptr [ %i.ae, %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.o, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ah = add nuw nsw i32 %.013, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !424

.loopexit:                                        ; preds = %bb.b, %_ZNKSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !109
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit, %bb.a, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail6ttinfoESaIS3_EE11_M_allocateEm.exit.i
  ret void

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pre = phi ptr [ %.pre.pre, %.loopexit ], [ %i.p, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %.pre to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.al) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail6ttinfoESaIS3_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = load ptr, ptr %0, align 8, !tbaa !49     ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
end_hunk_0
