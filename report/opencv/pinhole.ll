Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pinhole?download=true
inline.NumInlined: 224
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv15undistortPointsERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_S2_S2_NS_12TermCriteriaE:bb.a
  %i.do = load ptr, ptr %16, align 8, !tbaa !27   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
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
  %i.fi = call double @cos(double noundef %i.fd) #13 ; 4 uses
  %i.fj = call double @sin(double noundef %i.fd) #13 ; 5 uses
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
  %i.fu = call double @llvm.fmuladd.f64(double %i.fm, double 0.000000e+00, double %i.ft) ; 2 uses
  %i.fv = fadd double %i.fl, 0.000000e+00
  %50 = extractelement <2 x double> %i.fs, i64 0
  %i.fw = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.fu, i64 1 ; 2 uses
  %i.fy = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.fz = insertelement <2 x double> %i.fx, double 0.000000e+00, i64 0
  %i.ga = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.fm, i64 1
  %i.gb = fadd double %i.fj, 0.000000e+00
  %i.gc = call double @llvm.fmuladd.f64(double %i.fk, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.gd = call double @llvm.fmuladd.f64(double %i.fi, double 0.000000e+00, double %i.gc)
  %i.ge = call double @llvm.fmuladd.f64(double %i.fl, double %i.fj, double %i.gd) ; 3 uses
  %i.gf = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.fj, i64 1
  %i.gh = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.gc, i64 1
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> zeroinitializer, <2 x double> %i.gh) ; 3 uses
  %i.gj = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.gi, <2 x i32> <i32 0, i32 2>
  %i.gk = insertelement <2 x double> %i.fs, double %i.ge, i64 1
  %i.gl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %51 = extractelement <2 x double> %i.gi, i64 0
  %52 = call double @llvm.fmuladd.f64(double %i.fj, double 0.000000e+00, double %51)
  %53 = insertelement <3 x double> <double poison, double 0.000000e+00, double poison>, double %i.fk, i64 0
  %54 = insertelement <3 x double> %53, double %i.fn, i64 2
  %55 = insertelement <3 x double> poison, double %i.fi, i64 0
  %56 = shufflevector <3 x double> %55, <3 x double> poison, <3 x i32> zeroinitializer
  %57 = insertelement <3 x double> poison, double %52, i64 0
  %58 = insertelement <3 x double> %57, double %i.gb, i64 1
  %59 = shufflevector <2 x double> %i.gi, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %60 = shufflevector <3 x double> %58, <3 x double> %59, <3 x i32> <i32 0, i32 1, i32 4>
  %61 = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %54, <3 x double> %56, <3 x double> %60) ; 6 uses
  %62 = extractelement <3 x double> %61, i64 0    ; 2 uses
  %63 = fdiv double 1.000000e+00, %62             ; 7 uses
  %64 = extractelement <3 x double> %61, i64 2    ; 2 uses
  %65 = fmul double %64, %63                      ; 3 uses
  %i.gm = insertelement <2 x double> <double poison, double 0.000000e+00>, double %65, i64 0
  %66 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.gm, <2 x double> %i.gj)
  %67 = extractelement <3 x double> %61, i64 1    ; 2 uses
  %68 = fmul double %67, %63                      ; 3 uses
  %69 = call double @llvm.fmuladd.f64(double %i.ge, double %63, double 0.000000e+00)
  %i.gn = call double @llvm.fmuladd.f64(double %i.fu, double 0.000000e+00, double %69)
  %70 = call double @llvm.fmuladd.f64(double %50, double %63, double 0.000000e+00)
  %i.go = insertelement <2 x double> poison, double %70, i64 0
  %71 = insertelement <2 x double> %i.go, double %i.gn, i64 1
  %72 = fadd <2 x double> %71, <double 0.000000e+00, double -0.000000e+00>
  %73 = call double @llvm.fmuladd.f64(double %i.ge, double %65, double 0.000000e+00)
  %i.gp = insertelement <2 x double> <double 0.000000e+00, double poison>, double %68, i64 1
  %i.gq = insertelement <2 x double> %i.fy, double %73, i64 1
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.gp, <2 x double> %i.gq) ; 2 uses
  %74 = insertelement <2 x double> poison, double %63, i64 0
  %75 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %75, <2 x double> %i.gl)
  %i.gt = insertelement <2 x double> poison, double %68, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.fk, i64 1
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.ga, <2 x double> %66) ; 2 uses
  %76 = shufflevector <2 x double> %i.gr, <2 x double> %i.gv, <2 x i32> <i32 0, i32 3> ; 2 uses
  %77 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %76, <2 x double> zeroinitializer, <2 x double> %72)
  %i.gw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %76, <2 x double> zeroinitializer, <2 x double> %i.gs)
  %78 = fadd <2 x double> %i.gv, %i.gr
  %79 = shufflevector <3 x double> %61, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %80 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %63, i64 0
  %i.gx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %79, <2 x double> %80, <2 x double> zeroinitializer)
  %81 = shufflevector <3 x double> %61, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %82 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %63, i64 1
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %81, <2 x double> %82, <2 x double> %i.gx)
  %83 = shufflevector <3 x double> %61, <3 x double> poison, <2 x i32> zeroinitializer
  %84 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %83, <2 x double> zeroinitializer, <2 x double> %i.gy)
  %85 = call double @llvm.fmuladd.f64(double %64, double %65, double 0.000000e+00)
  %i.gz = call double @llvm.fmuladd.f64(double %67, double %68, double %85)
  %i.ha = fadd double %62, %i.gz
  %i.hb = call double @cos(double noundef %i.fd) #13 ; 4 uses
  %i.hc = fadd double %i.hb, 0.000000e+00
  %i.hd = call double @sin(double noundef %i.fd) #13 ; 5 uses
  %i.he = call double @cos(double noundef %i.fg) #13 ; 5 uses
  %i.hf = call double @sin(double noundef %i.fg) #13 ; 4 uses
  %i.hg = fneg double %i.hd
  %i.hh = fneg double %i.hf
  %i.hi = fadd double %i.he, 0.000000e+00
  %i.hj = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.hh, i64 0 ; 2 uses
  %i.hk = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hi, i64 0
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> zeroinitializer, <2 x double> %i.hk) ; 2 uses
  %86 = call double @llvm.fmuladd.f64(double %i.he, double 0.000000e+00, double 0.000000e+00)
  %87 = fadd double %i.hd, 0.000000e+00
  %i.hm = insertelement <2 x double> poison, double %i.hb, i64 0 ; 2 uses
  %88 = insertelement <2 x double> %i.hm, double %i.hd, i64 1
  %i.hn = insertelement <2 x double> poison, double %86, i64 0
  %89 = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %88, <2 x double> zeroinitializer, <2 x double> %89) ; 2 uses
  %90 = insertelement <2 x double> %i.hj, double 0.000000e+00, i64 1
  %91 = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %92 = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hp = insertelement <2 x double> %92, double %87, i64 1
  %93 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %90, <2 x double> %91, <2 x double> %i.hp) ; 4 uses
  %94 = fadd double %i.hf, 0.000000e+00
  %95 = call double @llvm.fmuladd.f64(double %i.hf, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %96 = call double @llvm.fmuladd.f64(double %i.hb, double 0.000000e+00, double %95)
  %i.hq = insertelement <4 x double> <double poison, double 0.000000e+00, double poison, double 0.000000e+00>, double %i.he, i64 0
  %i.hr = insertelement <4 x double> %i.hq, double %i.hf, i64 2
  %i.hs = insertelement <4 x double> poison, double %i.hg, i64 0
  %i.ht = insertelement <4 x double> %i.hs, double %i.hd, i64 2
  %i.hu = insertelement <4 x double> %i.ht, double %i.he, i64 3
  %i.hv = shufflevector <4 x double> %i.hu, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %97 = insertelement <4 x double> poison, double %96, i64 0
  %i.hw = insertelement <4 x double> %97, double %i.hc, i64 1
  %98 = shufflevector <2 x double> %i.ho, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %99 = shufflevector <4 x double> %i.hw, <4 x double> %98, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.hx = insertelement <4 x double> %99, double %94, i64 3
  %i.hy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hr, <4 x double> %i.hv, <4 x double> %i.hx) ; 6 uses
  %i.hz = call double @llvm.fmuladd.f64(double %i.hd, double 0.000000e+00, double %95)
  %i.ia = call double @llvm.fmuladd.f64(double %i.he, double %i.hb, double %i.hz) ; 3 uses
  %i.ib = fneg <2 x double> %93                   ; 3 uses
  %i.ic = insertelement <2 x double> poison, double %i.ia, i64 0 ; 2 uses
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ie = shufflevector <4 x double> %i.hy, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.if = insertelement <2 x double> %i.ic, double 0.000000e+00, i64 1 ; 2 uses
  %i.ig = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.if, <2 x double> zeroinitializer) ; 2 uses
  %i.ih = shufflevector <4 x double> %i.hy, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ii = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ia, i64 1 ; 2 uses
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.ii, <2 x double> %i.ig)
  %i.ik = shufflevector <2 x double> %93, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %i.if, <2 x double> zeroinitializer) ; 2 uses
  %i.im = shufflevector <2 x double> %93, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.in = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.im, <2 x double> %i.ii, <2 x double> %i.il)
  %i.io = shufflevector <4 x double> %i.hy, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %100 = shufflevector <4 x double> %i.hy, <4 x double> poison, <2 x i32> zeroinitializer
  %101 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %100, <2 x double> %i.ij)
  %i.ip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.id, <2 x double> %i.in)
  %102 = shufflevector <2 x double> %i.hl, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %103 = shufflevector <4 x double> %102, <4 x double> %i.hy, <2 x i32> <i32 0, i32 5>
  %104 = insertelement <2 x double> %i.ig, double 0.000000e+00, i64 0
  %i.iq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %103, <2 x double> zeroinitializer, <2 x double> %104) ; 2 uses
  %105 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.iq, <2 x i32> <i32 0, i32 2>
  %106 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.hl, <2 x double> %105)
  %107 = fadd <2 x double> %106, <double 0.000000e+00, double -0.000000e+00>
  %108 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.io, <2 x double> %107)
  %109 = fadd <2 x double> %i.iq, <double 0.000000e+00, double -0.000000e+00>
  %110 = shufflevector <4 x double> %i.hy, <4 x double> poison, <2 x i32> <i32 3, i32 0>
  %111 = fadd <2 x double> %110, %109             ; 2 uses
  %112 = extractelement <2 x double> %93, i64 1
  %i.ir = extractelement <2 x double> %i.il, i64 1
  %113 = call double @llvm.fmuladd.f64(double %112, double 0.000000e+00, double %i.ir)
  %i.is = fadd double %i.ia, %113
  %i.it = extractelement <2 x double> %111, i64 0
  %114 = extractelement <2 x double> %111, i64 1
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.br
  %.sroa.22381.0.i = phi double [ 1.000000e+00, %bb.br ], [ %i.ha, %bb.co ], [ 1.000000e+00, %bb.cn ]
  %.sroa.18.0.i = phi double [ 0.000000e+00, %bb.br ], [ %i.it, %bb.co ], [ 0.000000e+00, %bb.cn ]
  %.sroa.22.0.i = phi double [ 1.000000e+00, %bb.br ], [ %i.is, %bb.co ], [ 1.000000e+00, %bb.cn ]
  %.sroa.20.0.i = phi double [ 0.000000e+00, %bb.br ], [ %114, %bb.co ], [ 0.000000e+00, %bb.cn ]
  %i.iu = phi <2 x double> [ zeroinitializer, %bb.br ], [ %78, %bb.co ], [ zeroinitializer, %bb.cn ]
  %i.iv = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %bb.br ], [ %i.gw, %bb.co ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.cn ]
  %i.iw = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %bb.br ], [ %77, %bb.co ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.cn ]
  %i.ix = phi <2 x double> [ zeroinitializer, %bb.br ], [ %i.ip, %bb.co ], [ zeroinitializer, %bb.cn ]
  %i.iy = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %bb.br ], [ %101, %bb.co ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.cn ]
  %i.iz = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %bb.br ], [ %108, %bb.co ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.cn ]
  %i.ja = phi <2 x double> [ zeroinitializer, %bb.br ], [ %84, %bb.co ], [ zeroinitializer, %bb.cn ] ; 2 uses
  %i.jb = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %43)
          to label %bb.cq unwind label %bb.bd

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.jb, label %bb.dg, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jc = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !74
  %i.je = icmp eq i32 %i.jd, 3
  %i.jf = getelementptr inbounds nuw i8, ptr %43, i64 12
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = icmp eq i32 %i.jg, 3
  %or.cond72 = select i1 %i.je, i1 %i.jh, i1 false
  br i1 %or.cond72, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ji = load i32, ptr %43, align 8, !tbaa !19
  %i.jj = and i32 %i.ji, 4064
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.cy, label %bb.ct

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
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i

