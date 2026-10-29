Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_type?download=true
inline.NumInlined: 12374
inline.NumDeleted: 3212
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN27MetaType_DataRecursive_Test8TestBodyEv:bb.a

_ZN4entt8meta_anyD2Ev.exit:                       ; preds = %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.cy = load i8, ptr %7, align 8, !tbaa !110, !range !111, !noundef !112
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.critedge32, label %bb.am

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i57, label %_ZN4entt8meta_anyD2Ev.exit58, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %_ZN4entt8meta_anyD2Ev.exit58 unwind label %bb.al, !inline_history !3

bb.al:                                            ; preds = %bb.ak
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #30
  unreachable

_ZN4entt8meta_anyD2Ev.exit58:                     ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %15

bb.am:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i59, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !116
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ao, %bb.an
  %i.di = phi ptr [ %i.dh, %bb.ao ], [ @.str.93, %bb.an ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 471, ptr noundef %i.di)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.dj = load ptr, ptr %9, align 8, !tbaa !118   ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i60, label %_ZN7testing7MessageD2Ev.exit62, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61: ; preds = %bb.aq
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !53
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(128) %i.dj) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit62

_ZN7testing7MessageD2Ev.exit62:                   ; preds = %bb.aq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !113 ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i63, label %_ZN7testing15AssertionResultD2Ev.exit67, label %bb.ar

bb.ar:                                            ; preds = %_ZN7testing7MessageD2Ev.exit62
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !116 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i64: ; preds = %bb.ar
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !119
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i64
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit67

_ZN7testing15AssertionResultD2Ev.exit67:          ; preds = %_ZN7testing7MessageD2Ev.exit62, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bm

bb.as:                                            ; preds = %bb.am
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit70

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.ap
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn22 = phi { ptr, i32 } [ %i.dv, %bb.au ], [ %i.du, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.dw = load ptr, ptr %9, align 8, !tbaa !118   ; 3 uses
  %.not.i.i68 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i68, label %_ZN7testing7MessageD2Ev.exit70, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %bb.av
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !53
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(128) %i.dw) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit70

_ZN7testing7MessageD2Ev.exit70:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, %bb.av, %bb.as
  %.pn22.pn = phi { ptr, i32 } [ %i.dt, %bb.as ], [ %.pn22, %bb.av ], [ %.pn22, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #29
  br label %15

.critedge32:                                      ; preds = %_ZN4entt8meta_anyD2Ev.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !113 ; 4 uses
  %.not.i.i71 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i71, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i76, label %bb.aw

bb.aw:                                            ; preds = %.critedge32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !116 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72: ; preds = %bb.aw
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !119
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 32) #31
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i76

_ZNK4entt9meta_type10fetch_nodeEv.exit.i76:       ; preds = %.critedge32, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !156 ; 3 uses
  %.not.i100 = icmp eq ptr %i.ei, null
  br i1 %.not.i100, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i76
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !167 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !167 ; 2 uses
  %i.en = icmp eq ptr %i.ek, %i.em
  br i1 %i.en, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ax, %bb.ay
  %.sroa.010.015.i.i = phi ptr [ %i.ep, %bb.ay ], [ %i.ek, %bb.ax ] ; 2 uses
  %i.eo = load i32, ptr %.sroa.010.015.i.i, align 8, !tbaa !236
  %.not.i.i101 = icmp eq i32 %i.eo, 1113510858
  br i1 %.not.i.i101, label %_ZNK4entt9meta_type4dataEjb.exit82, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.i, i64 104 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.em
  br i1 %i.eq, label %.loopexit, label %.lr.ph.i.i

.loopexit:                                        ; preds = %bb.ay, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i76, %bb.ax
  %i.er = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69
  %.not.i.i.i.i.i81 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i81, label %bb.az, label %_ZN7testing15AssertionResultD2Ev.exit99

bb.az:                                            ; preds = %.loopexit
  %i.es = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN7testing15AssertionResultD2Ev.exit99 unwind label %bb.ba ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #30
  unreachable

15:                                               ; preds = %_ZN7testing7MessageD2Ev.exit70, %_ZN4entt8meta_anyD2Ev.exit58
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZN7testing7MessageD2Ev.exit70 ], [ %i.da, %_ZN4entt8meta_anyD2Ev.exit58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bn

_ZNK4entt9meta_type4dataEjb.exit82:               ; preds = %.lr.ph.i.i
  store i8 0, ptr %11, align 8, !tbaa !110
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.ev, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %_ZNK4entt9meta_type4dataEjb.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ew = load ptr, ptr %14, align 8, !tbaa !116
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 472, ptr noundef %i.ew)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  %i.ex = load ptr, ptr %14, align 8, !tbaa !116  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.be
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !119
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.fc = load ptr, ptr %12, align 8, !tbaa !118  ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i86, label %bb.bk, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !53
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(128) %i.fc) #29, !inline_history !1
  br label %bb.bk

bb.bf:                                            ; preds = %_ZNK4entt9meta_type4dataEjb.exit82
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit94

bb.bg:                                            ; preds = %bb.bb
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.bh:                                            ; preds = %bb.bc
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn26 = phi { ptr, i32 } [ %i.fj, %bb.bi ], [ %i.fi, %bb.bh ] ; 2 uses
  %i.fk = load ptr, ptr %14, align 8, !tbaa !116  ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.bj
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !119
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.bg
  %.pn26.pn = phi { ptr, i32 } [ %i.fh, %bb.bg ], [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn26, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.fp = load ptr, ptr %12, align 8, !tbaa !118  ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i92, label %_ZN7testing7MessageD2Ev.exit94, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !53
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(128) %i.fp) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit94

