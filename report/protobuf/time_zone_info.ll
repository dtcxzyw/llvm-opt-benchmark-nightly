inline.NumInlined: 1281
inline.NumDeleted: 547
begin_hunk_0_@_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv:bb.a
  %i.cs = call noundef i32 @_ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(16) %3) #24 ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 6
  %switch.offset.i = add nuw nsw i32 %i.cs, 1
  %.0.i = select i1 %i.ct, i32 %switch.offset.i, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 0, ptr %4, align 8, !tbaa !62
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cv = load i8, ptr %i.b, align 1, !tbaa !33
  store i8 %i.cv, ptr %i.cu, align 8, !tbaa !55
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 1970, ptr %i.cw, align 8, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.cx, align 8, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.cy, align 4, !tbaa !65
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 1970, ptr %i.cz, align 8, !tbaa !30
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.da, align 8, !tbaa !33
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i8 0, ptr %i.db, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dd = load i8, ptr %i.a, align 1, !tbaa !33
  store i8 %i.dd, ptr %i.dc, align 8, !tbaa !55
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1970, ptr %i.de, align 8, !tbaa !30
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 24
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.df, align 8, !tbaa !33
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.dg, align 4, !tbaa !65
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 1970, ptr %i.dh, align 8, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 40
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.di, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i8 0, ptr %i.dj, align 4, !tbaa !65
  %i.dk = load i64, ptr %i.cj, align 8, !tbaa !64
  %i.dl = add nsw i64 %i.dk, 401
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 90 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 114 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit
  %.039 = phi i64 [ %i.cr, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %i.it, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82 ] ; 3 uses
  %.037 = phi i32 [ %.0.i, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %i.ix, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82 ] ; 3 uses
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
  %6 = select i1 %i.gv, ptr %5, ptr %4            ; 2 uses
  %7 = call i64 @llvm.smax.i64(i64 %i.gq, i64 %i.gu)
  %i.gx = icmp slt i64 %i.cb, %7
  br i1 %i.gx, label %bb.af, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80

bb.af:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62
  %i.gy = call i64 @llvm.smin.i64(i64 %i.gq, i64 %i.gu)
  %i.gz = icmp slt i64 %i.cb, %i.gy
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !60 ; 6 uses
  %.pre92 = load ptr, ptr %i.dr, align 8, !tbaa !70 ; 2 uses
  br i1 %i.gz, label %bb.ag, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit

bb.ag:                                            ; preds = %bb.af
  %.not.i63 = icmp eq ptr %.pre, %.pre92
  br i1 %.not.i63, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.pre, ptr noundef nonnull align 8 dereferenceable(48) %i.gw, i64 48, i1 false), !tbaa.struct !71
  %i.ha = load ptr, ptr %i.br, align 8, !tbaa !60
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48 ; 2 uses
  store ptr %i.hb, ptr %i.br, align 8, !tbaa !60
  %.pre91 = load ptr, ptr %i.dr, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.hc = load ptr, ptr %i.bq, align 8, !tbaa !61 ; 5 uses
  %i.hd = ptrtoint ptr %.pre to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he                    ; 4 uses
  %i.hg = icmp eq i64 %i.hf, 9223372036854775776
  br i1 %i.hg, label %.invoke, label %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ai, %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.hh = sdiv exact i64 %i.hf, 48                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hh, i64 1)
  %i.hi = add nsw i64 %.sroa.speculated.i.i.i, %i.hh ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.hh
  %i.hk = call i64 @llvm.umin.i64(i64 %i.hi, i64 192153584101141162)
  %i.hl = select i1 %i.hj, i64 192153584101141162, i64 %i.hk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hl, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hm = mul nuw nsw i64 %i.hl, 48
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #26
          to label %.noexc64 unwind label %.loopexit ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ho, ptr noundef nonnull align 8 dereferenceable(48) %i.gw, i64 48, i1 false), !tbaa.struct !71
  %.not10.i.i.i.i.i = icmp eq ptr %i.hc, %.pre
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc64, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i ], [ %i.hn, %.noexc64 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i ], [ %i.hc, %.noexc64 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !71, !alias.scope !73
  %i.hp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hp, %.pre
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc64
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hn, %.noexc64 ], [ %i.hq, %.lr.ph.i.i.i.i.i ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hf) #27
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.hn, ptr %i.bq, align 8, !tbaa !61
  store ptr %i.hr, ptr %i.br, align 8, !tbaa !60
  %i.hs = getelementptr inbounds nuw [48 x i8], ptr %i.hn, i64 %i.hl ; 2 uses
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
  %i.hu = phi ptr [ %i.hr, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.hb, %bb.ah ], [ %.pre, %bb.af ] ; 2 uses
  %.not.i65 = icmp eq ptr %i.hu, %i.ht
  br i1 %.not.i65, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hu, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !71
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
  %i.ie = icmp ult i64 %i.id, %i.ic
  %i.if = call i64 @llvm.umin.i64(i64 %i.id, i64 192153584101141162)
  %i.ig = select i1 %i.ie, i64 192153584101141162, i64 %i.if ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.ig, 0
  call void @llvm.assume(i1 %.not.i.i.i68)
  %i.ih = mul nuw nsw i64 %i.ig, 48
  %i.ii = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #26
          to label %.noexc79 unwind label %.loopexit ; 5 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ij, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !71
  %.not10.i.i.i.i.i69 = icmp eq ptr %i.hx, %i.ht
  br i1 %.not10.i.i.i.i.i69, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74, label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.noexc79, %.lr.ph.i.i.i.i.i70
  %.012.i.i.i.i.i71 = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i70 ], [ %i.ii, %.noexc79 ] ; 2 uses
  %.0911.i.i.i.i.i72 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i70 ], [ %i.hx, %.noexc79 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i72, i64 48, i1 false), !tbaa.struct !71, !alias.scope !78
  %i.ik = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i72, i64 48 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i71, i64 48 ; 2 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.ik, %i.ht
  br i1 %.not.i.i.i.i.i73, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74: ; preds = %.lr.ph.i.i.i.i.i70, %.noexc79
  %.0.lcssa.i.i.i.i.i75 = phi ptr [ %i.ii, %.noexc79 ], [ %i.il, %.lr.ph.i.i.i.i.i70 ]
  %i.im = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i75, i64 48
  %.not.i23.i.i76 = icmp eq ptr %i.hx, null
  br i1 %.not.i23.i.i76, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ia) #27
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77: ; preds = %bb.an, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74
  store ptr %i.ii, ptr %i.bq, align 8, !tbaa !61
  store ptr %i.im, ptr %i.br, align 8, !tbaa !60
  %i.in = getelementptr inbounds nuw [48 x i8], ptr %i.ii, i64 %i.ig
  store ptr %i.in, ptr %i.dr, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77, %bb.al, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62
  %i.io = load i64, ptr %i.cj, align 8, !tbaa !64 ; 2 uses
  %.not = icmp eq i64 %i.io, %i.dl
  br i1 %.not, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80
  %i.ip = zext nneg i8 %.035 to i64               ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_112kSecsPerYearE, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !3
  %i.is = sext i32 %i.ir to i64
  %i.it = add nsw i64 %.039, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_112kDaysPerYearE, i64 %i.ip
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !3
  %i.iw = add nsw i32 %i.iv, %.037
  %i.ix = srem i32 %i.iw, 7
  %.pre93 = add nsw i64 %i.io, 1                  ; 4 uses
  %i.iy = and i64 %.pre93, 3
  %i.iz = icmp ne i64 %i.iy, 0
  %or.cond.not = select i1 %i.ds, i1 true, i1 %i.iz
  br i1 %or.cond.not, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ja = srem i64 %.pre93, 100
  %.not.i81 = icmp eq i64 %i.ja, 0
  br i1 %.not.i81, label %bb.aq, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82

