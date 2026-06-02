inline.NumInlined: 409
inline.NumDeleted: 141
begin_hunk_0_@ImfHeaderSetStringAttribute:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.l:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.m:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.n:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERT_PKc.exit, %bb.v, %bb.t
  %i.w = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  br label %.body

bb.o:                                             ; preds = %.noexc.i, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.p:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn20 = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.y, %bb.p ] ; 2 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.e
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.r
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.o
  %.pn20.pn = phi { ptr, i32 } [ %i.x, %bb.o ], [ %.pn20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %.pn20, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

.body:                                            ; preds = %bb.n, %bb.w, %bb.l, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.u, %bb.l ], [ %i.v, %bb.m ], [ %i.w, %bb.n ], [ %i.aq, %bb.w ] ; 3 uses
  %.3 = extractvalue { ptr, i32 } %.pn20.pn.pn, 1
  %i.ae = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.af = icmp eq i32 %.3, %i.ae
  br i1 %i.af, label %bb.s, label %bb.x

bb.s:                                             ; preds = %.body
  %.318 = extractvalue { ptr, i32 } %.pn20.pn.pn, 0
  %i.ag = call ptr @__cxa_begin_catch(ptr %.318) #21 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #21, !inline_history !25
  %i.al = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_ZN12_GLOBAL__N_112errorMessageE, ptr noundef nonnull dereferenceable(1) %i.ak, i64 noundef 1023) #21 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112errorMessageE, i64 1023), align 1, !tbaa !17
  call void @__cxa_end_catch()
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.t:                                             ; preds = %bb.c
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc28 unwind label %bb.n

.noexc28:                                         ; preds = %bb.t
  %i.an = tail call ptr @__dynamic_cast(ptr nonnull %i.am, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 0) #21 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.u, label %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERT_PKc.exit

bb.u:                                             ; preds = %.noexc28
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull @.str)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #23
          to label %.noexc29 unwind label %bb.n

.noexc29:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.ap) #21
  br label %.body

_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERT_PKc.exit: ; preds = %.noexc28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !45
  %i.au = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef 0, i64 noundef %i.at, ptr noundef nonnull %2, i64 noundef %i.au)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERT_PKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s
  %.0 = phi i32 [ 0, %bb.s ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERT_PKc.exit ]
  ret i32 %.0

bb.x:                                             ; preds = %.body
  resume { ptr, i32 } %.pn20.pn.pn
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS6_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ImfHeaderStringAttribute(ptr noundef nonnull %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 0) #21 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_PKc.exit

bb.b:                                             ; preds = %.noexc
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #23
          to label %.noexc8 unwind label %bb.e

.noexc8:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #21
  br label %.body

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_PKc.exit: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  store ptr %i.g, ptr %2, align 8, !tbaa !46
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.e, %bb.d ] ; 3 uses
  %i.i = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.j = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.body
  %i.l = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #21 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #21, !inline_history !25
  %i.r = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_ZN12_GLOBAL__N_112errorMessageE, ptr noundef nonnull dereferenceable(1) %i.q, i64 noundef 1023) #21 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112errorMessageE, i64 1023), align 1, !tbaa !17
  tail call void @__cxa_end_catch()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_PKc.exit
  %.0 = phi i32 [ 1, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_PKc.exit ], [ 0, %bb.f ]
  ret i32 %.0

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ImfHeaderSetBox2iAttribute(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Imath_3_1::Box", align 4    ; 8 uses
  %7 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::TypedAttribute.8", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %2, ptr %6, align 4, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %3, ptr %i.b, align 4, !tbaa !28
  store i32 %4, ptr %i.a, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %5, ptr %i.c, align 4, !tbaa !28
  %i.d = invoke ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header4findEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = invoke ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header3endEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IiEEEEEC1ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IiEEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.i:                                             ; preds = %bb.o, %bb.m
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.j:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IiEEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn21 = phi { ptr, i32 } [ %i.k, %bb.k ], [ %i.j, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.m
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull %i.l, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IiEEEEEE, i64 0) #21 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.n, label %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IiEEEEEEEERT_PKc.exit

bb.n:                                             ; preds = %.noexc
  %i.o = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull @.str)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #23
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #21
  br label %.body