_ZN7testing7MessageD2Ev.exit94:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.bf
  %.pn26.pn.pn = phi { ptr, i32 } [ %i.fg, %bb.bf ], [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn26.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.bn

bb.bk:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %.pr = load ptr, ptr %i.ev, align 8, !tbaa !113 ; 4 uses
  %.not.i.i95 = icmp eq ptr %.pr, null
  br i1 %.not.i.i95, label %_ZN7testing15AssertionResultD2Ev.exit99, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ft = load ptr, ptr %.pr, align 8, !tbaa !116 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96: ; preds = %bb.bl
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !119
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit99

_ZN7testing15AssertionResultD2Ev.exit99:          ; preds = %bb.az, %.loopexit, %bb.bk, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit67, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.bn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit94, %15, %_ZN7testing7MessageD2Ev.exit40
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %_ZN7testing7MessageD2Ev.exit94 ], [ %.pn22.pn.pn, %15 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN18MetaType_Func_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::meta_handle", align 8 ; 13 uses
  %2 = alloca %"struct.MetaType::clazz", align 4  ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.entt::meta_any", align 8   ; 13 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.entt::meta_any", align 8   ; 7 uses
  %21 = alloca %"struct.entt::meta_func", align 8 ; 6 uses
  %22 = alloca %"class.entt::meta_handle", align 8 ; 14 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %27 = alloca %"struct.entt::internal::meta_range_iterator.16", align 8 ; 5 uses
  %28 = alloca %"struct.entt::internal::meta_range_iterator.16", align 8 ; 6 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #30
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.c, %bb.a ], [ %i.d, %bb.b ] ; 7 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i32 0, ptr %2, align 4, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !156, !noalias !639 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %.thread, label %_ZNK4entt9meta_type4funcEv.exit

_ZNK4entt9meta_type4funcEv.exit:                  ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172, !noalias !639 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 104
end_hunk_0
begin_hunk_1_@_ZN27MetaType_FuncRecursive_Test8TestBodyEv:bb.a

_ZN4entt8meta_anyD2Ev.exit:                       ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.cy = load i8, ptr %7, align 8, !tbaa !110, !range !111, !noundef !112
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.critedge32, label %bb.am

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i57, label %_ZN4entt8meta_anyD2Ev.exit58, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %_ZN4entt8meta_anyD2Ev.exit58 unwind label %bb.al, !inline_history !3

bb.al:                                            ; preds = %bb.ak
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #30
  unreachable

_ZN4entt8meta_anyD2Ev.exit58:                     ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %15

bb.am:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i59, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !116
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ao, %bb.an
  %i.di = phi ptr [ %i.dh, %bb.ao ], [ @.str.93, %bb.an ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 505, ptr noundef %i.di)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.dj = load ptr, ptr %9, align 8, !tbaa !118   ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i60, label %_ZN7testing7MessageD2Ev.exit62, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61: ; preds = %bb.aq
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !53
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(128) %i.dj) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit62

_ZN7testing7MessageD2Ev.exit62:                   ; preds = %bb.aq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !113 ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i63, label %_ZN7testing15AssertionResultD2Ev.exit67, label %bb.ar

bb.ar:                                            ; preds = %_ZN7testing7MessageD2Ev.exit62
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !116 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i64: ; preds = %bb.ar
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !119
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i64
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit67

_ZN7testing15AssertionResultD2Ev.exit67:          ; preds = %_ZN7testing7MessageD2Ev.exit62, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bm

bb.as:                                            ; preds = %bb.am
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit70

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.ap
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn22 = phi { ptr, i32 } [ %i.dv, %bb.au ], [ %i.du, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.dw = load ptr, ptr %9, align 8, !tbaa !118   ; 3 uses
  %.not.i.i68 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i68, label %_ZN7testing7MessageD2Ev.exit70, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %bb.av
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !53
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(128) %i.dw) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit70

_ZN7testing7MessageD2Ev.exit70:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, %bb.av, %bb.as
  %.pn22.pn = phi { ptr, i32 } [ %i.dt, %bb.as ], [ %.pn22, %bb.av ], [ %.pn22, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #29
  br label %15

.critedge32:                                      ; preds = %_ZN4entt8meta_anyD2Ev.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !113 ; 4 uses
  %.not.i.i71 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i71, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i76, label %bb.aw

bb.aw:                                            ; preds = %.critedge32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !116 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72: ; preds = %bb.aw
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !119
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 32) #31
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i76

_ZNK4entt9meta_type10fetch_nodeEv.exit.i76:       ; preds = %.critedge32, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !156 ; 3 uses
  %.not.i100 = icmp eq ptr %i.ei, null
  br i1 %.not.i100, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i76
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 96
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !172 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 104
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !172 ; 2 uses
  %i.en = icmp eq ptr %i.ek, %i.em
  br i1 %i.en, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ax, %bb.ay
  %.sroa.010.015.i.i = phi ptr [ %i.ep, %bb.ay ], [ %i.ek, %bb.ax ] ; 2 uses
  %i.eo = load i32, ptr %.sroa.010.015.i.i, align 8, !tbaa !195
  %.not.i.i101 = icmp eq i32 %i.eo, 243156999
  br i1 %.not.i.i101, label %_ZNK4entt9meta_type4funcEjb.exit82, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.i, i64 88 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.em
  br i1 %i.eq, label %.loopexit, label %.lr.ph.i.i

.loopexit:                                        ; preds = %bb.ay, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i76, %bb.ax
  %i.er = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69
  %.not.i.i.i.i.i81 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i81, label %bb.az, label %_ZN7testing15AssertionResultD2Ev.exit99

bb.az:                                            ; preds = %.loopexit
  %i.es = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN7testing15AssertionResultD2Ev.exit99 unwind label %bb.ba ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #30
  unreachable

15:                                               ; preds = %_ZN7testing7MessageD2Ev.exit70, %_ZN4entt8meta_anyD2Ev.exit58
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZN7testing7MessageD2Ev.exit70 ], [ %i.da, %_ZN4entt8meta_anyD2Ev.exit58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bn

_ZNK4entt9meta_type4funcEjb.exit82:               ; preds = %.lr.ph.i.i
  store i8 0, ptr %11, align 8, !tbaa !110
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.ev, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %_ZNK4entt9meta_type4funcEjb.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ew = load ptr, ptr %14, align 8, !tbaa !116
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 506, ptr noundef %i.ew)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  %i.ex = load ptr, ptr %14, align 8, !tbaa !116  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.be
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !119
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.fc = load ptr, ptr %12, align 8, !tbaa !118  ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i86, label %bb.bk, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !53
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(128) %i.fc) #29, !inline_history !1
  br label %bb.bk

