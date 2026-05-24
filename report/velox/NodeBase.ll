inline.NumInlined: 370
inline.NumDeleted: 180
begin_hunk_0_@_ZNK4geos5index8quadtree8NodeBase5depthEv:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.3 = phi i32 [ %spec.select.3, %bb.h ], [ %.2.2, %bb.g ]
  %i.i = add i32 %.2.3, 1
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK4geos5index8quadtree8NodeBase4sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %.010.ptr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.a = load ptr, ptr %.010.ptr, align 8, !tbaa !18 ; 2 uses
  %.not12 = icmp eq ptr %i.a, null
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_ZNK4geos5index8quadtree8NodeBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %.010.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %.010.ptr.1, align 8, !tbaa !18 ; 2 uses
  %.not12.1 = icmp eq ptr %i.c, null
  br i1 %.not12.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i64 @_ZNK4geos5index8quadtree8NodeBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  %i.e = add i64 %i.d, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi i64 [ %i.e, %bb.d ], [ %.1, %bb.c ] ; 2 uses
  %.010.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %.010.ptr.2, align 8, !tbaa !18 ; 2 uses
  %.not12.2 = icmp eq ptr %i.f, null
  br i1 %.not12.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call noundef i64 @_ZNK4geos5index8quadtree8NodeBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.f)
  %i.h = add i64 %i.g, %.1.1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2 = phi i64 [ %i.h, %bb.f ], [ %.1.1, %bb.e ] ; 2 uses
  %.010.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %.010.ptr.3, align 8, !tbaa !18 ; 2 uses
  %.not12.3 = icmp eq ptr %i.i, null
  br i1 %.not12.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = tail call noundef i64 @_ZNK4geos5index8quadtree8NodeBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.i)
  %i.k = add i64 %i.j, %.1.2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3 = phi i64 [ %i.k, %bb.h ], [ %.1.2, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = add i64 %i.s, %.1.3
  ret i64 %i.t
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK4geos5index8quadtree8NodeBase12getNodeCountEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %.010.ptr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.a = load ptr, ptr %.010.ptr, align 8, !tbaa !18 ; 2 uses
  %.not12 = icmp eq ptr %i.a, null
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_ZNK4geos5index8quadtree8NodeBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %.010.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %.010.ptr.1, align 8, !tbaa !18 ; 2 uses
  %.not12.1 = icmp eq ptr %i.c, null
  br i1 %.not12.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i64 @_ZNK4geos5index8quadtree8NodeBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  %i.e = add i64 %i.d, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi i64 [ %i.e, %bb.d ], [ %.1, %bb.c ] ; 2 uses
  %.010.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %.010.ptr.2, align 8, !tbaa !18 ; 2 uses
  %.not12.2 = icmp eq ptr %i.f, null
  br i1 %.not12.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call noundef i64 @_ZNK4geos5index8quadtree8NodeBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.f)
  %i.h = add i64 %i.g, %.1.1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2 = phi i64 [ %i.h, %bb.f ], [ %.1.1, %bb.e ] ; 2 uses
  %.010.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %.010.ptr.3, align 8, !tbaa !18 ; 2 uses
  %.not12.3 = icmp eq ptr %i.i, null
  br i1 %.not12.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = tail call noundef i64 @_ZNK4geos5index8quadtree8NodeBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.i)
  %i.k = add i64 %i.j, %.1.2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3 = phi i64 [ %i.k, %bb.h ], [ %.1.2, %bb.g ]
  %i.l = add i64 %.1.3, 1
  ret i64 %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos5index8quadtree8NodeBase8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 46 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.i)
          to label %_ZNSolsEm.exit unwind label %bb.h ; 3 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %_ZNSolsEm.exit
  invoke void @_ZSt16__throw_bad_castv() #21
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load i8, ptr %i.q, align 8, !tbaa !45
  %.not.i1.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 67
  %i.t = load i8, ptr %i.s, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.p)
          to label %.noexc23 unwind label %bb.h

.noexc23:                                         ; preds = %bb.d
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef signext i8 %i.w(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.h, !inline_history !52

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc23, %bb.c
  %.0.i.i.i = phi i8 [ %i.t, %bb.c ], [ %i.x, %.noexc23 ]
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext %.0.i.i.i)
          to label %.noexc25 unwind label %bb.h

