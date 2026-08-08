inline.NumInlined: 6214
inline.NumDeleted: 2423
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4Game11updateFrameEP13ProfilerGraphP8RunStatsfRK17CameraOrientation:.noexc.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.m:                                             ; preds = %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.n:                                             ; preds = %._crit_edge.i.i116
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %7, align 8, !tbaa !165   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.n
  %i.cn = load i64, ptr %i.bu, align 8, !tbaa !17
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.cc

bb.o:                                             ; preds = %.critedge112
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 1808
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !1048
  %i.cr = load ptr, ptr %i.x, align 8, !tbaa !249
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  %i.ct = invoke noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.cs)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cu = load float, ptr %i.bf, align 8, !tbaa !1046
  %i.cv = fpext nsz float %i.cu to double
  %i.cw = fmul nsz double %i.cv, 1.200000e+00     ; 2 uses
  %i.cx = fcmp nsz olt double %i.cw, 6.000000e+02
  %i.cy = select i1 %i.cx, double %i.cw, double 6.000000e+02
  %i.cz = fptrunc double %i.cy to float
  %i.da = fpext nsz float %i.cq to double
  %i.db = fmul nsz double %i.da, 2.555000e+02
  %i.dc = fptosi double %i.db to i32
  %i.dd = invoke noundef i32 @_ZN9ClientMap23getBackgroundBrightnessEfjiPb(ptr noundef nonnull align 8 dereferenceable(656) %i.ct, float noundef %i.cz, i32 noundef %i.bi, i32 noundef %i.dc, ptr noundef nonnull %i.c)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.de = sitofp nsz i32 %i.dd to double
  %i.df = fdiv nsz double %i.de, 2.550000e+02
  %i.dg = fptrunc nsz double %i.df to float
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.s:                                             ; preds = %bb.q, %bb.k
  %.080 = phi nsz float [ %i.bl, %bb.k ], [ %i.dg, %bb.q ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.dj = load float, ptr %i.di, align 8, !tbaa !1049 ; 4 uses
  %i.dk = load ptr, ptr %i.x, align 8, !tbaa !249
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 128
  %i.dm = invoke noundef float @_ZN11Environment13getTimeOfDayFEv(ptr noundef nonnull align 8 dereferenceable(88) %i.dl)
          to label %bb.t unwind label %bb.x       ; 4 uses

bb.t:                                             ; preds = %bb.s
  %i.dn = fsub nsz float %i.dm, %i.dj             ; 2 uses
  %i.do = call nsz noundef float @llvm.fabs.f32(float %i.dn)
  %i.dp = fcmp nsz ogt float %i.do, 5.000000e-02
  br i1 %i.dp, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.dq = fpext nsz float %i.dn to double         ; 2 uses
  %i.dr = fadd nsz double %i.dq, 1.000000e+00
  %i.ds = call nsz double @llvm.fabs.f64(double %i.dr)
  %i.dt = fcmp nsz ogt double %i.ds, f0x3FA99999A0000000
  br i1 %i.dt, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.du = fadd nsz double %i.dq, -1.000000e+00
  %i.dv = call nsz double @llvm.fabs.f64(double %i.du)
  %i.dw = fcmp nsz ogt double %i.dv, f0x3FA99999A0000000
  br i1 %i.dw, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  br label %bb.y

bb.x:                                             ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.s
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.085 = phi nsz float [ %i.dm, %bb.w ], [ %i.dj, %bb.v ], [ %i.dj, %bb.u ], [ %i.dj, %bb.t ]
  %i.dy = fpext nsz float %.085 to double         ; 2 uses
  %i.dz = fcmp nsz ogt double %i.dy, 8.000000e-01
  br i1 %i.dz, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ea = fpext nsz float %i.dm to double         ; 2 uses
  %i.eb = fcmp nsz olt double %i.ea, 2.000000e-01
  br i1 %i.eb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ec = fadd nnan nsz double %i.ea, 1.000000e+00
  %i.ed = fmul nnan nsz double %i.ec, f0x3FA99999A0000000
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.ee = fmul nsz float %i.dm, 5.000000e-02
  %i.ef = fpext nsz float %i.ee to double
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink187 = phi double [ %i.ef, %bb.ab ], [ %i.ed, %bb.aa ]
  %i.eg = call nsz double @llvm.fmuladd.f64(double %i.dy, double f0x3FEE666666000000, double %.sink187)
  %.186 = fptrunc double %i.eg to float           ; 2 uses
  store float %.186, ptr %i.di, align 8, !tbaa !1049
  %i.eh = load ptr, ptr %i.af, align 8, !tbaa !168
  %i.ei = load i8, ptr %i.c, align 1, !tbaa !340, !range !305, !noundef !191
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !253
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 488
  %i.en = load i32, ptr %i.em, align 8, !tbaa !941
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ab, i64 712 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !1050
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ab, i64 716
  %i.er = load float, ptr %i.eq, align 4, !tbaa !1051
  invoke void @_ZN3Sky6updateEfffb10CameraModeff(ptr noundef nonnull align 8 dereferenceable(2368) %i.eh, float noundef %.186, float noundef %i.bl, float noundef %.080, i1 noundef zeroext %i.ej, i32 noundef %i.en, float noundef %i.ep, float noundef %i.er)
          to label %bb.ad unwind label %bb.x

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4Game12updateCloudsEf(ptr noundef nonnull align 8 dereferenceable(688) %0, float noundef %3)
          to label %bb.ae unwind label %bb.x

bb.ae:                                            ; preds = %bb.ad
  %i.es = load ptr, ptr %i.x, align 8, !tbaa !249 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !9
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 120
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke noundef ptr %i.ev(ptr noundef nonnull align 8 dereferenceable(1674) %i.es)
          to label %bb.af unwind label %bb.x

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN15ParticleManager4stepEf(ptr noundef nonnull align 8 dereferenceable(232) %i.ew, float noundef %3)
          to label %bb.ag unwind label %bb.x

bb.ag:                                            ; preds = %bb.af
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ab, i64 596 ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !1052 ; 2 uses
  %i.ez = fcmp nsz ogt float %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fa = fneg nsz float %3
  %i.fb = call nsz float @llvm.fmuladd.f32(float %i.fa, float 6.000000e+00, float %i.ey) ; 2 uses
  store float %i.fb, ptr %i.ex, align 4, !tbaa !1052
  %i.fc = fcmp nsz olt float %i.fb, 0.000000e+00
  br i1 %i.fc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ab, i64 600
  store float 0.000000e+00, ptr %i.fd, align 8, !tbaa !1053
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ag
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !579 ; 2 uses
  %.not95 = icmp eq ptr %i.ff, null
  br i1 %.not95, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !49
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !1054, !range !305, !noundef !191
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ab, i64 604
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.fl, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 612
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !60
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 2 uses
  %i.fm = fcmp nsz ogt float %.sroa.09.0.vec.extract.i, 0.000000e+00
  %i.fn = select nsz i1 %i.fm, float 5.000000e+00, float -5.000000e+00
  %i.fo = fadd nsz float %.sroa.09.0.vec.extract.i, %i.fn
  %i.fp = fdiv nsz float %i.fo, 1.000000e+01
  %i.fq = fptosi float %i.fp to i16
  %i.fr = insertelement <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i, i64 0 ; 2 uses
  %i.fs = fcmp nsz ogt <2 x float> %i.fr, zeroinitializer
  %i.ft = select <2 x i1> %i.fs, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.fu = fadd nsz <2 x float> %i.fr, %i.ft
  %i.fv = fdiv nsz <2 x float> %i.fu, splat (float 1.000000e+01)
  %i.fw = fptosi <2 x float> %i.fv to <2 x i16>
  %i.fx = zext <2 x i16> %i.fw to <2 x i48>
  %i.fy = shl nuw <2 x i48> %i.fx, <i48 32, i48 16> ; 2 uses
  %shift = shufflevector <2 x i48> %i.fy, <2 x i48> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i48> %i.fy, %shift
  %.sroa.2.0.insert.insert.i = extractelement <2 x i48> %foldExtExtBinop, i64 0
  %.sroa.0.0.insert.ext.i = zext i16 %i.fq to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN7Minimap6setPosEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(192) %i.ff, i48 %.sroa.0.0.insert.insert.i)
          to label %bb.am unwind label %bb.x

