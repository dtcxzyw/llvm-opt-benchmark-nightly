inline.NumInlined: 685
inline.NumDeleted: 224
begin_hunk_0_@_ZN6Assimp3LWO12AnimResolver7GetKeysERSt6vectorI11aiVectorKeySaIS3_EEPNS0_8EnvelopeES8_S8_j:bb.a
  store float %.sroa.11.0183, ptr %.sroa.11.0..sroa_idx155, align 8
  %.sroa.14.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 1, ptr %.sroa.14.0..sroa_idx165, align 4
  %.sroa.15.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.15.0..sroa_idx171, i8 0, i64 20, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  store ptr %i.ab, ptr %i.g, align 16
  store ptr %i.ae, ptr %i.ad, align 8
  store ptr %i.ae, ptr %i.ac, align 16
  br label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit91

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit91: ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i88, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit75
  %i.af = phi ptr [ %8, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i88 ], [ %4, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit75 ] ; 4 uses
  %i.ag = and i32 %5, 1
  %.not42 = icmp eq i32 %i.ag, 0
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit91
  %.sroa.phi = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load double, ptr %i.ah, align 8         ; 2 uses
  %i.aj = fcmp une double %i.ai, 0.000000e+00
  %. = select i1 %i.aj, double %i.ai, double 1.000000e+02 ; 2 uses
  %i.ak = fdiv double 1.000000e+00, %.
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.ak, ptr %i.al, align 8
  %i.am = load ptr, ptr %.sroa.phi245, align 8, !noalias !16
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -40
  %i.ao = load ptr, ptr %.sroa.phi242, align 8, !noalias !19
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -40
  %i.aq = load ptr, ptr %.sroa.phi, align 8, !noalias !22
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -40
  %i.as = load double, ptr %i.ap, align 8         ; 2 uses
  %i.at = load double, ptr %i.ar, align 8         ; 2 uses
  %i.au = fcmp olt double %i.as, %i.at
  %i.av = load double, ptr %i.an, align 8         ; 2 uses
  %i.aw = select i1 %i.au, double %i.at, double %i.as ; 2 uses
  %i.ax = fcmp olt double %i.av, %i.aw
  %i.ay = select i1 %i.ax, double %i.aw, double %i.av
  %i.az = fmul double %., %i.ay
  %i.ba = fptoui double %i.az to i64
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit91
  %.sroa.phi239 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.phi236 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bb = load ptr, ptr %.sroa.phi249, align 8
  %i.bc = load ptr, ptr %.sroa.phi253, align 8
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 40
  %i.bh = load ptr, ptr %.sroa.phi236, align 8
  %i.bi = load ptr, ptr %.sroa.phi239, align 8
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 40
  %i.bn = call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bm)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.027 = phi i64 [ %i.ba, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %i.bo = lshr i64 %.027, 1
  %i.bp = add i64 %i.bo, %.027                    ; 4 uses
  %i.bq = icmp ugt i64 %i.bp, 384307168202282325
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc95 unwind label %bb.s

.noexc95:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load ptr, ptr %1, align 8               ; 5 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = sdiv exact i64 %i.bw, 24
  %i.by = icmp ult i64 %i.bx, %i.bp
  br i1 %i.by, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 3 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bv
  %i.cd = mul nuw nsw i64 %i.bp, 24
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
          to label %.noexc96 unwind label %bb.s   ; 4 uses

.noexc96:                                         ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.bt, %i.ca
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc96, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i ], [ %i.ce, %.noexc96 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %i.bt, %.noexc96 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !25
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.cf, %i.ca
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !29

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc96
  %.not.i8.i = icmp eq ptr %i.bt, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bw) #19
  br label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.o, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.ce, ptr %1, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store ptr %i.ch, ptr %i.bz, align 8
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.bp
  store ptr %i.ci, ptr %i.br, align 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre204 = load ptr, ptr %i.b, align 8
  %.pre205 = load ptr, ptr %i.c, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.n
  %i.cj = phi ptr [ %.pre205, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.af, %bb.n ]
  %i.ck = phi ptr [ %.pre204, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.aa, %bb.n ]
  %i.cl = phi ptr [ %.pre, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.v, %bb.n ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  store i64 %i.cp, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  store i64 %i.ct, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  store i64 %i.cx, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 3 uses
  store i8 0, ptr %i.cy, align 2
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 3 uses
  store i8 0, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store i8 0, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.at, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit
  %i.dg = phi i8 [ %i.gd, %bb.at ], [ 0, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit ]
  %i.dh = phi ptr [ %i.ga, %bb.at ], [ %i.cv, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit ] ; 4 uses
  %i.di = phi i8 [ %i.gf, %bb.at ], [ 0, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit ]
  %i.dj = phi i8 [ %i.gb, %bb.at ], [ 0, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit ]
  %i.dk = phi ptr [ %i.fr, %bb.at ], [ %i.cr, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit ] ; 2 uses
  %i.dl = phi ptr [ %i.fi, %bb.at ], [ %i.cn, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.db, align 4
  %i.dm = load double, ptr %i.dl, align 8         ; 6 uses
  %i.dn = load double, ptr %i.dk, align 8         ; 5 uses
  %i.do = fcmp oeq double %i.dm, %i.dn
  br i1 %i.do, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dp = load double, ptr %i.dh, align 8
  %i.dq = fcmp oeq double %i.dm, %i.dp
  br i1 %i.dq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store double %i.dm, ptr %9, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.ds = load float, ptr %i.dr, align 8
  store float %i.ds, ptr %i.dd, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.du = load float, ptr %i.dt, align 8
  store float %i.du, ptr %i.de, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dw = load float, ptr %i.dv, align 8
  store float %i.dw, ptr %i.df, align 8
  br label %bb.ac

bb.s:                                             ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i, %bb.m
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.dy = fcmp ugt double %i.dm, %i.dn
  %i.dz = trunc nuw i8 %i.dj to i1                ; 2 uses
  %or.cond = select i1 %i.dy, i1 true, i1 %i.dz
  %i.ea = load double, ptr %i.dh, align 8         ; 3 uses
  br i1 %or.cond, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = fcmp ugt double %i.ea, %i.dm
  %i.ec = trunc nuw i8 %i.di to i1
  %or.cond52 = select i1 %i.eb, i1 true, i1 %i.ec
  br i1 %or.cond52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN6Assimp3LWO12AnimResolver16InterpolateTrackERSt6vectorI11aiVectorKeySaIS3_EERS3_d(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef %i.ea)
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  call void @_ZN6Assimp3LWO12AnimResolver16InterpolateTrackERSt6vectorI11aiVectorKeySaIS3_EERS3_d(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef %i.dm)
  br label %bb.ac

bb.x:                                             ; preds = %bb.t
  %i.ed = fcmp ugt double %i.ea, %i.dn
  %i.ee = trunc nuw i8 %i.dg to i1                ; 2 uses
  %or.cond54 = select i1 %i.ed, i1 true, i1 %i.ee
  br i1 %or.cond54, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN6Assimp3LWO12AnimResolver16InterpolateTrackERSt6vectorI11aiVectorKeySaIS3_EERS3_d(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef %i.dn)
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  br i1 %i.ee, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN6Assimp3LWO12AnimResolver16InterpolateTrackERSt6vectorI11aiVectorKeySaIS3_EERS3_d(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef %i.dn)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %spec.select = select i1 %i.dz, ptr %i.dh, ptr %i.dl
  %i.ef = load double, ptr %spec.select, align 8
  call void @_ZN6Assimp3LWO12AnimResolver16InterpolateTrackERSt6vectorI11aiVectorKeySaIS3_EERS3_d(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef %i.ef)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.v, %bb.r
  %i.eg = load double, ptr %9, align 8            ; 3 uses
  %i.eh = load ptr, ptr %i.dc, align 8            ; 5 uses
  %i.ei = load ptr, ptr %i.br, align 8
  %.not.i97 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not.i97, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.ej = load ptr, ptr %i.dc, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store ptr %i.ek, ptr %i.dc, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backERKS0_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.el = load ptr, ptr %1, align 8               ; 5 uses
  %i.em = ptrtoint ptr %i.eh to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 4 uses
  %i.ep = icmp eq i64 %i.eo, 9223372036854775800
  br i1 %i.ep, label %bb.af, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
          to label %.noexc107 unwind label %.loopexit.split-lp

.noexc107:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.eq = sdiv exact i64 %i.eo, 24                ; 2 uses
  %.sroa.speculated.i.i.i98 = call i64 @llvm.umax.i64(i64 %i.eq, i64 1)
  %i.er = add nsw i64 %.sroa.speculated.i.i.i98, %i.eq ; 2 uses
  %i.es = call i64 @llvm.umin.i64(i64 %i.er, i64 384307168202282325) ; 2 uses
  %.not.i.i.i99 = icmp ne i64 %i.er, 0
  call void @llvm.assume(i1 %.not.i.i.i99)
  %i.et = mul nuw nsw i64 %i.es, 24
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #17
          to label %.noexc108 unwind label %.loopexit192 ; 5 uses

.noexc108:                                        ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %.not10.i.i.i.i.i100 = icmp eq ptr %i.el, %i.eh
  br i1 %.not10.i.i.i.i.i100, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i101

.lr.ph.i.i.i.i.i101:                              ; preds = %.noexc108, %.lr.ph.i.i.i.i.i101
  %.012.i.i.i.i.i102 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i101 ], [ %i.eu, %.noexc108 ] ; 2 uses
  %.0911.i.i.i.i.i103 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i101 ], [ %i.el, %.noexc108 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i102, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i103, i64 24, i1 false), !alias.scope !30
  %i.ew = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i103, i64 24 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i102, i64 24 ; 2 uses
  %.not.i.i.i.i.i104 = icmp eq ptr %i.ew, %i.eh
  br i1 %.not.i.i.i.i.i104, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i101, !llvm.loop !29

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i101, %.noexc108
  %.0.lcssa.i.i.i.i.i105 = phi ptr [ %i.eu, %.noexc108 ], [ %i.ex, %.lr.ph.i.i.i.i.i101 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i105, i64 24
  %.not.i23.i.i106 = icmp eq ptr %i.el, null
  br i1 %.not.i23.i.i106, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.eo) #19
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.eu, ptr %1, align 8
  store ptr %i.ey, ptr %i.dc, align 8
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.es
  store ptr %i.ez, ptr %i.br, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.ad
  %i.fa = load ptr, ptr %i.co, align 8            ; 5 uses
  %i.fb = load double, ptr %i.fa, align 8
  %i.fc = fcmp ult double %i.eg, %i.fb
  br i1 %i.fc, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backERKS0_.exit
  %i.fd = load ptr, ptr %i.a, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -40
  %.not188 = icmp eq ptr %i.fa, %i.fg
  br i1 %.not188, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 40 ; 2 uses
  store ptr %i.fh, ptr %i.co, align 8
  br label %bb.al