_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IiEEEEEEEERT_PKc.exit: ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %2, ptr %i.q, align 4, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %3, ptr %i.r, align 4, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %4, ptr %i.s, align 4, !tbaa !26
  %8 = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  store i32 %5, ptr %8, align 4, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IiEEEEEEEERT_PKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.s

.body:                                            ; preds = %bb.i, %bb.p, %bb.g, %bb.h, %bb.l
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.l ], [ %i.g, %bb.g ], [ %i.h, %bb.h ], [ %i.i, %bb.i ], [ %i.p, %bb.p ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn21.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.t = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.u = icmp eq i32 %.2, %i.t
  br i1 %i.u, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.body
  %.219 = extractvalue { ptr, i32 } %.pn21.pn, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %.219) #21 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #21, !inline_history !25
  %i.aa = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_ZN12_GLOBAL__N_112errorMessageE, ptr noundef nonnull dereferenceable(1) %i.z, i64 noundef 1023) #21 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112errorMessageE, i64 1023), align 1, !tbaa !17
  call void @__cxa_end_catch()
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi i32 [ 1, %bb.q ], [ 0, %bb.r ]
  ret i32 %.0

bb.t:                                             ; preds = %.body
  resume { ptr, i32 } %.pn21.pn
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IiEEEEEC1ERKS5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IiEEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ImfHeaderBox2iAttribute(ptr noundef nonnull %0, ptr noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef writeonly captures(none) %5) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IiEEEEEE, i64 0) #21 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IiEEEEEEEERKT_PKc.exit

bb.b:                                             ; preds = %.noexc
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #23
          to label %.noexc15 unwind label %bb.e

.noexc15:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #21
  br label %.body

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IiEEEEEEEERKT_PKc.exit: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47
  store i32 %i.g, ptr %2, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49
  store i32 %i.i, ptr %3, align 4, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50
  store i32 %i.k, ptr %4, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  store i32 %i.m, ptr %5, align 4, !tbaa !3
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.e, %bb.d ] ; 3 uses
  %i.o = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.p = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.body
  %i.r = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #21 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #21, !inline_history !25
  %i.x = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_ZN12_GLOBAL__N_112errorMessageE, ptr noundef nonnull dereferenceable(1) %i.w, i64 noundef 1023) #21 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112errorMessageE, i64 1023), align 1, !tbaa !17
  tail call void @__cxa_end_catch()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IiEEEEEEEERKT_PKc.exit
  %.0 = phi i32 [ 1, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IiEEEEEEEERKT_PKc.exit ], [ 0, %bb.f ]
  ret i32 %.0

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ImfHeaderSetBox2fAttribute(ptr noundef nonnull %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Imath_3_1::Box.9", align 4  ; 8 uses
  %7 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::TypedAttribute.10", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %2, ptr %6, align 4, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %3, ptr %i.b, align 4, !tbaa !31
  store float %4, ptr %i.a, align 4, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %5, ptr %i.c, align 4, !tbaa !31
  %i.d = invoke ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header4findEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = invoke ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header3endEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IfEEEEEC1ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IfEEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.i:                                             ; preds = %bb.o, %bb.m
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.j:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IfEEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn21 = phi { ptr, i32 } [ %i.k, %bb.k ], [ %i.j, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.m
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull %i.l, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IfEEEEEE, i64 0) #21 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.n, label %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IfEEEEEEEERT_PKc.exit

bb.n:                                             ; preds = %.noexc
  %i.o = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull @.str)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #23
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #21
  br label %.body

_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IfEEEEEEEERT_PKc.exit: ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store float %2, ptr %i.q, align 4, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store float %3, ptr %i.r, align 4, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store float %4, ptr %i.s, align 4, !tbaa !29
  %8 = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  store float %5, ptr %8, align 4, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IfEEEEEEEERT_PKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.s

