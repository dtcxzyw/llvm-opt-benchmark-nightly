Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/fmu_function?download=true
inline.NumInlined: 4370
inline.NumDeleted: 1014
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNK6casadi11FmuFunction4evalEPPKdPPdPxS4_Pv:bb.a
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #26
          to label %bb.cm unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

bb.l:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.m:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

bb.n:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

bb.o:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.j, %bb.i
  %.0136 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %6, align 8, !tbaa !11     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.n = load i64, ptr %i.l, align 8, !tbaa !17
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.i, %bb.o ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.p ] ; 2 uses
  %.1137 = phi i1 [ true, %bb.o ], [ %.0136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0136, %bb.p ] ; 2 uses
  %i.p = load ptr, ptr %11, align 8, !tbaa !11    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !17
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.h, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.n ], [ %.1137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %.1137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.u = load ptr, ptr %12, align 8, !tbaa !11    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %i.x = load i64, ptr %i.v, align 8, !tbaa !17
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.m ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ] ; 2 uses
  %i.z = load ptr, ptr %13, align 8, !tbaa !11    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.l ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.l ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ae = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !17
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.e, %bb.k ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.k ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ] ; 2 uses
  %i.aj = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  %i.ao = load ptr, ptr %9, align 8, !tbaa !11    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread: ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %9, align 8, !tbaa !11    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread
  %i.av = load i64, ptr %i.at, align 8, !tbaa !17
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !17
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ay) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.5, label %bb.q, label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.5, label %bb.q, label %bb.cl

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.thread
  %.pn.pn.pn.pn.pn.pn.pn327.ph = phi { ptr, i32 } [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.thread ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %.pn.pn.pn.pn.pn.pn.pn327 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %.pn.pn.pn.pn.pn.pn.pn327.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.c) #25
  br label %bb.cl

