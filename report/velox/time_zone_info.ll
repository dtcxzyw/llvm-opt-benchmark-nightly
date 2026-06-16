inline.NumInlined: 1347
inline.NumDeleted: 560
begin_hunk_0_@_ZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv:bb.a
  %i.cs = call noundef i32 @_ZN4absl12lts_2024011613time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(16) %3) #26 ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 6
  %switch.offset.i = add nuw nsw i32 %i.cs, 1
  %.0.i = select i1 %i.ct, i32 %switch.offset.i, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
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

bb.u:                                             ; preds = %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82, %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit
  %.039 = phi i64 [ %i.cr, %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %i.it, %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82 ] ; 3 uses
  %.037 = phi i32 [ %.0.i, %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %i.ix, %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82 ] ; 3 uses
  %.035 = phi i8 [ %i.cq, %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %.136, %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82 ] ; 4 uses
  %i.ds = trunc nuw i8 %.035 to i1                ; 3 uses
  %i.dt = load i32, ptr %i.au, align 8, !tbaa !66
  switch i32 %i.dt, label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit [
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
  br label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

bb.w:                                             ; preds = %bb.u
  %i.dx = load i64, ptr %i.aw, align 8, !tbaa !33
  br label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

bb.x:                                             ; preds = %bb.u
  %i.dy = load i8, ptr %i.dn, align 1, !tbaa !33  ; 2 uses
  %i.dz = icmp eq i8 %i.dy, 5                     ; 2 uses
  %i.ea = zext nneg i8 %.035 to i64
  %i.eb = getelementptr inbounds nuw [28 x i8], ptr @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_113kMonthOffsetsE, i64 %i.ea
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
  br label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

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
  br label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit

_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.y, %bb.z
  %.1.i51 = phi i64 [ 0, %bb.u ], [ %i.fa, %bb.z ], [ %spec.select.i, %bb.v ], [ %i.dx, %bb.w ], [ %i.er, %bb.y ]
  %i.fb = mul nsw i64 %.1.i51, 86400
  %i.fc = load i64, ptr %i.ay, align 8, !tbaa !69
  %i.fd = load i32, ptr %i.ba, align 8, !tbaa !66
  switch i32 %i.fd, label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62 [
    i32 0, label %bb.aa
    i32 1, label %bb.ab
    i32 2, label %bb.ac
  ]

bb.aa:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit
  %i.fe = load i64, ptr %i.bc, align 8, !tbaa !33 ; 2 uses
  %i.ff = icmp slt i64 %i.fe, 60
  %not..i59 = xor i1 %i.ds, true
  %or.cond.not.i60 = select i1 %not..i59, i1 true, i1 %i.ff
  %i.fg = sext i1 %or.cond.not.i60 to i64
  %spec.select.i61 = add nsw i64 %i.fe, %i.fg
  br label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62

bb.ab:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit
  %i.fh = load i64, ptr %i.bc, align 8, !tbaa !33
  br label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62

bb.ac:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit
  %i.fi = load i8, ptr %i.dp, align 1, !tbaa !33  ; 2 uses
  %i.fj = icmp eq i8 %i.fi, 5                     ; 2 uses
  %i.fk = zext nneg i8 %.035 to i64
  %i.fl = getelementptr inbounds nuw [28 x i8], ptr @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_113kMonthOffsetsE, i64 %i.fk
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
  br label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62

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
  br label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62

_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit, %bb.aa, %bb.ab, %bb.ad, %bb.ae
  %.1.i56 = phi i64 [ 0, %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit ], [ %i.gk, %bb.ae ], [ %spec.select.i61, %bb.aa ], [ %i.fh, %bb.ab ], [ %i.gb, %bb.ad ]
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
  br i1 %i.gx, label %bb.af, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80

bb.af:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62
  %i.gy = call i64 @llvm.smin.i64(i64 %i.gq, i64 %i.gu)
  %i.gz = icmp slt i64 %i.cb, %i.gy
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !60 ; 6 uses
  %.pre92 = load ptr, ptr %i.dr, align 8, !tbaa !70 ; 2 uses
  br i1 %i.gz, label %bb.ag, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit

bb.ag:                                            ; preds = %bb.af
  %.not.i63 = icmp eq ptr %.pre, %.pre92
  br i1 %.not.i63, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.pre, ptr noundef nonnull align 8 dereferenceable(48) %i.gw, i64 48, i1 false), !tbaa.struct !71
  %i.ha = load ptr, ptr %i.br, align 8, !tbaa !60
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48 ; 2 uses
  store ptr %i.hb, ptr %i.br, align 8, !tbaa !60
  %.pre91 = load ptr, ptr %i.dr, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.hc = load ptr, ptr %i.bq, align 8, !tbaa !61 ; 5 uses
  %i.hd = ptrtoint ptr %.pre to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he                    ; 4 uses
  %i.hg = icmp eq i64 %i.hf, 9223372036854775776
  br i1 %i.hg, label %.invoke, label %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ai, %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #27
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.hh = sdiv exact i64 %i.hf, 48                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hh, i64 1)
  %i.hi = add nsw i64 %.sroa.speculated.i.i.i, %i.hh ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.hh
  %i.hk = call i64 @llvm.umin.i64(i64 %i.hi, i64 192153584101141162)
  %i.hl = select i1 %i.hj, i64 192153584101141162, i64 %i.hk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hl, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hm = mul nuw nsw i64 %i.hl, 48
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #28
          to label %.noexc64 unwind label %.loopexit ; 5 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ho, ptr noundef nonnull align 8 dereferenceable(48) %i.gw, i64 48, i1 false), !tbaa.struct !71
  %.not10.i.i.i.i.i = icmp eq ptr %i.hc, %.pre
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc64, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i ], [ %i.hn, %.noexc64 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i ], [ %i.hc, %.noexc64 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !71, !alias.scope !73
  %i.hp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hp, %.pre
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc64
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hn, %.noexc64 ], [ %i.hq, %.lr.ph.i.i.i.i.i ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hf) #29
  br label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.hn, ptr %i.bq, align 8, !tbaa !61
  store ptr %i.hr, ptr %i.br, align 8, !tbaa !60
  %i.hs = getelementptr inbounds nuw [48 x i8], ptr %i.hn, i64 %i.hl ; 2 uses
  store ptr %i.hs, ptr %i.dr, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.as

_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.ah, %bb.af
  %i.ht = phi ptr [ %i.hs, %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.pre91, %bb.ah ], [ %.pre92, %bb.af ] ; 4 uses
  %i.hu = phi ptr [ %i.hr, %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.hb, %bb.ah ], [ %.pre, %bb.af ] ; 2 uses
  %.not.i65 = icmp eq ptr %i.hu, %i.ht
  br i1 %.not.i65, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hu, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !71
  %i.hv = load ptr, ptr %i.br, align 8, !tbaa !60
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  store ptr %i.hw, ptr %i.br, align 8, !tbaa !60
  br label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80

