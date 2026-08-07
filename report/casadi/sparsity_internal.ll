inline.NumInlined: 4371
inline.NumDeleted: 628
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZNK6casadi16SparsityInternal3amdEv:bb.a
bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !alias.scope !162
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #27
          to label %bb.dr unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

bb.l:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

bb.m:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544

bb.n:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541

bb.o:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.j, %bb.i
  %.0403 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !84     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.m = load i64, ptr %i.k, align 8, !tbaa !90
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.1404 = phi i1 [ true, %bb.o ], [ %.0403, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0403, %bb.p ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.h, %bb.o ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.p ] ; 2 uses
  %i.o = load ptr, ptr %7, align 8, !tbaa !84     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !90
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539, %bb.n
  %.2405 = phi i1 [ true, %bb.n ], [ %.1404, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539 ], [ %.1404, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.t = load ptr, ptr %8, align 8, !tbaa !84     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541
  %i.w = load i64, ptr %i.u, align 8, !tbaa !90
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542, %bb.m
  %.3406 = phi i1 [ true, %bb.m ], [ %.2405, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542 ], [ %.2405, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541 ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541 ] ; 2 uses
  %i.y = load ptr, ptr %9, align 8, !tbaa !84     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !90
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545, %bb.l
  %.4407 = phi i1 [ true, %bb.l ], [ %.3406, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545 ], [ %.3406, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544 ] ; 2 uses
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.e, %bb.l ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ad = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !90
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548, %bb.k
  %.5408 = phi i1 [ true, %bb.k ], [ %.4407, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548 ], [ %.4407, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547 ] ; 2 uses
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.d, %bb.k ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547 ] ; 4 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !84    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !90
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551
  %i.an = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553.thread: ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553.thread
  %i.au = load i64, ptr %i.as, align 8, !tbaa !90
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !90
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ax) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.5408, label %bb.q, label %_ZNSt6vectorIxSaIxEED2Ev.exit703

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.5408, label %bb.q, label %_ZNSt6vectorIxSaIxEED2Ev.exit703

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554.thread
  %.pn.pn.pn.pn.pn.pn.pn1013.ph = phi { ptr, i32 } [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556.thread ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556
  %.pn.pn.pn.pn.pn.pn.pn1013 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556 ], [ %.pn.pn.pn.pn.pn.pn.pn1013.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit703

bb.r:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !61 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !8  ; 60 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %.idx.i = shl i64 %i.bb, 3                      ; 13 uses
  %i.bd = add i64 %.idx.i, 8                      ; 9 uses
  %i.be = icmp ugt i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %.noexc.i.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27, !noalias !165
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.r
  %.not.i.i.i.i = icmp eq i64 %i.bb, -1
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr null, i64 %i.bd
  br label %_ZNK6casadi16SparsityInternal10get_colindEv.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #28, !noalias !165 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd ; 2 uses
  %i.bi = icmp sgt i64 %i.bb, 0
  br i1 %i.bi, label %bb.s, label %bb.t, !prof !117

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 8 %i.bc, i64 %i.bd, i1 false), !noalias !165
  br label %_ZNK6casadi16SparsityInternal10get_colindEv.exit

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  %i.bj = load i64, ptr %i.bc, align 8, !tbaa !8, !noalias !165
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !8, !noalias !165
  br label %_ZNK6casadi16SparsityInternal10get_colindEv.exit

_ZNK6casadi16SparsityInternal10get_colindEv.exit: ; preds = %.thread.i.i.i, %bb.s, %bb.t
  %.sroa.42.0 = phi ptr [ %i.bf, %.thread.i.i.i ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ] ; 2 uses
  %.sroa.0963.0 = phi ptr [ null, %.thread.i.i.i ], [ %i.bg, %bb.s ], [ %i.bg, %bb.t ] ; 33 uses
  %i.bk = load i64, ptr %i.ba, align 8, !tbaa !8, !noalias !168 ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.az, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 24     ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bk
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !8, !noalias !168 ; 2 uses
  %.idx.i557 = shl nsw i64 %i.bo, 3               ; 6 uses
  %i.bp = icmp ugt i64 %.idx.i557, 9223372036854775800
  br i1 %i.bp, label %.noexc.i.i562, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i558

.noexc.i.i562:                                    ; preds = %_ZNK6casadi16SparsityInternal10get_colindEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.noexc.i.i562
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i558: ; preds = %_ZNK6casadi16SparsityInternal10get_colindEv.exit
  %.not.i.i.i.i559 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i559, label %.thread.i.i.i561, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i560

.thread.i.i.i561:                                 ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i558
  %i.bq = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i557
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i560: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i558
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i557) #28
          to label %.noexc563 unwind label %bb.w  ; 5 uses

.noexc563:                                        ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i560
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx.i557 ; 2 uses
  %i.bt = icmp samesign ugt i64 %.idx.i557, 8
  br i1 %i.bt, label %bb.u, label %bb.v, !prof !117

bb.u:                                             ; preds = %.noexc563
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.br, ptr align 8 %i.bm, i64 %.idx.i557, i1 false), !noalias !168
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

bb.v:                                             ; preds = %.noexc563
  %i.bu = load i64, ptr %i.bm, align 8, !tbaa !8, !noalias !168
  store i64 %i.bu, ptr %i.br, align 8, !tbaa !8, !noalias !168
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

_ZNK6casadi16SparsityInternal7get_rowEv.exit:     ; preds = %.thread.i.i.i561, %bb.u, %bb.v
  %.sroa.39.0 = phi ptr [ %i.bq, %.thread.i.i.i561 ], [ %i.bs, %bb.u ], [ %i.bs, %bb.v ] ; 3 uses
  %.sroa.0930.0 = phi ptr [ null, %.thread.i.i.i561 ], [ %i.br, %bb.u ], [ %i.br, %bb.v ] ; 52 uses
  %i.bv = icmp sgt i64 %i.bb, 0                   ; 5 uses
  br i1 %i.bv, label %.lr.ph1490, label %._crit_edge1491

._crit_edge1491:                                  ; preds = %._crit_edge, %_ZNK6casadi16SparsityInternal7get_rowEv.exit
  %.0413.lcssa = phi i64 [ 0, %_ZNK6casadi16SparsityInternal7get_rowEv.exit ], [ %.1414.lcssa, %._crit_edge ]
  %i.bw = sitofp i64 %i.bb to double
  %i.bx = tail call double @sqrt(double noundef %i.bw) #29
  %i.by = fmul double %i.bx, 1.000000e+01
  %i.bz = fptosi double %i.by to i64
  %.sroa.speculated922 = tail call i64 @llvm.smax.i64(i64 %i.bz, i64 16)
  %i.ca = add nsw i64 %i.bb, -2
  %.sroa.speculated918 = tail call i64 @llvm.smin.i64(i64 %.sroa.speculated922, i64 %i.ca)
  %i.cb = add nsw i64 %i.bb, 1                    ; 22 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i565 = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i565)
  %12 = shl nuw nsw i64 %i.cb, 3                  ; 9 uses
  %13 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #28
          to label %.noexc567 unwind label %bb.aj ; 8 uses

.noexc567:                                        ; preds = %._crit_edge1491
  store ptr %13, ptr %0, align 8, !tbaa !61
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !65
  store i64 0, ptr %13, align 8, !tbaa !8
  %i.ce = getelementptr i8, ptr %13, i64 8        ; 3 uses
  %i.cf = icmp eq i64 %i.bb, 0                    ; 9 uses
  br i1 %i.cf, label %bb.ab, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc567
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ce, i8 0, i64 %.idx.i, i1 false), !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i
  br label %bb.ab

bb.w:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i560, %.noexc.i.i562
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit701

.lr.ph1490:                                       ; preds = %_ZNK6casadi16SparsityInternal7get_rowEv.exit, %._crit_edge
  %.04131489 = phi i64 [ %.1414.lcssa, %._crit_edge ], [ 0, %_ZNK6casadi16SparsityInternal7get_rowEv.exit ] ; 5 uses
  %.04201488 = phi i64 [ %i.ck, %._crit_edge ], [ 0, %_ZNK6casadi16SparsityInternal7get_rowEv.exit ] ; 6 uses
  %.04211487 = phi i64 [ %i.ci, %._crit_edge ], [ 0, %_ZNK6casadi16SparsityInternal7get_rowEv.exit ] ; 4 uses
  %i.ci = add nuw nsw i64 %.04211487, 1           ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !8  ; 5 uses
  %i.cl = icmp slt i64 %.04201488, %i.ck
  br i1 %i.cl, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph1490
  %i.cm = sub i64 %i.ck, %.04201488
  %.neg = add i64 %.04201488, 1
  %xtraiter = and i64 %i.cm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.04201488
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !8  ; 2 uses
  %.not535.prol = icmp eq i64 %i.co, %.04211487
  br i1 %.not535.prol, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.x

