inline.NumInlined: 1281
inline.NumDeleted: 547
begin_hunk_0_@_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv:bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 90 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 114 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit
  %.039 = phi i64 [ %i.cr, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %i.ir, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82 ] ; 3 uses
  %.037 = phi i32 [ %.0.i, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %i.iv, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82 ] ; 3 uses
  %.035 = phi i8 [ %i.cq, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %.136, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82 ] ; 4 uses
  %i.ds = trunc nuw i8 %.035 to i1                ; 3 uses
  %i.dt = load i32, ptr %i.au, align 8, !tbaa !66
  switch i32 %i.dt, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.du = load i64, ptr %i.aw, align 8, !tbaa !33 ; 2 uses
  %i.dv = icmp slt i64 %i.du, 60
  %not..i = xor i1 %i.ds, true
  %or.cond.not.i = select i1 %not..i, i1 true, i1 %i.dv
  %i.dw = sext i1 %or.cond.not.i to i64
  %spec.select.i = add nsw i64 %i.du, %i.dw
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

bb.w:                                             ; preds = %bb.u
  %i.dx = load i64, ptr %i.aw, align 8, !tbaa !33
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

bb.x:                                             ; preds = %bb.u
  %i.dy = load i8, ptr %i.dn, align 1, !tbaa !33  ; 2 uses
  %i.dz = icmp eq i8 %i.dy, 5                     ; 2 uses
  %i.ea = zext nneg i8 %.035 to i64
  %i.eb = getelementptr inbounds nuw [28 x i8], ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_113kMonthOffsetsE, i64 %i.ea
  %i.ec = load i8, ptr %i.aw, align 8, !tbaa !33
  %i.ed = sext i8 %i.ec to i64
  %i.ee = zext i1 %i.dz to i64
  %i.ef = getelementptr [2 x i8], ptr %i.eb, i64 %i.ed
  %i.eg = getelementptr [2 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !67 ; 2 uses
  %i.ei = sext i16 %i.eh to i64                   ; 2 uses
  %i.ej = sext i16 %i.eh to i32
  %.lhs.trunc.i = add nsw i32 %.037, %i.ej
  %i.ek = srem i32 %.lhs.trunc.i, 7               ; 2 uses
  br i1 %i.dz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.el = trunc nsw i32 %i.ek to i16
  %i.em = add nsw i16 %i.el, 6
  %i.en = load i8, ptr %i.do, align 2, !tbaa !33
  %i.eo = sext i8 %i.en to i16
  %.lhs.trunc24.i = sub nsw i16 %i.em, %i.eo
  %i.ep = srem i16 %.lhs.trunc24.i, 7
  %i.eq = xor i16 %i.ep, -1
  %.neg.i = sext i16 %i.eq to i64
  %i.er = add nsw i64 %.neg.i, %i.ei
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

bb.z:                                             ; preds = %bb.x
  %i.es = sext i8 %i.dy to i64
  %i.et = load i8, ptr %i.do, align 2, !tbaa !33
  %i.eu = sext i8 %i.et to i32
  %reass.sub.i = sub nsw i32 %i.eu, %i.ek
  %i.ev = trunc nsw i32 %reass.sub.i to i16
  %.lhs.trunc26.i = add nsw i16 %i.ev, 7
  %i.ew = srem i16 %.lhs.trunc26.i, 7
  %.sext27.i = sext i16 %i.ew to i64
  %i.ex = mul nsw i64 %i.es, 7
  %i.ey = add nsw i64 %i.ex, -7
  %i.ez = add nsw i64 %i.ey, %i.ei
  %i.fa = add nsw i64 %i.ez, %.sext27.i
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.y, %bb.z
  %.1.i51 = phi i64 [ 0, %bb.u ], [ %i.fa, %bb.z ], [ %spec.select.i, %bb.v ], [ %i.dx, %bb.w ], [ %i.er, %bb.y ]
  %i.fb = mul nsw i64 %.1.i51, 86400
  %i.fc = load i64, ptr %i.ay, align 8, !tbaa !69
  %i.fd = load i32, ptr %i.ba, align 8, !tbaa !66
  switch i32 %i.fd, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62 [
    i32 0, label %bb.aa
    i32 1, label %bb.ab
    i32 2, label %bb.ac
  ]

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit
  %i.fe = load i64, ptr %i.bc, align 8, !tbaa !33 ; 2 uses
  %i.ff = icmp slt i64 %i.fe, 60
  %not..i59 = xor i1 %i.ds, true
  %or.cond.not.i60 = select i1 %not..i59, i1 true, i1 %i.ff
  %i.fg = sext i1 %or.cond.not.i60 to i64
  %spec.select.i61 = add nsw i64 %i.fe, %i.fg
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit
  %i.fh = load i64, ptr %i.bc, align 8, !tbaa !33
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit
  %i.fi = load i8, ptr %i.dp, align 1, !tbaa !33  ; 2 uses
  %i.fj = icmp eq i8 %i.fi, 5                     ; 2 uses
  %i.fk = zext nneg i8 %.035 to i64
  %i.fl = getelementptr inbounds nuw [28 x i8], ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_113kMonthOffsetsE, i64 %i.fk
  %i.fm = load i8, ptr %i.bc, align 8, !tbaa !33
  %i.fn = sext i8 %i.fm to i64
  %i.fo = zext i1 %i.fj to i64
  %i.fp = getelementptr [2 x i8], ptr %i.fl, i64 %i.fn
  %i.fq = getelementptr [2 x i8], ptr %i.fp, i64 %i.fo
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !67 ; 2 uses
  %i.fs = sext i16 %i.fr to i64                   ; 2 uses
  %i.ft = sext i16 %i.fr to i32
  %.lhs.trunc.i52 = add nsw i32 %.037, %i.ft
  %i.fu = srem i32 %.lhs.trunc.i52, 7             ; 2 uses
  br i1 %i.fj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fv = trunc nsw i32 %i.fu to i16
  %i.fw = add nsw i16 %i.fv, 6
  %i.fx = load i8, ptr %i.dq, align 2, !tbaa !33
  %i.fy = sext i8 %i.fx to i16
  %.lhs.trunc24.i57 = sub nsw i16 %i.fw, %i.fy
  %i.fz = srem i16 %.lhs.trunc24.i57, 7
  %i.ga = xor i16 %i.fz, -1
  %.neg.i58 = sext i16 %i.ga to i64
  %i.gb = add nsw i64 %.neg.i58, %i.fs
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62

bb.ae:                                            ; preds = %bb.ac
  %i.gc = sext i8 %i.fi to i64
  %i.gd = load i8, ptr %i.dq, align 2, !tbaa !33
  %i.ge = sext i8 %i.gd to i32
  %reass.sub.i53 = sub nsw i32 %i.ge, %i.fu
  %i.gf = trunc nsw i32 %reass.sub.i53 to i16
  %.lhs.trunc26.i54 = add nsw i16 %i.gf, 7
  %i.gg = srem i16 %.lhs.trunc26.i54, 7
  %.sext27.i55 = sext i16 %i.gg to i64
  %i.gh = mul nsw i64 %i.gc, 7
  %i.gi = add nsw i64 %i.gh, -7
  %i.gj = add nsw i64 %i.gi, %i.fs
  %i.gk = add nsw i64 %i.gj, %.sext27.i55
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit, %bb.aa, %bb.ab, %bb.ad, %bb.ae
  %.1.i56 = phi i64 [ 0, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit ], [ %i.gk, %bb.ae ], [ %spec.select.i61, %bb.aa ], [ %i.fh, %bb.ab ], [ %i.gb, %bb.ad ]
  %i.gl = mul nsw i64 %.1.i56, 86400
  %i.gm = load i64, ptr %i.dm, align 8, !tbaa !69
  %i.gn = load i64, ptr %i.o, align 8, !tbaa !48
  %i.go = add i64 %i.fc, %.039
  %i.gp = add i64 %i.go, %i.fb
  %i.gq = sub i64 %i.gp, %i.gn                    ; 4 uses
  store i64 %i.gq, ptr %4, align 8, !tbaa !62
  %i.gr = load i64, ptr %i.aq, align 8, !tbaa !57
  %i.gs = add i64 %i.gm, %.039
  %i.gt = add i64 %i.gs, %i.gl
  %i.gu = sub i64 %i.gt, %i.gr                    ; 4 uses
  store i64 %i.gu, ptr %5, align 8, !tbaa !62
  %i.gv = icmp slt i64 %i.gq, %i.gu               ; 2 uses
  %i.gw = select i1 %i.gv, ptr %4, ptr %5         ; 2 uses
  %i.gx = call i64 @llvm.smax.i64(i64 %i.gq, i64 %i.gu)
  %i.gy = select i1 %i.gv, ptr %5, ptr %4         ; 2 uses
  %i.gz = icmp slt i64 %i.cb, %i.gx
  br i1 %i.gz, label %bb.af, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80

bb.af:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62
  %i.ha = call i64 @llvm.smin.i64(i64 %i.gq, i64 %i.gu)
  %i.hb = icmp slt i64 %i.cb, %i.ha
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !60 ; 6 uses
  %.pre92 = load ptr, ptr %i.dr, align 8, !tbaa !70 ; 2 uses
  br i1 %i.hb, label %bb.ag, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit

bb.ag:                                            ; preds = %bb.af
  %.not.i63 = icmp eq ptr %.pre, %.pre92
  br i1 %.not.i63, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.pre, ptr noundef nonnull align 8 dereferenceable(48) %i.gw, i64 48, i1 false), !tbaa.struct !71
  %i.hc = load ptr, ptr %i.br, align 8, !tbaa !60
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48 ; 2 uses
  store ptr %i.hd, ptr %i.br, align 8, !tbaa !60
  %.pre91 = load ptr, ptr %i.dr, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.he = load ptr, ptr %i.bq, align 8, !tbaa !61 ; 5 uses
  %i.hf = ptrtoint ptr %.pre to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg                    ; 4 uses
  %i.hi = icmp eq i64 %i.hh, 9223372036854775776
  br i1 %i.hi, label %.invoke, label %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ai, %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.hj = sdiv exact i64 %i.hh, 48                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hj, i64 1)
  %i.hk = add nsw i64 %.sroa.speculated.i.i.i, %i.hj ; 2 uses
  %6 = icmp ult i64 %i.hk, %i.hj
  %i.hl = call i64 @llvm.umin.i64(i64 %i.hk, i64 192153584101141162)
  %7 = select i1 %6, i64 192153584101141162, i64 %i.hl ; 3 uses
  %.not.i.i.i = icmp ne i64 %7, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hm = mul nuw nsw i64 %7, 48
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #26
          to label %.noexc64 unwind label %.loopexit ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ho, ptr noundef nonnull align 8 dereferenceable(48) %i.gw, i64 48, i1 false), !tbaa.struct !71
  %.not10.i.i.i.i.i = icmp eq ptr %i.he, %.pre
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc64, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i ], [ %i.hn, %.noexc64 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i ], [ %i.he, %.noexc64 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !71, !alias.scope !73
  %i.hp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hp, %.pre
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc64
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hn, %.noexc64 ], [ %i.hq, %.lr.ph.i.i.i.i.i ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hh) #27
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.hn, ptr %i.bq, align 8, !tbaa !61
  store ptr %i.hr, ptr %i.br, align 8, !tbaa !60
  %i.hs = getelementptr inbounds nuw [48 x i8], ptr %i.hn, i64 %7 ; 2 uses
  store ptr %i.hs, ptr %i.dr, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.as

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.ah, %bb.af
  %i.ht = phi ptr [ %i.hs, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.pre91, %bb.ah ], [ %.pre92, %bb.af ] ; 4 uses
  %i.hu = phi ptr [ %i.hr, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.hd, %bb.ah ], [ %.pre, %bb.af ] ; 2 uses
  %.not.i65 = icmp eq ptr %i.hu, %i.ht
  br i1 %.not.i65, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hu, ptr noundef nonnull align 8 dereferenceable(48) %i.gy, i64 48, i1 false), !tbaa.struct !71
  %i.hv = load ptr, ptr %i.br, align 8, !tbaa !60
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  store ptr %i.hw, ptr %i.br, align 8, !tbaa !60
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80

