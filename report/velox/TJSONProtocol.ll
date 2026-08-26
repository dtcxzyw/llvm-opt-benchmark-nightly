Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/TJSONProtocol?download=true
inline.NumInlined: 1094
inline.NumDeleted: 330
begin_hunk_0_@_ZN6apache6thrift8protocol13TJSONProtocol18readJSONEscapeCharEPt:bb.a
  %i.ap = phi i8 [ %i.y, %bb.b ], [ %i.ag, %bb.c ]
  %i.aq = phi i8 [ %i.w, %bb.b ], [ %i.ai, %bb.c ]
  %i.ar = phi i8 [ %.pre7, %bb.b ], [ %.pre9, %bb.c ]
  %i.as = tail call fastcc noundef zeroext i8 @_ZN6apache6thrift8protocolL6hexValEh(i8 noundef zeroext %i.ap)
  %i.at = zext nneg i8 %i.as to i16
  %i.au = shl nuw i16 %i.at, 12
  %i.av = tail call fastcc noundef zeroext i8 @_ZN6apache6thrift8protocolL6hexValEh(i8 noundef zeroext %i.aq)
  %i.aw = zext nneg i8 %i.av to i16
  %i.ax = shl nuw nsw i16 %i.aw, 8
  %i.ay = or disjoint i16 %i.ax, %i.au
  %i.az = tail call fastcc noundef zeroext i8 @_ZN6apache6thrift8protocolL6hexValEh(i8 noundef zeroext %i.ao)
  %i.ba = shl nuw i8 %i.az, 4
  %i.bb = zext i8 %i.ba to i16
  %i.bc = or disjoint i16 %i.ay, %i.bb
  %i.bd = tail call fastcc noundef zeroext i8 @_ZN6apache6thrift8protocolL6hexValEh(i8 noundef zeroext %i.ar)
  %i.be = zext nneg i8 %i.bd to i16
  %i.bf = or disjoint i16 %i.bc, %i.be
  store i16 %i.bf, ptr %1, align 2, !tbaa !124
  ret i32 4
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext range(i8 0, 16) i8 @_ZN6apache6thrift8protocolL6hexValEh(i8 noundef zeroext %0) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = add i8 %0, -48                           ; 2 uses
  %or.cond = icmp ult i8 %i.a, 10
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i8 %0, -97
  %or.cond5 = icmp ult i8 %i.b, 6
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i8 %0, -87
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 48) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !8
  store i8 %0, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.g, align 1, !tbaa !16
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.33)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.d, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN6apache6thrift10TExceptionD2Ev) #25
          to label %bb.m unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !16
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.i ] ; 4 uses
  %.1 = phi i1 [ true, %bb.h ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.i ] ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !16
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.t = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.e
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread: ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.e
  br i1 %i.x, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread
  %i.y = load i64, ptr %i.e, align 8, !tbaa !16
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #29
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !16
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.ab) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.1, label %bb.j, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.1, label %bb.j, label %bb.l

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn.pn.pn30 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.v, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.d) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.a, %bb.c
  %.014 = phi i8 [ %i.c, %bb.c ], [ %i.a, %bb.a ]
  ret i8 %.014

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.j
  %.pn.pn.pn29 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %.pn.pn.pn30, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  resume { ptr, i32 } %.pn.pn.pn29

bb.m:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator", align 1   ; 5 uses
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(10) %i.d)
  %i.i = add i32 %i.h, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %i.i, %bb.b ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  tail call fastcc void @_ZN6apache6thrift8protocolL14readSyntaxCharERNS1_13TJSONProtocol15LookaheadReaderEh(ptr noundef nonnull align 8 dereferenceable(10) %i.k, i8 noundef zeroext 34)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 0, ptr %i.l, align 8, !tbaa !17
  %i.m = load ptr, ptr %1, align 8, !tbaa !14
  store i8 0, ptr %i.m, align 1, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 153 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit, %bb.c
  %.sroa.17.0.ph.a = phi ptr [ %.sroa.17.1.a, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ null, %bb.c ] ; 23 uses
  %.sroa.31.0.ph = phi ptr [ %.sroa.31.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ null, %bb.c ] ; 9 uses
  %.sroa.0103.0.ph = phi ptr [ %.sroa.0103.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ null, %bb.c ] ; 28 uses
  %.036.ph = phi i32 [ %i.bv, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ %i.j, %bb.c ] ; 2 uses
  %i.s = icmp eq ptr %.sroa.0103.0.ph, %.sroa.31.0.ph
  %.fr = freeze i1 %i.s                           ; 2 uses
  br i1 %.fr, label %.outer.split.us, label %.outer.split

