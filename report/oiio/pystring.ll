inline.NumInlined: 1032
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8pystring2os4path13dirname_posixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !19
  store i8 0, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !19
  store i8 0, ptr %i.c, align 8, !tbaa !20
  invoke void @_ZN8pystring2os4path11split_posixERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.e) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.h) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.j = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  call void @_ZdlPv(ptr noundef %i.j) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN8pystring2os4path7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !26, !alias.scope !198
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !198
  store i8 0, ptr %i.a, align 8, !tbaa !20, !alias.scope !198
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !198
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !26, !noalias !198
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !19, !noalias !198
  store i8 0, ptr %i.c, align 8, !tbaa !20, !noalias !198
  invoke void @_ZN8pystring2os4path11split_posixERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !12, !noalias !198 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_ZN8pystring2os4path13dirname_posixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.e) #22
  br label %_ZN8pystring2os4path13dirname_posixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !12, !noalias !198 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.h) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !198
  %i.j = load ptr, ptr %0, align 8, !tbaa !12, !alias.scope !198 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  call void @_ZdlPv(ptr noundef %i.j) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  resume { ptr, i32 } %i.g

_ZN8pystring2os4path13dirname_posixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !198
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8pystring2os4path8normpathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @_ZN8pystring2os4path14normpath_posixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8pystring2os4path16splitext_genericERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKS7_SA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.d, i64 noundef %i.c, i64 noundef %i.f) #24 ; 3 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.e, align 8, !tbaa !19
  %i.j = add i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.j, %i.c
  %i.l = trunc i64 %i.g to i32
  %spec.select.i = select i1 %i.k, i32 -1, i32 %i.l
  br label %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit

_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ -1, %bb.a ], [ %spec.select.i, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19
  %sext54 = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext54, 32               ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !12
  %i.s = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.r, i64 noundef %i.q, i64 noundef %i.n) #24 ; 3 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit30, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.m, align 8, !tbaa !19
  %i.v = add i64 %i.u, %i.s
  %i.w = icmp ugt i64 %i.v, %i.q
  %i.x = trunc i64 %i.s to i32
  %spec.select.i28 = select i1 %i.w, i32 -1, i32 %i.x
  br label %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit30

_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit30: ; preds = %bb.c, %bb.d
  %.0.i29 = phi i32 [ -1, %bb.c ], [ %spec.select.i28, %bb.d ]
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.0.i, i32 %.0.i29)
  br label %bb.e

bb.e:                                             ; preds = %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit30, %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit
  %.0 = phi i32 [ %.0.i, %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit ], [ %.sroa.speculated, %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit30 ] ; 3 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !19
  %sext55 = shl i64 %i.y, 32
  %i.z = ashr exact i64 %sext55, 32               ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.ad = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.aa, i64 noundef %i.z, i64 noundef %i.ac) #24 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit35, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = icmp ugt i64 %i.ag, %i.z
  %i.ai = trunc i64 %i.ad to i32
  %spec.select.i33 = select i1 %i.ah, i32 -1, i32 %i.ai
  br label %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit35

_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit35: ; preds = %bb.e, %bb.f
  %.0.i34 = phi i32 [ -1, %bb.e ], [ %spec.select.i33, %bb.f ] ; 4 uses
  %i.aj = icmp sgt i32 %.0.i34, %.0
  br i1 %i.aj, label %.preheader, label %.critedge

