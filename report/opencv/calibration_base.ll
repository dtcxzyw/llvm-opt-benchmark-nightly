Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_base?download=true
inline.NumInlined: 1317
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_:bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.ae ], [ %i.bt, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.eo

bb.ag:                                            ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) %i.a, i8 0, i64 216, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 3, i32 noundef 9, i32 noundef 6, ptr noundef nonnull %i.a, i64 noundef 0)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.bv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat7setZeroEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.ai unwind label %bb.an     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.bw = add nsw i32 %i.ah, -7
  %or.cond7 = icmp ult i32 %i.bw, -2
  br i1 %or.cond7, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_, ptr noundef nonnull @.str.1, i32 noundef 149) #21
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.an:                                            ; preds = %bb.ah
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ao:                                            ; preds = %bb.aj
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ap:                                            ; preds = %bb.ak
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ap
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !25
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ao
  %.pn261 = phi { ptr, i32 } [ %i.bz, %bb.ao ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ca, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.em

bb.aq:                                            ; preds = %bb.ai
  br i1 %i.bc, label %bb.ar, label %bb.bi

bb.ar:                                            ; preds = %bb.aq
  %i.cg = load i32, ptr %i.az, align 8, !tbaa !27
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ci = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 0)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.cj = trunc i64 %i.ci to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.at
  %i.ck = phi i32 [ %i.cj, %bb.at ], [ 1, %bb.ar ] ; 4 uses
  %i.cl = icmp eq i32 %i.ah, 5
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !29 ; 6 uses
  br i1 %i.cl, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.co = load float, ptr %i.cn, align 4, !tbaa !36
  %i.cp = fpext float %i.co to double
  %i.cq = sext i32 %i.ck to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !36
  %i.ct = shl nsw i32 %i.ck, 1
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !36
  %i.cx = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cw, i64 1
  %i.cz = fpext <2 x float> %i.cy to <2 x double>
  br label %bb.ay

bb.aw:                                            ; preds = %bb.as
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ax:                                            ; preds = %bb.au
  %i.db = load double, ptr %i.cn, align 8, !tbaa !31
  %i.dc = sext i32 %i.ck to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !31
  %i.df = shl nsw i32 %i.ck, 1
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !31
  %i.dj = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.di, i64 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %.sroa.0378.0 = phi double [ %i.cp, %bb.av ], [ %i.db, %bb.ax ] ; 3 uses
  %i.dl = phi <2 x double> [ %i.cz, %bb.av ], [ %i.dk, %bb.ax ] ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.dl, %i.dl
  %i.dm = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dn = call double @llvm.fmuladd.f64(double %.sroa.0378.0, double %.sroa.0378.0, double %i.dm)
  %i.do = extractelement <2 x double> %i.dl, i64 1 ; 2 uses
  %i.dp = call double @llvm.fmuladd.f64(double %i.do, double %i.do, double %i.dn)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.dp) ; 4 uses
  %i.dq = fcmp olt double %sqrt.i, f0x3CB0000000000000
  br i1 %i.dq, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %13, i32 noundef 3, i32 noundef 3, i32 noundef %i.ah)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dr = load ptr, ptr %13, align 8, !tbaa !46   ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull align 8 dereferenceable(688) %13, ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.bc, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.ba
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dv) #20
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dw) #20
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dx) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !29
  %.not245 = icmp eq ptr %i.dz, null
  br i1 %.not245, label %.thread, label %.thread465

.thread465:                                       ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) %i.a, i8 0, i64 216, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store double -1.000000e+00, ptr %i.ea, align 8, !tbaa !31
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double -1.000000e+00, ptr %i.eb, align 8, !tbaa !31
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double -1.000000e+00, ptr %i.ec, align 8, !tbaa !31
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store double 1.000000e+00, ptr %i.ed, align 8, !tbaa !31
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double 1.000000e+00, ptr %i.ee, align 8, !tbaa !31
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double 1.000000e+00, ptr %i.ef, align 8, !tbaa !31
  br label %bb.dp

