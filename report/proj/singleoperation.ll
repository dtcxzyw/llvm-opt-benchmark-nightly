Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/singleoperation?download=true
inline.NumInlined: 4365
inline.NumDeleted: 1439
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5osgeo4proj9operation15SingleOperation15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEEb:bb.a

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i312: ; preds = %bb.y
  %i.cm = load atomic i32, ptr %i.cg monotonic, align 8, !noalias !394
  %.not.i.i.i.i313 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i.i313, label %.thread425, label %_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv.exit315

_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv.exit315: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i312
  %i.cn = load ptr, ptr %i.cd, align 8, !tbaa !45, !noalias !394 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.thread425, label %bb.z

bb.z:                                             ; preds = %_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv.exit315
  %i.cp = tail call ptr @__dynamic_cast(ptr nonnull %i.cn, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs11GeodeticCRSE, i64 -1) #44
  br label %.thread425

.thread425:                                       ; preds = %_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv.exit315, %bb.z, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i312
  %i.cq = phi ptr [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i312 ], [ null, %_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv.exit315 ], [ %i.cp, %bb.z ] ; 2 uses
  %i.cr = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4294967297
  %i.ct = trunc i64 %i.cr to i32                  ; 2 uses
  br i1 %i.cs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread425
  store i32 0, ptr %i.cg, align 8, !tbaa !65
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.cu, align 4, !tbaa !67
  %i.cv = load ptr, ptr %i.cf, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  tail call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #44, !inline_history !94
  %i.cy = load ptr, ptr %i.cf, align 8, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #44, !inline_history !94
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320

bb.ab:                                            ; preds = %.thread425
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i317 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i317, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cg, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318

bb.ad:                                            ; preds = %bb.ab
  %i.dd = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i319 = phi i32 [ %i.ct, %bb.ac ], [ %i.dd, %bb.ad ]
  %i.de = icmp eq i32 %.0.i.i.i.i319, 1
  br i1 %i.de, label %bb.ae, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320, !prof !69

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #44
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i318, %bb.ae
  %i.df = icmp ne ptr %i.bw, null
  %i.dg = icmp ne ptr %i.cq, null
  %or.cond24 = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond24, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320
  %i.dh = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs11GeodeticCRS9ellipsoidEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #49
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !397
  %i.dj = tail call noundef zeroext i1 @_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv(ptr noundef nonnull align 8 dereferenceable(64) %i.di) #49
  br i1 %i.dj, label %.split, label %bb.ag

.split:                                           ; preds = %bb.af
  %i.dk = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs11GeodeticCRS9ellipsoidEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #49
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !397
  %i.dm = tail call noundef zeroext i1 @_ZNK5osgeo4proj5datum9Ellipsoid8isSphereEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dl) #49
  br i1 %i.dm, label %.thread434, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320.thread

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320, %bb.af, %bb.l, %bb.f
  br i1 %i.ab, label %.thread434, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320.thread

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320.thread: ; preds = %bb.x, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.split, %bb.ag
  br i1 %i.t, label %bb.ah, label %.thread445

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320.thread
  switch i32 %i.n, label %"_ZZNK5osgeo4proj9operation15SingleOperation15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEEbENK3$_0clEi.exit" [
    i32 9607, label %bb.ai
    i32 9606, label %bb.ai
    i32 9603, label %bb.ai
    i32 1038, label %bb.ai
    i32 1037, label %bb.ai
    i32 1035, label %bb.ai
    i32 1033, label %bb.ai
    i32 1032, label %bb.ai
    i32 1031, label %bb.ai
    i32 1149, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah
  switch i32 %i.s, label %.thread445 [
    i32 9607, label %bb.aj
    i32 9606, label %bb.aj
    i32 9603, label %bb.aj
    i32 1038, label %bb.aj
    i32 1037, label %bb.aj
    i32 1035, label %bb.aj
    i32 1033, label %bb.aj
    i32 1032, label %bb.aj
    i32 1031, label %bb.aj
    i32 1149, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @_ZNK5osgeo4proj9operation14Transformation20getTOWGS84ParametersEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.337") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  invoke void @_ZNK5osgeo4proj9operation14Transformation20getTOWGS84ParametersEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.337") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i1 noundef zeroext true)
          to label %.preheader532 unwind label %bb.aq