bb.r:                                             ; preds = %bb.a
  tail call void @_ZNK6casadi16FunctionInternal5setupEPvPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !174 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !175 ; 5 uses
  %.not400 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not400, label %_ZSt4fillIPddEvT_S1_RKT0_.exit210, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = sdiv exact i64 %i.bf, 56                ; 3 uses
  %xtraiter = and i64 %i.bg, 1
  %20 = icmp eq i64 %i.bf, 56
  br i1 %20, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bg, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.0127361.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bu, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0128360.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %.1129.1, %._crit_edge.unr-lcssa ] ; 5 uses
  %.0130359.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %.1131.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %.0132358.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %.1133.1, %._crit_edge.unr-lcssa ] ; 5 uses
  %.0134357.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %.1135.1, %._crit_edge.unr-lcssa ] ; 5 uses
  %lcmp.mod597 = trunc i64 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod597)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0127361.epil.init
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !351
  %.not180.epil = icmp eq ptr %i.bi, null
  br i1 %.not180.epil, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %.lr.ph.epil.preheader
  %i.bj = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %.0127361.epil.init
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !190
  switch i32 %i.bk, label %._crit_edge [
    i32 3, label %bb.w
    i32 4, label %bb.w
    i32 1, label %bb.v
    i32 2, label %bb.u
    i32 7, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %._crit_edge

bb.u:                                             ; preds = %bb.s
  br label %._crit_edge

bb.v:                                             ; preds = %bb.s
  br label %._crit_edge

bb.w:                                             ; preds = %bb.s, %bb.s
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %._crit_edge.unr-lcssa
  %.1135.lcssa = phi i1 [ %.1135.1, %._crit_edge.unr-lcssa ], [ %.0134357.epil.init, %bb.s ], [ true, %bb.w ], [ %.0134357.epil.init, %bb.v ], [ %.0134357.epil.init, %bb.u ], [ %.0134357.epil.init, %bb.t ], [ %.0134357.epil.init, %.lr.ph.epil.preheader ] ; 5 uses
  %.1133.lcssa = phi i1 [ %.1133.1, %._crit_edge.unr-lcssa ], [ %.0132358.epil.init, %bb.s ], [ %.0132358.epil.init, %bb.w ], [ true, %bb.v ], [ %.0132358.epil.init, %bb.u ], [ %.0132358.epil.init, %bb.t ], [ %.0132358.epil.init, %.lr.ph.epil.preheader ] ; 4 uses
  %.1131.lcssa = phi i1 [ %.1131.1, %._crit_edge.unr-lcssa ], [ %.0130359.epil.init, %bb.s ], [ %.0130359.epil.init, %bb.w ], [ %.0130359.epil.init, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ %.0130359.epil.init, %.lr.ph.epil.preheader ] ; 5 uses
  %.1129.lcssa = phi i1 [ %.1129.1, %._crit_edge.unr-lcssa ], [ %.0128360.epil.init, %bb.s ], [ %.0128360.epil.init, %bb.w ], [ %.0128360.epil.init, %bb.v ], [ %.0128360.epil.init, %bb.u ], [ true, %bb.t ], [ %.0128360.epil.init, %.lr.ph.epil.preheader ]
  br i1 %.1135.lcssa, label %bb.ai, label %_ZSt4fillIPddEvT_S1_RKT0_.exit

.lr.ph:                                           ; preds = %bb.ah, %.lr.ph.preheader.new
  %.0127361 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bu, %bb.ah ] ; 4 uses
  %.0128360 = phi i1 [ false, %.lr.ph.preheader.new ], [ %.1129.1, %bb.ah ] ; 5 uses
  %.0130359 = phi i1 [ false, %.lr.ph.preheader.new ], [ %.1131.1, %bb.ah ] ; 4 uses
  %.0132358 = phi i1 [ false, %.lr.ph.preheader.new ], [ %.1133.1, %bb.ah ] ; 5 uses
  %.0134357 = phi i1 [ false, %.lr.ph.preheader.new ], [ %.1135.1, %bb.ah ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.ah ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0127361
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !351
  %.not180 = icmp eq ptr %i.bm, null
  br i1 %.not180, label %.lr.ph.1, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %.0127361
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !190
  switch i32 %i.bo, label %.lr.ph.1 [
    i32 3, label %bb.y
    i32 4, label %bb.y
    i32 1, label %bb.z
    i32 2, label %bb.aa
    i32 7, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  br label %.lr.ph.1

bb.z:                                             ; preds = %bb.x
  br label %.lr.ph.1

bb.aa:                                            ; preds = %bb.x
  br label %.lr.ph.1

bb.ab:                                            ; preds = %bb.x
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.x, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.1135 = phi i1 [ %.0134357, %bb.x ], [ true, %bb.y ], [ %.0134357, %bb.z ], [ %.0134357, %bb.aa ], [ %.0134357, %bb.ab ], [ %.0134357, %.lr.ph ] ; 5 uses
  %.1133 = phi i1 [ %.0132358, %bb.x ], [ %.0132358, %bb.y ], [ true, %bb.z ], [ %.0132358, %bb.aa ], [ %.0132358, %bb.ab ], [ %.0132358, %.lr.ph ] ; 5 uses
  %.1131 = phi i1 [ %.0130359, %bb.x ], [ %.0130359, %bb.y ], [ %.0130359, %bb.z ], [ true, %bb.aa ], [ true, %bb.ab ], [ %.0130359, %.lr.ph ] ; 4 uses
  %.1129 = phi i1 [ %.0128360, %bb.x ], [ %.0128360, %bb.y ], [ %.0128360, %bb.z ], [ %.0128360, %bb.aa ], [ true, %bb.ab ], [ %.0128360, %.lr.ph ] ; 5 uses
  %i.bp = or disjoint i64 %.0127361, 1            ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !351
  %.not180.1 = icmp eq ptr %i.br, null
  br i1 %.not180.1, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.1
  %i.bs = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %i.bp
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !190
  switch i32 %i.bt, label %bb.ah [
    i32 3, label %bb.ag
    i32 4, label %bb.ag
    i32 1, label %bb.af
    i32 2, label %bb.ae
    i32 7, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac, %bb.ac
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %.lr.ph.1
  %.1135.1 = phi i1 [ %.1135, %bb.ac ], [ true, %bb.ag ], [ %.1135, %bb.af ], [ %.1135, %bb.ae ], [ %.1135, %bb.ad ], [ %.1135, %.lr.ph.1 ] ; 3 uses
  %.1133.1 = phi i1 [ %.1133, %bb.ac ], [ %.1133, %bb.ag ], [ true, %bb.af ], [ %.1133, %bb.ae ], [ %.1133, %bb.ad ], [ %.1133, %.lr.ph.1 ] ; 3 uses
  %.1131.1 = phi i1 [ %.1131, %bb.ac ], [ %.1131, %bb.ag ], [ %.1131, %bb.af ], [ true, %bb.ae ], [ true, %bb.ad ], [ %.1131, %.lr.ph.1 ] ; 3 uses
  %.1129.1 = phi i1 [ %.1129, %bb.ac ], [ %.1129, %bb.ag ], [ %.1129, %bb.af ], [ %.1129, %bb.ae ], [ true, %bb.ad ], [ %.1129, %.lr.ph.1 ] ; 3 uses
  %i.bu = add nuw i64 %.0127361, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !471

bb.ai:                                            ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.bw = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
  %i.bx = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bw ; 3 uses
  %i.by = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv) ; 2 uses
  %.idx = shl i64 %i.by, 3                        ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %4, i64 %.idx
  %.not6.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not6.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ai
  %i.ca = add i64 %.idx, -8                       ; 2 uses
  %i.cb = lshr exact i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ca, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader592, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.cc, 4611686018427387900     ; 3 uses
  %i.cd = shl i64 %n.vec, 3
  %i.ce = getelementptr i8, ptr %4, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %4, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> splat (double +qnan), ptr %next.gep, align 8, !tbaa !209
  store <2 x double> splat (double +qnan), ptr %i.cg, align 8, !tbaa !209
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !472

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader592

.lr.ph.i.i.i.preheader592:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.07.i.i.i.ph = phi ptr [ %4, %.lr.ph.i.i.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader592, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader592 ] ; 2 uses
  store double +qnan, ptr %.07.i.i.i, align 8, !tbaa !209
  %i.ci = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ci, %i.bz
  br i1 %.not.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !473

_ZSt4fillIPddEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %bb.ai, %._crit_edge
  %.0320 = phi ptr [ %4, %._crit_edge ], [ %i.bx, %bb.ai ], [ %i.bx, %middle.block ], [ %i.bx, %.lr.ph.i.i.i ] ; 6 uses
  %.0124 = phi ptr [ null, %._crit_edge ], [ %4, %bb.ai ], [ %4, %middle.block ], [ %4, %.lr.ph.i.i.i ] ; 4 uses
  br i1 %.1131.lcssa, label %bb.aj, label %.loopexit347

bb.aj:                                            ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 6 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !204
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 6 uses
  %i.cm = tail call noundef i64 @_ZNK6casadi3Fmu5n_outEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
  %i.cn = mul i64 %i.cm, %i.ck
  %i.co = getelementptr [8 x i8], ptr %.0320, i64 %i.cn ; 4 uses
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !204
  %i.cq = tail call noundef i64 @_ZNK6casadi3Fmu4n_inEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
  %i.cr = mul i64 %i.cq, %i.cp
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cr ; 2 uses
  %i.ct = load i64, ptr %i.cj, align 8, !tbaa !204
  %i.cu = tail call noundef i64 @_ZNK6casadi3Fmu5n_outEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
  %i.cv = mul i64 %i.cu, %i.ct                    ; 2 uses
  %.not5.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPdiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i199.preheader

.lr.ph.i.i.i199.preheader:                        ; preds = %bb.aj
  %.idx339 = shl i64 %i.cv, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0320, i8 0, i64 %.idx339, i1 false), !tbaa !209
  br label %_ZSt4fillIPdiEvT_S1_RKT0_.exit

_ZSt4fillIPdiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i199.preheader, %bb.aj
  %i.cw = load i64, ptr %i.cj, align 8, !tbaa !204
  %i.cx = tail call noundef i64 @_ZNK6casadi3Fmu4n_inEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
  %i.cy = mul i64 %i.cx, %i.cw                    ; 2 uses
  %.not5.i.i.i201 = icmp eq i64 %i.cy, 0
  br i1 %.not5.i.i.i201, label %_ZSt4fillIPdiEvT_S1_RKT0_.exit205, label %.lr.ph.i.i.i202.preheader

.lr.ph.i.i.i202.preheader:                        ; preds = %_ZSt4fillIPdiEvT_S1_RKT0_.exit
  %.idx340 = shl i64 %i.cy, 3
end_hunk_0
begin_hunk_1_@_ZNK6casadi11FmuFunction9eval_taskEPNS_9FmuMemoryExxbbbbb:bb.a
  %i.ay = icmp ult i64 %i.at, %i.ax
  br i1 %i.ay, label %bb.e, label %._crit_edge, !llvm.loop !550

bb.i:                                             ; preds = %._crit_edge
  br i1 %4, label %.preheader689, label %.loopexit690

.preheader689:                                    ; preds = %bb.i
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !174 ; 2 uses
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !175 ; 2 uses
  %.not1035 = icmp eq ptr %i.az, %i.ba
  br i1 %.not1035, label %.loopexit690, label %.lr.ph949

.lr.ph949:                                        ; preds = %.preheader689
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph949, %bb.m
  %i.bc = phi ptr [ %i.ba, %.lr.ph949 ], [ %i.bm, %bb.m ] ; 3 uses
  %i.bd = phi ptr [ %i.az, %.lr.ph949 ], [ %i.bn, %bb.m ] ; 2 uses
  %.0384948 = phi i64 [ 0, %.lr.ph949 ], [ %i.bo, %bb.m ] ; 3 uses
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !482
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.0384948
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !351 ; 2 uses
  %.not435 = icmp eq ptr %i.bg, null
  br i1 %.not435, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %.0384948 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !190
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !234
  tail call void @_ZNK6casadi3Fmu3getEPNS_9FmuMemoryEmPd(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.bl, ptr noundef nonnull %i.bg)
  %.pre1302.a = load ptr, ptr %i.i, align 8, !tbaa !174
  %.pre1303.a = load ptr, ptr %i.h, align 8, !tbaa !175
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.bm = phi ptr [ %i.bc, %bb.j ], [ %i.bc, %bb.k ], [ %.pre1303.a, %bb.l ] ; 2 uses
  %i.bn = phi ptr [ %i.bd, %bb.j ], [ %i.bd, %bb.k ], [ %.pre1302.a, %bb.l ] ; 2 uses
  %i.bo = add nuw i64 %.0384948, 1                ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 56
  %i.bt = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.j, label %.loopexit690, !llvm.loop !551

.loopexit690:                                     ; preds = %bb.m, %.preheader689, %bb.i
  br i1 %6, label %bb.n, label %.thread

bb.n:                                             ; preds = %.loopexit690
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !203 ; 2 uses
  %i.bw = mul nsw i64 %i.bv, %2
  %i.bx = sdiv i64 %i.bw, %3                      ; 4 uses
  %i.by = add nsw i64 %2, 1                       ; 2 uses
  %i.bz = mul nsw i64 %i.bv, %i.by
  %i.ca = sdiv i64 %i.bz, %3                      ; 3 uses
  %.not406959 = icmp slt i64 %i.bx, %i.ca
  br i1 %.not406959, label %.lr.ph962, label %.thread

.lr.ph962:                                        ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.cc = sub nsw i64 %i.ca, %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 304
  %invariant.op = sub i64 1, %i.bx
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph962, %._crit_edge958
  %.0383960 = phi i64 [ %i.bx, %.lr.ph962 ], [ %i.em, %._crit_edge958 ] ; 4 uses
  %i.cj = load i8, ptr %i.cb, align 8, !tbaa !211, !range !201, !noundef !202
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.reass.reass = add i64 %.0383960, %invariant.op
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.147, i64 noundef %i.by, i64 noundef %3, i64 noundef %.reass.reass, i64 noundef %i.cc)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !172 ; 2 uses
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %.not1036 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not1036, label %.preheader687, label %.lr.ph952

