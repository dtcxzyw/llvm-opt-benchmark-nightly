inline.NumInlined: 9613
inline.NumDeleted: 1756
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 215
begin_hunk_0_@_ZNK6casadi5SolveILb1EE14serialize_typeERNS_17SerializingStreamE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6casadi17SerializingStream4packIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !38
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #33
  br label %_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit

bb.d:                                             ; preds = %.noexc5.i, %bb.c, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !38
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %common.resume

_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit: ; preds = %_ZN6casadi17SerializingStream4packIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.u, ptr noundef nonnull align 1 dereferenceable(9) @.str.260, i64 9, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.v, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 0, ptr %i.w, align 1, !tbaa !38
  %i.x = load i8, ptr %i.i, align 8, !tbaa !382, !range !321, !noundef !322
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %.noexc6

bb.e:                                             ; preds = %_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit
  invoke void @_ZN6casadi17SerializingStream4packERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %bb.e, %_ZNK6casadi6MXNode14serialize_typeERNS_17SerializingStreamE.exit
  invoke void @_ZN6casadi17SerializingStream4packEb(ptr noundef nonnull align 8 dereferenceable(73) %1, i1 noundef zeroext true)
          to label %_ZN6casadi17SerializingStream4packIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.f

_ZN6casadi17SerializingStream4packIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.noexc6
  %i.z = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.u
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6casadi17SerializingStream4packIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !38
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6casadi17SerializingStream4packIbEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.f:                                             ; preds = %.noexc6, %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.u
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.f
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !38
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6casadi5SolveILb1EE9n_inplaceEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi5SolveILb1EE10mod_prefixB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39
  store i8 0, ptr %i.a, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi5SolveILb1EE10mod_suffixB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39
  store i8 0, ptr %i.a, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi9TriuSolveILb1EE5solveERKNS_2MXES4_b(ptr dead_on_unwind noalias writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi5SolveILb1EE4A_spEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.h, 1
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.h) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi5SolveILb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #34
  unreachable
}