bb.cx:                                            ; preds = %bb.cu
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jn = load ptr, ptr %25, align 8, !tbaa !27   ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347.i: ; preds = %bb.cx
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !28
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jr) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347.i, %bb.cw
  %.pn297.i = phi { ptr, i32 } [ %i.jl, %bb.cw ], [ %i.jm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347.i ], [ %i.jm, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  br label %bb.fk

bb.cy:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  %i.js = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 0, ptr %i.jt, align 8
  store i32 33619968, ptr %27, align 8, !tbaa !20
  store ptr %13, ptr %i.js, align 8, !tbaa !11
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(24) %27, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  %i.ju = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !21
  %i.jw = icmp eq ptr %i.jv, %i.b
  br i1 %i.jw, label %bb.dj, label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  br label %bb.fk

bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.dc unwind label %bb.de

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @__func__._ZN2cvL23undistortPointsInternalERKNS_3MatERS0_S2_S2_S2_S2_NS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 151) #14
          to label %bb.dd unwind label %bb.df

bb.dd:                                            ; preds = %bb.dc
  unreachable

bb.de:                                            ; preds = %bb.db
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352.i

bb.df:                                            ; preds = %bb.dc
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ka = load ptr, ptr %28, align 8, !tbaa !27   ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350.i: ; preds = %bb.df
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !28
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352.i: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350.i, %bb.de
  %.pn301.i = phi { ptr, i32 } [ %i.jy, %bb.de ], [ %i.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350.i ], [ %i.jz, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  br label %bb.fk

bb.dg:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  %i.kf = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 0, ptr %i.kg, align 8
  store i32 50397184, ptr %30, align 8, !tbaa !20
  store ptr %13, ptr %i.kf, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store double 1.000000e+00, ptr %31, align 8, !tbaa !23
  %i.kh = getelementptr inbounds nuw i8, ptr %31, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv11setIdentityERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.dh unwind label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  br label %bb.fk

bb.dj:                                            ; preds = %bb.dh, %bb.cz
  %i.kj = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %44)
          to label %bb.dk unwind label %bb.bd

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.kj, label %bb.em, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %32, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %i.d, i64 noundef 0)
          to label %bb.dm unwind label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %i.kk = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !74
  %i.km = icmp eq i32 %i.kl, 3
  br i1 %i.km, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.kn = getelementptr inbounds nuw i8, ptr %44, i64 12
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !71
  %.off.i = add i32 %i.ko, -3
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.du, label %bb.dp