.preheader687:                                    ; preds = %bb.u, %bb.q
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !174 ; 2 uses
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !175 ; 2 uses
  %.not1037 = icmp eq ptr %i.cn, %i.co
  br i1 %.not1037, label %._crit_edge955, label %.lr.ph954

.lr.ph952:                                        ; preds = %bb.q, %bb.u
  %i.cp = phi ptr [ %i.dj, %bb.u ], [ %i.cm, %bb.q ] ; 3 uses
  %i.cq = phi ptr [ %i.dk, %bb.u ], [ %i.cl, %bb.q ] ; 2 uses
  %.0374950 = phi i64 [ %i.dl, %bb.u ], [ 0, %bb.q ] ; 6 uses
  %i.cr = load ptr, ptr %i.cd, align 8, !tbaa !481
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.0374950
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !351 ; 2 uses
  %.not434 = icmp eq ptr %i.ct, null
  br i1 %.not434, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph952
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %.0374950 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !206
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.cf, align 8, !tbaa !249
  %i.cy = load ptr, ptr %i.ce, align 8, !tbaa !248 ; 2 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3                 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.0374950, %i.dc
  br i1 %.not.i.i.i.i, label %_ZNK6casadi16FunctionInternal8size1_inEx.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.240, i64 noundef %.0374950, i64 noundef %i.dc) #26
  unreachable

_ZNK6casadi16FunctionInternal8size1_inEx.exit:    ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !330
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.0374950
  %i.dg = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
  %i.dh = mul nsw i64 %i.dg, %.0383960
  %i.di = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.dh
  tail call void @_ZNK6casadi3Fmu7set_fwdEPNS_9FmuMemoryEmPKd(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.de, ptr noundef nonnull %i.di)
  %.pre1304.a = load ptr, ptr %i.c, align 8, !tbaa !172
  %.pre1305.a = load ptr, ptr %i.b, align 8, !tbaa !173
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph952, %bb.r, %_ZNK6casadi16FunctionInternal8size1_inEx.exit
  %i.dj = phi ptr [ %i.cp, %.lr.ph952 ], [ %i.cp, %bb.r ], [ %.pre1305.a, %_ZNK6casadi16FunctionInternal8size1_inEx.exit ] ; 2 uses
  %i.dk = phi ptr [ %i.cq, %.lr.ph952 ], [ %i.cq, %bb.r ], [ %.pre1304.a, %_ZNK6casadi16FunctionInternal8size1_inEx.exit ] ; 2 uses
  %i.dl = add nuw i64 %.0374950, 1                ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 4
  %i.dq = icmp ult i64 %i.dl, %i.dp
  br i1 %i.dq, label %.lr.ph952, label %.preheader687, !llvm.loop !552

._crit_edge955:                                   ; preds = %bb.x, %.preheader687
  %i.dr = tail call noundef i32 @_ZNK6casadi3Fmu8eval_fwdEPNS_9FmuMemoryEb(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %1, i1 noundef zeroext false)
  %.not404 = icmp eq i32 %i.dr, 0
  br i1 %.not404, label %.preheader686, label %.loopexit681

.preheader686:                                    ; preds = %._crit_edge955
  %i.ds = load ptr, ptr %i.i, align 8, !tbaa !174 ; 2 uses
  %i.dt = load ptr, ptr %i.h, align 8, !tbaa !175 ; 2 uses
  %.not1038 = icmp eq ptr %i.ds, %i.dt
  br i1 %.not1038, label %._crit_edge958, label %.lr.ph957

.lr.ph954:                                        ; preds = %.preheader687, %bb.x
  %i.du = phi ptr [ %i.ee, %bb.x ], [ %i.co, %.preheader687 ] ; 3 uses
  %i.dv = phi ptr [ %i.ef, %bb.x ], [ %i.cn, %.preheader687 ] ; 2 uses
  %.0373953 = phi i64 [ %i.eg, %bb.x ], [ 0, %.preheader687 ] ; 3 uses
  %i.dw = load ptr, ptr %i.cg, align 8, !tbaa !482
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.0373953
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !351
  %.not433 = icmp eq ptr %i.dy, null
  br i1 %.not433, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph954
  %i.dz = getelementptr inbounds nuw [56 x i8], ptr %i.du, i64 %.0373953 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !190
  %i.eb = icmp eq i32 %i.ea, 1
  br i1 %i.eb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !234
  tail call void @_ZNK6casadi3Fmu11request_fwdEPNS_9FmuMemoryEx(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.ed)
  %.pre1306.a = load ptr, ptr %i.i, align 8, !tbaa !174
  %.pre1307.a = load ptr, ptr %i.h, align 8, !tbaa !175
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph954, %bb.v, %bb.w
  %i.ee = phi ptr [ %i.du, %.lr.ph954 ], [ %i.du, %bb.v ], [ %.pre1307.a, %bb.w ] ; 2 uses
  %i.ef = phi ptr [ %i.dv, %.lr.ph954 ], [ %i.dv, %bb.v ], [ %.pre1306.a, %bb.w ] ; 2 uses
  %i.eg = add nuw i64 %.0373953, 1                ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = sdiv exact i64 %i.ej, 56
  %i.el = icmp ult i64 %i.eg, %i.ek
  br i1 %i.el, label %.lr.ph954, label %._crit_edge955, !llvm.loop !553

._crit_edge958:                                   ; preds = %bb.ab, %.preheader686
  %i.em = add i64 %.0383960, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.em, %i.ca
  br i1 %exitcond.not, label %.thread, label %bb.o, !llvm.loop !554

.lr.ph957:                                        ; preds = %.preheader686, %bb.ab
  %i.en = phi ptr [ %i.fh, %bb.ab ], [ %i.dt, %.preheader686 ] ; 3 uses
  %i.eo = phi ptr [ %i.fi, %bb.ab ], [ %i.ds, %.preheader686 ] ; 2 uses
  %.0372956 = phi i64 [ %i.fj, %bb.ab ], [ 0, %.preheader686 ] ; 6 uses
  %i.ep = load ptr, ptr %i.cg, align 8, !tbaa !482
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.0372956
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !351 ; 2 uses
  %.not405 = icmp eq ptr %i.er, null
  br i1 %.not405, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.lr.ph957
  %i.es = getelementptr inbounds nuw [56 x i8], ptr %i.en, i64 %.0372956 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !190
  %i.eu = icmp eq i32 %i.et, 1
  br i1 %i.eu, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ev = load ptr, ptr %i.ci, align 8, !tbaa !249
  %i.ew = load ptr, ptr %i.ch, align 8, !tbaa !248 ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 3                 ; 2 uses
  %.not.i.i.i.i439 = icmp ult i64 %.0372956, %i.fa
  br i1 %.not.i.i.i.i439, label %_ZNK6casadi16FunctionInternal9size1_outEx.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.240, i64 noundef %.0372956, i64 noundef %i.fa) #26
  unreachable

_ZNK6casadi16FunctionInternal9size1_outEx.exit:   ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !234
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.0372956
  %i.fe = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.fd)
  %i.ff = mul nsw i64 %i.fe, %.0383960
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.ff
  tail call void @_ZNK6casadi3Fmu7get_fwdEPNS_9FmuMemoryEmPd(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.fc, ptr noundef nonnull %i.fg)
  %.pre1308.a = load ptr, ptr %i.i, align 8, !tbaa !174
  %.pre1309.a = load ptr, ptr %i.h, align 8, !tbaa !175
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph957, %bb.y, %_ZNK6casadi16FunctionInternal9size1_outEx.exit
  %i.fh = phi ptr [ %i.en, %.lr.ph957 ], [ %i.en, %bb.y ], [ %.pre1309.a, %_ZNK6casadi16FunctionInternal9size1_outEx.exit ] ; 2 uses
  %i.fi = phi ptr [ %i.eo, %.lr.ph957 ], [ %i.eo, %bb.y ], [ %.pre1308.a, %_ZNK6casadi16FunctionInternal9size1_outEx.exit ] ; 2 uses
  %i.fj = add nuw i64 %.0372956, 1                ; 2 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fh to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = sdiv exact i64 %i.fm, 56
  %i.fo = icmp ult i64 %i.fj, %i.fn
  br i1 %i.fo, label %.lr.ph957, label %._crit_edge958, !llvm.loop !555

