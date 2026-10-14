Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/convexify?download=true
inline.NumInlined: 1165
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK6casadi9Convexify4evalEPPKdPPdPxS4_:bb.a
bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #23
          to label %bb.t unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.l:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.m:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.n:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.o:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.i ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !18     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.p = load i64, ptr %i.n, align 8, !tbaa !16
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.k, %bb.o ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.l, %bb.p ] ; 2 uses
  %.1 = phi i1 [ true, %bb.o ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.p ] ; 2 uses
  %i.r = load ptr, ptr %10, align 8, !tbaa !18    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !16
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.n ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.w = load ptr, ptr %11, align 8, !tbaa !18    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.z = load i64, ptr %i.x, align 8, !tbaa !16
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.m ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ] ; 2 uses
  %i.ab = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !16
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.h, %bb.l ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.l ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.ag = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.k ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.k ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ] ; 2 uses
  %i.al = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !16
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  %i.aq = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread: ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !16
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #26
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.az = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.ba) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.5, label %bb.q, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.5, label %bb.q, label %bb.r

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.thread
  %.pn.pn.pn.pn.pn.pn.pn50.ph = phi { ptr, i32 } [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn.pn.pn.pn.pn.pn.pn50 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn.pn.pn.pn.pn.pn.pn50.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.e) #24
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn.pn.pn.pn.pn.pn.pn49 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn50, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn49

bb.s:                                             ; preds = %bb.a
  ret i32 0

bb.t:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi14convexify_evalIdEEiPKNS_23casadi_convexify_configIT_EEPKS2_PS2_PxS8_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50   ; 7 uses
  %i.e = getelementptr [8 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !226  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !50   ; 6 uses
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !227
  %.not = icmp eq i32 %i.p, 0
  %.not225 = icmp eq ptr %1, %2                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not225, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not15.i = icmp eq ptr %1, null
  %i.q = icmp sgt i64 %i.g, 0                     ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.d
  br i1 %i.q, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check = icmp ult i64 %i.g, 8
  %5 = ptrtoaddr ptr %4 to i64
  %6 = ptrtoaddr ptr %1 to i64
  %i.r = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond460 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond460, label %.lr.ph.i.preheader470, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.g, 9223372036854775804      ; 4 uses
  %i.s = shl i64 %n.vec, 3                        ; 2 uses
  %i.t = getelementptr i8, ptr %4, i64 %i.s
  %i.u = getelementptr i8, ptr %1, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %4, i64 %i.v  ; 2 uses
  %next.gep438 = getelementptr i8, ptr %1, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep438, i64 16
  %wide.load = load <2 x double>, ptr %next.gep438, align 8, !tbaa !85
  %wide.load439 = load <2 x double>, ptr %i.w, align 8, !tbaa !85
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !85
  store <2 x double> %wide.load439, ptr %i.x, align 8, !tbaa !85
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader470

.lr.ph.i.preheader470:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i.ph = phi ptr [ %4, %.lr.ph.i.preheader ], [ %i.t, %middle.block ] ; 2 uses
  %.01218.i.ph = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block ] ; 2 uses
  %i.z = sub nsw i64 %i.g, %.020.i.ph
  %xtraiter478.a = and i64 %i.z, 7                ; 2 uses
  %lcmp.mod479.not.a = icmp eq i64 %xtraiter478.a, 0
  br i1 %lcmp.mod479.not.a, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader470, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.ad, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader470 ]
  %.01019.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader470 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.aa, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader470 ] ; 2 uses
  %prol.iter480.a = phi i64 [ %prol.iter480.next.a, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader470 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.ab = load double, ptr %.01218.i.prol, align 8, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.ab, ptr %.01019.i.prol, align 8, !tbaa !85
  %i.ad = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter480.next.a = add i64 %prol.iter480.a, 1 ; 2 uses
  %prol.iter480.cmp.not.a = icmp eq i64 %prol.iter480.next.a, %xtraiter478.a
  br i1 %prol.iter480.cmp.not.a, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !186

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader470
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader470 ], [ %i.ad, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader470 ], [ %i.ac, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader470 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ae = sub nsw i64 %.020.i.ph, %i.g
  %i.af = icmp ugt i64 %i.ae, -8
  br i1 %i.af, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.q, label %.lr.ph23.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.ag = shl nuw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %4, i8 0, i64 %i.ag, i1 false), !tbaa !85
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.ai = load double, ptr %.01218.i, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.ai, ptr %.01019.i, align 8, !tbaa !85
  %i.ak = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.al = load double, ptr %i.ah, align 8, !tbaa !85
  %i.am = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.al, ptr %i.aj, align 8, !tbaa !85
  %i.an = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.ao = load double, ptr %i.ak, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.ao, ptr %i.am, align 8, !tbaa !85
  %i.aq = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.ar = load double, ptr %i.an, align 8, !tbaa !85
  %i.as = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.ar, ptr %i.ap, align 8, !tbaa !85
  %i.at = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.au = load double, ptr %i.aq, align 8, !tbaa !85
  %i.av = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.au, ptr %i.as, align 8, !tbaa !85
  %i.aw = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.ax = load double, ptr %i.at, align 8, !tbaa !85
  %i.ay = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.ax, ptr %i.av, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !85
  %i.bb = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.ba, ptr %i.ay, align 8, !tbaa !85
  %i.bc = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.bd = load double, ptr %i.az, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.bd, ptr %i.bb, align 8, !tbaa !85
  %i.bf = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.bf, %i.g
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !187

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c, %.preheader16.i, %.preheader.i, %.lr.ph23.preheader.i
  %i.bg = getelementptr inbounds [8 x i8], ptr %4, i64 %i.g ; 15 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.d
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 10 uses
  %i.bn = icmp sgt i64 %i.d, 0
  br i1 %i.bn, label %.lr.ph52.preheader.i, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit

.lr.ph52.preheader.i:                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %.pre.i = load i64, ptr %i.bk, align 8, !tbaa !50
  br label %.lr.ph52.i

.loopexit.i:                                      ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %.preheader.i232
  %exitcond56.not.i = icmp eq i64 %i.bp, %i.d
  br i1 %exitcond56.not.i, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit, label %.lr.ph52.i, !llvm.loop !188

.lr.ph52.i:                                       ; preds = %.loopexit.i, %.lr.ph52.preheader.i
  %i.bo = phi i64 [ %i.br, %.loopexit.i ], [ %.pre.i, %.lr.ph52.preheader.i ] ; 9 uses
  %.04150.i = phi i64 [ %i.bp, %.loopexit.i ], [ 0, %.lr.ph52.preheader.i ] ; 2 uses
  %i.bp = add nuw nsw i64 %.04150.i, 1            ; 4 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !50 ; 8 uses
  %i.bs = icmp slt i64 %i.bo, %i.br               ; 2 uses
  br i1 %i.bs, label %.lr.ph.i233.preheader, label %._crit_edge.i

.lr.ph.i233.preheader:                            ; preds = %.lr.ph52.i
  %i.bt = sub i64 %i.br, %i.bo
  %xtraiter481.a = and i64 %i.bt, 3               ; 2 uses
  %lcmp.mod482.not.a = icmp eq i64 %xtraiter481.a, 0
  br i1 %lcmp.mod482.not.a, label %.lr.ph.i233.prol.loopexit, label %.lr.ph.i233.prol

.lr.ph.i233.prol:                                 ; preds = %.lr.ph.i233.preheader, %.lr.ph.i233.prol
  %.043.i.prol = phi i64 [ %i.bx, %.lr.ph.i233.prol ], [ %i.bo, %.lr.ph.i233.preheader ] ; 2 uses
  %prol.iter483.a = phi i64 [ %prol.iter483.next.a, %.lr.ph.i233.prol ], [ 0, %.lr.ph.i233.preheader ]
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %.043.i.prol
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !50
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bv
  store double 0.000000e+00, ptr %i.bw, align 8, !tbaa !85
  %i.bx = add nsw i64 %.043.i.prol, 1             ; 2 uses
  %prol.iter483.next.a = add i64 %prol.iter483.a, 1 ; 2 uses
  %prol.iter483.cmp.not.a = icmp eq i64 %prol.iter483.next.a, %xtraiter481.a
  br i1 %prol.iter483.cmp.not.a, label %.lr.ph.i233.prol.loopexit, label %.lr.ph.i233.prol, !llvm.loop !189

.lr.ph.i233.prol.loopexit:                        ; preds = %.lr.ph.i233.prol, %.lr.ph.i233.preheader
  %.043.i.unr = phi i64 [ %i.bo, %.lr.ph.i233.preheader ], [ %i.bx, %.lr.ph.i233.prol ]
  %i.by = sub i64 %i.bo, %i.br
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %._crit_edge.i, label %.lr.ph.i233

.lr.ph.i233:                                      ; preds = %.lr.ph.i233.prol.loopexit, %.lr.ph.i233
  %.043.i = phi i64 [ %i.cp, %.lr.ph.i233 ], [ %.043.i.unr, %.lr.ph.i233.prol.loopexit ] ; 5 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %.043.i
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !50
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cb
  store double 0.000000e+00, ptr %i.cc, align 8, !tbaa !85
  %i.cd = getelementptr [8 x i8], ptr %i.bm, i64 %.043.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !50
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cf
  store double 0.000000e+00, ptr %i.cg, align 8, !tbaa !85
  %i.ch = getelementptr [8 x i8], ptr %i.bm, i64 %.043.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !50
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cj
  store double 0.000000e+00, ptr %i.ck, align 8, !tbaa !85
  %i.cl = getelementptr [8 x i8], ptr %i.bm, i64 %.043.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !50
  %i.co = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cn
  store double 0.000000e+00, ptr %i.co, align 8, !tbaa !85
  %i.cp = add nsw i64 %.043.i, 4                  ; 2 uses
  %exitcond.not.i234.3 = icmp eq i64 %i.cp, %i.br
  br i1 %exitcond.not.i234.3, label %._crit_edge.i, label %.lr.ph.i233, !llvm.loop !190