.body:                                            ; preds = %bb.i, %bb.p, %bb.g, %bb.h, %bb.l
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.l ], [ %i.g, %bb.g ], [ %i.h, %bb.h ], [ %i.i, %bb.i ], [ %i.p, %bb.p ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn21.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.t = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.u = icmp eq i32 %.2, %i.t
  br i1 %i.u, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.body
  %.219 = extractvalue { ptr, i32 } %.pn21.pn, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %.219) #21 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #21, !inline_history !25
  %i.aa = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_ZN12_GLOBAL__N_112errorMessageE, ptr noundef nonnull dereferenceable(1) %i.z, i64 noundef 1023) #21 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112errorMessageE, i64 1023), align 1, !tbaa !17
  call void @__cxa_end_catch()
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi i32 [ 1, %bb.q ], [ 0, %bb.r ]
  ret i32 %.0

bb.t:                                             ; preds = %.body
  resume { ptr, i32 } %.pn21.pn
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IfEEEEEC1ERKS5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IfEEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ImfHeaderBox2fAttribute(ptr noundef nonnull %0, ptr noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef writeonly captures(none) %5) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_13BoxINS1_4Vec2IfEEEEEE, i64 0) #21 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IfEEEEEEEERKT_PKc.exit

bb.b:                                             ; preds = %.noexc
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #23
          to label %.noexc15 unwind label %bb.e

.noexc15:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #21
  br label %.body

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IfEEEEEEEERKT_PKc.exit: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !52
  store float %i.g, ptr %2, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !54
  store float %i.i, ptr %3, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !55
  store float %i.k, ptr %4, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !56
  store float %i.m, ptr %5, align 4, !tbaa !10
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.e, %bb.d ] ; 3 uses
  %i.o = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.p = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.body
  %i.r = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #21 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #21, !inline_history !25
  %i.x = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_ZN12_GLOBAL__N_112errorMessageE, ptr noundef nonnull dereferenceable(1) %i.w, i64 noundef 1023) #21 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112errorMessageE, i64 1023), align 1, !tbaa !17
  tail call void @__cxa_end_catch()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IfEEEEEEEERKT_PKc.exit
  %.0 = phi i32 [ 1, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_13BoxINS3_4Vec2IfEEEEEEEERKT_PKc.exit ], [ 0, %bb.f ]
  ret i32 %.0

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ImfHeaderSetV2iAttribute(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Imath_3_1::Vec2.0", align 4 ; 6 uses
  %5 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::TypedAttribute.11", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i32 %2, ptr %4, align 4, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !28
  %i.b = invoke ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header4findEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = invoke ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header3endEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec2IiEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec2IiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.h:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.i:                                             ; preds = %bb.o, %bb.m
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.j:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec2IiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn19 = phi { ptr, i32 } [ %i.i, %bb.k ], [ %i.h, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.m
  %i.k = tail call ptr @__dynamic_cast(ptr nonnull %i.j, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec2IiEEEE, i64 0) #21 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.n, label %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_14Vec2IiEEEEEERT_PKc.exit

bb.n:                                             ; preds = %.noexc
  %i.m = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull @.str)
          to label %bb.o unwind label %bb.p
end_hunk_0
begin_hunk_1_@ImfHeaderSetV3fAttribute:bb.a
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec3IfEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(12) %5)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec3IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(20) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.h:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.i:                                             ; preds = %bb.o, %bb.m
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.j:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec3IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(20) %6) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn20 = phi { ptr, i32 } [ %i.j, %bb.k ], [ %i.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.m
  %i.l = tail call ptr @__dynamic_cast(ptr nonnull %i.k, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec3IfEEEE, i64 0) #21 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.n, label %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_14Vec3IfEEEEEERT_PKc.exit

bb.n:                                             ; preds = %.noexc
  %i.n = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull @.str)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #23
          to label %.noexc23 unwind label %bb.i

