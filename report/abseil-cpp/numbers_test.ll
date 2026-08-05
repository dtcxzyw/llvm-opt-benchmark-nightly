inline.NumInlined: 12995
inline.NumDeleted: 1495
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPKcEEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultES4_RKT_:bb.a
_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !9
  %i.dd = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.dd, ptr %i.af, align 8, !tbaa !9
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.df = getelementptr i8, ptr %i.dd, i64 -24    ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = getelementptr inbounds i8, ptr %i.af, i64 %i.dg
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !9
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.di, ptr %i.ag, align 8, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dj, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !22 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZN7testing25StringMatchResultListenerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !26
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #33, !inline_history !115
  br label %_ZN7testing25StringMatchResultListenerD2Ev.exit

_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dj, align 8, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 96
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dq) #31, !inline_history !115
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.dr, ptr %i.af, align 8, !tbaa !9
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dr, i64 -24    ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds i8, ptr %i.af, i64 %i.du
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !9
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 0, ptr %i.dw, align 8, !tbaa !116
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 144
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dx) #31, !inline_history !115
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  store ptr %i.dd, ptr %9, align 8, !tbaa !9
  %i.dy = load i64, ptr %i.df, align 8
  %i.dz = getelementptr inbounds i8, ptr %9, i64 %i.dy
  store ptr %i.de, ptr %i.dz, align 8, !tbaa !9
  store ptr %i.di, ptr %i.k, align 8, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ea, align 8, !tbaa !9
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !22 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !26
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ea, align 8, !tbaa !9
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eh) #31
  store ptr %i.dr, ptr %9, align 8, !tbaa !9
  %i.ei = load i64, ptr %i.dt, align 8
  %i.ej = getelementptr inbounds i8, ptr %9, i64 %i.ei
  store ptr %i.ds, ptr %i.ej, align 8, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ek, align 8, !tbaa !116
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.el) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ak

bb.ad:                                            ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ap
  br i1 %i.eo, label %.body43, label %.body43.sink.split

.body43.sink.split:                               ; preds = %bb.ad, %bb.s
  %.sink = phi ptr [ %i.bd, %bb.s ], [ %i.en, %bb.ad ]
  %.pn.ph = phi { ptr, i32 } [ %i.bc, %bb.s ], [ %i.em, %bb.ad ]
  %i.ep = load i64, ptr %i.ap, align 8, !tbaa !26
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.eq) #33
  br label %.body43

.body43:                                          ; preds = %.body43.sink.split, %bb.ad, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.s ], [ %i.em, %bb.ad ], [ %.pn.ph, %.body43.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.aa
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %bb.af
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.es, %bb.af ], [ %i.cn, %_ZN7testing7MessageD2Ev.exit5.i ] ; 2 uses
  %i.et = load ptr, ptr %13, align 8, !tbaa !22   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.bn
  br i1 %i.eu, label %.body46, label %.body46.sink.split