.noexc25:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_ZNSolsEPFRSoS_E.exit.preheader unwind label %bb.h ; 0 uses

_ZNSolsEPFRSoS_E.exit.preheader:                  ; preds = %.noexc25
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %.loopexit ; 0 uses

bb.e:                                             ; preds = %_ZNSolsEPFRSoS_E.exit22.3
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53, !noalias !56 ; 2 uses
  %i.ag = ptrtoint ptr %.08.i.i.i to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.af, i64 noundef %i.ai)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !56 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.fl
  br i1 %i.am, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.al) #19
  br label %.body

bb.g:                                             ; preds = %_ZNSolsEPFRSoS_E.exit22.3
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

bb.h:                                             ; preds = %.noexc25, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc23, %bb.d, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZNSolsEPFRSoS_E.exit.preheader
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %_ZNSolsEm.exit16 unwind label %.loopexit

_ZNSolsEm.exit16:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZNSolsEm.exit16
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %.noexc35.3, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.3, %.noexc33.3, %bb.ae, %bb.ac, %_ZNSolsEm.exit16.3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.3, %_ZNSolsEPFRSoS_E.exit22.2, %.noexc35.2, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.2, %.noexc33.2, %bb.z, %bb.x, %_ZNSolsEm.exit16.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.2, %_ZNSolsEPFRSoS_E.exit22.1, %.noexc35.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.1, %.noexc33.1, %bb.u, %bb.s, %_ZNSolsEm.exit16.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.1, %_ZNSolsEPFRSoS_E.exit22, %_ZNSolsEPFRSoS_E.exit.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %_ZNSolsEm.exit16, %bb.i, %bb.p, %.noexc33, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30, %.noexc35
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(100) %i.ar)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %3, align 8, !tbaa !61
  %i.ay = load i64, ptr %i.ab, align 8, !tbaa !64
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ax, i64 noundef %i.ay)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.k
  %i.ba = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ac
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @_ZdlPv(ptr noundef %i.ba) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18

bb.l:                                             ; preds = %bb.aa, %bb.v, %bb.q, %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.m:                                             ; preds = %bb.ab, %bb.w, %bb.r, %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ac
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.be) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.bd, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load ptr, ptr %2, align 8, !tbaa !16
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %2, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !28 ; 6 uses
  %.not.i.i.i27 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i27, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  invoke void @_ZSt16__throw_bad_castv() #21
          to label %.noexc32 unwind label %.loopexit.split-lp

.noexc32:                                         ; preds = %bb.n
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !45
  %.not.i1.i.i29 = icmp eq i8 %i.bn, 0
  br i1 %.not.i1.i.i29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 67
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl)
          to label %.noexc33 unwind label %.loopexit

.noexc33:                                         ; preds = %bb.p
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef signext i8 %i.bs(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30 unwind label %.loopexit, !inline_history !52

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30: ; preds = %.noexc33, %bb.o
  %.0.i.i.i31 = phi i8 [ %i.bp, %bb.o ], [ %i.bt, %.noexc33 ]
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %.0.i.i.i31)
          to label %.noexc35 unwind label %.loopexit

.noexc35:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %_ZNSolsEPFRSoS_E.exit22 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit22:                          ; preds = %.noexc35
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.1 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.1: ; preds = %_ZNSolsEPFRSoS_E.exit22
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
          to label %_ZNSolsEm.exit16.1 unwind label %.loopexit