bb.bf:                                            ; preds = %_ZNK4entt9meta_type4funcEjb.exit82
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit94

bb.bg:                                            ; preds = %bb.bb
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.bh:                                            ; preds = %bb.bc
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #29
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn26 = phi { ptr, i32 } [ %i.fj, %bb.bi ], [ %i.fi, %bb.bh ] ; 2 uses
  %i.fk = load ptr, ptr %14, align 8, !tbaa !116  ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.bj
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !119
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.bg
  %.pn26.pn = phi { ptr, i32 } [ %i.fh, %bb.bg ], [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn26, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.fp = load ptr, ptr %12, align 8, !tbaa !118  ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i92, label %_ZN7testing7MessageD2Ev.exit94, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !53
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(128) %i.fp) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit94

_ZN7testing7MessageD2Ev.exit94:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.bf
  %.pn26.pn.pn = phi { ptr, i32 } [ %i.fg, %bb.bf ], [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn26.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.bn

bb.bk:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %.pr = load ptr, ptr %i.ev, align 8, !tbaa !113 ; 4 uses
  %.not.i.i95 = icmp eq ptr %.pr, null
  br i1 %.not.i.i95, label %_ZN7testing15AssertionResultD2Ev.exit99, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ft = load ptr, ptr %.pr, align 8, !tbaa !116 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96: ; preds = %bb.bl
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !119
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit99

_ZN7testing15AssertionResultD2Ev.exit99:          ; preds = %bb.az, %.loopexit, %bb.bk, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit67, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.bn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit94, %15, %_ZN7testing7MessageD2Ev.exit40
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %_ZN7testing7MessageD2Ev.exit94 ], [ %.pn22.pn.pn, %15 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN4entt8meta_any4castIiEENSt12remove_constIT_E4typeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !177
  %i.d = icmp ne i32 %i.c, -1779859874
  %i.e = load i8, ptr %i.a, align 4               ; 2 uses
  %i.f = icmp eq i8 %i.e, 2
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = select i1 %i.f, ptr %0, ptr %i.g         ; 2 uses
  %.not3.i.i = icmp eq ptr %i.h, null
  %.not.i.i = select i1 %i.d, i1 true, i1 %.not3.i.i
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt8meta_any8try_castIKiEEPT_v.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !179
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !180  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !142, !nonnull !112, !noundef !112
  tail call void %i.o(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef null), !inline_history !651
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !180
  %.pre.i.i = load i8, ptr %i.a, align 4, !tbaa !178
  %.pre5.i.i = load ptr, ptr %0, align 8
  br label %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i

_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i:        ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %.pre5.i.i, %bb.c ], [ %i.g, %bb.b ]
  %i.q = phi i8 [ %.pre.i.i, %bb.c ], [ %i.e, %bb.b ]
  %i.r = phi ptr [ %.pre.i.i.i, %bb.c ], [ %i.l, %bb.b ]
  %i.s = icmp eq i8 %i.q, 2
  %i.t = select i1 %i.s, ptr %0, ptr %i.p
  %i.u = tail call noundef ptr @_ZN4entt8internal8try_castERKNS0_12meta_contextERKNS0_14meta_type_nodeEjPKv(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %i.r, i32 noundef -1779859874, ptr noundef %i.t) #29
  br label %_ZN4entt8meta_any8try_castIKiEEPT_v.exit

_ZN4entt8meta_any8try_castIKiEEPT_v.exit:         ; preds = %bb.a, %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i
  %i.v = phi ptr [ %i.u, %_ZNK4entt8meta_any10fetch_nodeEv.exit.i.i ], [ %i.h, %bb.a ]
  %i.w = load i32, ptr %i.v, align 4, !tbaa !75
  ret i32 %i.w
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN20MetaType_Invoke_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::meta_type", align 8   ; 9 uses
  %2 = alloca %"struct.MetaType::clazz", align 4  ; 6 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.entt::meta_any", align 8    ; 6 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %9 = alloca %"class.entt::meta_any", align 8    ; 6 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.entt::meta_any", align 8   ; 7 uses
  %15 = alloca %"class.entt::meta_handle", align 8 ; 14 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
end_hunk_1
begin_hunk_2_@_ZN31MetaType_FromVoidOwnership_Test8TestBodyEv:bb.a
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.bk
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !119
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %i.fv = load ptr, ptr %20, align 8, !tbaa !118  ; 3 uses
  %.not.i.i153 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i153, label %bb.bq, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !53
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(128) %i.fv) #29, !inline_history !1
  br label %bb.bq

bb.bl:                                            ; preds = %bb.bg
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit161

bb.bm:                                            ; preds = %bb.bh
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

bb.bn:                                            ; preds = %bb.bi
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bj
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #29
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn49 = phi { ptr, i32 } [ %i.gc, %bb.bo ], [ %i.gb, %bb.bn ] ; 2 uses
  %i.gd = load ptr, ptr %22, align 8, !tbaa !116  ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.bp
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !119
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %bb.bm
  %.pn49.pn = phi { ptr, i32 } [ %i.ga, %bb.bm ], [ %.pn49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %.pn49, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %i.gi = load ptr, ptr %20, align 8, !tbaa !118  ; 3 uses
  %.not.i.i159 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i159, label %_ZN7testing7MessageD2Ev.exit161, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !53
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(128) %i.gi) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit161