bb.do:                                            ; preds = %bb.dl
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.dp:                                            ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %bb.dq unwind label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @__func__._ZN2cvL23undistortPointsInternalERKNS_3MatERS0_S2_S2_S2_S2_NS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 160) #14
          to label %bb.dr unwind label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  unreachable

bb.ds:                                            ; preds = %bb.dp
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.i

bb.dt:                                            ; preds = %bb.dq
  %i.kr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ks = load ptr, ptr %33, align 8, !tbaa !27   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv15undistortPointsERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_S2_S2_NS_12TermCriteriaE:bb.a

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.er, !llvm.loop !57

bb.fk:                                            ; preds = %bb.ff, %bb.el, %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352.i, %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i, %bb.ch, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.i, %bb.bd
  %.pn322.pn.pn.pn.i = phi { ptr, i32 } [ %.pn285.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.i ], [ %i.wd, %bb.ff ], [ %.pn283.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336.i ], [ %.pn312.pn.pn.i, %bb.el ], [ %i.cv, %bb.bd ], [ %i.ki, %bb.di ], [ %.pn301.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352.i ], [ %i.jx, %bb.da ], [ %.pn297.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349.i ], [ %.pn295.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i ], [ %i.eu, %bb.ch ], [ %.pn291.i, %bb.cg ], [ %.pn289.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i ], [ %i.eb, %bb.bu ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #13
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.bc
  %.pn322.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn322.pn.pn.pn.i, %bb.fk ], [ %i.cu, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.body

.loopexit:                                        ; preds = %bb.fj, %bb.eq
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #13
  ret void

bb.fm:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fn:                                            ; preds = %bb.av
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.fl, %bb.fn
  %eh.lpad-body = phi { ptr, i32 } [ %i.wl, %bb.fn ], [ %.pn322.pn.pn.pn.pn.i, %bb.fl ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #13
  br label %bb.fo

bb.fo:                                            ; preds = %.body, %bb.fm
  %.pn31 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.wk, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #13
  br label %bb.fp

bb.fp:                                            ; preds = %bb.t, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.al, %bb.fo, %bb.s
  %.pn31.pn.pn = phi { ptr, i32 } [ %i.an, %bb.s ], [ %.pn31, %bb.fo ], [ %i.ao, %bb.t ], [ %.pn29, %bb.al ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.w ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #13
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.r
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.fp ], [ %i.am, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #13
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.q
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn, %bb.fq ], [ %i.al, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #13
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.p
  %.pn31.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn.pn, %bb.fr ], [ %i.ak, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #13
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.o
  %.pn31.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn.pn.pn, %bb.fs ], [ %i.aj, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #13
  resume { ptr, i32 } %.pn31.pn.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #13
  ret void
}

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN2cv20undistortImagePointsERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4, double %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.cv::TermCriteria", align 8  ; 3 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  store i64 %4, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %5, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !23
  tail call void @_ZN2cv15undistortPointsERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_S2_S2_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull byval(%"class.cv::TermCriteria") align 8 %6)
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cv11setIdentityERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x double> @llvm.fmuladd.v3f64(<3 x double>, <3 x double>, <3 x double>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!10 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !8, i64 8, !9, i64 16}
!11 = !{!10, !8, i64 8}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"p1 _ZTSN2cv12MatAllocatorE", !8, i64 0}
!14 = !{!"p1 _ZTSN2cv8UMatDataE", !8, i64 0}
!15 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!16 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !15, i64 4, !5, i64 8, !4, i64 12}
!17 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!18 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !14, i64 64, !16, i64 72, !17, i64 128}
!19 = !{!18, !5, i64 0}
!20 = !{!10, !5, i64 0}
!21 = !{!18, !12, i64 24}
!22 = !{!"double", !4, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!25 = !{!"long", !4, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !25, i64 8, !4, i64 16}
!27 = !{!26, !12, i64 0}
!28 = !{!4, !4, i64 0}
!29 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !8, i64 0}
!30 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !29, i64 0, !5, i64 8}
!31 = !{!30, !5, i64 8}
!32 = !{!25, !25, i64 0}
!33 = distinct !{!33, !"_ZNK2cv11_InputArray6getMatEi"}
!34 = distinct !{!34, !33, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!35 = !{!34}
!36 = distinct !{!36, !"_ZNK2cv11_InputArray6getMatEi"}
!37 = distinct !{!37, !36, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!38 = !{!37}
!39 = !{!24, !12, i64 0}
!40 = !{!26, !25, i64 8}
!41 = distinct !{!41, !"_ZNK2cv11_InputArray6getMatEi"}
!42 = distinct !{!42, !41, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!43 = distinct !{!43, !"_ZNK2cv11_InputArray6getMatEi"}
!44 = distinct !{!44, !43, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!45 = distinct !{!45, !"_ZNK2cv11_InputArray6getMatEi"}
!46 = distinct !{!46, !45, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!47 = distinct !{!47, !"_ZNK2cv11_InputArray6getMatEi"}
!48 = distinct !{!48, !47, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!49 = distinct !{!49, !"_ZNK2cv11_InputArray6getMatEi"}
!50 = distinct !{!50, !49, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!51 = distinct !{null}
!52 = distinct !{!52, !"_ZNK2cv11_InputArray6getMatEi"}
!53 = distinct !{!53, !52, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!54 = distinct !{!54, !"_ZNK2cv3Mat8colRangeEii"}
!55 = distinct !{!55, !54, !"_ZNK2cv3Mat8colRangeEii: argument 0"}
!56 = distinct !{!56, !81}
!57 = distinct !{!57, !81}
!58 = !{!42}
!59 = !{!44}
!60 = !{!46}
!61 = !{!48}
!62 = !{!50}
!63 = !{!"p1 _ZTSN2cv5MatOpE", !8, i64 0}
!64 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !4, i64 0}
!65 = !{!"_ZTSN2cv3VecIdLi4EEE", !64, i64 0}
!66 = !{!"_ZTSN2cv7Scalar_IdEE", !65, i64 0}
!67 = !{!"_ZTSN2cv7MatExprE", !63, i64 0, !5, i64 8, !18, i64 16, !18, i64 224, !18, i64 432, !22, i64 640, !22, i64 648, !66, i64 656}
!68 = !{!67, !63, i64 0}
!69 = !{!"vtable pointer", !3, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!18, !5, i64 12}
!72 = !{!53}
!73 = !{!5, !5, i64 0}
!74 = !{!18, !5, i64 8}
!75 = !{!55}
!76 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!77 = !{!76, !5, i64 0}
!78 = !{!76, !5, i64 4}
!79 = !{!"float", !4, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"llvm.loop.mustprogress"}
end_hunk_1