bb.am:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit
  %i.hx = load ptr, ptr %i.bq, align 8, !tbaa !61 ; 5 uses
  %i.hy = ptrtoint ptr %i.ht to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz                    ; 4 uses
  %i.ib = icmp eq i64 %i.ia, 9223372036854775776
  br i1 %i.ib, label %.invoke, label %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66

_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66: ; preds = %bb.am
  %i.ic = sdiv exact i64 %i.ia, 48                ; 3 uses
  %.sroa.speculated.i.i.i67 = call i64 @llvm.umax.i64(i64 %i.ic, i64 1)
  %i.id = add nsw i64 %.sroa.speculated.i.i.i67, %i.ic ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ic
  %i.if = call i64 @llvm.umin.i64(i64 %i.id, i64 192153584101141162)
  %i.ig = select i1 %i.ie, i64 192153584101141162, i64 %i.if ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.ig, 0
  call void @llvm.assume(i1 %.not.i.i.i68)
  %i.ih = mul nuw nsw i64 %i.ig, 48
  %i.ii = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #28
          to label %.noexc79 unwind label %.loopexit ; 5 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit.i.i66
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ij, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !71
  %.not10.i.i.i.i.i69 = icmp eq ptr %i.hx, %i.ht
  br i1 %.not10.i.i.i.i.i69, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74, label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.noexc79, %.lr.ph.i.i.i.i.i70
  %.012.i.i.i.i.i71 = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i70 ], [ %i.ii, %.noexc79 ] ; 2 uses
  %.0911.i.i.i.i.i72 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i70 ], [ %i.hx, %.noexc79 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i72, i64 48, i1 false), !tbaa.struct !71, !alias.scope !78
  %i.ik = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i72, i64 48 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i71, i64 48 ; 2 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.ik, %i.ht
  br i1 %.not.i.i.i.i.i73, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74: ; preds = %.lr.ph.i.i.i.i.i70, %.noexc79
  %.0.lcssa.i.i.i.i.i75 = phi ptr [ %i.ii, %.noexc79 ], [ %i.il, %.lr.ph.i.i.i.i.i70 ]
  %i.im = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i75, i64 48
  %.not.i23.i.i76 = icmp eq ptr %i.hx, null
  br i1 %.not.i23.i.i76, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ia) #29
  br label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77

_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77: ; preds = %bb.an, %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i74
  store ptr %i.ii, ptr %i.bq, align 8, !tbaa !61
  store ptr %i.im, ptr %i.br, align 8, !tbaa !60
  %i.in = getelementptr inbounds nuw [48 x i8], ptr %i.ii, i64 %i.ig
  store ptr %i.in, ptr %i.dr, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80

_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80: ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i77, %bb.al, %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS2_15PosixTransitionE.exit62
  %i.io = load i64, ptr %i.cj, align 8, !tbaa !64 ; 2 uses
  %.not = icmp eq i64 %i.io, %i.dl
  br i1 %.not, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80
  %i.ip = zext nneg i8 %.035 to i64               ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_112kSecsPerYearE, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !3
  %i.is = sext i32 %i.ir to i64
  %i.it = add nsw i64 %.039, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_112kDaysPerYearE, i64 %i.ip
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !3
  %i.iw = add nsw i32 %i.iv, %.037
  %i.ix = srem i32 %i.iw, 7
  %.pre93 = add nsw i64 %i.io, 1                  ; 4 uses
  %i.iy = and i64 %.pre93, 3
  %i.iz = icmp ne i64 %i.iy, 0
  %or.cond.not = select i1 %i.ds, i1 true, i1 %i.iz
  br i1 %or.cond.not, label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ja = srem i64 %.pre93, 100
  %.not.i81 = icmp eq i64 %i.ja, 0
  br i1 %.not.i81, label %bb.aq, label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82

bb.aq:                                            ; preds = %bb.ap
  %i.jb = srem i64 %.pre93, 400
  %i.jc = icmp eq i64 %i.jb, 0
  %i.jd = zext i1 %i.jc to i8
  br label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82

_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit82: ; preds = %bb.ao, %bb.aq, %bb.ap
  %.136 = phi i8 [ 0, %bb.ao ], [ %i.jd, %bb.aq ], [ 1, %bb.ap ]
  store i64 %.pre93, ptr %i.cj, align 8, !tbaa !64
  br label %bb.u, !llvm.loop !82

.critedge:                                        ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE9push_backERKS4_.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ar

bb.ar:                                            ; preds = %bb.n, %.critedge, %bb.q
  %.0 = phi i1 [ %i.bp, %bb.q ], [ true, %.critedge ], [ false, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.as:                                            ; preds = %bb.ak, %bb.o
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ak ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.at

_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.ar
  %.1 = phi i1 [ false, %bb.f ], [ %.0, %bb.ar ], [ true, %bb.i ], [ false, %bb.k ], [ false, %bb.j ], [ %.not12.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.as ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.av

bb.au:                                            ; preds = %bb.c, %_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit
  %.2 = phi i1 [ %.1, %_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit ], [ false, %bb.c ]
  %i.je = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.k
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.au
  %i.jg = load i64, ptr %i.k, align 8, !tbaa !33
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ji = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.h
  br i1 %i.jj, label %_ZN4absl12lts_2024011613time_internal4cctz13PosixTimeZoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.jk = load i64, ptr %i.h, align 8, !tbaa !33
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #29
  br label %_ZN4absl12lts_2024011613time_internal4cctz13PosixTimeZoneD2Ev.exit

_ZN4absl12lts_2024011613time_internal4cctz13PosixTimeZoneD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.aw

bb.av:                                            ; preds = %bb.at, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.at ], [ %i.n, %bb.d ]
  call void @_ZN4absl12lts_2024011613time_internal4cctz13PosixTimeZoneD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn.pn.pn

bb.aw:                                            ; preds = %bb.a, %_ZN4absl12lts_2024011613time_internal4cctz13PosixTimeZoneD2Ev.exit
  %.3 = phi i1 [ %.2, %_ZN4absl12lts_2024011613time_internal4cctz13PosixTimeZoneD2Ev.exit ], [ true, %bb.a ]
  ret i1 %.3
}

declare noundef zeroext i1 @_ZN4absl12lts_2024011613time_internal4cctz14ParsePosixSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_13PosixTimeZoneE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #27
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
  br i1 %i.i, label %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !71, !alias.scope !83
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_M_allocateEm.exit
  %.not.i8 = icmp eq ptr %i.d, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #29
  br label %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.r, ptr %i.j, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %1
  store ptr %i.s, ptr %i.b, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.absl::lts_20240116::time_internal::cctz::time_zone::absolute_lookup") align 8 captures(none) initializes((0, 21), (24, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(42) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sdiv i64 %2, 60
  %i.b = srem i64 %2, 60
  %i.c = tail call { i64, i64 } @_ZN4absl12lts_2024011613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef 1970, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef %i.a, i64 noundef %i.b) #26 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_M_default_appendEm:bb.a
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit
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

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i30.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

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
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !246

