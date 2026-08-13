inline.NumInlined: 1624
inline.NumDeleted: 584
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6casadi10NlImporter9b_segmentEv:bb.a

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #21
          to label %bb.ao unwind label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread: ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ag:                                            ; preds = %bb.aa
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.ah:                                            ; preds = %bb.ab
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.ai:                                            ; preds = %bb.ac
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.aj:                                            ; preds = %bb.ad
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ak:                                            ; preds = %bb.af, %bb.ae
  %.0 = phi i1 [ false, %bb.af ], [ true, %bb.ae ] ; 2 uses
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !16
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.aj ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.de, %bb.ak ] ; 2 uses
  %.1 = phi i1 [ true, %bb.aj ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.ak ] ; 2 uses
  %i.dk = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.ai ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.ai ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.dp = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !16
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.ah
  %.pn.pn.pn = phi { ptr, i32 } [ %i.db, %bb.ah ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.ah ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.du = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !16
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.ag
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.ag ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 4 uses
  %.4 = phi i1 [ true, %bb.ag ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 2 uses
  %i.dz = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !16
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %i.ee = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread: ; preds = %bb.z
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !16
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #23
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.en = load i64, ptr %i.ef, align 8, !tbaa !16
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eo) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.4, label %bb.al, label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.4, label %bb.al, label %bb.am

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.thread
  %.pn.pn.pn.pn.pn.pn68.ph = phi { ptr, i32 } [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.thread ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %.pn.pn.pn.pn.pn.pn68 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %.pn.pn.pn.pn.pn.pn68.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.cy) #22
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %.pn.pn.pn.pn.pn.pn67 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn68, %bb.al ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn67

.sink.split144:                                   ; preds = %_ZNSt6vectorIdSaIdEE2atEm.exit47, %_ZN6casadi10NlImporter11read_doubleEv.exit42, %_ZN6casadi10NlImporter11read_doubleEv.exit39, %_ZN6casadi10NlImporter11read_doubleEv.exit36
  %.sink146 = phi ptr [ %i.bv, %_ZN6casadi10NlImporter11read_doubleEv.exit42 ], [ %i.bg, %_ZN6casadi10NlImporter11read_doubleEv.exit39 ], [ %i.ar, %_ZN6casadi10NlImporter11read_doubleEv.exit36 ], [ %i.ct, %_ZNSt6vectorIdSaIdEE2atEm.exit47 ]
  %.sink = phi double [ %i.bq, %_ZN6casadi10NlImporter11read_doubleEv.exit42 ], [ %i.bb, %_ZN6casadi10NlImporter11read_doubleEv.exit39 ], [ %i.am, %_ZN6casadi10NlImporter11read_doubleEv.exit36 ], [ %i.cf, %_ZNSt6vectorIdSaIdEE2atEm.exit47 ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sink146, i64 %.02994
  store double %.sink, ptr %i.ep, align 8, !tbaa !175
  br label %bb.an

bb.an:                                            ; preds = %.sink.split144, %_ZN6casadi10NlImporter9read_charEv.exit
  %i.eq = add nuw nsw i64 %.02994, 1              ; 2 uses
  %i.er = load i64, ptr %i.g, align 8, !tbaa !165
  %i.es = icmp slt i64 %i.eq, %i.er
  br i1 %i.es, label %bb.b, label %._crit_edge, !llvm.loop !289

bb.ao:                                            ; preds = %bb.af
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi10NlImporter9k_segmentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %10 = alloca %"class.std::vector", align 8      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !165  ; 4 uses
  %i.e = add nsw i64 %i.d, 1                      ; 3 uses
  %i.f = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %i.f, label %.noexc, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #21
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %.noexc36

.noexc36:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.g = shl nuw nsw i64 %i.e, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25 ; 5 uses
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.d
  %11 = getelementptr i8, ptr %i.i, i64 8         ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !225
  %i.j = icmp eq i64 %i.d, 0
  br i1 %i.j, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc36
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !225
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc36, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %11, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %11, %.noexc36 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.062.0 = phi ptr [ %i.h, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.h, %.noexc36 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !93, !range !94, !noundef !95
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.d unwind label %bb.n       ; 0 uses

bb.c:                                             ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.d unwind label %bb.n       ; 0 uses

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.s = load i32, ptr %i.b, align 4, !tbaa !213  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.t = sext i32 %i.s to i64
  %i.u = load i64, ptr %i.c, align 8, !tbaa !165
  %i.v = add nsw i64 %i.u, -1
  %i.w = icmp eq i64 %i.v, %i.t
  br i1 %i.w, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.21)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.74, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !alias.scope !290
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #21
          to label %bb.ac unwind label %bb.t

bb.n:                                             ; preds = %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.o:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.p:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.q:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.r:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.s:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.t:                                             ; preds = %bb.m, %bb.l
  %.08 = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.s ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.af, %bb.t ] ; 2 uses
  %.1 = phi i1 [ true, %bb.s ], [ %.08, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.08, %bb.t ] ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !16
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.r ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.r ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.aq = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.q ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ] ; 2 uses
  %i.av = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.p ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.p ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ba = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !16
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.o
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.o ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.o ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ] ; 2 uses
  %i.bf = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.bk = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread: ; preds = %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #23
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bt = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bu) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.5, label %bb.u, label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.5, label %bb.u, label %bb.aa

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread
  %.pn.pn.pn.pn.pn.pn.pn69.ph = phi { ptr, i32 } [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn.pn.pn.pn.pn.pn.pn69 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn.pn.pn.pn.pn.pn.pn69.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.x) #22
  br label %bb.aa