_ZN7testing7MessageD2Ev.exit161:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %bb.bl
  %.pn49.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.bl ], [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn49.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.bx

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  %.pr = load ptr, ptr %i.fn, align 8, !tbaa !113 ; 4 uses
  %.not.i.i162 = icmp eq ptr %.pr, null
  br i1 %.not.i.i162, label %_ZN7testing15AssertionResultD2Ev.exit166, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gm = load ptr, ptr %.pr, align 8, !tbaa !116 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i163: ; preds = %bb.br
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !119
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i163
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit166

_ZN7testing15AssertionResultD2Ev.exit166:         ; preds = %bb.bf, %bb.bq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit135, %_ZN7testing15AssertionResultD2Ev.exit112, %_ZN7testing15AssertionResultD2Ev.exit90, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit166
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i167 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i167, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.bu, !inline_history !3

bb.bu:                                            ; preds = %bb.bt
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #30
  unreachable

_ZN4entt8meta_anyD2Ev.exit:                       ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i168, label %_ZN4entt8meta_anyD2Ev.exit169, label %bb.bv

bb.bv:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit
  invoke void %i.gw(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN4entt8meta_anyD2Ev.exit169 unwind label %bb.bw, !inline_history !3

bb.bw:                                            ; preds = %bb.bv
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #30
  unreachable

_ZN4entt8meta_anyD2Ev.exit169:                    ; preds = %_ZN4entt8meta_anyD2Ev.exit, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void

bb.bx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit161, %_ZN7testing7MessageD2Ev.exit141, %bb.ar, %_ZN7testing7MessageD2Ev.exit118, %_ZN7testing7MessageD2Ev.exit96, %_ZN7testing7MessageD2Ev.exit74
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn, %_ZN7testing7MessageD2Ev.exit161 ], [ %i.ec, %bb.ar ], [ %.pn45.pn.pn, %_ZN7testing7MessageD2Ev.exit141 ], [ %.pn41.pn.pn, %_ZN7testing7MessageD2Ev.exit118 ], [ %.pn37.pn.pn, %_ZN7testing7MessageD2Ev.exit96 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit74 ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i170 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i170, label %_ZN4entt8meta_anyD2Ev.exit171, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void %i.ha(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZN4entt8meta_anyD2Ev.exit171 unwind label %bb.bz, !inline_history !3

bb.bz:                                            ; preds = %bb.by
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #30
  unreachable

_ZN4entt8meta_anyD2Ev.exit171:                    ; preds = %bb.by, %bb.bx, %bb.e
  %.pn49.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %.pn49.pn.pn.pn, %bb.bx ], [ %.pn49.pn.pn.pn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i172, label %_ZN4entt8meta_anyD2Ev.exit173, label %bb.ca

bb.ca:                                            ; preds = %_ZN4entt8meta_anyD2Ev.exit171
  invoke void %i.he(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN4entt8meta_anyD2Ev.exit173 unwind label %bb.cb, !inline_history !3

bb.cb:                                            ; preds = %bb.ca
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #30
  unreachable

_ZN4entt8meta_anyD2Ev.exit173:                    ; preds = %_ZN4entt8meta_anyD2Ev.exit171, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  resume { ptr, i32 } %.pn49.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN19MetaType_Reset_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.entt::basic_hashed_string", align 8 ; 6 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.entt::meta_any", align 8   ; 7 uses
  %15 = alloca %"class.entt::meta_type", align 8  ; 6 uses
  %16 = alloca %"struct.MetaType::derived", align 1 ; 5 uses
  %17 = alloca %"struct.MetaType::clazz", align 4 ; 5 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %22 = alloca %"class.entt::meta_any", align 8   ; 7 uses
  %23 = alloca %"class.entt::meta_type", align 8  ; 6 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %32 = alloca %"class.entt::basic_hashed_string", align 8 ; 6 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %36 = alloca %"class.entt::meta_type", align 8  ; 5 uses
  %37 = alloca %"class.testing::Message", align 8 ; 7 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %41 = alloca %"class.entt::meta_any", align 8   ; 7 uses
  %42 = alloca %"class.entt::meta_type", align 8  ; 6 uses
  %43 = alloca %"struct.MetaType::derived", align 1 ; 5 uses
  %44 = alloca %"struct.MetaType::clazz", align 4 ; 5 uses
  %45 = alloca %"class.testing::Message", align 8 ; 7 uses
  %46 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %48 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %49 = alloca %"class.entt::meta_any", align 8   ; 7 uses
  %50 = alloca %"class.entt::meta_type", align 8  ; 6 uses
  %51 = alloca %"class.testing::Message", align 8 ; 7 uses
  %52 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %54 = alloca %"class.entt::meta_factory", align 8 ; 5 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.c = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit.i unwind label %bb.h

_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.c, %bb.a ], [ %i.d, %bb.b ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 2872970239
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit.i
  %.07.in.i.i.i.i = phi ptr [ %i.o, %_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit.i ], [ %i.r, %bb.d ]
  %.07.i.i.i.i = load i64, ptr %.07.in.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.07.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.07.i.i.i.i ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !75
  %i.u = icmp eq i32 %i.t, -1421997057
  br i1 %i.u, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i, label %bb.c, !llvm.loop !0

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79   ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.q to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.z
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i: ; preds = %bb.d
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !79
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i, %bb.e
  %i.ab = phi ptr [ %i.w, %bb.e ], [ %.pre.i.i, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i ] ; 3 uses
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.r, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i ] ; 2 uses
  %i.ac = icmp eq ptr %.sroa.0.1.i.i.i.i, %i.ab
  br i1 %i.ac, label %.critedge.preheader.i.i, label %_ZN4entt7resolveEj.exit

.critedge.preheader.i.i:                          ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i
  %i.ad = icmp eq ptr %i.q, %i.ab
  br i1 %i.ad, label %.critedge18.i.i, label %.critedge16.i.i

.critedge.i.i:                                    ; preds = %.critedge16.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.020.030.i.i, i64 24 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ab
  br i1 %i.af, label %.critedge18.i.i, label %.critedge16.i.i

.critedge16.i.i:                                  ; preds = %.critedge.preheader.i.i, %.critedge.i.i
  %.sroa.020.030.i.i = phi ptr [ %i.ae, %.critedge.i.i ], [ %i.q, %.critedge.preheader.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.030.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !97
  %.not.i1.i = icmp eq i32 %i.aj, -1421997057
  br i1 %.not.i1.i, label %_ZN7testing15AssertionResultD2Ev.exit.thread308, label %.critedge.i.i

.critedge18.i.i:                                  ; preds = %.critedge.i.i, %.critedge.preheader.i.i
  %i.ak = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69
  %.not.i.i19.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i19.i.i, label %bb.f, label %_ZN4entt7resolveEj.exit.thread

bb.f:                                             ; preds = %.critedge18.i.i
  %i.al = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt7resolveEj.exit.thread unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #30
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #30
  unreachable

_ZN4entt7resolveEj.exit.thread:                   ; preds = %bb.f, %.critedge18.i.i
  store i8 0, ptr %1, align 8, !tbaa !110
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !124
  br label %bb.i

_ZN4entt7resolveEj.exit:                          ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !81
  %i.at = icmp ne ptr %i.as, null                 ; 2 uses
  %i.au = zext i1 %i.at to i8
  store i8 %i.au, ptr %1, align 8, !tbaa !110
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !124
  br i1 %i.at, label %_ZN7testing15AssertionResultD2Ev.exit.thread308, label %bb.i

bb.i:                                             ; preds = %_ZN4entt7resolveEj.exit.thread, %_ZN4entt7resolveEj.exit
  %i.aw = phi ptr [ %i.aq, %_ZN4entt7resolveEj.exit.thread ], [ %i.av, %_ZN4entt7resolveEj.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %4, align 8, !tbaa !116
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 785, ptr noundef %i.ax)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  %i.ay = load ptr, ptr %4, align 8, !tbaa !116   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !119
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_2
begin_hunk_3_@_ZN19MetaType_Reset_Test8TestBodyEv:bb.a
  %.not.i.i102 = icmp eq ptr %.pr, null
  br i1 %.not.i.i102, label %_ZN7testing15AssertionResultD2Ev.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = load ptr, ptr %.pr, align 8, !tbaa !116 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !119
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit.thread

_ZN7testing15AssertionResultD2Ev.exit.thread:     ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.ez

_ZN7testing15AssertionResultD2Ev.exit.thread308:  ; preds = %.critedge16.i.i, %_ZN4entt7resolveEj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.bz = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i103, label %bb.u, label %_ZNK4entt9meta_type5aliasEv.exit

bb.u:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit.thread308
  %i.ca = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type5aliasEv.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #30
  unreachable

_ZNK4entt9meta_type5aliasEv.exit:                 ; preds = %bb.u, %_ZN7testing15AssertionResultD2Ev.exit.thread308
  %i.cd = phi ptr [ %i.bz, %_ZN7testing15AssertionResultD2Ev.exit.thread308 ], [ %i.ca, %bb.u ]
  %i.ce = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.cd) #29
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !97 ; 2 uses
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr @.str.109, ptr %6, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 -1421997057, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 5, ptr %i.ci, align 8
  %i.cj = icmp eq i32 %i.cg, -1421997057
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK4entt9meta_type5aliasEv.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  br label %_ZN7testing8internal8EqHelper7CompareIjN4entt19basic_hashed_stringIcEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit

bb.x:                                             ; preds = %_ZNK4entt9meta_type5aliasEv.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIjN4entt19basic_hashed_stringIcEEEENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.325, ptr noundef nonnull @.str.108, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN7testing8internal8EqHelper7CompareIjN4entt19basic_hashed_stringIcEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit

_ZN7testing8internal8EqHelper7CompareIjN4entt19basic_hashed_stringIcEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ck = load i8, ptr %5, align 8, !tbaa !110, !range !111, !noundef !112
  %i.cl = trunc nuw i8 %i.ck to i1                ; 2 uses
  br i1 %i.cl, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIjN4entt19basic_hashed_stringIcEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !116
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.aa, %bb.z
  %i.cp = phi ptr [ %i.co, %bb.aa ], [ @.str.93, %bb.z ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 786, ptr noundef %i.cp)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.cq = load ptr, ptr %7, align 8, !tbaa !118   ; 3 uses
  %.not.i.i107 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i107, label %_ZN7testing7MessageD2Ev.exit109, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108: ; preds = %bb.ac
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(128) %i.cq) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit109

_ZN7testing7MessageD2Ev.exit109:                  ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit112

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn56 = phi { ptr, i32 } [ %i.cw, %bb.af ], [ %i.cv, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.cx = load ptr, ptr %7, align 8, !tbaa !118   ; 3 uses
  %.not.i.i110 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i110, label %_ZN7testing7MessageD2Ev.exit112, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111: ; preds = %bb.ag
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !53
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(128) %i.cx) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit112

_ZN7testing7MessageD2Ev.exit112:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111, %bb.ag, %bb.ad
  %.pn56.pn = phi { ptr, i32 } [ %i.cu, %bb.ad ], [ %.pn56, %bb.ag ], [ %.pn56, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.fa

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjN4entt19basic_hashed_stringIcEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit109
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !113 ; 4 uses
  %.not.i.i113 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i113, label %_ZN7testing15AssertionResultD2Ev.exit117, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !116 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i114: ; preds = %bb.ai
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !119
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i114
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit117

_ZN7testing15AssertionResultD2Ev.exit117:         ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br i1 %i.cl, label %bb.aj, label %bb.ez

bb.aj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit117
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.di = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i118 = icmp eq ptr %i.di, null
  br i1 %.not.i.i118, label %bb.ak, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.dj = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #30
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.ak, %bb.aj
  %i.dm = phi ptr [ %i.di, %bb.aj ], [ %i.dj, %bb.ak ] ; 2 uses
  %i.dn = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.dm) #29
  %i.do = call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.dm, ptr noundef nonnull align 8 dereferenceable(128) %i.dn, i32 noundef 1113510858, i1 noundef zeroext true)
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %bb.am, label %59

bb.am:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %i.dp = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69
  %.not.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dq = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.ap unwind label %bb.ao     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #30
  unreachable

bb.ap:                                            ; preds = %bb.am, %bb.an
  store i8 0, ptr %9, align 8, !tbaa !110
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.dt, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.du = load ptr, ptr %12, align 8, !tbaa !116
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 787, ptr noundef %i.du)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  %i.dv = load ptr, ptr %12, align 8, !tbaa !116  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.at
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !119
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.ea = load ptr, ptr %10, align 8, !tbaa !118  ; 3 uses
  %.not.i.i126 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i126, label %bb.az, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !53
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(128) %i.ea) #29, !inline_history !1
  br label %bb.az