bb.x:                                             ; preds = %.lr.ph.prol
  %i.cp = add nsw i64 %.04131489, 1
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.04131489
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !8
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.x, %.lr.ph.prol
  %.2415.prol = phi i64 [ %i.cp, %bb.x ], [ %.04131489, %.lr.ph.prol ] ; 2 uses
  %i.cr = add nsw i64 %.04201488, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.2415.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.2415.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.14141486.unr = phi i64 [ %.04131489, %.lr.ph.preheader ], [ %.2415.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.04221485.unr = phi i64 [ %.04201488, %.lr.ph.preheader ], [ %i.cr, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.cs = icmp eq i64 %i.ck, %.neg
  br i1 %i.cs, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.aa, %.lr.ph1490
  %.1414.lcssa = phi i64 [ %.04131489, %.lr.ph1490 ], [ %.2415.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2415.1, %bb.aa ] ; 3 uses
  store i64 %.1414.lcssa, ptr %i.cj, align 8, !tbaa !8
  %exitcond1633.not = icmp eq i64 %i.ci, %i.bb
  br i1 %exitcond1633.not, label %._crit_edge1491, label %.lr.ph1490, !llvm.loop !171

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.aa
  %.14141486 = phi i64 [ %.2415.1, %bb.aa ], [ %.14141486.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.04221485 = phi i64 [ %i.dc, %bb.aa ], [ %.04221485.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.04221485
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !8  ; 2 uses
  %.not535 = icmp eq i64 %i.cu, %.04211487
  br i1 %.not535, label %.lr.ph.1, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %i.cv = add nsw i64 %.14141486, 1
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.14141486
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.y
  %.2415 = phi i64 [ %i.cv, %bb.y ], [ %.14141486, %.lr.ph ] ; 3 uses
  %i.cx = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.04221485
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !8  ; 2 uses
  %.not535.1 = icmp eq i64 %i.cz, %.04211487
  br i1 %.not535.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.1
  %i.da = add nsw i64 %.2415, 1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.2415
  store i64 %i.cz, ptr %i.db, align 8, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.1
  %.2415.1 = phi i64 [ %i.da, %bb.z ], [ %.2415, %.lr.ph.1 ] ; 2 uses
  %i.dc = add nsw i64 %.04221485, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dc, %i.ck
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !172

bb.ab:                                            ; preds = %.noexc567, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.cg, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ce, %.noexc567 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.ph, ptr %i.dd, align 8, !tbaa !66
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #28
          to label %.noexc575 unwind label %bb.ak ; 18 uses

.noexc575:                                        ; preds = %bb.ab
  store i64 0, ptr %i.de, align 8, !tbaa !8
  br i1 %i.cf, label %bb.ac, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i570

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i570: ; preds = %.noexc575
  %i.df = getelementptr i8, ptr %i.de, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.df, i8 0, i64 %.idx.i, i1 false), !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc575, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i570
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #28
          to label %.noexc584 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit695.thread ; 21 uses

.noexc584:                                        ; preds = %bb.ac
  store i64 0, ptr %i.dg, align 8, !tbaa !8
  br i1 %i.cf, label %bb.ad, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i579

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i579: ; preds = %.noexc584
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dh, i8 0, i64 %.idx.i, i1 false), !tbaa !8
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc584, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i579
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #28
          to label %.noexc593 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit693.thread ; 20 uses

.noexc593:                                        ; preds = %bb.ad
  store i64 0, ptr %i.di, align 8, !tbaa !8
  br i1 %i.cf, label %bb.ae, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i588

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i588: ; preds = %.noexc593
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dj, i8 0, i64 %.idx.i, i1 false), !tbaa !8
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc593, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i588
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #28
          to label %.noexc602 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit691.thread ; 17 uses

.noexc602:                                        ; preds = %bb.ae
  store i64 0, ptr %i.dk, align 8, !tbaa !8
  br i1 %i.cf, label %bb.af, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i597

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i597: ; preds = %.noexc602
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dl, i8 0, i64 %.idx.i, i1 false), !tbaa !8
  %i.dm = icmp eq i64 %.idx.i, -8
  %i.dn = select i1 %i.dm, ptr null, ptr %i.dk
  br label %bb.af

bb.af:                                            ; preds = %.noexc602, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i597
  %.0.i.i.i.i.i599.ph = phi ptr [ %i.dn, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i597 ], [ %i.dk, %.noexc602 ]
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #28
          to label %.noexc611 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit689.thread ; 16 uses

.noexc611:                                        ; preds = %bb.af
  store i64 0, ptr %i.do, align 8, !tbaa !8
  br i1 %i.cf, label %bb.ag, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i606

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i606: ; preds = %.noexc611
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dp, i8 0, i64 %.idx.i, i1 false), !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc611, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i606
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #28
          to label %.noexc620 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit687.thread ; 13 uses

.noexc620:                                        ; preds = %bb.ag
  store i64 0, ptr %i.dq, align 8, !tbaa !8
  br i1 %i.cf, label %bb.ah, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i615

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i615: ; preds = %.noexc620
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dr, i8 0, i64 %.idx.i, i1 false), !tbaa !8
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc620, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i615
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #28
          to label %.noexc629 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit685.thread ; 24 uses

.noexc629:                                        ; preds = %bb.ah
  store i64 0, ptr %i.ds, align 8, !tbaa !8
  br i1 %i.cf, label %bb.ai, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i624

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i624: ; preds = %.noexc629
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dt, i8 0, i64 %.idx.i, i1 false), !tbaa !8
  %i.du = icmp eq i64 %.idx.i, -8
  %i.dv = select i1 %i.du, ptr null, ptr %i.ds
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc629, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i624
  %.0.i.i.i.i.i626.ph = phi ptr [ %i.dv, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i624 ], [ %i.ds, %.noexc629 ] ; 3 uses
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #28
          to label %.noexc638 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit.thread ; 7 uses

.noexc638:                                        ; preds = %bb.ai
  store i64 0, ptr %i.dw, align 8, !tbaa !8
  br i1 %i.cf, label %.lr.ph1499, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639:            ; preds = %.noexc638
  %14 = getelementptr i8, ptr %i.dw, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %.idx.i, i1 false), !tbaa !8
  br i1 %i.bv, label %.lr.ph1494.preheader, label %.lr.ph1494.preheader.a

.lr.ph1494.preheader.a:                           ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.bb
  store i64 0, ptr %15, align 8, !tbaa !8
  %16 = ptrtoint ptr %.sroa.39.0 to i64
  %17 = ptrtoint ptr %.sroa.0930.0 to i64
  %18 = sub i64 %16, %17                          ; 2 uses
  %19 = ashr exact i64 %18, 3
  br label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread

.lr.ph1494.preheader:                             ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639
  %.pre = load i64, ptr %.sroa.0963.0, align 8, !tbaa !8 ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph1494.preheader2044, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1494.preheader
  %n.vec = and i64 %i.bb, 9223372036854775804     ; 3 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load2004, %vector.body ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %index ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %wide.load = load <2 x i64>, ptr %i.dy, align 8, !tbaa !8 ; 3 uses
  %wide.load2004 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !8 ; 4 uses
  %i.ea = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.eb = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load2004, <2 x i32> <i32 1, i32 2>
  %i.ec = sub nsw <2 x i64> %wide.load, %i.ea
  %i.ed = sub nsw <2 x i64> %wide.load2004, %i.eb
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <2 x i64> %i.ec, ptr %i.ee, align 8, !tbaa !8
  store <2 x i64> %i.ed, ptr %i.ef, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load2004, i64 1
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %.lr.ph1499, label %.lr.ph1494.preheader2044

.lr.ph1494.preheader2044:                         ; preds = %.lr.ph1494.preheader, %middle.block
  %.ph = phi i64 [ %.pre, %.lr.ph1494.preheader ], [ %vector.recur.extract, %middle.block ]
  %.04381493.ph = phi i64 [ 0, %.lr.ph1494.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph1494

.lr.ph1499:                                       ; preds = %.lr.ph1494, %middle.block, %.noexc638
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.bb
  store i64 0, ptr %i.eh, align 8, !tbaa !8
  %i.ei = ptrtoint ptr %.sroa.39.0 to i64
  %i.ej = ptrtoint ptr %.sroa.0930.0 to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 4 uses
  %i.el = ashr exact i64 %i.ek, 3                 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dk, i8 -1, i64 %i.bd, i1 false), !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.di, i8 -1, i64 %i.bd, i1 false), !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dw, i8 -1, i64 %i.bd, i1 false), !tbaa !8
  %min.iters.check2006 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check2006, label %scalar.ph2005.preheader, label %vector.ph2007

vector.ph2007:                                    ; preds = %.lr.ph1499
  %n.vec2008 = and i64 %i.cb, -4                  ; 3 uses
  br label %vector.body2009

vector.body2009:                                  ; preds = %vector.body2009, %vector.ph2007
  %index2010 = phi i64 [ 0, %vector.ph2007 ], [ %index.next2013, %vector.body2009 ] ; 7 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %index2010 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.em, align 8, !tbaa !8
  store <2 x i64> splat (i64 -1), ptr %i.en, align 8, !tbaa !8
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %index2010 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <2 x i64> splat (i64 1), ptr %i.eo, align 8, !tbaa !8
  store <2 x i64> splat (i64 1), ptr %i.ep, align 8, !tbaa !8
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index2010 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x i64> splat (i64 1), ptr %i.eq, align 8, !tbaa !8
  store <2 x i64> splat (i64 1), ptr %i.er, align 8, !tbaa !8
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index2010 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <2 x i64> zeroinitializer, ptr %i.es, align 8, !tbaa !8
  store <2 x i64> zeroinitializer, ptr %i.et, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %index2010 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load2011 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !8
  %wide.load2012 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !8
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %index2010 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <2 x i64> %wide.load2011, ptr %i.ew, align 8, !tbaa !8
  store <2 x i64> %wide.load2012, ptr %i.ex, align 8, !tbaa !8
  %index.next2013 = add nuw i64 %index2010, 4     ; 2 uses
  %i.ey = icmp eq i64 %index.next2013, %n.vec2008
  br i1 %i.ey, label %middle.block2014, label %vector.body2009, !llvm.loop !174