bb.am:                                            ; preds = %bb.al
  %i.fz = load ptr, ptr %i.fe, align 8, !tbaa !579
  %i.ga = load float, ptr %i.eo, align 8, !tbaa !1050
  invoke void @_ZN7Minimap8setAngleEf(ptr noundef nonnull align 8 dereferenceable(192) %i.fz, float noundef %i.ga)
          to label %bb.an unwind label %bb.x

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.aj
  invoke void @_ZN4Game10updateChatEf(ptr noundef nonnull align 8 dereferenceable(688) %0, float noundef %3)
          to label %bb.ao unwind label %bb.x

bb.ao:                                            ; preds = %bb.an
  %i.gb = invoke noundef zeroext i16 @_ZN6Player13getWieldIndexEv(ptr noundef nonnull align 8 dereferenceable(416) %i.ab)
          to label %bb.ap unwind label %bb.x

bb.ap:                                            ; preds = %bb.ao
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 386
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !1055 ; 2 uses
  %.not96 = icmp eq i16 %i.gb, %i.gd
  br i1 %.not96, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ge = load ptr, ptr %i.x, align 8, !tbaa !249
  invoke void @_ZN6Client13setPlayerItemEt(ptr noundef nonnull align 8 dereferenceable(1674) %i.ge, i16 noundef zeroext %i.gd)
          to label %bb.ar unwind label %bb.x

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gf = load ptr, ptr %i.x, align 8, !tbaa !249
  %i.gg = invoke noundef zeroext i1 @_ZN6Client17updateWieldedItemEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.gf)
          to label %bb.as unwind label %bb.x

bb.as:                                            ; preds = %bb.ar
  br i1 %i.gg, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.gh, ptr %8, align 8, !tbaa !162
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.gi, align 8, !tbaa !167
  store i8 0, ptr %i.gh, align 8, !tbaa !17
  %i.gj = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 0, ptr %i.gj, align 8, !tbaa !916
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 34
  store i16 0, ptr %i.gk, align 2, !tbaa !917
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  %i.gm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 8), align 8 ; 2 uses
  store ptr %i.gm, ptr %i.gl, align 8, !tbaa !9
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTT17ItemStackMetadata, i64 16), align 8 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gm, i64 -80    ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = getelementptr inbounds i8, ptr %i.gl, i64 %i.gp
  store ptr %i.gn, ptr %i.gq, align 8, !tbaa !9
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i8 0, ptr %i.gr, align 8, !tbaa !918
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !919
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 1, ptr %i.gu, align 8, !tbaa !920
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.gw, align 8, !tbaa !59
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.gl, align 8, !tbaa !9
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 224
  store i8 0, ptr %i.gy, align 8, !tbaa !921
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 288
  store i8 0, ptr %i.gz, align 8, !tbaa !922
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ha, ptr %9, align 8, !tbaa !162
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.hb, align 8, !tbaa !167
  store i8 0, ptr %i.ha, align 8, !tbaa !17
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i16 0, ptr %i.hc, align 8, !tbaa !916
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 34
  store i16 0, ptr %i.hd, align 2, !tbaa !917
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.hf = load i64, ptr %i.go, align 8
  %i.hg = getelementptr inbounds i8, ptr %i.he, i64 %i.hf
  store ptr %i.gn, ptr %i.hg, align 8, !tbaa !9
  %i.hh = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i8 0, ptr %i.hh, align 8, !tbaa !918
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 104
  store ptr %i.hj, ptr %i.hi, align 8, !tbaa !919
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i64 1, ptr %i.hk, align 8, !tbaa !920
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hm, align 8, !tbaa !59
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-80, 72) (i8, ptr @_ZTV17ItemStackMetadata, i64 80), ptr %i.he, align 8, !tbaa !9
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 224
  store i8 0, ptr %i.ho, align 8, !tbaa !921
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 288
  store i8 0, ptr %i.hp, align 8, !tbaa !922
  %i.hq = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6Player14getWieldedItemEP9ItemStackS1_(ptr noundef nonnull align 8 dereferenceable(416) %i.ab, ptr noundef nonnull %8, ptr noundef nonnull %9)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hr = load ptr, ptr %i.x, align 8, !tbaa !249
  %i.hs = invoke noundef zeroext i1 @_ZN6Client29consumeSkipNextWieldAnimationEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.hr)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ht = load ptr, ptr %i.ek, align 8, !tbaa !253
  %i.hu = xor i1 %i.hs, true
  invoke void @_ZN6Camera5wieldERK9ItemStackb(ptr noundef nonnull align 8 dereferenceable(536) %i.ht, ptr noundef nonnull align 8 dereferenceable(296) %i.hq, i1 noundef zeroext %i.hu)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.he, ptr noundef nonnull @_ZTT17ItemStackMetadata) #34
  %i.hv = load ptr, ptr %9, align 8, !tbaa !165   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.ha
  br i1 %i.hw, label %_ZN9ItemStackD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127: ; preds = %bb.aw
  %i.hx = load i64, ptr %i.ha, align 8, !tbaa !17
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #36
  br label %_ZN9ItemStackD2Ev.exit

_ZN9ItemStackD2Ev.exit:                           ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @_ZN17ItemStackMetadataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.gl, ptr noundef nonnull @_ZTT17ItemStackMetadata) #34
  %i.hz = load ptr, ptr %8, align 8, !tbaa !165   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.gh
  br i1 %i.ia, label %_ZN9ItemStackD2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130: ; preds = %_ZN9ItemStackD2Ev.exit
  %i.ib = load i64, ptr %i.gh, align 8, !tbaa !17
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #36
  br label %_ZN9ItemStackD2Ev.exit133

_ZN9ItemStackD2Ev.exit133:                        ; preds = %_ZN9ItemStackD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.ba

bb.ax:                                            ; preds = %bb.at
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.av, %bb.au
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn97 = phi { ptr, i32 } [ %i.ie, %bb.ay ], [ %i.id, %bb.ax ]
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.cc

bb.ba:                                            ; preds = %_ZN9ItemStackD2Ev.exit133, %bb.as
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.ih = load <2 x float>, ptr %i.if, align 8, !tbaa !60
  %i.ii = insertelement <2 x float> poison, float %3, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fadd nsz <2 x float> %i.ij, %i.ih       ; 2 uses
  store <2 x float> %i.ik, ptr %i.if, align 8, !tbaa !60
  %i.il = load ptr, ptr %i.ek, align 8, !tbaa !253 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 72
  %.sroa.01.0.copyload.i134 = load <2 x float>, ptr %i.im, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.il, i64 80
  %.sroa.22.0.copyload.i136 = load float, ptr %.sroa.22.0..sroa_idx.i135, align 8, !tbaa !60 ; 2 uses
  %i.in = extractelement <2 x float> %i.ik, i64 0
  %i.io = fcmp nsz ult float %i.in, 2.000000e-01
  br i1 %i.io, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !982
  %.sroa.0152.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i134, i64 0
  %i.ir = fsub nsz float %i.iq, %.sroa.0152.0.vec.extract ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.it = load float, ptr %i.is, align 8, !tbaa !1056
  %.sroa.0152.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i134, i64 1
  %i.iu = fsub nsz float %i.it, %.sroa.0152.4.vec.extract ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !61
  %i.ix = fsub nsz float %i.iw, %.sroa.22.0.copyload.i136 ; 2 uses
  %i.iy = fmul nsz float %i.iu, %i.iu
  %i.iz = call nsz float @llvm.fmuladd.f32(float %i.ir, float %i.ir, float %i.iy)
  %i.ja = call nsz float @llvm.fmuladd.f32(float %i.ix, float %i.ix, float %i.iz)