._crit_edge.i:                                    ; preds = %.lr.ph.i233.prol.loopexit, %.lr.ph.i233, %.lr.ph52.i
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04150.i
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !50 ; 5 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bp
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !50 ; 4 uses
  %i.cu = icmp slt i64 %i.cr, %i.ct
  br i1 %i.cu, label %.lr.ph47.i.preheader, label %.preheader.i232

.lr.ph47.i.preheader:                             ; preds = %._crit_edge.i
  %i.cv = sub i64 %i.ct, %i.cr
  %xtraiter484 = and i64 %i.cv, 3                 ; 2 uses
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0
  br i1 %lcmp.mod485.not, label %.lr.ph47.i.prol.loopexit, label %.lr.ph47.i.prol

end_hunk_0
begin_hunk_1_@_ZN6casadi14convexify_evalIdEEiPKNS_23casadi_convexify_configIT_EEPKS2_PS2_PxS8_:bb.a
  %.04150.i238 = phi i64 [ %i.fr, %.loopexit.i241 ], [ 0, %.lr.ph52.preheader.i235 ] ; 2 uses
  %i.fr = add nuw nsw i64 %.04150.i238, 1         ; 4 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !50 ; 8 uses
  %i.fu = icmp slt i64 %i.fq, %i.ft               ; 2 uses
  br i1 %i.fu, label %.lr.ph.i249.preheader, label %._crit_edge.i239

.lr.ph.i249.preheader:                            ; preds = %.lr.ph52.i237
  %i.fv = sub i64 %i.ft, %i.fq
  %xtraiter = and i64 %i.fv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i249.prol.loopexit, label %.lr.ph.i249.prol

.lr.ph.i249.prol:                                 ; preds = %.lr.ph.i249.preheader, %.lr.ph.i249.prol
  %.043.i250.prol = phi i64 [ %i.fz, %.lr.ph.i249.prol ], [ %i.fq, %.lr.ph.i249.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i249.prol ], [ 0, %.lr.ph.i249.preheader ]
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %.043.i250.prol
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !50
  %i.fy = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fx
  store double 0.000000e+00, ptr %i.fy, align 8, !tbaa !85
  %i.fz = add nsw i64 %.043.i250.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i249.prol.loopexit, label %.lr.ph.i249.prol, !llvm.loop !195

.lr.ph.i249.prol.loopexit:                        ; preds = %.lr.ph.i249.prol, %.lr.ph.i249.preheader
  %.043.i250.unr = phi i64 [ %i.fq, %.lr.ph.i249.preheader ], [ %i.fz, %.lr.ph.i249.prol ]
  %i.ga = sub i64 %i.fq, %i.ft
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %._crit_edge.i239, label %.lr.ph.i249

.lr.ph.i249:                                      ; preds = %.lr.ph.i249.prol.loopexit, %.lr.ph.i249
  %.043.i250 = phi i64 [ %i.gr, %.lr.ph.i249 ], [ %.043.i250.unr, %.lr.ph.i249.prol.loopexit ] ; 5 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %.043.i250
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !50
  %i.ge = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gd
  store double 0.000000e+00, ptr %i.ge, align 8, !tbaa !85
  %i.gf = getelementptr [8 x i8], ptr %i.fo, i64 %.043.i250
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !50
  %i.gi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gh
  store double 0.000000e+00, ptr %i.gi, align 8, !tbaa !85
  %i.gj = getelementptr [8 x i8], ptr %i.fo, i64 %.043.i250
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !50
  %i.gm = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gl
  store double 0.000000e+00, ptr %i.gm, align 8, !tbaa !85
  %i.gn = getelementptr [8 x i8], ptr %i.fo, i64 %.043.i250
  %i.go = getelementptr i8, ptr %i.gn, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !50
  %i.gq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gp
  store double 0.000000e+00, ptr %i.gq, align 8, !tbaa !85
  %i.gr = add nsw i64 %.043.i250, 4               ; 2 uses
  %exitcond.not.i251.3 = icmp eq i64 %i.gr, %i.ft
  br i1 %exitcond.not.i251.3, label %._crit_edge.i239, label %.lr.ph.i249, !llvm.loop !190

._crit_edge.i239:                                 ; preds = %.lr.ph.i249.prol.loopexit, %.lr.ph.i249, %.lr.ph52.i237
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.04150.i238
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !50 ; 5 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fr
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !50 ; 4 uses
  %i.gw = icmp slt i64 %i.gt, %i.gv
  br i1 %i.gw, label %.lr.ph47.i246.preheader, label %.preheader.i240

