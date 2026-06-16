inline.NumInlined: 1272
inline.NumDeleted: 541
begin_hunk_0_@_ZN4absl13time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv:bb.a
  %i.cp = call noundef i32 @_ZN4absl13time_internal4cctz6detail11get_weekdayERKNS2_10civil_timeINS2_10second_tagEEE(ptr noundef nonnull align 8 dereferenceable(16) %3) #24 ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 6
  %switch.offset.i = add nuw nsw i32 %i.cp, 1
  %.0.i = select i1 %i.cq, i32 %switch.offset.i, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 0, ptr %4, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load i8, ptr %i.b, align 1
  store i8 %i.cs, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 1970, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 1970, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i8 0, ptr %i.cy, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = load i8, ptr %i.a, align 1
  store i8 %i.da, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1970, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 24
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 1970, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 40
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i8 0, ptr %i.dg, align 4
  %i.dh = load i64, ptr %i.cg, align 8
  %i.di = add nsw i64 %i.dh, 401
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 90 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 114 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit
  %.031 = phi i32 [ %.0.i, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %i.it, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68 ] ; 3 uses
  %.029 = phi i64 [ %i.co, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %i.ip, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68 ] ; 3 uses
  %.027 = phi i8 [ %i.cn, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit ], [ %.128, %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68 ] ; 4 uses
  %i.dp = trunc nuw i8 %.027 to i1                ; 3 uses
  %i.dq = load i32, ptr %i.ar, align 8
  switch i32 %i.dq, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dr = load i64, ptr %i.at, align 8            ; 2 uses
  %i.ds = icmp slt i64 %i.dr, 60
  %not..i = xor i1 %i.dp, true
  %or.cond.not.i = select i1 %not..i, i1 true, i1 %i.ds
  %i.dt = sext i1 %or.cond.not.i to i64
  %spec.select.i = add nsw i64 %i.dr, %i.dt
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit

bb.p:                                             ; preds = %bb.n
  %i.du = load i64, ptr %i.at, align 8
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit

bb.q:                                             ; preds = %bb.n
  %i.dv = load i8, ptr %i.dk, align 1             ; 2 uses
  %i.dw = icmp eq i8 %i.dv, 5                     ; 2 uses
  %i.dx = zext nneg i8 %.027 to i64
  %i.dy = getelementptr inbounds nuw [28 x i8], ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_113kMonthOffsetsE, i64 %i.dx
  %i.dz = load i8, ptr %i.at, align 8
  %i.ea = sext i8 %i.dz to i64
  %i.eb = zext i1 %i.dw to i64
  %i.ec = getelementptr [2 x i8], ptr %i.dy, i64 %i.ea
  %i.ed = getelementptr [2 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load i16, ptr %i.ed, align 2            ; 2 uses
  %i.ef = sext i16 %i.ee to i64                   ; 2 uses
  %i.eg = sext i16 %i.ee to i32
  %.lhs.trunc.i = add nsw i32 %.031, %i.eg
  %i.eh = srem i32 %.lhs.trunc.i, 7               ; 2 uses
  br i1 %i.dw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ei = trunc nsw i32 %i.eh to i16
  %i.ej = add nsw i16 %i.ei, 6
  %i.ek = load i8, ptr %i.dl, align 2
  %i.el = sext i8 %i.ek to i16
  %.lhs.trunc24.i = sub nsw i16 %i.ej, %i.el
  %i.em = srem i16 %.lhs.trunc24.i, 7
  %i.en = xor i16 %i.em, -1
  %.neg.i = sext i16 %i.en to i64
  %i.eo = add nsw i64 %.neg.i, %i.ef
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit

bb.s:                                             ; preds = %bb.q
  %i.ep = sext i8 %i.dv to i64
  %i.eq = load i8, ptr %i.dl, align 2
  %i.er = sext i8 %i.eq to i32
  %reass.sub.i = sub nsw i32 %i.er, %i.eh
  %i.es = trunc nsw i32 %reass.sub.i to i16
  %.lhs.trunc26.i = add nsw i16 %i.es, 7
  %i.et = srem i16 %.lhs.trunc26.i, 7
  %.sext27.i = sext i16 %i.et to i64
  %i.eu = mul nsw i64 %i.ep, 7
  %i.ev = add nsw i64 %i.eu, -7
  %i.ew = add nsw i64 %i.ev, %i.ef
  %i.ex = add nsw i64 %i.ew, %.sext27.i
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit

_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit: ; preds = %bb.n, %bb.o, %bb.p, %bb.r, %bb.s
  %.1.i40 = phi i64 [ 0, %bb.n ], [ %i.ex, %bb.s ], [ %spec.select.i, %bb.o ], [ %i.du, %bb.p ], [ %i.eo, %bb.r ]
  %i.ey = mul nsw i64 %.1.i40, 86400
  %i.ez = load i64, ptr %i.av, align 8
  %i.fa = load i32, ptr %i.ax, align 8
  switch i32 %i.fa, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51 [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.t:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit
  %i.fb = load i64, ptr %i.az, align 8            ; 2 uses
  %i.fc = icmp slt i64 %i.fb, 60
  %not..i48 = xor i1 %i.dp, true
  %or.cond.not.i49 = select i1 %not..i48, i1 true, i1 %i.fc
  %i.fd = sext i1 %or.cond.not.i49 to i64
  %spec.select.i50 = add nsw i64 %i.fb, %i.fd
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51

bb.u:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit
  %i.fe = load i64, ptr %i.az, align 8
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51

bb.v:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit
  %i.ff = load i8, ptr %i.dm, align 1             ; 2 uses
  %i.fg = icmp eq i8 %i.ff, 5                     ; 2 uses
  %i.fh = zext nneg i8 %.027 to i64
  %i.fi = getelementptr inbounds nuw [28 x i8], ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_113kMonthOffsetsE, i64 %i.fh
  %i.fj = load i8, ptr %i.az, align 8
  %i.fk = sext i8 %i.fj to i64
  %i.fl = zext i1 %i.fg to i64
  %i.fm = getelementptr [2 x i8], ptr %i.fi, i64 %i.fk
  %i.fn = getelementptr [2 x i8], ptr %i.fm, i64 %i.fl
  %i.fo = load i16, ptr %i.fn, align 2            ; 2 uses
  %i.fp = sext i16 %i.fo to i64                   ; 2 uses
  %i.fq = sext i16 %i.fo to i32
  %.lhs.trunc.i41 = add nsw i32 %.031, %i.fq
  %i.fr = srem i32 %.lhs.trunc.i41, 7             ; 2 uses
  br i1 %i.fg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fs = trunc nsw i32 %i.fr to i16
  %i.ft = add nsw i16 %i.fs, 6
  %i.fu = load i8, ptr %i.dn, align 2
  %i.fv = sext i8 %i.fu to i16
  %.lhs.trunc24.i46 = sub nsw i16 %i.ft, %i.fv
  %i.fw = srem i16 %.lhs.trunc24.i46, 7
  %i.fx = xor i16 %i.fw, -1
  %.neg.i47 = sext i16 %i.fx to i64
  %i.fy = add nsw i64 %.neg.i47, %i.fp
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51

bb.x:                                             ; preds = %bb.v
  %i.fz = sext i8 %i.ff to i64
  %i.ga = load i8, ptr %i.dn, align 2
  %i.gb = sext i8 %i.ga to i32
  %reass.sub.i42 = sub nsw i32 %i.gb, %i.fr
  %i.gc = trunc nsw i32 %reass.sub.i42 to i16
  %.lhs.trunc26.i43 = add nsw i16 %i.gc, 7
  %i.gd = srem i16 %.lhs.trunc26.i43, 7
  %.sext27.i44 = sext i16 %i.gd to i64
  %i.ge = mul nsw i64 %i.fz, 7
  %i.gf = add nsw i64 %i.ge, -7
  %i.gg = add nsw i64 %i.gf, %i.fp
  %i.gh = add nsw i64 %i.gg, %.sext27.i44
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51

_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51: ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit, %bb.t, %bb.u, %bb.w, %bb.x
  %.1.i45 = phi i64 [ 0, %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit ], [ %i.gh, %bb.x ], [ %spec.select.i50, %bb.t ], [ %i.fe, %bb.u ], [ %i.fy, %bb.w ]
  %i.gi = mul nsw i64 %.1.i45, 86400
  %i.gj = load i64, ptr %i.dj, align 8
  %i.gk = load i64, ptr %i.n, align 8
  %i.gl = add i64 %i.ez, %.029
  %i.gm = add i64 %i.gl, %i.ey
  %i.gn = sub i64 %i.gm, %i.gk                    ; 4 uses
  store i64 %i.gn, ptr %4, align 8
  %i.go = load i64, ptr %i.ao, align 8
  %i.gp = add i64 %i.gj, %.029
  %i.gq = add i64 %i.gp, %i.gi
  %i.gr = sub i64 %i.gq, %i.go                    ; 4 uses
  store i64 %i.gr, ptr %5, align 8
  %i.gs = icmp slt i64 %i.gn, %i.gr               ; 2 uses
  %. = select i1 %i.gs, ptr %4, ptr %5            ; 2 uses
  %6 = call i64 @llvm.smax.i64(i64 %i.gn, i64 %i.gr)
  %7 = select i1 %i.gs, ptr %5, ptr %4            ; 2 uses
  %i.gt = icmp slt i64 %i.by, %6
  br i1 %i.gt, label %bb.y, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit66

bb.y:                                             ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51
  %i.gu = call i64 @llvm.smin.i64(i64 %i.gn, i64 %i.gr)
  %i.gv = icmp slt i64 %i.by, %i.gu
  %.pre = load ptr, ptr %i.bo, align 8            ; 6 uses
  %.pre78 = load ptr, ptr %i.do, align 8          ; 2 uses
  br i1 %i.gv, label %bb.z, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit

bb.z:                                             ; preds = %bb.y
  %.not.i52 = icmp eq ptr %.pre, %.pre78
  br i1 %.not.i52, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.pre, ptr noundef nonnull align 8 dereferenceable(48) %., i64 48, i1 false)
  %i.gw = load ptr, ptr %i.bo, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 48 ; 2 uses
  store ptr %i.gx, ptr %i.bo, align 8
  %.pre77 = load ptr, ptr %i.do, align 8
  br label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit

bb.ab:                                            ; preds = %bb.z
  %i.gy = load ptr, ptr %i.bn, align 8            ; 5 uses
  %i.gz = ptrtoint ptr %.pre to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha                    ; 4 uses
  %i.hc = icmp eq i64 %i.hb, 9223372036854775776
  br i1 %i.hc, label %bb.ac, label %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
  unreachable

_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.hd = sdiv exact i64 %i.hb, 48                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hd, i64 1)
  %i.he = add nsw i64 %.sroa.speculated.i.i.i, %i.hd ; 2 uses
  %i.hf = icmp ult i64 %i.he, %i.hd
  %i.hg = call i64 @llvm.umin.i64(i64 %i.he, i64 192153584101141162)
  %i.hh = select i1 %i.hf, i64 192153584101141162, i64 %i.hg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hh, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hi = mul nuw nsw i64 %i.hh, 48
  %i.hj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hi) #26 ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hk, ptr noundef nonnull align 8 dereferenceable(48) %., i64 48, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.gy, %.pre
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i ], [ %i.hj, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i ], [ %i.gy, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !alias.scope !9
  %i.hl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hl, %.pre
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !13

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hj, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.hm, %.lr.ph.i.i.i.i.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hb) #27
  br label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.hj, ptr %i.bn, align 8
  store ptr %i.hn, ptr %i.bo, align 8
  %i.ho = getelementptr inbounds nuw [48 x i8], ptr %i.hj, i64 %i.hh ; 2 uses
  store ptr %i.ho, ptr %i.do, align 8
  br label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.aa, %bb.y
  %i.hp = phi ptr [ %i.ho, %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.pre77, %bb.aa ], [ %.pre78, %bb.y ] ; 4 uses
  %i.hq = phi ptr [ %i.hn, %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.gx, %bb.aa ], [ %.pre, %bb.y ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.hq, %i.hp
  br i1 %.not.i53, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hq, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 48, i1 false)
  %i.hr = load ptr, ptr %i.bo, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  store ptr %i.hs, ptr %i.bo, align 8
  br label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit66

