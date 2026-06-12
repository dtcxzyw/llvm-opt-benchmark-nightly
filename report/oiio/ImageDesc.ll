inline.NumInlined: 294
inline.NumDeleted: 53
begin_hunk_0_@_ZN16OpenColorIO_v2_515PackedImageDesc4Impl10initValuesEv:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !59
  %i.ak = shl nsw i64 %i.ah, 1
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !58
  %i.an = mul nsw i64 %i.ah, 3
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 %i.an
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @.str.20)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ap) #21
  resume { ptr, i32 } %i.aq

bb.j:                                             ; preds = %bb.d, %bb.b, %bb.f, %bb.e, %bb.c
  %.sink3 = phi i64 [ 8, %bb.f ], [ 32, %bb.b ], [ 32, %bb.e ], [ 32, %bb.c ], [ 32, %bb.d ]
  %.sink = phi ptr [ %i.ao, %bb.f ], [ null, %bb.b ], [ %i.ad, %bb.e ], [ %i.p, %bb.c ], [ null, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sink3
  store ptr %.sink, ptr %i.ar, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_515PackedImageDesc4Impl12isRGBAPackedEv(ptr noundef nonnull align 8 dereferenceable(98) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52
  switch i32 %i.e, label %._crit_edge [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 5, label %bb.f
    i32 7, label %bb.g
    i32 8, label %bb.h
    i32 4, label %bb.i
    i32 6, label %bb.i
    i32 0, label %bb.i
  ]

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %.not17 = icmp eq i64 %i.g, 1
  br i1 %.not17, label %bb.q, label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22
  %.not16 = icmp eq i64 %i.i, 2
  br i1 %.not16, label %bb.q, label %bb.t

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %.not15 = icmp eq i64 %i.k, 2
  br i1 %.not15, label %bb.q, label %bb.t

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22
  %.not14 = icmp eq i64 %i.m, 2
  br i1 %.not14, label %bb.q, label %bb.t

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22
  %.not13 = icmp eq i64 %i.o, 2
  br i1 %.not13, label %bb.q, label %bb.t

bb.h:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22
  %.not = icmp eq i64 %i.q, 4
  br i1 %.not, label %bb.q, label %bb.t

bb.i:                                             ; preds = %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.r = load i32, ptr %i.d, align 4, !tbaa !52
  %i.s = invoke noundef ptr @_ZN16OpenColorIO_v2_516BitDepthToStringENS_8BitDepthE(i32 noundef %i.r)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.s)
          to label %bb.k unwind label %bb.n       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.24)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !62
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef %i.w)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
          to label %bb.u unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.x, %bb.n ], [ %i.y, %bb.o ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %._crit_edge, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ae = phi i64 [ %.pre, %._crit_edge ], [ 4, %bb.h ], [ 2, %bb.g ], [ 2, %bb.f ], [ 2, %bb.e ], [ 2, %bb.d ], [ 1, %bb.c ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57
  %i.aj = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %.not18 = icmp eq i64 %i.al, %i.ae
  br i1 %.not18, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !59
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = sub i64 %i.ao, %i.aj
  %.not19 = icmp eq i64 %i.ap, %i.ae
  %i.aq = ptrtoint ptr %i.b to i64
  %i.ar = sub i64 %i.aq, %i.ao
  %.not20 = icmp eq i64 %i.ar, %i.ae
  %or.cond = and i1 %.not19, %.not20
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load i64, ptr %i.as, align 8, !tbaa !53
  %i.au = trunc i64 %i.at to i32
  %i.av = trunc i64 %i.ae to i32
  %i.aw = tail call i64 @div(i32 noundef %i.au, i32 noundef %i.av) #26
  %.not22 = icmp eq i64 %i.aw, 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.2 = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.f ], [ %.not22, %bb.s ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ]
  ret i1 %.2

bb.u:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_515PackedImageDesc4Impl8validateEv(ptr noundef nonnull align 8 dereferenceable(98) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.27)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.e:                                             ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %2 = load i64, ptr %1, align 8, !tbaa !50
  %3 = icmp slt i64 %2, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp slt i64 %i.f, 1
  %or.cond = select i1 %3, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.28)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.i:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = tail call noundef i64 @llvm.abs.i64(i64 %i.k, i1 true)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52
  %i.o = tail call noundef i32 @_ZN16OpenColorIO_v2_521GetChannelSizeInBytesENS_8BitDepthE(i32 noundef %i.n)
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %i.l, %i.p
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load i64, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.s = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.s, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.29)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.n:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = add i64 %i.w, -5
  %or.cond9 = icmp ult i64 %i.x, -2
  br i1 %or.cond9, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.30)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.r:                                             ; preds = %bb.n
  %i.aa = mul nsw i64 %i.w, %i.r
  %i.ab = tail call noundef i64 @llvm.abs.i64(i64 %i.aa, i1 true)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !53 ; 2 uses
  %i.ae = tail call noundef i64 @llvm.abs.i64(i64 %i.ad, i1 true) ; 2 uses
  %i.af = icmp samesign ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.31)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.v:                                             ; preds = %bb.r
  %i.ai = icmp eq i64 %i.ad, -9223372036854775808
  br i1 %i.ai, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.32)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.z:                                             ; preds = %bb.v
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54 ; 2 uses
  %i.an = icmp eq i64 %i.am, -9223372036854775808
  br i1 %i.an, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull @.str.33)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ad:                                            ; preds = %bb.z
  %i.aq = load i64, ptr %1, align 8, !tbaa !50
  %i.ar = mul nsw i64 %i.aq, %i.ae
  %i.as = tail call noundef i64 @llvm.abs.i64(i64 %i.am, i1 true)
  %i.at = icmp sgt i64 %i.ar, %i.as
  br i1 %i.at, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.au = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull @.str.34)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ah:                                            ; preds = %bb.ad
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !52
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ay = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull @.str.35)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  ret void