end_hunk_0
begin_hunk_1_@_ZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEE:bb.a
  %i.gs = fdiv nsz float %i.gr, 1.000000e+01
  %i.gt = fptosi float %i.gs to i16               ; 7 uses
  %i.gu = insertelement <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i, i64 1 ; 2 uses
  %i.gv = fcmp nsz ogt <2 x float> %i.gu, zeroinitializer
  %i.gw = select <2 x i1> %i.gv, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.gx = fadd nsz <2 x float> %i.gu, %i.gw
  %i.gy = fdiv nsz <2 x float> %i.gx, splat (float 1.000000e+01) ; 2 uses
  %i.gz = extractelement <2 x float> %i.gy, i64 0
  %i.ha = fptosi float %i.gz to i16               ; 7 uses
  %i.hb = extractelement <2 x float> %i.gy, i64 1
  %i.hc = fptosi float %i.hb to i16               ; 7 uses
  %.sroa.3.0.insert.ext.i = zext i16 %i.hc to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.gt to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.ha to i48
  %i.hd = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %i.hd, %.sroa.2.0.insert.shift.i
  %i.he = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hf = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.he, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.preheader unwind label %bb.bg

.preheader.preheader:                             ; preds = %bb.be
  %i.hg = load i16, ptr @g_6dirs, align 16, !tbaa !1014
  %i.hh = add i16 %i.hg, %i.ha
  %i.hi = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 2), align 2, !tbaa !1015
  %i.hj = add i16 %i.hi, %i.gt
  %i.hk = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 4), align 4, !tbaa !1016
  %i.hl = add i16 %i.hk, %i.hc
  %.sroa.3.0.insert.ext.i169 = zext i16 %i.hl to i48
  %.sroa.3.0.insert.shift.i170 = shl nuw i48 %.sroa.3.0.insert.ext.i169, 32
  %.sroa.2.0.insert.ext.i171 = zext i16 %i.hj to i48
  %.sroa.2.0.insert.shift.i172 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171, 16
  %.sroa.2.0.insert.insert.i173 = or disjoint i48 %.sroa.3.0.insert.shift.i170, %.sroa.2.0.insert.shift.i172
  %.sroa.0.0.insert.ext.i174 = zext i16 %i.hh to i48
  %.sroa.0.0.insert.insert.i175 = or disjoint i48 %.sroa.2.0.insert.insert.i173, %.sroa.0.0.insert.ext.i174
  %i.hm = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175, ptr noundef null)
          to label %bb.bh unwind label %bb.bo

bb.bf:                                            ; preds = %bb.bd
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bg:                                            ; preds = %bb.be
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bh:                                            ; preds = %.preheader.preheader
  %i.hp = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.hm, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.1 unwind label %bb.bp

.preheader.1:                                     ; preds = %bb.bh
  %spec.select = call i16 @llvm.umax.i16(i16 %i.hp, i16 %i.hf)
  %i.hq = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 6), align 2, !tbaa !1014
  %i.hr = add i16 %i.hq, %i.ha
  %i.hs = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 8), align 8, !tbaa !1015
  %i.ht = add i16 %i.hs, %i.gt
  %i.hu = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 10), align 2, !tbaa !1016
  %i.hv = add i16 %i.hu, %i.hc
  %.sroa.3.0.insert.ext.i169.1 = zext i16 %i.hv to i48
  %.sroa.3.0.insert.shift.i170.1 = shl nuw i48 %.sroa.3.0.insert.ext.i169.1, 32
  %.sroa.2.0.insert.ext.i171.1 = zext i16 %i.ht to i48
  %.sroa.2.0.insert.shift.i172.1 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.1, 16
  %.sroa.2.0.insert.insert.i173.1 = or disjoint i48 %.sroa.3.0.insert.shift.i170.1, %.sroa.2.0.insert.shift.i172.1
  %.sroa.0.0.insert.ext.i174.1 = zext i16 %i.hr to i48
  %.sroa.0.0.insert.insert.i175.1 = or disjoint i48 %.sroa.2.0.insert.insert.i173.1, %.sroa.0.0.insert.ext.i174.1
  %i.hw = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.1, ptr noundef null)
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %.preheader.1
  %i.hx = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.hw, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.2 unwind label %bb.bp

.preheader.2:                                     ; preds = %bb.bi
  %spec.select.1 = call i16 @llvm.umax.i16(i16 %i.hx, i16 %spec.select)
  %i.hy = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 12), align 4, !tbaa !1014
  %i.hz = add i16 %i.hy, %i.ha
  %i.ia = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 14), align 2, !tbaa !1015
  %i.ib = add i16 %i.ia, %i.gt
  %i.ic = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 16), align 16, !tbaa !1016
  %i.id = add i16 %i.ic, %i.hc
  %.sroa.3.0.insert.ext.i169.2 = zext i16 %i.id to i48
  %.sroa.3.0.insert.shift.i170.2 = shl nuw i48 %.sroa.3.0.insert.ext.i169.2, 32
  %.sroa.2.0.insert.ext.i171.2 = zext i16 %i.ib to i48
  %.sroa.2.0.insert.shift.i172.2 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.2, 16
  %.sroa.2.0.insert.insert.i173.2 = or disjoint i48 %.sroa.3.0.insert.shift.i170.2, %.sroa.2.0.insert.shift.i172.2
  %.sroa.0.0.insert.ext.i174.2 = zext i16 %i.hz to i48
  %.sroa.0.0.insert.insert.i175.2 = or disjoint i48 %.sroa.2.0.insert.insert.i173.2, %.sroa.0.0.insert.ext.i174.2
  %i.ie = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.2, ptr noundef null)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %.preheader.2
  %i.if = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.ie, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.3 unwind label %bb.bp

.preheader.3:                                     ; preds = %bb.bj
  %spec.select.2 = call i16 @llvm.umax.i16(i16 %i.if, i16 %spec.select.1)
  %i.ig = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 18), align 2, !tbaa !1014
  %i.ih = add i16 %i.ig, %i.ha
  %i.ii = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 20), align 4, !tbaa !1015
  %i.ij = add i16 %i.ii, %i.gt
  %i.ik = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 22), align 2, !tbaa !1016
  %i.il = add i16 %i.ik, %i.hc
  %.sroa.3.0.insert.ext.i169.3 = zext i16 %i.il to i48
  %.sroa.3.0.insert.shift.i170.3 = shl nuw i48 %.sroa.3.0.insert.ext.i169.3, 32
  %.sroa.2.0.insert.ext.i171.3 = zext i16 %i.ij to i48
  %.sroa.2.0.insert.shift.i172.3 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.3, 16
  %.sroa.2.0.insert.insert.i173.3 = or disjoint i48 %.sroa.3.0.insert.shift.i170.3, %.sroa.2.0.insert.shift.i172.3
  %.sroa.0.0.insert.ext.i174.3 = zext i16 %i.ih to i48
  %.sroa.0.0.insert.insert.i175.3 = or disjoint i48 %.sroa.2.0.insert.insert.i173.3, %.sroa.0.0.insert.ext.i174.3
  %i.im = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.3, ptr noundef null)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %.preheader.3
  %i.in = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.im, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.4 unwind label %bb.bp