_ZNSolsEm.exit16.1:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.1
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.1 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.1: ; preds = %_ZNSolsEm.exit16.1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !18 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(100) %i.ca)
          to label %bb.r unwind label %bb.l

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %3, align 8, !tbaa !61
  %i.cg = load i64, ptr %i.ab, align 8, !tbaa !64
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.cf, i64 noundef %i.cg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.1 unwind label %bb.m ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.1: ; preds = %bb.r
  %i.ci = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ac
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.1
  call void @_ZdlPv(ptr noundef %i.ci) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.1

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.1
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.1 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.1: ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.cl = load ptr, ptr %2, align 8, !tbaa !16
  %i.cm = getelementptr i8, ptr %i.cl, i64 -24
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr inbounds i8, ptr %2, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 240
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !28 ; 6 uses
  %.not.i.i.i27.1 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i27.1, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28.1

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28.1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.1
end_hunk_0
begin_hunk_1_@_ZNK4geos5index8quadtree8NodeBase8toStringB5cxx11Ev:bb.a
.noexc33.1:                                       ; preds = %bb.u
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef signext i8 %i.cx(ptr noundef nonnull align 8 dereferenceable(570) %i.cq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.1 unwind label %.loopexit, !inline_history !52

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.1: ; preds = %.noexc33.1, %bb.t
  %.0.i.i.i31.1 = phi i8 [ %i.cu, %bb.t ], [ %i.cy, %.noexc33.1 ]
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %.0.i.i.i31.1)
          to label %.noexc35.1 unwind label %.loopexit

.noexc35.1:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.1
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %_ZNSolsEPFRSoS_E.exit22.1 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit22.1:                        ; preds = %.noexc35.1
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.2 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.2: ; preds = %_ZNSolsEPFRSoS_E.exit22.1
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 2)
          to label %_ZNSolsEm.exit16.2 unwind label %.loopexit

_ZNSolsEm.exit16.2:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.2
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.2 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.2: ; preds = %_ZNSolsEm.exit16.2
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !18 ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(100) %i.df)
          to label %bb.w unwind label %bb.l

bb.w:                                             ; preds = %bb.v
  %i.dk = load ptr, ptr %3, align 8, !tbaa !61
  %i.dl = load i64, ptr %i.ab, align 8, !tbaa !64
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.dk, i64 noundef %i.dl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.2 unwind label %bb.m ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.2: ; preds = %bb.w
  %i.dn = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.ac
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.2
  call void @_ZdlPv(ptr noundef %i.dn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.2

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.2
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.2 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.2: ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.dq = load ptr, ptr %2, align 8, !tbaa !16
  %i.dr = getelementptr i8, ptr %i.dq, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr %2, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 240
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !28 ; 6 uses
  %.not.i.i.i27.2 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i27.2, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28.2

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28.2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !45
  %.not.i1.i.i29.2 = icmp eq i8 %i.dx, 0
  br i1 %.not.i1.i.i29.2, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28.2
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 67
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.2

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28.2
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dv)
          to label %.noexc33.2 unwind label %.loopexit

.noexc33.2:                                       ; preds = %bb.z
  %i.ea = load ptr, ptr %i.dv, align 8, !tbaa !16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = invoke noundef signext i8 %i.ec(ptr noundef nonnull align 8 dereferenceable(570) %i.dv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.2 unwind label %.loopexit, !inline_history !52

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.2: ; preds = %.noexc33.2, %bb.y
  %.0.i.i.i31.2 = phi i8 [ %i.dz, %bb.y ], [ %i.ed, %.noexc33.2 ]
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %.0.i.i.i31.2)
          to label %.noexc35.2 unwind label %.loopexit

.noexc35.2:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.2
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %_ZNSolsEPFRSoS_E.exit22.2 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit22.2:                        ; preds = %.noexc35.2
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.3 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.3: ; preds = %_ZNSolsEPFRSoS_E.exit22.2
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 3)
          to label %_ZNSolsEm.exit16.3 unwind label %.loopexit

_ZNSolsEm.exit16.3:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.3
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.3 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.3: ; preds = %_ZNSolsEm.exit16.3
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !18 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !16
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(100) %i.ek)
          to label %bb.ab unwind label %bb.l

bb.ab:                                            ; preds = %bb.aa
  %i.ep = load ptr, ptr %3, align 8, !tbaa !61
  %i.eq = load i64, ptr %i.ab, align 8, !tbaa !64
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ep, i64 noundef %i.eq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.3 unwind label %bb.m ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.3: ; preds = %bb.ab
  %i.es = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ac
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.3
  call void @_ZdlPv(ptr noundef %i.es) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.3

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.3
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.3 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.3: ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ev = load ptr, ptr %2, align 8, !tbaa !16
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds i8, ptr %2, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 240
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !28 ; 6 uses
  %.not.i.i.i27.3 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i27.3, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28.3

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28.3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18.3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !45
  %.not.i1.i.i29.3 = icmp eq i8 %i.fc, 0
  br i1 %.not.i1.i.i29.3, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28.3
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 67
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.3

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28.3
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fa)
          to label %.noexc33.3 unwind label %.loopexit

