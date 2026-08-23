Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ImageDesc?download=true
inline.NumInlined: 294
inline.NumDeleted: 53
begin_hunk_0_@_ZN16OpenColorIO_v2_515PackedImageDesc4Impl10initValuesEv:bb.a
  %i.ab = icmp eq i64 %i.aa, 4
  br i1 %i.ab, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ac = mul nsw i64 %i.t, 3
  %i.ad = getelementptr inbounds i8, ptr %i.q, i64 %i.ac
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %0, align 8, !tbaa !12    ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !22 ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
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
  %.not18 = icmp eq i64 %i.g, 1
  br i1 %.not18, label %bb.q, label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22
  %.not17 = icmp eq i64 %i.i, 2
  br i1 %.not17, label %bb.q, label %bb.t

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %.not16 = icmp eq i64 %i.k, 2
  br i1 %.not16, label %bb.q, label %bb.t

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22
  %.not15 = icmp eq i64 %i.m, 2
  br i1 %.not15, label %bb.q, label %bb.t

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22
  %.not14 = icmp eq i64 %i.o, 2
  br i1 %.not14, label %bb.q, label %bb.t

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
  %.not19 = icmp eq i64 %i.al, %i.ae
  br i1 %.not19, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !59
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = sub i64 %i.ao, %i.aj
  %.not20 = icmp eq i64 %i.ap, %i.ae
  %i.aq = ptrtoint ptr %i.b to i64
  %i.ar = sub i64 %i.aq, %i.ao
  %.not21 = icmp eq i64 %i.ar, %i.ae
  %or.cond = and i1 %.not20, %.not21
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load i64, ptr %i.as, align 8, !tbaa !53
  %i.au = trunc i64 %i.at to i32
  %i.av = trunc i64 %i.ae to i32
  %i.aw = tail call i64 @div(i32 noundef %i.au, i32 noundef %i.av) #26
  %.not23 = icmp eq i64 %i.aw, 4
  br i1 %.not23, label %3, label %bb.t

3:                                                ; preds = %bb.s
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %3
  %.2 = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.q ], [ false, %bb.r ], [ true, %3 ], [ false, %bb.s ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ]
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
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50
  %i.g = icmp slt i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp slt i64 %i.i, 1
  %or.cond = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.28)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.i:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = tail call noundef i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !52
  %i.r = tail call noundef i32 @_ZN16OpenColorIO_v2_521GetChannelSizeInBytesENS_8BitDepthE(i32 noundef %i.q)
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %i.o, %i.s
  br i1 %i.t, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i64, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.v = icmp eq i64 %i.u, -9223372036854775808
  br i1 %i.v, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @.str.29)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.n:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i64, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = add i64 %i.z, -5
  %or.cond9 = icmp ult i64 %i.aa, -2
  br i1 %or.cond9, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull @.str.30)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.r:                                             ; preds = %bb.n
  %i.ad = mul nsw i64 %i.z, %i.u
  %i.ae = tail call noundef i64 @llvm.abs.i64(i64 %i.ad, i1 true)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !53 ; 2 uses
  %i.ah = tail call noundef i64 @llvm.abs.i64(i64 %i.ag, i1 true) ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.ae, %i.ah
  br i1 %i.ai, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.31)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.v:                                             ; preds = %bb.r
  %i.al = icmp eq i64 %i.ag, -9223372036854775808
  br i1 %i.al, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.am = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull @.str.32)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.z:                                             ; preds = %bb.v
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !54 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %i.aq, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull @.str.33)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ad:                                            ; preds = %bb.z
  %i.at = load i64, ptr %i.e, align 8, !tbaa !50
  %i.au = mul nsw i64 %i.at, %i.ah
  %i.av = tail call noundef i64 @llvm.abs.i64(i64 %i.ap, i1 true)
  %i.aw = icmp sgt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull @.str.34)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ah:                                            ; preds = %bb.ad
  %i.az = load i32, ptr %i.p, align 4, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull @.str.35)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bc = landingpad { ptr, i32 }
end_hunk_0