.noexc23:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.o = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #21
  br label %.body

_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_14Vec3IfEEEEEERT_PKc.exit: ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store float %2, ptr %i.p, align 4, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store float %3, ptr %i.q, align 4, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store float %4, ptr %i.r, align 4, !tbaa !64
  br label %bb.q

bb.q:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_14Vec3IfEEEEEERT_PKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.s

.body:                                            ; preds = %bb.i, %bb.p, %bb.g, %bb.h, %bb.l
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.l ], [ %i.f, %bb.g ], [ %i.g, %bb.h ], [ %i.h, %bb.i ], [ %i.o, %bb.p ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn20.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.s = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.t = icmp eq i32 %.2, %i.s
  br i1 %i.t, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.body
  %.218 = extractvalue { ptr, i32 } %.pn20.pn, 0
  %i.u = call ptr @__cxa_begin_catch(ptr %.218) #21 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #21, !inline_history !25
  %i.z = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_ZN12_GLOBAL__N_112errorMessageE, ptr noundef nonnull dereferenceable(1) %i.y, i64 noundef 1023) #21 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112errorMessageE, i64 1023), align 1, !tbaa !17
  call void @__cxa_end_catch()
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi i32 [ 1, %bb.q ], [ 0, %bb.r ]
  ret i32 %.0

bb.t:                                             ; preds = %.body
  resume { ptr, i32 } %.pn20.pn
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec3IfEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec3IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ImfHeaderV3fAttribute(ptr noundef nonnull %0, ptr noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_14Vec3IfEEEE, i64 0) #21 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_14Vec3IfEEEEEERKT_PKc.exit

bb.b:                                             ; preds = %.noexc
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #23
          to label %.noexc13 unwind label %bb.e

.noexc13:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #21
  br label %.body

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_14Vec3IfEEEEEERKT_PKc.exit: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !61
  store float %i.g, ptr %2, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !63
  store float %i.i, ptr %3, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !64
  store float %i.k, ptr %4, align 4, !tbaa !10
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.e, %bb.d ] ; 3 uses
  %i.m = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.n = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.body
  %i.p = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #21 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #21, !inline_history !25
  %i.v = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_ZN12_GLOBAL__N_112errorMessageE, ptr noundef nonnull dereferenceable(1) %i.u, i64 noundef 1023) #21 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112errorMessageE, i64 1023), align 1, !tbaa !17
  tail call void @__cxa_end_catch()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_14Vec3IfEEEEEERKT_PKc.exit
  %.0 = phi i32 [ 1, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_14Vec3IfEEEEEERKT_PKc.exit ], [ 0, %bb.f ]
  ret i32 %.0

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ImfHeaderSetM33fAttribute(ptr noundef nonnull %0, ptr noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Imath_3_1::Matrix33", align 16 ; 7 uses
  %4 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::TypedAttribute.18", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = load <4 x float>, ptr %2, align 4, !tbaa !10 ; 2 uses
  store <4 x float> %i.a, ptr %3, align 16, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = load <4 x float>, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  store <4 x float> %5, ptr %i.c, align 16, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load float, ptr %i.d, align 4, !tbaa !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.e, ptr %i.f, align 16, !tbaa !10
  %i.g = invoke ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header4findEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = invoke ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header3endEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IfEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 4 dereferenceable(36) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(44) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.h:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.i:                                             ; preds = %bb.o, %bb.m
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.j:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(44) %4) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn18 = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.m, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.m
  %i.p = tail call ptr @__dynamic_cast(ptr nonnull %i.o, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IfEEEE, i64 0) #21 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.n, label %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix33IfEEEEEERT_PKc.exit

bb.n:                                             ; preds = %.noexc
  %i.r = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull @.str)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #23
          to label %.noexc21 unwind label %bb.i

.noexc21:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.s = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.r) #21
  br label %.body

_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix33IfEEEEEERT_PKc.exit: ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store <4 x float> %i.a, ptr %i.t, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store <4 x float> %5, ptr %i.u, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store float %i.e, ptr %i.v, align 4, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix33IfEEEEEERT_PKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.s