bb.am:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit
  %i.hx = load ptr, ptr %i.bq, align 8, !tbaa !61 ; 5 uses
  %i.hy = ptrtoint ptr %i.ht to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz                    ; 4 uses
  %i.ib = icmp eq i64 %i.ia, 9223372036854775776
  br i1 %i.ib, label %.invoke, label %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66

_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66: ; preds = %bb.am
  %i.ic = sdiv exact i64 %i.ia, 48                ; 3 uses
  %.sroa.speculated.i.i.i67 = call i64 @llvm.umax.i64(i64 %i.ic, i64 1)
  %i.id = add nsw i64 %.sroa.speculated.i.i.i67, %i.ic ; 2 uses
  %8 = icmp ult i64 %i.id, %i.ic
  %i.ie = call i64 @llvm.umin.i64(i64 %i.id, i64 192153584101141162)
  %9 = select i1 %8, i64 192153584101141162, i64 %i.ie ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %9, 0
  call void @llvm.assume(i1 %.not.i.i.i68)
  %i.if = mul nuw nsw i64 %9, 48
  %i.ig = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.if) #26
          to label %.noexc79 unwind label %.loopexit ; 5 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ih, ptr noundef nonnull align 8 dereferenceable(48) %i.gy, i64 48, i1 false), !tbaa.struct !71
  %.not10.i.i.i.i.i69 = icmp eq ptr %i.hx, %i.ht
  br i1 %.not10.i.i.i.i.i69, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74, label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.noexc79, %.lr.ph.i.i.i.i.i70
  %.012.i.i.i.i.i71 = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i70 ], [ %i.ig, %.noexc79 ] ; 2 uses
  %.0911.i.i.i.i.i72 = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i70 ], [ %i.hx, %.noexc79 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i72, i64 48, i1 false), !tbaa.struct !71, !alias.scope !78
  %i.ii = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i72, i64 48 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i71, i64 48 ; 2 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.ii, %i.ht
  br i1 %.not.i.i.i.i.i73, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74: ; preds = %.lr.ph.i.i.i.i.i70, %.noexc79
  %.0.lcssa.i.i.i.i.i75 = phi ptr [ %i.ig, %.noexc79 ], [ %i.ij, %.lr.ph.i.i.i.i.i70 ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i75, i64 48
  %.not.i23.i.i76 = icmp eq ptr %i.hx, null
  br i1 %.not.i23.i.i76, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ia) #27
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77: ; preds = %bb.an, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74
  store ptr %i.ig, ptr %i.bq, align 8, !tbaa !61
  store ptr %i.ik, ptr %i.br, align 8, !tbaa !60
  %i.il = getelementptr inbounds nuw [48 x i8], ptr %i.ig, i64 %9
  store ptr %i.il, ptr %i.dr, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77, %bb.al, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62
  %i.im = load i64, ptr %i.cj, align 8, !tbaa !64 ; 2 uses
  %.not = icmp eq i64 %i.im, %i.dl
  br i1 %.not, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80
  %i.in = zext nneg i8 %.035 to i64               ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_112kSecsPerYearE, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !3
  %i.iq = sext i32 %i.ip to i64
  %i.ir = add nsw i64 %.039, %i.iq
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_112kDaysPerYearE, i64 %i.in
  %i.it = load i32, ptr %i.is, align 4, !tbaa !3
  %i.iu = add nsw i32 %i.it, %.037
  %i.iv = srem i32 %i.iu, 7
  %.pre93 = add nsw i64 %i.im, 1                  ; 4 uses
  %i.iw = and i64 %.pre93, 3
  %i.ix = icmp ne i64 %i.iw, 0
  %or.cond.not = select i1 %i.ds, i1 true, i1 %i.ix
  br i1 %or.cond.not, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iy = srem i64 %.pre93, 100
  %.not.i81 = icmp eq i64 %i.iy, 0
  br i1 %.not.i81, label %bb.aq, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82