bb.bb:                                            ; preds = %bb.az
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %13) #20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn241 = phi { ptr, i32 } [ %i.eh, %bb.bc ], [ %i.eg, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.em

bb.be:                                            ; preds = %bb.ay
  %i.ei = call double @cos(double noundef %sqrt.i) #20 ; 6 uses
  %i.ej = call double @sin(double noundef %sqrt.i) #20 ; 6 uses
  %i.ek = fsub double 1.000000e+00, %i.ei         ; 8 uses
  %i.el = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.em = fmul double %.sroa.0378.0, %i.el        ; 12 uses
  %i.en = insertelement <2 x double> poison, double %i.el, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ep = fmul <2 x double> %i.dl, %i.eo          ; 19 uses
  %i.eq = insertelement <2 x double> poison, double %i.em, i64 0
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x double> %i.er, %i.ep          ; 5 uses
  %i.et = extractelement <2 x double> %i.ep, i64 0 ; 3 uses
  %i.eu = extractelement <2 x double> %i.ep, i64 1 ; 6 uses
  %i.ev = fmul double %i.et, %i.eu                ; 4 uses
  %42 = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %43 = insertelement <2 x double> %42, double %i.em, i64 0 ; 2 uses
  %44 = fmul <2 x double> %43, %43                ; 5 uses
  %i.ew = fmul double %i.eu, %i.eu                ; 4 uses
  %i.ex = fneg double %i.em
  %i.ey = fneg double %i.et
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.ez = fmul double %i.ei, 0.000000e+00         ; 3 uses
  %45 = extractelement <2 x double> %44, i64 0
  %i.fa = fmul double %45, %i.ek
  %i.fb = extractelement <2 x double> %i.es, i64 0
  %i.fc = fmul double %i.fb, %i.ek
  %i.fd = extractelement <2 x double> %i.es, i64 1
  %i.fe = fmul double %i.fd, %i.ek
  %46 = extractelement <2 x double> %44, i64 1
  %i.ff = fmul double %46, %i.ek
  %i.fg = fmul double %i.ev, %i.ek
  %i.fh = fmul double %i.ew, %i.ek
  %i.fi = fadd double %i.ei, %i.fa
  %i.fj = fadd double %i.ez, %i.fc                ; 2 uses
  %i.fk = fadd double %i.ez, %i.fe                ; 2 uses
  %i.fl = fadd double %i.ei, %i.ff
  %i.fm = fadd double %i.ez, %i.fg                ; 2 uses
  %i.fn = fadd double %i.ei, %i.fh
  %i.fo = fmul double %i.ej, 0.000000e+00         ; 3 uses
  %i.fp = fmul double %i.et, %i.ej                ; 2 uses
  %i.fq = fmul double %i.eu, %i.ej                ; 2 uses
  %i.fr = fmul double %i.em, %i.ej                ; 2 uses
  %i.fs = fadd double %i.fo, %i.fi
  store double %i.fs, ptr %14, align 8, !tbaa !31, !alias.scope !131
  %i.ft = fsub double %i.fj, %i.fq
  %i.fu = getelementptr inbounds nuw i8, ptr %14, i64 8
  store double %i.ft, ptr %i.fu, align 8, !tbaa !31, !alias.scope !131
  %i.fv = fadd double %i.fp, %i.fk
  %i.fw = getelementptr inbounds nuw i8, ptr %14, i64 16
  store double %i.fv, ptr %i.fw, align 8, !tbaa !31, !alias.scope !131
  %i.fx = fadd double %i.fq, %i.fj
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 24
  store double %i.fx, ptr %i.fy, align 8, !tbaa !31, !alias.scope !131
  %i.fz = fadd double %i.fo, %i.fl
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 32
  store double %i.fz, ptr %i.ga, align 8, !tbaa !31, !alias.scope !131
  %i.gb = fsub double %i.fm, %i.fr
  %i.gc = getelementptr inbounds nuw i8, ptr %14, i64 40
  store double %i.gb, ptr %i.gc, align 8, !tbaa !31, !alias.scope !131
  %i.gd = fsub double %i.fk, %i.fp
  %i.ge = getelementptr inbounds nuw i8, ptr %14, i64 48
  store double %i.gd, ptr %i.ge, align 8, !tbaa !31, !alias.scope !131
  %i.gf = fadd double %i.fr, %i.fm
  %i.gg = getelementptr inbounds nuw i8, ptr %14, i64 56
  store double %i.gf, ptr %i.gg, align 8, !tbaa !31, !alias.scope !131
  %i.gh = fadd double %i.fo, %i.fn
  %i.gi = getelementptr inbounds nuw i8, ptr %14, i64 64
  store double %i.gh, ptr %i.gi, align 8, !tbaa !31, !alias.scope !131
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.gj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.gk, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !49
  store ptr %7, ptr %i.gj, align 8, !tbaa !12
  invoke void @_ZNK2cv4MatxIdLi3ELi3EE9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef %i.ah, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !29
  %.not240 = icmp eq ptr %i.gm, null
  br i1 %.not240, label %.thread467, label %bb.bh