.preheader.4:                                     ; preds = %bb.bk
  %spec.select.3 = call i16 @llvm.umax.i16(i16 %i.in, i16 %spec.select.2)
  %i.io = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 24), align 8, !tbaa !1014
  %i.ip = add i16 %i.io, %i.ha
  %i.iq = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 26), align 2, !tbaa !1015
  %i.ir = add i16 %i.iq, %i.gt
  %i.is = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 28), align 4, !tbaa !1016
  %i.it = add i16 %i.is, %i.hc
  %.sroa.3.0.insert.ext.i169.4 = zext i16 %i.it to i48
  %.sroa.3.0.insert.shift.i170.4 = shl nuw i48 %.sroa.3.0.insert.ext.i169.4, 32
  %.sroa.2.0.insert.ext.i171.4 = zext i16 %i.ir to i48
  %.sroa.2.0.insert.shift.i172.4 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.4, 16
  %.sroa.2.0.insert.insert.i173.4 = or disjoint i48 %.sroa.3.0.insert.shift.i170.4, %.sroa.2.0.insert.shift.i172.4
  %.sroa.0.0.insert.ext.i174.4 = zext i16 %i.ip to i48
  %.sroa.0.0.insert.insert.i175.4 = or disjoint i48 %.sroa.2.0.insert.insert.i173.4, %.sroa.0.0.insert.ext.i174.4
  %i.iu = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.4, ptr noundef null)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %.preheader.4
  %i.iv = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.iu, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.5 unwind label %bb.bp

.preheader.5:                                     ; preds = %bb.bl
  %spec.select.4 = call i16 @llvm.umax.i16(i16 %i.iv, i16 %spec.select.3)
  %i.iw = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 30), align 2, !tbaa !1014
  %i.ix = add i16 %i.iw, %i.ha
  %i.iy = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 32), align 16, !tbaa !1015
  %i.iz = add i16 %i.iy, %i.gt
  %i.ja = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 34), align 2, !tbaa !1016
  %i.jb = add i16 %i.ja, %i.hc
  %.sroa.3.0.insert.ext.i169.5 = zext i16 %i.jb to i48
  %.sroa.3.0.insert.shift.i170.5 = shl nuw i48 %.sroa.3.0.insert.ext.i169.5, 32
  %.sroa.2.0.insert.ext.i171.5 = zext i16 %i.iz to i48
  %.sroa.2.0.insert.shift.i172.5 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.5, 16
  %.sroa.2.0.insert.insert.i173.5 = or disjoint i48 %.sroa.3.0.insert.shift.i170.5, %.sroa.2.0.insert.shift.i172.5
  %.sroa.0.0.insert.ext.i174.5 = zext i16 %i.ix to i48
  %.sroa.0.0.insert.insert.i175.5 = or disjoint i48 %.sroa.2.0.insert.insert.i173.5, %.sroa.0.0.insert.ext.i174.5
  %i.jc = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.5, ptr noundef null)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %.preheader.5
  %i.jd = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.jc, i32 noundef -1, ptr noundef %i.w)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.je = load ptr, ptr %i.r, align 8, !tbaa !249
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 128
  %i.jg = invoke noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88) %i.jf)
          to label %bb.bq unwind label %bb.bs

bb.bo:                                            ; preds = %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bp:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bq:                                            ; preds = %bb.bn
  %spec.select.5 = call i16 @llvm.umax.i16(i16 %i.jd, i16 %spec.select.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  store i32 0, ptr %15, align 4, !tbaa !1437
  invoke void @_Z17final_color_blendPN5video6SColorEtj(ptr noundef nonnull %15, i16 noundef zeroext %spec.select.5, i32 noundef %i.jg)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jj = load ptr, ptr %i.r, align 8, !tbaa !249
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 544
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !1502
  %i.jm = urem i64 %i.jl, 5000
  %i.jn = trunc nuw nsw i64 %i.jm to i32
  %i.jo = uitofp nsz nneg i32 %i.jn to double
  %i.jp = fdiv nnan nsz double %i.jo, 2.500000e+03
  %i.jq = fadd nnan nsz double %i.jp, -5.000000e-01
  %i.jr = fmul nnan nsz double %i.jq, f0x400921FB60000000
  %i.js = load i32, ptr %15, align 4, !tbaa !1437 ; 4 uses
  %i.jt = and i32 %i.js, -16777216
  %i.ju = fptrunc nsz double %i.jr to float       ; 3 uses
  %i.jv = fadd nsz float %i.ju, f0x3FC90FDB
  %i.jw = call nsz noundef float @llvm.sin.f32(float %i.jv)
  %i.jx = call nsz noundef float @llvm.sin.f32(float %i.ju)
  %i.jy = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.jz = insertelement <2 x float> %i.jy, float %i.jw, i64 1
  %i.ka = fmul nsz <2 x float> %i.jz, splat (float 8.000000e-02)
  %i.kb = fadd nsz float %i.ju, f0x40490FDB
  %i.kc = call nsz noundef float @llvm.sin.f32(float %i.kb)
  %i.kd = fmul nsz float %i.kc, 8.000000e-02
  %i.ke = lshr i32 %i.js, 8
  %i.kf = lshr i32 %i.js, 16
  %i.kg = and i32 %i.ke, 255
  %i.kh = and i32 %i.kf, 255
  %i.ki = uitofp nsz nneg i32 %i.kg to double
  %i.kj = uitofp nsz nneg i32 %i.kh to double
  %i.kk = fpext <2 x float> %i.ka to <2 x double>
  %i.kl = fadd nsz <2 x double> %i.kk, splat (double 8.000000e-01)
  %i.km = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.kn = insertelement <2 x double> %i.km, double %i.ki, i64 1
  %i.ko = fmul nsz <2 x double> %i.kl, %i.kn
  %i.kp = fptrunc <2 x double> %i.ko to <2 x float>
  %i.kq = fadd nsz <2 x float> %i.kp, splat (float 5.000000e-01)
  %i.kr = call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.kq)
  %16 = fptosi <2 x float> %i.kr to <2 x i32>
  %17 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %16, <2 x i32> zeroinitializer)
  %18 = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %17, <2 x i32> splat (i32 255))
  %19 = shl nuw nsw <2 x i32> %18, <i32 16, i32 8> ; 2 uses
  %20 = extractelement <2 x i32> %19, i64 0
  %21 = or disjoint i32 %20, %i.jt
  %22 = extractelement <2 x i32> %19, i64 1
  %23 = or disjoint i32 %21, %22
  %24 = and i32 %i.js, 255
  %25 = uitofp nsz nneg i32 %24 to double
  %26 = fpext nsz float %i.kd to double
  %27 = fadd nsz double %26, 8.000000e-01
  %28 = fmul nsz double %27, %25
  %29 = fptrunc nsz double %28 to float
  %30 = fadd nsz float %29, 5.000000e-01
  %31 = call nsz noundef float @llvm.floor.f32(float %30)
  %32 = fptosi float %31 to i32
  %33 = call i32 @llvm.smax.i32(i32 %32, i32 0)
  %34 = call i32 @llvm.umin.i32(i32 %33, i32 255)
  %35 = or disjoint i32 %23, %34
  %i.ks = load ptr, ptr %i.a, align 8, !tbaa !252
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 288
  store i32 %35, ptr %i.kt, align 8, !tbaa !597
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bn
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bq
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.bx

bb.bu:                                            ; preds = %bb.br, %bb.bc
  %i.kw = getelementptr inbounds nuw i8, ptr %9, i64 368 ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 8, !tbaa !1503, !range !305, !noundef !191
  %i.ky = trunc nuw i8 %i.kx to i1
  store i8 0, ptr %i.kw, align 8, !tbaa !1503
  br i1 %i.ky, label %bb.bv, label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.kz = getelementptr inbounds nuw i8, ptr %9, i64 144
  call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(232) %i.kz) #34
  br label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i: ; preds = %bb.bv, %bb.bu
  %i.la = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !1504 ; 3 uses
  %.not.i.i.i.i.i176 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i.i.i176, label %_ZN12RaycastStateD2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i
  %i.lc = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !1507
  %i.le = ptrtoint ptr %i.ld to i64
  %i.lf = ptrtoint ptr %i.lb to i64
  %i.lg = sub i64 %i.le, %i.lf
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef %i.lg) #36
  br label %_ZN12RaycastStateD2Ev.exit