.body:                                            ; preds = %bb.i, %bb.p, %bb.g, %bb.h, %bb.l
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.l ], [ %i.j, %bb.g ], [ %i.k, %bb.h ], [ %i.l, %bb.i ], [ %i.s, %bb.p ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn18.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.w = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.x = icmp eq i32 %.2, %i.w
  br i1 %i.x, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.body
  %.216 = extractvalue { ptr, i32 } %.pn18.pn, 0
  %i.y = call ptr @__cxa_begin_catch(ptr %.216) #21 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #21, !inline_history !25
  %i.ad = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_ZN12_GLOBAL__N_112errorMessageE, ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef 1023) #21 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112errorMessageE, i64 1023), align 1, !tbaa !17
  call void @__cxa_end_catch()
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi i32 [ 1, %bb.q ], [ 0, %bb.r ]
  ret i32 %.0

bb.t:                                             ; preds = %.body
  resume { ptr, i32 } %.pn18.pn
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IfEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 4 dereferenceable(36)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(44)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ImfHeaderM33fAttribute(ptr noundef nonnull %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix33IfEEEE, i64 0) #21 ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix33IfEEEEEERKT_PKc.exit

bb.b:                                             ; preds = %.noexc
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #23
          to label %.noexc25 unwind label %bb.e

.noexc25:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #21
  br label %.body

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix33IfEEEEEERKT_PKc.exit: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  store float %i.g, ptr %2, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.i, ptr %i.j, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.l, ptr %i.m, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.o, ptr %i.p, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.r, ptr %i.s, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.u = load float, ptr %i.t, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.u, ptr %i.v, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.x = load float, ptr %i.w, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.x, ptr %i.y, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.aa = load float, ptr %i.z, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.aa, ptr %i.ab, align 4, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.ad, ptr %i.ae, align 4, !tbaa !10
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.e ], [ %i.e, %bb.d ] ; 3 uses
  %i.ag = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.ah = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.body
  %i.aj = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %i.aj) #21 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #21, !inline_history !25
  %i.ap = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_ZN12_GLOBAL__N_112errorMessageE, ptr noundef nonnull dereferenceable(1) %i.ao, i64 noundef 1023) #21 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112errorMessageE, i64 1023), align 1, !tbaa !17
  tail call void @__cxa_end_catch()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix33IfEEEEEERKT_PKc.exit
  %.0 = phi i32 [ 1, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix33IfEEEEEERKT_PKc.exit ], [ 0, %bb.f ]
  ret i32 %.0

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ImfHeaderSetM44fAttribute(ptr noundef nonnull %0, ptr noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Imath_3_1::Matrix44", align 16 ; 8 uses
  %4 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::TypedAttribute.20", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = load <4 x float>, ptr %2, align 4, !tbaa !10 ; 2 uses
  store <4 x float> %i.a, ptr %3, align 16, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load <4 x float>, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  store <4 x float> %i.d, ptr %i.c, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load <4 x float>, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  store <4 x float> %i.g, ptr %i.f, align 16, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load <4 x float>, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  store <4 x float> %5, ptr %i.i, align 16, !tbaa !10
  %i.j = invoke ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header4findEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = invoke ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header3endEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix44IfEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 4 dereferenceable(64) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix44IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.h:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.i:                                             ; preds = %bb.o, %bb.m
  %i.o = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

bb.j:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix44IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn18 = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.p, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.m
  %i.s = tail call ptr @__dynamic_cast(ptr nonnull %i.r, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix44IfEEEE, i64 0) #21 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix44IfEEEEEERT_PKc.exit

bb.n:                                             ; preds = %.noexc
  %i.u = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull @.str)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #23
          to label %.noexc21 unwind label %bb.i

.noexc21:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.u) #21
  br label %.body