.thread:                                          ; preds = %._crit_edge958, %bb.n, %.loopexit690
  br i1 %5, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.thread
  br i1 %7, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1493
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !197, !range !201, !noundef !202
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.ft = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.fs)
  %i.fu = mul nsw i64 %i.ft, %2
  %i.fv = sdiv i64 %i.fu, %3                      ; 4 uses
  %i.fw = add nsw i64 %2, 1                       ; 2 uses
  %i.fx = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.fs)
  %i.fy = mul nsw i64 %i.fx, %i.fw
  %i.fz = sdiv i64 %i.fy, %3                      ; 3 uses
  %.not413986 = icmp slt i64 %i.fv, %i.fz
  br i1 %.not413986, label %.lr.ph989, label %.critedge

.lr.ph989:                                        ; preds = %bb.ae
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.gb = sub nsw i64 %i.fz, %i.fv
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 120
  %invariant.op2449 = sub i64 1, %i.fv
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph989, %.loopexit678
  %.0371987 = phi i64 [ %i.fv, %.lr.ph989 ], [ %i.lw, %.loopexit678 ] ; 3 uses
  %i.gq = load i8, ptr %i.ga, align 8, !tbaa !211, !range !201, !noundef !202
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.reass1704.reass = add i64 %.0371987, %invariant.op2449
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.148, i64 noundef %i.fw, i64 noundef %3, i64 noundef %.reass1704.reass, i64 noundef %i.gb)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  tail call void @_ZN6casadi14casadi_jac_preIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EEx(ptr noundef nonnull %i.gc, ptr noundef nonnull %i.gd, i64 noundef %.0371987)
  %i.gs = load i64, ptr %i.gd, align 8, !tbaa !556
  %i.gt = load ptr, ptr %i.ge, align 8, !tbaa !557
  %i.gu = load ptr, ptr %i.gf, align 8, !tbaa !558
  tail call void @_ZNK6casadi3Fmu7set_fwdEPNS_9FmuMemoryExPKxPKd(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %1, i64 noundef %i.gs, ptr noundef %i.gt, ptr noundef %i.gu)
  %i.gv = load i64, ptr %i.gg, align 8, !tbaa !559
  %i.gw = load ptr, ptr %i.gh, align 8, !tbaa !560
  %i.gx = load ptr, ptr %i.gi, align 8, !tbaa !561
  tail call void @_ZNK6casadi3Fmu11request_fwdEPNS_9FmuMemoryExPKxS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %1, i64 noundef %i.gv, ptr noundef %i.gw, ptr noundef %i.gx)
  %i.gy = tail call noundef i32 @_ZNK6casadi3Fmu8eval_fwdEPNS_9FmuMemoryEb(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %1, i1 noundef zeroext true)
  %.not412 = icmp eq i32 %i.gy, 0
  br i1 %.not412, label %bb.ai, label %.loopexit681

bb.ai:                                            ; preds = %bb.ah
  %i.gz = load i64, ptr %i.gg, align 8, !tbaa !559
  %i.ha = load ptr, ptr %i.gh, align 8, !tbaa !560
  %i.hb = load ptr, ptr %i.gj, align 8, !tbaa !562
  tail call void @_ZNK6casadi3Fmu7get_fwdEPNS_9FmuMemoryExPKxPd(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.gz, ptr noundef %i.ha, ptr noundef %i.hb)
  %i.hc = load i64, ptr %i.gg, align 8, !tbaa !563 ; 11 uses
  %i.hd = icmp sgt i64 %i.hc, 0
  br i1 %i.hd, label %.lr.ph.i, label %.loopexit680

.lr.ph.i:                                         ; preds = %bb.ai
  %i.he = load ptr, ptr %i.gk, align 8, !tbaa !491 ; 8 uses
  %i.hf = load ptr, ptr %i.gj, align 8, !tbaa !490 ; 8 uses
  %min.iters.check = icmp ult i64 %i.hc, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.hg = shl i64 %i.hc, 3                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hf, i64 %i.hg
  %scevgep1994 = getelementptr i8, ptr %i.he, i64 %i.hg
  %bound0 = icmp ult ptr %i.hf, %scevgep1994
  %bound1 = icmp ult ptr %i.he, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hc, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %index ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load = load <2 x double>, ptr %i.hh, align 8, !tbaa !209, !alias.scope !564
  %wide.load1995 = load <2 x double>, ptr %i.hi, align 8, !tbaa !209, !alias.scope !564
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %index ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %wide.load1996 = load <2 x double>, ptr %i.hj, align 8, !tbaa !209, !alias.scope !567, !noalias !564
  %wide.load1997 = load <2 x double>, ptr %i.hk, align 8, !tbaa !209, !alias.scope !567, !noalias !564
  %i.hl = fmul <2 x double> %wide.load, %wide.load1996
  %i.hm = fmul <2 x double> %wide.load1995, %wide.load1997
  store <2 x double> %i.hl, ptr %i.hj, align 8, !tbaa !209, !alias.scope !567, !noalias !564
  store <2 x double> %i.hm, ptr %i.hk, align 8, !tbaa !209, !alias.scope !567, !noalias !564
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hn = icmp eq i64 %index.next, %n.vec
  br i1 %i.hn, label %middle.block, label %vector.body, !llvm.loop !569

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hc, %n.vec
  br i1 %cmp.n, label %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.06.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.hc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.06.i.prol = phi i64 [ %i.ht, %scalar.ph.prol ], [ %.06.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.06.i.prol
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !209
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %.06.i.prol ; 2 uses
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !209
  %i.hs = fmul double %i.hp, %i.hr
  store double %i.hs, ptr %i.hq, align 8, !tbaa !209
  %i.ht = add nuw nsw i64 %.06.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !570

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.06.i.unr = phi i64 [ %.06.i.ph, %scalar.ph.preheader ], [ %i.ht, %scalar.ph.prol ]
  %i.hu = sub nsw i64 %.06.i.ph, %i.hc
  %i.hv = icmp ugt i64 %i.hu, -4
  br i1 %i.hv, label %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
end_hunk_1
begin_hunk_2_@_ZNK6casadi11FmuFunction9eval_taskEPNS_9FmuMemoryExxbbbbb:bb.a
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !209
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %.06.i ; 2 uses
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !209
  %i.ia = fmul double %i.hx, %i.hz
  store double %i.ia, ptr %i.hy, align 8, !tbaa !209
  %i.ib = add nuw nsw i64 %.06.i, 1               ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8, !tbaa !209
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.ib ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !209
  %i.ig = fmul double %i.id, %i.if
  store double %i.ig, ptr %i.ie, align 8, !tbaa !209
  %i.ih = add nuw nsw i64 %.06.i, 2               ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.ih
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !209
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.ih ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !209
  %i.im = fmul double %i.ij, %i.il
  store double %i.im, ptr %i.ik, align 8, !tbaa !209
  %i.in = add nuw nsw i64 %.06.i, 3               ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.in
  %i.ip = load double, ptr %i.io, align 8, !tbaa !209
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.in ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !209
  %i.is = fmul double %i.ip, %i.ir
  store double %i.is, ptr %i.iq, align 8, !tbaa !209
  %i.it = add nuw nsw i64 %.06.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.it, %i.hc
  br i1 %exitcond.not.i.3, label %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit, label %scalar.ph, !llvm.loop !571

_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br i1 %5, label %.lr.ph977, label %.loopexit680

.lr.ph977:                                        ; preds = %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit
  %i.iu = load ptr, ptr %i.gj, align 8, !tbaa !562 ; 5 uses
  %i.iv = load ptr, ptr %i.gl, align 8, !tbaa !485 ; 5 uses
  %i.iw = load ptr, ptr %i.gm, align 8, !tbaa !572 ; 5 uses
  %xtraiter2222.a = and i64 %i.hc, 3              ; 3 uses
  %i.ix = icmp ult i64 %i.hc, 4
  br i1 %i.ix, label %.epil.preheader, label %.lr.ph977.new

.lr.ph977.new:                                    ; preds = %.lr.ph977
  %unroll_iter = and i64 %i.hc, 9223372036854775804
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph977.new
  %.0370976 = phi i64 [ 0, %.lr.ph977.new ], [ %i.jv, %bb.aj ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph977.new ], [ %niter.next.3, %bb.aj ]
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %.0370976
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !209
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.0370976
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !43
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.jb
  store double %i.iz, ptr %i.jc, align 8, !tbaa !209
  %i.jd = or disjoint i64 %.0370976, 1            ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.jd
  %i.jf = load double, ptr %i.je, align 8, !tbaa !209
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jd
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !43
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.jh
  store double %i.jf, ptr %i.ji, align 8, !tbaa !209
  %i.jj = or disjoint i64 %.0370976, 2            ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.jj
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !209
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jj
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !43
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.jn
  store double %i.jl, ptr %i.jo, align 8, !tbaa !209
  %i.jp = or disjoint i64 %.0370976, 3            ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !209
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jp
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !43
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.jt
  store double %i.jr, ptr %i.ju, align 8, !tbaa !209
  %i.jv = add nuw nsw i64 %.0370976, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit680.loopexit.unr-lcssa, label %bb.aj, !llvm.loop !573

.loopexit680.loopexit.unr-lcssa:                  ; preds = %bb.aj
  %lcmp.mod2223.not = icmp eq i64 %xtraiter2222.a, 0
  br i1 %lcmp.mod2223.not, label %.loopexit680, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit680.loopexit.unr-lcssa, %.lr.ph977
  %.0370976.epil.init = phi i64 [ 0, %.lr.ph977 ], [ %i.jv, %.loopexit680.loopexit.unr-lcssa ]
  %lcmp.mod2224 = icmp ne i64 %xtraiter2222.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod2224)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.epil.preheader
  %.0370976.epil = phi i64 [ %.0370976.epil.init, %.epil.preheader ], [ %i.kb, %bb.ak ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ak ]
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %.0370976.epil
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !209
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.0370976.epil
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !43
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.jz
  store double %i.jx, ptr %i.ka, align 8, !tbaa !209
  %i.kb = add nuw nsw i64 %.0370976.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2222.a
  br i1 %epil.iter.cmp.not, label %.loopexit680, label %bb.ak, !llvm.loop !574