bb.am:                                            ; preds = %bb.ak, %bb.ag, %bb.ac, %bb.y, %bb.u, %bb.q, %bb.m, %bb.h, %bb.d
  %.sink = phi ptr [ %i.ay, %bb.ak ], [ %i.au, %bb.ag ], [ %i.ao, %bb.ac ], [ %i.aj, %bb.y ], [ %i.ag, %bb.u ], [ %i.y, %bb.q ], [ %i.t, %bb.m ], [ %i.h, %bb.h ], [ %i.c, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.az, %bb.ak ], [ %i.av, %bb.ag ], [ %i.ap, %bb.ac ], [ %i.ak, %bb.y ], [ %i.ah, %bb.u ], [ %i.z, %bb.q ], [ %i.u, %bb.m ], [ %i.i, %bb.h ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_515PackedImageDescC2EPvllNS_15ChannelOrderingE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_515PackedImageDescE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #24 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(90) %i.c, i8 0, i64 90, i1 false)
  store ptr %i.a, ptr %i.b, align 8, !tbaa !7
  store ptr %1, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %2, ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %3, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %4, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 8, ptr %i.g, align 4, !tbaa !52
  %or.cond3 = icmp ult i32 %4, 3
  br i1 %or.cond3, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %4, 5
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.20)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #21
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ 4, %bb.a ], [ 3, %bb.b ]
  %i.k = phi i64 [ 16, %bb.a ], [ 12, %bb.b ]     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 4, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.k, ptr %i.n, align 8, !tbaa !53
  %i.o = mul nsw i64 %i.k, %2
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %i.o, ptr %i.p, align 8, !tbaa !54
  tail call void @_ZN16OpenColorIO_v2_515PackedImageDesc4Impl10initValuesEv(ptr noundef nonnull align 8 dereferenceable(98) %i.a)
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.r = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_515PackedImageDesc4Impl12isRGBAPackedEv(ptr noundef nonnull align 8 dereferenceable(98) %i.q)
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !7    ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = zext i1 %i.r to i8
  store i8 %i.u, ptr %i.t, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !22
  %i.x = icmp eq i64 %i.w, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.z, 8
  %i.ab = select i1 %i.x, i1 %i.aa, i1 false
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 97
  %i.ad = zext i1 %i.ab to i8
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !56
  tail call void @_ZNK16OpenColorIO_v2_515PackedImageDesc4Impl8validateEv(ptr noundef nonnull align 8 dereferenceable(98) %i.s)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_515PackedImageDescC2EPvllNS_15ChannelOrderingENS_8BitDepthElll(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_515PackedImageDescE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #24 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(90) %i.c, i8 0, i64 90, i1 false)
  store ptr %i.a, ptr %i.b, align 8, !tbaa !7
  store ptr %1, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %2, ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %3, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %4, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %5, ptr %i.g, align 4, !tbaa !52
  %or.cond3 = icmp ult i32 %4, 3
  br i1 %or.cond3, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %4, 5
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.20)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #21
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ 4, %bb.a ], [ 3, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink, ptr %i.k, align 8, !tbaa !21
  %i.l = tail call noundef i32 @_ZN16OpenColorIO_v2_521GetChannelSizeInBytesENS_8BitDepthE(i32 noundef %5)
  %i.m = icmp eq i64 %6, -9223372036854775808
  %i.n = zext i32 %i.l to i64
  %i.o = select i1 %i.m, i64 %i.n, i64 %6         ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !7    ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i64 %i.o, ptr %i.q, align 8, !tbaa !22
  %i.r = icmp eq i64 %7, -9223372036854775808
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21
  %i.u = mul nsw i64 %i.t, %i.o
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.v = phi i64 [ %i.u, %bb.g ], [ %7, %bb.f ]   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store i64 %i.v, ptr %i.w, align 8, !tbaa !53
  %i.x = icmp eq i64 %8, -9223372036854775808
  %i.y = mul nsw i64 %i.v, %2
  %spec.select = select i1 %i.x, i64 %i.y, i64 %8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store i64 %spec.select, ptr %i.z, align 8, !tbaa !54
  tail call void @_ZN16OpenColorIO_v2_515PackedImageDesc4Impl10initValuesEv(ptr noundef nonnull align 8 dereferenceable(98) %i.p)
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ab = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_515PackedImageDesc4Impl12isRGBAPackedEv(ptr noundef nonnull align 8 dereferenceable(98) %i.aa)
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !7   ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = zext i1 %i.ab to i8
  store i8 %i.ae, ptr %i.ad, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ah = icmp eq i64 %i.ag, 4
end_hunk_0
