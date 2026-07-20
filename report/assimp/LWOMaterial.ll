inline.NumInlined: 941
inline.NumDeleted: 358
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17DeadlyImportErrorC2EPKc:bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #20
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp11LWOImporter5GetS0ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = load i8, ptr %i.c, align 1
  %.not12 = icmp eq i8 %i.d, 0
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ]
  %i.e = phi ptr [ %i.i, %bb.c ], [ %i.c, %bb.a ]
  %i.f = add i32 %.013, 1                         ; 2 uses
  %i.g = icmp ugt i32 %i.f, %2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull @.str.88)
  %.pre = load ptr, ptr %i.b, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  store ptr %i.i, ptr %i.b, align 8
  %i.j = load i8, ptr %i.i, align 1
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !59

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ], [ %i.i, %bb.c ]
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.o, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.n, ptr %i.a, align 8
  %i.p = icmp ugt i64 %i.n, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.loopexit
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %3, align 8
  %i.r = load i64, ptr %i.a, align 8
  store i64 %i.r, ptr %i.o, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.loopexit
  %i.s = phi ptr [ %i.q, %.noexc.i ], [ %i.o, %.loopexit ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.c, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.c, i64 %i.n, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.u = load i64, ptr %i.a, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.y = load ptr, ptr %1, align 8                ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  %i.ab = load ptr, ptr %3, align 8               ; 5 uses
  %i.ac = icmp eq ptr %i.ab, %i.o                 ; 2 uses
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.ac, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.ac, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = load i64, ptr %i.v, align 8             ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  switch i64 %i.ad, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.ab, align 1
  store i8 %i.af, ptr %i.y, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ag = load i64, ptr %i.v, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %1, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ab, ptr %1, align 8
  %i.al = load <2 x i64>, ptr %i.v, align 8
  store <2 x i64> %i.al, ptr %i.ak, align 8
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.am = load i64, ptr %i.z, align 8
  store ptr %i.ab, ptr %1, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load <2 x i64>, ptr %i.v, align 8
  store <2 x i64> %i.ao, ptr %i.an, align 8
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.y, ptr %3, align 8
  store i64 %i.am, ptr %i.o, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.o, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ap = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.y, %bb.j ], [ %i.o, %bb.k ]
  store i64 0, ptr %i.v, align 8
  store i8 0, ptr %i.ap, align 1
  %i.aq = load ptr, ptr %3, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.o
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.as = load i64, ptr %i.o, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = sub i64 2, %i.n
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  store ptr %i.aw, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter18LoadLWO2ProceduralEjRNS_3LWO7TextureE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(233) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(152) initializes((92, 93)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str.41)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 92
  store i8 0, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter16LoadLWO2GradientEjRNS_3LWO7TextureE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(233) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(152) initializes((92, 93)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str.42)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 92
  store i8 0, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter21LoadLWO2TextureHeaderEjRNS_3LWO7TextureE(ptr noundef nonnull align 8 dereferenceable(233) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(152) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  tail call void @_ZN6Assimp11LWOImporter5GetS0ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef %1)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull @.str.43)
  %i.i = load i64, ptr %i.f, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull @.str.44, i64 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 6 ; 2 uses
  %.not1620 = icmp ult ptr %i.l, %i.d
  br i1 %.not1620, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %i.q = phi ptr [ %i.l, %.lr.ph ], [ %i.al, %bb.l ] ; 5 uses
  %i.r = phi ptr [ %i.k, %.lr.ph ], [ %i.v, %bb.l ] ; 5 uses
  %i.s = load i32, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8
  %i.u = load i16, ptr %i.t, align 1
  store ptr %i.q, ptr %i.a, align 8
  %.sroa.10.sroa.0.0.insert.insert.i = tail call i16 @llvm.bswap.i16(i16 %i.u)
  %.sroa.10.0.insert.ext.i = zext i16 %.sroa.10.sroa.0.0.insert.insert.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.10.0.insert.ext.i ; 4 uses
  %i.w = icmp ugt ptr %i.v, %i.d
  br i1 %i.w, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.x = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull @.str.45)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.x) #20
  resume { ptr, i32 } %i.y

bb.h:                                             ; preds = %bb.d
  %.sroa.0.sroa.0.0.insert.insert.i = tail call i32 @llvm.bswap.i32(i32 %i.s)
  switch i32 %.sroa.0.sroa.0.0.insert.insert.i, label %bb.l [
    i32 1128808782, label %bb.i
    i32 1162756418, label %bb.j
    i32 1330659651, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %i.q, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  store ptr %i.aa, ptr %i.a, align 8
  %.sroa.0.0.insert.insert.i17 = tail call noundef i32 @llvm.bswap.i32(i32 %i.z)
  store i32 %.sroa.0.0.insert.insert.i17, ptr %i.p, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = load i16, ptr %i.q, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = icmp ne i16 %i.ab, 0
  %i.ae = zext i1 %i.ad to i8
  store i8 %i.ae, ptr %i.o, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.af = load i16, ptr %i.q, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ag, ptr %i.a, align 8
  %.sroa.0.0.insert.insert.i19 = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %.sroa.0.0.insert.insert.i19 to i32
  store i32 %i.ah, ptr %i.m, align 8
  %i.ai = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.ak, ptr %i.a, align 8
  %.2.insert.insert.i = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  store i32 %.2.insert.insert.i, ptr %i.n, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  store ptr %i.v, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 6 ; 2 uses
  %.not16 = icmp ult ptr %i.al, %i.d
  br i1 %.not16, label %bb.d, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.l, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter20LoadLWO2TextureBlockEPNS_3IFF14SubChunkHeaderEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::LWO::Texture", align 8 ; 31 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 -1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 36
  store float 1.000000e+00, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  store ptr %i.k, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.k, ptr noundef nonnull align 1 dereferenceable(7) @.str.90, i64 7, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 7, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 71
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 -1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i8 1, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 7, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  store i8 1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 5, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 100
  store i32 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 104
  store <2 x float> splat (float 1.000000e+00), ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i32 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 116
  store i32 1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 4 uses
  store ptr %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 0, ptr %i.y, align 8
  store i8 0, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = zext i16 %i.aa to i32
  invoke void @_ZN6Assimp11LWOImporter21LoadLWO2TextureHeaderEjRNS_3LWO7TextureE(ptr noundef nonnull align 8 dereferenceable(233) %0, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(152) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = load i32, ptr %1, align 4
  switch i32 %i.ac, label %bb.g [
    i32 1347571523, label %bb.d
    i32 1196572996, label %bb.e
end_hunk_0