middle.block2014:                                 ; preds = %vector.body2009
  %cmp.n2015 = icmp eq i64 %i.cb, %n.vec2008
  br i1 %cmp.n2015, label %._crit_edge1500, label %scalar.ph2005.preheader

scalar.ph2005.preheader:                          ; preds = %.lr.ph1499, %middle.block2014
  %.04401497.ph = phi i64 [ 0, %.lr.ph1499 ], [ %n.vec2008, %middle.block2014 ]
  br label %scalar.ph2005

bb.aj:                                            ; preds = %._crit_edge1491
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit699

bb.ak:                                            ; preds = %bb.ab
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit697

_ZNSt6vectorIxSaIxEED2Ev.exit695.thread:          ; preds = %bb.ac
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

_ZNSt6vectorIxSaIxEED2Ev.exit693.thread:          ; preds = %bb.ad
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit695

_ZNSt6vectorIxSaIxEED2Ev.exit691.thread:          ; preds = %bb.ae
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit693

_ZNSt6vectorIxSaIxEED2Ev.exit689.thread:          ; preds = %bb.af
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit691

_ZNSt6vectorIxSaIxEED2Ev.exit687.thread:          ; preds = %bb.ag
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit689

_ZNSt6vectorIxSaIxEED2Ev.exit685.thread:          ; preds = %bb.ah
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit687

_ZNSt6vectorIxSaIxEED2Ev.exit.thread:             ; preds = %bb.ai
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit685

.lr.ph1494:                                       ; preds = %.lr.ph1494.preheader2044, %.lr.ph1494
  %i.fi = phi i64 [ %i.fl, %.lr.ph1494 ], [ %.ph, %.lr.ph1494.preheader2044 ]
  %.04381493 = phi i64 [ %i.fj, %.lr.ph1494 ], [ %.04381493.ph, %.lr.ph1494.preheader2044 ] ; 2 uses
  %i.fj = add nuw nsw i64 %.04381493, 1           ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !8  ; 2 uses
  %i.fm = sub nsw i64 %i.fl, %i.fi
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.04381493
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !8
  %exitcond1634.not = icmp eq i64 %i.fj, %i.bb
  br i1 %exitcond1634.not, label %.lr.ph1499, label %.lr.ph1494, !llvm.loop !175

._crit_edge1500:                                  ; preds = %scalar.ph2005, %middle.block2014
  %i.fo = icmp eq i64 %i.bb, 0
  br i1 %i.fo, label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge1500
  %xtraiter2045 = and i64 %i.bb, 1
  %i.fp = icmp eq i64 %i.bb, 1
  br i1 %i.fp, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.bb, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.an, %.lr.ph.i.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.fv, %bb.an ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.an ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i626.ph, i64 %.013.i ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !8
  %.not.i = icmp eq i64 %i.fr, 0
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i
  store i64 1, ptr %i.fq, align 8, !tbaa !8
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.al, %.lr.ph.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i626.ph, i64 %.013.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !8
  %.not.i.1 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.1, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.1
  store i64 1, ptr %i.ft, align 8, !tbaa !8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i.1
  %i.fv = add nuw nsw i64 %.013.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !176

_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread: ; preds = %._crit_edge1500, %.lr.ph1494.preheader.a
  %.ph1918 = phi i64 [ %i.ek, %._crit_edge1500 ], [ %18, %.lr.ph1494.preheader.a ]
  %.ph1919 = phi i64 [ %i.el, %._crit_edge1500 ], [ %19, %.lr.ph1494.preheader.a ]
  %.not149618091897.ph = phi i1 [ false, %._crit_edge1500 ], [ true, %.lr.ph1494.preheader.a ]
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.bb
  store i64 -2, ptr %i.fw, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.bb
  store i64 -1, ptr %i.fx, align 8, !tbaa !8
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.bb
  store i64 0, ptr %i.fy, align 8, !tbaa !8
  br label %.preheader1484

_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa: ; preds = %bb.an
  %lcmp.mod2046.not = icmp eq i64 %xtraiter2045, 0
  br i1 %lcmp.mod2046.not, label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.fv, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa ]
  %lcmp.mod2047 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod2047)
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i626.ph, i64 %.013.i.epil.init ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !8
  %.not.i.epil = icmp eq i64 %i.ga, 0
  br i1 %.not.i.epil, label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.epil.preheader
  store i64 1, ptr %i.fz, align 8, !tbaa !8
  br label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit

_ZN6casadi16SparsityInternal6wclearExxPxx.exit:   ; preds = %.lr.ph.i.epil.preheader, %bb.ao, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.bb
  store i64 -2, ptr %i.gb, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.bb
  store i64 -1, ptr %i.gc, align 8, !tbaa !8
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.bb
  store i64 0, ptr %i.gd, align 8, !tbaa !8
  br i1 %i.bv, label %.lr.ph1503, label %.preheader1484

.lr.ph1503:                                       ; preds = %_ZN6casadi16SparsityInternal6wclearExxPxx.exit
  %i.ge = sub nuw i64 -2, %i.bb
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.bb ; 2 uses
  br label %bb.ap

scalar.ph2005:                                    ; preds = %scalar.ph2005.preheader, %scalar.ph2005
  %.04401497 = phi i64 [ %i.gn, %scalar.ph2005 ], [ %.04401497.ph, %scalar.ph2005.preheader ] ; 8 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %.04401497
  store i64 -1, ptr %i.gg, align 8, !tbaa !8
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.04401497
  store i64 1, ptr %i.gh, align 8, !tbaa !8
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.04401497
  store i64 1, ptr %i.gi, align 8, !tbaa !8
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.04401497
  store i64 0, ptr %i.gj, align 8, !tbaa !8
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.04401497
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !8
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.04401497
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !8
  %i.gn = add nuw i64 %.04401497, 1
  %exitcond1635.not = icmp eq i64 %.04401497, %i.bb
  br i1 %exitcond1635.not, label %._crit_edge1500, label %scalar.ph2005, !llvm.loop !177

.preheader1484:                                   ; preds = %bb.aw, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit
  %.not1496180918971955 = phi i1 [ false, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit ], [ %.not149618091897.ph, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread ], [ false, %bb.aw ] ; 2 uses
  %20 = phi i64 [ %i.el, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit ], [ %.ph1919, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread ], [ %i.el, %bb.aw ]
  %21 = phi i64 [ %i.ek, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit ], [ %.ph1918, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread ], [ %i.ek, %bb.aw ]
  %.0428.lcssa = phi i64 [ 0, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit ], [ 0, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread ], [ %.1429, %bb.aw ] ; 2 uses
  %i.go = icmp slt i64 %.0428.lcssa, %i.bb
  br i1 %i.go, label %.preheader1483.preheader, label %.preheader1475

.preheader1483.preheader:                         ; preds = %.preheader1484
  %xtraiter2048 = and i64 %i.bb, 1
  %i.gp = icmp eq i64 %i.bb, 1
  %unroll_iter2051 = and i64 %i.bb, 9223372036854775806
  %lcmp.mod2049.not = icmp eq i64 %xtraiter2048, 0
  %lcmp.mod2050 = trunc i64 %i.bb to i1
  br label %.preheader1483

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.dc
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %.idx) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit685

bb.ap:                                            ; preds = %.lr.ph1503, %bb.aw
  %.04281502 = phi i64 [ 0, %.lr.ph1503 ], [ %.1429, %bb.aw ] ; 3 uses
  %.04451501 = phi i64 [ 0, %.lr.ph1503 ], [ %i.hk, %bb.aw ] ; 11 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.04451501
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !8  ; 3 uses
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.04451501
  store i64 -2, ptr %i.gu, align 8, !tbaa !8
  %i.gv = add nsw i64 %.04281502, 1
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.04451501
  store i64 -1, ptr %i.gw, align 8, !tbaa !8
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.04451501
  store i64 0, ptr %i.gx, align 8, !tbaa !8
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ap
  %i.gy = icmp sgt i64 %i.gs, %.sroa.speculated918
  br i1 %i.gy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.04451501
  store i64 0, ptr %i.gz, align 8, !tbaa !8
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.04451501
  store i64 -1, ptr %i.ha, align 8, !tbaa !8
  %i.hb = add nsw i64 %.04281502, 1
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.04451501
  store i64 %i.ge, ptr %i.hc, align 8, !tbaa !8
  %i.hd = load i64, ptr %i.gf, align 8, !tbaa !8
  %i.he = add nsw i64 %i.hd, 1
  store i64 %i.he, ptr %i.gf, align 8, !tbaa !8
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.gs ; 3 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !8  ; 2 uses
  %.not534 = icmp eq i64 %i.hg, -1
  br i1 %.not534, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.hg
  store i64 %.04451501, ptr %i.hh, align 8, !tbaa !8
  %.pre1653 = load i64, ptr %i.hf, align 8, !tbaa !8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hi = phi i64 [ %.pre1653, %bb.au ], [ -1, %bb.at ]
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.04451501
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !8
  store i64 %.04451501, ptr %i.hf, align 8, !tbaa !8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aq, %bb.av, %bb.as
  %.1429 = phi i64 [ %i.gv, %bb.aq ], [ %i.hb, %bb.as ], [ %.04281502, %bb.av ] ; 2 uses
  %i.hk = add nuw nsw i64 %.04451501, 1           ; 2 uses
  %exitcond1636.not = icmp eq i64 %i.hk, %i.bb
  br i1 %exitcond1636.not, label %.preheader1484, label %bb.ap, !llvm.loop !178