bb.af:                                            ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit
  %i.ht = load ptr, ptr %i.bn, align 8            ; 5 uses
  %i.hu = ptrtoint ptr %i.hp to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.hu, %i.hv                    ; 4 uses
  %i.hx = icmp eq i64 %i.hw, 9223372036854775776
  br i1 %i.hx, label %bb.ag, label %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25
  unreachable

_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54: ; preds = %bb.af
  %i.hy = sdiv exact i64 %i.hw, 48                ; 3 uses
  %.sroa.speculated.i.i.i55 = call i64 @llvm.umax.i64(i64 %i.hy, i64 1)
  %i.hz = add nsw i64 %.sroa.speculated.i.i.i55, %i.hy ; 2 uses
  %i.ia = icmp ult i64 %i.hz, %i.hy
  %i.ib = call i64 @llvm.umin.i64(i64 %i.hz, i64 192153584101141162)
  %i.ic = select i1 %i.ia, i64 192153584101141162, i64 %i.ib ; 3 uses
  %.not.i.i.i56 = icmp ne i64 %i.ic, 0
  call void @llvm.assume(i1 %.not.i.i.i56)
  %i.id = mul nuw nsw i64 %i.ic, 48
  %i.ie = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #26 ; 5 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.if, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 48, i1 false)
  %.not10.i.i.i.i.i57 = icmp eq ptr %i.ht, %i.hp
  br i1 %.not10.i.i.i.i.i57, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i62, label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54, %.lr.ph.i.i.i.i.i58
  %.012.i.i.i.i.i59 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i58 ], [ %i.ie, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54 ] ; 2 uses
  %.0911.i.i.i.i.i60 = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i58 ], [ %i.ht, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i59, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i60, i64 48, i1 false), !alias.scope !14
  %i.ig = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i60, i64 48 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i59, i64 48 ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %i.ig, %i.hp
  br i1 %.not.i.i.i.i.i61, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i62, label %.lr.ph.i.i.i.i.i58, !llvm.loop !13

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i62: ; preds = %.lr.ph.i.i.i.i.i58, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54
  %.0.lcssa.i.i.i.i.i63 = phi ptr [ %i.ie, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i54 ], [ %i.ih, %.lr.ph.i.i.i.i.i58 ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i63, i64 48
  %.not.i23.i.i64 = icmp eq ptr %i.ht, null
  br i1 %.not.i23.i.i64, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i65, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i62
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hw) #27
  br label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i65

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i65: ; preds = %bb.ah, %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i62
  store ptr %i.ie, ptr %i.bn, align 8
  store ptr %i.ii, ptr %i.bo, align 8
  %i.ij = getelementptr inbounds nuw [48 x i8], ptr %i.ie, i64 %i.ic
  store ptr %i.ij, ptr %i.do, align 8
  br label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit66

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit66: ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i65, %bb.ae, %_ZN4absl13time_internal4cctz12_GLOBAL__N_111TransOffsetEbiRKNS1_15PosixTransitionE.exit51
  %i.ik = load i64, ptr %i.cg, align 8            ; 2 uses
  %.not = icmp eq i64 %i.ik, %i.di
  br i1 %.not, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit66
  %i.il = zext nneg i8 %.027 to i64               ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_112kSecsPerYearE, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4
  %i.io = sext i32 %i.in to i64
  %i.ip = add nsw i64 %.029, %i.io
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_112kDaysPerYearE, i64 %i.il
  %i.ir = load i32, ptr %i.iq, align 4
  %i.is = add nsw i32 %i.ir, %.031
  %i.it = srem i32 %i.is, 7
  %.pre79 = add nsw i64 %i.ik, 1                  ; 4 uses
  %i.iu = and i64 %.pre79, 3
  %i.iv = icmp ne i64 %i.iu, 0
  %or.cond.not = select i1 %i.dp, i1 true, i1 %i.iv
  br i1 %or.cond.not, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iw = srem i64 %.pre79, 100
  %.not.i67 = icmp eq i64 %i.iw, 0
  br i1 %.not.i67, label %bb.ak, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68