bb.aq:                                            ; preds = %bb.ap
  %i.jb = srem i64 %.pre93, 400
  %i.jc = icmp eq i64 %i.jb, 0
  %i.jd = zext i1 %i.jc to i8
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82: ; preds = %bb.ao, %bb.aq, %bb.ap
  %.136 = phi i8 [ 0, %bb.ao ], [ %i.jd, %bb.aq ], [ 1, %bb.ap ]
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
  %i.je = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.k
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.au
  %i.jg = load i64, ptr %i.k, align 8, !tbaa !33
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ji = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.h
  br i1 %i.jj, label %_ZN4absl12lts_2025051213time_internal4cctz13PosixTimeZoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.jk = load i64, ptr %i.h, align 8, !tbaa !33
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #27
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
define void @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup") align 8 captures(none) initializes((0, 21), (24, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(42) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sdiv i64 %2, 60
  %i.b = srem i64 %2, 60
  %i.c = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll(i64 noundef 1970, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef %i.a, i64 noundef %i.b) #24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_default_appendEm:bb.a
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
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !246

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

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, i8 0, i64 48, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 1970, ptr %i.at, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i8 1, ptr %i.au, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 25
  store i8 1, ptr %i.av, align 1, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 1970, ptr %i.aw, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i8 1, ptr %i.ax, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 41
  store i8 1, ptr %i.ay, align 1, !tbaa !32
  %i.az = add nsw i64 %1, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i30.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 15 uses
  %.057.i.i.i32 = phi i64 [ %i.bp, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i31, i8 0, i64 48, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store i64 1970, ptr %i.bc, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store i8 1, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 25
  store i8 1, ptr %i.be, align 1, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store i64 1970, ptr %i.bf, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store i8 1, ptr %i.bg, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 41
  store i8 1, ptr %i.bh, align 1, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i8 0, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store i64 1970, ptr %i.bj, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store i8 1, ptr %i.bk, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 73
  store i8 1, ptr %i.bl, align 1, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store i64 1970, ptr %i.bm, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  store i8 1, ptr %i.bn, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 89
  store i8 1, ptr %i.bo, align 1, !tbaa !32
  %i.bp = add i64 %.057.i.i.i32, -2               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %.not.i.i.i33.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !246

_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i37 ], [ %i.ar, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !71, !alias.scope !247
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i38 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.bt = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #27
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.e
  store ptr %i.ar, ptr %0, align 8, !tbaa !61
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !60
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS4_12TimeZoneInfo4LoadESG_E3$_0E9_M_invokeERKSt9_Any_dataSG_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [4 x ptr], align 8                ; 7 uses
  %i.d = alloca [1 x ptr], align 8                ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::basic_ifstream", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [24 x i8], align 16               ; 18 uses
  %i.g = alloca [52 x i8], align 16               ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !7, !noalias !263 ; 5 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.a
  %spec.select.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 5)
  %i.k = load ptr, ptr %2, align 8, !tbaa !17, !noalias !263
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull @.str.10, i64 %spec.select.i.i.i.i.i.i), !noalias !263
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.a
  %.inv.i.i.i.i = icmp ult i64 %i.i, 5
  %i.l = select i1 %.inv.i.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !263
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.m, ptr %10, align 8, !tbaa !47, !noalias !263
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.n, align 8, !tbaa !7, !noalias !263
  store i8 0, ptr %i.m, align 8, !tbaa !33, !noalias !263
  %i.o = icmp eq i64 %.0.i.i.i.i.i, %i.i
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.p = load ptr, ptr %2, align 8, !tbaa !17, !noalias !263
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0.i.i.i.i.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !33, !noalias !263
  %.not.i.i.i.i = icmp eq i8 %i.r, 47
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.s = call ptr @getenv(ptr noundef nonnull @.str.12) #24, !noalias !263 ; 3 uses
  %.not17.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not17.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.s, align 1, !tbaa !33, !noalias !263
  %.not18.i.i.i.i = icmp eq i8 %i.t, 0
  %spec.select.i.i.i.i = select i1 %.not18.i.i.i.i, ptr @.str.11, ptr %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ @.str.11, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 2 uses
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i.i) #24, !noalias !263 ; 2 uses
  %i.v = icmp ugt i64 %i.u, 4611686018427387903
  br i1 %i.v, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc.i.i.i.i unwind label %bb.i, !noalias !263

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i: ; preds = %bb.e
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %.0.i.i.i.i, i64 noundef %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i unwind label %bb.i, !noalias !263 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i
  %i.x = load i64, ptr %i.n, align 8, !tbaa !7, !noalias !263 ; 4 uses
  %i.y = add i64 %i.x, 1                          ; 3 uses
  %i.z = load ptr, ptr %10, align 8, !tbaa !17, !noalias !263 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.m                  ; 2 uses
  br i1 %i.aa, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.ab = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.ac = load i64, ptr %i.m, align 8, !noalias !263
  %i.ad = select i1 %i.aa, i64 15, i64 %i.ac
  %i.ae = icmp ugt i64 %i.y, %i.ad
  br i1 %i.ae, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.x, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc22.i.i.i.i unwind label %bb.i, !noalias !263