declare void @_ZN6casadi13CodeGenerator9triusolveERKNS_8SparsityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_bbx(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(3289), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi16casadi_triusolveINS_6SXElemEEEvPKxPKT_PS4_iix(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %7 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %8 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %9 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %10 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %11 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %12 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %13 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %14 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %15 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !183    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !183  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.c ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = icmp sgt i64 %5, 0
  br i1 %i.g, label %.lr.ph149, label %._crit_edge

.lr.ph149:                                        ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  %i.h = icmp sgt i64 %i.c, 0                     ; 4 uses
  %.not100 = icmp eq i32 %3, 0                    ; 2 uses
  br i1 %.not, label %.lr.ph149.split.us, label %.lr.ph149.split

.lr.ph149.split.us:                               ; preds = %.lr.ph149
  br i1 %.not100, label %.lr.ph149.split.us.split.us, label %.lr.ph149.split.us.split

.lr.ph149.split.us.split.us:                      ; preds = %.lr.ph149.split.us
  br i1 %i.h, label %.preheader.us.us, label %._crit_edge

.preheader.us.us:                                 ; preds = %.lr.ph149.split.us.split.us, %..loopexit118_crit_edge.us.us
  %.089147.us.us = phi ptr [ %i.ab, %..loopexit118_crit_edge.us.us ], [ %2, %.lr.ph149.split.us.split.us ] ; 3 uses
  %.090146.us.us = phi i64 [ %i.ac, %..loopexit118_crit_edge.us.us ], [ 0, %.lr.ph149.split.us.split.us ]
  %.pre183 = load i64, ptr %i.e, align 8, !tbaa !183
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us.us, %.loopexit.us.us
  %i.i = phi i64 [ %.pre183, %.preheader.us.us ], [ %i.y, %.loopexit.us.us ] ; 2 uses
  %.395144.us.us = phi i64 [ %i.c, %.preheader.us.us ], [ %i.j, %.loopexit.us.us ] ; 2 uses
  %i.j = add nsw i64 %.395144.us.us, -1           ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !183  ; 2 uses
  %i.m = icmp sgt i64 %i.i, %i.l
  br i1 %i.m, label %.lr.ph143.us.us, label %.loopexit.us.us

bb.c:                                             ; preds = %.lr.ph143.us.us, %bb.g
  %.3142.us.us = phi i64 [ %i.i, %.lr.ph143.us.us ], [ %i.n, %bb.g ] ; 2 uses
  %i.n = add nsw i64 %.3142.us.us, -1             ; 4 uses
  %i.o = getelementptr [8 x i8], ptr %i.e, i64 %.3142.us.us
  %i.p = load i64, ptr %i.o, align 8, !tbaa !183  ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.j
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.n
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %15, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.s = getelementptr inbounds [8 x i8], ptr %.089147.us.us, i64 %i.p ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %6, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc111.us.us unwind label %.split157.us.split.us

.noexc111.us.us:                                  ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.e unwind label %.split160.us.split.us ; 0 uses

bb.e:                                             ; preds = %.noexc111.us.us
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %7, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN6casadi17GenericExpressionINS_6SXElemEEdVERKS1_.exit110.us.us unwind label %.split163.us.split.us ; 0 uses

_ZN6casadi17GenericExpressionINS_6SXElemEEdVERKS1_.exit110.us.us: ; preds = %bb.f
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZN6casadi17GenericExpressionINS_6SXElemEEdVERKS1_.exit110.us.us, %bb.e
  %i.w = load i64, ptr %i.k, align 8, !tbaa !183  ; 2 uses
  %i.x = icmp sgt i64 %i.n, %i.w
  br i1 %i.x, label %bb.c, label %.loopexit.us.us, !llvm.loop !1600

.loopexit.us.us:                                  ; preds = %bb.g, %bb.b
  %i.y = phi i64 [ %i.l, %bb.b ], [ %i.w, %bb.g ]
  %i.z = icmp sgt i64 %.395144.us.us, 1
  br i1 %i.z, label %bb.b, label %..loopexit118_crit_edge.us.us, !llvm.loop !1601

.lr.ph143.us.us:                                  ; preds = %bb.b
  %i.aa = getelementptr inbounds [8 x i8], ptr %.089147.us.us, i64 %i.j ; 3 uses
  br label %bb.c

..loopexit118_crit_edge.us.us:                    ; preds = %.loopexit.us.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %.089147.us.us, i64 %i.a
  %i.ac = add nuw nsw i64 %.090146.us.us, 1       ; 2 uses
  %exitcond180.not = icmp eq i64 %i.ac, %5
  br i1 %exitcond180.not, label %._crit_edge, label %.preheader.us.us, !llvm.loop !1602

.split157.us.split.us:                            ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body112

.split160.us.split.us:                            ; preds = %.noexc111.us.us
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %.body112

.split163.us.split.us:                            ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %common.resume

.lr.ph149.split.us.split:                         ; preds = %.lr.ph149.split.us
  br i1 %i.h, label %.preheader119.us, label %._crit_edge

.preheader119.us:                                 ; preds = %.lr.ph149.split.us.split, %..loopexit120_crit_edge.us
  %.089147.us = phi ptr [ %i.ay, %..loopexit120_crit_edge.us ], [ %2, %.lr.ph149.split.us.split ] ; 3 uses
  %.090146.us = phi i64 [ %i.az, %..loopexit120_crit_edge.us ], [ 0, %.lr.ph149.split.us.split ]
  %.pre182 = load i64, ptr %i.d, align 8, !tbaa !183
  br label %bb.h

bb.h:                                             ; preds = %.preheader119.us, %.loopexit115.us
  %i.ag = phi i64 [ %.pre182, %.preheader119.us ], [ %i.aw, %.loopexit115.us ] ; 2 uses
  %.294140.us = phi i64 [ 0, %.preheader119.us ], [ %i.ah, %.loopexit115.us ] ; 3 uses
  %i.ah = add nuw nsw i64 %.294140.us, 1          ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !183 ; 2 uses
  %i.ak = icmp slt i64 %i.ag, %i.aj
  br i1 %i.ak, label %.lr.ph139.us, label %.loopexit115.us

bb.i:                                             ; preds = %.lr.ph139.us, %bb.m
  %.2138.us = phi i64 [ %i.ag, %.lr.ph139.us ], [ %i.at, %bb.m ] ; 4 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.2138.us
  %i.am = load i64, ptr %i.al, align 8, !tbaa !183 ; 2 uses
  %i.an = icmp eq i64 %i.am, %.294140.us
  br i1 %i.an, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.ao = getelementptr inbounds [8 x i8], ptr %1, i64 %.2138.us
  %i.ap = getelementptr inbounds [8 x i8], ptr %.089147.us, i64 %i.am
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %14, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %8, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc107.us unwind label %.split.us

.noexc107.us:                                     ; preds = %bb.j
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.k unwind label %.split151.us ; 0 uses

bb.k:                                             ; preds = %.noexc107.us
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds [8 x i8], ptr %1, i64 %.2138.us
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %9, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi17GenericExpressionINS_6SXElemEEdVERKS1_.exit.us unwind label %.split154.us ; 0 uses

_ZN6casadi17GenericExpressionINS_6SXElemEEdVERKS1_.exit.us: ; preds = %bb.l
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.m

bb.m:                                             ; preds = %_ZN6casadi17GenericExpressionINS_6SXElemEEdVERKS1_.exit.us, %bb.k
  %i.at = add nsw i64 %.2138.us, 1                ; 2 uses
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !183 ; 2 uses
  %i.av = icmp slt i64 %i.at, %i.au
  br i1 %i.av, label %bb.i, label %.loopexit115.us, !llvm.loop !1603

.loopexit115.us:                                  ; preds = %bb.m, %bb.h
  %i.aw = phi i64 [ %i.aj, %bb.h ], [ %i.au, %bb.m ]
  %exitcond178.not = icmp eq i64 %i.ah, %i.c
  br i1 %exitcond178.not, label %..loopexit120_crit_edge.us, label %bb.h, !llvm.loop !1604

.lr.ph139.us:                                     ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.089147.us, i64 %.294140.us ; 4 uses
  br label %bb.i

..loopexit120_crit_edge.us:                       ; preds = %.loopexit115.us
  %i.ay = getelementptr inbounds [8 x i8], ptr %.089147.us, i64 %i.a
  %i.az = add nuw nsw i64 %.090146.us, 1          ; 2 uses
  %exitcond179.not = icmp eq i64 %i.az, %5
  br i1 %exitcond179.not, label %._crit_edge, label %.preheader119.us, !llvm.loop !1602

.split.us:                                        ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body108

.split151.us:                                     ; preds = %.noexc107.us
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.body108

.split154.us:                                     ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %common.resume

.lr.ph149.split:                                  ; preds = %.lr.ph149
  br i1 %.not100, label %.lr.ph149.split.split.us, label %.lr.ph149.split.split

.lr.ph149.split.split.us:                         ; preds = %.lr.ph149.split
  br i1 %i.h, label %.preheader121.us, label %._crit_edge

.preheader121.us:                                 ; preds = %.lr.ph149.split.split.us, %..loopexit122_crit_edge.us
  %.089147.us165 = phi ptr [ %i.bt, %..loopexit122_crit_edge.us ], [ %2, %.lr.ph149.split.split.us ] ; 3 uses
  %.090146.us166 = phi i64 [ %i.bu, %..loopexit122_crit_edge.us ], [ 0, %.lr.ph149.split.split.us ]
  %.pre181 = load i64, ptr %i.e, align 8, !tbaa !183
  br label %bb.n

bb.n:                                             ; preds = %.preheader121.us, %.loopexit116.us
  %i.bd = phi i64 [ %.pre181, %.preheader121.us ], [ %i.bq, %.loopexit116.us ] ; 2 uses
  %.193136.us = phi i64 [ %i.c, %.preheader121.us ], [ %i.be, %.loopexit116.us ] ; 2 uses
  %i.be = add nsw i64 %.193136.us, -1             ; 3 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !183 ; 2 uses
  %i.bh = icmp sgt i64 %i.bd, %i.bg
  br i1 %i.bh, label %.lr.ph135.us, label %.loopexit116.us

bb.o:                                             ; preds = %.lr.ph135.us, %bb.p
  %.1134.us = phi i64 [ %i.bd, %.lr.ph135.us ], [ %i.bi, %bb.p ] ; 2 uses
  %i.bi = add nsw i64 %.1134.us, -1               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.bj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bi
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %13, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
  %i.bk = getelementptr [8 x i8], ptr %i.e, i64 %.1134.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !183
  %i.bm = getelementptr inbounds [8 x i8], ptr %.089147.us165, i64 %i.bl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %10, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc103.us unwind label %.split.us167

.noexc103.us:                                     ; preds = %bb.o
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.p unwind label %.split169.us ; 0 uses

bb.p:                                             ; preds = %.noexc103.us
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.bo = load i64, ptr %i.bf, align 8, !tbaa !183 ; 2 uses
  %i.bp = icmp sgt i64 %i.bi, %i.bo
  br i1 %i.bp, label %bb.o, label %.loopexit116.us, !llvm.loop !1605

.loopexit116.us:                                  ; preds = %bb.p, %bb.n
  %i.bq = phi i64 [ %i.bg, %bb.n ], [ %i.bo, %bb.p ]
  %i.br = icmp sgt i64 %.193136.us, 1
  br i1 %i.br, label %bb.n, label %..loopexit122_crit_edge.us, !llvm.loop !1606

.lr.ph135.us:                                     ; preds = %bb.n
  %i.bs = getelementptr inbounds [8 x i8], ptr %.089147.us165, i64 %i.be
  br label %bb.o

..loopexit122_crit_edge.us:                       ; preds = %.loopexit116.us
  %i.bt = getelementptr inbounds [8 x i8], ptr %.089147.us165, i64 %i.a
  %i.bu = add nuw nsw i64 %.090146.us166, 1       ; 2 uses
  %exitcond177.not = icmp eq i64 %i.bu, %5
  br i1 %exitcond177.not, label %._crit_edge, label %.preheader121.us, !llvm.loop !1602

.split.us167:                                     ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body104

.split169.us:                                     ; preds = %.noexc103.us
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %.body104

.lr.ph149.split.split:                            ; preds = %.lr.ph149.split
  br i1 %i.h, label %.preheader123, label %._crit_edge

.preheader123:                                    ; preds = %.lr.ph149.split.split, %..loopexit124_crit_edge
  %.089147 = phi ptr [ %i.co, %..loopexit124_crit_edge ], [ %2, %.lr.ph149.split.split ] ; 3 uses
  %.090146 = phi i64 [ %i.cp, %..loopexit124_crit_edge ], [ 0, %.lr.ph149.split.split ]
  %.pre = load i64, ptr %i.d, align 8, !tbaa !183
  br label %bb.q

.loopexit117:                                     ; preds = %bb.t, %bb.q
  %i.bx = phi i64 [ %i.cb, %bb.q ], [ %i.cl, %bb.t ]
  %exitcond.not = icmp eq i64 %i.bz, %i.c
  br i1 %exitcond.not, label %..loopexit124_crit_edge, label %bb.q, !llvm.loop !1607

bb.q:                                             ; preds = %.preheader123, %.loopexit117
  %i.by = phi i64 [ %.pre, %.preheader123 ], [ %i.bx, %.loopexit117 ] ; 2 uses
  %.092132 = phi i64 [ 0, %.preheader123 ], [ %i.bz, %.loopexit117 ] ; 2 uses
  %i.bz = add nuw nsw i64 %.092132, 1             ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bz ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !183 ; 2 uses
  %i.cc = icmp slt i64 %i.by, %i.cb
  br i1 %i.cc, label %.lr.ph, label %.loopexit117

.lr.ph:                                           ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.089147, i64 %.092132 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.t
  %.091131 = phi i64 [ %i.by, %.lr.ph ], [ %i.ck, %bb.t ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.ce = getelementptr inbounds [8 x i8], ptr %1, i64 %.091131
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.091131
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !183
  %i.ch = getelementptr inbounds [8 x i8], ptr %.089147, i64 %i.cg
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %12, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %11, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.r
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.t unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %.noexc
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %.body

bb.t:                                             ; preds = %.noexc
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.ck = add nsw i64 %.091131, 1                 ; 2 uses
  %i.cl = load i64, ptr %i.ca, align 8, !tbaa !183 ; 2 uses
  %i.cm = icmp slt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.r, label %.loopexit117, !llvm.loop !1608

bb.u:                                             ; preds = %bb.r
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.cn, %bb.u ], [ %i.cj, %bb.s ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %common.resume

.body104:                                         ; preds = %.split169.us, %.split.us167
  %eh.lpad-body105 = phi { ptr, i32 } [ %i.bv, %.split.us167 ], [ %i.bw, %.split169.us ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %common.resume

common.resume:                                    ; preds = %.body, %.body104, %.body108, %.body112, %.split163.us.split.us, %.split154.us
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %.split154.us ], [ %i.af, %.split163.us.split.us ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body105, %.body104 ], [ %eh.lpad-body109, %.body108 ], [ %eh.lpad-body113, %.body112 ]
  resume { ptr, i32 } %common.resume.op

.body108:                                         ; preds = %.split151.us, %.split.us
  %eh.lpad-body109 = phi { ptr, i32 } [ %i.ba, %.split.us ], [ %i.bb, %.split151.us ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %common.resume

.body112:                                         ; preds = %.split160.us.split.us, %.split157.us.split.us
  %eh.lpad-body113 = phi { ptr, i32 } [ %i.ad, %.split157.us.split.us ], [ %i.ae, %.split160.us.split.us ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %common.resume

..loopexit124_crit_edge:                          ; preds = %.loopexit117
  %i.co = getelementptr inbounds [8 x i8], ptr %.089147, i64 %i.a
  %i.cp = add nuw nsw i64 %.090146, 1             ; 2 uses
  %exitcond176.not = icmp eq i64 %i.cp, %5
  br i1 %exitcond176.not, label %._crit_edge, label %.preheader123, !llvm.loop !1602

._crit_edge:                                      ; preds = %..loopexit124_crit_edge, %..loopexit122_crit_edge.us, %..loopexit120_crit_edge.us, %..loopexit118_crit_edge.us.us, %.lr.ph149.split.us.split, %.lr.ph149.split.us.split.us, %.lr.ph149.split.split, %.lr.ph149.split.split.us, %bb.a
  ret void
}

declare void @_ZN6casadi2MX6mtimesERKS0_S2_(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN6casadi2MX9horzsplitERKS0_RKSt6vectorIxSaIxEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !604  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !607    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !611
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN6casadi2MXESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIN6casadi2MXESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !604
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.109) #35
  unreachable

_ZNKSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #36 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !155, !alias.scope !1612, !noalias !1609
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !155, !alias.scope !1609, !noalias !1612
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30, !alias.scope !1612, !noalias !1609
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !30, !alias.scope !1609, !noalias !1612
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1612, !noalias !1609
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1614

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
end_hunk_0
begin_hunk_1_@_ZNK6casadi9TriuSolveILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.de = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.u:                                             ; preds = %.noexc56, %_ZNK6casadi6MXNode3depEx.exit55, %_ZNK6casadi6MXNode3nnzEx.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.v:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.w
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.dq, %bb.w ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.do, %bb.u ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.eb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !38
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi9TriuSolveILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !786    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !786
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !786    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !616

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.t, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.t) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !786
  %i.z = load ptr, ptr %2, align 8, !tbaa !786
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.h, label %_ZNK6casadi6MXNode3depEx.exit11

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = icmp sgt i64 %i.ad, 0
  %i.ak = icmp sgt i64 %i.ag, 0
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %.preheader.us.us.preheader.i, label %_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit

.preheader.us.us.preheader.i:                     ; preds = %_ZNK6casadi6MXNode3depEx.exit11
  %.pre142.pre.i = load i64, ptr %i.ai, align 8, !tbaa !183
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %..loopexit101_crit_edge.us.us.i, %.preheader.us.us.preheader.i
  %.0125.us.us.i = phi ptr [ %i.bf, %..loopexit101_crit_edge.us.us.i ], [ %i.z, %.preheader.us.us.preheader.i ] ; 3 uses
  %.086124.us.us.i = phi i64 [ %i.bg, %..loopexit101_crit_edge.us.us.i ], [ 0, %.preheader.us.us.preheader.i ]
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.us.us.i, %.preheader.us.us.i
  %i.al = phi i64 [ %.pre142.pre.i, %.preheader.us.us.i ], [ %i.ao, %.loopexit.us.us.i ] ; 2 uses
  %.391122.us.us.i = phi i64 [ %i.ag, %.preheader.us.us.i ], [ %i.am, %.loopexit.us.us.i ] ; 2 uses
  %i.am = add nsw i64 %.391122.us.us.i, -1        ; 4 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !183 ; 3 uses
  %i.ap = icmp sgt i64 %i.al, %i.ao
  br i1 %i.ap, label %.lr.ph121.us.us.i, label %.loopexit.us.us.i

bb.j:                                             ; preds = %.lr.ph121.us.us.i, %bb.m
  %.3120.us.us.i = phi i64 [ %i.al, %.lr.ph121.us.us.i ], [ %i.aq, %bb.m ] ; 2 uses
  %i.aq = add nsw i64 %.3120.us.us.i, -1          ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ai, i64 %.3120.us.us.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !183 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.am
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aq
  %i.av = load double, ptr %i.au, align 8, !tbaa !560 ; 2 uses
  %i.aw = load double, ptr %i.be, align 8, !tbaa !560 ; 2 uses
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds [8 x i8], ptr %.0125.us.us.i, i64 %i.as ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !560
  %i.az = fneg double %i.av
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double %i.aw, double %i.ay)
  store double %i.ba, ptr %i.ax, align 8, !tbaa !560
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bb = fdiv double %i.aw, %i.av
  store double %i.bb, ptr %i.be, align 8, !tbaa !560
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = icmp sgt i64 %i.aq, %i.ao
  br i1 %i.bc, label %bb.j, label %.loopexit.us.us.i, !llvm.loop !1630

.loopexit.us.us.i:                                ; preds = %bb.m, %bb.i
  %i.bd = icmp sgt i64 %.391122.us.us.i, 1
  br i1 %i.bd, label %bb.i, label %..loopexit101_crit_edge.us.us.i, !llvm.loop !1631

.lr.ph121.us.us.i:                                ; preds = %bb.i
  %i.be = getelementptr inbounds [8 x i8], ptr %.0125.us.us.i, i64 %i.am ; 2 uses
  br label %bb.j

..loopexit101_crit_edge.us.us.i:                  ; preds = %.loopexit.us.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %.0125.us.us.i, i64 %i.ae
  %i.bg = add nuw nsw i64 %.086124.us.us.i, 1     ; 2 uses
  %exitcond139.not.i = icmp eq i64 %i.bg, %i.ad
  br i1 %exitcond139.not.i, label %_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit, label %.preheader.us.us.i, !llvm.loop !1574

_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit: ; preds = %..loopexit101_crit_edge.us.us.i, %_ZNK6casadi6MXNode3depEx.exit11
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi9TriuSolveILb0EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !788    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !788
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !788
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, !llvm.loop !1575

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.w, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.w) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.z = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit11

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = load ptr, ptr %2, align 8, !tbaa !788
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !788
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ag = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  tail call void @_ZN6casadi16casadi_triusolveINS_6SXElemEEEvPKxPKT_PS4_iix(ptr noundef %i.z, ptr noundef %i.ae, ptr noundef %i.ac, i32 noundef 0, i32 noundef 0, i64 noundef %i.ag)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi5SolveILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"struct.std::pair.154", align 8    ; 6 uses
  %5 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !26
  %i.b = tail call noundef zeroext i1 @_ZNK6casadi2MX7is_zeroEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.c = load ptr, ptr %1, align 8, !tbaa !26
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = tail call { i64, i64 } @_ZNK6casadi8Sparsity4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  store i64 %i.f, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = extractvalue { i64, i64 } %i.e, 1
  store i64 %i.h, ptr %i.g, align 8
  call void @_ZN6casadi2MXC1ERKSt4pairIxxE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.i = load ptr, ptr %2, align 8, !tbaa !26
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.c ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.b
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.l = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %0, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 904
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i1 noundef zeroext false)
  %i.q = load ptr, ptr %2, align 8, !tbaa !26
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6casadi2MXaSERKS0_.exit10 unwind label %bb.e ; 0 uses

