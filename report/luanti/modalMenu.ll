Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/modalMenu?download=true
inline.NumInlined: 365
inline.NumDeleted: 187
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12GUIModalMenu15preprocessEventERK6SEvent:bb.a
  %i.dj = mul i64 %i.di, 1000
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !21
  %i.dm = udiv i64 %i.dl, 1000000
  %i.dn = add i64 %i.dm, %i.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  invoke void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN13PointerAction9fromEventERK6SEvent) #23
          to label %.noexc48 unwind label %bb.z

.noexc48:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.u, %bb.v
  %.sroa.5.0.i = phi i64 [ %i.de, %bb.u ], [ %i.dn, %bb.v ] ; 4 uses
  %.sroa.3.0.i = phi i32 [ %i.cx, %bb.u ], [ %i.dg, %bb.v ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ %i.cv, %bb.u ], [ %i.df, %bb.v ] ; 2 uses
  %.sroa.3.0.insert.ext.i = zext i32 %.sroa.3.0.i to i64
  %.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.3.0.insert.ext.i, 32
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.do, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !94 ; 3 uses
  %.sroa.0.0.extract.trunc4.i = trunc i64 %.sroa.0.0.copyload to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %.not.i.i49 = icmp ult i64 %.sroa.5.0.i, %.sroa.2.0.copyload
  %i.dp = sub nuw i64 %.sroa.5.0.i, %.sroa.2.0.copyload
  %i.dq = sub nuw i64 %.sroa.2.0.copyload, %.sroa.5.0.i
  %.0.i.i = select i1 %.not.i.i49, i64 %i.dq, i64 %i.dp
  %i.dr = sub nsw i32 %.sroa.0.0.i, %.sroa.0.0.extract.trunc4.i
  %i.ds = sub nsw i32 %.sroa.3.0.i, %.sroa.2.0.extract.trunc.i
  %i.dt = sitofp nsz i32 %i.dr to float           ; 2 uses
  %i.du = sitofp nsz i32 %i.ds to float           ; 2 uses
  %i.dv = fmul nnan nsz float %i.du, %i.du
  %i.dw = call nsz float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.dv)
  %i.dx = icmp ult i64 %.0.i.i, 400
  %i.dy = fcmp nsz olt float %i.dw, 9.000000e+02
  %i.dz = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %i.dz, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ea = invoke noundef zeroext i1 @_ZN12GUIModalMenu18simulateMouseEventE18ETOUCH_INPUT_EVENTb(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 3, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.z      ; 0 uses

bb.z:                                             ; preds = %bb.w, %bb.y
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.aa:                                            ; preds = %bb.y, %bb.x
  %.sroa.057.sroa.0.0.insert.ext = zext i32 %.sroa.0.0.i to i64
  %.sroa.057.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.057.sroa.0.0.insert.ext
  store i64 %.sroa.057.sroa.0.0.insert.insert, ptr %i.do, align 8
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !94
  br label %_ZN12GUIModalMenu5leaveEv.exit47.thread

bb.ab:                                            ; preds = %_ZN7irr_ptrI12GUIModalMenuE4grabEPS0_.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !17
  %.not34 = icmp eq i32 %i.ed, 1
  br i1 %.not34, label %bb.ac, label %_ZN12GUIModalMenu5leaveEv.exit47.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !82 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !29
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = invoke noundef ptr %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ef)
          to label %bb.ad unwind label %bb.ae     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %.not35 = icmp eq ptr %i.ej, null
  br i1 %.not35, label %_ZN12GUIModalMenu5leaveEv.exit47.thread, label %bb.af

bb.ae:                                            ; preds = %bb.af, %bb.ac
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  store i8 1, ptr %i.a, align 8, !tbaa !62
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !29
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(308) %i.ej, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.ag unwind label %bb.ae     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr %i.a, align 8, !tbaa !62
  br label %_ZN12GUIModalMenu5leaveEv.exit47.thread

_ZN12GUIModalMenu5leaveEv.exit47.thread:          ; preds = %bb.o, %bb.aa, %_ZN12GUIModalMenu5leaveEv.exit47, %bb.ab, %bb.ad, %bb.ag, %_ZN7irr_ptrI12GUIModalMenuE4grabEPS0_.exit
  %.1 = phi i1 [ true, %bb.ag ], [ %i.bu, %_ZN12GUIModalMenu5leaveEv.exit47 ], [ true, %bb.ab ], [ %i.bu, %bb.aa ], [ true, %bb.ad ], [ true, %_ZN7irr_ptrI12GUIModalMenuE4grabEPS0_.exit ], [ %i.bu, %bb.o ] ; 2 uses
  %i.ep = load ptr, ptr %0, align 8, !tbaa !29
  %i.eq = getelementptr i8, ptr %i.ep, i64 -24
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds i8, ptr %0, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !71
  %i.ev = add nsw i32 %i.eu, -1                   ; 2 uses
  store i32 %i.ev, ptr %i.et, align 8, !tbaa !71
  %.not.i.i.i51 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.i51, label %bb.ah, label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit

bb.ah:                                            ; preds = %_ZN12GUIModalMenu5leaveEv.exit47.thread
  %i.ew = load ptr, ptr %i.es, align 8, !tbaa !29
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(12) %i.es) #22, !inline_history !123
  br label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit

bb.ai:                                            ; preds = %bb.ae, %bb.s, %bb.z, %bb.h, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.ae ], [ %i.al, %bb.h ], [ %i.ak, %bb.g ], [ %i.eb, %bb.z ], [ %i.cq, %bb.s ]
  %i.ez = load ptr, ptr %0, align 8, !tbaa !29
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %0, i64 %i.fb ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !71
  %i.ff = add nsw i32 %i.fe, -1                   ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 8, !tbaa !71
  %.not.i.i.i53 = icmp eq i32 %i.ff, 0
  br i1 %.not.i.i.i53, label %bb.aj, label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit54

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !29
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(12) %i.fc) #22, !inline_history !123
  br label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit54

_ZN7irr_ptrI12GUIModalMenuED2Ev.exit54:           ; preds = %bb.ai, %bb.aj
  resume { ptr, i32 } %.pn.pn.pn

bb.ak:                                            ; preds = %bb.b
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fk = load i8, ptr %i.fj, align 4
  %i.fl = and i8 %i.fk, 4
  %.not = icmp eq i8 %i.fl, 0
  br i1 %.not, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i64 %i.fn, ptr %i.fo, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !69 ; 3 uses
  %.not.i55 = icmp eq ptr %i.fq, null
  br i1 %.not.i55, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !29
  %i.fs = getelementptr i8, ptr %i.fr, i64 -24
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds i8, ptr %i.fq, i64 %i.ft ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !71
  %i.fx = add nsw i32 %i.fw, -1                   ; 2 uses
  store i32 %i.fx, ptr %i.fv, align 8, !tbaa !71
  %.not.i.i56 = icmp eq i32 %i.fx, 0
  br i1 %.not.i.i56, label %bb.an, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit

bb.an:                                            ; preds = %bb.am
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !29
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  tail call void %i.ga(ptr noundef nonnull align 8 dereferenceable(12) %i.fu) #22, !inline_history !4
  br label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit

_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit: ; preds = %bb.al, %bb.am, %bb.an
  store ptr null, ptr %i.fp, align 8, !tbaa !69
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit, %bb.ak
  %i.gb = load ptr, ptr %0, align 8, !tbaa !29
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 328
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = tail call noundef zeroext i1 %i.gd(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.ge, label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.b, %bb.ao
  br label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit

_ZN7irr_ptrI12GUIModalMenuED2Ev.exit:             ; preds = %bb.ah, %_ZN12GUIModalMenu5leaveEv.exit47.thread, %bb.ao, %bb.a, %bb.ap
  %.2 = phi i1 [ false, %bb.ap ], [ true, %bb.ao ], [ true, %bb.a ], [ %.1, %_ZN12GUIModalMenu5leaveEv.exit47.thread ], [ %.1, %bb.ah ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN12GUIModalMenu14getScalingInfoEN4core8vector2dIjEES2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.GUIModalMenu::ScalingInfo") align 4 captures(none) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %1, i64 %2, i64 %3) local_unnamed_addr #14 align 2 {
bb.a:
  %.sroa.4.0.extract.shift = lshr i64 %2, 32
  %.sroa.3.0.extract.shift = lshr i64 %3, 32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.b = load float, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 2 uses
  %.sroa.06.0.extract.trunc = trunc i64 %2 to i32 ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %.sroa.0.0.extract.trunc = trunc i64 %3 to i32
  %i.c = uitofp nsz i32 %.sroa.4.0.extract.trunc to float
  %i.d = uitofp nsz i32 %.sroa.06.0.extract.trunc to float
  %4 = uitofp nsz i32 %.sroa.3.0.extract.trunc to float ; 2 uses
  %5 = uitofp nsz i32 %.sroa.0.0.extract.trunc to float ; 2 uses
  %6 = insertelement <2 x float> poison, float %i.d, i64 0
  %7 = insertelement <2 x float> %6, float %i.c, i64 1
  %i.e = insertelement <2 x float> poison, float %5, i64 0
  %i.f = insertelement <2 x float> %i.e, float %4, i64 1
  %i.g = fdiv nsz <2 x float> %7, %i.f            ; 2 uses
  %i.h = extractelement <2 x float> %i.g, i64 0   ; 2 uses
  %i.i = fcmp nsz olt float %i.h, %i.b
  %.sroa.speculated13 = select i1 %i.i, float %i.h, float %i.b ; 2 uses
  %i.j = extractelement <2 x float> %i.g, i64 1   ; 2 uses
  %i.k = fcmp nsz olt float %i.j, %.sroa.speculated13
  %.sroa.speculated = select i1 %i.k, float %i.j, float %.sroa.speculated13 ; 3 uses
  %8 = fmul nsz float %.sroa.speculated, %5
  %9 = fptosi float %8 to i32
  %10 = fmul nsz float %.sroa.speculated, %4
  %11 = fptosi float %10 to i32
  store float %.sroa.speculated, ptr %0, align 4, !tbaa !127
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = lshr i32 %.sroa.06.0.extract.trunc, 1     ; 2 uses
  %14 = sdiv i32 %9, 2                            ; 2 uses
  %15 = sub i32 %13, %14
  %16 = lshr i32 %.sroa.4.0.extract.trunc, 1      ; 2 uses
  %17 = sdiv i32 %11, 2                           ; 2 uses
  %18 = sub i32 %16, %17
  %19 = add i32 %14, %13
  %20 = add i32 %17, %16
  store i32 %15, ptr %12, align 4, !tbaa !25
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %18, ptr %21, align 4, !tbaa !26
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %19, ptr %22, align 4, !tbaa !25
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %20, ptr %23, align 4, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD1Ev(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD0Ev(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #22, !inline_history !95
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 328) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3gui11IGUIElement7OnEventERK6SEvent(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(308) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement22updateAbsolutePositionEv(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElement27recalculateAbsolutePositionEb(ptr noundef nonnull align 8 dereferenceable(308) %0, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.04.07 = load ptr, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %.not8 = icmp eq ptr %.sroa.04.07, %i.a
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.09 = phi ptr [ %.sroa.04.0, %.lr.ph ], [ %.sroa.04.07, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(308) %i.c)
  %.sroa.04.0 = load ptr, ptr %.sroa.04.09, align 8, !tbaa !73 ; 2 uses
  %.not = icmp eq ptr %.sroa.04.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3gui11IGUIElement19getElementFromPointERKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(308) %0)
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73, !noalias !131 ; 2 uses
  %.not1516 = icmp eq ptr %i.e, %i.f
  br i1 %.not1516, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.012.017 = phi ptr [ %i.o, %bb.c ], [ %i.e, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !85   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(308) %i.j, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !72   ; 2 uses
  %.not15 = icmp eq ptr %i.o, %i.f
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !130

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(308) %0)
  br i1 %i.s, label %bb.d, label %.thread

bb.d:                                             ; preds = %.loopexit
  %i.t = load ptr, ptr %0, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  %spec.select = select i1 %i.w, ptr %0, ptr null
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.d, %.loopexit
  %.19 = phi ptr [ %spec.select, %bb.d ], [ null, %.loopexit ], [ %i.n, %.lr.ph ]
  ret ptr %.19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK3gui11IGUIElement13isPointInsideERKN4core8vector2dIiEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  %i.c = load i32, ptr %1, align 4, !tbaa !25     ; 2 uses
  %.not.i = icmp sgt i32 %i.b, %i.c
  br i1 %.not.i, label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = load i32, ptr %i.d, align 4, !tbaa !97
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26   ; 2 uses
  %.not6.i = icmp sgt i32 %i.e, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8
  %.not7.i = icmp slt i32 %i.i, %i.c
  %or.cond.i = select i1 %.not6.i, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !98
  %i.l = icmp sge i32 %i.k, %i.g
  br label %_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit

_ZNK4core4rectIiE13isPointInsideERKNS_8vector2dIiEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i1 [ %i.l, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN3gui11IGUIElement13addChildToEndEPS0_.exit, label %bb.b

_ZN3gui11IGUIElement13addChildToEndEPS0_.exit:    ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !71
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(308) %1), !inline_history !1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = load <2 x i64>, ptr %i.l, align 8
  store <2 x i64> %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %0, ptr %i.o, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !85
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !86
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.q, ptr %i.v, align 8, !tbaa !87
  %i.w = load ptr, ptr %1, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(308) %1)
  br label %bb.b

bb.b:                                             ; preds = %_ZN3gui11IGUIElement13addChildToEndEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
end_hunk_0