.outer.split.us:                                  ; preds = %.outer, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.us
  %.036.us = phi i32 [ %.137.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.us ], [ %.036.ph, %.outer ] ; 3 uses
  %i.t = load i8, ptr %i.n, align 8, !tbaa !58, !range !127, !noundef !128
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.outer.split.us
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull %i.o, i32 noundef 1)
          to label %bb.f unwind label %.split.us, !inline_history !130 ; 0 uses

bb.e:                                             ; preds = %.outer.split.us
  store i8 0, ptr %i.n, align 8, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = load i8, ptr %i.o, align 1, !tbaa !59   ; 2 uses
  %i.ab = add i32 %.036.us, 1                     ; 2 uses
  switch i8 %i.aa, label %bb.l [
    i8 34, label %.split232.us
    i8 92, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.n, align 8, !tbaa !58, !range !127, !noundef !128
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !57  ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull %i.o, i32 noundef 1)
          to label %bb.i unwind label %.split.us, !inline_history !130 ; 0 uses

.thread:                                          ; preds = %bb.g
  store i8 0, ptr %i.n, align 8, !tbaa !58
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %.pre374 = load i8, ptr %i.o, align 1, !tbaa !59 ; 2 uses
  %i.aj = icmp eq i8 %.pre374, 117
  br i1 %i.aj, label %.split238.us, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.ak = phi i8 [ 92, %.thread ], [ %.pre374, %bb.i ] ; 2 uses
  %i.al = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN6apache6thrift8protocolL12kEscapeCharsB5cxx11E, i8 noundef signext %i.ak, i64 noundef 0) #26 ; 2 uses
  %i.am = icmp eq i64 %i.al, -1
  br i1 %i.am, label %.split241.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add i32 %.036.us, 2
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN6apache6thrift8protocolL15kEscapeCharValsE, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.0127.us = phi i8 [ %i.aa, %bb.f ], [ %i.ap, %bb.k ]
  %.137.us = phi i32 [ %i.ab, %bb.f ], [ %i.an, %bb.k ]
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !17  ; 4 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.p
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us: ; preds = %bb.l
  %i.au = load i64, ptr %i.p, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us: ; preds = %bb.l
  %i.av = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us
  %i.aw = phi i64 [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us ]
  %i.ax = icmp ugt i64 %i.ar, %i.aw
  br i1 %i.ax, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.us

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aq, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc93.us unwind label %.split.us

.noexc93.us:                                      ; preds = %bb.m
  %.pre.i.i.us = load ptr, ptr %1, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.us: ; preds = %.noexc93.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us
  %i.ay = phi ptr [ %.pre.i.i.us, %.noexc93.us ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.us ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  store i8 %.0127.us, ptr %i.az, align 1, !tbaa !16
  store i64 %i.ar, ptr %i.l, align 8, !tbaa !17
  %i.ba = load ptr, ptr %1, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ar
  store i8 0, ptr %i.bb, align 1, !tbaa !16
  br label %.outer.split.us

.split.us:                                        ; preds = %bb.m, %bb.h, %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.outer.split:                                     ; preds = %.outer
  %i.bd = load i8, ptr %i.n, align 8, !tbaa !58, !range !127, !noundef !128
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.outer.split
  store i8 0, ptr %i.n, align 8, !tbaa !58
  br label %bb.p

bb.o:                                             ; preds = %.outer.split
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !57  ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull %i.o, i32 noundef 1)
          to label %bb.p unwind label %.split, !inline_history !130 ; 0 uses

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bk = load i8, ptr %i.o, align 1, !tbaa !59
  switch i8 %i.bk, label %.loopexit277 [
    i8 34, label %.split232.us.thread
    i8 92, label %bb.q
  ]