_ZN6casadi2MXaSERKS0_.exit10:                     ; preds = %bb.d
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.g

bb.f:                                             ; preds = %_ZN6casadi2MXaSERKS0_.exit10, %_ZN6casadi2MXaSERKS0_.exit
  ret void

bb.g:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi5SolveILb0EE10ad_forwardERKSt6vectorIS2_INS_2MXESaIS3_EESaIS5_EERS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 12 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %8 = alloca %"class.std::vector", align 16      ; 15 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::vector.111", align 8  ; 14 uses
  %11 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %12 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %13 = alloca %"class.std::vector", align 16     ; 10 uses
  %14 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %15 = alloca %"class.casadi::MX", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.h, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6casadi2MXaSERKS0_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
end_hunk_1
begin_hunk_2_@_ZNK6casadi9TrilSolveILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.de = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.u:                                             ; preds = %.noexc56, %_ZNK6casadi6MXNode3depEx.exit55, %_ZNK6casadi6MXNode3nnzEx.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.v:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.w
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.dq, %bb.w ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.do, %bb.u ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.eb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !38
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi9TrilSolveILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !786    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !786
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !786    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !616

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.t, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.t) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !786
  %i.z = load ptr, ptr %2, align 8, !tbaa !786
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.h, label %_ZNK6casadi6MXNode3depEx.exit11

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = icmp sgt i64 %i.ad, 0
  %i.ak = icmp sgt i64 %i.ag, 0
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %.preheader103.us.preheader.i, label %_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit

.preheader103.us.preheader.i:                     ; preds = %_ZNK6casadi6MXNode3depEx.exit11
  %.pre142.pre.i = load i64, ptr %i.ai, align 8, !tbaa !183
  br label %.preheader103.us.i

.preheader103.us.i:                               ; preds = %..loopexit104_crit_edge.us.i, %.preheader103.us.preheader.i
  %.0126.us.i = phi ptr [ %i.be, %..loopexit104_crit_edge.us.i ], [ %i.z, %.preheader103.us.preheader.i ] ; 3 uses
  %.086125.us.i = phi i64 [ %i.bf, %..loopexit104_crit_edge.us.i ], [ 0, %.preheader103.us.preheader.i ]
  br label %bb.i

bb.i:                                             ; preds = %.loopexit99.us.i, %.preheader103.us.i
  %i.al = phi i64 [ %.pre142.pre.i, %.preheader103.us.i ], [ %i.ao, %.loopexit99.us.i ] ; 2 uses
  %.290119.us.i = phi i64 [ %i.ag, %.preheader103.us.i ], [ %i.am, %.loopexit99.us.i ] ; 2 uses
  %i.am = add nsw i64 %.290119.us.i, -1           ; 4 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !183 ; 3 uses
  %i.ap = icmp sgt i64 %i.al, %i.ao
  br i1 %i.ap, label %.lr.ph118.us.i, label %.loopexit99.us.i

bb.j:                                             ; preds = %.lr.ph118.us.i, %bb.m
  %storemerge167.i = phi double [ %.promoted166.i, %.lr.ph118.us.i ], [ %storemerge.i, %bb.m ] ; 2 uses
  %.2117.us.i = phi i64 [ %i.al, %.lr.ph118.us.i ], [ %i.aq, %bb.m ] ; 2 uses
  %i.aq = add nsw i64 %.2117.us.i, -1             ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ai, i64 %.2117.us.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !183 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.am
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aq
  %i.av = load double, ptr %i.au, align 8, !tbaa !560 ; 2 uses
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds [8 x i8], ptr %.0126.us.i, i64 %i.as
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !560
  %i.ay = fneg double %i.av
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ax, double %storemerge167.i)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ba = fdiv double %storemerge167.i, %i.av
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge.i = phi double [ %i.az, %bb.k ], [ %i.ba, %bb.l ] ; 2 uses
  store double %storemerge.i, ptr %i.bd, align 8, !tbaa !560
  %i.bb = icmp sgt i64 %i.aq, %i.ao
  br i1 %i.bb, label %bb.j, label %.loopexit99.us.i, !llvm.loop !1654

.loopexit99.us.i:                                 ; preds = %bb.m, %bb.i
  %i.bc = icmp sgt i64 %.290119.us.i, 1
  br i1 %i.bc, label %bb.i, label %..loopexit104_crit_edge.us.i, !llvm.loop !1655

.lr.ph118.us.i:                                   ; preds = %bb.i
  %i.bd = getelementptr inbounds [8 x i8], ptr %.0126.us.i, i64 %i.am ; 2 uses
  %.promoted166.i = load double, ptr %i.bd, align 8
  br label %bb.j

..loopexit104_crit_edge.us.i:                     ; preds = %.loopexit99.us.i
  %i.be = getelementptr inbounds [8 x i8], ptr %.0126.us.i, i64 %i.ae
  %i.bf = add nuw nsw i64 %.086125.us.i, 1        ; 2 uses
  %exitcond137.not.i = icmp eq i64 %i.bf, %i.ad
  br i1 %exitcond137.not.i, label %_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit, label %.preheader103.us.i, !llvm.loop !1656

_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit: ; preds = %..loopexit104_crit_edge.us.i, %_ZNK6casadi6MXNode3depEx.exit11
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi9TrilSolveILb1EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !788    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !788
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !788
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, !llvm.loop !1575

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.w, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.w) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.z = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit11

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = load ptr, ptr %2, align 8, !tbaa !788
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !788
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ag = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  tail call void @_ZN6casadi16casadi_trilsolveINS_6SXElemEEEvPKxPKT_PS4_iix(ptr noundef %i.z, ptr noundef %i.ae, ptr noundef %i.ac, i32 noundef 1, i32 noundef 0, i64 noundef %i.ag)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi9TrilSolveILb1EE5solveERKNS_2MXES4_b(ptr dead_on_unwind noalias writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
  ret void
}