bb.au:                                            ; preds = %bb.ap
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit134

bb.av:                                            ; preds = %bb.aq
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.aw:                                            ; preds = %bb.ar
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.as
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn59 = phi { ptr, i32 } [ %i.eh, %bb.ax ], [ %i.eg, %bb.aw ] ; 2 uses
  %i.ei = load ptr, ptr %12, align 8, !tbaa !116  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.ay
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !119
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.av
  %.pn59.pn = phi { ptr, i32 } [ %i.ef, %bb.av ], [ %.pn59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn59, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.en = load ptr, ptr %10, align 8, !tbaa !118  ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.en, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !53
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(128) %i.en) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %bb.au
  %.pn59.pn.pn = phi { ptr, i32 } [ %i.ee, %bb.au ], [ %.pn59.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %.pn59.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.fa

bb.az:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %.pr313 = load ptr, ptr %i.dt, align 8, !tbaa !113 ; 4 uses
  %.not.i.i135 = icmp eq ptr %.pr313, null
  br i1 %.not.i.i135, label %_ZN7testing15AssertionResultD2Ev.exit139, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.er = load ptr, ptr %.pr313, align 8, !tbaa !116 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.pr313, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.ba
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !119
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %.pr313, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit139

_ZN7testing15AssertionResultD2Ev.exit139:         ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ez

59:                                               ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %60 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i140 = icmp eq ptr %60, null
  br i1 %.not.i.i140, label %bb.bb, label %_ZN4entt7resolveIN8MetaType5clazzEEENS_9meta_typeEv.exit144

bb.bb:                                            ; preds = %59
  %i.ew = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt7resolveIN8MetaType5clazzEEENS_9meta_typeEv.exit144 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #30
  unreachable

_ZN4entt7resolveIN8MetaType5clazzEEENS_9meta_typeEv.exit144: ; preds = %59, %bb.bb
  %i.ez = phi ptr [ %60, %59 ], [ %i.ew, %bb.bb ] ; 2 uses
  %i.fa = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.ez) #29
  store ptr %i.fa, ptr %15, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.ez, ptr %i.fb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  store i8 99, ptr %16, align 1, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  store i32 0, ptr %17, align 4, !tbaa !238
  call void @_ZNK4entt9meta_type9constructIJN8MetaType7derivedENS2_5clazzEEEENS_8meta_anyEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 4 dereferenceable(4) %17)
  %i.fc = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !142
  %i.fe = icmp ne ptr %i.fd, null                 ; 2 uses
  %i.ff = zext i1 %i.fe to i8
  store i8 %i.ff, ptr %13, align 8, !tbaa !110
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.fg, align 8, !tbaa !124
  %i.fh = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i145, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN4entt7resolveIN8MetaType5clazzEEENS_9meta_typeEv.exit144
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %._ZN4entt8meta_anyD2Ev.exit_crit_edge unwind label %bb.be, !inline_history !3