.preheader532:                                    ; preds = %bb.aj
  %i.dn = load ptr, ptr %5, align 8, !tbaa !400   ; 7 uses
  %i.do = load ptr, ptr %6, align 8, !tbaa !400   ; 9 uses
  %i.dp = load double, ptr %i.dn, align 8, !tbaa !329 ; 2 uses
  %i.dq = load double, ptr %i.do, align 8, !tbaa !329
  %i.dr = fsub double %i.dp, %i.dq
  %i.ds = call double @llvm.fabs.f64(double %i.dr)
  %i.dt = call double @llvm.fabs.f64(double %i.dp)
  %i.du = fmul double %i.dt, 1.000000e-10
  %i.dv = fcmp ule double %i.ds, %i.du
  br i1 %i.dv, label %bb.ak, label %_ZNSt6vectorIdSaIdEED2Ev.exit324

bb.ak:                                            ; preds = %.preheader532
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !329 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !329
  %i.ea = fsub double %i.dx, %i.dz
  %i.eb = call double @llvm.fabs.f64(double %i.ea)
  %i.ec = call double @llvm.fabs.f64(double %i.dx)
  %i.ed = fmul double %i.ec, 1.000000e-10
  %i.ee = fcmp ule double %i.eb, %i.ed
  br i1 %i.ee, label %bb.al, label %_ZNSt6vectorIdSaIdEED2Ev.exit324

bb.al:                                            ; preds = %bb.ak
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !329 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !329
  %i.ej = fsub double %i.eg, %i.ei
  %i.ek = call double @llvm.fabs.f64(double %i.ej)
  %i.el = call double @llvm.fabs.f64(double %i.eg)
  %i.em = fmul double %i.el, 1.000000e-10
  %i.en = fcmp ule double %i.ek, %i.em
  br i1 %i.en, label %bb.am, label %_ZNSt6vectorIdSaIdEED2Ev.exit324

bb.am:                                            ; preds = %bb.al
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !329 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.er = load double, ptr %i.eq, align 8, !tbaa !329
  %i.es = fsub double %i.ep, %i.er
  %i.et = call double @llvm.fabs.f64(double %i.es)
  %i.eu = call double @llvm.fabs.f64(double %i.ep)
  %i.ev = fmul double %i.eu, 1.000000e-10
  %i.ew = fcmp ule double %i.et, %i.ev
  br i1 %i.ew, label %bb.an, label %_ZNSt6vectorIdSaIdEED2Ev.exit324

bb.an:                                            ; preds = %bb.am
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !329 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !329
  %i.fb = fsub double %i.ey, %i.fa
  %i.fc = call double @llvm.fabs.f64(double %i.fb)
  %i.fd = call double @llvm.fabs.f64(double %i.ey)
  %i.fe = fmul double %i.fd, 1.000000e-10
  %i.ff = fcmp ule double %i.fc, %i.fe
  br i1 %i.ff, label %bb.ao, label %_ZNSt6vectorIdSaIdEED2Ev.exit324

bb.ao:                                            ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !329 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !329
  %i.fk = fsub double %i.fh, %i.fj
  %i.fl = call double @llvm.fabs.f64(double %i.fk)
  %i.fm = call double @llvm.fabs.f64(double %i.fh)
  %i.fn = fmul double %i.fm, 1.000000e-10
  %i.fo = fcmp ule double %i.fl, %i.fn
  br i1 %i.fo, label %bb.ap, label %_ZNSt6vectorIdSaIdEED2Ev.exit324