bb.aq:                                            ; preds = %bb.ap
  %i.iz = srem i64 %.pre93, 400
  %i.ja = icmp eq i64 %i.iz, 0
  %i.jb = zext i1 %i.ja to i8
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82: ; preds = %bb.ao, %bb.aq, %bb.ap
  %.136 = phi i8 [ 0, %bb.ao ], [ %i.jb, %bb.aq ], [ 1, %bb.ap ]
  store i64 %.pre93, ptr %i.cj, align 8, !tbaa !64
  br label %bb.u, !llvm.loop !82

.critedge:                                        ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.n, %.critedge, %bb.q
  %.0 = phi i1 [ %i.bp, %bb.q ], [ true, %.critedge ], [ false, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.as:                                            ; preds = %bb.ak, %bb.o
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ak ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.at

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.ar
  %.1 = phi i1 [ false, %bb.f ], [ %.0, %bb.ar ], [ true, %bb.i ], [ false, %bb.k ], [ false, %bb.j ], [ %.not12.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.as ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.av

bb.au:                                            ; preds = %bb.c, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit
  %.2 = phi i1 [ %.1, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit ], [ false, %bb.c ]
  %i.jc = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.k
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.au
  %i.je = load i64, ptr %i.k, align 8, !tbaa !33
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.jg = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.h
  br i1 %i.jh, label %_ZN4absl12lts_2025051213time_internal4cctz13PosixTimeZoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ji = load i64, ptr %i.h, align 8, !tbaa !33
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #27
  br label %_ZN4absl12lts_2025051213time_internal4cctz13PosixTimeZoneD2Ev.exit

_ZN4absl12lts_2025051213time_internal4cctz13PosixTimeZoneD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.aw

bb.av:                                            ; preds = %bb.at, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.at ], [ %i.n, %bb.d ]
  call void @_ZN4absl12lts_2025051213time_internal4cctz13PosixTimeZoneD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn.pn.pn

bb.aw:                                            ; preds = %bb.a, %_ZN4absl12lts_2025051213time_internal4cctz13PosixTimeZoneD2Ev.exit
  %.3 = phi i1 [ %.2, %_ZN4absl12lts_2025051213time_internal4cctz13PosixTimeZoneD2Ev.exit ], [ true, %bb.a ]
  ret i1 %.3
}