._ZN4entt8meta_anyD2Ev.exit_crit_edge:            ; preds = %bb.bd
  %.pre = load i8, ptr %13, align 8, !tbaa !110, !range !111
  %i.fj = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br i1 %i.fj, label %bb.bp, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #30
  unreachable

_ZN4entt8meta_anyD2Ev.exit:                       ; preds = %_ZN4entt7resolveIN8MetaType5clazzEEENS_9meta_typeEv.exit144
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br i1 %i.fe, label %bb.bp, label %bb.bf

bb.bf:                                            ; preds = %._ZN4entt8meta_anyD2Ev.exit_crit_edge, %_ZN4entt8meta_anyD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.327, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.fm = load ptr, ptr %20, align 8, !tbaa !116
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 788, ptr noundef %i.fm)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #29
  %i.fn = load ptr, ptr %20, align 8, !tbaa !116  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.bj
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !119
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  %i.fs = load ptr, ptr %18, align 8, !tbaa !118  ; 3 uses
  %.not.i.i149 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i149, label %_ZN7testing7MessageD2Ev.exit151, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !53
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(128) %i.fs) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit151

_ZN7testing7MessageD2Ev.exit151:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.bp

bb.bk:                                            ; preds = %bb.bf
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit157

bb.bl:                                            ; preds = %bb.bg
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

bb.bm:                                            ; preds = %bb.bh
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bi
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #29
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn63 = phi { ptr, i32 } [ %i.fz, %bb.bn ], [ %i.fy, %bb.bm ] ; 2 uses
  %i.ga = load ptr, ptr %20, align 8, !tbaa !116  ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.bo
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !119
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152, %bb.bl
  %.pn63.pn = phi { ptr, i32 } [ %i.fx, %bb.bl ], [ %.pn63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %.pn63, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  %i.gf = load ptr, ptr %18, align 8, !tbaa !118  ; 3 uses
  %.not.i.i155 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i155, label %_ZN7testing7MessageD2Ev.exit157, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !53
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(128) %i.gf) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit157