bb.ap:                                            ; preds = %bb.ao
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !329 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !329
  %i.ft = fsub double %i.fq, %i.fs
  %i.fu = call double @llvm.fabs.f64(double %i.ft)
  %i.fv = call double @llvm.fabs.f64(double %i.fq)
  %i.fw = fmul double %i.fv, 1.000000e-10
  %i.fx = fcmp ule double %i.fu, %i.fw
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit324

bb.aq:                                            ; preds = %bb.aj
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.fz = load ptr, ptr %5, align 8, !tbaa !400   ; 3 uses
  %.not.i.i.i322 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i322, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !403
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fz to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.ge) #45
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %.body

_ZNSt6vectorIdSaIdEED2Ev.exit324:                 ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %.preheader532
  %.lcssa594 = phi i1 [ false, %bb.ao ], [ false, %.preheader532 ], [ false, %bb.ak ], [ %i.fx, %bb.ap ], [ false, %bb.al ], [ false, %bb.an ], [ false, %bb.am ]
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !403
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.do to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.gj) #45
  %.pre = load ptr, ptr %5, align 8, !tbaa !400   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %.not.i.i.i325 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i325, label %_ZNSt6vectorIdSaIdEED2Ev.exit326, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit324
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !403
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %.pre to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.go) #45
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit326

_ZNSt6vectorIdSaIdEED2Ev.exit326:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit324, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

"_ZZNK5osgeo4proj9operation15SingleOperation15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEEbENK3$_0clEi.exit": ; preds = %bb.ah
  %i.gp = icmp eq i32 %i.n, 9801
  %i.gq = icmp eq i32 %i.s, 9802
  %or.cond26 = and i1 %i.gp, %i.gq
  br i1 %or.cond26, label %bb.at, label %bb.au

bb.at:                                            ; preds = %"_ZZNK5osgeo4proj9operation15SingleOperation15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEEbENK3$_0clEi.exit"
  %i.gr = load ptr, ptr %0, align 8, !tbaa !8
  %i.gs = getelementptr i8, ptr %i.gr, i64 -24
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = getelementptr i8, ptr %0, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = tail call noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %i.gv, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.au:                                            ; preds = %"_ZZNK5osgeo4proj9operation15SingleOperation15_isEquivalentToEPKNS0_4util11IComparableENS4_9CriterionERKSt10shared_ptrINS0_2io15DatabaseContextEEbENK3$_0clEi.exit"
  %i.ha = icmp eq i32 %i.n, 9804
  %i.hb = icmp eq i32 %i.s, 9805
  %or.cond28 = and i1 %i.ha, %i.hb
  br i1 %or.cond28, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hc = icmp eq i32 %i.n, 9805
  %i.hd = icmp eq i32 %i.s, 9804
  %or.cond30 = and i1 %i.hc, %i.hd
  br i1 %or.cond30, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.he = icmp eq i32 %i.n, 9802
  %i.hf = icmp eq i32 %i.s, 9801
  %or.cond32 = and i1 %i.he, %i.hf
  br i1 %or.cond32, label %bb.ax, label %.thread445

bb.ax:                                            ; preds = %bb.au, %bb.av, %bb.aw
  %i.hg = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN5osgeo4proj9operation15SingleOperationE, ptr nonnull @_ZTIN5osgeo4proj9operation10ConversionE, i64 0) #44 ; 2 uses
  %.not281 = icmp eq ptr %i.hg, null
  br i1 %.not281, label %.thread445, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  call void @_ZNK5osgeo4proj9operation10Conversion20convertToOtherMethodEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.122") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.hg, i32 noundef %i.s)
  %i.hh = load ptr, ptr %7, align 8, !tbaa !193   ; 3 uses
  %.not525 = icmp eq ptr %i.hh, null              ; 2 uses
  br i1 %.not525, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = invoke noundef zeroext i1 %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj9operation10ConversionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br label %.body