_ZN12RaycastStateD2Ev.exit:                       ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  ret void

bb.bx:                                            ; preds = %bb.bg, %bb.bs, %bb.bt, %bb.bo, %bb.bp, %bb.bf, %bb.bb, %bb.ak, %bb.x
  %.pn134.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn, %bb.bb ], [ %.pn121.pn, %bb.ak ], [ %i.dc, %bb.x ], [ %i.ku, %bb.bs ], [ %i.hn, %bb.bf ], [ %i.ho, %bb.bg ], [ %i.jh, %bb.bo ], [ %i.ji, %bb.bp ], [ %i.kv, %bb.bt ]
  call void @_ZN12RaycastStateD2Ev(ptr noundef nonnull align 8 dead_on_return(389) dereferenceable(389) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.pn134.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn134.pn.pn.pn.pn.pn, %bb.bx ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  resume { ptr, i32 } %.pn134.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK12PointedThing4dumpB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

declare noundef zeroext i8 @_ZNK16TouchInteraction7getModeERK14ItemDefinition16PointedThingType(ptr noundef nonnull align 1 dereferenceable(3), ptr noundef nonnull align 8 dereferenceable(982), i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN13TouchControls20applyContextControlsERK20TouchInteractionMode(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare void @_ZN3Hud19updateSelectionMeshERKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(572), ptr noundef nonnull align 2 dereferenceable(6)) local_unnamed_addr #3

declare void @_ZN6Client8interactE14InteractActionRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(1674), i8 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN6Client8setCrackEiN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(1674), i32 noundef, i48) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN15ScriptApiClient11on_item_useERK9ItemStackRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN4Game20handlePointingAtNodeERK12PointedThingRK9ItemStackS5_f(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull align 8 dereferenceable(296) %3, float noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 10 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 7 uses
  %7 = alloca %"class.core::vector3d", align 2    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %struct.SoundSpec, align 8         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %6, ptr noundef nonnull align 2 dereferenceable(6) %i.c, i64 6, i1 false), !tbaa.struct !1508
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 4 dereferenceable(6) %i.d, i64 6, i1 false), !tbaa.struct !1508
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !249
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.j = load float, ptr %i.i, align 4, !tbaa !729
  %i.k = fcmp nsz ugt float %i.j, 0.000000e+00
  br i1 %i.k, label %.critedge71.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !303  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(512) %i.m, i32 noundef 8), !inline_history !865
  br i1 %i.q, label %bb.c, label %.critedge71.thread

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1009, !range !305, !noundef !191
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.critedge71.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.v, ptr %8, align 8, !tbaa !162
  store i64 8386654075050290793, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.w, align 8, !tbaa !167
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.x, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1384
  %i.z = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %._crit_edge.i.i
  %.not.i.i.i.not = icmp eq ptr %i.z, null
  %i.aa = load ptr, ptr %8, align 8, !tbaa !165   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.v
  br i1 %i.ab, label %.critedge71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #36
  br label %.critedge71

.critedge71:                                      ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br i1 %.not.i.i.i.not, label %.critedge71.thread, label %bb.d

bb.d:                                             ; preds = %.critedge71
  call void @_ZN4Game13handleDiggingERK12PointedThingRKN4core8vector3dIsEERK9ItemStackSA_f(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 2 dereferenceable(6) %6, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull align 8 dereferenceable(296) %3, float noundef %4)
  br label %.critedge71.thread

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %8, align 8, !tbaa !165   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.v
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.e
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !17
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.ab

.critedge71.thread:                               ; preds = %bb.c, %bb.b, %bb.a, %bb.d, %.critedge71
  %.sroa.015.0.copyload = load i48, ptr %6, align 8 ; 2 uses
  %i.aj = call noundef ptr @_ZN3Map15getNodeMetadataEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.h, i48 %.sroa.015.0.copyload) ; 4 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.k, label %._crit_edge.i.i80

._crit_edge.i.i80:                                ; preds = %.critedge71.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.am, ptr %11, align 8, !tbaa !162
  store i64 8392569456364514921, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 8, ptr %i.an, align 8, !tbaa !167
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 0, ptr %i.ao, align 8, !tbaa !17
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !9
  %i.aq = getelementptr i8, ptr %i.ap, i64 -80
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.aj, i64 %i.ar
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9IMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_t(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef null, i16 noundef zeroext 0)
          to label %_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit unwind label %bb.h ; 2 uses

_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit: ; preds = %._crit_edge.i.i80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !165
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !167
  invoke void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.67") align 8 %10, i64 %i.aw, ptr %i.au)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit
end_hunk_1
begin_hunk_2_@_ZN4Game23handlePointingAtNothingERK9ItemStack:bb.a

bb.c:                                             ; preds = %_ZTW10infostream.exit
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !195
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !194 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !9
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre2 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi i64 [ %.pre2, %bb.d ], [ %i.l, %bb.c ]
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !202  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i8, ptr %i.v, align 8, !tbaa !208
  %.not.i1.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 67
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.u)
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef signext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(570) %i.u, i8 noundef signext 10), !inline_history !213
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.y, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext %.0.i.i.i)
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW10infostream.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !249
  call void @_ZN6Client8interactE14InteractActionRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(1674) %i.ag, i8 noundef zeroext 5, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void
}

declare void @_ZN6Camera10setDiggingEi(ptr noundef nonnull align 8 dereferenceable(536), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #5

declare void @_ZN12RaycastStateC1ERKN4core6line3dIfEEbbRKSt8optionalI14PointabilitiesE(ptr noundef nonnull align 8 dereferenceable(389), ptr noundef nonnull align 4 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #3

declare void @_ZN11Environment15continueRaycastEP12RaycastStateP12PointedThing(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN3Hud15setSelectionPosERKN4core8vector3dIfEERKNS1_IsEE(ptr noundef nonnull align 8 dereferenceable(572), ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 2 dereferenceable(6)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4core8CMatrix4IfE18getRotationRadiansEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !60   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !60 ; 3 uses
  %i.d = fmul nsz float %i.c, %i.c
  %i.e = tail call nsz float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !60 ; 3 uses
  %i.h = tail call nsz float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e)
  %i.i = tail call nsz noundef float @llvm.sqrt.f32(float %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !60 ; 3 uses
  %i.l = tail call nsz float @llvm.fabs.f32(float %i.i)
  %i.m = fcmp nsz ole float %i.l, f0x358637BD
  %i.n = fpext nsz float %i.i to double
  %i.o = fdiv nsz double 1.000000e+00, %i.n
  %i.p = select i1 %i.m, double f0x37F0000010000010, double %i.o ; 3 uses
  %i.q = fpext nsz float %i.g to double
  %i.r = fmul nsz double %i.p, %i.q               ; 2 uses
  %i.s = fcmp nsz olt double %i.r, -1.000000e+00
  %i.t = select i1 %i.s, double -1.000000e+00, double %i.r ; 2 uses
  %i.u = fcmp nsz olt double %i.t, 1.000000e+00
  %i.v = select i1 %i.u, double %i.t, double 1.000000e+00 ; 2 uses
  %i.w = tail call nsz noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fadd nsz double %i.w, -1.000000e+00
  %i.y = tail call nsz noundef double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp nsz ugt double %i.y, 1.000000e-08
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load <4 x float>, ptr %i.ad, align 4
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ag = load <2 x float>, ptr %i.ac, align 4, !tbaa !60 ; 2 uses
  %i.ah = shufflevector <2 x float> %i.k, <2 x float> %i.ag, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ai = fmul nsz <2 x float> %i.ah, %i.ah
  %i.aj = shufflevector <2 x float> %i.k, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ak = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.aj, <2 x float> %i.ai)
  %i.al = insertelement <2 x float> %i.af, float %i.ab, i64 1 ; 3 uses
  %i.am = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.al, <2 x float> %i.ak)
  %i.an = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.am) ; 2 uses
  %i.ao = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.an)
  %i.ap = fcmp nsz ole <2 x float> %i.ao, splat (float f0x358637BD)
  %i.aq = fpext <2 x float> %i.an to <2 x double>
  %i.ar = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.aq
  %i.as = select <2 x i1> %i.ap, <2 x double> splat (double f0x37F0000010000010), <2 x double> %i.ar
  %i.at = fpext <2 x float> %i.al to <2 x double>
  %i.au = fmul nsz <2 x double> %i.as, %i.at      ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  %i.aw = extractelement <2 x double> %i.au, i64 1
  %i.ax = tail call nsz double @llvm.atan2.f64(double %i.av, double %i.aw)
  %i.ay = fpext nsz float %i.a to double
  %i.az = fmul nsz double %i.p, %i.ay
  %i.ba = fpext nsz float %i.c to double
  %i.bb = fmul nsz double %i.p, %i.ba
  %i.bc = tail call nsz double @llvm.atan2.f64(double %i.bb, double %i.az)
  %i.bd = fptrunc nsz double %i.ax to float
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansERKNS_8vector3dIfEE.exit