declare void @_ZN6casadi13CodeGenerator9trilsolveERKNS_8SparsityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_bbx(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(3289), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi16casadi_trilsolveINS_6SXElemEEEvPKxPKT_PS4_iix(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %7 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %8 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %9 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %10 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %11 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %12 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %13 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %14 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %15 = alloca %"class.casadi::SXElem", align 8   ; 7 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !183    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !183  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.c ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = icmp sgt i64 %5, 0
  br i1 %i.g, label %.lr.ph150, label %._crit_edge

.lr.ph150:                                        ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  %i.h = icmp sgt i64 %i.c, 0                     ; 4 uses
  %.not101 = icmp eq i32 %3, 0                    ; 2 uses
  br i1 %.not, label %.lr.ph150.split.us, label %.lr.ph150.split

.lr.ph150.split.us:                               ; preds = %.lr.ph150
  br i1 %.not101, label %.lr.ph150.split.us.split.us, label %.lr.ph150.split.us.split

.lr.ph150.split.us.split.us:                      ; preds = %.lr.ph150.split.us
  br i1 %i.h, label %.preheader.us.us, label %._crit_edge

.preheader.us.us:                                 ; preds = %.lr.ph150.split.us.split.us, %..loopexit119_crit_edge.us.us
  %.089148.us.us = phi ptr [ %i.aa, %..loopexit119_crit_edge.us.us ], [ %2, %.lr.ph150.split.us.split.us ] ; 3 uses
  %.090147.us.us = phi i64 [ %i.ab, %..loopexit119_crit_edge.us.us ], [ 0, %.lr.ph150.split.us.split.us ]
  %.pre184 = load i64, ptr %i.d, align 8, !tbaa !183
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us.us, %.loopexit.us.us
  %i.i = phi i64 [ %.pre184, %.preheader.us.us ], [ %i.y, %.loopexit.us.us ] ; 2 uses
  %.395145.us.us = phi i64 [ 0, %.preheader.us.us ], [ %i.j, %.loopexit.us.us ] ; 3 uses
  %i.j = add nuw nsw i64 %.395145.us.us, 1        ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !183  ; 2 uses
  %i.m = icmp slt i64 %i.i, %i.l
  br i1 %i.m, label %.lr.ph144.us.us, label %.loopexit.us.us

bb.c:                                             ; preds = %.lr.ph144.us.us, %bb.g
  %.3143.us.us = phi i64 [ %i.i, %.lr.ph144.us.us ], [ %i.v, %bb.g ] ; 4 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.3143.us.us
  %i.o = load i64, ptr %i.n, align 8, !tbaa !183  ; 2 uses
  %i.p = icmp eq i64 %i.o, %.395145.us.us
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.q = getelementptr inbounds [8 x i8], ptr %1, i64 %.3143.us.us
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %15, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.r = getelementptr inbounds [8 x i8], ptr %.089148.us.us, i64 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %6, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc112.us.us unwind label %.split158.us.split.us

.noexc112.us.us:                                  ; preds = %bb.d
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.e unwind label %.split161.us.split.us ; 0 uses

bb.e:                                             ; preds = %.noexc112.us.us
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %.3143.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %7, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN6casadi17GenericExpressionINS_6SXElemEEdVERKS1_.exit111.us.us unwind label %.split164.us.split.us ; 0 uses

_ZN6casadi17GenericExpressionINS_6SXElemEEdVERKS1_.exit111.us.us: ; preds = %bb.f
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZN6casadi17GenericExpressionINS_6SXElemEEdVERKS1_.exit111.us.us, %bb.e
  %i.v = add nsw i64 %.3143.us.us, 1              ; 2 uses
  %i.w = load i64, ptr %i.k, align 8, !tbaa !183  ; 2 uses
  %i.x = icmp slt i64 %i.v, %i.w
  br i1 %i.x, label %bb.c, label %.loopexit.us.us, !llvm.loop !1657

.loopexit.us.us:                                  ; preds = %bb.g, %bb.b
  %i.y = phi i64 [ %i.l, %bb.b ], [ %i.w, %bb.g ]
  %exitcond180.not = icmp eq i64 %i.j, %i.c
  br i1 %exitcond180.not, label %..loopexit119_crit_edge.us.us, label %bb.b, !llvm.loop !1658

.lr.ph144.us.us:                                  ; preds = %bb.b
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.089148.us.us, i64 %.395145.us.us ; 3 uses
  br label %bb.c

..loopexit119_crit_edge.us.us:                    ; preds = %.loopexit.us.us
  %i.aa = getelementptr inbounds [8 x i8], ptr %.089148.us.us, i64 %i.a
  %i.ab = add nuw nsw i64 %.090147.us.us, 1       ; 2 uses
  %exitcond181.not = icmp eq i64 %i.ab, %5
  br i1 %exitcond181.not, label %._crit_edge, label %.preheader.us.us, !llvm.loop !1659

.split158.us.split.us:                            ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body113

.split161.us.split.us:                            ; preds = %.noexc112.us.us
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %.body113

.split164.us.split.us:                            ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %common.resume

.lr.ph150.split.us.split:                         ; preds = %.lr.ph150.split.us
  br i1 %i.h, label %.preheader120.us, label %._crit_edge

.preheader120.us:                                 ; preds = %.lr.ph150.split.us.split, %..loopexit121_crit_edge.us
  %.089148.us = phi ptr [ %i.ay, %..loopexit121_crit_edge.us ], [ %2, %.lr.ph150.split.us.split ] ; 3 uses
  %.090147.us = phi i64 [ %i.az, %..loopexit121_crit_edge.us ], [ 0, %.lr.ph150.split.us.split ]
  %.pre183 = load i64, ptr %i.e, align 8, !tbaa !183
  br label %bb.h

bb.h:                                             ; preds = %.preheader120.us, %.loopexit116.us
  %i.af = phi i64 [ %.pre183, %.preheader120.us ], [ %i.av, %.loopexit116.us ] ; 2 uses
  %.294141.us = phi i64 [ %i.c, %.preheader120.us ], [ %i.ag, %.loopexit116.us ] ; 2 uses
  %i.ag = add nsw i64 %.294141.us, -1             ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !183 ; 2 uses
  %i.aj = icmp sgt i64 %i.af, %i.ai
  br i1 %i.aj, label %.lr.ph140.us, label %.loopexit116.us

bb.i:                                             ; preds = %.lr.ph140.us, %bb.m
  %.2139.us = phi i64 [ %i.af, %.lr.ph140.us ], [ %i.ak, %bb.m ] ; 2 uses
  %i.ak = add nsw i64 %.2139.us, -1               ; 4 uses
  %i.al = getelementptr [8 x i8], ptr %i.e, i64 %.2139.us
  %i.am = load i64, ptr %i.al, align 8, !tbaa !183 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.ag
  br i1 %i.an, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.ao = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.ap = getelementptr inbounds [8 x i8], ptr %.089148.us, i64 %i.am
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %14, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %8, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc108.us unwind label %.split.us

.noexc108.us:                                     ; preds = %bb.j
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.k unwind label %.split152.us ; 0 uses

bb.k:                                             ; preds = %.noexc108.us
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %9, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi17GenericExpressionINS_6SXElemEEdVERKS1_.exit.us unwind label %.split155.us ; 0 uses

_ZN6casadi17GenericExpressionINS_6SXElemEEdVERKS1_.exit.us: ; preds = %bb.l
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.m

bb.m:                                             ; preds = %_ZN6casadi17GenericExpressionINS_6SXElemEEdVERKS1_.exit.us, %bb.k
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !183 ; 2 uses
  %i.au = icmp sgt i64 %i.ak, %i.at
  br i1 %i.au, label %bb.i, label %.loopexit116.us, !llvm.loop !1660

.loopexit116.us:                                  ; preds = %bb.m, %bb.h
  %i.av = phi i64 [ %i.ai, %bb.h ], [ %i.at, %bb.m ]
  %i.aw = icmp sgt i64 %.294141.us, 1
  br i1 %i.aw, label %bb.h, label %..loopexit121_crit_edge.us, !llvm.loop !1661

.lr.ph140.us:                                     ; preds = %bb.h
  %i.ax = getelementptr inbounds [8 x i8], ptr %.089148.us, i64 %i.ag ; 4 uses
  br label %bb.i

..loopexit121_crit_edge.us:                       ; preds = %.loopexit116.us
  %i.ay = getelementptr inbounds [8 x i8], ptr %.089148.us, i64 %i.a
  %i.az = add nuw nsw i64 %.090147.us, 1          ; 2 uses
  %exitcond179.not = icmp eq i64 %i.az, %5
  br i1 %exitcond179.not, label %._crit_edge, label %.preheader120.us, !llvm.loop !1659

.split.us:                                        ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body109

.split152.us:                                     ; preds = %.noexc108.us
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.body109

.split155.us:                                     ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %common.resume

.lr.ph150.split:                                  ; preds = %.lr.ph150
  br i1 %.not101, label %.lr.ph150.split.split.us, label %.lr.ph150.split.split

.lr.ph150.split.split.us:                         ; preds = %.lr.ph150.split
  br i1 %i.h, label %.preheader122.us, label %._crit_edge

.preheader122.us:                                 ; preds = %.lr.ph150.split.split.us, %..loopexit123_crit_edge.us
  %.089148.us166 = phi ptr [ %i.bs, %..loopexit123_crit_edge.us ], [ %2, %.lr.ph150.split.split.us ] ; 3 uses
  %.090147.us167 = phi i64 [ %i.bt, %..loopexit123_crit_edge.us ], [ 0, %.lr.ph150.split.split.us ]
  %.pre182 = load i64, ptr %i.d, align 8, !tbaa !183
  br label %bb.n

bb.n:                                             ; preds = %.preheader122.us, %.loopexit117.us
  %i.bd = phi i64 [ %.pre182, %.preheader122.us ], [ %i.bq, %.loopexit117.us ] ; 2 uses
  %.193137.us = phi i64 [ 0, %.preheader122.us ], [ %i.be, %.loopexit117.us ] ; 2 uses
  %i.be = add nuw nsw i64 %.193137.us, 1          ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !183 ; 2 uses
  %i.bh = icmp slt i64 %i.bd, %i.bg
  br i1 %i.bh, label %.lr.ph136.us, label %.loopexit117.us

bb.o:                                             ; preds = %.lr.ph136.us, %bb.p
  %.1135.us = phi i64 [ %i.bd, %.lr.ph136.us ], [ %i.bn, %bb.p ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %.1135.us
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %13, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.br)
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.1135.us
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !183
  %i.bl = getelementptr inbounds [8 x i8], ptr %.089148.us166, i64 %i.bk ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %10, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc104.us unwind label %.split.us168

.noexc104.us:                                     ; preds = %bb.o
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.p unwind label %.split170.us ; 0 uses

bb.p:                                             ; preds = %.noexc104.us
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.bn = add nsw i64 %.1135.us, 1                ; 2 uses
  %i.bo = load i64, ptr %i.bf, align 8, !tbaa !183 ; 2 uses
  %i.bp = icmp slt i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.o, label %.loopexit117.us, !llvm.loop !1662

.loopexit117.us:                                  ; preds = %bb.p, %bb.n
  %i.bq = phi i64 [ %i.bg, %bb.n ], [ %i.bo, %bb.p ]
  %exitcond177.not = icmp eq i64 %i.be, %i.c
  br i1 %exitcond177.not, label %..loopexit123_crit_edge.us, label %bb.n, !llvm.loop !1663

.lr.ph136.us:                                     ; preds = %bb.n
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.089148.us166, i64 %.193137.us
  br label %bb.o

..loopexit123_crit_edge.us:                       ; preds = %.loopexit117.us
  %i.bs = getelementptr inbounds [8 x i8], ptr %.089148.us166, i64 %i.a
  %i.bt = add nuw nsw i64 %.090147.us167, 1       ; 2 uses
  %exitcond178.not = icmp eq i64 %i.bt, %5
  br i1 %exitcond178.not, label %._crit_edge, label %.preheader122.us, !llvm.loop !1659

.split.us168:                                     ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body105

.split170.us:                                     ; preds = %.noexc104.us
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %.body105

.lr.ph150.split.split:                            ; preds = %.lr.ph150.split
  br i1 %i.h, label %.preheader124, label %._crit_edge

.preheader124:                                    ; preds = %.lr.ph150.split.split, %..loopexit125_crit_edge
  %.089148 = phi ptr [ %i.co, %..loopexit125_crit_edge ], [ %2, %.lr.ph150.split.split ] ; 3 uses
  %.090147 = phi i64 [ %i.cp, %..loopexit125_crit_edge ], [ 0, %.lr.ph150.split.split ]
  %.pre = load i64, ptr %i.e, align 8, !tbaa !183
  br label %bb.q

.loopexit118:                                     ; preds = %bb.t, %bb.q
  %i.bw = phi i64 [ %i.cb, %bb.q ], [ %i.cl, %bb.t ]
  %i.bx = icmp sgt i64 %.092133, 1
  br i1 %i.bx, label %bb.q, label %..loopexit125_crit_edge, !llvm.loop !1664

bb.q:                                             ; preds = %.preheader124, %.loopexit118
  %i.by = phi i64 [ %.pre, %.preheader124 ], [ %i.bw, %.loopexit118 ] ; 2 uses
  %.092133 = phi i64 [ %i.c, %.preheader124 ], [ %i.bz, %.loopexit118 ] ; 2 uses
  %i.bz = add nsw i64 %.092133, -1                ; 3 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.bz ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !183 ; 2 uses
  %i.cc = icmp sgt i64 %i.by, %i.cb
  br i1 %i.cc, label %.lr.ph, label %.loopexit118

.lr.ph:                                           ; preds = %bb.q
  %i.cd = getelementptr inbounds [8 x i8], ptr %.089148, i64 %i.bz ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.t
  %.091132 = phi i64 [ %i.by, %.lr.ph ], [ %i.ce, %bb.t ] ; 2 uses
  %i.ce = add nsw i64 %.091132, -1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.cf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ce
  %i.cg = getelementptr [8 x i8], ptr %i.e, i64 %.091132
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !183
  %i.ci = getelementptr inbounds [8 x i8], ptr %.089148, i64 %i.ch
  call void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %12, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %11, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.r
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.t unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %.noexc
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %.body

bb.t:                                             ; preds = %.noexc
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.cl = load i64, ptr %i.ca, align 8, !tbaa !183 ; 2 uses
  %i.cm = icmp sgt i64 %i.ce, %i.cl
  br i1 %i.cm, label %bb.r, label %.loopexit118, !llvm.loop !1665

bb.u:                                             ; preds = %bb.r
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.cn, %bb.u ], [ %i.ck, %bb.s ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %common.resume

.body105:                                         ; preds = %.split170.us, %.split.us168
  %eh.lpad-body106 = phi { ptr, i32 } [ %i.bu, %.split.us168 ], [ %i.bv, %.split170.us ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %common.resume

common.resume:                                    ; preds = %.body, %.body105, %.body109, %.body113, %.split164.us.split.us, %.split155.us
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %.split155.us ], [ %i.ae, %.split164.us.split.us ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body106, %.body105 ], [ %eh.lpad-body110, %.body109 ], [ %eh.lpad-body114, %.body113 ]
  resume { ptr, i32 } %common.resume.op

.body109:                                         ; preds = %.split152.us, %.split.us
  %eh.lpad-body110 = phi { ptr, i32 } [ %i.ba, %.split.us ], [ %i.bb, %.split152.us ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %common.resume

.body113:                                         ; preds = %.split161.us.split.us, %.split158.us.split.us
  %eh.lpad-body114 = phi { ptr, i32 } [ %i.ac, %.split158.us.split.us ], [ %i.ad, %.split161.us.split.us ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %common.resume

..loopexit125_crit_edge:                          ; preds = %.loopexit118
  %i.co = getelementptr inbounds [8 x i8], ptr %.089148, i64 %i.a
  %i.cp = add nuw nsw i64 %.090147, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %5
  br i1 %exitcond.not, label %._crit_edge, label %.preheader124, !llvm.loop !1659

._crit_edge:                                      ; preds = %..loopexit125_crit_edge, %..loopexit123_crit_edge.us, %..loopexit121_crit_edge.us, %..loopexit119_crit_edge.us.us, %.lr.ph150.split.us.split, %.lr.ph150.split.us.split.us, %.lr.ph150.split.split, %.lr.ph150.split.split.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi9TrilSolveILb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN6casadi6MXNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi9TrilSolveILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = load ptr, ptr %2, align 8, !tbaa !302    ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !183
  %i.i = load ptr, ptr %3, align 8, !tbaa !302
  %i.j = load i64, ptr %i.i, align 8, !tbaa !183
  %.not = icmp eq i64 %i.h, %i.j
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !354
  %i.l = load i64, ptr %i.k, align 8, !tbaa !34
  %i.m = and i64 %i.l, 1
  %.not77 = icmp eq i64 %i.m, 0
  br i1 %.not77, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK6casadi6MXNode3depEx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.n = load i64, ptr %i.g, align 8, !tbaa !183
  %i.o = load ptr, ptr %0, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 392
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !357
  %i.s = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %i.t = load ptr, ptr %4, align 8, !tbaa !354
  %i.u = load i64, ptr %i.t, align 8, !tbaa !34
  %i.v = trunc i64 %i.u to i1
  call void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.n, i64 noundef %i.s, i1 noundef zeroext %i.v)
  %i.w = load ptr, ptr %0, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0)
          to label %.noexc unwind label %bb.i, !inline_history !357

.noexc:                                           ; preds = %bb.d
  %i.aa = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZNK6casadi6MXNode3nnzEx.exit unwind label %bb.i

_ZNK6casadi6MXNode3nnzEx.exit:                    ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ab = load ptr, ptr %3, align 8, !tbaa !302
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !183
  %i.ad = load ptr, ptr %0, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 392
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0)
          to label %.noexc34 unwind label %bb.j, !inline_history !357

.noexc34:                                         ; preds = %_ZNK6casadi6MXNode3nnzEx.exit
  %i.ah = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZNK6casadi6MXNode3nnzEx.exit36 unwind label %bb.j

_ZNK6casadi6MXNode3nnzEx.exit36:                  ; preds = %.noexc34
  invoke void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.ac, i64 noundef %i.ah, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3nnzEx.exit36
  invoke void @_ZN6casadi13CodeGenerator4copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ai = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aj = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.ai, i8 noundef signext 10)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.an = load i64, ptr %i.al, align 8, !tbaa !38
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ap = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !38
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

