Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pinhole?download=true
inline.NumInlined: 224
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv15undistortPointsERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_S2_S2_NS_12TermCriteriaE:bb.a
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337.i: ; preds = %bb.bp
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !28
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.i: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337.i, %bb.bo
  %.pn285.i = phi { ptr, i32 } [ %i.dm, %bb.bo ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337.i ], [ %i.dn, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %bb.fk

bb.bq:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.du, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !20
  store ptr %11, ptr %i.dt, align 8, !tbaa !11
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br i1 %i.cc, label %bb.cp, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.dv = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !74 ; 3 uses
  %i.dx = icmp eq i32 %i.dw, 1
  %.phi.trans.insert415.i = getelementptr inbounds nuw i8, ptr %42, i64 12
  %.pre416.i = load i32, ptr %.phi.trans.insert415.i, align 4, !tbaa !71 ; 2 uses
  br i1 %i.dx, label %._crit_edge414.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dy = icmp eq i32 %.pre416.i, 1
  br i1 %i.dy, label %._crit_edge414.i, label %bb.bv

._crit_edge414.i:                                 ; preds = %bb.bt, %bb.bs
  %i.dz = phi i32 [ 1, %bb.bt ], [ %.pre416.i, %bb.bs ] ; 2 uses
  %i.ea = mul nsw i32 %i.dz, %i.dw
  switch i32 %i.ea, label %bb.bv [
    i32 4, label %bb.ca
    i32 5, label %bb.ca
    i32 8, label %bb.ca
    i32 12, label %bb.ca
    i32 14, label %bb.ca
  ]

bb.bu:                                            ; preds = %bb.bq
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %bb.fk

bb.bv:                                            ; preds = %._crit_edge414.i, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cvL23undistortPointsInternalERKNS_3MatERS0_S2_S2_S2_S2_NS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 134) #14
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  unreachable

bb.by:                                            ; preds = %bb.bv
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i

bb.bz:                                            ; preds = %bb.bw
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load ptr, ptr %19, align 8, !tbaa !27   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.i: ; preds = %bb.bz
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !28
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.i, %bb.by
  %.pn289.i = phi { ptr, i32 } [ %i.ec, %bb.by ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.i ], [ %i.ed, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.fk

bb.ca:                                            ; preds = %._crit_edge414.i, %._crit_edge414.i, %._crit_edge414.i, %._crit_edge414.i, %._crit_edge414.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  %i.ej = load i32, ptr %42, align 8, !tbaa !19
  %i.ek = and i32 %i.ej, 4064
  %i.el = or disjoint i32 %i.ek, 6
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef %i.dw, i32 noundef %i.dz, i32 noundef %i.el, ptr noundef nonnull %i.c, i64 noundef 0)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.em = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.cc unwind label %bb.cf     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  %i.en = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 0, ptr %i.eo, align 8
  store i32 33619968, ptr %22, align 8, !tbaa !20
  store ptr %12, ptr %i.en, align 8, !tbaa !11
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !21
  %i.er = icmp eq ptr %i.eq, %i.c
  br i1 %i.er, label %bb.cn, label %bb.ci

bb.ce:                                            ; preds = %bb.ca
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cb
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #13
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pn291.i = phi { ptr, i32 } [ %i.et, %bb.cf ], [ %i.es, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.fk

bb.ch:                                            ; preds = %bb.cc
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  br label %bb.fk

bb.ci:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.cj unwind label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZN2cvL23undistortPointsInternalERKNS_3MatERS0_S2_S2_S2_S2_NS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 139) #14
          to label %bb.ck unwind label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  unreachable

bb.cl:                                            ; preds = %bb.ci
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i