bb.ak:                                            ; preds = %bb.aj
  %i.ix = srem i64 %.pre79, 400
  %i.iy = icmp eq i64 %i.ix, 0
  %i.iz = zext i1 %i.iy to i8
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68

_ZN4absl13time_internal4cctz12_GLOBAL__N_16IsLeapEl.exit68: ; preds = %bb.ai, %bb.ak, %bb.aj
  %.128 = phi i8 [ 0, %bb.ai ], [ %i.iz, %bb.ak ], [ 1, %bb.aj ]
  store i64 %.pre79, ptr %i.cg, align 8
  br label %bb.n, !llvm.loop !18

.critedge:                                        ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE9push_backERKS3_.exit66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.i, %.critedge, %bb.k
  %.0 = phi i1 [ %i.bm, %bb.k ], [ true, %.critedge ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.al
  %.1 = phi i1 [ false, %bb.c ], [ %.0, %bb.al ], [ true, %bb.e ], [ false, %bb.g ], [ false, %bb.f ], [ %.not12.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.am

bb.am:                                            ; preds = %bb.b, %_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit
  %.2 = phi i1 [ %.1, %_ZNK4absl13time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit ], [ false, %bb.b ]
  %i.ja = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.k
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.am
  %i.jc = load i64, ptr %i.k, align 8
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.je = load ptr, ptr %1, align 8               ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.h
  br i1 %i.jf, label %_ZN4absl13time_internal4cctz13PosixTimeZoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.jg = load i64, ptr %i.h, align 8
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #27
  br label %_ZN4absl13time_internal4cctz13PosixTimeZoneD2Ev.exit

_ZN4absl13time_internal4cctz13PosixTimeZoneD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %_ZN4absl13time_internal4cctz13PosixTimeZoneD2Ev.exit
  %.3 = phi i1 [ %.2, %_ZN4absl13time_internal4cctz13PosixTimeZoneD2Ev.exit ], [ true, %bb.a ]
  ret i1 %.3
}

declare noundef zeroext i1 @_ZN4absl13time_internal4cctz14ParsePosixSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_13PosixTimeZoneE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !alias.scope !19
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !13

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE11_M_allocateEm.exit
  %.not.i8 = icmp eq ptr %i.d, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #27
  br label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.r, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %1
  store ptr %i.s, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.absl::time_internal::cctz::time_zone::absolute_lookup") align 8 captures(none) initializes((0, 21), (24, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(42) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sdiv i64 %2, 60
  %i.b = srem i64 %2, 60
  %i.c = tail call { i64, i64 } @_ZN4absl13time_internal4cctz6detail4impl5n_secEllllll(i64 noundef 1970, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef %i.a, i64 noundef %i.b) #24 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.c, 1 ; 5 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = load i32, ptr %3, align 8                ; 2 uses
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
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_default_appendEm:bb.a
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, i8 0, i64 48, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 1970, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i8 1, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 25
  store i8 1, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 1970, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i8 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 41
  store i8 1, ptr %i.ay, align 1
  %i.az = add nsw i64 %1, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  br label %.lr.ph.i.i.i25.prol.loopexit

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i25.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.bq, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 15 uses
  %.057.i.i.i27 = phi i64 [ %i.bp, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i26, i8 0, i64 48, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 16
  store i64 1970, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 24
  store i8 1, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 25
  store i8 1, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 32
  store i64 1970, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 40
  store i8 1, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 41
  store i8 1, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i8 0, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 64
  store i64 1970, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 72
  store i8 1, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 73
  store i8 1, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 80
  store i64 1970, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 88
  store i8 1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 89
  store i8 1, ptr %i.bo, align 1
  %i.bp = add i64 %.057.i.i.i27, -2               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 96
  %.not.i.i.i28.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i28.1, label %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !133

_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30, %.lr.ph.i.i.i31
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i31 ], [ %i.ar, %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i31 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !alias.scope !134
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i32 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i31, !llvm.loop !13

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i31, %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.bt = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #27
  br label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.ar, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %1
  store ptr %i.bu, ptr %i.a, align 8
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bv, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
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
  br i1 %i.s, label %bb.e, label %bb.k, !prof !32

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
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.t, align 1
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
  %i.w = load i8, ptr %3, align 1
  store i8 %i.w, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN4absl13time_internal4cctz10TimeZoneIfD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E9_M_invokeERKSt9_Any_dataSF_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca [4 x ptr], align 8                ; 7 uses
  %i.b = alloca [1 x ptr], align 8                ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::basic_ifstream", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca [24 x i8], align 16               ; 16 uses
  %i.d = alloca [52 x i8], align 16               ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !150 ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.a
  %spec.select.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 5)
  %i.h = load ptr, ptr %2, align 8, !noalias !150
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr nonnull @.str.17, i64 %spec.select.i.i.i.i.i.i), !noalias !150
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.a
  %.inv.i.i.i.i = icmp ult i64 %i.f, 5
  %i.i = select i1 %.inv.i.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !150
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 14 uses
  store ptr %i.j, ptr %11, align 8, !noalias !150
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i64 0, ptr %i.k, align 8, !noalias !150
  store i8 0, ptr %i.j, align 8, !noalias !150
  %i.l = icmp eq i64 %.0.i.i.i.i.i, %i.f
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !noalias !150
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.i.i.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !noalias !150
  %.not.i.i.i.i = icmp eq i8 %i.o, 47
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.p = call ptr @getenv(ptr noundef nonnull @.str.19) #24, !noalias !150 ; 3 uses
  %.not12.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not12.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.p, align 1, !noalias !150
  %.not13.i.i.i.i = icmp eq i8 %i.q, 0
  %spec.select.i.i.i.i = select i1 %.not13.i.i.i.i, ptr @.str.18, ptr %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ @.str.18, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 4 uses
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i.i) #24, !noalias !150 ; 10 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !150
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %.not.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.r, 15
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  switch i64 %i.r, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = load i8, ptr %.0.i.i.i.i, align 1, !noalias !150
  store i8 %i.t, ptr %i.j, align 8, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 1 %.0.i.i.i.i, i64 %i.r, i1 false), !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  %i.u = icmp samesign ult i64 %i.r, 30
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = add nuw i64 %i.r, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i, !prof !151