.loopexit192:                                     ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp, %.loopexit192
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit192 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ba

bb.ak:                                            ; preds = %bb.ah
  store i8 1, ptr %i.da, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backERKS0_.exit
  %i.fi = phi ptr [ %i.fh, %bb.ai ], [ %i.fa, %bb.ak ], [ %i.fa, %_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backERKS0_.exit ]
  %i.fj = load ptr, ptr %i.cs, align 8            ; 5 uses
  %i.fk = load double, ptr %i.fj, align 8
  %i.fl = fcmp ult double %i.eg, %i.fk
  br i1 %i.fl, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fm = load ptr, ptr %i.b, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -40
  %.not189 = icmp eq ptr %i.fj, %i.fp
  br i1 %.not189, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 40 ; 2 uses
  store ptr %i.fq, ptr %i.cs, align 8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 1, ptr %i.cz, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.al
  %i.fr = phi ptr [ %i.fq, %bb.an ], [ %i.fj, %bb.ao ], [ %i.fj, %bb.al ]
  %i.fs = load ptr, ptr %i.cw, align 8            ; 5 uses
  %i.ft = load double, ptr %i.fs, align 8
  %i.fu = fcmp ult double %i.eg, %i.ft
  br i1 %i.fu, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fv = load ptr, ptr %i.c, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -40
  %.not190 = icmp eq ptr %i.fs, %i.fy
  br i1 %.not190, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 40 ; 2 uses
  store ptr %i.fz, ptr %i.cw, align 8
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  store i8 1, ptr %i.cy, align 2
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.ap
  %i.ga = phi ptr [ %i.fz, %bb.ar ], [ %i.fs, %bb.as ], [ %i.fs, %bb.ap ]
  %i.gb = load i8, ptr %i.da, align 8, !range !34, !noundef !5 ; 2 uses
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = load i8, ptr %i.cz, align 1, !range !34 ; 2 uses
  %i.ge = trunc nuw i8 %i.gd to i1
  %or.cond56 = select i1 %i.gc, i1 %i.ge, i1 false
  %i.gf = load i8, ptr %i.cy, align 2, !range !34 ; 2 uses
  %i.gg = trunc nuw i8 %i.gf to i1
  %or.cond58 = select i1 %or.cond56, i1 %i.gg, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br i1 %or.cond58, label %bb.au, label %bb.p