.preheader1483:                                   ; preds = %.preheader1483.preheader, %bb.cu
  %.34161617 = phi i64 [ %spec.select538, %bb.cu ], [ %.0413.lcssa, %.preheader1483.preheader ] ; 4 uses
  %.24301616 = phi i64 [ %.3431.lcssa195219631976, %bb.cu ], [ %.0428.lcssa, %.preheader1483.preheader ]
  %.04411615 = phi i64 [ %.1442.lcssa19651974, %bb.cu ], [ 2, %.preheader1483.preheader ] ; 5 uses
  %.010061614 = phi i64 [ %.sroa.speculated711195319621978, %bb.cu ], [ 0, %.preheader1483.preheader ] ; 2 uses
  %.010071613 = phi i64 [ %.21009.lcssa1980, %bb.cu ], [ 0, %.preheader1483.preheader ] ; 3 uses
  %i.hl = icmp slt i64 %.010071613, %i.bb
  br i1 %i.hl, label %.lr.ph1506, label %.critedge

.preheader1475:                                   ; preds = %bb.cu, %.preheader1484
  br i1 %i.bv, label %.lr.ph1619.preheader, label %.preheader1474

.lr.ph1619.preheader:                             ; preds = %.preheader1475
  %min.iters.check2031 = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check2031, label %.lr.ph1619.preheader2042, label %vector.ph2032

vector.ph2032:                                    ; preds = %.lr.ph1619.preheader
  %n.vec2033 = and i64 %i.bb, 9223372036854775804 ; 3 uses
  br label %vector.body2034