_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i37 ], [ %i.ar, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !71, !alias.scope !247
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i38 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.bt = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #29
  br label %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41

_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41: ; preds = %_ZNSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.e
  store ptr %i.ar, ptr %0, align 8, !tbaa !61
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !60
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2024011613time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !110

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33
  store i8 %i.v, ptr %i.t, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !33
  store i8 %i.w, ptr %i.m, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !7
  %i.x = load ptr, ptr %0, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !33
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2024011613time_internal4cctz10TimeZoneIfD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS4_12TimeZoneInfo4LoadESG_E3$_0E9_M_invokeERKSt9_Any_dataSG_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca [4 x ptr], align 8                ; 7 uses
  %i.b = alloca [1 x ptr], align 8                ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::basic_ifstream", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.c = alloca [24 x i8], align 16               ; 18 uses
  %i.d = alloca [52 x i8], align 16               ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7, !noalias !263 ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.a
  %spec.select.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 5)
  %i.h = load ptr, ptr %2, align 8, !tbaa !17, !noalias !263
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr nonnull @.str.13, i64 %spec.select.i.i.i.i.i.i), !noalias !263
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.a
  %.inv.i.i.i.i = icmp ult i64 %i.f, 5
  %i.i = select i1 %.inv.i.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !263
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 16 uses
  store ptr %i.j, ptr %11, align 8, !tbaa !47, !noalias !263
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i64 0, ptr %i.k, align 8, !tbaa !7, !noalias !263
  store i8 0, ptr %i.j, align 8, !tbaa !33, !noalias !263
  %i.l = icmp eq i64 %.0.i.i.i.i.i, %i.f
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !17, !noalias !263
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.i.i.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !33, !noalias !263
  %.not.i.i.i.i = icmp eq i8 %i.o, 47
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.p = call ptr @getenv(ptr noundef nonnull @.str.15) #26, !noalias !263 ; 3 uses
  %.not17.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not17.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33, !noalias !263
  %.not18.i.i.i.i = icmp eq i8 %i.q, 0
  %spec.select.i.i.i.i = select i1 %.not18.i.i.i.i, ptr @.str.14, ptr %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ @.str.14, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 4 uses
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i.i) #26, !noalias !263 ; 10 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc.i.i.i.i unwind label %bb.p, !noalias !263

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %.not.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.r, 15
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  switch i64 %i.r, label %bb.i [
    i64 0, label %bb.m
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = load i8, ptr %.0.i.i.i.i, align 1, !tbaa !33, !noalias !263
  store i8 %i.t, ptr %i.j, align 8, !tbaa !33, !noalias !263
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 1 %.0.i.i.i.i, i64 %i.r, i1 false), !noalias !263
  br label %bb.m

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  %i.u = icmp samesign ult i64 %i.r, 30
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = add nuw i64 %i.r, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !264

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc61.i.i.i.i unwind label %bb.p, !noalias !263

.noexc61.i.i.i.i:                                 ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.x = phi i64 [ %i.v, %bb.k ], [ 31, %bb.j ]
  %.0.i5764.i.i.i.i = phi i64 [ %i.r, %bb.k ], [ 30, %bb.j ]
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #28
          to label %._crit_edge.i.i.i.i unwind label %bb.p, !noalias !263 ; 3 uses

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %.0.i.i.i.i, i64 %i.r, i1 false), !noalias !263
  store ptr %i.y, ptr %11, align 8, !tbaa !17, !noalias !263
  store i64 %.0.i5764.i.i.i.i, ptr %i.j, align 8, !tbaa !33, !noalias !263
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i.i, %bb.i, %bb.h, %bb.g
  %i.z = phi ptr [ %i.y, %._crit_edge.i.i.i.i ], [ %i.j, %bb.g ], [ %i.j, %bb.i ], [ %i.j, %bb.h ]
  store i64 %i.r, ptr %i.k, align 8, !tbaa !7, !noalias !263
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store i8 0, ptr %i.aa, align 1, !tbaa !33, !noalias !263
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !7, !noalias !263 ; 4 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  %i.ad = load ptr, ptr %11, align 8, !tbaa !17, !noalias !263 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.j                 ; 2 uses
  br i1 %i.ae, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.af = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.ag = load i64, ptr %i.j, align 8, !noalias !263
  %i.ah = select i1 %i.ae, i64 15, i64 %i.ag
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ab, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc22.i.i.i.i unwind label %bb.p, !noalias !263

.noexc22.i.i.i.i:                                 ; preds = %bb.o
  %.pre.i.i.i.i.i.i = load ptr, ptr %11, align 8, !tbaa !17, !noalias !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i: ; preds = %.noexc22.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i.i.i, %.noexc22.i.i.i.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  store i8 47, ptr %i.ak, align 1, !tbaa !33, !noalias !263
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !7, !noalias !263
  %i.al = load ptr, ptr %11, align 8, !tbaa !17, !noalias !263
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ac
  store i8 0, ptr %i.am, align 1, !tbaa !33, !noalias !263
  %.pre45.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !7, !noalias !263
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.l, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit35.i.i.i.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i, %bb.b
  %i.ao = phi i64 [ %.pre45.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 4 uses
  %i.ap = icmp ugt i64 %.0.i.i.i.i.i, %i.ao
  br i1 %i.ap, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, i64 noundef %.0.i.i.i.i.i, i64 noundef %i.ao) #27
          to label %.noexc29.i.i.i.i unwind label %bb.aa, !noalias !263

.noexc29.i.i.i.i:                                 ; preds = %bb.r
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i: ; preds = %bb.q
  %i.aq = load ptr, ptr %2, align 8, !tbaa !17, !noalias !263
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i.i.i.i.i ; 3 uses
  %i.as = sub nuw i64 %i.ao, %.0.i.i.i.i.i        ; 5 uses
  %i.at = load i64, ptr %i.k, align 8, !tbaa !7, !noalias !263 ; 5 uses
  %i.au = sub i64 9223372036854775807, %i.at
  %i.av = icmp ult i64 %i.au, %i.as
  br i1 %i.av, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc30.i.i.i.i unwind label %bb.aa, !noalias !263