.noexc22.i.i.i.i:                                 ; preds = %bb.h
  %.pre.i.i.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !17, !noalias !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i: ; preds = %.noexc22.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.af = phi ptr [ %.pre.i.i.i.i.i.i, %.noexc22.i.i.i.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i8 47, ptr %i.ag, align 1, !tbaa !33, !noalias !263
  store i64 %i.y, ptr %i.n, align 8, !tbaa !7, !noalias !263
  %i.ah = load ptr, ptr %10, align 8, !tbaa !17, !noalias !263
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i8 0, ptr %i.ai, align 1, !tbaa !33, !noalias !263
  %.pre.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !7, !noalias !263
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i, %bb.b
  %i.ak = phi i64 [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.al = icmp ugt i64 %.0.i.i.i.i.i, %i.ak
  br i1 %i.al, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i64 noundef %.0.i.i.i.i.i, i64 noundef %i.ak) #25
          to label %.noexc24.i.i.i.i unwind label %bb.n, !noalias !263

.noexc24.i.i.i.i:                                 ; preds = %bb.k
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i: ; preds = %bb.j
  %i.am = sub nuw i64 %i.ak, %.0.i.i.i.i.i        ; 2 uses
  %i.an = load i64, ptr %i.n, align 8, !tbaa !7, !noalias !263
  %i.ao = sub i64 4611686018427387903, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.am
  br i1 %i.ap, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc25.i.i.i.i unwind label %bb.n, !noalias !263

.noexc25.i.i.i.i:                                 ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.aq = load ptr, ptr %2, align 8, !tbaa !17, !noalias !263
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i.i.i.i.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ar, i64 noundef %i.am)
          to label %bb.m unwind label %bb.n, !noalias !263 ; 0 uses

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i
  %i.at = load ptr, ptr %10, align 8, !tbaa !17, !noalias !263
  %i.au = call noalias ptr @fopen(ptr noundef readonly %i.at, ptr noundef nonnull @.str.13), !noalias !264 ; 3 uses
  %.not.i27.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i27.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i, label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i, %bb.l, %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.aw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i unwind label %bb.p, !noalias !263 ; 5 uses

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i: ; preds = %bb.o
  %i.ax = ptrtoint ptr %i.au to i64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %i.aw, align 8, !tbaa !111, !noalias !263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.ay, align 8, !tbaa !143, !noalias !263
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !267, !noalias !263
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 -1, ptr %i.ba, align 8, !tbaa !269, !noalias !263
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = call noundef i32 @fclose(ptr noundef nonnull %i.au), !noalias !263 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i, %bb.m
  %storemerge.i.i.i.i = phi ptr [ %i.aw, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i ], [ null, %bb.m ] ; 2 uses
  store ptr %storemerge.i.i.i.i, ptr %0, align 8, !tbaa !148, !alias.scope !263
  %i.bd = load ptr, ptr %10, align 8, !tbaa !17, !noalias !263 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.m
  br i1 %i.be, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !263
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #27, !noalias !263
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i: ; preds = %bb.p, %bb.n, %bb.i
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %i.av, %bb.n ], [ %i.bb, %bb.p ]
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS4_12TimeZoneInfo4LoadESG_E3$_0E9_M_invokeERKSt9_Any_dataSG_":bb.a
  %i.dy = zext i8 %.07.val.i72.i.i.i.i to i64
  %.07.val.1.i73.i.i.i.i = load i8, ptr %i.bz, align 1, !tbaa !33, !noalias !284
  %i.dz = zext i8 %.07.val.1.i73.i.i.i.i to i64
  %.07.val.2.i74.i.i.i.i = load i8, ptr %i.ca, align 2, !tbaa !33, !noalias !284
  %i.ea = zext i8 %.07.val.2.i74.i.i.i.i to i64
  %i.eb = shl nuw nsw i64 %i.dy, 24
  %i.ec = shl nuw nsw i64 %i.dz, 16
  %i.ed = shl nuw nsw i64 %i.ea, 8
  %.07.val.3.i75.i.i.i.i = load i8, ptr %i.cb, align 1, !tbaa !33, !noalias !284
  %i.ee = zext i8 %.07.val.3.i75.i.i.i.i to i64
  %i.ef = or disjoint i64 %i.ec, %i.eb
  %i.eg = or disjoint i64 %i.ef, %i.ed
  %i.eh = or disjoint i64 %i.eg, %i.ee            ; 2 uses
  %i.ei = or disjoint i64 %i.eh, -4294967296
  %i.ej = icmp slt i8 %.07.val.i72.i.i.i.i, 0
  %.0.i76.i.i.i.i = select i1 %i.ej, i64 %i.ei, i64 %i.eh
  %i.ek = add nsw i64 %.0.i76.i.i.i.i, %.0.i71.i.i.i.i ; 2 uses
  %.07.val.i77.i.i.i.i = load i8, ptr %i.cc, align 4, !tbaa !33, !noalias !284 ; 2 uses
  %i.el = zext i8 %.07.val.i77.i.i.i.i to i64
  %.07.val.1.i78.i.i.i.i = load i8, ptr %i.cd, align 1, !tbaa !33, !noalias !284
  %i.em = zext i8 %.07.val.1.i78.i.i.i.i to i64
  %.07.val.2.i79.i.i.i.i = load i8, ptr %i.ce, align 2, !tbaa !33, !noalias !284
  %i.en = zext i8 %.07.val.2.i79.i.i.i.i to i64
  %i.eo = shl nuw nsw i64 %i.el, 24
  %i.ep = shl nuw nsw i64 %i.em, 16
  %i.eq = shl nuw nsw i64 %i.en, 8
  %.07.val.3.i80.i.i.i.i = load i8, ptr %i.cf, align 1, !tbaa !33, !noalias !284
  %i.er = zext i8 %.07.val.3.i80.i.i.i.i to i64
  %i.es = or disjoint i64 %i.ep, %i.eo
  %i.et = or disjoint i64 %i.es, %i.eq
  %i.eu = or disjoint i64 %i.et, %i.er            ; 2 uses
  %i.ev = or disjoint i64 %i.eu, -4294967296
  %i.ew = icmp slt i8 %.07.val.i77.i.i.i.i, 0
  %.0.i81.i.i.i.i = select i1 %i.ew, i64 %i.ev, i64 %i.eu ; 2 uses
  %i.ex = or i64 %.0.i81.i.i.i.i, %i.ek
  %or.cond.not.i.i.i.i = icmp sgt i64 %i.ex, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.z, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.by, align 8, !tbaa !33, !noalias !284
  %i.ey = load ptr, ptr %2, align 8, !tbaa !17, !noalias !284
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.0.i.i18.i.i.i
  %i.fa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ez, ptr noundef nonnull dereferenceable(1) %i.g) #29, !noalias !284
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.aa, label %bb.x

bb.aa:                                            ; preds = %bb.z
  %i.fc = call i32 @fseek(ptr noundef nonnull %i.ch, i64 noundef %i.ek, i32 noundef 0), !noalias !284
  %.not60.i.i.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not60.i.i.i.i, label %bb.ab, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.fd = icmp eq i8 %i.cs, 0
  %i.fe = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.ff = select i1 %i.fd, ptr %i.fe, ptr @.str.21 ; 3 uses
  %i.fg = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %bb.ac unwind label %bb.ah, !noalias !284 ; 9 uses