.body46.sink.split:                               ; preds = %.body50, %bb.w
  %.sink90 = phi ptr [ %i.cb, %bb.w ], [ %i.et, %.body50 ]
  %.pn14.ph = phi { ptr, i32 } [ %i.ca, %bb.w ], [ %eh.lpad-body51, %.body50 ]
  %i.ev = load i64, ptr %i.bn, align 8, !tbaa !26
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %.sink90, i64 noundef %i.ew) #33
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %.body50, %bb.w
  %.pn14 = phi { ptr, i32 } [ %i.ca, %bb.w ], [ %eh.lpad-body51, %.body50 ], [ %.pn14.ph, %.body46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  br label %bb.ag

bb.ag:                                            ; preds = %.body46, %bb.ae
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body46 ], [ %i.er, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.body43, %bb.q
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.ag ], [ %.pn, %.body43 ], [ %i.an, %bb.q ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %10) #31
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.p
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.ah ], [ %i.am, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.body35

.body35:                                          ; preds = %bb.o, %bb.j, %bb.ai
  %.pn14.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %bb.ai ], [ %i.al, %bb.o ], [ %i.ab, %bb.j ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #31
  br label %bb.aj

bb.aj:                                            ; preds = %.body35, %bb.n
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn, %.body35 ], [ %i.ak, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body

bb.ak:                                            ; preds = %bb.c, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %8, align 8, !tbaa !9
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i66, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !118
  %.not.i.i67 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i67, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.fa = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.fb = atomicrmw sub ptr %i.fa, i32 1 acq_rel, align 4
  %i.fc = icmp eq i32 %i.fb, 1
  br i1 %i.fc, label %bb.am, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !118
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !26
  invoke void %i.ff(ptr noundef %i.fg)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.an, !inline_history !119

bb.an:                                            ; preds = %bb.am
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #32, !inline_history !120
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.ak, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  ret void

.body:                                            ; preds = %bb.d, %.body.i, %bb.aj
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.aj ], [ %i.j, %bb.d ], [ %i.f, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  resume { ptr, i32 } %.pn21
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111PerfectDtoaB5cxx11Ed(ptr dead_on_unwind noalias nonnull writable align 8 %0, double noundef %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca [1105 x i8], align 16             ; 9 uses
  %i.c = fcmp oeq double %1, 0.000000e+00
  br i1 %i.c, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !101
  store i8 48, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !26
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp olt double %1, 0.000000e+00
  br i1 %i.g, label %bb.c, label %.preheader72

.preheader72:                                     ; preds = %bb.b
  %i.h = fcmp ult double %1, f0x43E0000000000000
  br i1 %i.h, label %.preheader71, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.i = fneg double %1
  call fastcc void @_ZN12_GLOBAL__N_111PerfectDtoaB5cxx11Ed(ptr dead_on_unwind noalias writable align 8 %2, double noundef %i.i)
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.143, i64 noundef 1)
          to label %.noexc62 unwind label %bb.f   ; 6 uses

.noexc62:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !101, !alias.scope !121
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %.noexc62
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !103  ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc62
  store ptr %i.l, ptr %0, align 8, !tbaa !22, !alias.scope !121
  %i.s = load i64, ptr %i.m, align 8, !tbaa !26
  store i64 %i.s, ptr %i.k, align 8, !tbaa !26, !alias.scope !121
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !103
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.t = phi i64 [ %i.p, %bb.d ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !103, !alias.scope !121
  store ptr %i.m, ptr %i.j, align 8, !tbaa !22
  store i64 0, ptr %i.u, align 8, !tbaa !103
  store i8 0, ptr %i.m, align 8, !tbaa !26
  %i.w = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.e
  %i.z = load i64, ptr %i.x, align 8, !tbaa !26
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.f
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.ab

.preheader71:                                     ; preds = %.lr.ph, %.preheader72
  %.053.lcssa = phi i64 [ 0, %.preheader72 ], [ %i.ak, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi double [ %1, %.preheader72 ], [ %i.al, %.lr.ph ] ; 3 uses
  %i.ah = fptosi double %.0.lcssa to i64          ; 2 uses
  %i.ai = sitofp i64 %i.ah to double
  %i.aj = fcmp une double %.0.lcssa, %i.ai
  br i1 %i.aj, label %.lr.ph78, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader72, %.lr.ph
  %.074 = phi double [ %i.al, %.lr.ph ], [ %1, %.preheader72 ]
  %.05373 = phi i64 [ %i.ak, %.lr.ph ], [ 0, %.preheader72 ]
  %i.ak = add nuw nsw i64 %.05373, 1              ; 2 uses
  %i.al = fmul nnan double %.074, 5.000000e-01    ; 3 uses
  %i.am = fcmp ult double %i.al, f0x43E0000000000000
  br i1 %i.am, label %.preheader71, label %.lr.ph, !llvm.loop !124

.lr.ph78:                                         ; preds = %.preheader71, %.lr.ph78
  %.177 = phi double [ %i.ao, %.lr.ph78 ], [ %.0.lcssa, %.preheader71 ]
  %.15476 = phi i64 [ %i.an, %.lr.ph78 ], [ %.053.lcssa, %.preheader71 ]
  %i.an = add nsw i64 %.15476, -1                 ; 2 uses
  %i.ao = fmul double %.177, 2.000000e+00         ; 3 uses
  %i.ap = fptosi double %i.ao to i64              ; 2 uses
  %i.aq = sitofp i64 %i.ap to double
  %i.ar = fcmp une double %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph78, label %._crit_edge, !llvm.loop !125

._crit_edge:                                      ; preds = %.lr.ph78, %.preheader71
  %.154.lcssa = phi i64 [ %.053.lcssa, %.preheader71 ], [ %i.an, %.lr.ph78 ] ; 7 uses
  %.lcssa = phi i64 [ %i.ah, %.preheader71 ], [ %i.ap, %.lr.ph78 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 1100 ; 3 uses
  %.not84 = icmp eq i64 %.154.lcssa, 0
  br i1 %.not84, label %._crit_edge86.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 1099
  %i.au = icmp sgt i64 %.154.lcssa, 0             ; 2 uses
  %i.av = select i1 %i.au, i32 2, i32 5
  %i.aw = select i1 %i.au, i64 1, i64 -1
  br label %.preheader

bb.h:                                             ; preds = %._crit_edge, %bb.h
  %.05082 = phi i64 [ 1100, %._crit_edge ], [ %i.ax, %bb.h ] ; 2 uses
  %.05181 = phi i64 [ %.lcssa, %._crit_edge ], [ %i.bc, %bb.h ] ; 2 uses
  %i.ax = add nsw i64 %.05082, -1                 ; 2 uses
  %i.ay = srem i64 %.05181, 10
  %i.az = trunc nsw i64 %i.ay to i8
  %i.ba = add nsw i8 %i.az, 48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ax
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !26
  %i.bc = sdiv i64 %.05181, 10
  %3 = icmp samesign ugt i64 %.05082, 1
  br i1 %3, label %bb.h, label %bb.g, !llvm.loop !126

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.i ]
  br label %bb.j

._crit_edge86:                                    ; preds = %bb.i
  %i.bd = icmp slt i64 %.154.lcssa, 0
  br i1 %i.bd, label %bb.k, label %._crit_edge86.thread

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.aw ; 2 uses
  %.not = icmp eq i64 %.154.lcssa, %indvars.iv.next
  br i1 %.not, label %._crit_edge86, label %.preheader, !llvm.loop !127

bb.j:                                             ; preds = %.preheader, %bb.j
  %i.be = phi ptr [ %i.at, %.preheader ], [ %i.bo, %bb.j ] ; 3 uses
  %.04683 = phi i32 [ 0, %.preheader ], [ %i.bk, %bb.j ]
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !26
  %i.bg = sext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48
  %i.bi = mul nsw i32 %i.bh, %i.av
  %i.bj = add nsw i32 %i.bi, %.04683              ; 2 uses
  %i.bk = sdiv i32 %i.bj, 10
  %i.bl = srem i32 %i.bj, 10
  %i.bm = trunc nsw i32 %i.bl to i8
  %i.bn = add nsw i8 %i.bm, 48
  store i8 %i.bn, ptr %i.be, align 1, !tbaa !26
  %i.bo = getelementptr inbounds i8, ptr %i.be, i64 -1 ; 2 uses
  %.not60 = icmp eq ptr %i.bo, %i.b
  br i1 %.not60, label %bb.i, label %bb.j, !llvm.loop !128

bb.k:                                             ; preds = %._crit_edge86
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 1101 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.154.lcssa
  %i.br = getelementptr inbounds i8, ptr %i.as, i64 %.154.lcssa ; 2 uses
  %i.bs = sub nsw i64 1, %.154.lcssa
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull align 1 %i.br, i64 %i.bs, i1 false)
  store i8 46, ptr %i.br, align 1, !tbaa !26
  br label %._crit_edge86.thread

._crit_edge86.thread:                             ; preds = %bb.g, %bb.k, %._crit_edge86
  %.048 = phi ptr [ %i.bp, %bb.k ], [ %i.as, %._crit_edge86 ], [ %i.as, %bb.g ]
  %.pr = load i8, ptr %i.b, align 16, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %._crit_edge86.thread
  %i.bt = phi i8 [ %i.bw, %bb.m ], [ %.pr, %._crit_edge86.thread ]
  %.049 = phi ptr [ %i.bv, %bb.m ], [ %i.b, %._crit_edge86.thread ] ; 4 uses
  %i.bu = icmp eq i8 %i.bt, 48
  br i1 %i.bu, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.049, i64 1 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !26  ; 2 uses
  %.not59 = icmp eq i8 %i.bw, 46
  br i1 %.not59, label %.critedge, label %bb.l, !llvm.loop !129

.critedge:                                        ; preds = %bb.l, %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bx, ptr %0, align 8, !tbaa !101
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.by, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.bz = ptrtoint ptr %.048 to i64
  %i.ca = ptrtoint ptr %.049 to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  store i64 %i.cb, ptr %i.a, align 8, !tbaa !130
  %i.cc = icmp ugt i64 %i.cb, 15
  br i1 %i.cc, label %.noexc.i68, label %._crit_edge.i.i67

.noexc.i68:                                       ; preds = %.critedge
  %i.cd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cd, ptr %0, align 8, !tbaa !22
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !130
  store i64 %i.ce, ptr %i.bx, align 8, !tbaa !26
  br label %._crit_edge.i.i67

._crit_edge.i.i67:                                ; preds = %.noexc.i68, %.critedge
  %i.cf = phi ptr [ %i.cd, %.noexc.i68 ], [ %i.bx, %.critedge ] ; 2 uses
  switch i64 %i.cb, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i67
  %i.cg = load i8, ptr %.049, align 1, !tbaa !26
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !26
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i67
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr nonnull align 1 %.049, i64 %i.cb, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i67
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !130 ; 2 uses
  store i64 %i.ch, ptr %i.by, align 8, !tbaa !103
  %i.ci = load ptr, ptr %0, align 8, !tbaa !22
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 0, ptr %i.cj, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge.i.i
  ret void
}

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !26
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #33
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing12MatchesRegexIA12_cEENS_18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.testing::PolymorphicMatcher") align 8 %0, ptr noundef nonnull align 1 dereferenceable(12) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #34 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !101
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.d, ptr %i.a, align 8, !tbaa !130
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.thread ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.f, ptr %2, align 8, !tbaa !22
  %i.g = load i64, ptr %i.a, align 8, !tbaa !130
  store i64 %i.g, ptr %i.c, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !26
  store i8 %i.i, ptr %i.h, align 1, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !103
  %i.l = load ptr, ptr %2, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !103
  store i8 0, ptr %i.n, align 8, !tbaa !26
  %i.p = load ptr, ptr %2, align 8, !tbaa !22
  invoke void @_ZN7testing8internal2RE4InitEPKc(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef %i.p)
end_hunk_0