.split:                                           ; preds = %bb.r, %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.q:                                             ; preds = %bb.p
  %i.bm = load i8, ptr %i.n, align 8, !tbaa !58, !range !127, !noundef !128
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.thread400, label %bb.r

.thread400:                                       ; preds = %bb.q
  store i8 0, ptr %i.n, align 8, !tbaa !58
  br label %.loopexit402

bb.r:                                             ; preds = %bb.q
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !57  ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef i32 %i.br(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull %i.o, i32 noundef 1)
          to label %bb.s unwind label %.split, !inline_history !130 ; 0 uses

bb.s:                                             ; preds = %bb.r
  %.pre = load i8, ptr %i.o, align 1, !tbaa !59   ; 2 uses
  %i.bt = icmp eq i8 %.pre, 117
  br i1 %i.bt, label %.split238.us, label %.loopexit402

.split238.us:                                     ; preds = %bb.i, %bb.s
  %.us-phi239 = phi i32 [ %.036.ph, %bb.s ], [ %.036.us, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.bu = invoke noundef i32 @_ZN6apache6thrift8protocol13TJSONProtocol18readJSONEscapeCharEPt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.a)
          to label %bb.t unwind label %.loopexit  ; 0 uses

bb.t:                                             ; preds = %.split238.us
  %i.bv = add i32 %.us-phi239, 6
  %i.bw = load i16, ptr %i.a, align 2, !tbaa !124 ; 5 uses
  %i.bx = and i16 %i.bw, -1024
  switch i16 %i.bx, label %bb.af [
    i16 -10240, label %bb.u
    i16 -9216, label %bb.z
  ]

bb.u:                                             ; preds = %bb.t
  %.not.i = icmp eq ptr %.sroa.31.0.ph, %.sroa.17.0.ph.a
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i16 %i.bw, ptr %.sroa.31.0.ph, align 2, !tbaa !124
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.31.0.ph, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.w:                                             ; preds = %bb.u
  %i.bz = ptrtoint ptr %.sroa.17.0.ph.a to i64
  %i.ca = ptrtoint ptr %.sroa.0103.0.ph to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 6 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775806
  br i1 %i.cc, label %.invoke, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.w, %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.cd = ashr exact i64 %i.cb, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add i64 %.sroa.speculated.i.i.i, %i.cd  ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 4611686018427387903)
  %i.ch = select i1 %i.cf, i64 4611686018427387903, i64 %i.cg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ci = shl nuw nsw i64 %i.ch, 1
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #27
          to label %.noexc57 unwind label %.loopexit ; 4 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.cb ; 2 uses
  store i16 %i.bw, ptr %i.ck, align 2, !tbaa !124
  %i.cl = icmp sgt i64 %i.cb, 0
  br i1 %i.cl, label %bb.x, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %.noexc57
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cj, ptr align 2 %.sroa.0103.0.ph, i64 %i.cb, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %.noexc57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %.not.i17.i.i = icmp eq ptr %.sroa.0103.0.ph, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.0.ph, i64 noundef %i.cb) #29
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.ch
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

.loopexit:                                        ; preds = %.split238.us, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i59
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.z:                                             ; preds = %bb.t
  br i1 %.fr, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.co = call ptr @__cxa_allocate_exception(i64 48) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.ab unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.co, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTIN6apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN6apache6thrift10TExceptionD2Ev) #25
          to label %bb.bl unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aa
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.021 = phi i1 [ false, %bb.ac ], [ true, %bb.ab ] ; 2 uses
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cr = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !16
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.021, label %bb.ae, label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.021, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn47130 = phi { ptr, i32 } [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.co) #26
  br label %bb.at

bb.af:                                            ; preds = %bb.t, %bb.z
  %.not.i58 = icmp eq ptr %.sroa.31.0.ph, %.sroa.17.0.ph.a
  br i1 %.not.i58, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i16 %i.bw, ptr %.sroa.31.0.ph, align 2, !tbaa !124
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit67