bb.l:                                             ; preds = %bb.k
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !150
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i: ; preds = %bb.k, %bb.j
  %i.x = phi i64 [ %i.v, %bb.k ], [ 31, %bb.j ]
  %.0.i525.i.i.i = phi i64 [ %i.r, %bb.k ], [ 30, %bb.j ]
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #26, !noalias !150 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %.0.i.i.i.i, i64 %i.r, i1 false), !noalias !150
  store ptr %i.y, ptr %11, align 8, !noalias !150
  store i64 %.0.i525.i.i.i, ptr %i.j, align 8, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i, %bb.i, %bb.h, %bb.g
  %i.z = phi ptr [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i ]
  store i64 %i.r, ptr %i.k, align 8, !noalias !150
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store i8 0, ptr %i.aa, align 1, !noalias !150
  %i.ab = load i64, ptr %i.k, align 8, !noalias !150 ; 4 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  %i.ad = load ptr, ptr %11, align 8, !noalias !150 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.j                 ; 2 uses
  br i1 %i.ae, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.af = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.ag = load i64, ptr %i.j, align 8, !noalias !150
  %i.ah = select i1 %i.ae, i64 15, i64 %i.ag
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ab, i64 noundef 0, ptr noundef null, i64 noundef 1), !noalias !150
  %.pre.i.i.i.i.i.i = load ptr, ptr %11, align 8, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i.i.i, %bb.n ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  store i8 47, ptr %i.ak, align 1, !noalias !150
  store i64 %i.ac, ptr %i.k, align 8, !noalias !150
  %i.al = load ptr, ptr %11, align 8, !noalias !150
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ac
  store i8 0, ptr %i.am, align 1, !noalias !150
  %.pre26.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !150
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i, %bb.b
  %i.an = phi i64 [ %.pre26.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 4 uses
  %i.ao = icmp ugt i64 %.0.i.i.i.i.i, %i.an
  br i1 %i.ao, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10, i64 noundef %.0.i.i.i.i.i, i64 noundef %i.an) #25, !noalias !150
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ap = load ptr, ptr %2, align 8, !noalias !150
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.0.i.i.i.i.i ; 3 uses
  %i.ar = sub nuw i64 %i.an, %.0.i.i.i.i.i        ; 5 uses
  %i.as = load i64, ptr %i.k, align 8, !noalias !150 ; 5 uses
  %i.at = sub i64 9223372036854775807, %i.as
  %i.au = icmp ult i64 %i.at, %i.ar
  br i1 %i.au, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !150
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.av = add i64 %i.as, %i.ar                    ; 3 uses
  %i.aw = load ptr, ptr %11, align 8, !noalias !150 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.j                 ; 2 uses
  br i1 %i.ax, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i
  %i.ay = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i
  %i.az = load i64, ptr %i.j, align 8, !noalias !150
  %i.ba = select i1 %i.ax, i64 15, i64 %i.az
  %.not.i.i.i17.i.i.i.i = icmp ugt i64 %i.av, %i.ba
  br i1 %.not.i.i.i17.i.i.i.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16.i.i.i.i
  %.not8.i.i.i18.i.i.i.i = icmp eq i64 %i.an, %.0.i.i.i.i.i
  br i1 %.not8.i.i.i18.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.as ; 2 uses
  %cond.i.i.i19.i.i.i.i = icmp eq i64 %i.ar, 1
  br i1 %cond.i.i.i19.i.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bc = load i8, ptr %i.aq, align 1, !noalias !150
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E9_M_invokeERKSt9_Any_dataSF_":bb.a
  %i.eb = add i64 %.038126.i.i.i.i, 1             ; 2 uses
  %.not47.i.i.i.i = icmp eq i64 %i.eb, %i.dz
  br i1 %.not47.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !163

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %bb.ae
  %.038126.i.i.i.i = phi i64 [ %i.eb, %bb.ae ], [ 0, %bb.ad ]
  %i.ec = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 52, ptr noundef nonnull %i.cm), !noalias !159
  %.not48.i.i.i.i = icmp eq i64 %i.ec, 52
  br i1 %.not48.i.i.i.i, label %bb.af, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i.i
  %.07.val.i57.i.i.i.i = load i8, ptr %i.cd, align 8, !noalias !159 ; 2 uses
  %i.ed = zext i8 %.07.val.i57.i.i.i.i to i64
  %.07.val.1.i58.i.i.i.i = load i8, ptr %i.ce, align 1, !noalias !159
  %i.ee = zext i8 %.07.val.1.i58.i.i.i.i to i64
  %.07.val.2.i59.i.i.i.i = load i8, ptr %i.cf, align 2, !noalias !159
  %i.ef = zext i8 %.07.val.2.i59.i.i.i.i to i64
  %i.eg = shl nuw nsw i64 %i.ed, 24
  %i.eh = shl nuw nsw i64 %i.ee, 16
  %i.ei = shl nuw nsw i64 %i.ef, 8
  %.07.val.3.i60.i.i.i.i = load i8, ptr %i.cg, align 1, !noalias !159
  %i.ej = zext i8 %.07.val.3.i60.i.i.i.i to i64
  %i.ek = or disjoint i64 %i.eh, %i.eg
  %i.el = or disjoint i64 %i.ek, %i.ei
  %i.em = or disjoint i64 %i.el, %i.ej            ; 2 uses
  %i.en = or disjoint i64 %i.em, -4294967296
  %i.eo = icmp slt i8 %.07.val.i57.i.i.i.i, 0
  %.0.i61.i.i.i.i = select i1 %i.eo, i64 %i.en, i64 %i.em
  %i.ep = add nsw i64 %.0.i61.i.i.i.i, %.0.i56.i.i.i.i ; 2 uses
  %.07.val.i62.i.i.i.i = load i8, ptr %i.ch, align 4, !noalias !159 ; 2 uses
  %i.eq = zext i8 %.07.val.i62.i.i.i.i to i64
  %.07.val.1.i63.i.i.i.i = load i8, ptr %i.ci, align 1, !noalias !159
  %i.er = zext i8 %.07.val.1.i63.i.i.i.i to i64
  %.07.val.2.i64.i.i.i.i = load i8, ptr %i.cj, align 2, !noalias !159
  %i.es = zext i8 %.07.val.2.i64.i.i.i.i to i64
  %i.et = shl nuw nsw i64 %i.eq, 24
  %i.eu = shl nuw nsw i64 %i.er, 16
  %i.ev = shl nuw nsw i64 %i.es, 8
  %.07.val.3.i65.i.i.i.i = load i8, ptr %i.ck, align 1, !noalias !159
  %i.ew = zext i8 %.07.val.3.i65.i.i.i.i to i64
  %i.ex = or disjoint i64 %i.eu, %i.et
  %i.ey = or disjoint i64 %i.ex, %i.ev
  %i.ez = or disjoint i64 %i.ey, %i.ew            ; 2 uses
  %i.fa = or disjoint i64 %i.ez, -4294967296
  %i.fb = icmp slt i8 %.07.val.i62.i.i.i.i, 0
  %.0.i66.i.i.i.i = select i1 %i.fb, i64 %i.fa, i64 %i.ez ; 2 uses
  %i.fc = or i64 %.0.i66.i.i.i.i, %i.ep
  %or.cond.not.i.i.i.i = icmp sgt i64 %i.fc, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.ag, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr %i.cd, align 8, !noalias !159
  %i.fd = load ptr, ptr %2, align 8, !noalias !159
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.0.i.i18.i.i.i
  %i.ff = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fe, ptr noundef nonnull dereferenceable(1) %i.d) #29, !noalias !159
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ah, label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  %i.fh = call i32 @fseek(ptr noundef nonnull %i.cm, i64 noundef %i.ep, i32 noundef 0), !noalias !159
  %.not49.i.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not49.i.i.i.i, label %bb.ai, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.fi = icmp eq i8 %i.cx, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.fk = select i1 %i.fi, ptr %i.fj, ptr @.str.28 ; 3 uses
  %i.fl = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26, !noalias !159 ; 8 uses
  %i.fm = ptrtoint ptr %i.cm to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.fn, ptr %10, align 8, !noalias !159
  %i.fo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fk) #24, !noalias !159 ; 8 uses
  %i.fp = icmp ugt i64 %i.fo, 15
  br i1 %i.fp, label %bb.aj, label %._crit_edge.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fq = icmp slt i64 %i.fo, 0
  br i1 %i.fq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !159
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fr = add nuw i64 %i.fo, 1                    ; 2 uses
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !33

