inline.NumInlined: 3054
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 704
loop-unroll.NumUnrolled: 778
begin_hunk_0_@_ZN6cvtest16initUndistortMapERKN2cv3MatES3_S3_S3_NS0_5Size_IiEERS1_S6_i:bb.a
          to label %bb.bm unwind label %bb.v

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.dv, label %bb.cb, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !1336 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 3
  br i1 %i.dy, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.108, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc250 unwind label %bb.bt

.noexc250:                                        ; preds = %bb.bo
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.109, i32 noundef 109) #31
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %.noexc250
  unreachable

bb.bq:                                            ; preds = %.noexc250
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241: ; preds = %bb.bq
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !16
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.body

bb.br:                                            ; preds = %bb.bn
  %or.cond348.not = icmp eq i32 %i.dx, 2
  br i1 %or.cond348.not, label %bb.bs, label %.thread327

bb.bs:                                            ; preds = %bb.br
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !17
  %i.ei = load i32, ptr %i.ef, align 4, !tbaa !17
  %i.ej = icmp eq i32 %i.eh, 3
  %i.ek = icmp eq i32 %i.ei, 3
  %i.el = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %i.el, label %bb.by, label %.thread327

bb.bt:                                            ; preds = %bb.bo
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread327:                                       ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.85, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %.thread327
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @__func__._ZN6cvtest16initUndistortMapERKN2cv3MatES3_S3_S3_NS0_5Size_IiEERS1_S6_i, ptr noundef nonnull @.str.35, i32 noundef 3287) #31
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %.thread327
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

bb.bx:                                            ; preds = %bb.bu
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %34, align 8, !tbaa !19   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.bx
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !16
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254, %bb.bw
  %.pn127 = phi { ptr, i32 } [ %i.en, %bb.bw ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %i.eo, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br label %.body

bb.by:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.eu = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i64 0, ptr %i.ev, align 8
  store i32 33619968, ptr %36, align 8, !tbaa !33
  store ptr %19, ptr %i.eu, align 8, !tbaa !36
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %36, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.ce

bb.ca:                                            ; preds = %bb.by
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %.body

bb.cb:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  %i.ex = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i64 0, ptr %i.ey, align 8
  store i32 33619968, ptr %37, align 8, !tbaa !33
  store ptr %19, ptr %i.ex, align 8, !tbaa !36
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  br label %.body

bb.ce:                                            ; preds = %bb.cc, %bb.bz
  %i.fa = load double, ptr %i.a, align 16, !tbaa !31
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fd = load double, ptr %i.fc, align 16, !tbaa !31
  %i.fe = load <2 x double>, ptr %i.fb, align 16, !tbaa !31 ; 2 uses
  %i.ff = load <2 x double>, ptr %i.d, align 16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.fh = load double, ptr %i.fg, align 16, !tbaa !31
  %i.fi = insertelement <2 x double> %i.ff, double %i.fh, i64 1
  %i.fj = fdiv <2 x double> splat (double 1.000000e+00), %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fl = load double, ptr %i.fk, align 16, !tbaa !31
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !31
  %i.fo = icmp sgt i32 %.sroa.4.0.extract.trunc, 0
  br i1 %i.fo, label %.preheader.lr.ph, label %._crit_edge351.split

.preheader.lr.ph:                                 ; preds = %bb.ce
  %i.fp = icmp sgt i32 %.sroa.075.0.extract.trunc, 0
  %i.fq = load <4 x double>, ptr %i.c, align 16   ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.fs = load double, ptr %i.fr, align 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.fu = load double, ptr %i.ft, align 8
  %i.fv = load double, ptr %i.f, align 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fz = load double, ptr %i.fy, align 16        ; 2 uses
  %i.ga = fmul double %i.fz, 2.000000e+00
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gc = load double, ptr %i.fw, align 8
  %i.gd = load double, ptr %i.b, align 16
  %i.ge = load <2 x double>, ptr %i.gb, align 8   ; 2 uses
  %i.gf = load double, ptr %i.fx, align 16
  %i.gg = extractelement <2 x double> %i.ge, i64 0
  %i.gh = fmul double %i.gg, 2.000000e+00
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = icmp slt i32 %i.gj, 2
  %i.gl = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = icmp slt i32 %i.gp, 2
  %i.gr = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %16, i64 128
  br i1 %i.fp, label %.preheader.preheader, label %._crit_edge351.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.gu = load <2 x double>, ptr %i.e, align 16
  %wide.trip.count = and i64 %4, 2147483647
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gw = shufflevector <4 x double> %i.fq, <4 x double> %i.gv, <2 x i32> <i32 1, i32 4>
  %i.gx = extractelement <2 x double> %i.fj, i64 1
  %i.gy = shufflevector <4 x double> %i.fq, <4 x double> %i.gv, <2 x i32> <i32 2, i32 5>
  %i.gz = shufflevector <4 x double> %i.fq, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %40 = insertelement <2 x double> %i.fe, double %i.fa, i64 1
  %41 = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ha = insertelement <2 x double> %41, double %i.fd, i64 1
  %i.hb = extractelement <2 x double> %i.fj, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv353 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next354, %._crit_edge ] ; 4 uses
  %i.hc = trunc nuw nsw i64 %indvars.iv353 to i32
  %i.hd = uitofp nneg i32 %i.hc to double
  %i.he = fsub double %i.hd, %i.fn
  %i.hf = fmul double %i.gx, %i.he                ; 2 uses
  %i.hg = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hi = fmul <2 x double> %i.hh, %i.gw
  %i.hj = fmul double %i.hf, %i.fu
  br label %bb.cf