bb.au:                                            ; preds = %bb.at
  %i.gh = load i32, ptr %i.d, align 4
  %i.gi = and i32 %i.gh, 2
  %.not49 = icmp eq i32 %i.gi, 0
  br i1 %.not49, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gj = load ptr, ptr %1, align 8               ; 2 uses
  %i.gk = load ptr, ptr %i.dc, align 8
  %.not191199 = icmp eq ptr %i.gj, %i.gk
  br i1 %.not191199, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.av
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.aw
  %.sroa.0120.0200 = phi ptr [ %i.gj, %.lr.ph ], [ %i.gp, %bb.aw ] ; 3 uses
  %i.gm = load double, ptr %i.gl, align 8
  %i.gn = load double, ptr %.sroa.0120.0200, align 8
  %i.go = fsub double %i.gn, %i.gm
  store double %i.go, ptr %.sroa.0120.0200, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0120.0200, i64 24 ; 2 uses
  %i.gq = load ptr, ptr %i.dc, align 8
  %.not191 = icmp eq ptr %i.gp, %i.gq
  br i1 %.not191, label %.loopexit, label %bb.aw, !llvm.loop !35

.loopexit:                                        ; preds = %bb.aw, %bb.av, %bb.au
  %i.gr = load ptr, ptr %i.g, align 16            ; 3 uses
  %.not.i.i.i.i109 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i109, label %_ZN6Assimp3LWO8EnvelopeD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.gt = load ptr, ptr %i.gs, align 16
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gr to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gw) #19
  br label %_ZN6Assimp3LWO8EnvelopeD2Ev.exit