bb.ah:                                            ; preds = %bb.af
  %i.cw = ptrtoint ptr %.sroa.17.0.ph.a to i64
  %i.cx = ptrtoint ptr %.sroa.0103.0.ph to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 6 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775806
  br i1 %i.cz, label %.invoke, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i59

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i59: ; preds = %bb.ah
  %i.da = ashr exact i64 %i.cy, 1                 ; 3 uses
  %.sroa.speculated.i.i.i60 = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add i64 %.sroa.speculated.i.i.i60, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 4611686018427387903)
  %i.de = select i1 %i.dc, i64 4611686018427387903, i64 %i.dd ; 3 uses
  %.not.i.i.i61 = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i.i61)
  %i.df = shl nuw nsw i64 %i.de, 1
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #27
          to label %.noexc66 unwind label %.loopexit ; 4 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i59
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy ; 2 uses
  store i16 %i.bw, ptr %i.dh, align 2, !tbaa !124
  %i.di = icmp sgt i64 %i.cy, 0
  br i1 %i.di, label %bb.ai, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i62

bb.ai:                                            ; preds = %.noexc66
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dg, ptr align 2 %.sroa.0103.0.ph, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i62

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i62: ; preds = %bb.ai, %.noexc66
  %.not.i17.i.i63 = icmp eq ptr %.sroa.0103.0.ph, null
  br i1 %.not.i17.i.i63, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i62
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.0.ph, i64 noundef %i.cy) #29
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64: ; preds = %bb.aj, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i62
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.de
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit67

_ZNSt6vectorItSaItEE9push_backERKt.exit67:        ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64, %bb.ag
  %.pn.a = phi ptr [ %i.dj, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64 ], [ %.sroa.17.0.ph.a, %bb.ag ] ; 5 uses
  %.sroa.31.5 = phi ptr [ %i.dh, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64 ], [ %.sroa.31.0.ph, %bb.ag ] ; 2 uses
  %.sroa.0103.5 = phi ptr [ %i.dg, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64 ], [ %.sroa.0103.0.ph, %bb.ag ] ; 7 uses
  %.sroa.17.3 = getelementptr inbounds nuw i8, ptr %.sroa.31.5, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.17.3, %.pn.a
  br i1 %.not.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit67
  store i16 0, ptr %.sroa.17.3, align 2, !tbaa !124
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.31.5, i64 4
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.al:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit67
  %i.dl = ptrtoint ptr %.pn.a to i64
  %i.dm = ptrtoint ptr %.sroa.0103.5 to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 6 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775806
  br i1 %i.do, label %bb.am, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #25
          to label %.noexc68 unwind label %.loopexit.split-lp152

.noexc68:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.dp = ashr exact i64 %i.dn, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add i64 %.sroa.speculated.i.i.i.i, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dq, i64 4611686018427387903)
  %i.dt = select i1 %i.dr, i64 4611686018427387903, i64 %i.ds ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.du = shl nuw nsw i64 %i.dt, 1
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #27
          to label %.noexc69 unwind label %.loopexit151 ; 4 uses

.noexc69:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.dn ; 2 uses
  store i16 0, ptr %i.dw, align 2, !tbaa !124
  %i.dx = icmp sgt i64 %i.dn, 0
  br i1 %i.dx, label %bb.an, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.an:                                            ; preds = %.noexc69
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dv, ptr align 2 %.sroa.0103.5, i64 %i.dn, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.an, %.noexc69
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0103.5, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.5, i64 noundef %i.dn) #29
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.ao, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.dt
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.ak
  %.sroa.17.4.a = phi ptr [ %i.dz, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %.pn.a, %bb.ak ] ; 2 uses
  %.sroa.31.6 = phi ptr [ %i.dy, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.dk, %bb.ak ] ; 2 uses
  %.sroa.0103.6 = phi ptr [ %i.dv, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %.sroa.0103.5, %bb.ak ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %.0.i.i = phi ptr [ %.sroa.0103.6, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ %i.eb, %bb.ap ] ; 3 uses
  %i.ea = load i16, ptr %.0.i.i, align 2, !tbaa !124, !noalias !131
  %.not.i.i70 = icmp eq i16 %i.ea, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  br i1 %.not.i.i70, label %_ZN5boost6locale4util7str_endIKtEEPT_S5_.exit.i, label %bb.ap, !llvm.loop !134

_ZN5boost6locale4util7str_endIKtEEPT_S5_.exit.i:  ; preds = %bb.ap
  invoke void @_ZN5boost6locale4conv10utf_to_utfIctEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEPKT0_SC_NS1_11method_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %.sroa.0103.6, ptr noundef nonnull %.0.i.i, i32 noundef 0)
          to label %_ZN5boost6locale4conv10utf_to_utfIctEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEPKT0_NS1_11method_typeE.exit unwind label %bb.ar