bb.cm:                                            ; preds = %bb.cj
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %23, align 8, !tbaa !27   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343.i: ; preds = %bb.cm
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !28
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343.i, %bb.cl
  %.pn295.i = phi { ptr, i32 } [ %i.ev, %bb.cl ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343.i ], [ %i.ew, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  br label %bb.fk

bb.cn:                                            ; preds = %bb.cd
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.fd = load double, ptr %i.fc, align 16, !tbaa !23 ; 5 uses
  %i.fe = fcmp une double %i.fd, 0.000000e+00
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.fg = load double, ptr %i.ff, align 8         ; 5 uses
  %i.fh = fcmp une double %i.fg, 0.000000e+00
  %or.cond.i = select i1 %i.fe, i1 true, i1 %i.fh
  br i1 %or.cond.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.fi = call double @cos(double noundef %i.fd) #13 ; 5 uses
  %i.fj = call double @sin(double noundef %i.fd) #13 ; 4 uses
  %i.fk = call double @cos(double noundef %i.fg) #13 ; 5 uses
  %i.fl = call double @sin(double noundef %i.fg) #13 ; 4 uses
  %i.fm = fneg double %i.fj                       ; 2 uses
  %i.fn = fneg double %i.fl                       ; 2 uses
  %i.fo = fadd double %i.fk, 0.000000e+00
  %i.fp = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.fn, i64 0
  %i.fq = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fi, i64 1
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> zeroinitializer, <2 x double> %i.fr) ; 3 uses
  %i.ft = fadd double %i.fi, 0.000000e+00
  %i.fu = fadd double %i.fj, 0.000000e+00
  %i.fv = fadd double %i.fl, 0.000000e+00
  %i.fw = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fx = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.fy = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.fm, i64 1
  %i.fz = call double @cos(double noundef %i.fd) #13 ; 4 uses
  %i.ga = fadd double %i.fz, 0.000000e+00
  %i.gb = call double @sin(double noundef %i.fd) #13 ; 5 uses
  %i.gc = fneg double %i.gb                       ; 2 uses
  %i.gd = fadd double %i.gb, 0.000000e+00
  %i.ge = insertelement <2 x double> poison, double %i.fz, i64 0 ; 2 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = call double @cos(double noundef %i.fg) #13 ; 3 uses
  %i.gh = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.fi, i64 0
  %i.gi = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.gg, i64 1
  %i.gk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> zeroinitializer, <2 x double> %i.gj) ; 3 uses
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gm = extractelement <2 x double> %i.gk, i64 0
  %i.gn = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.fk, i64 1
  %i.gp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.gq = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.fi, i64 1
  %i.gs = insertelement <2 x double> %i.gp, double %i.ft, i64 0
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> zeroinitializer, <2 x double> %i.gs) ; 4 uses
  %i.gu = shufflevector <2 x double> %i.fw, <2 x double> %i.gt, <2 x i32> <i32 0, i32 2>
  %i.gv = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.gt, <2 x i32> <i32 0, i32 2>
  %i.gw = extractelement <2 x double> %i.gt, i64 1
  %i.gx = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> zeroinitializer, <2 x double> %i.gp)
  %50 = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.ha = insertelement <2 x double> %50, double %i.fn, i64 1
  %i.hb = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.hc, <2 x double> %i.gz) ; 5 uses
  %i.he = extractelement <2 x double> %i.hd, i64 0
  %i.hf = fdiv double 1.000000e+00, %i.he         ; 7 uses
  %i.hg = extractelement <2 x double> %i.hd, i64 1
  %i.hh = fmul double %i.hg, %i.hf
  %i.hi = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hh, i64 0 ; 3 uses
  %i.hj = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.gp, <2 x i32> <i32 0, i32 2>
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.hi, <2 x double> %i.hj)
  %i.hl = fmul double %i.gm, %i.hf                ; 3 uses
  %i.hm = shufflevector <2 x double> %i.gt, <2 x double> %i.fs, <2 x i32> <i32 0, i32 2>
  %i.hn = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.hf, i64 1
  %i.ho = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.hl, i64 1
  %i.hp = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.hs = insertelement <2 x double> %i.hr, double %i.fk, i64 1
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.fy, <2 x double> %i.hk) ; 2 uses
  %i.hu = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hv = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hf, i64 0
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.hv, <2 x double> zeroinitializer)
  %i.hx = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.hf, i64 1
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.hy, <2 x double> %i.hw)
  %i.ia = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> zeroinitializer, <2 x double> %i.hz)
  %i.ic = call double @sin(double noundef %i.fg) #13 ; 4 uses
  %i.id = call double @llvm.fmuladd.f64(double %i.fl, double %i.fj, double %i.gw) ; 3 uses
  %i.ie = call double @llvm.fmuladd.f64(double %i.id, double %i.hf, double 0.000000e+00)
  %i.if = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ie, i64 0
  %i.ig = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.hn, <2 x double> %i.if)
  %i.ih = fadd <2 x double> %i.ig, <double -0.000000e+00, double 0.000000e+00>
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ij = insertelement <2 x double> poison, double %i.id, i64 0
  %i.ik = insertelement <2 x double> %i.ij, double %i.ic, i64 1
  %i.il = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %i.hi, <2 x double> zeroinitializer) ; 2 uses
  %i.im = shufflevector <2 x double> %i.fx, <2 x double> %i.il, <2 x i32> <i32 0, i32 2>
  %i.in = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.ho, <2 x double> %i.im) ; 2 uses
  %i.io = insertelement <2 x double> %i.fs, double %i.id, i64 1
  %i.ip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.iq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.hq, <2 x double> %i.ip)
  %i.ir = shufflevector <2 x double> %i.in, <2 x double> %i.ht, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.is = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> zeroinitializer, <2 x double> %i.ii)
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> zeroinitializer, <2 x double> %i.iq)
  %i.iu = fadd <2 x double> %i.ht, %i.in
  %i.iv = fadd double %i.ic, 0.000000e+00
  %i.iw = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.ix = insertelement <2 x double> %i.iw, double %i.fz, i64 1
  %i.iy = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> zeroinitializer, <2 x double> %i.iy)
  %i.ja = insertelement <4 x double> <double poison, double 0.000000e+00, double poison, double poison>, double %i.hl, i64 0
  %i.jb = insertelement <4 x double> %i.ja, double %i.fz, i64 2
  %i.jc = insertelement <4 x double> %i.jb, double %i.gc, i64 3
  %i.jd = shufflevector <2 x double> %i.iz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.je = fneg double %i.ic
  %i.jf = fadd double %i.gg, 0.000000e+00
  %i.jg = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.je, i64 0 ; 2 uses
  %i.jh = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.jf, i64 0
  %i.ji = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> zeroinitializer, <2 x double> %i.jh) ; 2 uses
  %i.jj = insertelement <2 x double> %i.hu, double %i.gg, i64 1
  %i.jk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.hi, <2 x double> zeroinitializer) ; 2 uses
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jm = insertelement <4 x double> %i.jl, double %i.iv, i64 1
  %i.jn = shufflevector <4 x double> %i.jm, <4 x double> %i.jd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gl, <4 x double> %i.jc, <4 x double> %i.jn) ; 4 uses
  %i.jp = insertelement <2 x double> %i.ge, double %i.gb, i64 1
  %i.jq = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> zeroinitializer, <2 x double> %i.jq) ; 2 uses
  %i.js = insertelement <2 x double> %i.jg, double 0.000000e+00, i64 1
  %i.jt = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ju = insertelement <2 x double> %i.jt, double %i.gd, i64 1
  %i.jv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.js, <2 x double> %i.gf, <2 x double> %i.ju) ; 3 uses
  %i.jw = extractelement <2 x double> %i.jr, i64 0
  %i.jx = call double @llvm.fmuladd.f64(double %i.ic, double %i.gb, double %i.jw)
  %i.jy = fneg <2 x double> %i.jv                 ; 3 uses
  %i.jz = extractelement <2 x double> %i.ji, i64 0
  %i.ka = call double @llvm.fmuladd.f64(double %i.jz, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.kb = shufflevector <4 x double> %i.jo, <4 x double> poison, <2 x i32> <i32 2, i32 2> ; 4 uses
  %i.kc = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ka, i64 1
  %i.kd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.ji, <2 x double> %i.kc)
  %i.ke = fadd <2 x double> %i.kd, <double 0.000000e+00, double -0.000000e+00>
  %i.kf = insertelement <2 x double> poison, double %i.jx, i64 0
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kh = insertelement <2 x double> %i.kb, double 0.000000e+00, i64 1 ; 2 uses
  %i.ki = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> %i.kh, <2 x double> zeroinitializer) ; 2 uses
  %i.kj = call double @llvm.fmuladd.f64(double %i.gc, double 0.000000e+00, double %i.ga) ; 2 uses
  %i.kk = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.kl = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.kb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> %i.km, <2 x double> %i.ki)
  %i.ko = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ko, <2 x double> %i.kh, <2 x double> zeroinitializer) ; 2 uses
  %i.kq = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.kr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> %i.km, <2 x double> %i.kp)
  %i.ks = shufflevector <4 x double> %i.jo, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> %i.ks, <2 x double> %i.ke)
  %i.ku = shufflevector <4 x double> %i.jo, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.kv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> %i.ku, <2 x double> %i.kn)
  %i.kw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> %i.kb, <2 x double> %i.kr)
  %i.kx = fadd double %i.ka, 0.000000e+00
  %i.ky = insertelement <2 x double> %i.kq, double %i.kj, i64 1
  %i.kz = shufflevector <2 x double> %i.kp, <2 x double> %i.ki, <2 x i32> <i32 1, i32 3>
  %i.la = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ky, <2 x double> zeroinitializer, <2 x double> %i.kz)
  %i.lb = shufflevector <2 x double> %i.hd, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lc = insertelement <4 x double> %i.lb, double %i.kx, i64 1
  %i.ld = shufflevector <2 x double> %i.la, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.le = shufflevector <4 x double> %i.lc, <4 x double> %i.ld, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lf = fadd <4 x double> %i.jo, %i.le
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.br
  %i.lg = phi <2 x double> [ zeroinitializer, %bb.br ], [ %i.iu, %bb.co ], [ zeroinitializer, %bb.cn ]
  %i.lh = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %bb.br ], [ %i.it, %bb.co ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.cn ]
  %i.li = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %bb.br ], [ %i.is, %bb.co ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.cn ]
  %i.lj = phi <2 x double> [ zeroinitializer, %bb.br ], [ %i.kw, %bb.co ], [ zeroinitializer, %bb.cn ]
  %i.lk = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %bb.br ], [ %i.kv, %bb.co ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.cn ]
  %i.ll = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %bb.br ], [ %i.kt, %bb.co ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.cn ]
  %i.lm = phi <4 x double> [ <double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00>, %bb.br ], [ %i.lf, %bb.co ], [ <double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00>, %bb.cn ] ; 4 uses
  %i.ln = phi <2 x double> [ zeroinitializer, %bb.br ], [ %i.ib, %bb.co ], [ zeroinitializer, %bb.cn ] ; 2 uses
  %i.lo = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %43)
          to label %bb.cq unwind label %bb.bd

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.lo, label %bb.dg, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lp = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !74
  %i.lr = icmp eq i32 %i.lq, 3
  %i.ls = getelementptr inbounds nuw i8, ptr %43, i64 12
  %i.lt = load i32, ptr %i.ls, align 4
  %i.lu = icmp eq i32 %i.lt, 3
  %or.cond72 = select i1 %i.lr, i1 %i.lu, i1 false
  br i1 %or.cond72, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.lv = load i32, ptr %43, align 8, !tbaa !19
  %i.lw = and i32 %i.lv, 4064
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.cy, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZN2cvL23undistortPointsInternalERKNS_3MatERS0_S2_S2_S2_S2_NS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 149) #14
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  unreachable

bb.cw:                                            ; preds = %bb.ct
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i

bb.cx:                                            ; preds = %bb.cu
  %i.lz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ma = load ptr, ptr %25, align 8, !tbaa !27   ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.mc = icmp eq ptr %i.ma, %i.mb
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347.i: ; preds = %bb.cx
  %i.md = load i64, ptr %i.mb, align 8, !tbaa !28
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.me) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347.i, %bb.cw
  %.pn297.i = phi { ptr, i32 } [ %i.ly, %bb.cw ], [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347.i ], [ %i.lz, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  br label %bb.fk

bb.cy:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  %i.mf = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 0, ptr %i.mg, align 8
  store i32 33619968, ptr %27, align 8, !tbaa !20
  store ptr %13, ptr %i.mf, align 8, !tbaa !11
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(24) %27, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  %i.mh = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !21
  %i.mj = icmp eq ptr %i.mi, %i.b
  br i1 %i.mj, label %bb.dj, label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.mk = landingpad { ptr, i32 }
          cleanup
end_hunk_0