bb.c:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !60
  %i.bg = fpext nsz float %i.bf to double
  %i.bh = extractelement <2 x float> %i.k, i64 0
  %i.bi = fneg nsz float %i.bh
  %i.bj = fpext nsz float %i.bi to double
  %i.bk = tail call nsz double @llvm.atan2.f64(double %i.bj, double %i.bg)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansERKNS_8vector3dIfEE.exit

_ZNK4core8CMatrix4IfE18getRotationRadiansERKNS_8vector3dIfEE.exit: ; preds = %bb.b, %bb.c
  %.025.i.i = phi float [ 0.000000e+00, %bb.c ], [ %i.bd, %bb.b ]
  %.0.i.i = phi nsz double [ %i.bk, %bb.c ], [ %i.bc, %bb.b ]
  %i.bl = tail call nsz double @llvm.asin.f64(double %i.v)
  %i.bm = fptrunc nsz double %i.bl to float
  %i.bn = fneg nsz float %i.bm
  %i.bo = fptrunc nsz double %.0.i.i to float
  %.sroa.032.0.vec.insert.i.i = insertelement <2 x float> poison, float %.025.i.i, i64 0
  %.sroa.032.4.vec.insert.i.i = insertelement <2 x float> %.sroa.032.0.vec.insert.i.i, float %i.bn, i64 1
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.032.4.vec.insert.i.i, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.bo, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