bb.am:                                            ; preds = %bb.al
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !159
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.al
  %i.ft = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #26, !noalias !159 ; 2 uses
  store ptr %i.ft, ptr %10, align 8, !noalias !159
  store i64 %i.fo, ptr %i.fn, align 8, !noalias !159
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %bb.ai
  %i.fu = phi ptr [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i ], [ %i.fn, %bb.ai ] ; 3 uses
  switch i64 %i.fo, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fv = load i8, ptr %i.fk, align 1, !noalias !159
  store i8 %i.fv, ptr %i.fu, align 1, !noalias !159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fu, ptr nonnull align 1 %i.fk, i64 %i.fo, i1 false), !noalias !159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i: ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.fo, ptr %i.fw, align 8, !noalias !159
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fo
  store i8 0, ptr %i.fx, align 1, !noalias !159
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.fy, align 8, !noalias !159
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store i64 %i.fm, ptr %i.fz, align 8, !noalias !159
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store i64 %.0.i66.i.i.i.i, ptr %i.ga, align 8, !noalias !159
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %i.fl, align 8, !noalias !159
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fl, i64 48 ; 3 uses
  store ptr %i.gc, ptr %i.gb, align 8, !noalias !159
  %i.gd = load ptr, ptr %10, align 8, !noalias !159 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fn
  br i1 %i.ge, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i
  %i.gf = load i64, ptr %i.fw, align 8, !noalias !159 ; 3 uses
  %i.gg = icmp ult i64 %i.gf, 16
  call void @llvm.assume(i1 %i.gg)
  %i.gh = add nuw nsw i64 %i.gf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gc, ptr noundef nonnull align 8 dereferenceable(1) %i.fn, i64 %i.gh, i1 false), !noalias !159
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i
  store ptr %i.gd, ptr %i.gb, align 8, !noalias !159
  %i.gi = load i64, ptr %i.fn, align 8, !noalias !159
  store i64 %i.gi, ptr %i.gc, align 8, !noalias !159
  %.pre.i22.i.i.i = load i64, ptr %i.fw, align 8, !noalias !159
  br label %bb.aq

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i: ; preds = %bb.af, %.lr.ph.i.i.i.i, %bb.ae, %bb.ah, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !159
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i, %bb.ac, %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !159
  %i.gj = call noundef i32 @fclose(ptr noundef nonnull %i.cm) #24, !noalias !159, !inline_history !164 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i, %bb.y
  %.0.add.i.i.i.i = add nuw nsw i64 %.0.idx132.i.i.i.i, 8 ; 2 uses
  %.not.i19.i.i.i = icmp eq i64 %.0.add.i.i.i.i, 24
  br i1 %.not.i19.i.i.i, label %bb.ar, label %bb.y

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i, %bb.ap
  %i.gk = phi i64 [ %.pre.i22.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i ], [ %i.gf, %bb.ap ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store i64 %i.gk, ptr %i.gl, align 8, !noalias !159
  store ptr %i.fl, ptr %0, align 8, !alias.scope !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !158
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.ar:                                            ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i
  store ptr null, ptr %0, align 8, !alias.scope !159
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !158
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !158
  %i.gm = load i64, ptr %i.e, align 8, !noalias !168 ; 4 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i: ; preds = %bb.ar
  %spec.select.i.i.i29.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.gm, i64 5)
  %i.go = load ptr, ptr %2, align 8, !noalias !168
  %bcmp.i30.i.i.i = call i32 @bcmp(ptr %i.go, ptr nonnull @.str.17, i64 %spec.select.i.i.i29.i.i.i), !noalias !168
  %.not.i.i31.i.i.i = icmp eq i32 %bcmp.i30.i.i.i, 0
  br i1 %.not.i.i31.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i, %bb.ar
  %.inv.i48.i.i.i = icmp ult i64 %i.gm, 5
  %i.gp = select i1 %.inv.i48.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i
  %.0.i.i33.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i ], [ %i.gp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @constinit.34, i64 32, i1 false), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !168
  store ptr @.str.28, ptr %i.b, align 8, !noalias !168
  %.not.i34.i.i.i = icmp eq i64 %.0.i.i33.i.i.i, %i.gm
  br i1 %.not.i34.i.i.i, label %.thread.i.i.i.i, label %bb.as

.thread.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %.lr.ph.i35.i.i.i

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i
  %i.gq = load ptr, ptr %2, align 8, !noalias !168
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.0.i.i33.i.i.i
  %i.gs = load i8, ptr %i.gr, align 1, !noalias !168
  %i.gt = icmp eq i8 %i.gs, 47                    ; 2 uses
  %i.gu = select i1 %i.gt, ptr %i.b, ptr %i.a     ; 2 uses
  %.sroa.5.0.copyload.pre.i.sroa.speculated.i.i.i = select i1 %i.gt, i64 8, i64 32
  %13 = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.5.0.copyload.pre.i.sroa.speculated.i.i.i
  br label %.lr.ph.i35.i.i.i