end_hunk_2
begin_hunk_3_@_ZNK6casadi14TriuSolveUnityILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.de = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.u:                                             ; preds = %.noexc56, %_ZNK6casadi6MXNode3depEx.exit55, %_ZNK6casadi6MXNode3nnzEx.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.v:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.w
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.dq, %bb.w ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.do, %bb.u ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.eb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !38
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi14TriuSolveUnityILb0EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !786    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !786
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !786    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !616

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.t, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.t) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !786  ; 3 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !786
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.h, label %_ZNK6casadi6MXNode3depEx.exit11

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag ; 4 uses
  %i.aj = icmp sgt i64 %i.ad, 0
  %i.ak = icmp sgt i64 %i.ag, 0
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %.preheader104.us.preheader.i, label %_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit

.preheader104.us.preheader.i:                     ; preds = %_ZNK6casadi6MXNode3depEx.exit11
  %.pre140.pre.i = load i64, ptr %i.ai, align 8, !tbaa !183
  br label %.preheader104.us.i

.preheader104.us.i:                               ; preds = %..loopexit105_crit_edge.us.i, %.preheader104.us.preheader.i
  %.0125.us128.i = phi ptr [ %i.bw, %..loopexit105_crit_edge.us.i ], [ %i.z, %.preheader104.us.preheader.i ] ; 5 uses
  %.086124.us129.i = phi i64 [ %i.bx, %..loopexit105_crit_edge.us.i ], [ 0, %.preheader104.us.preheader.i ]
  br label %bb.i