bb.ac:                                            ; preds = %bb.ab
  %i.fh = ptrtoint ptr %i.ch to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.fi, ptr %9, align 8, !tbaa !47, !noalias !284
  %i.fj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ff) #24, !noalias !284 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !284
  store i64 %i.fj, ptr %i.e, align 8, !tbaa !72, !noalias !284
  %i.fk = icmp ugt i64 %i.fj, 15
  br i1 %i.fk, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.ac
  %i.fl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i23.i.i.i unwind label %.thread.i.i.i.i, !noalias !284 ; 2 uses

.noexc.i23.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i
  store ptr %i.fl, ptr %9, align 8, !tbaa !17, !noalias !284
  %i.fm = load i64, ptr %i.e, align 8, !tbaa !72, !noalias !284
  store i64 %i.fm, ptr %i.fi, align 8, !tbaa !33, !noalias !284
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i23.i.i.i, %bb.ac
  %i.fn = phi ptr [ %i.fl, %.noexc.i23.i.i.i ], [ %i.fi, %bb.ac ] ; 2 uses
  switch i64 %i.fj, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fo = load i8, ptr %i.ff, align 1, !tbaa !33, !noalias !284
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !33, !noalias !284
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fn, ptr nonnull align 1 %i.ff, i64 %i.fj, i1 false), !noalias !284
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i.i.i
  %i.fp = load i64, ptr %i.e, align 8, !tbaa !72, !noalias !284 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !7, !noalias !284
  %i.fr = load ptr, ptr %9, align 8, !tbaa !17, !noalias !284
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fp
  store i8 0, ptr %i.fs, align 1, !tbaa !33, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !284
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.ft, align 8, !tbaa !143, !noalias !284
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 %i.fh, ptr %i.fu, align 8, !tbaa !267, !noalias !284
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store i64 %.0.i81.i.i.i.i, ptr %i.fv, align 8, !tbaa !269, !noalias !284
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %i.fg, align 8, !tbaa !111, !noalias !284
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fg, i64 48 ; 3 uses
  store ptr %i.fx, ptr %i.fw, align 8, !tbaa !47, !noalias !284
  %i.fy = load ptr, ptr %9, align 8, !tbaa !17, !noalias !284 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.fi
  br i1 %i.fz, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ga = load i64, ptr %i.fq, align 8, !tbaa !7, !noalias !284 ; 3 uses
  %i.gb = icmp ult i64 %i.ga, 16
  call void @llvm.assume(i1 %i.gb)
  %i.gc = add nuw nsw i64 %i.ga, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fx, ptr noundef nonnull align 8 dereferenceable(1) %i.fi, i64 %i.gc, i1 false), !noalias !284
  br label %bb.ai

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i: ; preds = %bb.af
  store ptr %i.fy, ptr %i.fw, align 8, !tbaa !17, !noalias !284
  %i.gd = load i64, ptr %i.fi, align 8, !tbaa !33, !noalias !284
  store i64 %i.gd, ptr %i.fx, align 8, !tbaa !33, !noalias !284
  %.pre.i22.i.i.i = load i64, ptr %i.fq, align 8, !tbaa !7, !noalias !284
  br label %bb.ai

.thread.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %i.gf = call noundef i32 @fclose(ptr noundef nonnull %i.ch), !noalias !284 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef 64) #27, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !284
  br label %common.resume.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i: ; preds = %bb.y, %.lr.ph.i.i.i.i, %bb.x, %bb.aa, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !284
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.sink.split.i.i.i.i, %bb.v, %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !284
  %i.gg = call noundef i32 @fclose(ptr noundef nonnull %i.ch), !noalias !284 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i, %bb.r
  %.0.add.i.i.i.i = add nuw nsw i64 %.0.idx155.i.i.i.i, 8 ; 2 uses
  %.not.i19.i.i.i = icmp eq i64 %.0.add.i.i.i.i, 24
  br i1 %.not.i19.i.i.i, label %bb.aj, label %bb.r

bb.ah:                                            ; preds = %bb.ab
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !284
  %i.gi = call noundef i32 @fclose(ptr noundef nonnull %i.ch), !noalias !284 ; 0 uses
  br label %common.resume.i.i.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i, %bb.ag
  %i.gj = phi i64 [ %i.ga, %bb.ag ], [ %.pre.i22.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !7, !noalias !284
  store ptr %i.fg, ptr %0, align 8, !tbaa !148, !alias.scope !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !283
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.aj:                                            ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !290, !alias.scope !284
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !283
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !283
  %i.gl = load i64, ptr %i.h, align 8, !tbaa !7, !noalias !295 ; 4 uses
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i29.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i29.i.i.i: ; preds = %bb.aj
  %spec.select.i.i.i30.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.gl, i64 5)
  %i.gn = load ptr, ptr %2, align 8, !tbaa !17, !noalias !295
  %bcmp.i31.i.i.i = call i32 @bcmp(ptr %i.gn, ptr nonnull @.str.10, i64 %spec.select.i.i.i30.i.i.i), !noalias !295
  %.not.i.i32.i.i.i = icmp eq i32 %bcmp.i31.i.i.i, 0
  br i1 %.not.i.i32.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i29.i.i.i, %bb.aj
  %.inv.i50.i.i.i = icmp ult i64 %i.gl, 5
  %i.go = select i1 %.inv.i50.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i29.i.i.i
  %.0.i.i34.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i29.i.i.i ], [ %i.go, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @constinit.27, i64 32, i1 false), !tbaa.struct !296, !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !295
  store ptr @.str.21, ptr %i.d, align 8, !tbaa !285, !noalias !295
  %.not.i35.i.i.i = icmp eq i64 %.0.i.i34.i.i.i, %i.gl
  br i1 %.not.i35.i.i.i, label %.lr.ph.i36.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i
  %i.gp = load ptr, ptr %2, align 8, !tbaa !17, !noalias !295
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.0.i.i34.i.i.i
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !33, !noalias !295
  %i.gs = icmp eq i8 %i.gr, 47                    ; 2 uses
  %i.gt = select i1 %i.gs, ptr %i.d, ptr %i.c
  %.sroa.6.0.copyload.pre.i.sroa.speculated.i.i.i = select i1 %i.gs, i64 8, i64 32
  br label %.lr.ph.i36.i.i.i