_ZN5boost6locale4conv10utf_to_utfIctEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEPKT0_NS1_11method_typeE.exit: ; preds = %_ZN5boost6locale4util7str_endIKtEEPT_S5_.exit.i
  %i.ec = load i64, ptr %i.q, align 8, !tbaa !17  ; 2 uses
  %i.ed = load i64, ptr %i.l, align 8, !tbaa !17
  %i.ee = sub i64 4611686018427387903, %i.ed
  %i.ef = icmp ult i64 %i.ee, %i.ec
  br i1 %i.ef, label %bb.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.aq:                                            ; preds = %_ZN5boost6locale4conv10utf_to_utfIctEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEPKT0_NS1_11method_typeE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #25
          to label %.noexc72 unwind label %.loopexit.split-lp157

.noexc72:                                         ; preds = %bb.aq
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN5boost6locale4conv10utf_to_utfIctEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEPKT0_NS1_11method_typeE.exit
  %i.eg = load ptr, ptr %5, align 8, !tbaa !14
  %i.eh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.eg, i64 noundef %i.ec)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit156 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ei = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.r
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ek = load i64, ptr %i.r, align 8, !tbaa !16
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.not.i.i77 = icmp eq ptr %.sroa.31.6, %.sroa.0103.6
  %spec.select = select i1 %.not.i.i77, ptr %.sroa.31.6, ptr %.sroa.0103.6
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

.loopexit151:                                     ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit153 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp152:                            ; preds = %bb.am
  %lpad.loopexit.split-lp154 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ar:                                            ; preds = %_ZN5boost6locale4util7str_endIKtEEPT_S5_.exit.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