.loopexit680:                                     ; preds = %.loopexit680.loopexit.unr-lcssa, %bb.ak, %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit, %bb.ai
  br i1 %7, label %.preheader677, label %.loopexit678

.preheader677:                                    ; preds = %.loopexit680
  %i.kc = load i64, ptr %i.gn, align 8, !tbaa !204
  %i.kd = icmp sgt i64 %i.kc, 0
  br i1 %i.kd, label %.lr.ph985, label %.loopexit678

.lr.ph985:                                        ; preds = %.preheader677, %._crit_edge981
  %.0369984 = phi i64 [ %i.kz, %._crit_edge981 ], [ 0, %.preheader677 ] ; 3 uses
  %i.ke = tail call noundef i64 @_ZNK6casadi3Fmu5n_outEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.kf = tail call noundef i64 @_ZNK6casadi3Fmu4n_inEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.kg = load i64, ptr %i.gg, align 8, !tbaa !559 ; 5 uses
  %i.kh = icmp sgt i64 %i.kg, 0
  br i1 %i.kh, label %.lr.ph980, label %._crit_edge981

.lr.ph980:                                        ; preds = %.lr.ph985
  %i.ki = mul i64 %i.kf, %.0369984
  %i.kj = mul i64 %i.ke, %.0369984
  %i.kk = load ptr, ptr %i.go, align 8, !tbaa !483
  %i.kl = load ptr, ptr %i.gh, align 8, !tbaa !560 ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.kk, i64 %i.kj ; 3 uses
  %i.km = load ptr, ptr %i.gj, align 8, !tbaa !562 ; 3 uses
  %i.kn = load ptr, ptr %i.gp, align 8, !tbaa !484
  %i.ko = load ptr, ptr %i.gi, align 8, !tbaa !561 ; 3 uses
  %invariant.gep982 = getelementptr [8 x i8], ptr %i.kn, i64 %i.ki ; 3 uses
  %xtraiter2226 = and i64 %i.kg, 1
  %i.kp = icmp eq i64 %i.kg, 1
  br i1 %i.kp, label %.epil.preheader2225, label %.lr.ph980.new

.lr.ph980.new:                                    ; preds = %.lr.ph980
  %unroll_iter2230 = and i64 %i.kg, 9223372036854775806
  br label %bb.al

._crit_edge981.loopexit.unr-lcssa:                ; preds = %bb.al
  %lcmp.mod2228.not = icmp eq i64 %xtraiter2226, 0
  br i1 %lcmp.mod2228.not, label %._crit_edge981, label %.epil.preheader2225

.epil.preheader2225:                              ; preds = %._crit_edge981.loopexit.unr-lcssa, %.lr.ph980
  %.0368978.epil.init = phi i64 [ 0, %.lr.ph980 ], [ %i.lv, %._crit_edge981.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod2229 = trunc i64 %i.kg to i1
  tail call void @llvm.assume(i1 %lcmp.mod2229)
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %.0368978.epil.init
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !43
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.kr
  %i.ks = load double, ptr %gep.epil, align 8, !tbaa !209
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.0368978.epil.init
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !209
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.0368978.epil.init
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !43
  %gep983.epil = getelementptr [8 x i8], ptr %invariant.gep982, i64 %i.kw ; 2 uses
  %i.kx = load double, ptr %gep983.epil, align 8, !tbaa !209
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.ku, double %i.kx)
  store double %i.ky, ptr %gep983.epil, align 8, !tbaa !209
  br label %._crit_edge981

._crit_edge981:                                   ; preds = %.epil.preheader2225, %._crit_edge981.loopexit.unr-lcssa, %.lr.ph985
  %i.kz = add nuw nsw i64 %.0369984, 1            ; 2 uses
  %i.la = load i64, ptr %i.gn, align 8, !tbaa !204
  %i.lb = icmp slt i64 %i.kz, %i.la
  br i1 %i.lb, label %.lr.ph985, label %.loopexit678, !llvm.loop !575

bb.al:                                            ; preds = %bb.al, %.lr.ph980.new
  %.0368978 = phi i64 [ 0, %.lr.ph980.new ], [ %i.lv, %bb.al ] ; 5 uses
  %niter2231 = phi i64 [ 0, %.lr.ph980.new ], [ %niter2231.next.1, %bb.al ]
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %.0368978
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !43
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ld
  %i.le = load double, ptr %gep, align 8, !tbaa !209
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.0368978
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !209
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.0368978
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !43
  %gep983 = getelementptr [8 x i8], ptr %invariant.gep982, i64 %i.li ; 2 uses
  %i.lj = load double, ptr %gep983, align 8, !tbaa !209
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.le, double %i.lg, double %i.lj)
  store double %i.lk, ptr %gep983, align 8, !tbaa !209
  %i.ll = or disjoint i64 %.0368978, 1            ; 3 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.ll
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !43
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ln
  %i.lo = load double, ptr %gep.1, align 8, !tbaa !209
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.ll
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !209
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.ll
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !43
  %gep983.1 = getelementptr [8 x i8], ptr %invariant.gep982, i64 %i.ls ; 2 uses
  %i.lt = load double, ptr %gep983.1, align 8, !tbaa !209
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.lo, double %i.lq, double %i.lt)
  store double %i.lu, ptr %gep983.1, align 8, !tbaa !209
  %i.lv = add nuw nsw i64 %.0368978, 2            ; 2 uses
  %niter2231.next.1 = add nuw nsw i64 %niter2231, 2 ; 2 uses
  %niter2231.ncmp.1 = icmp eq i64 %niter2231.next.1, %unroll_iter2230
  br i1 %niter2231.ncmp.1, label %._crit_edge981.loopexit.unr-lcssa, label %bb.al, !llvm.loop !576