.lr.ph.i36.i.i.i:                                 ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i
  %.sroa.6.0.copyload.i.i.i.i = phi i64 [ 32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i ], [ %.sroa.6.0.copyload.pre.i.sroa.speculated.i.i.i, %bb.ak ]
  %.sroa.0101.0.copyload176.i.i.i.i = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i33.i.i.i ], [ %i.gt, %bb.ak ] ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.copyload176.i.i.i.i, i64 %.sroa.6.0.copyload.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92.i.i.i.i, %.lr.ph.i36.i.i.i
  %.0131.i.i.i.i = phi ptr [ %.sroa.0101.0.copyload176.i.i.i.i, %.lr.ph.i36.i.i.i ], [ %i.ml, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !295
  %i.gy = load ptr, ptr %.0131.i.i.i.i, align 8, !tbaa !285, !noalias !295 ; 4 uses
  store ptr %i.gu, ptr %3, align 8, !tbaa !47, !noalias !295
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %.noexc.i47.i.i.i, label %bb.am

.noexc.i47.i.i.i:                                 ; preds = %bb.al
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #25, !noalias !295
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ha = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gy) #24, !noalias !295 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !295
  store i64 %i.ha, ptr %i.b, align 8, !tbaa !72, !noalias !295
  %i.hb = icmp ugt i64 %i.ha, 15
  br i1 %i.hb, label %.noexc.i.i46.i.i.i, label %._crit_edge.i.i.i37.i.i.i

.noexc.i.i46.i.i.i:                               ; preds = %bb.am
  %i.hc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0), !noalias !295 ; 2 uses
  store ptr %i.hc, ptr %3, align 8, !tbaa !17, !noalias !295
  %i.hd = load i64, ptr %i.b, align 8, !tbaa !72, !noalias !295
  store i64 %i.hd, ptr %i.gu, align 8, !tbaa !33, !noalias !295
  br label %._crit_edge.i.i.i37.i.i.i

._crit_edge.i.i.i37.i.i.i:                        ; preds = %.noexc.i.i46.i.i.i, %bb.am
  %i.he = phi ptr [ %i.hc, %.noexc.i.i46.i.i.i ], [ %i.gu, %bb.am ] ; 2 uses
  switch i64 %i.ha, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %bb.ap
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i37.i.i.i
  %i.hf = load i8, ptr %i.gy, align 1, !tbaa !33, !noalias !295
  store i8 %i.hf, ptr %i.he, align 1, !tbaa !33, !noalias !295
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i.i37.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.he, ptr nonnull align 1 %i.gy, i64 %i.ha, i1 false), !noalias !295
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i37.i.i.i
  %i.hg = load i64, ptr %i.b, align 8, !tbaa !72, !noalias !295 ; 2 uses
  store i64 %i.hg, ptr %i.gv, align 8, !tbaa !7, !noalias !295
  %i.hh = load ptr, ptr %3, align 8, !tbaa !17, !noalias !295
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hg
  store i8 0, ptr %i.hi, align 1, !tbaa !33, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !295
  store ptr %i.gw, ptr %4, align 8, !tbaa !47, !noalias !295
  %i.hj = load ptr, ptr %3, align 8, !tbaa !17, !noalias !295 ; 2 uses
  %i.hk = load i64, ptr %i.gv, align 8, !tbaa !7, !noalias !295 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !295
  store i64 %i.hk, ptr %i.a, align 8, !tbaa !72, !noalias !295
  %i.hl = icmp ugt i64 %i.hk, 15
  br i1 %i.hl, label %.noexc.i43.i.i.i.i, label %._crit_edge.i.i42.i.i.i.i

.noexc.i43.i.i.i.i:                               ; preds = %bb.ap
  %i.hm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc44.i.i.i.i unwind label %bb.au, !noalias !295 ; 2 uses

.noexc44.i.i.i.i:                                 ; preds = %.noexc.i43.i.i.i.i
  store ptr %i.hm, ptr %4, align 8, !tbaa !17, !noalias !295
  %i.hn = load i64, ptr %i.a, align 8, !tbaa !72, !noalias !295
  store i64 %i.hn, ptr %i.gw, align 8, !tbaa !33, !noalias !295
  br label %._crit_edge.i.i42.i.i.i.i

._crit_edge.i.i42.i.i.i.i:                        ; preds = %.noexc44.i.i.i.i, %bb.ap
  %i.ho = phi ptr [ %i.hm, %.noexc44.i.i.i.i ], [ %i.gw, %bb.ap ] ; 2 uses
  switch i64 %i.hk, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %bb.as
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i42.i.i.i.i
  %i.hp = load i8, ptr %i.hj, align 1, !tbaa !33, !noalias !295
  store i8 %i.hp, ptr %i.ho, align 1, !tbaa !33, !noalias !295
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i42.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ho, ptr align 1 %i.hj, i64 %i.hk, i1 false), !noalias !295
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i42.i.i.i.i
  %i.hq = load i64, ptr %i.a, align 8, !tbaa !72, !noalias !295 ; 2 uses
  store i64 %i.hq, ptr %i.gx, align 8, !tbaa !7, !noalias !295
  %i.hr = load ptr, ptr %4, align 8, !tbaa !17, !noalias !295
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hq
  store i8 0, ptr %i.hs, align 1, !tbaa !33, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !295
  %i.ht = load i64, ptr %i.gv, align 8, !tbaa !7, !noalias !295
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i39.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hv = load i64, ptr %i.gx, align 8, !tbaa !7, !noalias !295
  %i.hw = add i64 %i.hv, -4611686018427387889
  %i.hx = icmp ult i64 %i.hw, 15
  br i1 %i.hx, label %.invoke.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i38.i.i.i

.invoke.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i40.i.i.i, %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !295

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i38.i.i.i: ; preds = %bb.at
  %i.hy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.28, i64 noundef 15)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i39.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !295 ; 0 uses

bb.au:                                            ; preds = %.noexc.i43.i.i.i.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i41.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i38.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit79.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.av, %.invoke.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit79.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i39.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i38.i.i.i, %bb.as
  %i.ia = load i64, ptr %i.h, align 8, !tbaa !7, !noalias !295 ; 3 uses
  %i.ib = icmp ugt i64 %.0.i.i34.i.i.i, %i.ia
  br i1 %i.ib, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i40.i.i.i

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i39.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i64 noundef %.0.i.i34.i.i.i, i64 noundef %i.ia) #25
          to label %.noexc48.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !295