declare noundef zeroext i1 @_ZN4absl12lts_2025051213time_internal4cctz14ParsePosixSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_13PosixTimeZoneE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = load ptr, ptr %0, align 8, !tbaa !61     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !71, !alias.scope !83
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit
  %.not.i8 = icmp eq ptr %i.d, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #27
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.r, ptr %i.j, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %1
  store ptr %i.s, ptr %i.b, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE(ptr dead_on_unwind noalias writable writeonly sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup") align 8 captures(none) initializes((0, 21), (24, 32)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, i64 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(42) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sdiv i64 %2, 60
  %i.b = srem i64 %2, 60
  %i.c = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll(i64 noundef 1970, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef %i.a, i64 noundef %i.b) #24 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.c, 1 ; 5 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = load i32, ptr %3, align 8, !tbaa !23     ; 2 uses
  %sext.i.i5 = shl i64 %.fca.1.extract.i.i, 56
  %i.f = ashr exact i64 %sext.i.i5, 56
  %i.g = shl i64 %.fca.1.extract.i.i, 48
  %i.h = ashr i64 %i.g, 56
  %i.i = shl i64 %.fca.1.extract.i.i, 40
  %i.j = ashr i64 %i.i, 56
  %i.k = shl i64 %.fca.1.extract.i.i, 32
  %i.l = ashr i64 %i.k, 56
  %i.m = sdiv i32 %i.e, 60
  %.sext = sext i32 %i.m to i64
  %i.n = add nsw i64 %i.l, %.sext
  %.sroa.2.8.insert.ext.i = shl i64 %.fca.1.extract.i.i, 24
  %i.o = ashr i64 %.sroa.2.8.insert.ext.i, 56
  %i.p = srem i32 %i.e, 60
  %.sext10 = sext i32 %i.p to i64
  %i.q = add nsw i64 %i.o, %.sext10
  %i.r = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.n, i64 noundef %i.q) #24 ; 2 uses
  %.fca.1.extract.i.i6 = extractvalue { i64, i64 } %i.r, 1
  %.sroa.2.8.insert.ext.i7 = and i64 %.fca.1.extract.i.i6, 1099511627775
  %i.s = extractvalue { i64, i64 } %i.r, 0
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.8.insert.ext.i7, ptr %i.t, align 8
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_dayElallaaa:bb.a
  %i.bu = add nsw i64 %.687, 1
  br i1 %.not111, label %.preheader129, label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl13days_per_yearEla.exit122, %bb.h
  %.889 = phi i64 [ %.182, %bb.h ], [ %.687, %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl13days_per_yearEla.exit122 ] ; 2 uses
  %.7 = phi i64 [ %.072, %bb.h ], [ %.5, %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl13days_per_yearEla.exit122 ] ; 3 uses
  %i.bv = icmp sgt i64 %.7, 28
  br i1 %i.bv, label %.preheader, label %.thread