.noexc33.3:                                       ; preds = %bb.ae
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = invoke noundef signext i8 %i.fh(ptr noundef nonnull align 8 dereferenceable(570) %i.fa, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.3 unwind label %.loopexit, !inline_history !52

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.3: ; preds = %.noexc33.3, %bb.ad
  %.0.i.i.i31.3 = phi i8 [ %i.fe, %bb.ad ], [ %i.fi, %.noexc33.3 ]
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %.0.i.i.i31.3)
          to label %.noexc35.3 unwind label %.loopexit

.noexc35.3:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i30.3
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fj)
          to label %_ZNSolsEPFRSoS_E.exit22.3 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit22.3:                        ; preds = %.noexc35.3
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.fl, ptr %0, align 8, !tbaa !67, !alias.scope !56
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fm, align 8, !tbaa !64, !alias.scope !56
  store i8 0, ptr %i.fl, align 8, !tbaa !51, !alias.scope !56
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !68, !noalias !56 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %5, null
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !56 ; 2 uses
  %6 = icmp ugt ptr %5, %i.fo
  %.08.i.i.i = select i1 %6, ptr %5, ptr %i.fo    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.fp = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fp, ptr %2, align 8, !tbaa !16
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fr = getelementptr i8, ptr %i.fp, i64 -24
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds i8, ptr %2, i64 %i.fs
  store ptr %i.fq, ptr %i.ft, align 8, !tbaa !16
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fu, align 8, !tbaa !16
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !61 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.fw) #19
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fu, align 8, !tbaa !16
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fz) #18
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ga) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

.body:                                            ; preds = %bb.f, %.loopexit, %.loopexit.split-lp, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pn12.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ao, %bb.h ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %i.ak, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index8quadtree8NodeBase5visitEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %.not8.i = icmp eq ptr %i.f, %i.h
  br i1 %.not8.i, label %_ZN4geos5index8quadtree8NodeBase10visitItemsEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.05.09.i, align 8, !tbaa !26
  %i.j = load ptr, ptr %2, align 8, !tbaa !16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.i), !inline_history !69
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.h
  br i1 %.not.i, label %_ZN4geos5index8quadtree8NodeBase10visitItemsEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE.exit, label %.lr.ph.i

_ZN4geos5index8quadtree8NodeBase10visitItemsEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE.exit: ; preds = %.lr.ph.i, %bb.b
  %.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %.0.ptr, align 8, !tbaa !18 ; 3 uses
  %.not15 = icmp eq ptr %i.m, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4geos5index8quadtree8NodeBase10visitItemsEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4geos5index8quadtree8NodeBase10visitItemsEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE.exit
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %.0.ptr.1, align 8, !tbaa !18 ; 3 uses
  %.not15.1 = icmp eq ptr %i.q, null
  br i1 %.not15.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %.0.ptr.2, align 8, !tbaa !18 ; 3 uses
  %.not15.2 = icmp eq ptr %i.u, null
  br i1 %.not15.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %.0.ptr.3, align 8, !tbaa !18 ; 3 uses
  %.not15.3 = icmp eq ptr %i.y, null
  br i1 %.not15.3, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index8quadtree8NodeBase10visitItemsEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef readnone captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.05.09, align 8, !tbaa !26
  %i.f = load ptr, ptr %2, align 8, !tbaa !16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos5index8quadtree8NodeBase6removeEPKNS_4geom8EnvelopeEPv(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.d, label %.preheader, label %.thread35

.preheader:                                       ; preds = %bb.a
  %.023.ptr41 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %.023.ptr41, align 8, !tbaa !18 ; 2 uses
  %.not27 = icmp eq ptr %i.e, null
  br i1 %.not27, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = tail call noundef zeroext i1 @_ZN4geos5index8quadtree8NodeBase6removeEPKNS_4geom8EnvelopeEPv(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull %1, ptr noundef %2)
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.b
  %.023.ptr43.lcssa = phi ptr [ %.023.ptr41, %bb.b ], [ %.023.ptr, %bb.f ], [ %.023.ptr.1, %bb.h ], [ %.023.ptr.2, %bb.j ] ; 2 uses
  %i.g = load ptr, ptr %.023.ptr43.lcssa, align 8, !tbaa !18 ; 5 uses
  %.012.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.h = load <4 x ptr>, ptr %.012.ptr.i.i, align 8
  %.fr = freeze <4 x ptr> %i.h
  %i.i = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.j = bitcast <4 x i1> %i.i to i4
  %.not = icmp eq i4 %i.j, 0
  br i1 %.not, label %_ZNK4geos5index8quadtree8NodeBase10isPrunableEv.exit, label %.thread35

_ZNK4geos5index8quadtree8NodeBase10isPrunableEv.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.d, label %.thread35

bb.d:                                             ; preds = %_ZNK4geos5index8quadtree8NodeBase10isPrunableEv.exit
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(100) %i.g) #18
  store ptr null, ptr %.023.ptr43.lcssa, align 8, !tbaa !18
  br label %.thread35