_ZN7testing7MessageD2Ev.exit157:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %bb.bk
  %.pn63.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.bk ], [ %.pn63.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %.pn63.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.fa

bb.bp:                                            ; preds = %._ZN4entt8meta_anyD2Ev.exit_crit_edge, %_ZN4entt8meta_anyD2Ev.exit, %_ZN7testing7MessageD2Ev.exit151
  %i.gj = phi i1 [ true, %._ZN4entt8meta_anyD2Ev.exit_crit_edge ], [ true, %_ZN4entt8meta_anyD2Ev.exit ], [ false, %_ZN7testing7MessageD2Ev.exit151 ]
  %i.gk = load ptr, ptr %i.fg, align 8, !tbaa !113 ; 4 uses
  %.not.i.i158 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i158, label %_ZN7testing15AssertionResultD2Ev.exit162, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !116 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159: ; preds = %bb.bq
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !119
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit162

_ZN7testing15AssertionResultD2Ev.exit162:         ; preds = %bb.bp, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br i1 %i.gj, label %bb.br, label %bb.ez

bb.br:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  %i.gq = call { ptr, ptr } @_ZN4entt7resolveIN8MetaType5clazzEEENS_9meta_typeEv() #29 ; 2 uses
  %i.gr = extractvalue { ptr, ptr } %i.gq, 0
  store ptr %i.gr, ptr %23, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.gt = extractvalue { ptr, ptr } %i.gq, 1
  store ptr %i.gt, ptr %i.gs, align 8
  call void @_ZNK4entt9meta_type9constructIJEEENS_8meta_anyEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_any") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %23)
  %i.gu = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !142
  %i.gw = icmp ne ptr %i.gv, null                 ; 2 uses
  %i.gx = zext i1 %i.gw to i8
  store i8 %i.gx, ptr %21, align 8, !tbaa !110
  %i.gy = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr null, ptr %i.gy, align 8, !tbaa !124
  %i.gz = getelementptr inbounds nuw i8, ptr %22, i64 24
end_hunk_3
begin_hunk_4_@_ZN19MetaType_Reset_Test8TestBodyEv:bb.a
  br label %bb.em

bb.eh:                                            ; preds = %bb.ec
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit238

bb.ei:                                            ; preds = %bb.ed
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

bb.ej:                                            ; preds = %bb.ee
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ek:                                            ; preds = %bb.ef
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %52) #29
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.pn86 = phi { ptr, i32 } [ %i.nt, %bb.ek ], [ %i.ns, %bb.ej ] ; 2 uses
  %i.nu = load ptr, ptr %53, align 8, !tbaa !116  ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.nw = icmp eq ptr %i.nu, %i.nv
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.el
  %i.nx = load i64, ptr %i.nv, align 8, !tbaa !119
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.ny) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233, %bb.ei
  %.pn86.pn = phi { ptr, i32 } [ %i.nr, %bb.ei ], [ %.pn86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ], [ %.pn86, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #29
  %i.nz = load ptr, ptr %51, align 8, !tbaa !118  ; 3 uses
  %.not.i.i236 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i236, label %_ZN7testing7MessageD2Ev.exit238, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !53
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8
  call void %i.oc(ptr noundef nonnull align 8 dereferenceable(128) %i.nz) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit238

_ZN7testing7MessageD2Ev.exit238:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %bb.eh
  %.pn86.pn.pn = phi { ptr, i32 } [ %i.nq, %bb.eh ], [ %.pn86.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %.pn86.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %48) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  br label %bb.fa

bb.em:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %48) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  br label %bb.ez

bb.en:                                            ; preds = %._ZN4entt8meta_anyD2Ev.exit226_crit_edge, %_ZN4entt8meta_anyD2Ev.exit226
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %48) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #29
  call void @_ZN4entt12meta_factoryIN8MetaType5clazzEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %54) #29
  %i.od = getelementptr inbounds nuw i8, ptr %54, i64 28
  store i32 0, ptr %i.od, align 4, !tbaa !211, !noalias !788
  %i.oe = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !212, !noalias !788 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  store i32 -1421997057, ptr %i.og, align 8, !tbaa !97, !noalias !788
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store ptr null, ptr %i.oh, align 8, !tbaa !229, !noalias !788
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #29
  %i.oi = call { ptr, ptr } @_ZN4entt7resolveEj(i32 noundef -1421997057) #29
  %i.oj = extractvalue { ptr, ptr } %i.oi, 0
  %i.ok = icmp ne ptr %i.oj, null                 ; 2 uses
  %i.ol = zext i1 %i.ok to i8
  store i8 %i.ol, ptr %55, align 8, !tbaa !110
  %i.om = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr null, ptr %i.om, align 8, !tbaa !124
  br i1 %i.ok, label %bb.ey, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.ep unwind label %bb.et

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #29
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8)
          to label %bb.eq unwind label %bb.eu

bb.eq:                                            ; preds = %bb.ep
  %i.on = load ptr, ptr %58, align 8, !tbaa !116
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %57, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 803, ptr noundef %i.on)
          to label %bb.er unwind label %bb.ev

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.es unwind label %bb.ew

bb.es:                                            ; preds = %bb.er
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #29
  %i.oo = load ptr, ptr %58, align 8, !tbaa !116  ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.es
  %i.or = load i64, ptr %i.op, align 8, !tbaa !119
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #29
  %i.ot = load ptr, ptr %56, align 8, !tbaa !118  ; 3 uses
  %.not.i.i242 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i242, label %_ZN7testing7MessageD2Ev.exit244, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i243

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !53
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(128) %i.ot) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit244

_ZN7testing7MessageD2Ev.exit244:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #29
  br label %bb.ey

bb.et:                                            ; preds = %bb.eo
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit250

bb.eu:                                            ; preds = %bb.ep
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.ev:                                            ; preds = %bb.eq
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ew:                                            ; preds = %bb.er
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #29
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.pn90 = phi { ptr, i32 } [ %i.pa, %bb.ew ], [ %i.oz, %bb.ev ] ; 2 uses
  %i.pb = load ptr, ptr %58, align 8, !tbaa !116  ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.pd = icmp eq ptr %i.pb, %i.pc
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.ex
  %i.pe = load i64, ptr %i.pc, align 8, !tbaa !119
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.eu
  %.pn90.pn = phi { ptr, i32 } [ %i.oy, %bb.eu ], [ %.pn90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.pn90, %bb.ex ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #29
  %i.pg = load ptr, ptr %56, align 8, !tbaa !118  ; 3 uses
  %.not.i.i248 = icmp eq ptr %i.pg, null
  br i1 %.not.i.i248, label %_ZN7testing7MessageD2Ev.exit250, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i249

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !53
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8
  call void %i.pj(ptr noundef nonnull align 8 dereferenceable(128) %i.pg) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit250

_ZN7testing7MessageD2Ev.exit250:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %bb.et
  %.pn90.pn.pn = phi { ptr, i32 } [ %i.ox, %bb.et ], [ %.pn90.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.pn90.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i249 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %55) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #29
  br label %bb.fa

bb.ey:                                            ; preds = %bb.en, %_ZN7testing7MessageD2Ev.exit244
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %55) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #29
  br label %bb.ez