.loopexit156:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp157:                            ; preds = %bb.aq
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp157, %.loopexit156
  %lpad.phi160 = phi { ptr, i32 } [ %lpad.loopexit158, %.loopexit156 ], [ %lpad.loopexit.split-lp159, %.loopexit.split-lp157 ] ; 2 uses
  %i.en = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.r
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.as
  %i.ep = load i64, ptr %i.r, align 8, !tbaa !16
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.ar
  %.pn45 = phi { ptr, i32 } [ %i.em, %bb.ar ], [ %lpad.phi160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %lpad.phi160, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.at

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.v
  %.sroa.17.1.a = phi ptr [ %.sroa.17.0.ph.a, %bb.v ], [ %i.cn, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %.sroa.17.4.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  %.sroa.31.1 = phi ptr [ %i.by, %bb.v ], [ %i.cm, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  %.sroa.0103.1 = phi ptr [ %.sroa.0103.0.ph, %bb.v ], [ %i.cj, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %.sroa.0103.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.outer

bb.at:                                            ; preds = %.loopexit151, %.loopexit.split-lp152, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %.sroa.31.2 = phi ptr [ %.sroa.17.0.ph.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.17.0.ph.a, %bb.ae ], [ %.sroa.17.0.ph.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.17.0.ph.a, %.loopexit.split-lp ], [ %.sroa.17.4.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.sroa.17.0.ph.a, %.loopexit ], [ %.pn.a, %.loopexit151 ], [ %.pn.a, %.loopexit.split-lp152 ]
  %.sroa.0103.2 = phi ptr [ %.sroa.0103.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.0103.0.ph, %bb.ae ], [ %.sroa.0103.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0103.0.ph, %.loopexit.split-lp ], [ %.sroa.0103.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.sroa.0103.0.ph, %.loopexit ], [ %.sroa.0103.5, %.loopexit151 ], [ %.sroa.0103.5, %.loopexit.split-lp152 ]
  %.pn49 = phi { ptr, i32 } [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn47130, %bb.ae ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit153, %.loopexit151 ], [ %lpad.loopexit.split-lp154, %.loopexit.split-lp152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bj

.loopexit402:                                     ; preds = %bb.s, %.thread400
  %i.er = phi i8 [ 92, %.thread400 ], [ %.pre, %bb.s ] ; 2 uses
  %i.es = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN6apache6thrift8protocolL12kEscapeCharsB5cxx11E, i8 noundef signext %i.er, i64 noundef 0) #26
  %i.et = icmp eq i64 %i.es, -1
  br i1 %i.et, label %.split241.us, label %.loopexit277

.split241.us:                                     ; preds = %bb.j, %.loopexit402
  %.us-phi244 = phi i8 [ %i.er, %.loopexit402 ], [ %i.ak, %bb.j ]
  %i.eu = call ptr @__cxa_allocate_exception(i64 48) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ev, ptr %8, align 8, !tbaa !8
  store i8 %.us-phi244, ptr %i.ev, align 8, !tbaa !16
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.ew, align 8, !tbaa !17
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.ex, align 1, !tbaa !16
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.au unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.thread

bb.au:                                            ; preds = %.split241.us
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.33)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.eu, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @__cxa_throw(ptr nonnull %i.eu, ptr nonnull @_ZTIN6apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN6apache6thrift10TExceptionD2Ev) #25
          to label %bb.bl unwind label %bb.ay

bb.ax:                                            ; preds = %bb.au
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %.019 = phi i1 [ false, %bb.aw ], [ true, %bb.av ] ; 2 uses
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.ay
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !16
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.ax
  %.pn41 = phi { ptr, i32 } [ %i.ey, %bb.ax ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.ez, %bb.ay ] ; 4 uses
  %.120 = phi i1 [ true, %bb.ax ], [ %.019, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %.019, %bb.ay ] ; 2 uses
  %i.ff = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !16
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  %i.fk = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ev
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.thread: ; preds = %.split241.us
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.ev
  br i1 %i.fo, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.thread
  %i.fp = load i64, ptr %i.ev, align 8, !tbaa !16
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #29
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.fr = load i64, ptr %i.ev, align 8, !tbaa !16
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fs) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.120, label %bb.az, label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.120, label %bb.az, label %bb.bj

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %.pn41.pn.pn133 = phi { ptr, i32 } [ %.pn41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.fm, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.eu) #26
  br label %bb.bj

.loopexit277:                                     ; preds = %bb.p, %.loopexit402
  %i.ft = call ptr @__cxa_allocate_exception(i64 48) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ba unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.ba:                                            ; preds = %.loopexit277
  invoke void @_ZN6apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.ft, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_throw(ptr nonnull %i.ft, ptr nonnull @_ZTIN6apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN6apache6thrift10TExceptionD2Ev) #25
          to label %bb.bl unwind label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread: ; preds = %.loopexit277
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.017 = phi i1 [ false, %bb.bb ], [ true, %bb.ba ] ; 2 uses
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fw = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.bc
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !16
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br i1 %.017, label %bb.bd, label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br i1 %.017, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %.pn145 = phi { ptr, i32 } [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ]
  call void @__cxa_free_exception(ptr %i.ft) #26
  br label %bb.bj

.split232.us.thread:                              ; preds = %bb.p
  %i.gb = call ptr @__cxa_allocate_exception(i64 48) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.be unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.thread

bb.be:                                            ; preds = %.split232.us.thread
  invoke void @_ZN6apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.gb, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.gb, ptr nonnull @_ZTIN6apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN6apache6thrift10TExceptionD2Ev) #25
          to label %bb.bl unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.thread: ; preds = %.split232.us.thread
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0 = phi i1 [ false, %bb.bf ], [ true, %bb.be ] ; 2 uses
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ge = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.bg
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !16
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br i1 %.0, label %bb.bh, label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br i1 %.0, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %.pn51148 = phi { ptr, i32 } [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.thread ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ]
  call void @__cxa_free_exception(ptr %i.gb) #26
  br label %bb.bj

.split232.us:                                     ; preds = %bb.f
  %.not.i.i.i97 = icmp eq ptr %.sroa.31.0.ph, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %.split232.us
  %i.gj = ptrtoint ptr %.sroa.17.0.ph.a to i64
  %i.gk = ptrtoint ptr %.sroa.31.0.ph to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.0.ph, i64 noundef %i.gl) #29
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %.split232.us, %bb.bi
  ret i32 %i.ab

