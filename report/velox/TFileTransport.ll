inline.NumInlined: 732
inline.NumDeleted: 337
begin_hunk_0_@_ZN6apache6thrift9transport10TTransport23checkReadBytesAvailableEl:bb.a
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !47     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !50
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6apache6thrift9transport14TFileTransport4readEPhj(ptr noundef nonnull align 8 dereferenceable(305) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = zext i32 %2 to i64                       ; 2 uses
  tail call void @_ZN6apache6thrift9transport10TTransport23checkReadBytesAvailableEl(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN6apache6thrift9transport14TFileTransport9readEventEv(ptr noundef nonnull align 8 dereferenceable(305) %0) ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !103
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !149
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !175  ; 3 uses
  %i.n = sub i32 %i.k, %i.m                       ; 4 uses
  %.not17 = icmp sgt i32 %i.n, %2
  br i1 %.not17, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %.thread24

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.q = zext i32 %i.m to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = zext nneg i32 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.r, i64 %i.s, i1 false)
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !103 ; 2 uses
  %i.t = icmp eq ptr %.pre, null
  br i1 %i.t, label %bb.f, label %.thread24

.thread24:                                        ; preds = %bb.c, %bb.d
  %i.u = phi ptr [ %.pre, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.thread24
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #31
  br label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit

_ZN6apache6thrift9transport9eventInfoD2Ev.exit:   ; preds = %.thread24, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 16) #31
  br label %bb.f

bb.f:                                             ; preds = %_ZN6apache6thrift9transport9eventInfoD2Ev.exit, %bb.d
  store ptr null, ptr %i.f, align 8, !tbaa !103
  br label %bb.h

bb.g:                                             ; preds = %.thread
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.x = zext i32 %i.m to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.y, i64 %i.e, i1 false)
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !175
  %i.ac = add i32 %i.ab, %2
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !175
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.n, %bb.f ], [ %2, %bb.g ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6apache6thrift10TExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6apache6thrift10TExceptionE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !50
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6apache6thrift9transport14TFileTransport4peekEv(ptr noundef nonnull align 8 dereferenceable(305) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6apache6thrift9transport14TFileTransport9readEventEv(ptr noundef nonnull align 8 dereferenceable(305) %0) ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !103
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !175
  %i.i = icmp ne i32 %i.f, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.0 = phi i1 [ %i.i, %.thread ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6apache6thrift9transport14TFileTransport9readEventEv(ptr noundef nonnull align 8 dereferenceable(305) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !176
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #34
  store ptr %i.f, ptr %i.a, align 8, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.c
  %.012.ph = phi i32 [ 0, %bb.c ], [ %.012.ph.be, %.outer.backedge ]
  %i.t = load i32, ptr %i.g, align 8, !tbaa !177  ; 3 uses
  %i.u = load i32, ptr %i.h, align 4, !tbaa !178  ; 2 uses
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph, label %.loopexit37

.lr.ph:                                           ; preds = %.outer, %bb.j
  %i.w = phi i32 [ %i.at, %bb.j ], [ %i.t, %.outer ]
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr %i.i, align 8, !tbaa !56
  %i.z = add nsw i64 %i.y, %i.x
  store i64 %i.z, ptr %i.i, align 8, !tbaa !56
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !51
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !176
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call i64 @read(i32 noundef %i.aa, ptr noundef %i.ab, i64 noundef %i.ad)
  %i.af = trunc i64 %i.ae to i32                  ; 3 uses
  store i32 %i.af, ptr %i.h, align 4, !tbaa !178
  store i32 0, ptr %i.g, align 8, !tbaa !177
  store i32 0, ptr %i.l, align 8, !tbaa !165
  switch i32 %i.af, label %.loopexit37 [
    i32 -1, label %bb.d
    i32 0, label %bb.i
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6apache6thrift9transport9readState14resetAllValuesEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ag)
  %i.ah = load ptr, ptr @_ZN6apache6thrift12GlobalOutputE, align 8, !tbaa !160
  tail call void %i.ah(ptr noundef nonnull @.str.20), !inline_history !164
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 48) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6apache6thrift9transport19TTransportExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN6apache6thrift9transport19TTransportExceptionE, ptr nonnull @_ZN6apache6thrift10TExceptionD2Ev) #33
          to label %bb.ac unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.014 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !47    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !50
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.014, label %bb.h, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.014, label %bb.h, label %bb.ab

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn35 = phi { ptr, i32 } [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ai) #30
  br label %bb.ab

bb.i:                                             ; preds = %.lr.ph
  %i.aq = load i32, ptr %i.m, align 4, !tbaa !179 ; 4 uses
  switch i32 %i.aq, label %bb.k [
    i32 -1, label %bb.j
    i32 0, label %.loopexit
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = load i32, ptr %i.n, align 8, !tbaa !19
  %i.as = tail call i32 @usleep(i32 noundef %i.ar) ; 0 uses
  %i.at = load i32, ptr %i.g, align 8, !tbaa !177 ; 3 uses
  %i.au = load i32, ptr %i.h, align 4, !tbaa !178 ; 2 uses
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %.lr.ph, label %.loopexit37, !llvm.loop !180

bb.k:                                             ; preds = %bb.i
  %i.aw = icmp sgt i32 %i.aq, 0
  br i1 %i.aw, label %bb.l, label %.outer.backedge

bb.l:                                             ; preds = %bb.k
  %.not27 = icmp eq i32 %.012.ph, 0
  br i1 %.not27, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ax = mul nuw nsw i32 %i.aq, 1000
  %i.ay = tail call i32 @usleep(i32 noundef %i.ax) ; 0 uses
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.backedge, %bb.k, %bb.x, %.loopexit37, %bb.m
  %.012.ph.be = phi i32 [ 1, %bb.m ], [ 0, %.loopexit37 ], [ 0, %bb.x ], [ 0, %bb.k ], [ 0, %.backedge ]
  br label %.outer, !llvm.loop !180

.loopexit37:                                      ; preds = %bb.j, %.lr.ph, %.outer
  %i.az = phi i32 [ %i.u, %.outer ], [ %i.af, %.lr.ph ], [ %i.au, %bb.j ] ; 2 uses
  %i.ba = phi i32 [ %i.t, %.outer ], [ 0, %.lr.ph ], [ %i.at, %bb.j ] ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.az
  br i1 %i.bb, label %.lr.ph60, label %.outer.backedge

.lr.ph60:                                         ; preds = %.loopexit37, %.backedge
  %i.bc = phi i32 [ %i.bs, %.backedge ], [ %i.az, %.loopexit37 ]
  %i.bd = phi i32 [ %i.br, %.backedge ], [ %i.ba, %.loopexit37 ] ; 6 uses
  %i.be = load i8, ptr %i.o, align 1, !tbaa !181, !range !54, !noundef !55
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.n, label %bb.y

bb.n:                                             ; preds = %.lr.ph60
  %i.bg = load i8, ptr %i.p, align 4, !tbaa !182  ; 3 uses
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.o, label %._crit_edge65

._crit_edge65:                                    ; preds = %bb.n
  %.pre66 = sext i32 %i.bd to i64
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bi = load i64, ptr %i.i, align 8, !tbaa !56
  %i.bj = sext i32 %i.bd to i64                   ; 2 uses
  %i.bk = add nsw i64 %i.bi, %i.bj                ; 2 uses
  %i.bl = load i32, ptr %i.q, align 8, !tbaa !169
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = sdiv i64 %i.bk, %i.bm
  %i.bo = add nsw i64 %i.bk, 3
  %i.bp = sdiv i64 %i.bo, %i.bm
  %.not25 = icmp eq i64 %i.bn, %i.bp
  br i1 %.not25, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = add nsw i32 %i.bd, 1
  store i32 %i.bq, ptr %i.g, align 8, !tbaa !177
  br label %.backedge

.backedge:                                        ; preds = %bb.w, %bb.q, %bb.aa, %bb.p, %bb.s
  %i.br = load i32, ptr %i.g, align 8, !tbaa !177 ; 2 uses
  %i.bs = load i32, ptr %i.h, align 4, !tbaa !178 ; 2 uses
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph60, label %.outer.backedge, !llvm.loop !183

bb.q:                                             ; preds = %._crit_edge65, %bb.o
  %.pre-phi = phi i64 [ %.pre66, %._crit_edge65 ], [ %i.bj, %bb.o ]
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.bv = add nsw i32 %i.bd, 1
  store i32 %i.bv, ptr %i.g, align 8, !tbaa !177
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %.pre-phi
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !50
  %i.by = add i8 %i.bg, 1
  store i8 %i.by, ptr %i.p, align 4, !tbaa !182
  %i.bz = zext i8 %i.bg to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bz
  store i8 %i.bx, ptr %i.ca, align 1, !tbaa !50
  %i.cb = load i8, ptr %i.p, align 4, !tbaa !182
  %i.cc = icmp eq i8 %i.cb, 4
  br i1 %i.cc, label %bb.r, label %.backedge

bb.r:                                             ; preds = %bb.q
  %i.cd = load i32, ptr %i.r, align 8, !tbaa !3
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.o, align 1, !tbaa !9
  store i8 0, ptr %i.p, align 4, !tbaa !14
  br label %.backedge

bb.t:                                             ; preds = %bb.r
  store i8 0, ptr %i.o, align 1, !tbaa !181
  %i.cf = load ptr, ptr %i.s, align 8, !tbaa !184 ; 3 uses
  %.not26 = icmp eq ptr %i.cf, null
  br i1 %.not26, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !63 ; 2 uses
  %.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i, label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.cg) #31
  br label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit

_ZN6apache6thrift9transport9eventInfoD2Ev.exit:   ; preds = %bb.u, %bb.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 16) #31
  br label %bb.w

bb.w:                                             ; preds = %_ZN6apache6thrift9transport9eventInfoD2Ev.exit, %bb.t
  %i.ch = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  store ptr %i.ch, ptr %i.s, align 8, !tbaa !184
  %i.ci = load i32, ptr %i.r, align 8, !tbaa !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !149
  %i.ck = tail call noundef zeroext i1 @_ZN6apache6thrift9transport14TFileTransport16isEventCorruptedEv(ptr noundef nonnull align 8 dereferenceable(305) %0)
  br i1 %i.ck, label %bb.x, label %.backedge

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN6apache6thrift9transport14TFileTransport15performRecoveryEv(ptr noundef nonnull align 8 dereferenceable(305) %0)
  br label %.outer.backedge

bb.y:                                             ; preds = %.lr.ph60
  %i.cl = load ptr, ptr %i.s, align 8, !tbaa !184 ; 6 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !63 ; 2 uses
  %.not23 = icmp eq ptr %i.cm, null
  br i1 %.not23, label %bb.z, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !175
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !149
  %i.cp = zext i32 %i.co to i64
  %i.cq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #34 ; 2 uses
  store ptr %i.cq, ptr %i.cl, align 8, !tbaa !63
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cr, align 4, !tbaa !175
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z
  %i.cs = phi ptr [ %i.cm, %._crit_edge ], [ %i.cq, %bb.z ]
  %i.ct = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.z ] ; 2 uses
  %i.cu = sub nsw i32 %i.bc, %i.bd
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !149
  %i.cx = sub i32 %i.cw, %i.ct
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.cx, i32 %i.cu) ; 3 uses
  %i.cy = zext i32 %i.ct to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cy
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.db = sext i32 %i.bd to i64
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 %i.db
  %i.dd = sext i32 %.sroa.speculated to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr align 1 %i.dc, i64 %i.dd, i1 false)
  %i.de = load ptr, ptr %i.s, align 8, !tbaa !184 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !175
  %i.dh = add i32 %i.dg, %.sroa.speculated        ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !175
  %i.di = load i32, ptr %i.g, align 8, !tbaa !177
  %i.dj = add nsw i32 %i.di, %.sroa.speculated    ; 2 uses
  store i32 %i.dj, ptr %i.g, align 8, !tbaa !177
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !149
  %.not24 = icmp eq i32 %i.dh, %i.dl
  br i1 %.not24, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.aa
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !175
  store ptr null, ptr %i.s, align 8, !tbaa !184
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.i, %.thread
  %.lcssa83.sink = phi i32 [ %i.dj, %.thread ], [ %i.aq, %bb.i ], [ 0, %bb.l ]
  %.4 = phi ptr [ %i.de, %.thread ], [ null, %bb.i ], [ null, %bb.l ]
  store i8 1, ptr %i.o, align 1, !tbaa !9
  store i8 0, ptr %i.p, align 4, !tbaa !14
  store i32 %.lcssa83.sink, ptr %i.l, align 8, !tbaa !15
  ret ptr %.4

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn34 = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn35, %bb.h ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn34

bb.ac:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: uwtable
define noundef zeroext i1 @_ZTv0_n40_N6apache6thrift9transport14TFileTransport4peekEv(ptr noundef %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -40
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6apache6thrift9transport14TFileTransport9readEventEv(ptr noundef nonnull align 8 dereferenceable(305) %i.d) ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !103
  %.not3.i = icmp eq ptr %i.g, null
  br i1 %.not3.i, label %_ZN6apache6thrift9transport14TFileTransport4peekEv.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !149
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
end_hunk_0