_ZN6Assimp3LWO8EnvelopeD2Ev.exit:                 ; preds = %.loopexit, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.gx = load ptr, ptr %i.f, align 16            ; 3 uses
  %.not.i.i.i.i110 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i110, label %_ZN6Assimp3LWO8EnvelopeD2Ev.exit111, label %bb.ay

bb.ay:                                            ; preds = %_ZN6Assimp3LWO8EnvelopeD2Ev.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gz = load ptr, ptr %i.gy, align 16
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gx to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hc) #19
  br label %_ZN6Assimp3LWO8EnvelopeD2Ev.exit111

_ZN6Assimp3LWO8EnvelopeD2Ev.exit111:              ; preds = %_ZN6Assimp3LWO8EnvelopeD2Ev.exit, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.hd = load ptr, ptr %i.e, align 16            ; 3 uses
  %.not.i.i.i.i112 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i112, label %_ZN6Assimp3LWO8EnvelopeD2Ev.exit113, label %bb.az

bb.az:                                            ; preds = %_ZN6Assimp3LWO8EnvelopeD2Ev.exit111
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.hf = load ptr, ptr %i.he, align 16
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.hd to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hi) #19
  br label %_ZN6Assimp3LWO8EnvelopeD2Ev.exit113

_ZN6Assimp3LWO8EnvelopeD2Ev.exit113:              ; preds = %_ZN6Assimp3LWO8EnvelopeD2Ev.exit111, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void

bb.ba:                                            ; preds = %bb.s, %bb.aj, %bb.i
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %lpad.phi, %bb.aj ], [ %i.dx, %bb.s ]
  %i.hj = load ptr, ptr %i.g, align 16            ; 3 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i114, label %_ZN6Assimp3LWO8EnvelopeD2Ev.exit115, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.hl = load ptr, ptr %i.hk, align 16
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.ho) #19
  br label %_ZN6Assimp3LWO8EnvelopeD2Ev.exit115

_ZN6Assimp3LWO8EnvelopeD2Ev.exit115:              ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.hp = load ptr, ptr %i.f, align 16            ; 3 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i116, label %_ZN6Assimp3LWO8EnvelopeD2Ev.exit117, label %bb.bc

bb.bc:                                            ; preds = %_ZN6Assimp3LWO8EnvelopeD2Ev.exit115
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 32
end_hunk_0