bb.i:                                             ; preds = %.loopexit99.us.i, %.preheader104.us.i
  %i.al = phi i64 [ %.pre140.pre.i, %.preheader104.us.i ], [ %i.ao, %.loopexit99.us.i ] ; 6 uses
  %.189114.us.i = phi i64 [ %i.ag, %.preheader104.us.i ], [ %i.am, %.loopexit99.us.i ] ; 2 uses
  %i.am = add nsw i64 %.189114.us.i, -1           ; 3 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !183 ; 5 uses
  %i.ap = icmp sgt i64 %i.al, %i.ao
  br i1 %i.ap, label %.lr.ph113.us.i, label %.loopexit99.us.i

.lr.ph113.us.i.new:                               ; preds = %.prol.loopexit, %.lr.ph113.us.i.new
  %.1112.us.i = phi i64 [ %i.az, %.lr.ph113.us.i.new ], [ %.1112.us.i.unr, %.prol.loopexit ] ; 3 uses
  %i.aq = add nsw i64 %.1112.us.i, -1             ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !560
  %i.at = load double, ptr %i.bk, align 8, !tbaa !560
  %i.au = getelementptr [8 x i8], ptr %i.ai, i64 %.1112.us.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !183
  %i.aw = getelementptr inbounds [8 x i8], ptr %.0125.us128.i, i64 %i.av ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !560
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.as, double %i.at, double %i.ax)
  store double %i.ay, ptr %i.aw, align 8, !tbaa !560
  %i.az = add nsw i64 %.1112.us.i, -2             ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !560
  %i.bc = load double, ptr %i.bk, align 8, !tbaa !560
  %i.bd = getelementptr [8 x i8], ptr %i.ai, i64 %i.aq
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !183
  %i.bf = getelementptr inbounds [8 x i8], ptr %.0125.us128.i, i64 %i.be ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !560
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bc, double %i.bg)
  store double %i.bh, ptr %i.bf, align 8, !tbaa !560
  %i.bi = icmp sgt i64 %i.az, %i.ao
  br i1 %i.bi, label %.lr.ph113.us.i.new, label %.loopexit99.us.i, !llvm.loop !1672

.loopexit99.us.i:                                 ; preds = %.prol.loopexit, %.lr.ph113.us.i.new, %bb.i
  %i.bj = icmp sgt i64 %.189114.us.i, 1
  br i1 %i.bj, label %bb.i, label %..loopexit105_crit_edge.us.i, !llvm.loop !1673

.lr.ph113.us.i:                                   ; preds = %bb.i
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0125.us128.i, i64 %i.am ; 3 uses
  %i.bl = sub i64 %i.al, %i.ao
  %.neg = add i64 %i.ao, 1
  %xtraiter = and i64 %i.bl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph113.us.i
  %i.bm = add nsw i64 %i.al, -1                   ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !560
  %i.bp = load double, ptr %i.bk, align 8, !tbaa !560
  %i.bq = getelementptr [8 x i8], ptr %i.ai, i64 %i.al
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !183
  %i.bs = getelementptr inbounds [8 x i8], ptr %.0125.us128.i, i64 %i.br ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !560
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bp, double %i.bt)
  store double %i.bu, ptr %i.bs, align 8, !tbaa !560
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph113.us.i
  %.1112.us.i.unr = phi i64 [ %i.al, %.lr.ph113.us.i ], [ %i.bm, %.prol.loopexit.unr-lcssa ]
  %i.bv = icmp eq i64 %i.al, %.neg
  br i1 %i.bv, label %.loopexit99.us.i, label %.lr.ph113.us.i.new

..loopexit105_crit_edge.us.i:                     ; preds = %.loopexit99.us.i
  %i.bw = getelementptr inbounds [8 x i8], ptr %.0125.us128.i, i64 %i.ae
  %i.bx = add nuw nsw i64 %.086124.us129.i, 1     ; 2 uses
  %exitcond135.not.i = icmp eq i64 %i.bx, %i.ad
  br i1 %exitcond135.not.i, label %_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit, label %.preheader104.us.i, !llvm.loop !1574

_ZN6casadi16casadi_triusolveIdEEvPKxPKT_PS3_iix.exit: ; preds = %..loopexit105_crit_edge.us.i, %_ZNK6casadi6MXNode3depEx.exit11
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi14TriuSolveUnityILb0EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !788    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !788
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !788
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, !llvm.loop !1575

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.w, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.w) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.z = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit11

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = load ptr, ptr %2, align 8, !tbaa !788
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !788
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ag = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  tail call void @_ZN6casadi16casadi_triusolveINS_6SXElemEEEvPKxPKT_PS4_iix(ptr noundef %i.z, ptr noundef %i.ae, ptr noundef %i.ac, i32 noundef 0, i32 noundef 1, i64 noundef %i.ag)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi10SolveUnityILb0EE10mod_prefixB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.261, i64 5, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.c, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi10SolveUnityILb0EE10mod_suffixB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  store i8 41, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi14TriuSolveUnityILb0EE5solveERKNS_2MXES4_b(ptr dead_on_unwind noalias writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi10SolveUnityILb0EE4A_spEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %2 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = tail call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.j, 1
  br i1 %.not.i.i.i, label %_ZNK6casadi6MXNode3depEx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.j) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.m = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  call void @_ZN6casadi8Sparsity4diagExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %2, i64 noundef %i.m, i64 noundef %i.m)
  invoke void @_ZNK6casadi8SparsityplERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN6casadi8SparsityaSEOS0_.exit unwind label %bb.h ; 0 uses