bb.v:                                             ; preds = %bb.d
  store i64 0, ptr %.sroa.062.0, align 8, !tbaa !225
  %i.bv = icmp sgt i32 %i.s, 0
  br i1 %i.bv, label %.lr.ph.preheader, label %_ZNSt6vectorIxSaIxEED2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.v
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %.lr.ph

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.y, %bb.v
  %i.bw = ptrtoint ptr %.sroa.11.0 to i64
  %i.bx = ptrtoint ptr %.sroa.062.0 to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.062.0, i64 noundef %i.by) #23
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !73  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ca = load i8, ptr %i.n, align 1, !tbaa !93, !range !94, !noundef !95
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.y unwind label %bb.z       ; 0 uses

bb.x:                                             ; preds = %.lr.ph
  %i.cd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.y unwind label %bb.z       ; 0 uses

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.cf = sext i32 %i.ce to i64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.062.0, i64 %indvars.iv
  %12 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %i.cf, ptr %12, align 8, !tbaa !225
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %.lr.ph, !llvm.loop !293

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.u, %bb.z, %bb.n
  %.pn33 = phi { ptr, i32 } [ %i.ch, %bb.z ], [ %.pn.pn.pn.pn.pn.pn.pn69, %bb.u ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.y, %bb.n ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  %.not.i.i.i60 = icmp eq ptr %.sroa.062.0, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIxSaIxEED2Ev.exit61, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = ptrtoint ptr %.sroa.11.0 to i64
  %i.cj = ptrtoint ptr %.sroa.062.0 to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.062.0, i64 noundef %i.ck) #23
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit61

_ZNSt6vectorIxSaIxEED2Ev.exit61:                  ; preds = %bb.ab, %bb.aa
  resume { ptr, i32 } %.pn33

bb.ac:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi10NlImporter9J_segmentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !93, !range !94, !noundef !95
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull %i.d, i64 noundef 4) ; 0 uses
  br label %_ZN6casadi10NlImporter8read_intEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  br label %_ZN6casadi10NlImporter8read_intEv.exit

_ZN6casadi10NlImporter8read_intEv.exit:           ; preds = %bb.b, %bb.c
  %i.l = load i32, ptr %i.d, align 4, !tbaa !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.n = load i8, ptr %i.g, align 1, !tbaa !93, !range !94, !noundef !95
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6casadi10NlImporter8read_intEv.exit
  %i.p = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.c, i64 noundef 4) ; 0 uses
  br label %_ZN6casadi10NlImporter8read_intEv.exit11

bb.e:                                             ; preds = %_ZN6casadi10NlImporter8read_intEv.exit
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  br label %_ZN6casadi10NlImporter8read_intEv.exit11

_ZN6casadi10NlImporter8read_intEv.exit11:         ; preds = %bb.d, %bb.e
  %i.r = load i32, ptr %i.c, align 4, !tbaa !213  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6casadi10NlImporter8read_intEv.exit11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = sext i32 %i.l to i64                     ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.p, %_ZN6casadi10NlImporter8read_intEv.exit11
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.p
  %.0938 = phi i32 [ 0, %.lr.ph ], [ %i.bc, %bb.p ]
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.x = load i8, ptr %i.g, align 1, !tbaa !93, !range !94, !noundef !95
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  br label %_ZN6casadi10NlImporter8read_intEv.exit12

bb.h:                                             ; preds = %bb.f
  %i.aa = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  br label %_ZN6casadi10NlImporter8read_intEv.exit12

_ZN6casadi10NlImporter8read_intEv.exit12:         ; preds = %bb.g, %bb.h
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !73  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ad = load i8, ptr %i.g, align 1, !tbaa !93, !range !94, !noundef !95
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6casadi10NlImporter8read_intEv.exit12
  %i.af = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull %i.a, i64 noundef 8) ; 0 uses
  br label %_ZN6casadi10NlImporter11read_doubleEv.exit

bb.j:                                             ; preds = %_ZN6casadi10NlImporter8read_intEv.exit12
  %i.ag = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN6casadi10NlImporter11read_doubleEv.exit

_ZN6casadi10NlImporter11read_doubleEv.exit:       ; preds = %bb.i, %bb.j
  %i.ah = load double, ptr %i.a, align 8, !tbaa !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN6casadi2MXC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ah)
  %i.ai = sext i32 %i.ab to i64                   ; 3 uses
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !28  ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ao, %i.ai
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN6casadi10NlImporter11read_doubleEv.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, i64 noundef %i.ai, i64 noundef %i.ao) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZN6casadi10NlImporter11read_doubleEv.exit
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %2, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %_ZN6casadimlERKNS_2MXES2_.exit unwind label %.loopexit

_ZN6casadimlERKNS_2MXES2_.exit:                   ; preds = %bb.l
  %i.aq = load ptr, ptr %0, align 8, !tbaa !169, !nonnull !95, !align !170 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !28 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3                 ; 2 uses
  %.not.i.i14 = icmp ugt i64 %i.ay, %i.v
  br i1 %.not.i.i14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN6casadimlERKNS_2MXES2_.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, i64 noundef %i.v, i64 noundef %i.ay) #21
          to label %.noexc15 unwind label %.loopexit.split-lp19

.noexc15:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %_ZN6casadimlERKNS_2MXES2_.exit
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.v ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc17 unwind label %.loopexit18

.noexc17:                                         ; preds = %bb.n
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.p unwind label %bb.o       ; 0 uses

bb.o:                                             ; preds = %.noexc17
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %.body

bb.p:                                             ; preds = %.noexc17
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #22
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.bc = add nuw nsw i32 %.0938, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bc, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !294

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.k
end_hunk_0