.thread467:                                       ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %.thread

bb.bg:                                            ; preds = %bb.be
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.em

bb.bh:                                            ; preds = %bb.bf
  %47 = fmul double %i.ek, -2.000000e+00
  %i.go = insertelement <2 x double> poison, double %47, i64 0
  %48 = fneg double %i.ej                         ; 4 uses
  %i.gp = insertelement <2 x double> %i.go, double %48, i64 1
  %i.gq = insertelement <2 x double> poison, double %i.ej, i64 0 ; 2 uses
  %i.gr = insertelement <2 x double> %i.gq, double %i.ei, i64 1
  %49 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.eo, <2 x double> %i.gr)
  %50 = shufflevector <2 x double> %49, <2 x double> poison, <3 x i32> <i32 1, i32 poison, i32 0> ; 3 uses
  %51 = insertelement <2 x double> poison, double %i.ey, i64 0
  %52 = insertelement <2 x double> %51, double %i.em, i64 1 ; 3 uses
  %53 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ex, i64 1 ; 3 uses
  %i.gs = insertelement <2 x double> %i.gq, double %i.ek, i64 1
  %54 = fmul <2 x double> %i.eo, %i.gs            ; 4 uses
  %55 = extractelement <2 x double> %54, i64 1    ; 3 uses
  %56 = extractelement <2 x double> %54, i64 0    ; 3 uses
  %57 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 12 uses
  %58 = fneg <2 x double> %i.ep
  %59 = insertelement <2 x double> %58, double 0.000000e+00, i64 0 ; 3 uses
  %60 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> zeroinitializer ; 12 uses
  %i.gt = fadd double %i.eu, %i.eu
  %.sroa.32.192.vec.insert = insertelement <2 x double> poison, double %i.em, i64 0
  %.sroa.32.200.vec.insert = shufflevector <2 x double> %.sroa.32.192.vec.insert, <2 x double> %i.ep, <2 x i32> <i32 0, i32 2>
  %.sroa.30.184.vec.insert = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.ep, <2 x i32> <i32 0, i32 2>
  %.sroa.27.168.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.em, i64 0
  %i.gu = insertelement <2 x double> %i.ep, double 0.000000e+00, i64 0
  %foldExtExtBinop472.a = fadd <2 x double> %i.ep, %i.ep
  %.sroa.19488.112.vec.insert = shufflevector <2 x double> %foldExtExtBinop472.a, <2 x double> %i.ep, <2 x i32> <i32 0, i32 3>
  %.sroa.16486.96.vec.insert = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.em, i64 1
  %.sroa.14485.80.vec.insert = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.em, i64 1
  %.sroa.10482.56.vec.insert = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.ep, <2 x i32> <i32 3, i32 1>
  %.sroa.5480.24.vec.insert = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gv = fadd double %i.em, %i.em
  %.sroa.0478.0.vec.insert = insertelement <2 x double> poison, double %i.gv, i64 0
  %.sroa.0478.8.vec.insert = shufflevector <2 x double> %.sroa.0478.0.vec.insert, <2 x double> %i.ep, <2 x i32> <i32 0, i32 2>
  %61 = insertelement <3 x double> poison, double %i.em, i64 0
  %62 = shufflevector <3 x double> %61, <3 x double> poison, <3 x i32> zeroinitializer
  %63 = insertelement <3 x double> %50, double %48, i64 1
  %64 = fmul <3 x double> %62, %63                ; 6 uses
  %65 = extractelement <3 x double> %64, i64 2    ; 2 uses
  %66 = extractelement <3 x double> %64, i64 1    ; 2 uses
  %67 = shufflevector <3 x double> %64, <3 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %68 = extractelement <3 x double> %64, i64 0
  %69 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %70 = shufflevector <3 x double> %64, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.gw = fmul <2 x double> %70, %i.es
  %71 = shufflevector <3 x double> %64, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %71, <2 x double> zeroinitializer, <2 x double> %i.gw) ; 2 uses
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %72 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %.sroa.5480.24.vec.insert, <2 x double> %i.gy)
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %i.ep, <2 x double> %72)
  %73 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> zeroinitializer, <2 x double> %i.gz)
  store <2 x double> %73, ptr %69, align 16, !tbaa !31
  %74 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %75 = fmul double %65, %i.ev
  %76 = fmul <2 x double> %70, %44
  %77 = fadd <2 x double> %71, %76                ; 2 uses
  %78 = shufflevector <2 x double> %77, <2 x double> %i.gx, <2 x i32> <i32 0, i32 2>
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %.sroa.0478.8.vec.insert, <2 x double> %78)
  %79 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %59, <2 x double> %i.ha)
  %80 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> zeroinitializer, <2 x double> %79)
  store <2 x double> %80, ptr %i.a, align 16, !tbaa !31
  %81 = shufflevector <2 x double> %77, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.hc = call double @llvm.fmuladd.f64(double %66, double 0.000000e+00, double %75) ; 2 uses
  %i.hd = insertelement <2 x double> %81, double %i.hc, i64 1
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> zeroinitializer, <2 x double> %i.hd)
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %53, <2 x double> %i.he)
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> <double 0.000000e+00, double -1.000000e+00>, <2 x double> %i.hf)
  store <2 x double> %i.hg, ptr %74, align 16, !tbaa !31
  %i.hh = insertelement <2 x double> %i.gy, double %i.hc, i64 1
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %.sroa.10482.56.vec.insert, <2 x double> %i.hh)
  %i.hj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %52, <2 x double> %i.hi)
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.hj)
  store <2 x double> %i.hk, ptr %i.hb, align 16, !tbaa !31
  %i.hl = fmul double %65, %i.ew
  %i.hm = fadd double %66, %i.hl
  %i.hn = call double @llvm.fmuladd.f64(double %55, double 0.000000e+00, double %i.hm)
  %i.ho = call double @llvm.fmuladd.f64(double %68, double 0.000000e+00, double %i.hn)
  %i.hp = call double @llvm.fmuladd.f64(double %56, double 0.000000e+00, double %i.ho)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double %i.hp, ptr %i.hq, align 16, !tbaa !31
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %82 = shufflevector <2 x double> %i.ep, <2 x double> poison, <3 x i32> zeroinitializer
  %83 = insertelement <3 x double> %50, double %48, i64 1
  %84 = fmul <3 x double> %82, %83                ; 6 uses
  %85 = extractelement <3 x double> %84, i64 2    ; 2 uses
  %86 = extractelement <3 x double> %84, i64 1    ; 2 uses
  %87 = shufflevector <3 x double> %84, <3 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %88 = extractelement <3 x double> %84, i64 0
  %89 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %90 = shufflevector <3 x double> %84, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.hs = fmul <2 x double> %90, %i.es
  %91 = shufflevector <3 x double> %84, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %91, <2 x double> zeroinitializer, <2 x double> %i.hs) ; 2 uses
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %92 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %.sroa.16486.96.vec.insert, <2 x double> %i.hu)
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %87, <2 x double> %i.ep, <2 x double> %92)
  %93 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double> %i.hv)
  store <2 x double> %93, ptr %89, align 8, !tbaa !31
  %94 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %95 = fmul double %85, %i.ev
  %96 = fmul <2 x double> %90, %44
  %97 = fadd <2 x double> %91, %96                ; 2 uses
  %98 = shufflevector <2 x double> %97, <2 x double> %i.ht, <2 x i32> <i32 0, i32 2>
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %.sroa.14485.80.vec.insert, <2 x double> %98)
  %99 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %87, <2 x double> %59, <2 x double> %i.hw)
  %100 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> zeroinitializer, <2 x double> %99)
  store <2 x double> %100, ptr %i.hr, align 8, !tbaa !31
  %101 = shufflevector <2 x double> %97, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.hy = call double @llvm.fmuladd.f64(double %86, double 0.000000e+00, double %95) ; 2 uses
  %i.hz = insertelement <2 x double> %101, double %i.hy, i64 1
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %.sroa.19488.112.vec.insert, <2 x double> %i.hz)
  %i.ib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %87, <2 x double> %53, <2 x double> %i.ia)
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> zeroinitializer, <2 x double> %i.ib)
  store <2 x double> %i.ic, ptr %94, align 8, !tbaa !31
  %i.id = insertelement <2 x double> %i.hu, double %i.hy, i64 1
  %i.ie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %i.gu, <2 x double> %i.id)
  %i.if = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %87, <2 x double> %52, <2 x double> %i.ie)
  %i.ig = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> <double -1.000000e+00, double 0.000000e+00>, <2 x double> %i.if)
  store <2 x double> %i.ig, ptr %i.hx, align 8, !tbaa !31
  %i.ih = fmul double %85, %i.ew
  %i.ii = fadd double %86, %i.ih
  %i.ij = call double @llvm.fmuladd.f64(double %55, double 0.000000e+00, double %i.ii)
  %i.ik = call double @llvm.fmuladd.f64(double %88, double 0.000000e+00, double %i.ij)
  %i.il = call double @llvm.fmuladd.f64(double %56, double 0.000000e+00, double %i.ik)
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store double %i.il, ptr %i.im, align 8, !tbaa !31
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %102 = shufflevector <2 x double> %i.ep, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %103 = insertelement <3 x double> %50, double %48, i64 1
  %104 = fmul <3 x double> %102, %103             ; 6 uses
  %105 = extractelement <3 x double> %104, i64 2  ; 2 uses
  %106 = extractelement <3 x double> %104, i64 1  ; 2 uses
  %107 = shufflevector <3 x double> %104, <3 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %108 = extractelement <3 x double> %104, i64 0
  %109 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %110 = shufflevector <3 x double> %104, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.io = fmul <2 x double> %110, %i.es
  %111 = shufflevector <3 x double> %104, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %111, <2 x double> zeroinitializer, <2 x double> %i.io) ; 2 uses
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %112 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %.sroa.27.168.vec.insert, <2 x double> %i.iq)
  %i.ir = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %107, <2 x double> %i.ep, <2 x double> %112)
  %113 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.ir)
  store <2 x double> %113, ptr %109, align 16, !tbaa !31
  %114 = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %115 = fmul double %105, %i.ev
  %116 = fmul <2 x double> %110, %44
  %117 = fadd <2 x double> %111, %116             ; 2 uses
  %118 = shufflevector <2 x double> %117, <2 x double> %i.ip, <2 x i32> <i32 0, i32 2>
  %i.is = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> zeroinitializer, <2 x double> %118)
  %119 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %107, <2 x double> %59, <2 x double> %i.is)
  %120 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> <double 0.000000e+00, double -1.000000e+00>, <2 x double> %119)
  store <2 x double> %120, ptr %i.in, align 16, !tbaa !31
  %121 = shufflevector <2 x double> %117, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.iu = call double @llvm.fmuladd.f64(double %106, double 0.000000e+00, double %115) ; 2 uses
  %i.iv = insertelement <2 x double> %121, double %i.iu, i64 1
  %i.iw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %.sroa.30.184.vec.insert, <2 x double> %i.iv)
  %i.ix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %107, <2 x double> %53, <2 x double> %i.iw)
  %i.iy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> zeroinitializer, <2 x double> %i.ix)
  store <2 x double> %i.iy, ptr %114, align 16, !tbaa !31
  %i.iz = insertelement <2 x double> %i.iq, double %i.iu, i64 1
  %i.ja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %.sroa.32.200.vec.insert, <2 x double> %i.iz)
  %i.jb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %107, <2 x double> %52, <2 x double> %i.ja)
  %i.jc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> zeroinitializer, <2 x double> %i.jb)
  store <2 x double> %i.jc, ptr %i.it, align 16, !tbaa !31
  %i.jd = fmul double %105, %i.ew
  %i.je = fadd double %106, %i.jd
  %i.jf = call double @llvm.fmuladd.f64(double %55, double %i.gt, double %i.je)
  %i.jg = call double @llvm.fmuladd.f64(double %108, double 0.000000e+00, double %i.jf)
  %i.jh = call double @llvm.fmuladd.f64(double %56, double 0.000000e+00, double %i.jg)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store double %i.jh, ptr %i.ji, align 16, !tbaa !31
  %.old274.pre.pre = load ptr, ptr %i.gl, align 8, !tbaa !29
  %i.jj = icmp eq ptr %.old274.pre.pre, null
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br i1 %i.jj, label %.thread, label %bb.dp