._crit_edge:                                      ; preds = %bb.cf
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %exitcond357.not = icmp eq i64 %indvars.iv.next354, %.sroa.4.0.extract.shift
  br i1 %exitcond357.not, label %._crit_edge351.split, label %.preheader, !llvm.loop !3505

bb.cf:                                            ; preds = %.preheader, %bb.cf
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.cf ] ; 4 uses
  %i.hk = trunc nuw nsw i64 %indvars.iv to i32
  %i.hl = uitofp nneg i32 %i.hk to double
  %i.hm = fsub double %i.hl, %i.fl
  %i.hn = fmul double %i.hb, %i.hm                ; 2 uses
  %i.ho = call double @llvm.fmuladd.f64(double %i.fs, double %i.hn, double %i.hj)
  %i.hp = fadd double %i.fv, %i.ho
  %i.hq = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.hr, <2 x double> %i.hi)
  %i.ht = fadd <2 x double> %i.gy, %i.hs
  %i.hu = insertelement <2 x double> poison, double %i.hp, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fdiv <2 x double> %i.ht, %i.hv          ; 5 uses
  %i.hx = fmul <2 x double> %i.hw, %i.hw          ; 3 uses
  %i.hy = extractelement <2 x double> %i.hx, i64 1 ; 2 uses
  %i.hz = extractelement <2 x double> %i.hw, i64 0 ; 3 uses
  %42 = fmul double %i.hz, %i.ga
  %43 = extractelement <2 x double> %i.hw, i64 1  ; 2 uses
  %44 = fmul double %43, %42
  %i.ia = extractelement <2 x double> %i.hx, i64 0
  %45 = fadd double %i.ia, %i.hy                  ; 5 uses
  %46 = call double @llvm.fmuladd.f64(double %i.gf, double %45, double %i.gc)
  %47 = call double @llvm.fmuladd.f64(double %46, double %45, double %i.gd)
  %i.ib = insertelement <2 x double> %i.hx, double %47, i64 1
  %i.ic = insertelement <2 x double> <double 2.000000e+00, double poison>, double %45, i64 1
  %i.id = insertelement <2 x double> <double poison, double 1.000000e+00>, double %45, i64 0
  %i.ie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.ic, <2 x double> %i.id) ; 2 uses
  %i.if = fmul double %i.hz, %i.gh
  %i.ig = fmul double %43, %i.if
  %i.ih = extractelement <2 x double> %i.ie, i64 1
  %i.ii = call double @llvm.fmuladd.f64(double %i.hz, double %i.ih, double %44)
  %i.ij = shufflevector <2 x double> %i.ge, <2 x double> %i.hw, <2 x i32> <i32 0, i32 3>
  %i.ik = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.il = insertelement <2 x double> %i.ik, double %i.ig, i64 1
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.ie, <2 x double> %i.il) ; 2 uses
  %48 = call double @llvm.fmuladd.f64(double %i.hy, double 2.000000e+00, double %45)
  %i.in = extractelement <2 x double> %i.im, i64 1
  %49 = call double @llvm.fmuladd.f64(double %i.fz, double %48, double %i.in)
  %i.io = load i64, ptr %i.gn, align 8
  %i.ip = mul i64 %i.io, %indvars.iv353
  %.sink.idx.i = select i1 %i.gk, i64 0, i64 %i.ip
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.sink.idx.i
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv
  %50 = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ir = insertelement <2 x double> %50, double %49, i64 0
  %i.is = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> %40, <2 x double> %i.ha)
  %i.it = fptrunc <2 x double> %i.is to <2 x float> ; 2 uses
  %i.iu = extractelement <2 x float> %i.it, i64 0
  store float %i.iu, ptr %i.iq, align 4, !tbaa !203
  %i.iv = load i64, ptr %i.gt, align 8
  %i.iw = mul i64 %i.iv, %indvars.iv353
  %.sink.idx.i257 = select i1 %i.gq, i64 0, i64 %i.iw
  %.sink.i258 = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sink.idx.i257
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.sink.i258, i64 %indvars.iv
  %i.iy = extractelement <2 x float> %i.it, i64 1
  store float %i.iy, ptr %i.ix, align 4, !tbaa !203
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.cf, !llvm.loop !3506