_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix44IfEEEEEERT_PKc.exit: ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store <4 x float> %i.a, ptr %i.w, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store <4 x float> %i.d, ptr %i.x, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store <4 x float> %i.g, ptr %i.y, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store <4 x float> %5, ptr %i.z, align 4, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix44IfEEEEEERT_PKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.s

.body:                                            ; preds = %bb.i, %bb.p, %bb.g, %bb.h, %bb.l
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.l ], [ %i.m, %bb.g ], [ %i.n, %bb.h ], [ %i.o, %bb.i ], [ %i.v, %bb.p ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn18.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.aa = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ab = icmp eq i32 %.2, %i.aa
  br i1 %i.ab, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.body
  %.216 = extractvalue { ptr, i32 } %.pn18.pn, 0
  %i.ac = call ptr @__cxa_begin_catch(ptr %.216) #21 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #21, !inline_history !25
  %i.ah = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_ZN12_GLOBAL__N_112errorMessageE, ptr noundef nonnull dereferenceable(1) %i.ag, i64 noundef 1023) #21 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112errorMessageE, i64 1023), align 1, !tbaa !17
  call void @__cxa_end_catch()
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi i32 [ 1, %bb.q ], [ 0, %bb.r ]
  ret i32 %.0

bb.t:                                             ; preds = %.body
  resume { ptr, i32 } %.pn18.pn
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix44IfEEEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(64)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix44IfEEED1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ImfHeaderM44fAttribute(ptr noundef nonnull %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56HeaderixEPKc(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeIN9Imath_3_18Matrix44IfEEEE, i64 0) #21 ; 17 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix44IfEEEEEERKT_PKc.exit

bb.b:                                             ; preds = %.noexc
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #21 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #23
          to label %.noexc39 unwind label %bb.e

.noexc39:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #21
  br label %.body

_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix44IfEEEEEERKT_PKc.exit: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  store float %i.g, ptr %2, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.i, ptr %i.j, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.l, ptr %i.m, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.o, ptr %i.p, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.r, ptr %i.s, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.u = load float, ptr %i.t, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.u, ptr %i.v, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.x = load float, ptr %i.w, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.x, ptr %i.y, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.aa = load float, ptr %i.z, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.aa, ptr %i.ab, align 4, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.ad, ptr %i.ae, align 4, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %i.ag, ptr %i.ah, align 4, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.aj, ptr %i.ak, align 4, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.am = load float, ptr %i.al, align 4, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.am, ptr %i.an, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float %i.ap, ptr %i.aq, align 4, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.as = load float, ptr %i.ar, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 52
  store float %i.as, ptr %i.at, align 4, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.av = load float, ptr %i.au, align 4, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 56
  store float %i.av, ptr %i.aw, align 4, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float %i.ay, ptr %i.az, align 4, !tbaa !10
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.e ], [ %i.e, %bb.d ] ; 3 uses
  %i.bb = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.bc = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.body
  %i.be = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #21 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #21, !inline_history !25
  %i.bk = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_ZN12_GLOBAL__N_112errorMessageE, ptr noundef nonnull dereferenceable(1) %i.bj, i64 noundef 1023) #21 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112errorMessageE, i64 1023), align 1, !tbaa !17
  tail call void @__cxa_end_catch()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix44IfEEEEEERKT_PKc.exit
  %.0 = phi i32 [ 1, %_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header14typedAttributeINS_14TypedAttributeIN9Imath_3_18Matrix44IfEEEEEERKT_PKc.exit ], [ 0, %bb.f ]
  ret i32 %.0

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define noundef ptr @ImfOpenOutputFile(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %bb.b unwind label %bb.d       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_517globalThreadCountEv()
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514RgbaOutputFileC1EPKcRKNS_6HeaderENS_12RgbaChannelsEi(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(49) %1, i32 noundef %2, i32 noundef %i.b)
          to label %bb.h unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ] ; 3 uses
  %.08 = extractvalue { ptr, i32 } %.pn, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.f = icmp eq i32 %.08, %i.e
  br i1 %i.f, label %bb.g, label %bb.i
end_hunk_1