.loopexit678:                                     ; preds = %._crit_edge981, %.preheader677, %.loopexit680
  %i.lw = add i64 %.0371987, 1                    ; 2 uses
  %exitcond1292.not = icmp eq i64 %i.lw, %i.fz
  br i1 %exitcond1292.not, label %.critedge, label %bb.af, !llvm.loop !577

bb.am:                                            ; preds = %bb.ad
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !204 ; 2 uses
  %i.lz = mul nsw i64 %i.ly, %2
  %i.ma = sdiv i64 %i.lz, %3                      ; 4 uses
  %i.mb = add nsw i64 %2, 1                       ; 2 uses
  %i.mc = mul nsw i64 %i.ly, %i.mb
  %i.md = sdiv i64 %i.mc, %3                      ; 3 uses
  %.not409972 = icmp slt i64 %i.ma, %i.md
  br i1 %.not409972, label %.lr.ph975, label %.critedge

.lr.ph975:                                        ; preds = %bb.am
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.mf = sub nsw i64 %i.md, %i.ma
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 304
  %invariant.op2448 = sub i64 1, %i.ma
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph975, %._crit_edge971
  %.0367973 = phi i64 [ %i.ma, %.lr.ph975 ], [ %i.op, %._crit_edge971 ] ; 4 uses
  %i.mm = load i8, ptr %i.me, align 8, !tbaa !211, !range !201, !noundef !202
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.reass1702.reass.a = add i64 %.0367973, %invariant.op2448
  tail call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.149, i64 noundef %i.mb, i64 noundef %3, i64 noundef %.reass1702.reass.a, i64 noundef %i.mf)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.mo = load ptr, ptr %i.c, align 8, !tbaa !172 ; 2 uses
  %i.mp = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %.not1040 = icmp eq ptr %i.mo, %i.mp
  br i1 %.not1040, label %.preheader683, label %.lr.ph965

.preheader683:                                    ; preds = %bb.at, %bb.ap
  %i.mq = load ptr, ptr %i.i, align 8, !tbaa !174 ; 2 uses
  %i.mr = load ptr, ptr %i.h, align 8, !tbaa !175 ; 2 uses
  %.not1041 = icmp eq ptr %i.mq, %i.mr
  br i1 %.not1041, label %._crit_edge968, label %.lr.ph967

.lr.ph965:                                        ; preds = %bb.ap, %bb.at
  %i.ms = phi ptr [ %i.nm, %bb.at ], [ %i.mp, %bb.ap ] ; 3 uses
  %i.mt = phi ptr [ %i.nn, %bb.at ], [ %i.mo, %bb.ap ] ; 2 uses
  %.0366963 = phi i64 [ %i.no, %bb.at ], [ 0, %bb.ap ] ; 6 uses
  %i.mu = load ptr, ptr %i.mg, align 8, !tbaa !481
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %.0366963
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !351 ; 2 uses
  %.not411 = icmp eq ptr %i.mw, null
  br i1 %.not411, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph965
  %i.mx = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %.0366963 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !206
  %i.mz = icmp eq i32 %i.my, 2
  br i1 %i.mz, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.na = load ptr, ptr %i.mi, align 8, !tbaa !249
  %i.nb = load ptr, ptr %i.mh, align 8, !tbaa !248 ; 2 uses
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = ptrtoint ptr %i.nb to i64
  %i.ne = sub i64 %i.nc, %i.nd
  %i.nf = ashr exact i64 %i.ne, 3                 ; 2 uses
  %.not.i.i.i.i440 = icmp ult i64 %.0366963, %i.nf
  br i1 %.not.i.i.i.i440, label %_ZNK6casadi16FunctionInternal8size1_inEx.exit441, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.240, i64 noundef %.0366963, i64 noundef %i.nf) #26
  unreachable

_ZNK6casadi16FunctionInternal8size1_inEx.exit441: ; preds = %bb.ar
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !330
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.0366963
  %i.nj = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ni)
  %i.nk = mul nsw i64 %i.nj, %.0367973
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.nk
  tail call void @_ZNK6casadi3Fmu7set_adjEPNS_9FmuMemoryEmPKd(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.nh, ptr noundef nonnull %i.nl)
  %.pre1310.a = load ptr, ptr %i.c, align 8, !tbaa !172
  %.pre1311.a = load ptr, ptr %i.b, align 8, !tbaa !173
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph965, %bb.aq, %_ZNK6casadi16FunctionInternal8size1_inEx.exit441
  %i.nm = phi ptr [ %i.ms, %.lr.ph965 ], [ %i.ms, %bb.aq ], [ %.pre1311.a, %_ZNK6casadi16FunctionInternal8size1_inEx.exit441 ] ; 2 uses
  %i.nn = phi ptr [ %i.mt, %.lr.ph965 ], [ %i.mt, %bb.aq ], [ %.pre1310.a, %_ZNK6casadi16FunctionInternal8size1_inEx.exit441 ] ; 2 uses
  %i.no = add nuw i64 %.0366963, 1                ; 2 uses
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = ptrtoint ptr %i.nm to i64
  %i.nr = sub i64 %i.np, %i.nq
  %i.ns = ashr exact i64 %i.nr, 4
  %i.nt = icmp ult i64 %i.no, %i.ns
  br i1 %i.nt, label %.lr.ph965, label %.preheader683, !llvm.loop !578

._crit_edge968:                                   ; preds = %bb.aw, %.preheader683
  %i.nu = tail call noundef i32 @_ZNK6casadi3Fmu8eval_adjEPNS_9FmuMemoryE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %1)
  %.not407 = icmp eq i32 %i.nu, 0
  br i1 %.not407, label %.preheader682, label %.loopexit681

.preheader682:                                    ; preds = %._crit_edge968
  %i.nv = load ptr, ptr %i.i, align 8, !tbaa !174 ; 2 uses
  %i.nw = load ptr, ptr %i.h, align 8, !tbaa !175 ; 2 uses
  %.not1042 = icmp eq ptr %i.nv, %i.nw
  br i1 %.not1042, label %._crit_edge971, label %.lr.ph970

.lr.ph967:                                        ; preds = %.preheader683, %bb.aw
  %i.nx = phi ptr [ %i.oh, %bb.aw ], [ %i.mr, %.preheader683 ] ; 3 uses
  %i.ny = phi ptr [ %i.oi, %bb.aw ], [ %i.mq, %.preheader683 ] ; 2 uses
  %.0365966 = phi i64 [ %i.oj, %bb.aw ], [ 0, %.preheader683 ] ; 3 uses
  %i.nz = load ptr, ptr %i.mj, align 8, !tbaa !482
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %.0365966
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !351
  %.not410 = icmp eq ptr %i.ob, null
  br i1 %.not410, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %.lr.ph967
  %i.oc = getelementptr inbounds nuw [56 x i8], ptr %i.nx, i64 %.0365966 ; 2 uses
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !190
  %i.oe = icmp eq i32 %i.od, 2
  br i1 %i.oe, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.og = load i64, ptr %i.of, align 8, !tbaa !235
  tail call void @_ZNK6casadi3Fmu11request_adjEPNS_9FmuMemoryEx(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.og)
  %.pre1312.a = load ptr, ptr %i.i, align 8, !tbaa !174
  %.pre1313 = load ptr, ptr %i.h, align 8, !tbaa !175
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph967, %bb.au, %bb.av
  %i.oh = phi ptr [ %i.nx, %.lr.ph967 ], [ %i.nx, %bb.au ], [ %.pre1313, %bb.av ] ; 2 uses
  %i.oi = phi ptr [ %i.ny, %.lr.ph967 ], [ %i.ny, %bb.au ], [ %.pre1312.a, %bb.av ] ; 2 uses
  %i.oj = add nuw i64 %.0365966, 1                ; 2 uses
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = ptrtoint ptr %i.oh to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = sdiv exact i64 %i.om, 56
  %i.oo = icmp ult i64 %i.oj, %i.on
  br i1 %i.oo, label %.lr.ph967, label %._crit_edge968, !llvm.loop !579