.lr.ph47.i246.preheader:                          ; preds = %._crit_edge.i239
  %i.gx = sub i64 %i.gv, %i.gt
  %xtraiter472 = and i64 %i.gx, 3                 ; 2 uses
  %lcmp.mod473.not = icmp eq i64 %xtraiter472, 0
  br i1 %lcmp.mod473.not, label %.lr.ph47.i246.prol.loopexit, label %.lr.ph47.i246.prol

.lr.ph47.i246.prol:                               ; preds = %.lr.ph47.i246.preheader, %.lr.ph47.i246.prol
  %.145.i247.prol = phi i64 [ %i.hd, %.lr.ph47.i246.prol ], [ %i.gt, %.lr.ph47.i246.preheader ] ; 3 uses
  %prol.iter474 = phi i64 [ %prol.iter474.next, %.lr.ph47.i246.prol ], [ 0, %.lr.ph47.i246.preheader ]
  %i.gy = getelementptr inbounds [8 x i8], ptr %1, i64 %.145.i247.prol
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !85
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %.145.i247.prol
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !50
  %i.hc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hb
  store double %i.gz, ptr %i.hc, align 8, !tbaa !85
  %i.hd = add nsw i64 %.145.i247.prol, 1          ; 2 uses
  %prol.iter474.next = add i64 %prol.iter474, 1   ; 2 uses
  %prol.iter474.cmp.not = icmp eq i64 %prol.iter474.next, %xtraiter472
  br i1 %prol.iter474.cmp.not, label %.lr.ph47.i246.prol.loopexit, label %.lr.ph47.i246.prol, !llvm.loop !196

.lr.ph47.i246.prol.loopexit:                      ; preds = %.lr.ph47.i246.prol, %.lr.ph47.i246.preheader
  %.145.i247.unr = phi i64 [ %i.gt, %.lr.ph47.i246.preheader ], [ %i.hd, %.lr.ph47.i246.prol ]
  %i.he = sub i64 %i.gt, %i.gv
  %i.hf = icmp ugt i64 %i.he, -4
  br i1 %i.hf, label %.preheader.i240, label %.lr.ph47.i246

.preheader.i240:                                  ; preds = %.lr.ph47.i246.prol.loopexit, %.lr.ph47.i246, %._crit_edge.i239
  br i1 %i.fu, label %.lr.ph49.i243.preheader, label %.loopexit.i241

.lr.ph49.i243.preheader:                          ; preds = %.preheader.i240
  %i.hg = sub i64 %i.ft, %i.fq
  %xtraiter475 = and i64 %i.hg, 3                 ; 2 uses
  %lcmp.mod476.not = icmp eq i64 %xtraiter475, 0
  br i1 %lcmp.mod476.not, label %.lr.ph49.i243.prol.loopexit, label %.lr.ph49.i243.prol

.lr.ph49.i243.prol:                               ; preds = %.lr.ph49.i243.preheader, %.lr.ph49.i243.prol
  %.248.i244.prol = phi i64 [ %i.hm, %.lr.ph49.i243.prol ], [ %i.fq, %.lr.ph49.i243.preheader ] ; 3 uses
  %prol.iter477 = phi i64 [ %prol.iter477.next, %.lr.ph49.i243.prol ], [ 0, %.lr.ph49.i243.preheader ]
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %.248.i244.prol
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !50
  %i.hj = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !85
  %i.hl = getelementptr inbounds [8 x i8], ptr %2, i64 %.248.i244.prol
  store double %i.hk, ptr %i.hl, align 8, !tbaa !85
  %i.hm = add nsw i64 %.248.i244.prol, 1          ; 2 uses
  %prol.iter477.next = add i64 %prol.iter477, 1   ; 2 uses
  %prol.iter477.cmp.not = icmp eq i64 %prol.iter477.next, %xtraiter475
  br i1 %prol.iter477.cmp.not, label %.lr.ph49.i243.prol.loopexit, label %.lr.ph49.i243.prol, !llvm.loop !197

.lr.ph49.i243.prol.loopexit:                      ; preds = %.lr.ph49.i243.prol, %.lr.ph49.i243.preheader
  %.248.i244.unr = phi i64 [ %i.fq, %.lr.ph49.i243.preheader ], [ %i.hm, %.lr.ph49.i243.prol ]
  %i.hn = sub i64 %i.fq, %i.ft
  %i.ho = icmp ugt i64 %i.hn, -4
  br i1 %i.ho, label %.loopexit.i241, label %.lr.ph49.i243