.noexc30.i.i.i.i:                                 ; preds = %bb.s
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.aw = add i64 %i.at, %i.as                    ; 3 uses
  %i.ax = load ptr, ptr %11, align 8, !tbaa !17, !noalias !263 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.j                 ; 2 uses
  br i1 %i.ay, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25.i.i.i.i
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS4_12TimeZoneInfo4LoadESG_E3$_0E9_M_invokeERKSt9_Any_dataSG_":bb.a
  %.07.val.i77.i.i.i.i = load i8, ptr %i.cp, align 4, !tbaa !33, !noalias !285 ; 2 uses
  %i.ey = zext i8 %.07.val.i77.i.i.i.i to i64
  %.07.val.1.i78.i.i.i.i = load i8, ptr %i.cq, align 1, !tbaa !33, !noalias !285
  %i.ez = zext i8 %.07.val.1.i78.i.i.i.i to i64
  %.07.val.2.i79.i.i.i.i = load i8, ptr %i.cr, align 2, !tbaa !33, !noalias !285
  %i.fa = zext i8 %.07.val.2.i79.i.i.i.i to i64
  %i.fb = shl nuw nsw i64 %i.ey, 24
  %i.fc = shl nuw nsw i64 %i.ez, 16
  %i.fd = shl nuw nsw i64 %i.fa, 8
  %.07.val.3.i80.i.i.i.i = load i8, ptr %i.cs, align 1, !tbaa !33, !noalias !285
  %i.fe = zext i8 %.07.val.3.i80.i.i.i.i to i64
  %i.ff = or disjoint i64 %i.fc, %i.fb
  %i.fg = or disjoint i64 %i.ff, %i.fd
  %i.fh = or disjoint i64 %i.fg, %i.fe            ; 2 uses
  %i.fi = or disjoint i64 %i.fh, -4294967296
  %i.fj = icmp slt i8 %.07.val.i77.i.i.i.i, 0
  %.0.i81.i.i.i.i = select i1 %i.fj, i64 %i.fi, i64 %i.fh ; 2 uses
  %i.fk = or i64 %.0.i81.i.i.i.i, %i.ex
  %or.cond.not.i.i.i.i = icmp sgt i64 %i.fk, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.am, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.sink.split.i.i.i.i

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %i.cl, align 8, !tbaa !33, !noalias !285
  %i.fl = load ptr, ptr %2, align 8, !tbaa !17, !noalias !285
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.0.i.i18.i.i.i
  %i.fn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fm, ptr noundef nonnull dereferenceable(1) %i.d) #32, !noalias !285
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.an, label %bb.ak

bb.an:                                            ; preds = %bb.am
  %i.fp = call i32 @fseek(ptr noundef nonnull %i.cu, i64 noundef %i.ex, i32 noundef 0), !noalias !285
  %.not60.i.i.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not60.i.i.i.i, label %bb.ao, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.sink.split.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.fq = icmp eq i8 %i.df, 0
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.fs = select i1 %i.fq, ptr %i.fr, ptr @.str.24 ; 3 uses
  %i.ft = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28
          to label %bb.ap unwind label %bb.aw, !noalias !285 ; 9 uses

bb.ap:                                            ; preds = %bb.ao
  %i.fu = ptrtoint ptr %i.cu to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.fv, ptr %10, align 8, !tbaa !47, !noalias !285
  %i.fw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fs) #26, !noalias !285 ; 8 uses
  %i.fx = icmp ugt i64 %i.fw, 15
  br i1 %i.fx, label %bb.aq, label %._crit_edge.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fy = icmp slt i64 %i.fw, 0
  br i1 %i.fy, label %.noexc.i.i.i.i.i, label %bb.ar

.noexc.i.i.i.i.i:                                 ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
          to label %.noexc.i22.i.i.i unwind label %.thread.i.i.i.i, !noalias !285

.noexc.i22.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.fz = add nuw i64 %i.fw, 1                    ; 2 uses
  %i.ga = icmp slt i64 %i.fz, 0
  br i1 %i.ga, label %.noexc11.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !111

.noexc11.i.i.i.i.i:                               ; preds = %bb.ar
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc82.i.i.i.i unwind label %.thread.i.i.i.i, !noalias !285

.noexc82.i.i.i.i:                                 ; preds = %.noexc11.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.ar
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #28
          to label %.noexc83.i.i.i.i unwind label %.thread.i.i.i.i, !noalias !285 ; 2 uses

.noexc83.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.gb, ptr %10, align 8, !tbaa !17, !noalias !285
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !33, !noalias !285
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc83.i.i.i.i, %bb.ap
  %i.gc = phi ptr [ %i.gb, %.noexc83.i.i.i.i ], [ %i.fv, %bb.ap ] ; 3 uses
  switch i64 %i.fw, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %bb.au
  ]

bb.as:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.gd = load i8, ptr %i.fs, align 1, !tbaa !33, !noalias !285
  store i8 %i.gd, ptr %i.gc, align 1, !tbaa !33, !noalias !285
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gc, ptr nonnull align 1 %i.fs, i64 %i.fw, i1 false), !noalias !285
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.fw, ptr %i.ge, align 8, !tbaa !7, !noalias !285
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fw
  store i8 0, ptr %i.gf, align 1, !tbaa !33, !noalias !285
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.gg, align 8, !tbaa !144, !noalias !285
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i64 %i.fu, ptr %i.gh, align 8, !tbaa !268, !noalias !285
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store i64 %.0.i81.i.i.i.i, ptr %i.gi, align 8, !tbaa !270, !noalias !285
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %i.ft, align 8, !tbaa !112, !noalias !285
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ft, i64 48 ; 3 uses
  store ptr %i.gk, ptr %i.gj, align 8, !tbaa !47, !noalias !285
  %i.gl = load ptr, ptr %10, align 8, !tbaa !17, !noalias !285 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.fv
  br i1 %i.gm, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.gn = load i64, ptr %i.ge, align 8, !tbaa !7, !noalias !285 ; 3 uses
  %i.go = icmp ult i64 %i.gn, 16
  call void @llvm.assume(i1 %i.go)
  %i.gp = add nuw nsw i64 %i.gn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gk, ptr noundef nonnull align 8 dereferenceable(1) %i.fv, i64 %i.gp, i1 false), !noalias !285
  br label %bb.ax

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i: ; preds = %bb.au
  store ptr %i.gl, ptr %i.gj, align 8, !tbaa !17, !noalias !285
  %i.gq = load i64, ptr %i.fv, align 8, !tbaa !33, !noalias !285
  store i64 %i.gq, ptr %i.gk, align 8, !tbaa !33, !noalias !285
  %.pre.i.i.i.i = load i64, ptr %i.ge, align 8, !tbaa !7, !noalias !285
  br label %bb.ax

.thread.i.i.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc11.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = call noundef i32 @fclose(ptr noundef nonnull %i.cu), !noalias !285 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef 64) #29, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !285
  br label %common.resume.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.sink.split.i.i.i.i: ; preds = %bb.al, %.lr.ph.i.i.i.i, %bb.ak, %bb.an, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !285
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.sink.split.i.i.i.i, %bb.ai, %bb.ah, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !285
  %i.gt = call noundef i32 @fclose(ptr noundef nonnull %i.cu), !noalias !285 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.thread.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.i.i.i.i, %bb.ae
  %.0.add.i.i.i.i = add nuw nsw i64 %.0.idx157.i.i.i.i, 8 ; 2 uses
  %.not.i19.i.i.i = icmp eq i64 %.0.add.i.i.i.i, 24
  br i1 %.not.i19.i.i.i, label %bb.ay, label %bb.ae