bb.bb:                                            ; preds = %bb.ay, %bb.az
  %.2249 = phi i1 [ %i.hl, %bb.az ], [ undef, %bb.ay ]
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !41 ; 8 uses
  %.not.i.i327 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i327, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 4 uses
  %i.hq = load atomic i64, ptr %i.hp acquire, align 8 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 4294967297
  %i.hs = trunc i64 %i.hq to i32                  ; 2 uses
  br i1 %i.hr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.hp, align 8, !tbaa !65
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store i32 0, ptr %i.ht, align 4, !tbaa !67
  %i.hu = load ptr, ptr %i.ho, align 8, !tbaa !8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #44, !inline_history !211
  %i.hx = load ptr, ptr %i.ho, align 8, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #44, !inline_history !211
  br label %bb.bi

bb.be:                                            ; preds = %bb.bc
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i328 = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i.i328, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ib = add nsw i32 %i.hs, -1
  store i32 %i.ib, ptr %i.hp, align 8, !tbaa !57
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i329

bb.bg:                                            ; preds = %bb.be
  %i.ic = atomicrmw volatile add ptr %i.hp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i329

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i329: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i330 = phi i32 [ %i.hs, %bb.bf ], [ %i.ic, %bb.bg ]
  %i.id = icmp eq i32 %.0.i.i.i.i330, 1
  br i1 %i.id, label %bb.bh, label %bb.bi, !prof !69

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i329
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #44
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i329, %bb.bd, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br i1 %.not525, label %.thread445, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

.thread445:                                       ; preds = %bb.ai, %bb.ax, %bb.aw, %bb.bi, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320.thread
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

.thread434:                                       ; preds = %bb.e, %.split, %bb.ag
  %i.ie = load ptr, ptr %i.j, align 8, !tbaa !354 ; 5 uses
  %i.if = load ptr, ptr %i.o, align 8, !tbaa !354 ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !356 ; 3 uses
  %i.ii = load ptr, ptr %i.ie, align 8, !tbaa !359 ; 3 uses
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = ashr exact i64 %i.il, 4                 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !356 ; 2 uses
  %i.ip = load ptr, ptr %i.if, align 8, !tbaa !359 ; 2 uses
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = ashr exact i64 %i.is, 4                 ; 4 uses
  br i1 %i.d, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.thread434
  %.not300 = icmp eq i64 %i.im, %i.it
  br i1 %.not300, label %.preheader, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

.preheader:                                       ; preds = %bb.bj
  %.not301573 = icmp eq ptr %i.ih, %i.ii
  br i1 %.not301573, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %.lr.ph575

.lr.ph575:                                        ; preds = %.preheader, %.lr.ph575
  %.0213574 = phi i64 [ %i.jg, %.lr.ph575 ], [ 0, %.preheader ] ; 3 uses
  %i.iu = load ptr, ptr %i.ie, align 8, !tbaa !359
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %.0213574
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !365 ; 2 uses
  %i.ix = load ptr, ptr %i.if, align 8, !tbaa !359
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %.0213574
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !365 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, null
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %spec.select33 = select i1 %i.ja, ptr null, ptr %i.jb
  %i.jc = load ptr, ptr %i.iw, align 8, !tbaa !8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = tail call noundef zeroext i1 %i.je(ptr noundef nonnull align 8 dereferenceable(48) %i.iw, ptr noundef %spec.select33, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.jg = add nuw i64 %.0213574, 1                ; 2 uses
  %exitcond596.not = icmp ne i64 %i.jg, %i.im
  %or.cond.not = select i1 %i.jf, i1 %exitcond596.not, i1 false
  br i1 %or.cond.not, label %.lr.ph575, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, !llvm.loop !404

bb.bk:                                            ; preds = %.thread434
  %.not.i.i331 = icmp eq ptr %i.io, %i.ip         ; 2 uses
  br i1 %.not.i.i331, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jh = add nsw i64 %i.it, 63                   ; 2 uses
  %i.ji = lshr i64 %i.jh, 3
  %i.jj = and i64 %i.ji, 2305843009213693944
  %i.jk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jj) #46 ; 3 uses
end_hunk_0