vector.body2034:                                  ; preds = %vector.body2034, %vector.ph2032
  %index2035 = phi i64 [ 0, %vector.ph2032 ], [ %index.next2038, %vector.body2034 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %index2035 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %wide.load2036 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !8
  %wide.load2037 = load <2 x i64>, ptr %i.hn, align 8, !tbaa !8
  %i.ho = sub <2 x i64> splat (i64 -2), %wide.load2036
  %i.hp = sub <2 x i64> splat (i64 -2), %wide.load2037
  store <2 x i64> %i.ho, ptr %i.hm, align 8, !tbaa !8
  store <2 x i64> %i.hp, ptr %i.hn, align 8, !tbaa !8
  %index.next2038 = add nuw i64 %index2035, 4     ; 2 uses
  %i.hq = icmp eq i64 %index.next2038, %n.vec2033
  br i1 %i.hq, label %middle.block2039, label %vector.body2034, !llvm.loop !179

middle.block2039:                                 ; preds = %vector.body2034
  %cmp.n2040 = icmp eq i64 %i.bb, %n.vec2033
  br i1 %cmp.n2040, label %.preheader1474, label %.lr.ph1619.preheader2042

.lr.ph1619.preheader2042:                         ; preds = %.lr.ph1619.preheader, %middle.block2039
  %.03751618.ph = phi i64 [ 0, %.lr.ph1619.preheader ], [ %n.vec2033, %middle.block2039 ]
  br label %.lr.ph1622.preheader.a

.lr.ph1506:                                       ; preds = %.preheader1483, %bb.ax
  %.110081505 = phi i64 [ %i.hu, %bb.ax ], [ %.010071613, %.preheader1483 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.110081505
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !8  ; 2 uses
  %i.ht = icmp eq i64 %i.hs, -1
  br i1 %i.ht, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %.lr.ph1506
  %i.hu = add i64 %.110081505, 1                  ; 2 uses
  %exitcond1637.not = icmp eq i64 %i.hu, %i.bb
  br i1 %exitcond1637.not, label %.critedge, label %.lr.ph1506, !llvm.loop !180

.critedge:                                        ; preds = %.lr.ph1506, %bb.ax, %.preheader1483
  %.11008.lcssa = phi i64 [ %.010071613, %.preheader1483 ], [ %i.bb, %bb.ax ], [ %.110081505, %.lr.ph1506 ] ; 4 uses
  %.1447 = phi i64 [ -1, %.preheader1483 ], [ -1, %bb.ax ], [ %i.hs, %.lr.ph1506 ] ; 15 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.1447 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !8  ; 2 uses
  %.not513 = icmp eq i64 %i.hw, -1
  br i1 %.not513, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.critedge
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.hw
  store i64 -1, ptr %i.hx, align 8, !tbaa !8
  %.pre1654 = load i64, ptr %i.hv, align 8, !tbaa !8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.critedge
  %i.hy = phi i64 [ %.pre1654, %bb.ay ], [ -1, %.critedge ]
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.11008.lcssa
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !8
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.1447 ; 3 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !8  ; 6 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.1447 ; 4 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !8  ; 4 uses
  %i.ie = add nsw i64 %i.id, %.24301616           ; 2 uses
  %i.if = icmp slt i64 %i.ib, 1
  %i.ig = add nsw i64 %.11008.lcssa, %.34161617
  %.not514 = icmp slt i64 %i.ig, %20
  %or.cond = select i1 %i.if, i1 true, i1 %.not514
  br i1 %or.cond, label %.loopexit1481, label %.preheader1482

.preheader1482:                                   ; preds = %bb.az
  br i1 %i.bv, label %.lr.ph1513.preheader, label %.preheader1480

.lr.ph1513.preheader:                             ; preds = %.preheader1482
  br i1 %i.gp, label %.lr.ph1513.epil.preheader, label %.lr.ph1513

.preheader1480.loopexit.unr-lcssa:                ; preds = %bb.bd
  br i1 %lcmp.mod2049.not, label %.preheader1480, label %.lr.ph1513.epil.preheader

.lr.ph1513.epil.preheader:                        ; preds = %.preheader1480.loopexit.unr-lcssa, %.lr.ph1513.preheader
  %.04511512.epil.init = phi i64 [ 0, %.lr.ph1513.preheader ], [ %i.jb, %.preheader1480.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod2050)
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.04511512.epil.init ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !8  ; 2 uses
  %i.ij = icmp sgt i64 %i.ii, -1
  br i1 %i.ij, label %bb.ba, label %.preheader1480

bb.ba:                                            ; preds = %.lr.ph1513.epil.preheader
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %i.ii ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !8
  store i64 %i.il, ptr %i.ih, align 8, !tbaa !8
  %i.im = sub nuw nsw i64 -2, %.04511512.epil.init
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !8
  br label %.preheader1480

.preheader1480:                                   ; preds = %.preheader1480.loopexit.unr-lcssa, %bb.ba, %.lr.ph1513.epil.preheader, %.preheader1482
  %i.in = icmp sgt i64 %.34161617, 0
  br i1 %i.in, label %.lr.ph1524, label %.loopexit1481

.lr.ph1513:                                       ; preds = %.lr.ph1513.preheader, %bb.bd
  %.04511512 = phi i64 [ %i.jb, %bb.bd ], [ 0, %.lr.ph1513.preheader ] ; 5 uses
  %niter2052 = phi i64 [ %niter2052.next.1, %bb.bd ], [ 0, %.lr.ph1513.preheader ]
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.04511512 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !8  ; 2 uses
  %i.iq = icmp sgt i64 %i.ip, -1
  br i1 %i.iq, label %bb.bb, label %.lr.ph1513.1

bb.bb:                                            ; preds = %.lr.ph1513
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %i.ip ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !8
  store i64 %i.is, ptr %i.io, align 8, !tbaa !8
  %i.it = sub nuw nsw i64 -2, %.04511512
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !8
  br label %.lr.ph1513.1

.lr.ph1513.1:                                     ; preds = %bb.bb, %.lr.ph1513
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.04511512
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !8  ; 2 uses
  %i.ix = icmp sgt i64 %i.iw, -1
  br i1 %i.ix, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph1513.1
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %i.iw ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !8
  store i64 %i.iz, ptr %i.iv, align 8, !tbaa !8
  %i.ja = sub nuw nsw i64 -3, %.04511512
  store i64 %i.ja, ptr %i.iy, align 8, !tbaa !8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph1513.1
  %i.jb = add nuw nsw i64 %.04511512, 2           ; 2 uses
  %niter2052.next.1 = add nuw nsw i64 %niter2052, 2 ; 2 uses
  %niter2052.ncmp.1 = icmp eq i64 %niter2052.next.1, %unroll_iter2051
  br i1 %niter2052.ncmp.1, label %.preheader1480.loopexit.unr-lcssa, label %.lr.ph1513, !llvm.loop !181

.lr.ph1524:                                       ; preds = %.preheader1480, %.loopexit1477
  %.04611523 = phi i64 [ %.2463, %.loopexit1477 ], [ 0, %.preheader1480 ] ; 8 uses
  %.04741522 = phi i64 [ %.2476, %.loopexit1477 ], [ 0, %.preheader1480 ] ; 3 uses
  %i.jc = add nsw i64 %.04741522, 1               ; 6 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.04741522
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !8
  %i.jf = sub i64 -2, %i.je                       ; 3 uses
  %i.jg = icmp sgt i64 %i.jf, -1
  br i1 %i.jg, label %bb.be, label %.loopexit1477

bb.be:                                            ; preds = %.lr.ph1524
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.jf ; 2 uses
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !8
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.04611523
  store i64 %i.ji, ptr %i.jj, align 8, !tbaa !8
  store i64 %.04611523, ptr %i.jh, align 8, !tbaa !8
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.jf
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !8  ; 6 uses
  %.14621514 = add nsw i64 %.04611523, 1          ; 5 uses
  %i.jm = icmp sgt i64 %i.jl, 1
  br i1 %i.jm, label %.lr.ph1519.preheader, label %.loopexit1477

.lr.ph1519.preheader:                             ; preds = %bb.be
  %i.jn = add i64 %.04611523, %i.jl               ; 4 uses
  %i.jo = add nsw i64 %i.jl, -1                   ; 2 uses
  %min.iters.check2018 = icmp ult i64 %i.jl, 5
  br i1 %min.iters.check2018, label %.lr.ph1519.preheader2043, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1519.preheader
  %i.jp = sub i64 %.04611523, %.04741522
  %i.jq = shl i64 %i.jp, 3
  %i.jr = add i64 %i.jq, -1
  %diff.check = icmp ult i64 %i.jr, 31
  br i1 %diff.check, label %.lr.ph1519.preheader2043, label %vector.ph2019

vector.ph2019:                                    ; preds = %vector.memcheck
  %n.vec2020 = and i64 %i.jo, -4                  ; 4 uses
  %i.js = add i64 %.14621514, %n.vec2020
  %i.jt = add i64 %i.jc, %n.vec2020               ; 2 uses
  %i.ju = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %i.jc
  %i.jv = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.14621514
  br label %vector.body2021

vector.body2021:                                  ; preds = %vector.body2021, %vector.ph2019
  %index2022 = phi i64 [ 0, %vector.ph2019 ], [ %index.next2025, %vector.body2021 ] ; 3 uses
  %i.jw = getelementptr [8 x i8], ptr %i.ju, i64 %index2022 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %wide.load2023 = load <2 x i64>, ptr %i.jw, align 8, !tbaa !8
  %wide.load2024 = load <2 x i64>, ptr %i.jx, align 8, !tbaa !8
  %i.jy = getelementptr [8 x i8], ptr %i.jv, i64 %index2022 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store <2 x i64> %wide.load2023, ptr %i.jy, align 8, !tbaa !8
  store <2 x i64> %wide.load2024, ptr %i.jz, align 8, !tbaa !8
  %index.next2025 = add nuw i64 %index2022, 4     ; 2 uses
  %i.ka = icmp eq i64 %index.next2025, %n.vec2020
  br i1 %i.ka, label %middle.block2026, label %vector.body2021, !llvm.loop !182

middle.block2026:                                 ; preds = %vector.body2021
  %cmp.n2027 = icmp eq i64 %i.jo, %n.vec2020
  br i1 %cmp.n2027, label %.loopexit1477, label %.lr.ph1519.preheader2043

.lr.ph1519.preheader2043:                         ; preds = %vector.memcheck, %.lr.ph1519.preheader, %middle.block2026
  %.14621517.ph = phi i64 [ %.14621514, %vector.memcheck ], [ %.14621514, %.lr.ph1519.preheader ], [ %i.js, %middle.block2026 ] ; 4 uses
  %.14751515.ph = phi i64 [ %i.jc, %vector.memcheck ], [ %i.jc, %.lr.ph1519.preheader ], [ %i.jt, %middle.block2026 ] ; 2 uses
  %i.kb = add i64 %.04611523, %i.jl
  %i.kc = sub i64 %i.kb, %.14621517.ph
  %i.kd = add i64 %.04611523, -1
  %i.ke = add i64 %i.kd, %i.jl
  %i.kf = sub i64 %i.ke, %.14621517.ph
  %xtraiter2053 = and i64 %i.kc, 3                ; 2 uses
  %lcmp.mod2054.not = icmp eq i64 %xtraiter2053, 0
  br i1 %lcmp.mod2054.not, label %.lr.ph1519.prol.loopexit, label %.lr.ph1519.prol

.lr.ph1519.prol:                                  ; preds = %.lr.ph1519.preheader2043, %.lr.ph1519.prol
  %.14621517.prol = phi i64 [ %.1462.prol, %.lr.ph1519.prol ], [ %.14621517.ph, %.lr.ph1519.preheader2043 ] ; 2 uses
  %.14751515.prol = phi i64 [ %i.kg, %.lr.ph1519.prol ], [ %.14751515.ph, %.lr.ph1519.preheader2043 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1519.prol ], [ 0, %.lr.ph1519.preheader2043 ]
  %i.kg = add nsw i64 %.14751515.prol, 1          ; 3 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.14751515.prol
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !8
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.14621517.prol
  store i64 %i.ki, ptr %i.kj, align 8, !tbaa !8
  %.1462.prol = add i64 %.14621517.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2053
  br i1 %prol.iter.cmp.not, label %.lr.ph1519.prol.loopexit, label %.lr.ph1519.prol, !llvm.loop !183

.lr.ph1519.prol.loopexit:                         ; preds = %.lr.ph1519.prol, %.lr.ph1519.preheader2043
  %.lcssa.unr = phi i64 [ poison, %.lr.ph1519.preheader2043 ], [ %i.kg, %.lr.ph1519.prol ]
  %.14621517.unr = phi i64 [ %.14621517.ph, %.lr.ph1519.preheader2043 ], [ %.1462.prol, %.lr.ph1519.prol ]
  %.14751515.unr = phi i64 [ %.14751515.ph, %.lr.ph1519.preheader2043 ], [ %i.kg, %.lr.ph1519.prol ]
  %i.kk = icmp ult i64 %i.kf, 3
  br i1 %i.kk, label %.loopexit1477, label %.lr.ph1519

.lr.ph1519:                                       ; preds = %.lr.ph1519.prol.loopexit, %.lr.ph1519
  %.14621517 = phi i64 [ %.1462.3, %.lr.ph1519 ], [ %.14621517.unr, %.lr.ph1519.prol.loopexit ] ; 5 uses
  %.14751515 = phi i64 [ %i.ky, %.lr.ph1519 ], [ %.14751515.unr, %.lr.ph1519.prol.loopexit ] ; 5 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.14751515
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !8
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.14621517
  store i64 %i.km, ptr %i.kn, align 8, !tbaa !8
  %i.ko = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.14751515
  %i.kp = getelementptr i8, ptr %i.ko, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !8
  %i.kr = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.14621517
  %i.ks = getelementptr i8, ptr %i.kr, i64 8
  store i64 %i.kq, ptr %i.ks, align 8, !tbaa !8
  %i.kt = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.14751515
  %i.ku = getelementptr i8, ptr %i.kt, i64 16
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !8
  %i.kw = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.14621517
  %i.kx = getelementptr i8, ptr %i.kw, i64 16
  store i64 %i.kv, ptr %i.kx, align 8, !tbaa !8
  %i.ky = add nsw i64 %.14751515, 4               ; 2 uses
  %i.kz = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.14751515
  %i.la = getelementptr i8, ptr %i.kz, i64 24
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !8
  %i.lc = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.14621517
  %i.ld = getelementptr i8, ptr %i.lc, i64 24
  store i64 %i.lb, ptr %i.ld, align 8, !tbaa !8
  %.1462.3 = add i64 %.14621517, 4                ; 2 uses
  %exitcond1642.not.3 = icmp eq i64 %.1462.3, %i.jn
  br i1 %exitcond1642.not.3, label %.loopexit1477, label %.lr.ph1519, !llvm.loop !184

.loopexit1477:                                    ; preds = %.lr.ph1519.prol.loopexit, %.lr.ph1519, %middle.block2026, %bb.be, %.lr.ph1524
  %.2476 = phi i64 [ %i.jc, %.lr.ph1524 ], [ %i.jc, %bb.be ], [ %i.jt, %middle.block2026 ], [ %.lcssa.unr, %.lr.ph1519.prol.loopexit ], [ %i.ky, %.lr.ph1519 ] ; 2 uses
  %.2463 = phi i64 [ %.04611523, %.lr.ph1524 ], [ %.14621514, %bb.be ], [ %i.jn, %middle.block2026 ], [ %i.jn, %.lr.ph1519 ], [ %i.jn, %.lr.ph1519.prol.loopexit ] ; 2 uses
  %i.le = icmp slt i64 %.2476, %.34161617
  br i1 %i.le, label %.lr.ph1524, label %.loopexit1481, !llvm.loop !185

.loopexit1481:                                    ; preds = %.loopexit1477, %.preheader1480, %bb.az
end_hunk_0
begin_hunk_1_@_ZNK6casadi16SparsityInternal3amdEv:bb.a
  %.5469.in1580.prol = phi i64 [ %.5469.prol, %.lr.ph1582.prol ], [ %i.qv, %.lr.ph1582.preheader ]
  %prol.iter2057 = phi i64 [ %prol.iter2057.next, %.lr.ph1582.prol ], [ 0, %.lr.ph1582.preheader ]
  %.5469.prol = add nsw i64 %.5469.in1580.prol, 1 ; 3 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.5469.prol
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !8
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.rb
  store i64 %.24431595, ptr %i.rc, align 8, !tbaa !8
  %prol.iter2057.next = add i64 %prol.iter2057, 1 ; 2 uses
  %prol.iter2057.cmp.not = icmp eq i64 %prol.iter2057.next, %xtraiter2055
  br i1 %prol.iter2057.cmp.not, label %.lr.ph1582.prol.loopexit, label %.lr.ph1582.prol, !llvm.loop !193

.lr.ph1582.prol.loopexit:                         ; preds = %.lr.ph1582.prol, %.lr.ph1582.preheader
  %.5469.in1580.unr = phi i64 [ %i.qv, %.lr.ph1582.preheader ], [ %.5469.prol, %.lr.ph1582.prol ]
  %i.rd = icmp ult i64 %i.qz, 3
  br i1 %i.rd, label %.lr.ph1592, label %.lr.ph1582

.lr.ph1592:                                       ; preds = %.lr.ph1582.prol.loopexit, %.lr.ph1582, %bb.cj
  %i.re = sub nuw i64 -2, %.04111596
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.04111596 ; 2 uses
  br label %bb.ck

.lr.ph1582:                                       ; preds = %.lr.ph1582.prol.loopexit, %.lr.ph1582
  %.5469.in1580 = phi i64 [ %.5469.3, %.lr.ph1582 ], [ %.5469.in1580.unr, %.lr.ph1582.prol.loopexit ] ; 4 uses
  %i.rg = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.5469.in1580
  %i.rh = getelementptr i8, ptr %i.rg, i64 8
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !8
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ri
  store i64 %.24431595, ptr %i.rj, align 8, !tbaa !8
  %i.rk = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.5469.in1580
  %i.rl = getelementptr i8, ptr %i.rk, i64 16
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !8
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.rm
  store i64 %.24431595, ptr %i.rn, align 8, !tbaa !8
  %i.ro = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.5469.in1580
  %i.rp = getelementptr i8, ptr %i.ro, i64 24
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !8
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.rq
  store i64 %.24431595, ptr %i.rr, align 8, !tbaa !8
  %.5469.3 = add nsw i64 %.5469.in1580, 4         ; 3 uses
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.5469.3
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !8
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.rt
  store i64 %.24431595, ptr %i.ru, align 8, !tbaa !8
  %exitcond1647.not.3 = icmp eq i64 %.5469.3, %i.qx
  br i1 %exitcond1647.not.3, label %.lr.ph1592, label %.lr.ph1582, !llvm.loop !194

._crit_edge1593:                                  ; preds = %bb.cn
  %i.rv = load i64, ptr %i.qo, align 8, !tbaa !8  ; 2 uses
  %i.rw = add nuw nsw i64 %.24431595, 1           ; 2 uses
  %.not518 = icmp eq i64 %i.rv, -1
  br i1 %.not518, label %.critedge2, label %.lr.ph1598, !llvm.loop !195

bb.ck:                                            ; preds = %.lr.ph1592, %bb.cn
  %.03991591 = phi i64 [ %i.qp, %.lr.ph1592 ], [ %.1400, %bb.cn ] ; 8 uses
  %.04011590 = phi i64 [ %.04111596, %.lr.ph1592 ], [ %.1402, %bb.cn ] ; 2 uses
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.03991591
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !8
  %i.rz = icmp eq i64 %i.ry, %i.qr
  br i1 %i.rz, label %bb.cl, label %.critedge537

bb.cl:                                            ; preds = %bb.ck
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.03991591
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !8
  %.not = icmp eq i64 %i.sb, %i.qt
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.03991591 ; 2 uses
  br i1 %.not, label %.lr.ph1588, label %.critedge537

.lr.ph1588:                                       ; preds = %bb.cl
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !8  ; 4 uses
  %i.se = add i64 %i.qw, %i.sd                    ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.sd, i64 %i.se)
  %exitcond1648.not2002.not = icmp slt i64 %i.sd, %i.se
  br i1 %exitcond1648.not2002.not, label %select.unfold, label %.critedge4

bb.cm:                                            ; preds = %select.unfold
  %exitcond1648.not = icmp eq i64 %.64701586, %smax
  br i1 %exitcond1648.not, label %.critedge4, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph1588, %bb.cm
  %.6470.in15852003 = phi i64 [ %.64701586, %bb.cm ], [ %i.sd, %.lr.ph1588 ]
  %.64701586 = add i64 %.6470.in15852003, 1       ; 3 uses
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.64701586
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !8
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.sg
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !8
  %.not524.not = icmp eq i64 %i.si, %.24431595
  br i1 %.not524.not, label %bb.cm, label %.critedge537

.critedge4:                                       ; preds = %bb.cm, %.lr.ph1588
  store i64 %i.re, ptr %i.sc, align 8, !tbaa !8
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.03991591 ; 2 uses
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !8
  %i.sl = load i64, ptr %i.rf, align 8, !tbaa !8
  %i.sm = add nsw i64 %i.sl, %i.sk
  store i64 %i.sm, ptr %i.rf, align 8, !tbaa !8
  store i64 0, ptr %i.sj, align 8, !tbaa !8
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.03991591
  store i64 -1, ptr %i.sn, align 8, !tbaa !8
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.03991591
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !8  ; 2 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.04011590
  store i64 %i.sp, ptr %i.sq, align 8, !tbaa !8
  br label %bb.cn

.critedge537:                                     ; preds = %select.unfold, %bb.ck, %bb.cl
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.03991591
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !8
  br label %bb.cn

bb.cn:                                            ; preds = %.critedge537, %.critedge4
  %.1402 = phi i64 [ %.04011590, %.critedge4 ], [ %.03991591, %.critedge537 ]
  %.1400 = phi i64 [ %i.sp, %.critedge4 ], [ %i.ss, %.critedge537 ] ; 2 uses
  %.not521 = icmp eq i64 %.1400, -1
  br i1 %.not521, label %._crit_edge1593, label %bb.ck, !llvm.loop !196

.critedge2:                                       ; preds = %._crit_edge1593, %.lr.ph1598, %bb.ci, %bb.ch
  %.3444 = phi i64 [ %.14421602, %bb.ch ], [ %.14421602, %bb.ci ], [ %i.rw, %._crit_edge1593 ], [ %.24431595, %.lr.ph1598 ] ; 3 uses
  %i.st = add nsw i64 %.04121603, 1               ; 2 uses
  %exitcond1649.not = icmp eq i64 %i.st, %.1459.lcssa
  br i1 %exitcond1649.not, label %.lr.ph1609, label %bb.ch, !llvm.loop !197

bb.co:                                            ; preds = %.lr.ph1609, %bb.cs
  %.03961608 = phi i64 [ %i.lj, %.lr.ph1609 ], [ %i.tm, %bb.cs ] ; 2 uses
  %.74711607 = phi i64 [ %i.lj, %.lr.ph1609 ], [ %.8472, %bb.cs ] ; 3 uses
  %.210091606 = phi i64 [ %.11008.lcssa, %.lr.ph1609 ], [ %.31010, %bb.cs ] ; 2 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.03961608
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !8  ; 7 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.sv ; 2 uses
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !8  ; 3 uses
  %i.sy = icmp sgt i64 %i.sx, -1
  br i1 %i.sy, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sz = sub nsw i64 0, %i.sx
  store i64 %i.sz, ptr %i.sw, align 8, !tbaa !8
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.sv ; 2 uses
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !8
  %i.tc = add nsw i64 %i.tb, %.4
  %i.td = tail call i64 @llvm.smin.i64(i64 %i.qd, i64 %i.tc)
  %.sroa.speculated = add nsw i64 %i.td, %i.sx    ; 3 uses
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.sroa.speculated ; 3 uses
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !8  ; 2 uses
  %.not517 = icmp eq i64 %i.tf, -1
  br i1 %.not517, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.tf
  store i64 %i.sv, ptr %i.tg, align 8, !tbaa !8
  %.pre1657 = load i64, ptr %i.te, align 8, !tbaa !8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.th = phi i64 [ %.pre1657, %bb.cq ], [ -1, %bb.cp ]
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.sv
  store i64 %i.th, ptr %i.ti, align 8, !tbaa !8
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.sv
  store i64 -1, ptr %i.tj, align 8, !tbaa !8
  store i64 %i.sv, ptr %i.te, align 8, !tbaa !8
  %.sroa.speculated732 = tail call i64 @llvm.smin.i64(i64 %.sroa.speculated, i64 %.210091606)
  store i64 %.sroa.speculated, ptr %i.ta, align 8, !tbaa !8
  %i.tk = add nsw i64 %.74711607, 1
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.74711607
  store i64 %i.sv, ptr %i.tl, align 8, !tbaa !8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.co, %bb.cr
  %.31010 = phi i64 [ %.210091606, %bb.co ], [ %.sroa.speculated732, %bb.cr ] ; 3 uses
  %.8472 = phi i64 [ %.74711607, %bb.co ], [ %i.tk, %bb.cr ] ; 5 uses
  %i.tm = add nsw i64 %.03961608, 1               ; 2 uses
  %exitcond1650.not = icmp eq i64 %i.tm, %.1459.lcssa
  br i1 %exitcond1650.not, label %._crit_edge1610, label %bb.co, !llvm.loop !198

._crit_edge1610:                                  ; preds = %bb.cs
  store i64 %.1450, ptr %i.ic, align 8, !tbaa !8
  %i.tn = sub nsw i64 %.8472, %i.lj
  store i64 %i.tn, ptr %i.lr, align 8, !tbaa !8
  %i.to = icmp eq i64 %.8472, %i.lj
  br i1 %i.to, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_ZN6casadi16SparsityInternal6wclearExxPxx.exit655.thread, %._crit_edge1610
  %.7471.lcssa1983 = phi i64 [ %i.lj, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit655.thread ], [ %.8472, %._crit_edge1610 ]
  %.21009.lcssa1981 = phi i64 [ %.11008.lcssa, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit655.thread ], [ %.31010, %._crit_edge1610 ]
  %.sroa.speculated711195319621979 = phi i64 [ %.sroa.speculated7111948, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit655.thread ], [ %.sroa.speculated711, %._crit_edge1610 ]
  %.3431.lcssa195219631977 = phi i64 [ %i.ie, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit655.thread ], [ %.4432, %._crit_edge1610 ]
  %.1442.lcssa19651975 = phi i64 [ %i.nx, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit655.thread ], [ %.3444, %._crit_edge1610 ]
  store i64 -1, ptr %i.lg, align 8, !tbaa !8
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.1447
  store i64 0, ptr %i.tp, align 8, !tbaa !8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %._crit_edge1610
  %.7471.lcssa1982 = phi i64 [ %.7471.lcssa1983, %bb.ct ], [ %.8472, %._crit_edge1610 ]
  %.21009.lcssa1980 = phi i64 [ %.21009.lcssa1981, %bb.ct ], [ %.31010, %._crit_edge1610 ]
  %.sroa.speculated711195319621978 = phi i64 [ %.sroa.speculated711195319621979, %bb.ct ], [ %.sroa.speculated711, %._crit_edge1610 ]
  %.3431.lcssa195219631976 = phi i64 [ %.3431.lcssa195219631977, %bb.ct ], [ %.4432, %._crit_edge1610 ] ; 2 uses
  %.1442.lcssa19651974 = phi i64 [ %.1442.lcssa19651975, %bb.ct ], [ %.3444, %._crit_edge1610 ]
  %spec.select538 = select i1 %i.li, i64 %.4417, i64 %.7471.lcssa1982
  %i.tq = icmp slt i64 %.3431.lcssa195219631976, %i.bb
  br i1 %i.tq, label %.preheader1483, label %.preheader1475, !llvm.loop !199

.preheader1474:                                   ; preds = %.lr.ph1622.preheader.a, %middle.block2039, %.preheader1475
  br i1 %.not1496180918971955, label %.preheader1473, label %.lr.ph1622.preheader

.lr.ph1622.preheader:                             ; preds = %.preheader1474
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dk, i8 -1, i64 %i.bd, i1 false), !tbaa !8
  br label %.preheader1473