bb.aw:                                            ; preds = %bb.ao
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !285
  %i.gv = call noundef i32 @fclose(ptr noundef nonnull %i.cu), !noalias !285 ; 0 uses
  br label %common.resume.i.i.i

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i, %bb.av
  %i.gw = phi i64 [ %i.gn, %bb.av ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !7, !noalias !285
  store ptr %i.ft, ptr %0, align 8, !tbaa !149, !alias.scope !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !284
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.ay:                                            ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit89.thread.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !291, !alias.scope !285
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !284
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !284
  %i.gy = load i64, ptr %i.e, align 8, !tbaa !7, !noalias !296 ; 4 uses
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i: ; preds = %bb.ay
  %spec.select.i.i.i29.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.gy, i64 5)
  %i.ha = load ptr, ptr %2, align 8, !tbaa !17, !noalias !296
  %bcmp.i30.i.i.i = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.13, i64 %spec.select.i.i.i29.i.i.i), !noalias !296
  %.not.i.i31.i.i.i = icmp eq i32 %bcmp.i30.i.i.i, 0
  br i1 %.not.i.i31.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i, %bb.ay
  %.inv.i50.i.i.i = icmp ult i64 %i.gy, 5
  %i.hb = select i1 %.inv.i50.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i
  %.0.i.i33.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i ], [ %i.hb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i49.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @constinit.30, i64 32, i1 false), !tbaa.struct !297, !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !296
  store ptr @.str.24, ptr %i.b, align 8, !tbaa !286, !noalias !296
  %.not.i34.i.i.i = icmp eq i64 %.0.i.i33.i.i.i, %i.gy
  br i1 %.not.i34.i.i.i, label %.lr.ph.i35.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i
  %i.hc = load ptr, ptr %2, align 8, !tbaa !17, !noalias !296
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.0.i.i33.i.i.i
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !33, !noalias !296
  %i.hf = icmp eq i8 %i.he, 47                    ; 2 uses
  %i.hg = select i1 %i.hf, ptr %i.b, ptr %i.a
  %.sroa.6.0.copyload.pre.i.sroa.speculated.i.i.i = select i1 %i.hf, i64 8, i64 32
  br label %.lr.ph.i35.i.i.i

.lr.ph.i35.i.i.i:                                 ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i
  %.sroa.6.0.copyload.i.i.i.i = phi i64 [ 32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i ], [ %.sroa.6.0.copyload.pre.i.sroa.speculated.i.i.i, %bb.az ]
  %.sroa.0113.0.copyload208.i.i.i.i = phi ptr [ %i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i ], [ %i.hg, %bb.az ] ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.0113.0.copyload208.i.i.i.i, i64 %.sroa.6.0.copyload.i.i.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 13 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i.i.i.i, %.lr.ph.i35.i.i.i
  %.0156.i.i.i.i = phi ptr [ %.sroa.0113.0.copyload208.i.i.i.i, %.lr.ph.i35.i.i.i ], [ %i.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !296
  %i.hl = load ptr, ptr %.0156.i.i.i.i, align 8, !tbaa !286, !noalias !296 ; 4 uses
  store ptr %i.hh, ptr %4, align 8, !tbaa !47, !noalias !296
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %.noexc.i47.i.i.i, label %bb.bb

.noexc.i47.i.i.i:                                 ; preds = %bb.ba
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #27, !noalias !296
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.hn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hl) #26, !noalias !296 ; 8 uses
  %i.ho = icmp ugt i64 %i.hn, 15
  br i1 %i.ho, label %bb.bc, label %._crit_edge.i.i.i36.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.hp = icmp slt i64 %i.hn, 0
  br i1 %i.hp, label %.noexc.i.i46.i.i.i, label %bb.bd

.noexc.i.i46.i.i.i:                               ; preds = %bb.bc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27, !noalias !296
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %i.hq = add nuw i64 %i.hn, 1                    ; 2 uses
  %i.hr = icmp slt i64 %i.hq, 0
  br i1 %i.hr, label %.noexc11.i.i45.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i44.i.i.i, !prof !111

.noexc11.i.i45.i.i.i:                             ; preds = %bb.bd
  call void @_ZSt17__throw_bad_allocv() #27, !noalias !296
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i44.i.i.i: ; preds = %bb.bd
  %i.hs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #28, !noalias !296 ; 2 uses
  store ptr %i.hs, ptr %4, align 8, !tbaa !17, !noalias !296
  store i64 %i.hn, ptr %i.hh, align 8, !tbaa !33, !noalias !296
  br label %._crit_edge.i.i.i36.i.i.i

._crit_edge.i.i.i36.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i44.i.i.i, %bb.bb
  %i.ht = phi ptr [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i44.i.i.i ], [ %i.hh, %bb.bb ] ; 3 uses
  switch i64 %i.hn, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %bb.bg
  ]

bb.be:                                            ; preds = %._crit_edge.i.i.i36.i.i.i
  %i.hu = load i8, ptr %i.hl, align 1, !tbaa !33, !noalias !296
  store i8 %i.hu, ptr %i.ht, align 1, !tbaa !33, !noalias !296
  br label %bb.bg

bb.bf:                                            ; preds = %._crit_edge.i.i.i36.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ht, ptr nonnull align 1 %i.hl, i64 %i.hn, i1 false), !noalias !296
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge.i.i.i36.i.i.i
  store i64 %i.hn, ptr %i.hi, align 8, !tbaa !7, !noalias !296
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hn
  store i8 0, ptr %i.hv, align 1, !tbaa !33, !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !296
  store ptr %i.hj, ptr %5, align 8, !tbaa !47, !noalias !296
  %i.hw = load ptr, ptr %4, align 8, !tbaa !17, !noalias !296 ; 2 uses
  %i.hx = load i64, ptr %i.hi, align 8, !tbaa !7, !noalias !296 ; 8 uses
  %i.hy = icmp ugt i64 %i.hx, 15
  br i1 %i.hy, label %bb.bh, label %._crit_edge.i.i44.i.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.hz = icmp slt i64 %i.hx, 0
  br i1 %i.hz, label %.noexc.i46.i.i.i.i, label %bb.bi

.noexc.i46.i.i.i.i:                               ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
          to label %.noexc47.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !296

.noexc47.i.i.i.i:                                 ; preds = %.noexc.i46.i.i.i.i
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.ia = add nuw i64 %i.hx, 1                    ; 2 uses
  %i.ib = icmp slt i64 %i.ia, 0
  br i1 %i.ib, label %.noexc6.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i45.i.i.i.i, !prof !111

.noexc6.i.i.i.i.i:                                ; preds = %bb.bi
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc48.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !296