.lr.ph47.i246:                                    ; preds = %.lr.ph47.i246.prol.loopexit, %.lr.ph47.i246
  %.145.i247 = phi i64 [ %i.im, %.lr.ph47.i246 ], [ %.145.i247.unr, %.lr.ph47.i246.prol.loopexit ] ; 6 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %1, i64 %.145.i247
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !85
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %.145.i247
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !50
  %i.ht = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hs
  store double %i.hq, ptr %i.ht, align 8, !tbaa !85
  %i.hu = add nsw i64 %.145.i247, 1               ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !85
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.hu
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !50
  %i.hz = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hy
  store double %i.hw, ptr %i.hz, align 8, !tbaa !85
  %i.ia = add nsw i64 %.145.i247, 2               ; 2 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !85
  %i.id = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.ia
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !50
  %i.if = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ie
  store double %i.ic, ptr %i.if, align 8, !tbaa !85
  %i.ig = add nsw i64 %.145.i247, 3               ; 2 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ig
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !85
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.ig
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !50
  %i.il = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ik
  store double %i.ii, ptr %i.il, align 8, !tbaa !85
  %i.im = add nsw i64 %.145.i247, 4               ; 2 uses
  %exitcond54.not.i248.3 = icmp eq i64 %i.im, %i.gv
  br i1 %exitcond54.not.i248.3, label %.preheader.i240, label %.lr.ph47.i246, !llvm.loop !193

.lr.ph49.i243:                                    ; preds = %.lr.ph49.i243.prol.loopexit, %.lr.ph49.i243
  %.248.i244 = phi i64 [ %i.jk, %.lr.ph49.i243 ], [ %.248.i244.unr, %.lr.ph49.i243.prol.loopexit ] ; 6 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %.248.i244
  %i.io = load i64, ptr %i.in, align 8, !tbaa !50
  %i.ip = getelementptr inbounds [8 x i8], ptr %4, i64 %i.io
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !85
  %i.ir = getelementptr inbounds [8 x i8], ptr %2, i64 %.248.i244
  store double %i.iq, ptr %i.ir, align 8, !tbaa !85
  %i.is = add nsw i64 %.248.i244, 1               ; 2 uses
  %i.it = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.is
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !50
  %i.iv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iu
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !85
  %i.ix = getelementptr inbounds [8 x i8], ptr %2, i64 %i.is
  store double %i.iw, ptr %i.ix, align 8, !tbaa !85
  %i.iy = add nsw i64 %.248.i244, 2               ; 2 uses
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.iy
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !50
  %i.jb = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !85
  %i.jd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.iy
  store double %i.jc, ptr %i.jd, align 8, !tbaa !85
  %i.je = add nsw i64 %.248.i244, 3               ; 2 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.je
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !50
  %i.jh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !85
  %i.jj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.je
  store double %i.ji, ptr %i.jj, align 8, !tbaa !85
  %i.jk = add nsw i64 %.248.i244, 4               ; 2 uses
  %exitcond55.not.i245.3 = icmp eq i64 %i.jk, %i.ft
  br i1 %exitcond55.not.i245.3, label %.loopexit.i241, label %.lr.ph49.i243, !llvm.loop !194

bb.f:                                             ; preds = %bb.a
  %.not.i253 = icmp eq ptr %2, null
  %or.cond = or i1 %.not225, %.not.i253
  br i1 %or.cond, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not15.i254 = icmp eq ptr %1, null
  %i.jl = icmp sgt i64 %i.n, 0                    ; 2 uses
  br i1 %.not15.i254, label %.preheader.i262, label %.preheader16.i255

.preheader16.i255:                                ; preds = %bb.g
  br i1 %i.jl, label %.lr.ph.i257.preheader, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit

.lr.ph.i257.preheader:                            ; preds = %.preheader16.i255
  %min.iters.check445 = icmp ult i64 %i.n, 8
  %7 = ptrtoaddr ptr %2 to i64
  %8 = ptrtoaddr ptr %1 to i64
  %i.jm = sub i64 %8, %7
  %diff.check443 = icmp ugt i64 %i.jm, -32
  %or.cond461 = or i1 %min.iters.check445, %diff.check443
  br i1 %or.cond461, label %.lr.ph.i257.preheader468, label %vector.ph446

vector.ph446:                                     ; preds = %.lr.ph.i257.preheader
  %n.vec447 = and i64 %i.n, 9223372036854775804   ; 4 uses
  %i.jn = shl i64 %n.vec447, 3                    ; 2 uses
  %i.jo = getelementptr i8, ptr %2, i64 %i.jn
  %i.jp = getelementptr i8, ptr %1, i64 %i.jn
  br label %vector.body448