.preheader:                                       ; preds = %.loopexit, %bb.o
  %.990 = phi i64 [ %spec.select115, %bb.o ], [ %.889, %.loopexit ] ; 5 uses
  %.8 = phi i64 [ %i.cj, %bb.o ], [ %.7, %.loopexit ] ; 3 uses
  %.0 = phi i8 [ %spec.select116, %bb.o ], [ %1, %.loopexit ] ; 4 uses
  %i.bw = sext i8 %.0 to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail4impl14days_per_monthEla.k_days_per_month, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = icmp eq i8 %.0, 2
  %i.ca = and i64 %.990, 3
  %i.cb = icmp eq i64 %i.ca, 0
  %or.cond.i123 = and i1 %i.cb, %i.bz
  br i1 %or.cond.i123, label %bb.m, label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14days_per_monthEla.exit

bb.m:                                             ; preds = %.preheader
  %i.cc = srem i64 %.990, 100
  %.not.i.i124 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i124, label %bb.n, label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14days_per_monthEla.exit

bb.n:                                             ; preds = %bb.m
  %i.cd = srem i64 %.990, 400
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14days_per_monthEla.exit

_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14days_per_monthEla.exit: ; preds = %.preheader, %bb.m, %bb.n
  %i.cg = phi i32 [ 0, %.preheader ], [ %i.cf, %bb.n ], [ 1, %bb.m ]
  %i.ch = add nsw i32 %i.cg, %i.by
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %.not112 = icmp sgt i64 %.8, %i.ci
  br i1 %.not112, label %bb.o, label %.thread