.noexc48.i.i.i.i:                                 ; preds = %bb.av
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i40.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i39.i.i.i
  %i.ic = sub nuw i64 %i.ia, %.0.i.i34.i.i.i      ; 2 uses
  %i.id = load i64, ptr %i.gx, align 8, !tbaa !7, !noalias !295
  %i.ie = sub i64 4611686018427387903, %i.id
  %i.if = icmp ult i64 %i.ie, %i.ic
  br i1 %i.if, label %.invoke.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i41.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i41.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i40.i.i.i
  %i.ig = load ptr, ptr %2, align 8, !tbaa !17, !noalias !295
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.0.i.i34.i.i.i
  %i.ii = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ih, i64 noundef %i.ic)
          to label %bb.aw unwind label %.loopexit.i.i.i.i, !noalias !295 ; 0 uses

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i41.i.i.i
  %i.ij = load ptr, ptr %4, align 8, !tbaa !17, !noalias !295
  %i.ik = call noalias ptr @fopen(ptr noundef readonly %i.ij, ptr noundef nonnull @.str.13), !noalias !297 ; 3 uses
  %.not.i51.i.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i51.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i45.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !295
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.il, ptr %5, align 8, !tbaa !47, !noalias !295
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.im, align 8, !tbaa !7, !noalias !295
  store i8 0, ptr %i.il, align 8, !tbaa !33, !noalias !295
  %i.in = load i64, ptr %i.gv, align 8, !tbaa !7, !noalias !295 ; 4 uses
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %bb.bj, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !295
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.ip = load ptr, ptr %3, align 8, !tbaa !17, !noalias !303
  %i.iq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.iq, ptr %7, align 8, !tbaa !47, !alias.scope !304, !noalias !295
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.ir, align 8, !tbaa !7, !alias.scope !304, !noalias !295
  store i8 0, ptr %i.iq, align 8, !tbaa !33, !alias.scope !304, !noalias !295
  %i.is = add i64 %i.in, 12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.is)
          to label %bb.az unwind label %bb.ba, !noalias !295

bb.az:                                            ; preds = %bb.ay
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !7, !alias.scope !304, !noalias !295
  %i.iu = sub i64 4611686018427387903, %i.it
  %i.iv = icmp ult i64 %i.iu, %i.in
  br i1 %i.iv, label %.invoke.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.az
  %i.iw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ip, i64 noundef %i.in)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i.i unwind label %bb.ba, !noalias !295 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS4_12TimeZoneInfo4LoadESG_E3$_0E9_M_invokeERKSt9_Any_dataSG_":bb.a

.body.i.i.i.i:                                    ; preds = %.body.i.i.i.i.sink.split, %bb.bg, %bb.ba
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.jb, %bb.ba ], [ %i.jz, %bb.bg ], [ %.pn.i.i.i.i.ph, %.body.i.i.i.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !295
  br label %bb.bi

bb.bh:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i.i, %.noexc53.i.i.i.i, %bb.bf, %bb.bd
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %6) #24, !noalias !295
  br label %bb.bi

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %6) #24, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !295
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %.body.i.i.i.i
  %.pn31.i.i.i.i = phi { ptr, i32 } [ %i.ke, %bb.bh ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !295
  br label %bb.bn

bb.bj:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %bb.ax
  %i.kf = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %bb.bk unwind label %bb.bm, !noalias !295 ; 14 uses

bb.bk:                                            ; preds = %bb.bj
  %i.kg = ptrtoint ptr %i.ik to i64               ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.ki = load ptr, ptr %5, align 8, !tbaa !17, !noalias !295 ; 3 uses
  %i.kj = icmp eq ptr %i.ki, %i.il
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i: ; preds = %bb.bk
  %i.kk = load i64, ptr %i.im, align 8, !tbaa !7, !noalias !295 ; 3 uses
  %i.kl = icmp ult i64 %i.kk, 16
  call void @llvm.assume(i1 %i.kl)
  %i.km = add nuw nsw i64 %i.kk, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kh, ptr noundef nonnull align 8 dereferenceable(1) %i.il, i64 %i.km, i1 false), !noalias !295
  %i.kn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.ko, align 8, !tbaa !143, !noalias !295
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store i64 %i.kg, ptr %i.kp, align 8, !tbaa !267, !noalias !295
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  store i64 -1, ptr %i.kq, align 8, !tbaa !269, !noalias !295
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, i64 16), ptr %i.kf, align 8, !tbaa !111, !noalias !295
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kf, i64 48 ; 2 uses
  store ptr %i.ks, ptr %i.kr, align 8, !tbaa !47, !noalias !295
  br label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %bb.bk
  %i.kt = load i64, ptr %i.il, align 8, !tbaa !33, !noalias !295 ; 2 uses
  store i64 %i.kt, ptr %i.kh, align 8, !tbaa !33, !noalias !295
  %.pre.i43.i.i.i = load i64, ptr %i.im, align 8, !tbaa !7, !noalias !295 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.kv, align 8, !tbaa !143, !noalias !295
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store i64 %i.kg, ptr %i.kw, align 8, !tbaa !267, !noalias !295
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  store i64 -1, ptr %i.kx, align 8, !tbaa !269, !noalias !295
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, i64 16), ptr %i.kf, align 8, !tbaa !111, !noalias !295
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kf, i64 32 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kf, i64 48 ; 3 uses
  store ptr %i.kz, ptr %i.ky, align 8, !tbaa !47, !noalias !295
  %i.la = icmp eq ptr %i.ki, %i.kh
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %.pre.i.i.i = add nuw nsw i64 %.pre.i43.i.i.i, 1
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i ], [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i ]
  %i.lb = phi ptr [ %i.kz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i ], [ %i.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i ]
  %i.lc = phi ptr [ %i.ku, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i ], [ %i.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i ]
  %i.ld = phi i64 [ %.pre.i43.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i ], [ %i.kk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i ] ; 2 uses
  %i.le = icmp ult i64 %i.ld, 16
  call void @llvm.assume(i1 %i.le)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lb, ptr noundef nonnull align 8 dereferenceable(1) %i.kh, i64 %.pre-phi.i.i.i, i1 false), !noalias !295
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit68.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.ki, ptr %i.ky, align 8, !tbaa !17, !noalias !295
  store i64 %i.kt, ptr %i.kz, align 8, !tbaa !33, !noalias !295
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit68.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit68.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i.i, %bb.bl
  %i.lf = phi ptr [ %i.ku, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i.i ], [ %i.lc, %bb.bl ]
  %i.lg = phi i64 [ %.pre.i43.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i.i ], [ %i.ld, %bb.bl ]
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  store i64 %i.lg, ptr %i.lh, align 8, !tbaa !7, !noalias !295
  store ptr %i.kh, ptr %8, align 8, !tbaa !17, !noalias !295
  store i64 0, ptr %i.lf, align 8, !tbaa !7, !noalias !295
  store i8 0, ptr %i.kh, align 8, !tbaa !33, !noalias !295
  store ptr %i.kf, ptr %0, align 8, !tbaa !148, !alias.scope !295
  %.pre139.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !17, !noalias !295 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !295
  %i.li = icmp eq ptr %.pre139.i.i.i.i, %i.gw
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit68.i.i.i.i
  %i.lj = load i64, ptr %i.gw, align 8, !tbaa !33, !noalias !295
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %.pre139.i.i.i.i, i64 noundef %i.lk) #27, !noalias !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit68.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !295
  %i.ll = load ptr, ptr %3, align 8, !tbaa !17, !noalias !295 ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.gu
  br i1 %i.lm, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i
  %i.ln = load i64, ptr %i.gu, align 8, !tbaa !33, !noalias !295
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #27, !noalias !295
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