_ZN6casadi8SparsityaSEOS0_.exit:                  ; preds = %bb.d
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #34
  unreachable
end_hunk_3
begin_hunk_4_@_ZNK6casadi14TrilSolveUnityILb1EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.de = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !38
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.dj = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret void

bb.u:                                             ; preds = %.noexc56, %_ZNK6casadi6MXNode3depEx.exit55, %_ZNK6casadi6MXNode3nnzEx.exit58
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.v:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.w
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.dq, %bb.w ] ; 2 uses
  %i.dw = load ptr, ptr %11, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.do, %bb.u ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.eb = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !38
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  resume { ptr, i32 } %.pn29.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi14TrilSolveUnityILb1EE4evalEPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !786    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !786
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !786    ; 2 uses
  %i.j = icmp sgt i64 %i.h, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !616

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.idx = shl nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = icmp eq i64 %i.h, 1
  br i1 %i.k, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !560
  store double %i.l, ptr %i.i, align 8, !tbaa !560
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.t, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.t) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !786  ; 3 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !786
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.h, label %_ZNK6casadi6MXNode3depEx.exit11

bb.h:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ad = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ag ; 4 uses
  %i.aj = icmp sgt i64 %i.ad, 0
  %i.ak = icmp sgt i64 %i.ag, 0
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %.preheader107.preheader.i, label %_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit

.preheader107.preheader.i:                        ; preds = %_ZNK6casadi6MXNode3depEx.exit11
  %.pre.pre.i = load i64, ptr %i.ai, align 8, !tbaa !183
  br label %.preheader107.i

.preheader107.i:                                  ; preds = %..loopexit108_crit_edge.i, %.preheader107.preheader.i
  %.0126.i = phi ptr [ %i.bu, %..loopexit108_crit_edge.i ], [ %i.z, %.preheader107.preheader.i ] ; 5 uses
  %.086125.i = phi i64 [ %i.bv, %..loopexit108_crit_edge.i ], [ 0, %.preheader107.preheader.i ]
  br label %bb.i

.loopexit101.i:                                   ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.i
  %i.al = icmp sgt i64 %.088111.i, 1
  br i1 %i.al, label %bb.i, label %..loopexit108_crit_edge.i, !llvm.loop !1674

bb.i:                                             ; preds = %.loopexit101.i, %.preheader107.i
  %i.am = phi i64 [ %.pre.pre.i, %.preheader107.i ], [ %i.ap, %.loopexit101.i ] ; 6 uses
  %.088111.i = phi i64 [ %i.ag, %.preheader107.i ], [ %i.an, %.loopexit101.i ] ; 2 uses
  %i.an = add nsw i64 %.088111.i, -1              ; 3 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !183 ; 5 uses
  %i.aq = icmp sgt i64 %i.am, %i.ap
  br i1 %i.aq, label %.lr.ph.i, label %.loopexit101.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ar = getelementptr inbounds [8 x i8], ptr %.0126.i, i64 %i.an ; 4 uses
  %.promoted.i = load double, ptr %i.ar, align 8, !tbaa !560 ; 2 uses
  %i.as = sub i64 %i.am, %i.ap
  %.neg = add i64 %i.ap, 1
  %xtraiter = and i64 %i.as, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.at = add nsw i64 %i.am, -1                   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !560
  %i.aw = getelementptr [8 x i8], ptr %i.ai, i64 %i.am
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !183
  %i.ay = getelementptr inbounds [8 x i8], ptr %.0126.i, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !560
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.av, double %i.az, double %.promoted.i) ; 2 uses
  store double %i.ba, ptr %i.ar, align 8, !tbaa !560
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.unr = phi double [ %.promoted.i, %.lr.ph.i ], [ %i.ba, %.prol.loopexit.unr-lcssa ]
  %.087110.i.unr = phi i64 [ %i.am, %.lr.ph.i ], [ %i.at, %.prol.loopexit.unr-lcssa ]
  %i.bb = icmp eq i64 %i.am, %.neg
  br i1 %i.bb, label %.loopexit101.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %i.bc = phi double [ %i.bs, %.lr.ph.i.new ], [ %.unr, %.prol.loopexit ]
  %.087110.i = phi i64 [ %i.bl, %.lr.ph.i.new ], [ %.087110.i.unr, %.prol.loopexit ] ; 3 uses
  %i.bd = add nsw i64 %.087110.i, -1              ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !560
  %i.bg = getelementptr [8 x i8], ptr %i.ai, i64 %.087110.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !183
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0126.i, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !560
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bj, double %i.bc) ; 2 uses
  store double %i.bk, ptr %i.ar, align 8, !tbaa !560
  %i.bl = add nsw i64 %.087110.i, -2              ; 3 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !560
  %i.bo = getelementptr [8 x i8], ptr %i.ai, i64 %i.bd
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !183
  %i.bq = getelementptr inbounds [8 x i8], ptr %.0126.i, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !560
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.br, double %i.bk) ; 2 uses
  store double %i.bs, ptr %i.ar, align 8, !tbaa !560
  %i.bt = icmp sgt i64 %i.bl, %i.ap
  br i1 %i.bt, label %.lr.ph.i.new, label %.loopexit101.i, !llvm.loop !1675

..loopexit108_crit_edge.i:                        ; preds = %.loopexit101.i
  %i.bu = getelementptr inbounds [8 x i8], ptr %.0126.i, i64 %i.ae
  %i.bv = add nuw nsw i64 %.086125.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond.not.i, label %_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit, label %.preheader107.i, !llvm.loop !1656

_ZN6casadi16casadi_trilsolveIdEEvPKxPKT_PS3_iix.exit: ; preds = %..loopexit108_crit_edge.i, %_ZNK6casadi6MXNode3depEx.exit11
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi14TrilSolveUnityILb1EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !788    ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !788
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !788
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit, !llvm.loop !1575

_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi6MXNode3depEx.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.w, 1
  br i1 %.not.i.i.i8, label %_ZNK6casadi6MXNode3depEx.exit9, label %bb.d

bb.d:                                             ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 1, i64 noundef %i.w) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit9:                   ; preds = %_ZSt4copyIPKN6casadi6SXElemEPS1_ET0_T_S6_S5_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.z = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %.not.i.i.i10.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i10.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit11

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.99, i64 noundef 0, i64 noundef 0) #35
  unreachable

_ZNK6casadi6MXNode3depEx.exit11:                  ; preds = %_ZNK6casadi6MXNode3depEx.exit9
  %i.ac = load ptr, ptr %2, align 8, !tbaa !788
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !788
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ag = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  tail call void @_ZN6casadi16casadi_trilsolveINS_6SXElemEEEvPKxPKT_PS4_iix(ptr noundef %i.z, ptr noundef %i.ae, ptr noundef %i.ac, i32 noundef 1, i32 noundef 1, i64 noundef %i.ag)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi14TrilSolveUnityILb1EE5solveERKNS_2MXES4_b(ptr dead_on_unwind noalias writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6casadi2MXptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi10SolveUnityILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 920) (i8, ptr @_ZTVN6casadi10SolveUnityILb0EEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #34
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN6casadi6MXNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi14TrilSolveUnityILb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 920) (i8, ptr @_ZTVN6casadi10SolveUnityILb0EEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6casadi10SolveUnityILb0EED2Ev.exit unwind label %bb.b, !inline_history !1671

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #34, !inline_history !1671
  unreachable

_ZN6casadi10SolveUnityILb0EED2Ev.exit:            ; preds = %bb.a
  tail call void @_ZN6casadi6MXNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(72) %0) #32, !inline_history !1671
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi14TrilSolveUnityILb0EE8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES8_RKS4_IbSaIbEERSA_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_4