bb.o:                                             ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14days_per_monthEla.exit
  %i.cj = sub nsw i64 %.8, %i.ci
  %i.ck = add i8 %.0, 1                           ; 2 uses
  %i.cl = icmp sgt i8 %i.ck, 12                   ; 2 uses
  %i.cm = zext i1 %i.cl to i64
  %spec.select115 = add nsw i64 %.990, %i.cm
  %spec.select116 = select i1 %i.cl, i8 1, i8 %i.ck
  br label %.preheader

.thread:                                          ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14days_per_monthEla.exit, %.loopexit
  %.12 = phi i64 [ %.889, %.loopexit ], [ %.990, %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %.10 = phi i64 [ %.7, %.loopexit ], [ %.8, %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %.3 = phi i8 [ %1, %.loopexit ], [ %.0, %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %i.cn = sub nsw i64 %0, %i.a
  %i.co = add i64 %i.cn, %.12
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.co, 0
  %.sroa.7.8.insert.ext = zext i8 %6 to i64
  %.sroa.7.8.insert.shift = shl nuw nsw i64 %.sroa.7.8.insert.ext, 32
  %.sroa.6.8.insert.ext = zext i8 %5 to i64
  %.sroa.6.8.insert.shift = shl nuw nsw i64 %.sroa.6.8.insert.ext, 24
  %.sroa.6.8.insert.insert = or disjoint i64 %.sroa.7.8.insert.shift, %.sroa.6.8.insert.shift
  %.sroa.5.8.insert.ext = zext i8 %4 to i64
  %.sroa.5.8.insert.shift = shl nuw nsw i64 %.sroa.5.8.insert.ext, 16
  %.sroa.5.8.insert.insert = or disjoint i64 %.sroa.6.8.insert.insert, %.sroa.5.8.insert.shift
  %.sroa.4.8.insert.ext = shl i64 %.10, 8
  %.sroa.4.8.insert.shift = and i64 %.sroa.4.8.insert.ext, 65280
  %.sroa.4.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.shift, %.sroa.5.8.insert.insert
  %.sroa.2.8.insert.ext = zext i8 %.3 to i64
  %.sroa.2.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.insert, %.sroa.2.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i64 noundef %3, i8 noundef signext %4, i8 noundef signext %5) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = srem i64 %0, 400                         ; 2 uses
  %i.b = srem i64 %3, 400                         ; 2 uses
  %i.c = sub nsw i64 %0, %i.a
  %.neg = sub i64 %i.b, %3
  %i.d = add i64 %.neg, %i.c                      ; 5 uses
  %i.e = sext i8 %1 to i16
  %i.f = icmp slt i8 %1, 3
  %i.g = sext i1 %i.f to i64
  %i.h = add nsw i64 %i.a, %i.g                   ; 4 uses
  %i.i = add nsw i64 %i.h, 65137
  %i.j = icmp slt i64 %i.h, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 %i.h
  %.lhs.trunc = trunc nuw i64 %i.k to i16
  %i.l = sdiv i16 %.lhs.trunc, 400
  %.sext = sext i16 %i.l to i64                   ; 2 uses
  %.neg.i = mul nsw i64 %.sext, -400
  %i.m = add nsw i64 %.neg.i, %i.h                ; 2 uses
  %i.n = icmp sgt i8 %1, 2
  %i.o = select i1 %i.n, i16 -3, i16 9
  %i.p = add nsw i16 %i.o, %i.e
  %i.q = mul nsw i16 %i.p, 153
  %.lhs.trunc.i = add nsw i16 %i.q, 2
  %i.r = sdiv i16 %.lhs.trunc.i, 5
  %.sext.i = sext i16 %i.r to i64
  %i.s = sext i8 %2 to i64
  %.lhs.trunc33 = trunc i64 %i.m to i16           ; 2 uses
  %i.t = sdiv i16 %.lhs.trunc33, 4
  %.sext34 = sext i16 %i.t to i64
  %.neg17.i35 = sdiv i16 %.lhs.trunc33, -100
  %.neg17.i.sext = sext i16 %.neg17.i35 to i64
  %i.u = sext i8 %4 to i16
  %i.v = icmp slt i8 %4, 3
  %i.w = sext i1 %i.v to i64
  %i.x = add nsw i64 %i.b, %i.w                   ; 4 uses
  %i.y = add nsw i64 %i.x, 65137
  %i.z = icmp slt i64 %i.x, 0
  %i.aa = select i1 %i.z, i64 %i.y, i64 %i.x
  %.lhs.trunc36 = trunc nuw i64 %i.aa to i16
  %i.ab = sdiv i16 %.lhs.trunc36, 400
  %.sext37 = sext i16 %i.ab to i64                ; 2 uses
  %.neg.i29 = mul nsw i64 %.sext37, -400
  %i.ac = add nsw i64 %.neg.i29, %i.x             ; 2 uses
  %i.ad = icmp sgt i8 %4, 2
  %i.ae = select i1 %i.ad, i16 -3, i16 9
  %i.af = add nsw i16 %i.ae, %i.u
  %i.ag = mul nsw i16 %i.af, 153
  %.lhs.trunc.i30 = add nsw i16 %i.ag, 2
  %.neg53 = sdiv i16 %.lhs.trunc.i30, -5
  %i.ah = sext i8 %5 to i64
  %.lhs.trunc38 = trunc i64 %i.ac to i16          ; 2 uses
  %.neg54 = sdiv i16 %.lhs.trunc38, -4
  %.neg17.i3240.neg = sdiv i16 %.lhs.trunc38, 100
  %.neg17.i32.sext.neg = sext i16 %.neg17.i3240.neg to i64
  %.sext.i31.neg = sext i16 %.neg53 to i64
  %.sext39.neg = sext i16 %.neg54 to i64
  %reass.add = sub nsw i64 %i.m, %i.ac
  %reass.mul = mul nsw i64 %reass.add, 365
  %reass.add51 = sub nsw i64 %.sext, %.sext37
  %reass.mul52 = mul nsw i64 %reass.add51, 146097
  %.neg48 = sub nsw i64 %i.s, %i.ah
  %.neg49 = add nsw i64 %.neg48, %.sext.i
  %i.ai = add nsw i64 %.neg49, %.sext.i31.neg
  %i.aj = add nsw i64 %i.ai, %.sext34
  %i.ak = add nsw i64 %i.aj, %.neg17.i.sext
  %i.al = add nsw i64 %i.ak, %reass.mul52
  %i.am = add nsw i64 %i.al, %reass.mul
  %i.an = add nsw i64 %i.am, %.sext39.neg
  %i.ao = add nsw i64 %i.an, %.neg17.i32.sext.neg ; 5 uses
  %i.ap = icmp sgt i64 %i.d, 0
  %i.aq = icmp slt i64 %i.ao, 0
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ar = add nsw i64 %i.ao, 292194
  %i.as = add nsw i64 %i.d, -800
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.at = icmp slt i64 %i.d, 0
  %i.au = icmp sgt i64 %i.ao, 0
  %or.cond3 = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = add nsw i64 %i.ao, -292194
  %i.aw = add nsw i64 %i.d, 800
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.025 = phi i64 [ %i.as, %bb.b ], [ %i.aw, %bb.d ], [ %i.d, %bb.c ]
  %.0 = phi i64 [ %i.ar, %bb.b ], [ %i.av, %bb.d ], [ %i.ao, %bb.c ]
  %i.ax = sdiv i64 %.025, 400
  %i.ay = mul nsw i64 %i.ax, 146097
  %i.az = add nsw i64 %i.ay, %.0
  ret i64 %i.az
}

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2025051213time_internal4cctz10TimeZoneIfD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %2 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %3 = select i1 %2, i64 192153584101141162, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %3, 48
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #26 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1970, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i8 1, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 17
  store i8 1, ptr %i.r, align 1, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 19
  store i8 0, ptr %i.s, align 1, !tbaa !225
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 1970, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 1, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 33
  store i8 1, ptr %i.v, align 1, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 35
  store i8 0, ptr %i.w, align 1, !tbaa !225
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.n, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !134, !alias.scope !226
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !140

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.y, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.ab, %.lr.ph.i.i.i16 ], [ %i.z, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i18 = phi ptr [ %i.aa, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i17, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i18, i64 48, i1 false), !tbaa.struct !134, !alias.scope !230
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !140

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.z, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ab, %.lr.ph.i.i.i16 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !16
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %3
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1970, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 1, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 1, ptr %i.r, align 1, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1970, ptr %i.s, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 1, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 1, ptr %i.u, align 1, !tbaa !32
  %i.v = add nsw i64 %1, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %i.x = icmp eq i64 %1, 1
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 15 uses
  %.057.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 1970, ptr %i.y, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store i8 1, ptr %i.z, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 17
  store i8 1, ptr %i.aa, align 1, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store i64 1970, ptr %i.ab, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store i8 1, ptr %i.ac, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 33
  store i8 1, ptr %i.ad, align 1, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i8 0, i64 48, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store i64 1970, ptr %i.af, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store i8 1, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 65
  store i8 1, ptr %i.ah, align 1, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  store i64 1970, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store i8 1, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 81
  store i8 1, ptr %i.ak, align 1, !tbaa !32
  %i.al = add i64 %.057.i.i.i, -2                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !234

_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.am, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !13
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.an = icmp ult i64 %i.n, %1
  br i1 %i.an, label %bb.d, label %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ao = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 192153584101141162) ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 48
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #26 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f ; 10 uses
  %xtraiter44 = and i64 %1, 1
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, i8 0, i64 48, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 1970, ptr %i.at, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 1, ptr %i.au, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 17
  store i8 1, ptr %i.av, align 1, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 1970, ptr %i.aw, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i8 1, ptr %i.ax, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !32
  %i.az = add nsw i64 %1, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i30.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 15 uses
  %.057.i.i.i32 = phi i64 [ %i.bp, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i31, i8 0, i64 48, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i64 1970, ptr %i.bc, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store i8 1, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 17
  store i8 1, ptr %i.be, align 1, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store i64 1970, ptr %i.bf, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store i8 1, ptr %i.bg, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 33
  store i8 1, ptr %i.bh, align 1, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i8 0, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  store i64 1970, ptr %i.bj, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store i8 1, ptr %i.bk, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 65
  store i8 1, ptr %i.bl, align 1, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store i64 1970, ptr %i.bm, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store i8 1, ptr %i.bn, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 81
  store i8 1, ptr %i.bo, align 1, !tbaa !32
  %i.bp = add i64 %.057.i.i.i32, -2               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %.not.i.i.i33.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !234

_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i37 ], [ %i.ar, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !134, !alias.scope !235
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i38 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37, !llvm.loop !140

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE13_M_deallocateEPS4_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.bt = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #27
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE13_M_deallocateEPS4_m.exit41

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE13_M_deallocateEPS4_m.exit41: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.e
  store ptr %i.ar, ptr %0, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz14TransitionTypeEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE13_M_deallocateEPS4_m.exit41, %bb.a
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !61     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %2 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %3 = select i1 %2, i64 192153584101141162, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %3, 48
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #26 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1970, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i8 1, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 25
  store i8 1, ptr %i.r, align 1, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 27
  store i8 0, ptr %i.s, align 1, !tbaa !225
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 1970, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i8 1, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 41
  store i8 1, ptr %i.v, align 1, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 43
  store i8 0, ptr %i.w, align 1, !tbaa !225
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.n, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !71, !alias.scope !239
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.y, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.ab, %.lr.ph.i.i.i16 ], [ %i.z, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i18 = phi ptr [ %i.aa, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i17, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i18, i64 48, i1 false), !tbaa.struct !71, !alias.scope !243
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.z, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ab, %.lr.ph.i.i.i16 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !61
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %3
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS5_EELb1EE8_S_do_itERS7_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %reass.sub.fr.i = freeze i64 %i.f               ; 5 uses
  %i.g = sdiv exact i64 %reass.sub.fr.i, 48
  %i.h = icmp ugt i64 %i.g, 192153584101141162
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr null, i64 %reass.sub.fr.i
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #26
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit.i ; 4 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %reass.sub.fr.i
  %i.l = add i64 %reass.sub.fr.i, -48             ; 2 uses
  %i.m = urem i64 %i.l, 48
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = add i64 %i.n, 48                         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.a, i64 %i.o, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.j, i64 %i.o
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.09) #24 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit: ; preds = %.noexc5.i, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.i, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i ], [ %i.k, %.noexc5.i ]
  %.sroa.012.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i ], [ %i.j, %.noexc5.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.noexc5.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !61
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !60
  store ptr %.sroa.12.0, ptr %i.r, align 8, !tbaa !70
  %.not.i.i.i10 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.u) #27
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit: ; preds = %bb.c, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEvEET_SE_RKS5_.exit ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !61     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1970, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 1, ptr %i.r, align 1, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 1970, ptr %i.s, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 1, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  store i8 1, ptr %i.u, align 1, !tbaa !32
  %i.v = add nsw i64 %1, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %i.x = icmp eq i64 %1, 1
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 15 uses
  %.057.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store i64 1970, ptr %i.y, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store i8 1, ptr %i.z, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 25
  store i8 1, ptr %i.aa, align 1, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store i64 1970, ptr %i.ab, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store i8 1, ptr %i.ac, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 41
  store i8 1, ptr %i.ad, align 1, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i8 0, i64 48, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store i64 1970, ptr %i.af, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  store i8 1, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 73
  store i8 1, ptr %i.ah, align 1, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store i64 1970, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  store i8 1, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 89
  store i8 1, ptr %i.ak, align 1, !tbaa !32
  %i.al = add i64 %.057.i.i.i, -2                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !247

_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.am, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !60
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.an = icmp ult i64 %i.n, %1
  br i1 %i.an, label %bb.d, label %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ao = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 192153584101141162) ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 48
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #26 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f ; 10 uses
  %xtraiter44 = and i64 %1, 1
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol
end_hunk_1