vector.body448:                                   ; preds = %vector.body448, %vector.ph446
  %index449 = phi i64 [ 0, %vector.ph446 ], [ %index.next454, %vector.body448 ] ; 2 uses
  %i.jq = shl i64 %index449, 3                    ; 2 uses
  %next.gep450 = getelementptr i8, ptr %2, i64 %i.jq ; 2 uses
  %next.gep451 = getelementptr i8, ptr %1, i64 %i.jq ; 2 uses
  %i.jr = getelementptr i8, ptr %next.gep451, i64 16
  %wide.load452 = load <2 x double>, ptr %next.gep451, align 8, !tbaa !85
  %wide.load453 = load <2 x double>, ptr %i.jr, align 8, !tbaa !85
  %i.js = getelementptr i8, ptr %next.gep450, i64 16
  store <2 x double> %wide.load452, ptr %next.gep450, align 8, !tbaa !85
  store <2 x double> %wide.load453, ptr %i.js, align 8, !tbaa !85
  %index.next454 = add nuw i64 %index449, 4       ; 2 uses
  %i.jt = icmp eq i64 %index.next454, %n.vec447
  br i1 %i.jt, label %middle.block455, label %vector.body448, !llvm.loop !198

middle.block455:                                  ; preds = %vector.body448
  %cmp.n456 = icmp eq i64 %i.n, %n.vec447
  br i1 %cmp.n456, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit, label %.lr.ph.i257.preheader468

.lr.ph.i257.preheader468:                         ; preds = %.lr.ph.i257.preheader, %middle.block455
  %.020.i258.ph = phi i64 [ 0, %.lr.ph.i257.preheader ], [ %n.vec447, %middle.block455 ] ; 4 uses
  %.01019.i259.ph = phi ptr [ %2, %.lr.ph.i257.preheader ], [ %i.jo, %middle.block455 ] ; 2 uses
  %.01218.i260.ph = phi ptr [ %1, %.lr.ph.i257.preheader ], [ %i.jp, %middle.block455 ] ; 2 uses
  %i.ju = sub nsw i64 %i.n, %.020.i258.ph
  %xtraiter490 = and i64 %i.ju, 7                 ; 2 uses
  %lcmp.mod491.not = icmp eq i64 %xtraiter490, 0
  br i1 %lcmp.mod491.not, label %.lr.ph.i257.prol.loopexit, label %.lr.ph.i257.prol

.lr.ph.i257.prol:                                 ; preds = %.lr.ph.i257.preheader468, %.lr.ph.i257.prol
  %.020.i258.prol = phi i64 [ %i.jy, %.lr.ph.i257.prol ], [ %.020.i258.ph, %.lr.ph.i257.preheader468 ]
  %.01019.i259.prol = phi ptr [ %i.jx, %.lr.ph.i257.prol ], [ %.01019.i259.ph, %.lr.ph.i257.preheader468 ] ; 2 uses
  %.01218.i260.prol = phi ptr [ %i.jv, %.lr.ph.i257.prol ], [ %.01218.i260.ph, %.lr.ph.i257.preheader468 ] ; 2 uses
  %prol.iter492 = phi i64 [ %prol.iter492.next, %.lr.ph.i257.prol ], [ 0, %.lr.ph.i257.preheader468 ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.01218.i260.prol, i64 8 ; 2 uses
  %i.jw = load double, ptr %.01218.i260.prol, align 8, !tbaa !85
  %i.jx = getelementptr inbounds nuw i8, ptr %.01019.i259.prol, i64 8 ; 2 uses
  store double %i.jw, ptr %.01019.i259.prol, align 8, !tbaa !85
  %i.jy = add nuw nsw i64 %.020.i258.prol, 1      ; 2 uses
  %prol.iter492.next = add i64 %prol.iter492, 1   ; 2 uses
  %prol.iter492.cmp.not = icmp eq i64 %prol.iter492.next, %xtraiter490
  br i1 %prol.iter492.cmp.not, label %.lr.ph.i257.prol.loopexit, label %.lr.ph.i257.prol, !llvm.loop !199

.lr.ph.i257.prol.loopexit:                        ; preds = %.lr.ph.i257.prol, %.lr.ph.i257.preheader468
  %.020.i258.unr = phi i64 [ %.020.i258.ph, %.lr.ph.i257.preheader468 ], [ %i.jy, %.lr.ph.i257.prol ]
  %.01019.i259.unr = phi ptr [ %.01019.i259.ph, %.lr.ph.i257.preheader468 ], [ %i.jx, %.lr.ph.i257.prol ]
  %.01218.i260.unr = phi ptr [ %.01218.i260.ph, %.lr.ph.i257.preheader468 ], [ %i.jv, %.lr.ph.i257.prol ]
  %i.jz = sub nsw i64 %.020.i258.ph, %i.n
  %i.ka = icmp ugt i64 %i.jz, -8
  br i1 %i.ka, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit, label %.lr.ph.i257

.preheader.i262:                                  ; preds = %bb.g
  br i1 %i.jl, label %.lr.ph23.preheader.i263, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit

.lr.ph23.preheader.i263:                          ; preds = %.preheader.i262
  %i.kb = shl nuw i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %2, i8 0, i64 %i.kb, i1 false), !tbaa !85
  br label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit

.lr.ph.i257:                                      ; preds = %.lr.ph.i257.prol.loopexit, %.lr.ph.i257
  %.020.i258 = phi i64 [ %i.la, %.lr.ph.i257 ], [ %.020.i258.unr, %.lr.ph.i257.prol.loopexit ]
  %.01019.i259 = phi ptr [ %i.kz, %.lr.ph.i257 ], [ %.01019.i259.unr, %.lr.ph.i257.prol.loopexit ] ; 9 uses
  %.01218.i260 = phi ptr [ %i.kx, %.lr.ph.i257 ], [ %.01218.i260.unr, %.lr.ph.i257.prol.loopexit ] ; 9 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 8
  %i.kd = load double, ptr %.01218.i260, align 8, !tbaa !85
  %i.ke = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 8
  store double %i.kd, ptr %.01019.i259, align 8, !tbaa !85
  %i.kf = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 16
  %i.kg = load double, ptr %i.kc, align 8, !tbaa !85
  %i.kh = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 16
  store double %i.kg, ptr %i.ke, align 8, !tbaa !85
  %i.ki = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 24
  %i.kj = load double, ptr %i.kf, align 8, !tbaa !85
  %i.kk = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 24
  store double %i.kj, ptr %i.kh, align 8, !tbaa !85
  %i.kl = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 32
  %i.km = load double, ptr %i.ki, align 8, !tbaa !85
  %i.kn = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 32
  store double %i.km, ptr %i.kk, align 8, !tbaa !85
  %i.ko = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 40
  %i.kp = load double, ptr %i.kl, align 8, !tbaa !85
  %i.kq = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 40
  store double %i.kp, ptr %i.kn, align 8, !tbaa !85
  %i.kr = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 48
  %i.ks = load double, ptr %i.ko, align 8, !tbaa !85
  %i.kt = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 48
  store double %i.ks, ptr %i.kq, align 8, !tbaa !85
  %i.ku = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 56
  %i.kv = load double, ptr %i.kr, align 8, !tbaa !85
  %i.kw = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 56
  store double %i.kv, ptr %i.kt, align 8, !tbaa !85
  %i.kx = getelementptr inbounds nuw i8, ptr %.01218.i260, i64 64
  %i.ky = load double, ptr %i.ku, align 8, !tbaa !85
  %i.kz = getelementptr inbounds nuw i8, ptr %.01019.i259, i64 64
  store double %i.ky, ptr %i.kw, align 8, !tbaa !85
  %i.la = add nuw nsw i64 %.020.i258, 8           ; 2 uses
  %exitcond.not.i261.7 = icmp eq i64 %i.la, %i.n
  br i1 %exitcond.not.i261.7, label %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit, label %.lr.ph.i257, !llvm.loop !200

_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit: ; preds = %.loopexit.i241, %.loopexit.i, %.lr.ph.i257.prol.loopexit, %.lr.ph.i257, %middle.block455, %.lr.ph23.preheader.i263, %.preheader.i262, %.preheader16.i255, %bb.e, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, %bb.f
  %i.lb = load i32, ptr %0, align 8, !tbaa !228
  switch i32 %i.lb, label %_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit [
    i32 0, label %bb.h
    i32 2, label %bb.m
    i32 1, label %bb.m
  ]

bb.h:                                             ; preds = %_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !229
  %i.le = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 6 uses
  %i.lg = icmp sgt i64 %i.k, 0
  br i1 %i.lg, label %.lr.ph41.preheader.i, label %_ZN6casadi17casadi_regularizeIdEEvPKxPT_S3_.exit

.lr.ph41.preheader.i:                             ; preds = %bb.h
  %.pre.i265 = load i64, ptr %i.le, align 8, !tbaa !50 ; 2 uses
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %._crit_edge.i266, %.lr.ph41.preheader.i
  %i.lh = phi i64 [ %i.lk, %._crit_edge.i266 ], [ %.pre.i265, %.lr.ph41.preheader.i ] ; 7 uses
  %.039.i = phi double [ %.1.i, %._crit_edge.i266 ], [ 0.000000e+00, %.lr.ph41.preheader.i ]
  %.03238.i = phi i64 [ %i.li, %._crit_edge.i266 ], [ 0, %.lr.ph41.preheader.i ] ; 5 uses
  %i.li = add nuw nsw i64 %.03238.i, 1            ; 3 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.li
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !50 ; 5 uses
  %i.ll = icmp slt i64 %i.lh, %i.lk
  br i1 %i.ll, label %.lr.ph.i267.preheader, label %._crit_edge.i266