._crit_edge351.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #30
  %i.iz = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %38, i64 16
  store i64 0, ptr %i.ja, align 8
  store i32 33619968, ptr %38, align 8, !tbaa !33
  store ptr %5, ptr %i.iz, align 8, !tbaa !36
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(24) %38, i32 noundef %7, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %._crit_edge351.split
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #30
  %i.jb = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i64 0, ptr %i.jc, align 8
  store i32 33619968, ptr %39, align 8, !tbaa !33
  store ptr %6, ptr %i.jb, align 8, !tbaa !36
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(24) %39, i32 noundef %7, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  ret void

bb.ci:                                            ; preds = %._crit_edge351.split
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  br label %.body

bb.cj:                                            ; preds = %bb.cg
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #30
  br label %.body

.body:                                            ; preds = %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i226, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.w, %bb.cj, %bb.ci, %bb.cd, %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %bb.ar, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.v
  %.pn135.pn = phi { ptr, i32 } [ %i.je, %bb.cj ], [ %i.jd, %bb.ci ], [ %i.ez, %bb.cd ], [ %i.ew, %bb.ca ], [ %.pn127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i226 ], [ %i.ay, %bb.v ], [ %.pn123.pn.pn, %bb.bk ], [ %.pn119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i210 ], [ %i.cl, %bb.ar ], [ %i.ck, %bb.aq ], [ %.pn113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %i.az, %bb.w ], [ %.pn111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bx, %bb.ag ], [ %i.dd, %bb.ba ], [ %i.em, %bb.bt ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #30
  br label %bb.ck

bb.ck:                                            ; preds = %.body, %bb.u
  %.pn135.pn.pn = phi { ptr, i32 } [ %.pn135.pn, %.body ], [ %i.ax, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #30
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.t
  %.pn135.pn.pn.pn = phi { ptr, i32 } [ %.pn135.pn.pn, %bb.ck ], [ %i.aw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #30
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.s
  %.pn135.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn135.pn.pn.pn, %bb.cl ], [ %i.av, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #30
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.r
  %.pn135.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn135.pn.pn.pn.pn, %bb.cm ], [ %i.au, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #30
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.q
  %.pn135.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn135.pn.pn.pn.pn.pn, %bb.cn ], [ %i.at, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  resume { ptr, i32 } %.pn135.pn.pn.pn.pn.pn.pn
}

declare noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #10

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6cvtestlsERSoRKNS_7MatInfoE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !3507   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.a)
  br i1 %i.b, label %bb.c, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.86, i64 noundef 7) ; 0 uses
  br label %.loopexit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !3507
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45
  %i.f = and i32 %i.e, 31
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6cvtestlsERSoRKNS_7MatInfoEE8depthstr, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #30
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.i, i64 noundef %i.j) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.89, i64 noundef 1) ; 0 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !3507
  %i.n = load i32, ptr %i.m, align 8, !tbaa !45
  %i.o = lshr i32 %i.n, 5
  %i.p = and i32 %i.o, 127
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.q) ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.90, i64 noundef 1) ; 0 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !3507
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1303
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.91, i64 noundef 6) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !3507   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1303
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNK2cv8MatShapeixEm.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 4 uses
  %i.ac = phi ptr [ %i.ba, %_ZNK2cv8MatShapeixEm.exit ], [ %i.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1336
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 1)
  %i.af = zext nneg i32 %narrow.i to i64
  %i.ag = icmp samesign ult i64 %indvars.iv, %i.af
  br i1 %i.ag, label %_ZNK2cv8MatShapeixEm.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.109, i32 noundef 103) #31
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.ah

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 84
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !17
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ap)
  %i.ar = load ptr, ptr %1, align 8, !tbaa !3507
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1303
  %i.au = add nsw i32 %i.at, -1
  %i.av = sext i32 %i.au to i64
end_hunk_0