.noexc48.i.i.i.i:                                 ; preds = %.noexc6.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i45.i.i.i.i: ; preds = %bb.bi
  %i.ic = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #28
          to label %.noexc49.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !296 ; 2 uses

.noexc49.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i45.i.i.i.i
  store ptr %i.ic, ptr %5, align 8, !tbaa !17, !noalias !296
  store i64 %i.hx, ptr %i.hj, align 8, !tbaa !33, !noalias !296
  br label %._crit_edge.i.i44.i.i.i.i

._crit_edge.i.i44.i.i.i.i:                        ; preds = %.noexc49.i.i.i.i, %bb.bg
  %i.id = phi ptr [ %i.ic, %.noexc49.i.i.i.i ], [ %i.hj, %bb.bg ] ; 4 uses
  switch i64 %i.hx, label %bb.bk [
    i64 1, label %bb.bj
    i64 0, label %bb.bl
  ]

bb.bj:                                            ; preds = %._crit_edge.i.i44.i.i.i.i
  %i.ie = load i8, ptr %i.hw, align 1, !tbaa !33, !noalias !296
  store i8 %i.ie, ptr %i.id, align 1, !tbaa !33, !noalias !296
  br label %bb.bm

bb.bk:                                            ; preds = %._crit_edge.i.i44.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr align 1 %i.hw, i64 %i.hx, i1 false), !noalias !296
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i44.i.i.i.i
  store i64 0, ptr %i.hk, align 8, !tbaa !7, !noalias !296
  store i8 0, ptr %i.id, align 1, !tbaa !33, !noalias !296
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  store i64 %i.hx, ptr %i.hk, align 8, !tbaa !7, !noalias !296
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hx
  store i8 0, ptr %i.if, align 1, !tbaa !33, !noalias !296
  %i.ig = load i64, ptr %i.hk, align 8, !tbaa !7, !noalias !296 ; 5 uses
  %i.ih = icmp sgt i64 %i.ig, 9223372036854775792
  br i1 %i.ih, label %.invoke.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i37.i.i.i, %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp116.i.i.i.i, !noalias !296

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i: ; preds = %bb.bm
  %i.ii = add nsw i64 %i.ig, 15                   ; 3 uses
  %i.ij = load ptr, ptr %5, align 8, !tbaa !17, !noalias !296 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.hj                ; 2 uses
  br i1 %i.ik, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i42.i.i.i

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.il = icmp ult i64 %i.ig, 16
  call void @llvm.assume(i1 %i.il)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i42.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i42.i.i.i: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.im = load i64, ptr %i.hj, align 8, !noalias !296
  %i.in = select i1 %i.ik, i64 15, i64 %i.im
  %.not.i.i.i.i43.i.i.i = icmp ugt i64 %i.ii, %i.in
  br i1 %.not.i.i.i.i43.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i42.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ig
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.io, ptr noundef nonnull align 1 dereferenceable(15) @.str.31, i64 15, i1 false), !noalias !296
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i42.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ig, i64 noundef 0, ptr noundef nonnull @.str.31, i64 noundef 15)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i unwind label %.loopexit115.i.i.i.i, !noalias !296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i: ; preds = %bb.bp, %bb.bo
  store i64 %i.ii, ptr %i.hk, align 8, !tbaa !7, !noalias !296
  %i.ip = load ptr, ptr %5, align 8, !tbaa !17, !noalias !296
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ii
  store i8 0, ptr %i.iq, align 1, !tbaa !33, !noalias !296
  br label %bb.bq

.loopexit.i.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i45.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.noexc6.i.i.i.i.i, %.noexc.i46.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i.i.i.i

.loopexit115.i.i.i.i:                             ; preds = %bb.bx, %bb.bp
  %lpad.loopexit118.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit91.i38.i.i.i

.loopexit.split-lp116.i.i.i.i:                    ; preds = %bb.br, %.invoke.i.i.i.i
  %lpad.loopexit.split-lp119.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit91.i38.i.i.i

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i, %bb.bl
  %i.ir = load i64, ptr %i.e, align 8, !tbaa !7, !noalias !296 ; 4 uses
  %i.is = icmp ugt i64 %.0.i.i33.i.i.i, %i.ir
  br i1 %i.is, label %bb.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i37.i.i.i