bb.bm:                                            ; preds = %bb.bj
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bi
  %.pn33.i.i.i.i = phi { ptr, i32 } [ %i.lp, %bb.bm ], [ %.pn31.i.i.i.i, %bb.bi ]
  %i.lq = load ptr, ptr %5, align 8, !tbaa !17, !noalias !295 ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.il
  br i1 %i.lr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i: ; preds = %bb.bn
  %i.ls = load i64, ptr %i.il, align 8, !tbaa !33, !noalias !295
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #27, !noalias !295
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !295
  %i.lu = call noundef i32 @fclose(ptr noundef nonnull %i.ik), !noalias !295 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit79.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit79.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.pn33.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn33.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i76.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.lv = load ptr, ptr %4, align 8, !tbaa !17, !noalias !295 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.gw
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit79.i.i.i.i
  %i.lx = load i64, ptr %i.gw, align 8, !tbaa !33, !noalias !295
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #27, !noalias !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit79.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i.i.i, %bb.au
  %.pn33.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.hz, %bb.au ], [ %.pn33.pn.pn.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i.i.i ], [ %.pn33.pn.pn.i.i.i.i, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit79.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !295
  %i.lz = load ptr, ptr %3, align 8, !tbaa !17, !noalias !295 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.gu
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i
  %i.mb = load i64, ptr %i.gu, align 8, !tbaa !33, !noalias !295
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #27, !noalias !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !295
  br label %common.resume.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i45.i.i.i: ; preds = %bb.aw
  %i.md = load ptr, ptr %4, align 8, !tbaa !17, !noalias !295 ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.gw
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i45.i.i.i
  %i.mf = load i64, ptr %i.gw, align 8, !tbaa !33, !noalias !295
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #27, !noalias !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i45.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !295
  %i.mh = load ptr, ptr %3, align 8, !tbaa !17, !noalias !295 ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.gu
  br i1 %i.mi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i.i.i
  %i.mj = load i64, ptr %i.gu, align 8, !tbaa !33, !noalias !295
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #27, !noalias !295
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !295
  %i.ml = getelementptr inbounds nuw i8, ptr %.0131.i.i.i.i, i64 8 ; 2 uses
  %.not29.i.i.i.i = icmp eq ptr %i.ml, %11
  br i1 %.not29.i.i.i.i, label %bb.bo, label %bb.al

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !283
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !283
  store ptr null, ptr %0, align 8, !tbaa !290, !alias.scope !283
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit": ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %bb.ai, %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %bb.bo
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS4_12TimeZoneInfo4LoadESG_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !143
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !111
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !267  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.e = invoke noundef i32 %i.d(ptr noundef nonnull %i.b)
          to label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28
  unreachable

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !111
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !267  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.e = invoke noundef i32 %i.d(ptr noundef nonnull %i.b)
          to label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit unwind label %bb.c, !inline_history !327 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28, !inline_history !327
  unreachable

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #24, !inline_history !327
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i64 @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !267
  %i.e = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %.sroa.speculated, ptr noundef %i.d) ; 2 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !269
  %i.g = sub i64 %i.f, %i.e
  store i64 %i.g, ptr %i.a, align 8, !tbaa !269
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i32 @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !267
  %i.e = tail call i32 @fseek(ptr noundef %i.d, i64 noundef %.sroa.speculated, i32 noundef 1) ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !269
  %i.h = sub i64 %i.g, %.sroa.speculated
  store i64 %i.h, ptr %i.a, align 8, !tbaa !269
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZNK4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !7
  store i8 0, ptr %i.a, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !111
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !33
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !267  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull %i.h)
          to label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit unwind label %bb.c, !inline_history !327 ; 0 uses

bb.c:                                             ; preds = %bb.b
end_hunk_3
begin_hunk_4_@_ZNK4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSource7VersionB5cxx11Ev:bb.a
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !33
  store i8 %i.k, ptr %i.j, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !7
  %i.n = load ptr, ptr %0, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !111
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !33
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !267  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull %i.h)
          to label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit unwind label %bb.c, !inline_history !327 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28, !inline_history !327
  unreachable

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  tail call void @_ZN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #24, !inline_history !327
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !111
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !33
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27, !inline_history !330
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !267  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull %i.h)
          to label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit unwind label %bb.c, !inline_history !331 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28, !inline_history !331
  unreachable

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  tail call void @_ZN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %0) #24, !inline_history !331
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !47
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.f, ptr %i.a, align 8, !tbaa !72
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !17
  %i.i = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.i, ptr %i.c, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !33
  store i8 %i.k, ptr %i.j, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !7
  %i.n = load ptr, ptr %0, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !12, i64 8}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 _ZTSN4absl12lts_2025051213time_internal4cctz14TransitionTypeE", !11, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{!8, !10, i64 0}