.lr.ph.i35.i.i.i:                                 ; preds = %bb.as, %.thread.i.i.i.i
  %14 = phi ptr [ %12, %.thread.i.i.i.i ], [ %13, %bb.as ]
  %.sroa.060.0.copyload136.i.i.i.i = phi ptr [ %i.a, %.thread.i.i.i.i ], [ %i.gu, %bb.as ]
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i, %.lr.ph.i35.i.i.i
  %.01690.i.i.i.i = phi ptr [ %.sroa.060.0.copyload136.i.i.i.i, %.lr.ph.i35.i.i.i ], [ %i.mh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !168
  %i.gz = load ptr, ptr %.01690.i.i.i.i, align 8, !noalias !168 ; 4 uses
  store ptr %i.gv, ptr %4, align 8, !noalias !168
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.29) #25, !noalias !168
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.hb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gz) #24, !noalias !168 ; 8 uses
  %i.hc = icmp ugt i64 %i.hb, 15
  br i1 %i.hc, label %bb.aw, label %._crit_edge.i.i.i36.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.hd = icmp slt i64 %i.hb, 0
  br i1 %i.hd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !168
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.he = add nuw i64 %i.hb, 1                    ; 2 uses
  %i.hf = icmp slt i64 %i.he, 0
  br i1 %i.hf, label %bb.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i, !prof !33

bb.az:                                            ; preds = %bb.ay
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !168
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i: ; preds = %bb.ay
  %i.hg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.he) #26, !noalias !168 ; 2 uses
  store ptr %i.hg, ptr %4, align 8, !noalias !168
  store i64 %i.hb, ptr %i.gv, align 8, !noalias !168
  br label %._crit_edge.i.i.i36.i.i.i

._crit_edge.i.i.i36.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i, %bb.av
  %i.hh = phi ptr [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i ], [ %i.gv, %bb.av ] ; 3 uses
  switch i64 %i.hb, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i.i36.i.i.i
  %i.hi = load i8, ptr %i.gz, align 1, !noalias !168
  store i8 %i.hi, ptr %i.hh, align 1, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i

bb.bb:                                            ; preds = %._crit_edge.i.i.i36.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hh, ptr nonnull align 1 %i.gz, i64 %i.hb, i1 false), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i: ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i.i36.i.i.i
  store i64 %i.hb, ptr %i.gw, align 8, !noalias !168
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hb
  store i8 0, ptr %i.hj, align 1, !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !168
  store ptr %i.gx, ptr %5, align 8, !noalias !168
  %i.hk = load ptr, ptr %4, align 8, !noalias !168 ; 2 uses
  %i.hl = load i64, ptr %i.gw, align 8, !noalias !168 ; 8 uses
  %i.hm = icmp ugt i64 %i.hl, 15
  br i1 %i.hm, label %bb.bc, label %._crit_edge.i.i21.i.i.i.i

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i
  %i.hn = icmp slt i64 %i.hl, 0
  br i1 %i.hn, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !168
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ho = add nuw i64 %i.hl, 1                    ; 2 uses
  %i.hp = icmp slt i64 %i.ho, 0
  br i1 %i.hp, label %bb.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i, !prof !33

bb.bf:                                            ; preds = %bb.be
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !168
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i: ; preds = %bb.be
  %i.hq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #26, !noalias !168 ; 2 uses
  store ptr %i.hq, ptr %5, align 8, !noalias !168
  store i64 %i.hl, ptr %i.gx, align 8, !noalias !168
  br label %._crit_edge.i.i21.i.i.i.i

._crit_edge.i.i21.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i
  %i.hr = phi ptr [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i ] ; 4 uses
  switch i64 %i.hl, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i21.i.i.i.i
  %i.hs = load i8, ptr %i.hk, align 1, !noalias !168
  store i8 %i.hs, ptr %i.hr, align 1, !noalias !168
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge.i.i21.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hr, ptr align 1 %i.hk, i64 %i.hl, i1 false), !noalias !168
  br label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i: ; preds = %._crit_edge.i.i21.i.i.i.i
  store i64 0, ptr %i.gy, align 8, !noalias !168
  store i8 0, ptr %i.hr, align 1, !noalias !168
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store i64 %i.hl, ptr %i.gy, align 8, !noalias !168
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hl
  store i8 0, ptr %i.ht, align 1, !noalias !168
  %i.hu = load i64, ptr %i.gy, align 8, !noalias !168 ; 5 uses
  %i.hv = icmp sgt i64 %i.hu, 9223372036854775792
  br i1 %i.hv, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !168
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i: ; preds = %bb.bi
  %i.hw = add nsw i64 %i.hu, 15                   ; 3 uses
  %i.hx = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.gx                ; 2 uses
  br i1 %i.hy, label %bb.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.hz = icmp ult i64 %i.hu, 16
  call void @llvm.assume(i1 %i.hz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.ia = load i64, ptr %i.gx, align 8, !noalias !168
  %i.ib = select i1 %i.hy, i64 15, i64 %i.ia
  %.not.i.i.i.i44.i.i.i = icmp ugt i64 %i.hw, %i.ib
  br i1 %.not.i.i.i.i44.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ic, ptr noundef nonnull align 1 dereferenceable(15) @.str.35, i64 15, i1 false), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.hu, i64 noundef 0, ptr noundef nonnull @.str.35, i64 noundef 15), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i: ; preds = %bb.bm, %bb.bl
  store i64 %i.hw, ptr %i.gy, align 8, !noalias !168
  %i.id = load ptr, ptr %5, align 8, !noalias !168
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hw
  store i8 0, ptr %i.ie, align 1, !noalias !168
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  %i.if = load i64, ptr %i.e, align 8, !noalias !168 ; 4 uses
  %i.ig = icmp ugt i64 %.0.i.i33.i.i.i, %i.if
  br i1 %i.ig, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38.i.i.i

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10, i64 noundef %.0.i.i33.i.i.i, i64 noundef %i.if) #25, !noalias !168
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38.i.i.i: ; preds = %bb.bn
  %i.ih = load ptr, ptr %2, align 8, !noalias !168
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.0.i.i33.i.i.i ; 3 uses
  %i.ij = sub nuw i64 %i.if, %.0.i.i33.i.i.i      ; 5 uses
  %i.ik = load i64, ptr %i.gy, align 8, !noalias !168 ; 5 uses
  %i.il = sub i64 9223372036854775807, %i.ik
  %i.im = icmp ult i64 %i.il, %i.ij
  br i1 %i.im, label %bb.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !168
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38.i.i.i
  %i.in = add i64 %i.ik, %i.ij                    ; 3 uses
  %i.io = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.gx                ; 2 uses
  br i1 %i.ip, label %bb.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25.i.i.i.i

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i
  %i.iq = icmp ult i64 %i.ik, 16
  call void @llvm.assume(i1 %i.iq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25.i.i.i.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24.i.i.i.i
  %i.ir = load i64, ptr %i.gx, align 8, !noalias !168
  %i.is = select i1 %i.ip, i64 15, i64 %i.ir
  %.not.i.i.i26.i.i.i.i = icmp ugt i64 %i.in, %i.is
  br i1 %.not.i.i.i26.i.i.i.i, label %bb.bv, label %bb.br
end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E9_M_invokeERKSt9_Any_dataSF_":bb.a
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i.i.i: ; preds = %bb.bx
  %i.jk = load i64, ptr %i.ji, align 8, !noalias !168
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #27, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !168
  %i.jm = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.jn = call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.jm) #29, !noalias !168
  br i1 %i.jn, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.jo = load ptr, ptr %7, align 8, !noalias !168
  %i.jp = getelementptr i8, ptr %i.jo, i64 -24
  %i.jq = load i64, ptr %i.jp, align 8, !noalias !168
  %i.jr = getelementptr inbounds i8, ptr %7, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 240
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !168 ; 6 uses
  %.not.i.i.i30.i.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i30.i.i.i.i, label %bb.bz, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  call void @_ZSt16__throw_bad_castv() #25, !noalias !168
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i: ; preds = %bb.by
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  %i.jv = load i8, ptr %i.ju, align 8, !noalias !168
  %.not.i1.i.i.i.i.i.i = icmp eq i8 %i.jv, 0
  br i1 %.not.i1.i.i.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 67
  %i.jx = load i8, ptr %i.jw, align 1, !noalias !168
  br label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i