bb.br:                                            ; preds = %bb.bq
end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS4_12TimeZoneInfo4LoadESG_E3$_0E9_M_invokeERKSt9_Any_dataSG_":bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i.i.i: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i.i.i, %bb.ch
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.km, %bb.ch ], [ %i.kn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i.i.i ], [ %i.kn, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !296
  br label %bb.ck

bb.cj:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i.i, %.noexc65.i.i.i.i, %bb.cg, %bb.ce
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %7) #26, !noalias !296
  br label %bb.ck

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %7) #26, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !296
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i.i.i
  %.pn31.i.i.i.i = phi { ptr, i32 } [ %i.kt, %bb.cj ], [ %.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !296
  br label %bb.cp

bb.cl:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %bb.bz
  %i.ku = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28
          to label %bb.cm unwind label %bb.co, !noalias !296 ; 14 uses

bb.cm:                                            ; preds = %bb.cl
  %i.kv = ptrtoint ptr %i.jk to i64               ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.kx = load ptr, ptr %6, align 8, !tbaa !17, !noalias !296 ; 3 uses
  %i.ky = icmp eq ptr %i.kx, %i.jl
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i: ; preds = %bb.cm
  %i.kz = load i64, ptr %i.jm, align 8, !tbaa !7, !noalias !296 ; 3 uses
  %i.la = icmp ult i64 %i.kz, 16
  call void @llvm.assume(i1 %i.la)
  %i.lb = add nuw nsw i64 %i.kz, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kw, ptr noundef nonnull align 8 dereferenceable(1) %i.jl, i64 %i.lb, i1 false), !noalias !296
  %i.lc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.ld, align 8, !tbaa !144, !noalias !296
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store i64 %i.kv, ptr %i.le, align 8, !tbaa !268, !noalias !296
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  store i64 -1, ptr %i.lf, align 8, !tbaa !270, !noalias !296
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, i64 16), ptr %i.ku, align 8, !tbaa !112, !noalias !296
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ku, i64 48 ; 2 uses
  store ptr %i.lh, ptr %i.lg, align 8, !tbaa !47, !noalias !296
  br label %bb.cn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %bb.cm
  %i.li = load i64, ptr %i.jl, align 8, !tbaa !33, !noalias !296 ; 2 uses
  store i64 %i.li, ptr %i.kw, align 8, !tbaa !33, !noalias !296
  %.pre.i40.i.i.i = load i64, ptr %i.jm, align 8, !tbaa !7, !noalias !296 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.lk, align 8, !tbaa !144, !noalias !296
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store i64 %i.kv, ptr %i.ll, align 8, !tbaa !268, !noalias !296
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  store i64 -1, ptr %i.lm, align 8, !tbaa !270, !noalias !296
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, i64 16), ptr %i.ku, align 8, !tbaa !112, !noalias !296
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ku, i64 32 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ku, i64 48 ; 3 uses
  store ptr %i.lo, ptr %i.ln, align 8, !tbaa !47, !noalias !296
  %i.lp = icmp eq ptr %i.kx, %i.kw
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %.pre.i.i.i = add nuw nsw i64 %.pre.i40.i.i.i, 1
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i ], [ %i.lb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i ]
  %i.lq = phi ptr [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i ], [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i ]
  %i.lr = phi ptr [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i ], [ %i.lc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i ]
  %i.ls = phi i64 [ %.pre.i40.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i.i ], [ %i.kz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i.i.i ] ; 2 uses
  %i.lt = icmp ult i64 %i.ls, 16
  call void @llvm.assume(i1 %i.lt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lq, ptr noundef nonnull align 8 dereferenceable(1) %i.kw, i64 %.pre-phi.i.i.i, i1 false), !noalias !296
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit80.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.kx, ptr %i.ln, align 8, !tbaa !17, !noalias !296
  store i64 %i.li, ptr %i.lo, align 8, !tbaa !33, !noalias !296
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit80.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit80.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i.i.i, %bb.cn
  %i.lu = phi ptr [ %i.lj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i.i.i ], [ %i.lr, %bb.cn ]
  %i.lv = phi i64 [ %.pre.i40.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i.i.i.i ], [ %i.ls, %bb.cn ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  store i64 %i.lv, ptr %i.lw, align 8, !tbaa !7, !noalias !296
  store ptr %i.kw, ptr %9, align 8, !tbaa !17, !noalias !296
  store i64 0, ptr %i.lu, align 8, !tbaa !7, !noalias !296
  store i8 0, ptr %i.kw, align 8, !tbaa !33, !noalias !296
  store ptr %i.ku, ptr %0, align 8, !tbaa !149, !alias.scope !296
  %.pre168.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !17, !noalias !296 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !296
  %i.lx = icmp eq ptr %.pre168.i.i.i.i, %i.hj
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit80.i.i.i.i
  %i.ly = load i64, ptr %i.hj, align 8, !tbaa !33, !noalias !296
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %.pre168.i.i.i.i, i64 noundef %i.lz) #29, !noalias !296
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit80.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !296
  %i.ma = load ptr, ptr %4, align 8, !tbaa !17, !noalias !296 ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.hh
  br i1 %i.mb, label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i
  %i.mc = load i64, ptr %i.hh, align 8, !tbaa !33, !noalias !296
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #29, !noalias !296
  br label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

bb.co:                                            ; preds = %bb.cl
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.ck
  %.pn33.i.i.i.i = phi { ptr, i32 } [ %i.me, %bb.co ], [ %.pn31.i.i.i.i, %bb.ck ]
  %i.mf = load ptr, ptr %6, align 8, !tbaa !17, !noalias !296 ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.jl
  br i1 %i.mg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i88.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i.i.i.i: ; preds = %bb.cp
  %i.mh = load i64, ptr %i.jl, align 8, !tbaa !33, !noalias !296
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #29, !noalias !296
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i88.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i88.i.i.i.i: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !296
  %i.mj = call noundef i32 @fclose(ptr noundef nonnull %i.jk), !noalias !296 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit91.i38.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit91.i38.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i88.i.i.i.i, %.loopexit.split-lp116.i.i.i.i, %.loopexit115.i.i.i.i
  %.pn33.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn33.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i88.i.i.i.i ], [ %lpad.loopexit118.i.i.i.i, %.loopexit115.i.i.i.i ], [ %lpad.loopexit.split-lp119.i.i.i.i, %.loopexit.split-lp116.i.i.i.i ] ; 2 uses
  %i.mk = load ptr, ptr %5, align 8, !tbaa !17, !noalias !296 ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.hj
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit91.i38.i.i.i
  %i.mm = load i64, ptr %i.hj, align 8, !tbaa !33, !noalias !296
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #29, !noalias !296
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit91.i38.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.i.i.i.i, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.pn33.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn33.pn.pn.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %.pn33.pn.pn.i.i.i.i, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit91.i38.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !296
  %i.mo = load ptr, ptr %4, align 8, !tbaa !17, !noalias !296 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.hh
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i.i.i.i
  %i.mq = load i64, ptr %i.hh, align 8, !tbaa !33, !noalias !296
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #29, !noalias !296
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !296
  br label %common.resume.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit99.i.i.i.i: ; preds = %bb.by
  %i.ms = load ptr, ptr %5, align 8, !tbaa !17, !noalias !296 ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.hj
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit99.i.i.i.i
  %i.mu = load i64, ptr %i.hj, align 8, !tbaa !33, !noalias !296
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #29, !noalias !296
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit99.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !296
  %i.mw = load ptr, ptr %4, align 8, !tbaa !17, !noalias !296 ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.hh
  br i1 %i.mx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i.i.i.i
  %i.my = load i64, ptr %i.hh, align 8, !tbaa !33, !noalias !296
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #29, !noalias !296
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !296
  %i.na = getelementptr inbounds nuw i8, ptr %.0156.i.i.i.i, i64 8 ; 2 uses
  %.not29.i.i.i.i = icmp eq ptr %i.na, %12
  br i1 %.not29.i.i.i.i, label %bb.cq, label %bb.ba

_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !284
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !284
  store ptr null, ptr %0, align 8, !tbaa !291, !alias.scope !284
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit": ; preds = %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %bb.ax, %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %bb.cq
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS4_12TimeZoneInfo4LoadESG_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !144
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2024011613time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144
  %i.e = invoke noundef i32 %i.d(ptr noundef nonnull %i.b)
          to label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #30
  unreachable

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144
  %i.e = invoke noundef i32 %i.d(ptr noundef nonnull %i.b)
          to label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit unwind label %bb.c, !inline_history !324 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #30, !inline_history !324
  unreachable

_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #26, !inline_history !324
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i64 @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268
  %i.e = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %.sroa.speculated, ptr noundef %i.d) ; 2 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !270
  %i.g = sub i64 %i.f, %i.e
  store i64 %i.g, ptr %i.a, align 8, !tbaa !270
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i32 @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268
  %i.e = tail call i32 @fseek(ptr noundef %i.d, i64 noundef %.sroa.speculated, i32 noundef 1) ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !270
  %i.h = sub i64 %i.g, %.sroa.speculated
  store i64 %i.h, ptr %i.a, align 8, !tbaa !270
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZNK4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !7
  store i8 0, ptr %i.a, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !33
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !268  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !144
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull %i.h)
          to label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit unwind label %bb.c, !inline_history !324 ; 0 uses

bb.c:                                             ; preds = %bb.b
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !33
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29, !inline_history !327
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !268  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !144
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull %i.h)
          to label %_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit unwind label %bb.c, !inline_history !328 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #30, !inline_history !328
  unreachable