.lr.ph1622.preheader.a:                           ; preds = %.lr.ph1619.preheader2042, %.lr.ph1622.preheader.a
  %.03751618 = phi i64 [ %25, %.lr.ph1622.preheader.a ], [ %.03751618.ph, %.lr.ph1619.preheader2042 ] ; 2 uses
  %22 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.03751618 ; 2 uses
  %23 = load i64, ptr %22, align 8, !tbaa !8
  %24 = sub i64 -2, %23
  store i64 %24, ptr %22, align 8, !tbaa !8
  %25 = add nuw nsw i64 %.03751618, 1             ; 2 uses
  %exitcond1651.not = icmp eq i64 %25, %i.bb
  br i1 %exitcond1651.not, label %.preheader1474, label %.lr.ph1622.preheader.a, !llvm.loop !200

.preheader1473:                                   ; preds = %.lr.ph1622.preheader, %.preheader1474
  %26 = icmp sgt i64 %i.bb, -1
  br i1 %26, label %.lr.ph1624.preheader, label %.preheader

.lr.ph1624.preheader:                             ; preds = %.preheader1473
  %i.tr = and i64 %i.bb, 1
  %lcmp.mod2059.not.not = icmp eq i64 %i.tr, 0
  br i1 %lcmp.mod2059.not.not, label %.lr.ph1624.prol, label %.lr.ph1619