bb.cb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jt) #24, !noalias !168
  %i.jy = load ptr, ptr %i.jt, align 8, !noalias !168
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 48
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !168
  %i.kb = call noundef signext i8 %i.ka(ptr noundef nonnull align 8 dereferenceable(570) %i.jt, i8 noundef signext 10) #24, !noalias !168, !inline_history !175
  br label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i.i.i = phi i8 [ %i.jx, %bb.ca ], [ %i.kb, %bb.cb ]
  %i.kc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext %.0.i.i.i.i.i.i.i) #24, !noalias !168 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.kd = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8, !noalias !168 ; 2 uses
  store ptr %i.kd, ptr %7, align 8, !noalias !168
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 24), align 8, !noalias !168
  %i.kf = getelementptr i8, ptr %i.kd, i64 -24
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !168
  %i.kh = getelementptr inbounds i8, ptr %7, i64 %i.kg
  store ptr %i.ke, ptr %i.kh, align 8, !noalias !168
  %i.ki = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.ki, align 8, !noalias !168
  %i.kj = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ki) #24, !noalias !168 ; 0 uses
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.jm) #24, !noalias !168
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ki, align 8, !noalias !168
  %i.kk = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kk) #24, !noalias !168
  %i.kl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8, !noalias !168 ; 2 uses
  store ptr %i.kl, ptr %7, align 8, !noalias !168
  %i.km = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8, !noalias !168
  %i.kn = getelementptr i8, ptr %i.kl, i64 -24
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !168
  %i.kp = getelementptr inbounds i8, ptr %7, i64 %i.ko
  store ptr %i.km, ptr %i.kp, align 8, !noalias !168
  %i.kq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.kq, align 8, !noalias !168
  %i.kr = getelementptr inbounds nuw i8, ptr %7, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.kr) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !168
  %.pre.i41.i.i.i = load ptr, ptr %6, align 8, !noalias !168 ; 3 uses
  %i.ks = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26, !noalias !168 ; 2 uses
  %i.kt = ptrtoint ptr %i.iy to i64               ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ku, ptr %9, align 8, !noalias !168
  %i.kv = icmp eq ptr %.pre.i41.i.i.i, %i.iz
  %.pre.i.i.i = load i64, ptr %i.ja, align 8, !noalias !168 ; 2 uses
  br i1 %i.kv, label %bb.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc, %.thread137.i.i.i.i
  %i.kw = phi i64 [ 0, %.thread137.i.i.i.i ], [ %.pre.i.i.i, %bb.cc ] ; 3 uses
  %i.kx = phi ptr [ %i.jf, %.thread137.i.i.i.i ], [ %i.ku, %bb.cc ] ; 3 uses
  %i.ky = phi i64 [ %i.je, %.thread137.i.i.i.i ], [ %i.kt, %bb.cc ]
  %i.kz = phi ptr [ %i.jd, %.thread137.i.i.i.i ], [ %i.ks, %bb.cc ]
  %i.la = icmp ult i64 %i.kw, 16
  call void @llvm.assume(i1 %i.la)
  %i.lb = add nuw nsw i64 %i.kw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kx, ptr noundef nonnull align 8 dereferenceable(1) %i.iz, i64 %i.lb, i1 false), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.cc
  store ptr %.pre.i41.i.i.i, ptr %9, align 8, !noalias !168
  %i.lc = load i64, ptr %i.iz, align 8, !noalias !168
  store i64 %i.lc, ptr %i.ku, align 8, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.cd
  %i.ld = phi ptr [ %i.kx, %bb.cd ], [ %i.ku, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 5 uses
  %i.le = phi i64 [ %i.ky, %bb.cd ], [ %i.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %.pr.i.i.i = phi ptr [ %i.kz, %bb.cd ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 8 uses
  %i.lf = phi ptr [ %i.kx, %bb.cd ], [ %.pre.i41.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 2 uses
  %i.lg = phi i64 [ %i.kw, %bb.cd ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.lg, ptr %i.lh, align 8, !noalias !168
  store ptr %i.iz, ptr %6, align 8, !noalias !168
  store i64 0, ptr %i.ja, align 8, !noalias !168
  store i8 0, ptr %i.iz, align 8, !noalias !168
  %i.li = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.li, align 8, !noalias !168
  %i.lj = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 16
  store i64 %i.le, ptr %i.lj, align 8, !noalias !168
  %i.lk = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 24
  store i64 -1, ptr %i.lk, align 8, !noalias !168
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, i64 16), ptr %.pr.i.i.i, align 8, !noalias !168
  %i.ll = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 32 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 48 ; 3 uses
  store ptr %i.lm, ptr %i.ll, align 8, !noalias !168
  %i.ln = icmp eq ptr %i.lf, %i.ld
  br i1 %i.ln, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i.i.i.i

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.lo = icmp ult i64 %i.lg, 16
  call void @llvm.assume(i1 %i.lo)
  %i.lp = add nuw nsw i64 %i.lg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lm, ptr noundef nonnull align 8 dereferenceable(1) %i.ld, i64 %i.lp, i1 false), !noalias !168
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.lf, ptr %i.ll, align 8, !noalias !168
  %i.lq = load i64, ptr %i.ld, align 8, !noalias !168
  store i64 %i.lq, ptr %i.lm, align 8, !noalias !168
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i.i.i.i, %bb.ce
  %i.lr = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 40
  store i64 %i.lg, ptr %i.lr, align 8, !noalias !168
  store ptr %i.ld, ptr %9, align 8, !noalias !168
  store i64 0, ptr %i.lh, align 8, !noalias !168
  store i8 0, ptr %i.ld, align 1, !noalias !168
  store ptr %.pr.i.i.i, ptr %0, align 8, !alias.scope !168
  %.pre103.i.i.i.i = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !168
  %i.ls = icmp eq ptr %.pre103.i.i.i.i, %i.gx
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i
  %i.lt = load i64, ptr %i.gx, align 8, !noalias !168
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %.pre103.i.i.i.i, i64 noundef %i.lu) #27, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit40.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !168
  %i.lv = load ptr, ptr %4, align 8, !noalias !168 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.gv
  br i1 %i.lw, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i
  %i.lx = load i64, ptr %i.gv, align 8, !noalias !168
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #27, !noalias !168
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit48.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i39.i.i.i
  %i.lz = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.gx
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit48.i.i.i.i
  %i.mb = load i64, ptr %i.gx, align 8, !noalias !168
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #27, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit48.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !168
  %i.md = load ptr, ptr %4, align 8, !noalias !168 ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.gv
  br i1 %i.me, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i
  %i.mf = load i64, ptr %i.gv, align 8, !noalias !168
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #27, !noalias !168
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !168
  %i.mh = getelementptr inbounds nuw i8, ptr %.01690.i.i.i.i, i64 8 ; 2 uses
  %.not18.i.i.i.i = icmp eq ptr %i.mh, %14
  br i1 %.not18.i.i.i.i, label %bb.cf, label %bb.at

_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !158
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !158
  store ptr null, ptr %0, align 8, !alias.scope !158
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit": ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %bb.aq, %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %bb.cf
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull %i.b) #24, !inline_history !164 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull %i.b) #24, !inline_history !176 ; 0 uses
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit

_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #24, !inline_history !177
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i64 @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %.sroa.speculated, ptr noundef %i.d) ; 2 uses
  %i.f = load i64, ptr %i.a, align 8
  %i.g = sub i64 %i.f, %i.e
  store i64 %i.g, ptr %i.a, align 8
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i32 @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @fseek(ptr noundef %i.d, i64 noundef %.sroa.speculated, i32 noundef 1) ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8
  %i.h = sub i64 %i.g, %.sroa.speculated
  store i64 %i.h, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZNK4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull %i.h) #24, !inline_history !176 ; 0 uses
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit

_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #24, !inline_history !177
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_3
begin_hunk_4_@_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD0Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27, !inline_history !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull %i.h) #24, !inline_history !182 ; 0 uses
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit

_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %0) #24, !inline_history !183
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8              ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !33

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #26 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  store i64 %i.e, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !33

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #26 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #27
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8
  store i64 %.0, ptr %i.d, align 8
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.c, align 1
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8                ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1
  store i8 %i.s, ptr %i.q, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

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
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #23

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { cold nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !12}
!10 = distinct !{!10, !11, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!11 = distinct !{!11, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_"}
!12 = distinct !{!12, !11, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!13 = distinct !{!13, !8}
!14 = !{!15, !17}
!15 = distinct !{!15, !16, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!16 = distinct !{!16, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_"}
!17 = distinct !{!17, !16, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!18 = distinct !{!18, !8}
!19 = !{!20, !22}
!20 = distinct !{!20, !21, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!21 = distinct !{!21, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_"}
!22 = distinct !{!22, !21, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE: argument 0"}
!25 = distinct !{!25, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE: argument 0"}
!28 = distinct !{!28, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE: argument 0"}
!31 = distinct !{!31, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE"}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{null}
!40 = distinct !{!40, !8}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!43 = distinct !{!43, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_"}
!44 = distinct !{!44, !43, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!45 = distinct !{!45, !8}
!46 = distinct !{null}
!47 = distinct !{null, null}
!48 = !{ptr @_ZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE}
!49 = distinct !{ptr @_ZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, null}
!50 = distinct !{ptr @_ZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, null, null}
!51 = distinct !{null, null, null}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE: argument 0"}
!54 = distinct !{!54, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_14TransitionTypeE"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_10TransitionE: argument 0"}
!57 = distinct !{!57, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_10TransitionE"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_10TransitionE: argument 0"}
!60 = distinct !{!60, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_10TransitionE"}
!61 = distinct !{!61, !8}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_10TransitionE: argument 0"}
!64 = distinct !{!64, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS1_10TransitionE"}
!65 = distinct !{!65, !8}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE: argument 0"}
!68 = distinct !{!68, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE"}
!69 = !{!70, !72}
!70 = distinct !{!70, !71, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE: argument 0"}
!71 = distinct !{!71, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE"}
!72 = distinct !{!72, !73, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueEl: argument 0"}
!73 = distinct !{!73, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueEl"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_111MakeSkippedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE: argument 0"}
!76 = distinct !{!76, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_111MakeSkippedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9TimeLocalERKNS1_6detail10civil_timeINS3_10second_tagEEEl: argument 0"}
!79 = distinct !{!79, !"_ZNK4absl13time_internal4cctz12TimeZoneInfo9TimeLocalERKNS1_6detail10civil_timeINS3_10second_tagEEEl"}
!80 = !{ptr @_ZNK4absl13time_internal4cctz12TimeZoneInfo9TimeLocalERKNS1_6detail10civil_timeINS3_10second_tagEEEl}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE: argument 0"}
!83 = distinct !{!83, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE"}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE: argument 0"}
!86 = distinct !{!86, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE"}
!87 = distinct !{!87, !88, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueEl: argument 0"}
!88 = distinct !{!88, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueEl"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_112MakeRepeatedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE: argument 0"}
!91 = distinct !{!91, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_112MakeRepeatedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_111MakeSkippedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE: argument 0"}
!94 = distinct !{!94, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_111MakeSkippedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_112MakeRepeatedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE: argument 0"}
!97 = distinct !{!97, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_112MakeRepeatedERKNS1_10TransitionERKNS1_6detail10civil_timeINS6_10second_tagEEE"}
!98 = !{!99, !101}
!99 = distinct !{!99, !100, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE: argument 0"}
!100 = distinct !{!100, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE"}
!101 = distinct !{!101, !102, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueEl: argument 0"}
!102 = distinct !{!102, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_110MakeUniqueEl"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!105 = distinct !{!105, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!108 = distinct !{!108, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!109 = !{!107, !104}
!110 = distinct !{!110, !8}
!111 = distinct !{!111, !8}
!112 = !{!113, !115}
!113 = distinct !{!113, !114, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!114 = distinct !{!114, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_"}
!115 = distinct !{!115, !114, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!116 = !{!117, !119}
!117 = distinct !{!117, !118, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!118 = distinct !{!118, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_"}
!119 = distinct !{!119, !118, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!120 = distinct !{!120, !8}
!121 = !{!122, !124}
!122 = distinct !{!122, !123, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!123 = distinct !{!123, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_"}
!124 = distinct !{!124, !123, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz14TransitionTypeES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!127 = distinct !{!127, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_"}
!128 = distinct !{!128, !127, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!129 = !{!130, !132}
!130 = distinct !{!130, !131, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!131 = distinct !{!131, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_"}
!132 = distinct !{!132, !131, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!133 = distinct !{!133, !8}
!134 = !{!135, !137}
!135 = distinct !{!135, !136, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!136 = distinct !{!136, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_"}
!137 = distinct !{!137, !136, !"_ZSt19__relocate_object_aIN4absl13time_internal4cctz10TransitionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_: argument 0"}
!140 = distinct !{!140, !"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZSt13__invoke_implISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!143 = distinct !{!143, !"_ZSt13__invoke_implISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EET_St14__invoke_otherOT0_DpOT1_"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_: argument 0"}
!146 = distinct !{!146, !"_ZZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESA_"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!149 = distinct !{!149, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!150 = !{!148, !145, !142, !139}
!151 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!152 = !{!153, !148, !145, !142, !139}
!153 = distinct !{!153, !154, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_15FOpenEPKcS4_: argument 0"}
!154 = distinct !{!154, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_15FOpenEPKcS4_"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!157 = distinct !{!157, !"_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!158 = !{!145, !142, !139}
end_hunk_4