._crit_edge971:                                   ; preds = %bb.ba, %.preheader682
  %i.op = add i64 %.0367973, 1                    ; 2 uses
  %exitcond1289.not = icmp eq i64 %i.op, %i.md
  br i1 %exitcond1289.not, label %.critedge, label %bb.an, !llvm.loop !580

.lr.ph970:                                        ; preds = %.preheader682, %bb.ba
  %i.oq = phi ptr [ %i.pk, %bb.ba ], [ %i.nw, %.preheader682 ] ; 3 uses
  %i.or = phi ptr [ %i.pl, %bb.ba ], [ %i.nv, %.preheader682 ] ; 2 uses
  %.0364969 = phi i64 [ %i.pm, %bb.ba ], [ 0, %.preheader682 ] ; 6 uses
  %i.os = load ptr, ptr %i.mj, align 8, !tbaa !482
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %.0364969
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !351 ; 2 uses
  %.not408 = icmp eq ptr %i.ou, null
  br i1 %.not408, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph970
  %i.ov = getelementptr inbounds nuw [56 x i8], ptr %i.oq, i64 %.0364969 ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !190
  %i.ox = icmp eq i32 %i.ow, 2
  br i1 %i.ox, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.oy = load ptr, ptr %i.ml, align 8, !tbaa !249
  %i.oz = load ptr, ptr %i.mk, align 8, !tbaa !248 ; 2 uses
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = ashr exact i64 %i.pc, 3                 ; 2 uses
  %.not.i.i.i.i442 = icmp ult i64 %.0364969, %i.pd
  br i1 %.not.i.i.i.i442, label %_ZNK6casadi16FunctionInternal9size1_outEx.exit443, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.240, i64 noundef %.0364969, i64 noundef %i.pd) #26
  unreachable

_ZNK6casadi16FunctionInternal9size1_outEx.exit443: ; preds = %bb.ay
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !235
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %.0364969
  %i.ph = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.pg)
  %i.pi = mul nsw i64 %i.ph, %.0367973
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.ou, i64 %i.pi
  tail call void @_ZNK6casadi3Fmu7get_adjEPNS_9FmuMemoryEmPd(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.pf, ptr noundef nonnull %i.pj)
  %.pre1314 = load ptr, ptr %i.i, align 8, !tbaa !174
  %.pre1315 = load ptr, ptr %i.h, align 8, !tbaa !175
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph970, %bb.ax, %_ZNK6casadi16FunctionInternal9size1_outEx.exit443
  %i.pk = phi ptr [ %i.oq, %.lr.ph970 ], [ %i.oq, %bb.ax ], [ %.pre1315, %_ZNK6casadi16FunctionInternal9size1_outEx.exit443 ] ; 2 uses
  %i.pl = phi ptr [ %i.or, %.lr.ph970 ], [ %i.or, %bb.ax ], [ %.pre1314, %_ZNK6casadi16FunctionInternal9size1_outEx.exit443 ] ; 2 uses
  %i.pm = add nuw i64 %.0364969, 1                ; 2 uses
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = ptrtoint ptr %i.pk to i64
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = sdiv exact i64 %i.pp, 56
  %i.pr = icmp ult i64 %i.pm, %i.pq
  br i1 %i.pr, label %.lr.ph970, label %._crit_edge971, !llvm.loop !581

.critedge:                                        ; preds = %._crit_edge971, %.loopexit678, %bb.am, %bb.ae, %bb.ac
  br i1 %8, label %bb.bb, label %_ZNSt6vectorIdSaIdEED2Ev.exit541.thread

bb.bb:                                            ; preds = %.critedge
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.pt = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ps) ; 2 uses
  %i.pu = tail call noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ps) ; 2 uses
  %i.pv = tail call noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ps) ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.px = tail call noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pw) ; 2 uses
  %i.py = tail call noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pw) ; 2 uses
  %i.pz = mul nsw i64 %i.pt, %2
  %i.qa = sdiv i64 %i.pz, %3                      ; 4 uses
  %i.qb = add nsw i64 %2, 1                       ; 2 uses
  %i.qc = mul nsw i64 %i.pt, %i.qb
  %i.qd = sdiv i64 %i.qc, %3                      ; 3 uses
  %.not1044 = icmp slt i64 %i.qa, %i.qd
  br i1 %.not1044, label %.lr.ph1022, label %_ZNSt6vectorIdSaIdEED2Ev.exit541.thread

.lr.ph1022:                                       ; preds = %bb.bb
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.qf = sub nsw i64 %i.qd, %i.qa
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %invariant.op2450 = sub i64 1, %i.qa
  br label %bb.bc

.loopexit:                                        ; preds = %._crit_edge1011, %_ZSt4fillIPxiEvT_S1_RKT0_.exit
  %exitcond1298.not = icmp eq i64 %i.rp, %i.qd
  br i1 %exitcond1298.not, label %.thread610, label %bb.bc, !llvm.loop !582

bb.bc:                                            ; preds = %.lr.ph1022, %.loopexit
  %.03631020 = phi i64 [ %i.qa, %.lr.ph1022 ], [ %i.rp, %.loopexit ] ; 3 uses
  %.sroa.0592.01019 = phi ptr [ null, %.lr.ph1022 ], [ %.sroa.0592.4, %.loopexit ] ; 12 uses
  %.sroa.23.01018 = phi ptr [ null, %.lr.ph1022 ], [ %.sroa.23.4, %.loopexit ] ; 9 uses
  %.sroa.18.01017 = phi ptr [ null, %.lr.ph1022 ], [ %.sroa.18.1, %.loopexit ] ; 6 uses
  %.sroa.0576.01016 = phi ptr [ null, %.lr.ph1022 ], [ %.sroa.0576.4, %.loopexit ] ; 13 uses
  %.sroa.18601.01015 = phi ptr [ null, %.lr.ph1022 ], [ %.sroa.18601.4, %.loopexit ] ; 8 uses
  %.sroa.13.01014 = phi ptr [ null, %.lr.ph1022 ], [ %.sroa.13.1, %.loopexit ] ; 6 uses
  %i.rk = load i8, ptr %i.qe, align 8, !tbaa !211, !range !201, !noundef !202
  %i.rl = trunc nuw i8 %i.rk to i1
  br i1 %i.rl, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %.reass1706.reass = add i64 %.03631020, %invariant.op2450
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.150, i64 noundef %i.qb, i64 noundef %3, i64 noundef %.reass1706.reass, i64 noundef %i.qf)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.pu, i64 %.03631020
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !43 ; 4 uses
  %i.rp = add i64 %.03631020, 1                   ; 3 uses
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.pu, i64 %i.rp
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !43
  %i.rs = sub nsw i64 %i.rr, %i.ro                ; 12 uses
  %i.rt = ptrtoint ptr %.sroa.13.01014 to i64     ; 2 uses
  %i.ru = ptrtoint ptr %.sroa.0592.01019 to i64   ; 2 uses
  %i.rv = sub i64 %i.rt, %i.ru                    ; 4 uses
  %i.rw = ashr exact i64 %i.rv, 3                 ; 7 uses
  %i.rx = icmp ugt i64 %i.rs, %i.rw
  br i1 %i.rx, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  %i.ry = sub nuw i64 %i.rs, %i.rw                ; 6 uses
  %i.rz = ptrtoint ptr %.sroa.18601.01015 to i64  ; 2 uses
  %i.sa = sub i64 %i.rz, %i.rt
  %i.sb = ashr exact i64 %i.sa, 3                 ; 2 uses
  %i.sc = icmp ult i64 %i.rw, 1152921504606846976
  tail call void @llvm.assume(i1 %i.sc)
  %i.sd = xor i64 %i.rw, 1152921504606846975      ; 2 uses
  %i.se = icmp ule i64 %i.sb, %i.sd
  tail call void @llvm.assume(i1 %i.se)
  %.not28.i = icmp ult i64 %i.sb, %i.ry
  br i1 %.not28.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store double 0.000000e+00, ptr %.sroa.13.01014, align 8, !tbaa !209
  %i.sf = getelementptr i8, ptr %.sroa.13.01014, i64 8 ; 3 uses
  %i.sg = add nsw i64 %i.ry, -1                   ; 2 uses
  %i.sh = icmp eq i64 %i.sg, 0
  br i1 %i.sh, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.bh
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.sg, 3    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.sf, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !209
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 %.idx.i.i.i.i.i.i
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.bi:                                            ; preds = %bb.bg
  %i.sj = icmp ult i64 %i.sd, %i.ry
  br i1 %i.sj, label %bb.bj, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.245) #26
          to label %.noexc546 unwind label %.loopexit.split-lp671