!18 = !{!19, !5, i64 41}
!19 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz14TransitionTypeE", !4, i64 0, !20, i64 8, !20, i64 24, !22, i64 40, !5, i64 41}
!20 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz6detail10civil_timeINS3_10second_tagEEE", !21, i64 0}
!21 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz6detail6fieldsE", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12}
!22 = !{!"bool", !5, i64 0}
!23 = !{!19, !4, i64 0}
!24 = !{!19, !22, i64 40}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!14, !15, i64 16}
!30 = !{!21, !12, i64 0}
!31 = !{!21, !5, i64 8}
!32 = !{!21, !5, i64 9}
!33 = !{!5, !5, i64 0}
!34 = !{!35, !22, i64 160}
!35 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoE", !36, i64 0, !37, i64 8, !42, i64 32, !5, i64 56, !8, i64 64, !8, i64 96, !8, i64 128, !22, i64 160, !12, i64 168, !45, i64 176, !45, i64 184}
!36 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz10TimeZoneIfE"}
!37 = !{!"_ZTSSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSN4absl12lts_2025051213time_internal4cctz10TransitionE", !11, i64 0}
!42 = !{!"_ZTSSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE12_Vector_implE", !14, i64 0}
!45 = !{!"_ZTSSt6atomicImE", !46, i64 0}
!46 = !{!"_ZTSSt13__atomic_baseImE", !12, i64 0}
!47 = !{!9, !10, i64 0}
!48 = !{!49, !12, i64 32}
!49 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz13PosixTimeZoneE", !8, i64 0, !12, i64 32, !8, i64 40, !12, i64 72, !50, i64 80, !50, i64 104}
!50 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz15PosixTransitionE", !51, i64 0, !53, i64 16}
!51 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz15PosixTransition4DateE", !52, i64 0, !5, i64 8}
!52 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz15PosixTransition10DateFormatE", !5, i64 0}
!53 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz15PosixTransition4TimeE", !12, i64 0}
!54 = !{!41, !41, i64 0}
!55 = !{!56, !5, i64 8}
!56 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz10TransitionE", !12, i64 0, !5, i64 8, !20, i64 16, !20, i64 32}
!57 = !{!49, !12, i64 72}
!58 = !{!49, !52, i64 80}
!59 = !{!49, !12, i64 120}
!60 = !{!40, !41, i64 8}
!61 = !{!40, !41, i64 0}
!62 = !{!56, !12, i64 0}
!63 = !{!20, !12, i64 0}
!64 = !{!35, !12, i64 168}
!65 = !{!21, !5, i64 12}
!66 = !{!50, !52, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !5, i64 0}
!69 = !{!50, !12, i64 16}
!70 = !{!40, !41, i64 16}
!71 = !{i64 0, i64 8, !72, i64 8, i64 1, !33, i64 16, i64 8, !72, i64 24, i64 1, !33, i64 25, i64 1, !33, i64 26, i64 1, !33, i64 27, i64 1, !33, i64 28, i64 1, !33, i64 32, i64 8, !72, i64 40, i64 1, !33, i64 41, i64 1, !33, i64 42, i64 1, !33, i64 43, i64 1, !33, i64 44, i64 1, !33}
!72 = !{!12, !12, i64 0}
!73 = !{!74, !76}
!74 = distinct !{!74, !75, !"_ZSt19__relocate_object_aIN4absl12lts_2025051213time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!75 = distinct !{!75, !"_ZSt19__relocate_object_aIN4absl12lts_2025051213time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_"}
!76 = distinct !{!76, !75, !"_ZSt19__relocate_object_aIN4absl12lts_2025051213time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!77 = distinct !{!77, !28}
!78 = !{!79, !81}
!79 = distinct !{!79, !80, !"_ZSt19__relocate_object_aIN4absl12lts_2025051213time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!80 = distinct !{!80, !"_ZSt19__relocate_object_aIN4absl12lts_2025051213time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_"}
!81 = distinct !{!81, !80, !"_ZSt19__relocate_object_aIN4absl12lts_2025051213time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!82 = distinct !{!82, !28}
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"_ZSt19__relocate_object_aIN4absl12lts_2025051213time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!85 = distinct !{!85, !"_ZSt19__relocate_object_aIN4absl12lts_2025051213time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_"}
!86 = distinct !{!86, !85, !"_ZSt19__relocate_object_aIN4absl12lts_2025051213time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!87 = !{!88, !4, i64 16}
!88 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz9time_zone15absolute_lookupE", !20, i64 0, !4, i64 16, !22, i64 20, !10, i64 24}
!89 = !{!88, !22, i64 20}
!90 = !{!88, !10, i64 24}
!91 = !{!20, !5, i64 8}
!92 = !{!20, !5, i64 9}
!93 = !{!94, !94, i64 0}
!94 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz6detail7weekdayE", !5, i64 0}
!95 = !{!15, !15, i64 0}
!96 = !{!97, !12, i64 0}
!97 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !12, i64 0}
!98 = !{!35, !5, i64 56}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!101 = distinct !{!101, !"_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!104 = distinct !{!104, !"_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!105 = !{!106, !106, i64 0}
!106 = !{!"long long", !5, i64 0}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!109 = distinct !{!109, !"_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!110 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!111 = !{!112, !112, i64 0}
!112 = !{!"vtable pointer", !6, i64 0}
!113 = !{!114, !12, i64 0}
!114 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16HeaderE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!115 = !{!114, !12, i64 8}
!116 = !{!114, !12, i64 16}
!117 = !{!114, !12, i64 24}
!118 = !{!114, !12, i64 32}
!119 = !{!114, !12, i64 40}
!120 = !{!121, !10, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!122 = distinct !{!122, !28, !123}
!123 = !{!"llvm.loop.peeled.count", i32 1}
!124 = distinct !{!124, !28}
!125 = distinct !{!125, !28}
!126 = distinct !{!126, !28}
!127 = distinct !{!127, !28}
!128 = distinct !{null}
!129 = !{i64 0, i64 8, !72, i64 8, i64 1, !33, i64 9, i64 1, !33, i64 10, i64 1, !33, i64 11, i64 1, !33, i64 12, i64 1, !33}
!130 = distinct !{!130, !28}
!131 = !{!121, !10, i64 16}
!132 = !{!121, !10, i64 8}
!133 = !{i64 0, i64 4, !3, i64 8, i64 8, !72, i64 16, i64 1, !33, i64 17, i64 1, !33, i64 18, i64 1, !33, i64 19, i64 1, !33, i64 20, i64 1, !33, i64 24, i64 8, !72, i64 32, i64 1, !33, i64 33, i64 1, !33, i64 34, i64 1, !33, i64 35, i64 1, !33, i64 36, i64 1, !33, i64 40, i64 1, !134, i64 41, i64 1, !33}
!134 = !{!22, !22, i64 0}
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"_ZSt19__relocate_object_aIN4absl12lts_2025051213time_internal4cctz14TransitionTypeES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!137 = distinct !{!137, !"_ZSt19__relocate_object_aIN4absl12lts_2025051213time_internal4cctz14TransitionTypeES4_SaIS4_EEvPT_PT0_RT1_"}
!138 = distinct !{!138, !137, !"_ZSt19__relocate_object_aIN4absl12lts_2025051213time_internal4cctz14TransitionTypeES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!139 = distinct !{!139, !28}
!140 = !{!20, !5, i64 10}
!141 = !{!20, !5, i64 11}
!142 = !{!20, !5, i64 12}
!143 = !{!11, !11, i64 0}
!144 = !{!145, !11, i64 24}
!145 = !{!"_ZTSSt8functionIFSt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !146, i64 0, !11, i64 24}
!146 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!147 = !{!146, !11, i64 16}
!148 = !{!149, !149, i64 0}
!149 = !{!"p1 _ZTSN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceE", !11, i64 0}
!150 = distinct !{null, null}
!151 = !{!152, !152, i64 0}
!152 = !{!"p1 _ZTSN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoE", !11, i64 0}
!153 = distinct !{null, null}
!154 = distinct !{null, null, null}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!157 = distinct !{!157, !"_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
end_hunk_4