declare void @_ZNK7MapNode17getSelectionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i8 @_ZNK7MapNode12getNeighborsEN4core8vector3dIsEEP3Map(ptr noundef nonnull align 4 dereferenceable(4), i48, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i48 @_Z10floatToIntN4core8vector3dIfEEf(<2 x float> %0, float %1, float noundef %2) local_unnamed_addr #23 comdat {
bb.a:
  %.sroa.09.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %i.a = fcmp nsz ogt float %.sroa.09.0.vec.extract, 0.000000e+00
  %i.b = fmul nsz float %2, 5.000000e-01          ; 2 uses
  %i.c = fmul nsz float %2, -5.000000e-01         ; 2 uses
  %i.d = select nsz i1 %i.a, float %i.b, float %i.c
  %i.e = fadd nsz float %.sroa.09.0.vec.extract, %i.d
  %i.f = fdiv nsz float %i.e, %2
  %i.g = fptosi float %i.f to i16
  %i.h = insertelement <2 x float> %0, float %1, i64 0 ; 2 uses
  %i.i = fcmp nsz ogt <2 x float> %i.h, zeroinitializer
  %i.j = insertelement <2 x float> poison, float %i.b, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x float> poison, float %i.c, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = select <2 x i1> %i.i, <2 x float> %i.k, <2 x float> %i.m
  %i.o = fadd nsz <2 x float> %i.h, %i.n
  %i.p = insertelement <2 x float> poison, float %2, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fdiv nsz <2 x float> %i.o, %i.q
  %i.s = fptosi <2 x float> %i.r to <2 x i16>
  %i.t = zext <2 x i16> %i.s to <2 x i48>
  %i.u = shl nuw <2 x i48> %i.t, <i48 32, i48 16> ; 2 uses
  %shift = shufflevector <2 x i48> %i.u, <2 x i48> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i48> %i.u, %shift
  %.sroa.2.0.insert.insert = extractelement <2 x i48> %foldExtExtBinop, i64 0
  %.sroa.0.0.insert.ext = zext i16 %i.g to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

declare noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

declare void @_Z17final_color_blendPN5video6SColorEtj(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12RaycastStateD2Ev(ptr noundef nonnull align 8 dead_on_return(389) dereferenceable(389) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1503, !range !305, !noundef !191
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !1503
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(232) %i.d) #34
  br label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1504 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt14priority_queueI12PointedThingSt6vectorIS0_SaIS0_EE11RaycastSortED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1507
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #36
  br label %_ZNSt14priority_queueI12PointedThingSt6vectorIS0_SaIS0_EE11RaycastSortED2Ev.exit

_ZNSt14priority_queueI12PointedThingSt6vectorIS0_SaIS0_EE11RaycastSortED2Ev.exit: ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN4Game13handleDiggingERK12PointedThingRKN4core8vector3dIsEERK9ItemStackSA_f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(688) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(296) %3, ptr noundef nonnull align 8 dereferenceable(296) %4, float noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.MapNode, align 4            ; 9 uses
  %7 = alloca %struct.DigParams, align 8          ; 20 uses
  %8 = alloca %struct.DigParams, align 8          ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !249  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !577  ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %.sroa.041.0.copyload = load i48, ptr %2, align 2
  %i.k = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.j, i48 %.sroa.041.0.copyload, ptr noundef null) ; 2 uses
  store i32 %i.k, ptr %6, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !263  ; 2 uses
  %i.n = and i32 %i.k, 65535
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !281
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !278  ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 2080
  %i.x = icmp ugt i64 %i.w, %i.o
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw [2080 x i8], ptr %i.s, i64 %i.o ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !167
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ %i.y, %bb.b ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !167
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, ptr %4, ptr %3         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !264
  %i.al = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZNK9ItemStack19getToolCapabilitiesEPK15IItemDefManagerPKS_(ptr noundef nonnull align 8 dereferenceable(296) %i.ah, ptr noundef %i.ak, ptr noundef nonnull %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 34
  %i.an = load i16, ptr %i.am, align 2, !tbaa !917
  call void @_Z12getDigParamsRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEPK16ToolCapabilitiest(ptr dead_on_unwind nonnull writable sret(%struct.DigParams) align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull %i.al, i16 noundef zeroext %i.an)
  %i.ao = load i8, ptr %7, align 8, !tbaa !1518, !range !305, !noundef !191
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.thread197, label %bb.d

bb.d:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !264
  %i.ar = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZNK9ItemStack19getToolCapabilitiesEPK15IItemDefManagerPKS_(ptr noundef nonnull align 8 dereferenceable(296) %4, ptr noundef %i.aq, ptr noundef null)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  invoke void @_Z12getDigParamsRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEPK16ToolCapabilitiest(ptr dead_on_unwind nonnull writable sret(%struct.DigParams) align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull %i.ar, i16 noundef zeroext 0)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 12, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !165 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !165 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.az = icmp eq ptr %i.ax, %i.ay                ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  br i1 %i.az, label %bb.g, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  br i1 %i.az, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !167 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  switch i64 %i.bb, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !17
  store i8 %i.bd, ptr %i.au, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ax, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !167 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !167
  %i.bg = load ptr, ptr %i.as, align 8, !tbaa !165
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !17
  %.pre.i.i = load ptr, ptr %i.at, align 8, !tbaa !165
  br label %_ZN9DigParamsaSEOS_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !165
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bk = load <2 x i64>, ptr %i.bj, align 8, !tbaa !17
  store <2 x i64> %i.bk, ptr %i.bi, align 8, !tbaa !17
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bl = load i64, ptr %i.av, align 8, !tbaa !17
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !165
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bo = load <2 x i64>, ptr %i.bm, align 8, !tbaa !17
  store <2 x i64> %i.bo, ptr %i.bn, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.au, ptr %i.at, align 8, !tbaa !165
  store i64 %i.bl, ptr %i.ay, align 8, !tbaa !17
  br label %_ZN9DigParamsaSEOS_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !165
  br label %_ZN9DigParamsaSEOS_.exit

_ZN9DigParamsaSEOS_.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.j, %bb.k
  %i.bp = phi ptr [ %i.au, %bb.j ], [ %i.ay, %bb.k ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 0, ptr %i.bq, align 8, !tbaa !167
  store i8 0, ptr %i.bp, align 1, !tbaa !17
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm:bb.a
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1386 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !242
  store ptr %i.w, ptr %3, align 8, !tbaa !242
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !1386
  store ptr %3, ptr %i.x, align 8, !tbaa !242
  br label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !241
  store ptr %i.z, ptr %3, align 8, !tbaa !242
  store ptr %3, ptr %i.y, align 8, !tbaa !241
  %i.aa = load ptr, ptr %3, align 8, !tbaa !242   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !58
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !597
  %i.ae = zext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !1386
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !1386
  br label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !1384
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !1384
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !748

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1811
  br label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjjELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !748

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjjELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjjELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjjELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !241  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !241
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !242 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !597
  %i.l = zext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1386 ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !241
  store ptr %i.p, ptr %.031, align 8, !tbaa !242
  store ptr %.031, ptr %i.g, align 8, !tbaa !241
  store ptr %i.g, ptr %i.n, align 8, !tbaa !1386
  %i.q = load ptr, ptr %.031, align 8, !tbaa !242
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8, !tbaa !1386
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !242
  store ptr %i.s, ptr %.031, align 8, !tbaa !242
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !1386
  store ptr %.031, ptr %i.t, align 8, !tbaa !242
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1812

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !58
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #36
  br label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !58
  store ptr %.0.i, ptr %0, align 8, !tbaa !51
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.asin.f64(double) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

declare extern_weak void @_ZTH10infostream() #3

declare extern_weak void @_ZTH13warningstream() #3

declare extern_weak void @_ZTH11errorstream() #3

declare extern_weak void @_ZTH13verbosestream() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(none) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #28 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { cold noreturn }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { builtin nounwind }
attributes #37 = { noreturn }
attributes #38 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS12LambdaThread", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!15, !13, i64 16}
!15 = !{!"_ZTSSt14_Function_base", !7, i64 0, !13, i64 16}
!16 = !{!13, !13, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{i64 0, i64 16, !17}
!19 = distinct !{null, null}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS6Logger", !13, i64 0}
!22 = !{!23, !24, i64 0}
!23 = !{!"_ZTSN6GameUI5FlagsE", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !24, i64 4}
!24 = !{!"bool", !7, i64 0}
!25 = !{!23, !24, i64 1}
!26 = !{!23, !24, i64 3}
!27 = !{!28, !29, i64 8}
!28 = !{!"_ZTS6GameUI", !23, i64 0, !29, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !31, i64 40, !35, i64 72, !30, i64 80, !6, i64 88, !42, i64 92, !30, i64 112, !7, i64 120, !7, i64 121}
!29 = !{!"float", !7, i64 0}
!30 = !{!"p1 _ZTSN3gui14IGUIStaticTextE", !13, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !32, i64 0, !34, i64 8, !7, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 wchar_t", !13, i64 0}
!34 = !{!"long", !7, i64 0}
!35 = !{!"_ZTSSt10unique_ptrI16StatusTextHelperSt14default_deleteIS0_EE", !36, i64 0}
!36 = !{!"_ZTSSt15__uniq_ptr_dataI16StatusTextHelperSt14default_deleteIS0_ELb1ELb1EE", !37, i64 0}
!37 = !{!"_ZTSSt15__uniq_ptr_implI16StatusTextHelperSt14default_deleteIS0_EE", !38, i64 0}
!38 = !{!"_ZTSSt5tupleIJP16StatusTextHelperSt14default_deleteIS0_EEE", !39, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJP16StatusTextHelperSt14default_deleteIS0_EEE", !40, i64 0}
!40 = !{!"_ZTSSt10_Head_baseILm0EP16StatusTextHelperLb0EE", !41, i64 0}
!41 = !{!"p1 _ZTS16StatusTextHelper", !13, i64 0}
!42 = !{!"_ZTSN4core4rectIiEE", !43, i64 0, !43, i64 8}
!43 = !{!"_ZTSN4core8vector2dIiEE", !6, i64 0, !6, i64 4}
!44 = !{!32, !33, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"wchar_t", !7, i64 0}
!47 = !{!28, !7, i64 120}
!48 = !{!28, !7, i64 121}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTS6GameUI", !13, i64 0}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !53, i64 0, !34, i64 8, !55, i64 16, !34, i64 24, !57, i64 32, !56, i64 48}
!53 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !54, i64 0}
!54 = !{!"any p2 pointer", !13, i64 0}
!55 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !56, i64 0}
!56 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!57 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !29, i64 0, !34, i64 8}
!58 = !{!52, !34, i64 8}
!59 = !{!57, !29, i64 0}
!60 = !{!29, !29, i64 0}
!61 = !{!62, !29, i64 8}
!62 = !{!"_ZTSN4core8vector3dIfEE", !29, i64 0, !29, i64 4, !29, i64 8}
!63 = !{!64, !24, i64 0}
!64 = !{!"_ZTSN4Game5FlagsE", !24, i64 0, !6, i64 4}
!65 = !{!64, !6, i64 4}
!66 = !{!67, !29, i64 0}
!67 = !{!"_ZTS15IntervalLimiter", !29, i64 0}
!68 = !{!69, !29, i64 684}
!69 = !{!"_ZTS4Game", !6, i64 0, !70, i64 8, !71, i64 16, !72, i64 24, !73, i64 32, !29, i64 60, !76, i64 64, !77, i64 72, !78, i64 80, !79, i64 88, !80, i64 96, !87, i64 104, !94, i64 112, !101, i64 120, !102, i64 128, !111, i64 208, !112, i64 216, !113, i64 224, !119, i64 232, !121, i64 240, !122, i64 248, !123, i64 256, !125, i64 264, !127, i64 272, !128, i64 280, !129, i64 288, !139, i64 328, !140, i64 384, !64, i64 544, !147, i64 552, !130, i64 560, !148, i64 568, !149, i64 576, !150, i64 584, !151, i64 592, !152, i64 600, !153, i64 608, !24, i64 632, !67, i64 636, !24, i64 640, !24, i64 641, !24, i64 642, !24, i64 643, !24, i64 644, !24, i64 645, !24, i64 646, !29, i64 648, !29, i64 652, !29, i64 656, !29, i64 660, !29, i64 664, !29, i64 668, !24, i64 672, !24, i64 673, !24, i64 674, !24, i64 675, !24, i64 676, !24, i64 677, !24, i64 678, !24, i64 679, !24, i64 680, !29, i64 684}
!70 = !{!"p1 _ZTS12InputHandler", !13, i64 0}
!71 = !{!"p1 _ZTS6Client", !13, i64 0}
!72 = !{!"p1 _ZTS6Server", !13, i64 0}
!73 = !{!"_ZTS17ClientDynamicInfo", !74, i64 0, !29, i64 8, !29, i64 12, !75, i64 16, !24, i64 24}
!74 = !{!"_ZTSN4core8vector2dIjEE", !6, i64 0, !6, i64 4}
!75 = !{!"_ZTSN4core8vector2dIfEE", !29, i64 0, !29, i64 4}
!76 = !{!"p1 _ZTS22IWritableTextureSource", !13, i64 0}
!77 = !{!"p1 _ZTS21IWritableShaderSource", !13, i64 0}
!78 = !{!"p1 _ZTS23IWritableItemDefManager", !13, i64 0}
!79 = !{!"p1 _ZTS14NodeDefManager", !13, i64 0}
!80 = !{!"_ZTSSt10unique_ptrI18ItemVisualsManagerSt14default_deleteIS0_EE", !81, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataI18ItemVisualsManagerSt14default_deleteIS0_ELb1ELb1EE", !82, i64 0}
!82 = !{!"_ZTSSt15__uniq_ptr_implI18ItemVisualsManagerSt14default_deleteIS0_EE", !83, i64 0}
!83 = !{!"_ZTSSt5tupleIJP18ItemVisualsManagerSt14default_deleteIS0_EEE", !84, i64 0}
!84 = !{!"_ZTSSt11_Tuple_implILm0EJP18ItemVisualsManagerSt14default_deleteIS0_EEE", !85, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EP18ItemVisualsManagerLb0EE", !86, i64 0}
!86 = !{!"p1 _ZTS18ItemVisualsManager", !13, i64 0}
!87 = !{!"_ZTSSt10unique_ptrI13ISoundManagerSt14default_deleteIS0_EE", !88, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_dataI13ISoundManagerSt14default_deleteIS0_ELb1ELb1EE", !89, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_implI13ISoundManagerSt14default_deleteIS0_EE", !90, i64 0}
!90 = !{!"_ZTSSt5tupleIJP13ISoundManagerSt14default_deleteIS0_EEE", !91, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJP13ISoundManagerSt14default_deleteIS0_EEE", !92, i64 0}
!92 = !{!"_ZTSSt10_Head_baseILm0EP13ISoundManagerLb0EE", !93, i64 0}
!93 = !{!"p1 _ZTS13ISoundManager", !13, i64 0}
!94 = !{!"_ZTSSt10unique_ptrI10SoundMakerSt14default_deleteIS0_EE", !95, i64 0}
!95 = !{!"_ZTSSt15__uniq_ptr_dataI10SoundMakerSt14default_deleteIS0_ELb1ELb1EE", !96, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_implI10SoundMakerSt14default_deleteIS0_EE", !97, i64 0}
!97 = !{!"_ZTSSt5tupleIJP10SoundMakerSt14default_deleteIS0_EEE", !98, i64 0}
!98 = !{!"_ZTSSt11_Tuple_implILm0EJP10SoundMakerSt14default_deleteIS0_EEE", !99, i64 0}
!99 = !{!"_ZTSSt10_Head_baseILm0EP10SoundMakerLb0EE", !100, i64 0}
!100 = !{!"p1 _ZTS10SoundMaker", !13, i64 0}
!101 = !{!"p1 _ZTS11ChatBackend", !13, i64 0}
!102 = !{!"_ZTS16CaptureLogOutput", !103, i64 0, !21, i64 8, !104, i64 16, !106, i64 56}
!103 = !{!"_ZTS10ILogOutput"}
!104 = !{!"_ZTSSt5mutex", !105, i64 0}
!105 = !{!"_ZTSSt12__mutex_base", !7, i64 0}
!106 = !{!"_ZTSSt6vectorI8LogEntrySaIS0_EE", !107, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseI8LogEntrySaIS0_EE", !108, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseI8LogEntrySaIS0_EE12_Vector_implE", !109, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseI8LogEntrySaIS0_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!110 = !{!"p1 _ZTS8LogEntry", !13, i64 0}
!111 = !{!"p1 _ZTS12EventManager", !13, i64 0}
!112 = !{!"p1 _ZTS20QuicktuneShortcutter", !13, i64 0}
!113 = !{!"_ZTSSt10unique_ptrI6GameUISt14default_deleteIS0_EE", !114, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_dataI6GameUISt14default_deleteIS0_ELb1ELb1EE", !115, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_implI6GameUISt14default_deleteIS0_EE", !116, i64 0}
!116 = !{!"_ZTSSt5tupleIJP6GameUISt14default_deleteIS0_EEE", !117, i64 0}
!117 = !{!"_ZTSSt11_Tuple_implILm0EJP6GameUISt14default_deleteIS0_EEE", !118, i64 0}
!118 = !{!"_ZTSSt10_Head_baseILm0EP6GameUILb0EE", !50, i64 0}
!119 = !{!"_ZTS7irr_ptrI14GUIChatConsoleE", !120, i64 0}
!120 = !{!"p1 _ZTS14GUIChatConsole", !13, i64 0}
!121 = !{!"p1 _ZTS14MapDrawControl", !13, i64 0}
!122 = !{!"p1 _ZTS6Camera", !13, i64 0}
!123 = !{!"_ZTS7irr_ptrI6CloudsE", !124, i64 0}
!124 = !{!"p1 _ZTS6Clouds", !13, i64 0}
!125 = !{!"_ZTS7irr_ptrI3SkyE", !126, i64 0}
!126 = !{!"p1 _ZTS3Sky", !13, i64 0}
!127 = !{!"p1 _ZTS3Hud", !13, i64 0}
!128 = !{!"p1 _ZTS7Minimap", !13, i64 0}
!129 = !{!"_ZTS12GameFormSpec", !71, i64 0, !130, i64 8, !70, i64 16, !131, i64 24, !138, i64 32}
!130 = !{!"p1 _ZTS15RenderingEngine", !13, i64 0}
!131 = !{!"_ZTSSt10unique_ptrI18PauseMenuScriptingSt14default_deleteIS0_EE", !132, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_dataI18PauseMenuScriptingSt14default_deleteIS0_ELb1ELb1EE", !133, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_implI18PauseMenuScriptingSt14default_deleteIS0_EE", !134, i64 0}
!134 = !{!"_ZTSSt5tupleIJP18PauseMenuScriptingSt14default_deleteIS0_EEE", !135, i64 0}
!135 = !{!"_ZTSSt11_Tuple_implILm0EJP18PauseMenuScriptingSt14default_deleteIS0_EEE", !136, i64 0}
!136 = !{!"_ZTSSt10_Head_baseILm0EP18PauseMenuScriptingLb0EE", !137, i64 0}
!137 = !{!"p1 _ZTS18PauseMenuScripting", !13, i64 0}
!138 = !{!"p1 _ZTS15GUIFormSpecMenu", !13, i64 0}
!139 = !{!"_ZTSSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEE", !52, i64 0}
!140 = !{!"_ZTS11GameRunData", !141, i64 0, !141, i64 2, !142, i64 4, !24, i64 68, !24, i64 69, !24, i64 70, !24, i64 71, !24, i64 72, !24, i64 73, !29, i64 76, !29, i64 80, !29, i64 84, !29, i64 88, !29, i64 92, !29, i64 96, !146, i64 104, !29, i64 112, !29, i64 116, !29, i64 120, !29, i64 124, !29, i64 128, !29, i64 132, !29, i64 136, !62, i64 140, !29, i64 152}
!141 = !{!"short", !7, i64 0}
!142 = !{!"_ZTS12PointedThing", !143, i64 0, !144, i64 1, !145, i64 2, !145, i64 8, !145, i64 14, !141, i64 20, !141, i64 22, !62, i64 24, !62, i64 36, !62, i64 48, !29, i64 60}
!143 = !{!"_ZTS16PointedThingType", !7, i64 0}
!144 = !{!"_ZTS16PointabilityType", !7, i64 0}
!145 = !{!"_ZTSN4core8vector3dIsEE", !141, i64 0, !141, i64 2, !141, i64 4}
end_hunk_3