_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  tail call void @_ZN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %0) #26, !inline_history !328
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !47
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !7    ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !111

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !17
  store i64 %i.e, ptr %i.b, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !33
  store i8 %i.l, ptr %i.k, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !33
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !111

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #29
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !17
  store i64 %.0, ptr %i.d, align 8, !tbaa !33
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !7
  store i8 0, ptr %i.c, align 1, !tbaa !33
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !33
  store i8 %i.s, ptr %i.q, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !7
  %i.u = load ptr, ptr %0, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.sadd.sat.v2i64(<2 x i64>, <2 x i64>) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { cold }
attributes #32 = { nounwind willreturn memory(read) }

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
!14 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 _ZTSN4absl12lts_2024011613time_internal4cctz14TransitionTypeE", !11, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{!8, !10, i64 0}
!18 = !{!19, !5, i64 41}
!19 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz14TransitionTypeE", !4, i64 0, !20, i64 8, !20, i64 24, !22, i64 40, !5, i64 41}
!20 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz6detail10civil_timeINS3_10second_tagEEE", !21, i64 0}
!21 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz6detail6fieldsE", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12}
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
!35 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz12TimeZoneInfoE", !36, i64 0, !37, i64 8, !42, i64 32, !5, i64 56, !8, i64 64, !8, i64 96, !8, i64 128, !22, i64 160, !12, i64 168, !45, i64 176, !45, i64 184}
!36 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz10TimeZoneIfE"}
!37 = !{!"_ZTSSt6vectorIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz10TransitionESaIS4_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSN4absl12lts_2024011613time_internal4cctz10TransitionE", !11, i64 0}
!42 = !{!"_ZTSSt6vectorIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2024011613time_internal4cctz14TransitionTypeESaIS4_EE12_Vector_implE", !14, i64 0}
!45 = !{!"_ZTSSt6atomicImE", !46, i64 0}
!46 = !{!"_ZTSSt13__atomic_baseImE", !12, i64 0}
!47 = !{!9, !10, i64 0}
!48 = !{!49, !12, i64 32}
!49 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz13PosixTimeZoneE", !8, i64 0, !12, i64 32, !8, i64 40, !12, i64 72, !50, i64 80, !50, i64 104}
!50 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz15PosixTransitionE", !51, i64 0, !53, i64 16}
!51 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz15PosixTransition4DateE", !52, i64 0, !5, i64 8}
!52 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz15PosixTransition10DateFormatE", !5, i64 0}
!53 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz15PosixTransition4TimeE", !12, i64 0}
!54 = !{!41, !41, i64 0}
!55 = !{!56, !5, i64 8}
!56 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz10TransitionE", !12, i64 0, !5, i64 8, !20, i64 16, !20, i64 32}
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
!74 = distinct !{!74, !75, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!75 = distinct !{!75, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_"}
!76 = distinct !{!76, !75, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!77 = distinct !{!77, !28}
!78 = !{!79, !81}
!79 = distinct !{!79, !80, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!80 = distinct !{!80, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_"}
!81 = distinct !{!81, !80, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!82 = distinct !{!82, !28}
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!85 = distinct !{!85, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_"}
!86 = distinct !{!86, !85, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!87 = !{!88, !4, i64 16}
!88 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz9time_zone15absolute_lookupE", !20, i64 0, !4, i64 16, !22, i64 20, !10, i64 24}
!89 = !{!88, !22, i64 20}
!90 = !{!88, !10, i64 24}
!91 = !{!20, !5, i64 8}
!92 = !{!20, !5, i64 9}
!93 = !{!94, !94, i64 0}
!94 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz6detail7weekdayE", !5, i64 0}
!95 = !{!15, !15, i64 0}
!96 = !{!97, !12, i64 0}
!97 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !12, i64 0}
!98 = !{!35, !5, i64 56}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!101 = distinct !{!101, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!104 = distinct !{!104, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!105 = !{!106, !106, i64 0}
!106 = !{!"long long", !5, i64 0}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!109 = distinct !{!109, !"_ZNK4absl12lts_2024011613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!110 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!111 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!112 = !{!113, !113, i64 0}
!113 = !{!"vtable pointer", !6, i64 0}
!114 = !{!115, !12, i64 0}
!115 = !{!"_ZTSN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_16HeaderE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!116 = !{!115, !12, i64 8}
!117 = !{!115, !12, i64 16}
!118 = !{!115, !12, i64 24}
!119 = !{!115, !12, i64 32}
!120 = !{!115, !12, i64 40}
!121 = !{!122, !10, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!123 = distinct !{!123, !28, !124}
!124 = !{!"llvm.loop.peeled.count", i32 1}
!125 = distinct !{!125, !28}
!126 = distinct !{!126, !28}
!127 = distinct !{!127, !28}
!128 = distinct !{!128, !28}
!129 = distinct !{null}
!130 = !{i64 0, i64 8, !72, i64 8, i64 1, !33, i64 9, i64 1, !33, i64 10, i64 1, !33, i64 11, i64 1, !33, i64 12, i64 1, !33}
!131 = distinct !{!131, !28}
!132 = !{!122, !10, i64 16}
!133 = !{!122, !10, i64 8}
!134 = !{i64 0, i64 4, !3, i64 8, i64 8, !72, i64 16, i64 1, !33, i64 17, i64 1, !33, i64 18, i64 1, !33, i64 19, i64 1, !33, i64 20, i64 1, !33, i64 24, i64 8, !72, i64 32, i64 1, !33, i64 33, i64 1, !33, i64 34, i64 1, !33, i64 35, i64 1, !33, i64 36, i64 1, !33, i64 40, i64 1, !135, i64 41, i64 1, !33}
!135 = !{!22, !22, i64 0}
!136 = !{!137, !139}
!137 = distinct !{!137, !138, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz14TransitionTypeES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!138 = distinct !{!138, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz14TransitionTypeES4_SaIS4_EEvPT_PT0_RT1_"}
!139 = distinct !{!139, !138, !"_ZSt19__relocate_object_aIN4absl12lts_2024011613time_internal4cctz14TransitionTypeES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!140 = distinct !{!140, !28}
!141 = !{!20, !5, i64 10}
!142 = !{!20, !5, i64 11}
!143 = !{!20, !5, i64 12}
!144 = !{!11, !11, i64 0}
!145 = !{!146, !11, i64 24}
!146 = !{!"_ZTSSt8functionIFSt10unique_ptrIN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !147, i64 0, !11, i64 24}
!147 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!148 = !{!147, !11, i64 16}
!149 = !{!150, !150, i64 0}
!150 = !{!"p1 _ZTSN4absl12lts_2024011613time_internal4cctz14ZoneInfoSourceE", !11, i64 0}
!151 = distinct !{null, null}
end_hunk_4