bb.bi:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %16, i8 0, i64 72, i1 false), !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %17, i8 0, i64 72, i1 false), !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !tbaa !31
  %i.jk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !27
  %i.jm = icmp sgt i32 %i.jl, 1
  br i1 %i.jm, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.jn = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 0)
          to label %bb.bk unwind label %bb.br

bb.bk:                                            ; preds = %bb.bj
  %i.jo = trunc i64 %i.jn to i32
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  %i.jp = phi i32 [ %i.jo, %bb.bk ], [ 1, %bb.bi ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %19, i8 0, i64 72, i1 false), !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.jq = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 -1040056314, ptr %20, align 8, !tbaa !49
  store ptr %19, ptr %i.jq, align 8, !tbaa !12
  %i.jr = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 12884901891, ptr %i.jr, align 8
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.bm unwind label %bb.bt

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.js = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 -1056833530, ptr %21, align 8, !tbaa !49
  %i.jt = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %19, ptr %i.jt, align 8, !tbaa !12
  store i64 12884901891, ptr %i.js, align 8
  %i.ju = invoke noundef zeroext i1 @_ZN2cv10checkRangeERKNS_11_InputArrayEbPNS_6Point_IiEEdd(ptr noundef nonnull align 8 dereferenceable(24) %21, i1 noundef zeroext true, ptr noundef null, double noundef -1.000000e+02, double noundef 1.000000e+02)
          to label %bb.bn unwind label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br i1 %i.ju, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat7setZeroEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.bp unwind label %bb.bs     ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !29
  %.not228 = icmp eq ptr %i.jx, null
  br i1 %.not228, label %.thread428, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jy = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat7setZeroEv(ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %.thread428 unwind label %bb.bs ; 0 uses

bb.br:                                            ; preds = %bb.bj
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.bs:                                            ; preds = %bb.bv, %bb.bq, %bb.bo
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.bt:                                            ; preds = %bb.bl
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.dn

bb.bu:                                            ; preds = %bb.bm
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.dn

bb.bv:                                            ; preds = %bb.bn
  invoke void @_ZN2cv3SVD7computeIdLi3ELi3ELi3EEEvRKNS_4MatxIT_XT0_EXT1_EEERNS2_IS3_XT2_ELi1EEERNS2_IS3_XT0_EXT2_EEERNS2_IS3_XT1_EXT2_EEE(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %bb.bw unwind label %bb.bs

bb.bw:                                            ; preds = %bb.bv
  %i.kd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.kg = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.kh = load double, ptr %i.kg, align 16, !tbaa !31, !noalias !132 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !31, !noalias !132 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.kl = load double, ptr %i.kk, align 16, !tbaa !31, !noalias !132 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.kn = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ko = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.kp = getelementptr inbounds nuw i8, ptr %16, i64 64
  %.sroa.5336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 56
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.kq = load <2 x double>, ptr %17, align 16, !tbaa !31, !noalias !132 ; 4 uses
  %i.kr = load <8 x double>, ptr %16, align 8, !tbaa !31, !noalias !132 ; 10 uses
  %i.ks = load double, ptr %i.kn, align 8, !tbaa !31, !noalias !132 ; 2 uses
  %i.kt = load double, ptr %i.km, align 8, !tbaa !31, !noalias !132 ; 2 uses
  %i.ku = load double, ptr %i.kd, align 8, !tbaa !31, !noalias !132
  %i.kv = extractelement <2 x double> %i.kq, i64 0
  %i.kw = extractelement <8 x double> %i.kr, i64 0
  %i.kx = call double @llvm.fmuladd.f64(double %i.kw, double %i.kv, double 0.000000e+00)
  %i.ky = load <2 x double>, ptr %i.ke, align 8, !tbaa !31, !noalias !132 ; 4 uses
  %i.kz = extractelement <2 x double> %i.ky, i64 0
  %i.la = call double @llvm.fmuladd.f64(double %i.ku, double %i.kz, double %i.kx)
  %i.lb = load <2 x double>, ptr %i.kf, align 16, !tbaa !31, !noalias !132 ; 4 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 0
  %i.ld = extractelement <8 x double> %i.kr, i64 2
  %i.le = call double @llvm.fmuladd.f64(double %i.ld, double %i.lc, double %i.la) ; 3 uses
  %i.lf = shufflevector <8 x double> %i.kr, <8 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.lg = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lh = insertelement <2 x double> %i.lg, double %i.kh, i64 0
  %i.li = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.lh, <2 x double> zeroinitializer)
  %i.lj = shufflevector <8 x double> %i.kr, <8 x double> poison, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.lk = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ll = insertelement <2 x double> %i.lk, double %i.kj, i64 0
  %i.lm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lj, <2 x double> %i.ll, <2 x double> %i.li)
  %i.ln = shufflevector <8 x double> %i.kr, <8 x double> poison, <2 x i32> <i32 2, i32 5>
  %i.lo = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lp = insertelement <2 x double> %i.lo, double %i.kl, i64 0
  %i.lq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ln, <2 x double> %i.lp, <2 x double> %i.lm) ; 4 uses
  %i.lr = shufflevector <8 x double> %i.kr, <8 x double> poison, <2 x i32> <i32 6, i32 0> ; 2 uses
  %i.ls = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %i.kq, <2 x double> zeroinitializer)
  %i.lt = shufflevector <8 x double> %i.kr, <8 x double> poison, <2 x i32> <i32 7, i32 1>
  %i.lu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %i.ky, <2 x double> %i.ls)
  %i.lv = shufflevector <8 x double> %i.kr, <8 x double> poison, <2 x i32> <i32 poison, i32 2>
  %i.lw = load <2 x double>, ptr %i.ko, align 8, !tbaa !31, !noalias !132 ; 4 uses
  %i.lx = load double, ptr %i.kp, align 8, !tbaa !31, !noalias !132
  %i.ly = shufflevector <2 x double> %i.lv, <2 x double> %i.lw, <2 x i32> <i32 3, i32 1>
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %i.lb, <2 x double> %i.lu) ; 4 uses
  %i.ma = insertelement <2 x double> %i.lr, double %i.kt, i64 1
  %i.mb = insertelement <2 x double> %i.lg, double %i.kh, i64 1
  %i.mc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.mb, <2 x double> zeroinitializer)
  %i.md = shufflevector <2 x double> %i.lw, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.me = shufflevector <8 x double> %i.md, <8 x double> %i.kr, <2 x i32> <i32 0, i32 12>
  %i.mf = insertelement <2 x double> %i.lk, double %i.kj, i64 1
  %i.mg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.mf, <2 x double> %i.mc)
  %i.mh = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.mi = insertelement <2 x double> %i.mh, double %i.ks, i64 1
  %i.mj = insertelement <2 x double> %i.lo, double %i.kl, i64 1
  %i.mk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> %i.mj, <2 x double> %i.mg) ; 2 uses
  %i.ml = shufflevector <2 x double> %i.kq, <2 x double> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mm = shufflevector <8 x double> %i.kr, <8 x double> %i.ml, <2 x i32> <i32 6, i32 9>
  %i.mn = insertelement <2 x double> poison, double %i.kh, i64 0
  %i.mo = insertelement <2 x double> %i.mn, double %i.kt, i64 1
  %i.mp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> %i.mo, <2 x double> zeroinitializer)
  %i.mq = shufflevector <2 x double> %i.lw, <2 x double> %i.lj, <2 x i32> <i32 0, i32 3>
  %i.mr = insertelement <2 x double> %i.ky, double %i.kj, i64 0
  %i.ms = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.mr, <2 x double> %i.mp)
  %i.mt = shufflevector <2 x double> %i.lw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.mu = insertelement <2 x double> %i.mt, double %i.ks, i64 1
  %i.mv = insertelement <2 x double> %i.lb, double %i.kl, i64 0
  %i.mw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.mv, <2 x double> %i.ms) ; 4 uses
  store double %i.le, ptr %19, align 8
  %i.mx = shufflevector <2 x double> %i.lz, <2 x double> %i.lq, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.mx, ptr %.sroa.5336.0..sroa_idx, align 8
  %i.my = extractelement <2 x double> %i.mw, i64 1
  %i.mz = shufflevector <2 x double> %i.lq, <2 x double> %i.mw, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.mz, ptr %.sroa.7.0..sroa_idx, align 8
  %i.na = extractelement <2 x double> %i.mk, i64 1 ; 3 uses
  store double %i.na, ptr %.sroa.9.0..sroa_idx, align 8
  %i.nb = extractelement <2 x double> %i.lz, i64 0
  store double %i.nb, ptr %.sroa.10.0..sroa_idx, align 8
  %i.nc = extractelement <2 x double> %i.mk, i64 0 ; 2 uses
  store double %i.nc, ptr %.sroa.11.0..sroa_idx, align 8
  %i.nd = extractelement <2 x double> %i.mw, i64 0 ; 2 uses
  store double %i.nd, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !25
  %i.ne = fsub double %i.nc, %i.na                ; 5 uses
  %i.nf = fsub <2 x double> %i.lq, %i.lz          ; 5 uses
  %i.ng = extractelement <2 x double> %i.nf, i64 0 ; 2 uses
  %foldExtExtBinop474 = fmul <2 x double> %i.nf, %i.nf
  %i.nh = extractelement <2 x double> %foldExtExtBinop474, i64 0
  %i.ni = call double @llvm.fmuladd.f64(double %i.ne, double %i.ne, double %i.nh)
  %i.nj = extractelement <2 x double> %i.nf, i64 1 ; 4 uses
  %i.nk = call double @llvm.fmuladd.f64(double %i.nj, double %i.nj, double %i.ni)
  %i.nl = fmul double %i.nk, 2.500000e-01
  %i.nm = call double @sqrt(double noundef %i.nl) #20 ; 4 uses
  %i.nn = fadd double %i.le, %i.my
  %i.no = fadd double %i.nn, %i.nd
end_hunk_0