bb.e:                                             ; preds = %bb.b, %.preheader
  %.023.ptr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIPvSaIS0_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEvNS5_IPS0_S2_EET_SB_St20forward_iterator_tag:bb.a

_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !72

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !26
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !72

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr %2, align 8, !tbaa !26
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !72

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load ptr, ptr %1, align 8, !tbaa !26
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZdlPv(ptr noundef nonnull %i.ay) #19
  br label %_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !21
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !24
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.ca, ptr %i.e, align 8, !tbaa !25
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPvSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4geos4geom8EnvelopeE", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!9 = !{!"double", !5, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"_ZTSN4geos4geom10CoordinateE", !9, i64 0, !9, i64 8, !9, i64 16}
!12 = !{!8, !9, i64 16}
!13 = !{!11, !9, i64 8}
!14 = !{!8, !9, i64 24}
!15 = !{!8, !9, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSN4geos5index8quadtree4NodeE", !20, i64 0}
!20 = !{!"any pointer", !5, i64 0}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"any p2 pointer", !20, i64 0}
!24 = !{!22, !23, i64 8}
!25 = !{!22, !23, i64 16}
!26 = !{!20, !20, i64 0}
!27 = !{!23, !23, i64 0}
!28 = !{!29, !42, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !30, i64 0, !39, i64 216, !5, i64 224, !40, i64 225, !41, i64 232, !42, i64 240, !43, i64 248, !44, i64 256}
!30 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !32, i64 24, !33, i64 28, !33, i64 32, !34, i64 40, !35, i64 48, !5, i64 64, !4, i64 192, !36, i64 200, !37, i64 208}
!31 = !{!"long", !5, i64 0}
!32 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!33 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!34 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!35 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !31, i64 8}
!36 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!37 = !{!"_ZTSSt6locale", !38, i64 0}
!38 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!39 = !{!"p1 _ZTSSo", !20, i64 0}
!40 = !{!"bool", !5, i64 0}
!41 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 0}
!42 = !{!"p1 _ZTSSt5ctypeIcE", !20, i64 0}
!43 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!44 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!45 = !{!46, !5, i64 56}
!46 = !{!"_ZTSSt5ctypeIcE", !47, i64 0, !48, i64 16, !40, i64 24, !49, i64 32, !49, i64 40, !50, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!47 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!48 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!49 = !{!"p1 int", !20, i64 0}
!50 = !{!"p1 short", !20, i64 0}
!51 = !{!5, !5, i64 0}
!52 = distinct !{null, null}
!53 = !{!54, !55, i64 32}
!54 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !37, i64 56}
!55 = !{!"p1 omnipotent char", !20, i64 0}
!56 = !{!57, !59}
!57 = distinct !{!57, !58, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!58 = distinct !{!58, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!59 = distinct !{!59, !60, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!60 = distinct !{!60, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!61 = !{!62, !55, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !63, i64 0, !31, i64 8, !5, i64 16}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !55, i64 0}
!64 = !{!62, !31, i64 8}
!65 = !{!59}
!66 = !{!57}
!67 = !{!63, !55, i64 0}
!68 = !{!54, !55, i64 40}
!69 = !{ptr @_ZN4geos5index8quadtree8NodeBase10visitItemsEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_2