.lr.ph1624.prol:                                  ; preds = %.lr.ph1624.preheader
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.bb
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !8
  %i.tu = icmp sgt i64 %i.tt, 0
  br i1 %i.tu, label %.lr.ph1624.prol.loopexit.unr-lcssa, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph1624.prol
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.bb
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !8
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.tw ; 2 uses
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !8
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.bb
  store i64 %i.ty, ptr %i.tz, align 8, !tbaa !8
  store i64 %i.bb, ptr %i.tx, align 8, !tbaa !8
  br label %.lr.ph1624.prol.loopexit.unr-lcssa

.lr.ph1624.prol.loopexit.unr-lcssa:               ; preds = %bb.cv, %.lr.ph1624.prol
  %i.ua = add nsw i64 %i.bb, -1
  br label %.lr.ph1619

.lr.ph1619:                                       ; preds = %.lr.ph1624.prol.loopexit.unr-lcssa, %.lr.ph1624.preheader
  %.03751618.a = phi i64 [ %i.bb, %.lr.ph1624.preheader ], [ %i.ua, %.lr.ph1624.prol.loopexit.unr-lcssa ]
  %exitcond1651.not.a = icmp eq i64 %i.bb, 0
  br i1 %exitcond1651.not.a, label %.lr.ph1626.preheader, label %.lr.ph1624

.lr.ph1624:                                       ; preds = %.lr.ph1619, %bb.cy
  %.03731623 = phi i64 [ %i.us, %bb.cy ], [ %.03751618.a, %.lr.ph1619 ] ; 7 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.03731623
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !8
  %i.ud = icmp sgt i64 %i.uc, 0
  br i1 %i.ud, label %.lr.ph1624.1, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph1624
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.03731623
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !8
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.uf ; 2 uses
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !8
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.03731623
  store i64 %i.uh, ptr %i.ui, align 8, !tbaa !8
  store i64 %.03731623, ptr %i.ug, align 8, !tbaa !8
  br label %.lr.ph1624.1

.lr.ph1624.1:                                     ; preds = %.lr.ph1624, %bb.cw
  %i.uj = add nsw i64 %.03731623, -1              ; 4 uses
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.uj
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !8
  %i.um = icmp sgt i64 %i.ul, 0
  br i1 %i.um, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph1624.1
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.uj
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !8
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.uo ; 2 uses
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !8
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.uj
  store i64 %i.uq, ptr %i.ur, align 8, !tbaa !8
  store i64 %i.uj, ptr %i.up, align 8, !tbaa !8
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.lr.ph1624.1
  %i.us = add nsw i64 %.03731623, -2
  %i.ut = icmp sgt i64 %.03731623, 1
  br i1 %i.ut, label %.lr.ph1624, label %.lr.ph1626.preheader, !llvm.loop !201

.lr.ph1626.preheader:                             ; preds = %bb.cy, %.lr.ph1619
  br label %.lr.ph1626

.preheader:                                       ; preds = %bb.db, %.preheader1473
  %.pre1659 = load ptr, ptr %0, align 8           ; 2 uses
  br i1 %.not1496180918971955, label %._crit_edge1631.loopexit.a, label %bb.df

.lr.ph1626:                                       ; preds = %.lr.ph1626.preheader, %bb.db
  %.03721625 = phi i64 [ %i.vc, %bb.db ], [ %i.bb, %.lr.ph1626.preheader ] ; 6 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.03721625
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !8
  %i.uw = icmp slt i64 %i.uv, 1
  br i1 %i.uw, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph1626
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.03721625
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !8  ; 2 uses
  %.not512 = icmp eq i64 %i.uy, -1
  br i1 %.not512, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.uy ; 2 uses
  %i.va = load i64, ptr %i.uz, align 8, !tbaa !8
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.03721625
  store i64 %i.va, ptr %i.vb, align 8, !tbaa !8
  store i64 %.03721625, ptr %i.uz, align 8, !tbaa !8
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da, %.lr.ph1626
  %i.vc = add nsw i64 %.03721625, -1
  %i.vd = icmp sgt i64 %.03721625, 0
  br i1 %i.vd, label %.lr.ph1626, label %.preheader, !llvm.loop !202

._crit_edge1631.loopexit:                         ; preds = %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit
  %.pre1658 = load ptr, ptr %0, align 8, !tbaa !61
  br label %._crit_edge1631.loopexit.a

._crit_edge1631.loopexit.a:                       ; preds = %._crit_edge1631.loopexit, %.preheader
  %27 = phi ptr [ %.pre1658, %._crit_edge1631.loopexit ], [ %.pre1659, %.preheader ] ; 2 uses
  %i.ve = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.vf = ptrtoint ptr %27 to i64
  %i.vg = sub i64 %i.ve, %i.vf
  %i.vh = ashr exact i64 %i.vg, 3                 ; 3 uses
  %i.vi = icmp ugt i64 %i.bb, %i.vh
  br i1 %i.vi, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %._crit_edge1631.loopexit.a
  %i.vj = sub nuw i64 %i.bb, %i.vh
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.vj)
          to label %_ZNSt6vectorIxSaIxEE6resizeEm.exit unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit

bb.dd:                                            ; preds = %._crit_edge1631.loopexit.a
  %i.vk = icmp ult i64 %i.bb, %i.vh
  br i1 %i.vk, label %bb.de, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.de:                                            ; preds = %bb.dd
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %i.bb ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i.i.i.i.ph, %i.vl
  br i1 %.not.i.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.de
  store ptr %i.vl, ptr %i.dd, align 8, !tbaa !66
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.df:                                            ; preds = %.preheader, %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit
  %.01629 = phi i64 [ %i.wc, %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit ], [ 0, %.preheader ] ; 4 uses
  %.03711628 = phi i64 [ %.1, %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit ], [ 0, %.preheader ] ; 2 uses
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.01629
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !8
  %i.vo = icmp eq i64 %i.vn, -1
  br i1 %i.vo, label %bb.dg, label %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit

bb.dg:                                            ; preds = %bb.df
  store i64 %.01629, ptr %i.ds, align 8, !tbaa !8
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dk, %bb.dg
  %.023.i = phi i64 [ 0, %bb.dg ], [ %.1.i, %bb.dk ] ; 3 uses
  %.01922.i = phi i64 [ %.03711628, %bb.dg ], [ %.120.i, %bb.dk ] ; 3 uses
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.023.i
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !8  ; 2 uses
  %i.vr = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i.i599.ph, i64 %i.vq ; 2 uses
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !8  ; 3 uses
  %i.vt = icmp eq i64 %i.vs, -1
  br i1 %i.vt, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.vu = add nsw i64 %.023.i, -1
  %i.vv = add nsw i64 %.01922.i, 1
  %i.vw = getelementptr inbounds [8 x i8], ptr %.pre1659, i64 %.01922.i
  store i64 %i.vq, ptr %i.vw, align 8, !tbaa !8
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.vs
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !8
  store i64 %i.vy, ptr %i.vr, align 8, !tbaa !8
  %i.vz = add nuw nsw i64 %.023.i, 1              ; 2 uses
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.vz
  store i64 %i.vs, ptr %i.wa, align 8, !tbaa !8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.120.i = phi i64 [ %i.vv, %bb.di ], [ %.01922.i, %bb.dj ] ; 2 uses
  %.1.i = phi i64 [ %i.vu, %bb.di ], [ %i.vz, %bb.dj ] ; 2 uses
  %i.wb = icmp sgt i64 %.1.i, -1
  br i1 %i.wb, label %bb.dh, label %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit, !llvm.loop !14

_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit: ; preds = %bb.dk, %bb.df
  %.1 = phi i64 [ %.03711628, %bb.df ], [ %.120.i, %bb.dk ]
  %i.wc = add nuw i64 %.01629, 1
  %exitcond1652.not = icmp eq i64 %.01629, %i.bb
  br i1 %exitcond1652.not, label %._crit_edge1631.loopexit, label %bb.df, !llvm.loop !203

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %bb.dc, %bb.dd, %bb.de, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i
  %.idx1994 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %.idx1994) #30
  %.idx1995 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %.idx1995) #30
  %.idx1996 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %.idx1996) #30
  %.idx1997 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %.idx1997) #30
  %.idx1998 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %.idx1998) #30
  %.idx1999 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %.idx1999) #30
  %.idx2000 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %.idx2000) #30
  %.idx2001 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %.idx2001) #30
  %.not.i.i.i680 = icmp eq ptr %.sroa.0930.0, null
  br i1 %.not.i.i.i680, label %_ZNSt6vectorIxSaIxEED2Ev.exit681, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0930.0, i64 noundef %21) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit681

_ZNSt6vectorIxSaIxEED2Ev.exit681:                 ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit, %bb.dl
  %.not.i.i.i682 = icmp eq ptr %.sroa.0963.0, null
  br i1 %.not.i.i.i682, label %_ZNSt6vectorIxSaIxEED2Ev.exit683, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit681
  %i.wd = ptrtoint ptr %.sroa.42.0 to i64
  %i.we = ptrtoint ptr %.sroa.0963.0 to i64
  %i.wf = sub i64 %i.wd, %i.we
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0963.0, i64 noundef %i.wf) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit683

_ZNSt6vectorIxSaIxEED2Ev.exit683:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit681, %bb.dm
  ret void

_ZNSt6vectorIxSaIxEED2Ev.exit685:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %_ZNSt6vectorIxSaIxEED2Ev.exit.thread
  %.pn5001320 = phi { ptr, i32 } [ %i.fh, %_ZNSt6vectorIxSaIxEED2Ev.exit.thread ], [ %i.gq, %_ZNSt6vectorIxSaIxEED2Ev.exit ]
  %.idx1987 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %.idx1987) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit687

_ZNSt6vectorIxSaIxEED2Ev.exit687:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit685, %_ZNSt6vectorIxSaIxEED2Ev.exit685.thread
  %.pn500.pn1358 = phi { ptr, i32 } [ %i.fg, %_ZNSt6vectorIxSaIxEED2Ev.exit685.thread ], [ %.pn5001320, %_ZNSt6vectorIxSaIxEED2Ev.exit685 ]
  %.idx1988 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %.idx1988) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit689

_ZNSt6vectorIxSaIxEED2Ev.exit689:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit687, %_ZNSt6vectorIxSaIxEED2Ev.exit687.thread
  %.pn500.pn.pn1390 = phi { ptr, i32 } [ %i.ff, %_ZNSt6vectorIxSaIxEED2Ev.exit687.thread ], [ %.pn500.pn1358, %_ZNSt6vectorIxSaIxEED2Ev.exit687 ]
  %.idx1989 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %.idx1989) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit691

_ZNSt6vectorIxSaIxEED2Ev.exit691:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit689, %_ZNSt6vectorIxSaIxEED2Ev.exit689.thread
  %.pn500.pn.pn.pn1416 = phi { ptr, i32 } [ %i.fe, %_ZNSt6vectorIxSaIxEED2Ev.exit689.thread ], [ %.pn500.pn.pn1390, %_ZNSt6vectorIxSaIxEED2Ev.exit689 ]
  %.idx1990 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %.idx1990) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit693

_ZNSt6vectorIxSaIxEED2Ev.exit693:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit691, %_ZNSt6vectorIxSaIxEED2Ev.exit691.thread
  %.pn500.pn.pn.pn.pn1436 = phi { ptr, i32 } [ %i.fd, %_ZNSt6vectorIxSaIxEED2Ev.exit691.thread ], [ %.pn500.pn.pn.pn1416, %_ZNSt6vectorIxSaIxEED2Ev.exit691 ]
  %.idx1991 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %.idx1991) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit695

_ZNSt6vectorIxSaIxEED2Ev.exit695:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit693, %_ZNSt6vectorIxSaIxEED2Ev.exit693.thread
  %.pn500.pn.pn.pn.pn.pn1450 = phi { ptr, i32 } [ %i.fc, %_ZNSt6vectorIxSaIxEED2Ev.exit693.thread ], [ %.pn500.pn.pn.pn.pn1436, %_ZNSt6vectorIxSaIxEED2Ev.exit693 ]
  %.idx1992 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %.idx1992) #30
  br label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit695, %_ZNSt6vectorIxSaIxEED2Ev.exit695.thread
  %.pn500.pn.pn.pn.pn.pn.pn1458 = phi { ptr, i32 } [ %i.fb, %_ZNSt6vectorIxSaIxEED2Ev.exit695.thread ], [ %.pn500.pn.pn.pn.pn.pn1450, %_ZNSt6vectorIxSaIxEED2Ev.exit695 ]
  %.idx1993 = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %.idx1993) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit697

_ZNSt6vectorIxSaIxEED2Ev.exit697:                 ; preds = %bb.dn, %bb.ak
  %.pn500.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.ak ], [ %.pn500.pn.pn.pn.pn.pn.pn1458, %bb.dn ] ; 2 uses
  %i.wg = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i698 = icmp eq ptr %i.wg, null
  br i1 %.not.i.i.i698, label %_ZNSt6vectorIxSaIxEED2Ev.exit699, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit697
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !65
  %i.wj = ptrtoint ptr %i.wi to i64
  %i.wk = ptrtoint ptr %i.wg to i64
  %i.wl = sub i64 %i.wj, %i.wk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wg, i64 noundef %i.wl) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit699

_ZNSt6vectorIxSaIxEED2Ev.exit699:                 ; preds = %bb.do, %_ZNSt6vectorIxSaIxEED2Ev.exit697, %bb.aj
  %.pn500.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ez, %bb.aj ], [ %.pn500.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit697 ], [ %.pn500.pn.pn.pn.pn.pn.pn.pn, %bb.do ] ; 2 uses
  %.not.i.i.i700 = icmp eq ptr %.sroa.0930.0, null
  br i1 %.not.i.i.i700, label %_ZNSt6vectorIxSaIxEED2Ev.exit701, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit699
  %i.wm = ptrtoint ptr %.sroa.39.0 to i64
  %i.wn = ptrtoint ptr %.sroa.0930.0 to i64
  %i.wo = sub i64 %i.wm, %i.wn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0930.0, i64 noundef %i.wo) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit701

_ZNSt6vectorIxSaIxEED2Ev.exit701:                 ; preds = %bb.dp, %_ZNSt6vectorIxSaIxEED2Ev.exit699, %bb.w
  %.pn500.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.w ], [ %.pn500.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit699 ], [ %.pn500.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dp ] ; 2 uses
  %.not.i.i.i702 = icmp eq ptr %.sroa.0963.0, null
  br i1 %.not.i.i.i702, label %_ZNSt6vectorIxSaIxEED2Ev.exit703, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit701
  %i.wp = ptrtoint ptr %.sroa.42.0 to i64
  %i.wq = ptrtoint ptr %.sroa.0963.0 to i64
  %i.wr = sub i64 %i.wp, %i.wq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0963.0, i64 noundef %i.wr) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit703

_ZNSt6vectorIxSaIxEED2Ev.exit703:                 ; preds = %bb.dq, %_ZNSt6vectorIxSaIxEED2Ev.exit701, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556, %bb.q
  %.pn500.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554 ], [ %.pn.pn.pn.pn.pn.pn.pn1013, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556 ], [ %.pn500.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit701 ], [ %.pn500.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dq ]
  resume { ptr, i32 } %.pn500.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.dr:                                            ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6casadi16SparsityInternal12is_symmetricEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6casadi16SparsityInternal12is_transposeERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret i1 %i.a
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !89   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !84     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !90
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !90
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !125
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !84   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !89   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !84
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !90
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !89
  store ptr %i.v, ptr %i.s, align 8, !tbaa !84
  store i64 0, ptr %i.ac, align 8, !tbaa !89
  store i8 0, ptr %i.v, align 8, !tbaa !90
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

end_hunk_1