.lr.ph.i267.preheader:                            ; preds = %.lr.ph41.i
  %i.lm = sub i64 %i.lk, %i.lh
  %.neg = add i64 %i.lh, 1
  %xtraiter535 = and i64 %i.lm, 1
  %lcmp.mod536.not = icmp eq i64 %xtraiter535, 0
  br i1 %lcmp.mod536.not, label %.lr.ph.i267.prol.loopexit, label %.lr.ph.i267.prol

.lr.ph.i267.prol:                                 ; preds = %.lr.ph.i267.preheader
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lh
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !50
  %i.lp = icmp eq i64 %i.lo, %.03238.i            ; 2 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lh
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !85 ; 2 uses
  %i.ls = tail call double @llvm.fabs.f64(double %i.lr)
  %.130.i.prol = select i1 %i.lp, double %i.lr, double 0.000000e+00 ; 2 uses
  %.128.i.prol = select i1 %i.lp, double 0.000000e+00, double %i.ls ; 2 uses
  %i.lt = add nsw i64 %i.lh, 1
  br label %.lr.ph.i267.prol.loopexit

.lr.ph.i267.prol.loopexit:                        ; preds = %.lr.ph.i267.prol, %.lr.ph.i267.preheader
  %.130.i.lcssa.unr = phi double [ poison, %.lr.ph.i267.preheader ], [ %.130.i.prol, %.lr.ph.i267.prol ]
  %.128.i.lcssa.unr = phi double [ poison, %.lr.ph.i267.preheader ], [ %.128.i.prol, %.lr.ph.i267.prol ]
  %.02735.i.unr = phi double [ 0.000000e+00, %.lr.ph.i267.preheader ], [ %.128.i.prol, %.lr.ph.i267.prol ]
  %.02934.i.unr = phi double [ 0.000000e+00, %.lr.ph.i267.preheader ], [ %.130.i.prol, %.lr.ph.i267.prol ]
  %.03133.i.unr = phi i64 [ %i.lh, %.lr.ph.i267.preheader ], [ %i.lt, %.lr.ph.i267.prol ]
  %i.lu = icmp eq i64 %i.lk, %.neg
  br i1 %i.lu, label %._crit_edge.i266.loopexit, label %.lr.ph.i267

.lr.ph.i267:                                      ; preds = %.lr.ph.i267.prol.loopexit, %.lr.ph.i267
  %.02735.i = phi double [ %.128.i.1, %.lr.ph.i267 ], [ %.02735.i.unr, %.lr.ph.i267.prol.loopexit ] ; 2 uses
  %.02934.i = phi double [ %.130.i.1, %.lr.ph.i267 ], [ %.02934.i.unr, %.lr.ph.i267.prol.loopexit ]
  %.03133.i = phi i64 [ %i.mk, %.lr.ph.i267 ], [ %.03133.i.unr, %.lr.ph.i267.prol.loopexit ] ; 4 uses
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %.03133.i
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !50
  %i.lx = icmp eq i64 %i.lw, %.03238.i            ; 2 uses
  %i.ly = getelementptr inbounds [8 x i8], ptr %2, i64 %.03133.i
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !85 ; 2 uses
  %i.ma = tail call double @llvm.fabs.f64(double %i.lz)
  %i.mb = fadd double %.02735.i, %i.ma
  %.130.i = select i1 %i.lx, double %i.lz, double %.02934.i
  %.128.i = select i1 %i.lx, double %.02735.i, double %i.mb ; 2 uses
  %i.mc = add nsw i64 %.03133.i, 1                ; 2 uses
  %i.md = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.mc
  %i.me = load i64, ptr %i.md, align 8, !tbaa !50
  %i.mf = icmp eq i64 %i.me, %.03238.i            ; 2 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mc
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !85 ; 2 uses
  %i.mi = tail call double @llvm.fabs.f64(double %i.mh)
  %i.mj = fadd double %.128.i, %i.mi
  %.130.i.1 = select i1 %i.mf, double %i.mh, double %.130.i ; 2 uses
  %.128.i.1 = select i1 %i.mf, double %.128.i, double %i.mj ; 2 uses
  %i.mk = add nsw i64 %.03133.i, 2                ; 2 uses
  %exitcond.not.i268.1 = icmp eq i64 %i.mk, %i.lk
  br i1 %exitcond.not.i268.1, label %._crit_edge.i266.loopexit, label %.lr.ph.i267, !llvm.loop !201

._crit_edge.i266.loopexit:                        ; preds = %.lr.ph.i267, %.lr.ph.i267.prol.loopexit
  %.130.i.lcssa = phi double [ %.130.i.lcssa.unr, %.lr.ph.i267.prol.loopexit ], [ %.130.i.1, %.lr.ph.i267 ]
  %.128.i.lcssa = phi double [ %.128.i.lcssa.unr, %.lr.ph.i267.prol.loopexit ], [ %.128.i.1, %.lr.ph.i267 ]
  %i.ml = fsub double %.130.i.lcssa, %.128.i.lcssa
  br label %._crit_edge.i266

end_hunk_1