bb.ez:                                            ; preds = %_ZN7testing7MessageD2Ev.exit204, %_ZN7testing7MessageD2Ev.exit182, %bb.em, %bb.dy, %bb.da, %bb.ce, %_ZN7testing15AssertionResultD2Ev.exit139, %_ZN7testing15AssertionResultD2Ev.exit.thread, %_ZN7testing15AssertionResultD2Ev.exit162, %_ZN7testing15AssertionResultD2Ev.exit117, %bb.ey
  ret void

bb.fa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit250, %_ZN7testing7MessageD2Ev.exit238, %_ZN7testing7MessageD2Ev.exit224, %_ZN7testing7MessageD2Ev.exit210, %_ZN7testing7MessageD2Ev.exit198, %_ZN7testing7MessageD2Ev.exit188, %_ZN7testing7MessageD2Ev.exit176, %_ZN7testing7MessageD2Ev.exit157, %_ZN7testing7MessageD2Ev.exit134, %_ZN7testing7MessageD2Ev.exit112, %_ZN7testing7MessageD2Ev.exit101
  %.pn90.pn.pn.pn = phi { ptr, i32 } [ %.pn90.pn.pn, %_ZN7testing7MessageD2Ev.exit250 ], [ %.pn86.pn.pn, %_ZN7testing7MessageD2Ev.exit238 ], [ %.pn82.pn.pn, %_ZN7testing7MessageD2Ev.exit224 ], [ %.pn78.pn.pn, %_ZN7testing7MessageD2Ev.exit210 ], [ %.pn75.pn, %_ZN7testing7MessageD2Ev.exit198 ], [ %.pn71.pn.pn, %_ZN7testing7MessageD2Ev.exit188 ], [ %.pn67.pn.pn, %_ZN7testing7MessageD2Ev.exit176 ], [ %.pn63.pn.pn, %_ZN7testing7MessageD2Ev.exit157 ], [ %.pn59.pn.pn, %_ZN7testing7MessageD2Ev.exit134 ], [ %.pn56.pn, %_ZN7testing7MessageD2Ev.exit112 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit101 ]
  resume { ptr, i32 } %.pn90.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt10meta_resetEj(i32 noundef %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit unwind label %bb.c

_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  tail call void @_ZN4entt10meta_resetERNS_8meta_ctxEj(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i32 noundef %0) #29
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11CmpHelperNEIjN4entt19basic_hashed_stringIcEEEENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !258
  %.not = icmp eq i32 %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperOpFailureIjN4entt19basic_hashed_stringIcEEEENS_15AssertionResultEPKcS7_RKT_RKT0_S7_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull @.str.446)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN23MetaType_ResetLast_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69, !noalias !799 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4entt7resolveEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt7resolveEv.exit unwind label %bb.c, !noalias !799

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30, !noalias !799
  unreachable

_ZN4entt7resolveEv.exit:                          ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !125, !noalias !800 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79, !noalias !800
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81, !noalias !801 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %_ZNK4entt9meta_type5aliasEv.exit

bb.d:                                             ; preds = %_ZN4entt7resolveEv.exit
  %i.q = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #29
  br label %_ZNK4entt9meta_type5aliasEv.exit

_ZNK4entt9meta_type5aliasEv.exit:                 ; preds = %_ZN4entt7resolveEv.exit, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.o, %_ZN4entt7resolveEv.exit ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !97   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.u = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.u, null
  br i1 %.not.i.i26, label %bb.e, label %_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit.i

bb.e:                                             ; preds = %_ZNK4entt9meta_type5aliasEv.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit.i unwind label %bb.k

_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit.i: ; preds = %bb.e, %_ZNK4entt9meta_type5aliasEv.exit
  %i.w = phi ptr [ %i.u, %_ZNK4entt9meta_type5aliasEv.exit ], [ %i.v, %bb.e ] ; 5 uses
  %i.x = zext i32 %i.t to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !73  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 4294967295
  %i.ag = and i64 %i.af, %i.x
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8            ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit.i
  %.07.in.i.i.i.i = phi ptr [ %i.ah, %_ZN4entt7locatorINS_8meta_ctxEE8value_orITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_.exit.i ], [ %i.ak, %bb.g ]
  %.07.i.i.i.i = load i64, ptr %.07.in.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.07.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.07.i.i.i.i ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !75
  %i.an = icmp eq i32 %i.am, %i.t
  br i1 %i.an, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i, label %bb.f, !llvm.loop !0

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !79 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.aj to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i: ; preds = %bb.g
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !79
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i: ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i, %bb.h
  %i.au = phi ptr [ %i.ap, %bb.h ], [ %.pre.i.i, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i ] ; 3 uses
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.at, %bb.h ], [ %i.ak, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.0.1.i.i.i.i, %i.au
  br i1 %i.av, label %.critedge.preheader.i.i, label %_ZN4entt7resolveEj.exit

.critedge.preheader.i.i:                          ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.i
  %i.aw = icmp eq ptr %i.aj, %i.au
  br i1 %i.aw, label %.critedge18.i.i, label %.critedge16.i.i

.critedge.i.i:                                    ; preds = %.critedge16.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.020.030.i.i, i64 24 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.au
  br i1 %i.ay, label %.critedge18.i.i, label %.critedge16.i.i

.critedge16.i.i:                                  ; preds = %.critedge.preheader.i.i, %.critedge.i.i
  %.sroa.020.030.i.i = phi ptr [ %i.ax, %.critedge.i.i ], [ %i.aj, %.critedge.preheader.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.020.030.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !81
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !97
  %.not.i1.i = icmp eq i32 %i.bc, %i.t
  br i1 %.not.i1.i, label %_ZN4entt7resolveEj.exit.thread98, label %.critedge.i.i

.critedge18.i.i:                                  ; preds = %.critedge.i.i, %.critedge.preheader.i.i
  %i.bd = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69
  %.not.i.i19.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i19.i.i, label %bb.i, label %_ZN4entt7resolveEj.exit.thread

bb.i:                                             ; preds = %.critedge18.i.i
  %i.be = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt7resolveEj.exit.thread unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #30
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #30
  unreachable
end_hunk_4