.preheader:                                       ; preds = %_ZN8pystring5rfindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ii.exit35
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.am = add nsw i32 %.0.i34, -1                 ; 2 uses
  %exitcond.not83 = icmp eq i32 %.0, %i.am
  br i1 %exitcond.not83, label %.critedge, label %.lr.ph

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %exitcond.not = icmp eq i32 %.02384, %i.am
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !201

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.02384.in = phi i32 [ %.02384, %bb.g ], [ %.0, %.preheader ]
  %.02384 = add nsw i32 %.02384.in, 1             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN8pystring5sliceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.02384, i32 noundef 2147483647)
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !19 ; 4 uses
  %i.ao = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.h, label %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %.lr.ph
  %.pre = load ptr, ptr %6, align 8, !tbaa !12
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.h:                                             ; preds = %.lr.ph
  %i.aq = icmp eq i64 %i.an, 0
  %.pre56 = load ptr, ptr %6, align 8, !tbaa !12  ; 3 uses
  br i1 %i.aq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %5, align 8, !tbaa !12
  %bcmp.i.i = call i32 @bcmp(ptr %.pre56, ptr %i.ar, i64 %i.an)
  %i.as = icmp ne i32 %bcmp.i.i, 0
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.h, %bb.i
  %i.at = phi ptr [ %.pre, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre56, %bb.i ], [ %.pre56, %bb.h ] ; 2 uses
  %i.au = phi i1 [ true, %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.as, %bb.i ], [ false, %bb.h ]
  %i.av = icmp eq ptr %i.at, %i.al
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.aw = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.aw)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @_ZdlPv(ptr noundef %i.at) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %i.au, label %bb.j, label %bb.g, !llvm.loop !201

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN8pystring5sliceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0, i32 noundef %.0.i34)
  %i.ax = load ptr, ptr %0, align 8, !tbaa !12    ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  %i.ba = load ptr, ptr %7, align 8, !tbaa !12    ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb                ; 2 uses
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  br i1 %i.bc, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  br i1 %i.bc, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !19 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  switch i64 %i.be, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = load i8, ptr %i.ba, align 1, !tbaa !20
  store i8 %i.bg, ptr %i.ax, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.ba, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !19 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !19
  %i.bj = load ptr, ptr %0, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %0, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bn = load <2 x i64>, ptr %i.bm, align 8, !tbaa !20
  store <2 x i64> %i.bn, ptr %i.bl, align 8, !tbaa !20
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bo = load i64, ptr %i.ay, align 8, !tbaa !20
  store ptr %i.ba, ptr %0, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !tbaa !20
  store <2 x i64> %i.br, ptr %i.bq, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ax, ptr %7, align 8, !tbaa !12
  store i64 %i.bo, ptr %i.bb, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bb, ptr %7, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bs = phi ptr [ %i.ax, %bb.n ], [ %i.bb, %bb.o ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !19
  store i8 0, ptr %i.bs, align 1, !tbaa !20
  %i.bu = load ptr, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.bu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN8pystring5sliceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.0.i34, i32 noundef 2147483647)
  %i.bx = load ptr, ptr %1, align 8, !tbaa !12    ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  %i.ca = load ptr, ptr %8, align 8, !tbaa !12    ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb                ; 2 uses
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  br i1 %i.cc, label %bb.p, label %.thread.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  br i1 %i.cc, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i40

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !19 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  switch i64 %i.ce, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.cg = load i8, ptr %i.ca, align 1, !tbaa !20
  store i8 %i.cg, ptr %i.bx, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.ca, i64 %i.ce, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42: ; preds = %bb.r, %bb.q, %bb.p
  %i.ch = load i64, ptr %i.cd, align 8, !tbaa !19 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !19
  %i.cj = load ptr, ptr %1, align 8, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store i8 0, ptr %i.ck, align 1, !tbaa !20
  %.pre.i43 = load ptr, ptr %8, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

.thread.i45:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ca, ptr %1, align 8, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cn = load <2 x i64>, ptr %i.cm, align 8, !tbaa !20
  store <2 x i64> %i.cn, ptr %i.cl, align 8, !tbaa !20
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i39
  %i.co = load i64, ptr %i.by, align 8, !tbaa !20
  store ptr %i.ca, ptr %1, align 8, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load <2 x i64>, ptr %i.cp, align 8, !tbaa !20
  store <2 x i64> %i.cr, ptr %i.cq, align 8, !tbaa !20
end_hunk_0