.noexc546:                                        ; preds = %bb.bj
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.bi
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.rw, i64 %i.ry)
  %i.sk = add nuw nsw i64 %.sroa.speculated.i.i, %i.rw
  %i.sl = tail call i64 @llvm.umin.i64(i64 %i.sk, i64 1152921504606846975) ; 2 uses
  %i.sm = shl nuw nsw i64 %i.sl, 3
  %i.sn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sm) #28
          to label %.noexc547 unwind label %.loopexit670 ; 4 uses

.noexc547:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.rv ; 3 uses
  store double 0.000000e+00, ptr %i.so, align 8, !tbaa !209
  %i.sp = add nsw i64 %i.ry, -1                   ; 2 uses
  %i.sq = icmp eq i64 %i.sp, 0
  br i1 %i.sq, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc547
  %i.sr = getelementptr i8, ptr %i.so, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.sp, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.sr, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !209
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc547
  %i.ss = icmp sgt i64 %i.rv, 0
  br i1 %i.ss, label %bb.bk, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

bb.bk:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sn, ptr align 8 %.sroa.0592.01019, i64 %i.rv, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i: ; preds = %bb.bk, %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0592.01019, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  %i.st = sub i64 %i.rz, %i.ru
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0592.01019, i64 noundef %i.st) #27
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i: ; preds = %bb.bl, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.ry
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.sl
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.bm:                                            ; preds = %bb.bf
  %i.sw = icmp ult i64 %i.rs, %i.rw
  br i1 %i.sw, label %bb.bn, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.bn:                                            ; preds = %bb.bm
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0592.01019, i64 %i.rs ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.01014, %i.sx
  %spec.select = select i1 %.not.i.i, ptr %.sroa.13.01014, ptr %i.sx
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.bn, %bb.bm, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.bh
  %.sroa.13.1 = phi ptr [ %.sroa.13.01014, %bb.bm ], [ %spec.select, %bb.bn ], [ %i.sf, %bb.bh ], [ %i.si, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.su, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i ]
  %.sroa.18601.4 = phi ptr [ %.sroa.18601.01015, %bb.bm ], [ %.sroa.18601.01015, %bb.bn ], [ %.sroa.18601.01015, %bb.bh ], [ %.sroa.18601.01015, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.sv, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i ] ; 18 uses
  %.sroa.0592.4 = phi ptr [ %.sroa.0592.01019, %bb.bm ], [ %.sroa.0592.01019, %bb.bn ], [ %.sroa.0592.01019, %bb.bh ], [ %.sroa.0592.01019, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.sn, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i ] ; 22 uses
  %i.sy = ptrtoint ptr %.sroa.18.01017 to i64     ; 2 uses
  %i.sz = ptrtoint ptr %.sroa.0576.01016 to i64   ; 2 uses
  %i.ta = sub i64 %i.sy, %i.sz                    ; 4 uses
  %i.tb = ashr exact i64 %i.ta, 3                 ; 7 uses
  %i.tc = icmp ugt i64 %i.rs, %i.tb
  br i1 %i.tc, label %bb.bo, label %bb.bu

bb.bo:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.td = sub nuw i64 %i.rs, %i.tb                ; 6 uses
  %i.te = ptrtoint ptr %.sroa.23.01018 to i64     ; 2 uses
  %i.tf = sub i64 %i.te, %i.sy
  %i.tg = ashr exact i64 %i.tf, 3                 ; 2 uses
  %i.th = icmp ult i64 %i.tb, 1152921504606846976
  tail call void @llvm.assume(i1 %i.th)
  %i.ti = xor i64 %i.tb, 1152921504606846975      ; 2 uses
  %i.tj = icmp ule i64 %i.tg, %i.ti
  tail call void @llvm.assume(i1 %i.tj)
  %.not28.i549 = icmp ult i64 %i.tg, %i.td
  br i1 %.not28.i549, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store double 0.000000e+00, ptr %.sroa.18.01017, align 8, !tbaa !209
  %i.tk = getelementptr i8, ptr %.sroa.18.01017, i64 8 ; 3 uses
  %i.tl = add nsw i64 %i.td, -1                   ; 2 uses
  %i.tm = icmp eq i64 %i.tl, 0
  br i1 %i.tm, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit447, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i550

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i550: ; preds = %bb.bp
  %.idx.i.i.i.i.i.i551 = shl nuw nsw i64 %i.tl, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.tk, i8 0, i64 %.idx.i.i.i.i.i.i551, i1 false), !tbaa !209
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 %.idx.i.i.i.i.i.i551
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit447

bb.bq:                                            ; preds = %bb.bo
  %i.to = icmp ult i64 %i.ti, %i.td
  br i1 %i.to, label %bb.br, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i554

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.245) #26
          to label %.noexc562 unwind label %.loopexit.split-lp671

.noexc562:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i554: ; preds = %bb.bq
  %.sroa.speculated.i.i555 = tail call i64 @llvm.umax.i64(i64 %i.tb, i64 %i.td)
  %i.tp = add nuw nsw i64 %.sroa.speculated.i.i555, %i.tb
  %i.tq = tail call i64 @llvm.umin.i64(i64 %i.tp, i64 1152921504606846975) ; 2 uses
  %i.tr = shl nuw nsw i64 %i.tq, 3
  %i.ts = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tr) #28
          to label %.noexc563 unwind label %.loopexit670 ; 4 uses

.noexc563:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i554
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.ta ; 3 uses
  store double 0.000000e+00, ptr %i.tt, align 8, !tbaa !209
  %i.tu = add nsw i64 %i.td, -1                   ; 2 uses
  %i.tv = icmp eq i64 %i.tu, 0
  br i1 %i.tv, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33.i558, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i556

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i556: ; preds = %.noexc563
  %i.tw = getelementptr i8, ptr %i.tt, i64 8
  %.idx.i.i.i.i.i31.i557 = shl nuw nsw i64 %i.tu, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.tw, i8 0, i64 %.idx.i.i.i.i.i31.i557, i1 false), !tbaa !209
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33.i558

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33.i558: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i556, %.noexc563
  %i.tx = icmp sgt i64 %i.ta, 0
  br i1 %i.tx, label %bb.bs, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i559

bb.bs:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33.i558
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ts, ptr align 8 %.sroa.0576.01016, i64 %i.ta, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i559

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i559: ; preds = %bb.bs, %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33.i558
  %.not.i35.i560 = icmp eq ptr %.sroa.0576.01016, null
  br i1 %.not.i35.i560, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i561, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i559
  %i.ty = sub i64 %i.te, %i.sz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0576.01016, i64 noundef %i.ty) #27
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i561

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36.i561: ; preds = %bb.bt, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i559
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.td
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.tq
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit447

bb.bu:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.ub = icmp ult i64 %i.rs, %i.tb
  br i1 %i.ub, label %bb.bv, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit447

bb.bv:                                            ; preds = %bb.bu
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.01016, i64 %i.rs ; 2 uses
  %.not.i.i444 = icmp eq ptr %.sroa.18.01017, %i.uc
  %spec.select662 = select i1 %.not.i.i444, ptr %.sroa.18.01017, ptr %i.uc
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit447
end_hunk_2