bb.bj:                                            ; preds = %.split, %.split.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.bd, %bb.at
  %.sroa.31.3 = phi ptr [ %.sroa.17.0.ph.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.sroa.17.0.ph.a, %bb.bd ], [ %.sroa.17.0.ph.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.sroa.17.0.ph.a, %bb.bh ], [ %.sroa.17.0.ph.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.sroa.31.2, %bb.at ], [ %.sroa.17.0.ph.a, %bb.az ], [ %.sroa.17.0.ph.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.sroa.17.0.ph.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %.sroa.17.0.ph.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.sroa.17.0.ph.a, %.split ], [ %.sroa.17.0.ph.a, %.split.us ]
  %.sroa.0103.3 = phi ptr [ %.sroa.0103.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.sroa.0103.0.ph, %bb.bd ], [ %.sroa.0103.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.sroa.0103.0.ph, %bb.bh ], [ %.sroa.0103.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.sroa.0103.2, %bb.at ], [ %.sroa.0103.0.ph, %bb.az ], [ %.sroa.0103.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.sroa.0103.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %.sroa.0103.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.sroa.0103.0.ph, %.split ], [ %.sroa.0103.0.ph, %.split.us ] ; 3 uses
  %.pn51.pn = phi { ptr, i32 } [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn145, %bb.bd ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.pn51148, %bb.bh ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn49, %bb.at ], [ %.pn41.pn.pn133, %bb.az ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.pn41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.bl, %.split ], [ %i.bc, %.split.us ]
  %.not.i.i.i98 = icmp eq ptr %.sroa.0103.3, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorItSaItEED2Ev.exit99, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gm = ptrtoint ptr %.sroa.31.3 to i64
  %i.gn = ptrtoint ptr %.sroa.0103.3 to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.3, i64 noundef %i.go) #29
  br label %_ZNSt6vectorItSaItEED2Ev.exit99

_ZNSt6vectorItSaItEED2Ev.exit99:                  ; preds = %bb.bj, %bb.bk
  resume { ptr, i32 } %.pn51.pn

bb.bl:                                            ; preds = %bb.bf, %bb.bb, %bb.aw, %bb.ac
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6apache6thrift10TExceptionE, i64 16), ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !8
  %i.d = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !12
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !14
  %i.i = load i64, ptr %i.a, align 8, !tbaa !12
  store i64 %i.i, ptr %i.c, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN6apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !16
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  br label %_ZN6apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN6apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26
  resume { ptr, i32 } %i.l

_ZN6apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !17
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6apache6thrift8protocol18TProtocolExceptionE, i64 16), ptr %0, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.q, align 8, !tbaa !76
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !8
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !14
  %i.o = load i64, ptr %i.i, align 8, !tbaa !16
  store i64 %i.o, ptr %i.g, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !17
  store ptr %i.i, ptr %i.f, align 8, !tbaa !14
  store i64 0, ptr %i.q, align 8, !tbaa !17
  store i8 0, ptr %i.i, align 8, !tbaa !16
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !8
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !14
  %i.k = load i64, ptr %i.e, align 8, !tbaa !16
  store i64 %i.k, ptr %i.c, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !17
  store ptr %i.e, ptr %i.b, align 8, !tbaa !14
  store i64 0, ptr %i.m, align 8, !tbaa !17
  store i8 0, ptr %i.e, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6apache6thrift8protocol13TJSONProtocol14readJSONBase64ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !17
  store i8 0, ptr %i.a, align 8, !tbaa !16
  %i.c = invoke noundef i32 @_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !14     ; 3 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.f = icmp ugt i64 %i.e, 4294967295
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @__cxa_allocate_exception(i64 48) #26 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
end_hunk_0
