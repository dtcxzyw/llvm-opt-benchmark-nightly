Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/p3p?download=true
inline.NumInlined: 533
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv3p3p8estimateERSt6vectorINS_3MatESaIS2_EES5_RKS2_S7_:bb.a
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.c, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.u, ptr %1, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 832
  store ptr %i.af, ptr %i.i, align 8, !tbaa !25
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit:    ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = load ptr, ptr %2, align 8, !tbaa !26
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 208
  %i.an = icmp ult i64 %i.am, 4
  br i1 %i.an, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i267, label %bb.e

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i267: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ak
  %i.as = invoke noalias noundef nonnull dereferenceable(832) ptr @_Znwm(i64 noundef 832) #21
          to label %.noexc278 unwind label %bb.h  ; 4 uses

.noexc278:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i267
  %i.at = load ptr, ptr %2, align 8, !tbaa !26    ; 3 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !27 ; 2 uses
  %.not10.i.i.i.i268 = icmp eq ptr %i.at, %i.au
  br i1 %.not10.i.i.i.i268, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i275, label %.lr.ph.i.i.i.i269

.lr.ph.i.i.i.i269:                                ; preds = %.noexc278, %.lr.ph.i.i.i.i269
  %.012.i.i.i.i270 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i269 ], [ %i.as, %.noexc278 ] ; 2 uses
  %.0911.i.i.i.i271 = phi ptr [ %i.av, %.lr.ph.i.i.i.i269 ], [ %i.at, %.noexc278 ] ; 3 uses
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i.i270, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i.i271) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i.i271) #19
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i271, i64 208 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i270, i64 208
  %.not.i.i.i.i272 = icmp eq ptr %i.av, %i.au
  br i1 %.not.i.i.i.i272, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i273, label %.lr.ph.i.i.i.i269, !llvm.loop !0

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i273: ; preds = %.lr.ph.i.i.i.i269
  %.pr.i274 = load ptr, ptr %2, align 8, !tbaa !26
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i275

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i275: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i273, %.noexc278
  %i.ax = phi ptr [ %.pr.i274, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i273 ], [ %i.at, %.noexc278 ] ; 3 uses
  %.not.i8.i276 = icmp eq ptr %i.ax, null
  br i1 %.not.i8.i276, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i277, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i275
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #22
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i277

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i277: ; preds = %bb.d, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i275
  store ptr %i.as, ptr %2, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store ptr %i.bc, ptr %i.ao, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 832
  store ptr %i.bd, ptr %i.ag, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit.i277, %_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !18 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !18 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load <2 x double>, ptr %i.be, align 8, !tbaa !18, !noalias !64 ; 7 uses
  %i.bs = load <2 x double>, ptr %i.bf, align 8, !tbaa !18, !noalias !64 ; 5 uses
  %i.bt = fsub <2 x double> %i.br, %i.bs          ; 5 uses
  %i.bu = load double, ptr %i.bg, align 8, !tbaa !18, !noalias !64 ; 4 uses
  %i.bv = load double, ptr %i.bh, align 8, !tbaa !18, !noalias !64 ; 3 uses
  %i.bw = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x double> %i.bw, double %i.bu, i64 1
  %i.by = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bz = insertelement <2 x double> %i.by, double %i.bv, i64 1
  %i.ca = fsub <2 x double> %i.bx, %i.bz          ; 4 uses
  %i.cb = load <2 x double>, ptr %i.bi, align 8, !tbaa !18, !noalias !65 ; 3 uses
  %i.cc = fsub <2 x double> %i.br, %i.cb          ; 5 uses
  %i.cd = load double, ptr %i.bj, align 8, !tbaa !18, !noalias !65
  %i.ce = load double, ptr %i.bk, align 8, !tbaa !18, !noalias !65 ; 2 uses
  %i.cf = fsub <2 x double> %i.bs, %i.cb          ; 5 uses
  %i.cg = extractelement <2 x double> %i.bt, i64 0 ; 2 uses
  %i.ch = extractelement <2 x double> %i.bt, i64 1 ; 2 uses
  %i.ci = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  %i.cj = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.bu, i64 1
  %i.cl = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fsub <2 x double> %i.ck, %i.cm          ; 6 uses
  %i.co = call double @llvm.fmuladd.f64(double %i.cg, double %i.cg, double 0.000000e+00)
  %i.cp = call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %i.co)
  %i.cq = call noundef double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double %i.cp) ; 8 uses
  %i.cr = shufflevector <2 x double> %i.cf, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.cr, <2 x double> zeroinitializer)
  %i.ct = shufflevector <2 x double> %i.cf, <2 x double> %i.cc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.ct, <2 x double> %i.cs)
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cn, <2 x double> %i.cu) ; 6 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 1 ; 6 uses
  %i.cx = extractelement <2 x double> %i.cv, i64 0 ; 6 uses
  %i.cy = load <2 x double>, ptr %0, align 8, !tbaa !18 ; 7 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 1 ; 4 uses
  %i.da = extractelement <2 x double> %i.cy, i64 0 ; 4 uses
  %i.db = load <2 x double>, ptr %i.bn, align 8, !tbaa !18 ; 6 uses
  %i.dc = extractelement <2 x double> %i.db, i64 1 ; 4 uses
  %i.dd = extractelement <2 x double> %i.db, i64 0 ; 4 uses
  %i.de = load <2 x double>, ptr %i.bq, align 8, !tbaa !18 ; 9 uses
  %i.df = extractelement <2 x double> %i.de, i64 1 ; 4 uses
  %i.dg = extractelement <2 x double> %i.de, i64 0 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.di = load double, ptr %i.dh, align 8, !tbaa !18 ; 4 uses
  %i.dj = fcmp ogt double %i.cq, %i.cw
  br i1 %i.dj, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.dk = fcmp ogt double %i.cq, %i.cx
  %i.dl = extractelement <2 x double> %i.br, i64 0
  %i.dm = extractelement <2 x double> %i.br, i64 1
  %i.dn = shufflevector <2 x double> %i.de, <2 x double> %i.db, <2 x i32> <i32 0, i32 3>
  %i.do = insertelement <2 x double> %i.cv, double %i.cq, i64 0
  %i.dp = extractelement <2 x double> %i.cn, i64 1 ; 2 uses
  br i1 %i.dk, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.dq = fneg <2 x double> %i.cf
  %i.dr = shufflevector <2 x double> %i.cf, <2 x double> %i.cn, <2 x i32> <i32 1, i32 2>
  %i.ds = fneg <2 x double> %i.dr
  %i.dt = fneg <2 x double> %i.cc
  %i.du = fneg double %i.dp
  %i.dv = extractelement <2 x double> %i.cb, i64 0
  %i.dw = shufflevector <2 x double> %i.cy, <2 x double> %i.db, <2 x i32> <i32 0, i32 3>
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i267, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE11_M_allocateEm.exit.i, %bb.a
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.i:                                             ; preds = %bb.e
  %i.dy = fcmp ogt double %i.cw, %i.cx
  %i.dz = extractelement <2 x double> %i.br, i64 0
  %i.ea = extractelement <2 x double> %i.br, i64 1
  %i.eb = shufflevector <2 x double> %i.de, <2 x double> %i.db, <2 x i32> <i32 0, i32 3>
  %i.ec = insertelement <2 x double> %i.cv, double %i.cq, i64 0 ; 2 uses
  %i.ed = extractelement <2 x double> %i.cn, i64 1
  br i1 %i.dy, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ee = fneg <2 x double> %i.bt
  %i.ef = fneg <2 x double> %i.ca
  %i.eg = extractelement <2 x double> %i.bs, i64 0
  %i.eh = extractelement <2 x double> %i.bs, i64 1
  %i.ei = shufflevector <2 x double> %i.de, <2 x double> %i.cy, <2 x i32> <i32 0, i32 3>
  %i.ej = shufflevector <2 x double> %i.ec, <2 x double> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.ek = extractelement <2 x double> %i.cn, i64 0
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f, %bb.g
  %.sroa.17.0 = phi double [ %i.du, %bb.g ], [ %i.dp, %bb.f ], [ %i.ek, %bb.j ], [ %i.ed, %bb.i ] ; 4 uses
  %.0640 = phi double [ %i.cx, %bb.g ], [ %i.cq, %bb.f ], [ %i.cq, %bb.j ], [ %i.cq, %bb.i ] ; 3 uses
  %.0639 = phi double [ %i.cw, %bb.g ], [ %i.cw, %bb.f ], [ %i.cx, %bb.j ], [ %i.cw, %bb.i ] ; 2 uses
  %.0 = phi double [ %i.cq, %bb.g ], [ %i.cx, %bb.f ], [ %i.cw, %bb.j ], [ %i.cx, %bb.i ] ; 4 uses
  %.sroa.0551.sroa.17.0 = phi double [ %i.ce, %bb.g ], [ %i.bu, %bb.f ], [ %i.bv, %bb.j ], [ %i.bu, %bb.i ] ; 4 uses
  %.sroa.0551.sroa.10.0 = phi double [ %i.cd, %bb.g ], [ %i.dm, %bb.f ], [ %i.eh, %bb.j ], [ %i.ea, %bb.i ] ; 4 uses
  %.sroa.0551.sroa.0.0 = phi double [ %i.dv, %bb.g ], [ %i.dl, %bb.f ], [ %i.eg, %bb.j ], [ %i.dz, %bb.i ] ; 4 uses
  %.sroa.0465.sroa.29.0 = phi double [ %i.di, %bb.g ], [ %i.bm, %bb.f ], [ %i.bp, %bb.j ], [ %i.bm, %bb.i ] ; 4 uses
  %.sroa.0465.sroa.16.0 = phi double [ %i.df, %bb.g ], [ %i.cz, %bb.f ], [ %i.dc, %bb.j ], [ %i.cz, %bb.i ] ; 2 uses
  %.sroa.0465.sroa.0.0 = phi double [ %i.dg, %bb.g ], [ %i.da, %bb.f ], [ %i.dd, %bb.j ], [ %i.da, %bb.i ] ; 2 uses
  %.sroa.38.sroa.16.0 = phi double [ %i.bp, %bb.g ], [ %i.bp, %bb.f ], [ %i.bm, %bb.j ], [ %i.bp, %bb.i ] ; 4 uses
  %.sroa.38.sroa.10.0 = phi double [ %i.dc, %bb.g ], [ %i.dc, %bb.f ], [ %i.cz, %bb.j ], [ %i.dc, %bb.i ] ; 2 uses
  %.sroa.38.sroa.0.0 = phi double [ %i.dd, %bb.g ], [ %i.dd, %bb.f ], [ %i.da, %bb.j ], [ %i.dd, %bb.i ] ; 4 uses
  %.sroa.57.sroa.16.0 = phi double [ %i.bm, %bb.g ], [ %i.di, %bb.f ], [ %i.di, %bb.j ], [ %i.di, %bb.i ] ; 4 uses
  %.sroa.57.sroa.10.0 = phi double [ %i.cz, %bb.g ], [ %i.df, %bb.f ], [ %i.df, %bb.j ], [ %i.df, %bb.i ] ; 3 uses
  %.sroa.57.sroa.0.0 = phi double [ %i.da, %bb.g ], [ %i.dg, %bb.f ], [ %i.dg, %bb.j ], [ %i.dg, %bb.i ]
  %i.el = phi <2 x double> [ %i.dq, %bb.g ], [ %i.bt, %bb.f ], [ %i.ee, %bb.j ], [ %i.bt, %bb.i ] ; 10 uses
  %i.em = phi <2 x double> [ %i.ds, %bb.g ], [ %i.ca, %bb.f ], [ %i.ef, %bb.j ], [ %i.ca, %bb.i ] ; 3 uses
  %i.en = phi <2 x double> [ %i.dt, %bb.g ], [ %i.cc, %bb.f ], [ %i.cf, %bb.j ], [ %i.cc, %bb.i ] ; 8 uses
  %i.eo = phi <2 x double> [ %i.de, %bb.g ], [ %i.cy, %bb.f ], [ %i.db, %bb.j ], [ %i.cy, %bb.i ] ; 2 uses
  %i.ep = phi <2 x double> [ %i.dw, %bb.g ], [ %i.dn, %bb.f ], [ %i.ei, %bb.j ], [ %i.eb, %bb.i ] ; 2 uses
  %i.eq = phi <2 x double> [ %i.cv, %bb.g ], [ %i.do, %bb.f ], [ %i.ej, %bb.j ], [ %i.ec, %bb.i ]
  %i.er = phi <2 x double> [ %i.cy, %bb.g ], [ %i.de, %bb.f ], [ %i.de, %bb.j ], [ %i.de, %bb.i ]
  %i.es = call double @llvm.fmuladd.f64(double %.sroa.0465.sroa.0.0, double %.sroa.38.sroa.0.0, double 0.000000e+00)
  %i.et = call double @llvm.fmuladd.f64(double %.sroa.0465.sroa.16.0, double %.sroa.38.sroa.10.0, double %i.es)
  %i.eu = call double @llvm.fmuladd.f64(double %.sroa.0465.sroa.0.0, double %.sroa.57.sroa.0.0, double 0.000000e+00)
  %i.ev = insertelement <2 x double> poison, double %.sroa.38.sroa.0.0, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %.sroa.0465.sroa.16.0, i64 1
  %i.ex = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.eu, i64 1
  %i.ey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.er, <2 x double> %i.ex)
  %i.ez = insertelement <2 x double> poison, double %.sroa.38.sroa.10.0, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %.sroa.0465.sroa.29.0, i64 1
  %i.fb = insertelement <2 x double> poison, double %.sroa.57.sroa.10.0, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %.sroa.57.sroa.16.0, i64 1
  %i.fd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fc, <2 x double> %i.ey) ; 6 uses
  %i.fe = extractelement <2 x double> %i.fd, i64 0
  %i.ff = extractelement <2 x double> %i.fd, i64 1 ; 4 uses
  %i.fg = call noundef double @llvm.fmuladd.f64(double %.sroa.0465.sroa.29.0, double %.sroa.38.sroa.16.0, double %i.et) ; 10 uses
  %i.fh = call noundef double @llvm.fmuladd.f64(double %.sroa.38.sroa.16.0, double %.sroa.57.sroa.16.0, double %i.fe) ; 11 uses
  %i.fi = fneg double %i.fh
  %i.fj = insertelement <2 x double> %i.fd, double %i.fi, i64 0
  %i.fk = insertelement <2 x double> %i.fd, double %i.fh, i64 0
  %i.fl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> %i.fk, <2 x double> <double 1.000000e+00, double -1.000000e+00>) ; 3 uses
  %i.fm = fmul double %i.fg, 2.000000e+00
  %i.fn = fmul double %i.fm, %i.ff
  %i.fo = insertelement <2 x double> poison, double %i.fg, i64 0 ; 2 uses
  %i.fp = insertelement <2 x double> %i.fo, double %i.fn, i64 1
  %i.fq = insertelement <2 x double> %i.fo, double %i.fh, i64 1
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fq, <2 x double> <double -1.000000e+00, double -2.000000e+00>) ; 2 uses
  %i.fs = fdiv double 1.000000e+00, %.0
  %i.ft = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x double> %i.eq, %i.fu          ; 12 uses
  %i.fw = extractelement <2 x double> %i.fv, i64 0 ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.fv, %i.fv
  %foldExtExtBinop722 = fmul <2 x double> %foldExtExtBinop, %i.fl ; 2 uses
  %i.fx = extractelement <2 x double> %i.fv, i64 1 ; 5 uses
  %i.fy = fmul double %i.fw, %i.fx
  %i.fz = insertelement <2 x double> %i.fv, double %i.fy, i64 0
  %i.ga = insertelement <2 x double> %i.fv, double 2.000000e+00, i64 0
  %i.gb = fmul <2 x double> %i.fz, %i.ga
  %i.gc = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x double> %i.gb, %i.gc          ; 2 uses
  %i.ge = fadd <2 x double> %i.fv, <double -1.000000e+00, double -0.000000e+00>
  %i.gf = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.gf, <2 x double> %i.gd) ; 2 uses
  %i.gh = extractelement <2 x double> %i.gg, i64 1
  %i.gi = fdiv double 1.000000e+00, %i.gh         ; 2 uses
  %i.gj = shufflevector <2 x double> %foldExtExtBinop722, <2 x double> %i.gg, <2 x i32> <i32 0, i32 2>
  %i.gk = fadd <2 x double> %i.gj, %i.gd
  %i.gl = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.gl, <2 x double> %i.gk) ; 2 uses
  %i.gn = extractelement <2 x double> %i.gm, i64 1
  %i.go = fmul double %i.gi, %i.gn                ; 9 uses
  %i.gp = fadd <2 x double> %i.fv, <double -0.000000e+00, double -1.000000e+00>
  %i.gq = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = shufflevector <2 x double> %foldExtExtBinop722, <2 x double> %i.gm, <2 x i32> <i32 0, i32 2>
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.gq, <2 x double> %i.gr)
  %i.gt = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = fmul <2 x double> %i.gs, %i.gu          ; 3 uses
  %i.gw = fmul double %i.go, %i.go
  %i.gx = fmul double %i.go, 2.000000e+00
  %i.gy = fmul double %i.go, %i.gx
  %i.gz = fmul double %i.go, 9.000000e+00
  %i.ha = extractelement <2 x double> %i.gv, i64 1
  %i.hb = fneg double %i.ha
  %i.hc = fmul double %i.gz, %i.hb
  %i.hd = call double @llvm.fmuladd.f64(double %i.gy, double %i.go, double %i.hc)
  %i.he = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hf = insertelement <2 x double> %i.he, double %i.gw, i64 1
  %i.hg = fdiv <2 x double> %i.hf, <double 2.700000e+01, double 3.000000e+00> ; 2 uses
  %i.hh = fadd <2 x double> %i.gv, %i.hg          ; 2 uses
  %i.hi = fsub <2 x double> %i.gv, %i.hg          ; 5 uses
  %i.hj = shufflevector <2 x double> %i.hh, <2 x double> %i.hi, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.hk = extractelement <2 x double> %i.hh, i64 0 ; 2 uses
  %foldExtExtBinop724 = fmul <2 x double> %i.hj, %i.hj
  %i.hl = extractelement <2 x double> %foldExtExtBinop724, i64 0
  %i.hm = fmul double %i.hl, 2.500000e-01
  %i.hn = extractelement <2 x double> %i.hi, i64 1 ; 4 uses
  %i.ho = fmul double %i.hn, %i.hn
  %i.hp = fmul double %i.hn, %i.ho
  %i.hq = fdiv double %i.hp, 2.700000e+01
  %i.hr = fadd double %i.hq, %i.hm                ; 3 uses
  %i.hs = fcmp une double %i.hr, 0.000000e+00
  br i1 %i.hs, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ht = fcmp ogt double %i.hr, 0.000000e+00
  br i1 %i.ht, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hu = call double @sqrt(double noundef %i.hr) #19 ; 2 uses
  %i.hv = fmul double %i.hk, -5.000000e-01        ; 2 uses
  %i.hw = fadd double %i.hv, %i.hu
  %i.hx = call double @cbrt(double noundef %i.hw) #23
  %i.hy = fsub double %i.hv, %i.hu
  %i.hz = call double @cbrt(double noundef %i.hy) #23
  %i.ia = fadd double %i.hx, %i.hz
  %i.ib = fdiv double %i.go, 3.000000e+00
  %i.ic = fsub double %i.ia, %i.ib
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.id = fmul <2 x double> %i.hj, <double 3.000000e+00, double 2.000000e+00> ; 2 uses
  %i.ie = extractelement <2 x double> %i.id, i64 0
  %i.if = extractelement <2 x double> %i.id, i64 1
  %i.ig = fdiv double %i.ie, %i.if
  %i.ih = insertelement <2 x double> %i.hi, double -3.000000e+00, i64 0
  %i.ii = shufflevector <2 x double> %i.hi, <2 x double> <double poison, double -3.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ij = fdiv <2 x double> %i.ih, %i.ii          ; 2 uses
  %i.ik = extractelement <2 x double> %i.ij, i64 0
  %i.il = call double @sqrt(double noundef %i.ik) #19
  %i.im = fmul double %i.ig, %i.il
  %i.in = extractelement <2 x double> %i.ij, i64 1
  %i.io = call double @sqrt(double noundef %i.in) #19
  %i.ip = fmul double %i.io, 2.000000e+00
  %i.iq = call double @acos(double noundef %i.im) #19
  %i.ir = fdiv double %i.iq, 3.000000e+00
  %i.is = call double @cos(double noundef %i.ir) #19
  %i.it = fdiv double %i.go, -3.000000e+00
  %i.iu = call double @llvm.fmuladd.f64(double %i.ip, double %i.is, double %i.it)
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.iv = fcmp une double %i.hn, 0.000000e+00
  %i.iw = fmul double %i.hk, 3.000000e+00
  %i.ix = insertelement <2 x double> poison, double %i.go, i64 0
  %i.iy = insertelement <2 x double> %i.ix, double %i.iw, i64 1
  %i.iz = insertelement <2 x double> %i.hi, double 3.000000e+00, i64 0
  %i.ja = fdiv <2 x double> %i.iy, %i.iz          ; 2 uses
  %i.jb = extractelement <2 x double> %i.ja, i64 1
  %i.jc = select i1 %i.iv, double %i.jb, double 0.000000e+00
  %i.jd = extractelement <2 x double> %i.ja, i64 0
  %i.je = fsub double %i.jc, %i.jd
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %storemerge38.i = phi double [ %i.ic, %bb.m ], [ %i.je, %bb.o ], [ %i.iu, %bb.n ] ; 5 uses
  %.0.i = phi i1 [ true, %bb.m ], [ false, %bb.o ], [ false, %bb.n ]
  %i.jf = fneg double %i.fw                       ; 3 uses
  %i.jg = fsub double 1.000000e+00, %i.fx
  %i.jh = call double @llvm.fmuladd.f64(double %storemerge38.i, double %i.jg, double %i.jf) ; 4 uses
  %i.ji = fneg double %i.ff
  %i.jj = fmul double %storemerge38.i, %i.ji      ; 6 uses
  %i.jk = fmul double %i.fx, %i.fh
  %i.jl = fmul double %i.jk, %storemerge38.i
  %i.jm = call double @llvm.fmuladd.f64(double %i.fw, double %i.fh, double %i.jl) ; 6 uses
  %i.jn = fneg double %i.fg                       ; 2 uses
  %i.jo = fneg double %i.fx                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.jp = call double @llvm.fmuladd.f64(double %i.jo, double %storemerge38.i, double %i.jf)
  %i.jq = insertelement <2 x double> poison, double %i.jp, i64 0
  %i.jr = insertelement <2 x double> %i.jq, double %storemerge38.i, i64 1
  %i.js = fadd <2 x double> %i.jr, splat (double 1.000000e+00) ; 3 uses
  %i.jt = fneg <2 x double> %i.js                 ; 2 uses
  %23 = extractelement <2 x double> %i.jt, i64 0
  %24 = extractelement <2 x double> %i.js, i64 1  ; 2 uses
  %25 = fmul double %24, %23
  %i.ju = call double @llvm.fmuladd.f64(double %i.fg, double %i.fg, double %25) ; 2 uses
  %i.jv = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x double> %i.jw, %i.jt
  %i.jy = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jz = insertelement <2 x double> %i.jy, double %i.jj, i64 1 ; 2 uses
  %i.ka = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.jz, <2 x double> %i.jx) ; 2 uses
  %26 = fmul double %i.fg, %i.jm
  %27 = extractelement <2 x double> %i.js, i64 0
  %28 = call double @llvm.fmuladd.f64(double %i.jj, double %27, double %26)
  %29 = fmul double %i.fg, %i.jj
  %30 = call double @llvm.fmuladd.f64(double %i.jm, double %24, double %29)
  %i.kb = fneg double %i.jj
  %i.kc = fmul double %i.jm, %i.kb
  %i.kd = call double @llvm.fmuladd.f64(double %i.jh, double %i.jn, double %i.kc) ; 2 uses
  %i.ke = extractelement <2 x double> %i.ka, i64 0 ; 3 uses
  %i.kf = fcmp ogt double %i.ju, %i.ke            ; 3 uses
  %..i = select i1 %i.kf, double %i.ju, double %i.ke ; 2 uses
  %.78.i = select i1 %i.kf, double %28, double %i.ke
  %.79.i = select i1 %i.kf, double %30, double %i.kd
  %i.kg = extractelement <2 x double> %i.ka, i64 1 ; 3 uses
  %i.kh = fcmp ogt double %..i, %i.kg             ; 3 uses
  %.69.i = select i1 %i.kh, double %..i, double %i.kg
  %.70.i = select i1 %i.kh, double %.78.i, double %i.kd
  %.71.i = select i1 %i.kh, double %.79.i, double %i.kg
  %i.ki = call double @sqrt(double noundef %.69.i) #19, !noalias !66
  %i.kj = fdiv double 1.000000e+00, %i.ki         ; 2 uses
  %i.kk = fmul double %i.kj, %.70.i               ; 2 uses
  %i.kl = fmul double %i.kj, %.71.i               ; 2 uses
  %i.km = fsub double %i.jj, %i.kl
  %i.kn = fadd double %i.jm, %i.kk
  %i.ko = fadd double %i.jj, %i.kl
  %i.kp = fsub double %i.jm, %i.kk
  store double %i.jh, ptr %14, align 8, !tbaa !18, !alias.scope !66
  %i.kq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store double %i.ko, ptr %i.kq, align 8, !tbaa !18, !alias.scope !66
  %i.kr = getelementptr inbounds nuw i8, ptr %14, i64 16
  store double %i.kp, ptr %i.kr, align 8, !tbaa !18, !alias.scope !66
  %i.ks = getelementptr inbounds nuw i8, ptr %14, i64 24
  store double %i.jh, ptr %i.ks, align 8, !tbaa !18, !alias.scope !66
  %i.kt = getelementptr inbounds nuw i8, ptr %14, i64 32
  store double %i.km, ptr %i.kt, align 8, !tbaa !18, !alias.scope !66
  %i.ku = getelementptr inbounds nuw i8, ptr %14, i64 40
  store double %i.kn, ptr %i.ku, align 8, !tbaa !18, !alias.scope !66
  %31 = extractelement <2 x double> %i.en, i64 1
  %i.kv = extractelement <2 x double> %i.en, i64 0 ; 2 uses
  %i.kw = fneg <2 x double> %i.en                 ; 2 uses
  %i.kx = fneg double %.sroa.17.0                 ; 2 uses
  %i.ky = extractelement <2 x double> %i.el, i64 0 ; 2 uses
  %i.kz = fmul double %i.ky, %i.kx
  %i.la = extractelement <2 x double> %i.em, i64 1 ; 3 uses
  %i.lb = call double @llvm.fmuladd.f64(double %i.la, double %i.kv, double %i.kz) ; 5 uses
  %i.lc = fmul <2 x double> %i.em, %i.kw
  %i.ld = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.le = insertelement <2 x double> %i.ld, double %.sroa.17.0, i64 1
  %i.lf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.le, <2 x double> %i.lc) ; 7 uses
  %i.lg = fneg double %i.lb                       ; 3 uses
  %32 = fmul double %.sroa.17.0, %i.lg
  %33 = extractelement <2 x double> %i.lf, i64 0  ; 2 uses
  %34 = call double @llvm.fmuladd.f64(double %31, double %33, double %32)
  %35 = fmul double %i.la, %i.lg
  %36 = extractelement <2 x double> %i.el, i64 1
  %37 = call double @llvm.fmuladd.f64(double %36, double %33, double %35)
  %i.lh = fneg double %37
  %i.li = fmul double %i.kv, %i.lh
  %i.lj = call double @llvm.fmuladd.f64(double %i.ky, double %34, double %i.li)
  %i.lk = extractelement <2 x double> %i.lf, i64 1 ; 2 uses
  %i.ll = call noundef double @llvm.fmuladd.f64(double %i.lk, double %i.lk, double %i.lj) ; 2 uses
  %i.lm = fcmp une double %i.ll, 0.000000e+00
  br i1 %i.lm, label %bb.q, label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit

bb.q:                                             ; preds = %bb.p
  %i.ln = fdiv double 1.000000e+00, %i.ll         ; 2 uses
  %i.lo = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.lp = insertelement <2 x double> %i.lo, double %i.lb, i64 0
  %i.lq = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.lr = insertelement <2 x double> %i.lq, double %i.lg, i64 1
  %i.ls = fmul <2 x double> %i.lp, %i.lr
  %i.lt = fneg double %i.la                       ; 2 uses
  %i.lu = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lv = insertelement <2 x double> %i.kw, double %i.lt, i64 0
  %i.lw = fmul <2 x double> %i.lu, %i.lv
  %i.lx = shufflevector <2 x double> %i.el, <2 x double> %i.en, <2 x i32> <i32 0, i32 2>
  %i.ly = insertelement <2 x double> %i.lf, double %i.lb, i64 1
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lx, <2 x double> %i.ly, <2 x double> %i.lw)
  %i.ma = insertelement <2 x double> poison, double %i.ln, i64 0
  %i.mb = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.mc = fmul <2 x double> %i.lz, %i.mb
  %i.md = shufflevector <2 x double> %i.ld, <2 x double> %i.el, <2 x i32> <i32 0, i32 3>
  %i.me = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.md, <2 x double> %i.ls)
  %i.mf = fmul <2 x double> %i.me, %i.mb
  %i.mg = fmul double %i.lb, %i.ln
  %i.mh = shufflevector <2 x double> %i.lf, <2 x double> %i.el, <2 x i32> <i32 0, i32 3>
  %i.mi = fneg <2 x double> %i.mh                 ; 2 uses
  %i.mj = insertelement <2 x double> %i.mi, double %i.lt, i64 1
  %i.mk = fmul <2 x double> %i.en, %i.mj
  %i.ml = shufflevector <2 x double> %i.lf, <2 x double> %i.el, <2 x i32> <i32 1, i32 3>
  %i.mm = insertelement <2 x double> poison, double %.sroa.17.0, i64 0
  %i.mn = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.mn, <2 x double> %i.mk)
  %i.mp = fmul <2 x double> %i.mo, %i.mb
  %i.mq = shufflevector <2 x double> %i.el, <2 x double> %i.en, <2 x i32> <i32 1, i32 2>
  %i.mr = fmul <2 x double> %i.mq, %i.mi
  %i.ms = shufflevector <2 x double> %i.em, <2 x double> %i.el, <2 x i32> <i32 1, i32 2>
  %i.mt = insertelement <2 x double> %i.en, double %i.lb, i64 0
  %i.mu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> %i.mt, <2 x double> %i.mr)
  %i.mv = fmul <2 x double> %i.mu, %i.mb
  br label %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit

_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit:             ; preds = %bb.q, %bb.p
  %.sroa.0389.sroa.12.0 = phi double [ %i.mg, %bb.q ], [ 0.000000e+00, %bb.p ] ; 5 uses
  %i.mw = phi <2 x double> [ %i.mf, %bb.q ], [ zeroinitializer, %bb.p ] ; 9 uses
  %i.mx = phi <2 x double> [ %i.mv, %bb.q ], [ zeroinitializer, %bb.p ] ; 7 uses
  %i.my = phi <2 x double> [ %i.mp, %bb.q ], [ zeroinitializer, %bb.p ] ; 8 uses
  %i.mz = phi <2 x double> [ %i.mc, %bb.q ], [ zeroinitializer, %bb.p ] ; 8 uses
  %i.na = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ne = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ng = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.nj = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.nl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.no = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.nr = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.ns = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.nt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.nw = shufflevector <2 x double> %i.fd, <2 x double> %i.fv, <2 x i32> <i32 1, i32 2>
  %i.nx = fmul <2 x double> %i.nw, splat (double 2.000000e+00) ; 2 uses
  %i.ny = extractelement <2 x double> %i.nx, i64 1
  %i.nz = fmul double %i.ny, %i.fh
  %i.oa = fmul double %i.fw, %i.fh
  %i.ob = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.oc = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.oe = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.og = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.oi = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.oj = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.ok = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.ol = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.om = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.on = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.oq = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.or = getelementptr inbounds nuw i8, ptr %22, i64 128
  %i.os = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ot = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ou = shufflevector <2 x double> %i.fd, <2 x double> %i.nx, <2 x i32> <i32 1, i32 2>
  %i.ov = extractelement <2 x double> %i.mw, i64 0 ; 2 uses
  %i.ow = extractelement <2 x double> %i.mx, i64 0 ; 2 uses
  %i.ox = extractelement <2 x double> %i.my, i64 0
  %i.oy = extractelement <2 x double> %i.my, i64 1
  %i.oz = extractelement <2 x double> %i.mz, i64 0
  %i.pa = insertelement <2 x double> poison, double %.sroa.0551.sroa.17.0, i64 0
  %i.pb = shufflevector <2 x double> %i.pa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pc = insertelement <2 x double> poison, double %.sroa.0551.sroa.10.0, i64 0
  %i.pd = shufflevector <2 x double> %i.pc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pe = insertelement <2 x double> poison, double %.sroa.0551.sroa.0.0, i64 0
  %i.pf = shufflevector <2 x double> %i.pe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pg = insertelement <2 x double> poison, double %.sroa.38.sroa.16.0, i64 0
  %i.ph = insertelement <2 x double> %i.pg, double %.sroa.57.sroa.16.0, i64 1
  %i.pi = insertelement <2 x double> poison, double %.sroa.0389.sroa.12.0, i64 0 ; 2 uses
  %i.pj = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pk = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pl = extractelement <2 x double> %i.mx, i64 1 ; 2 uses
  %i.pm = insertelement <2 x double> %i.mw, double %.sroa.0389.sroa.12.0, i64 0
  %i.pn = insertelement <2 x double> poison, double %i.oa, i64 1
  %i.po = insertelement <2 x double> poison, double %i.jn, i64 1
  %i.pp = insertelement <2 x double> poison, double %.sroa.0551.sroa.17.0, i64 0
  %i.pq = shufflevector <2 x double> %i.pp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pr = insertelement <2 x double> poison, double %.sroa.0551.sroa.10.0, i64 0
  %i.ps = shufflevector <2 x double> %i.pr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pt = insertelement <2 x double> poison, double %.sroa.0551.sroa.0.0, i64 0
  %i.pu = shufflevector <2 x double> %i.pt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pv = insertelement <2 x double> poison, double %.sroa.38.sroa.16.0, i64 0
  %i.pw = insertelement <2 x double> %i.pv, double %.sroa.57.sroa.16.0, i64 1
  %i.px = extractelement <2 x double> %i.mw, i64 0
  %i.py = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pz = extractelement <2 x double> %i.mx, i64 0
  %i.qa = insertelement <2 x double> poison, double %.sroa.0389.sroa.12.0, i64 0
  %i.qb = insertelement <2 x double> %i.mw, double %.sroa.0389.sroa.12.0, i64 0
  %i.qc = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qd = insertelement <2 x double> %i.qc, double %.sroa.0389.sroa.12.0, i64 1
  %i.qe = shufflevector <2 x double> %i.mx, <2 x double> %i.mz, <2 x i32> <i32 0, i32 2>
  %i.qf = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qg = shufflevector <2 x double> %i.my, <2 x double> %i.mz, <2 x i32> <i32 0, i32 3>
  br label %bb.r

bb.r:                                             ; preds = %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit, %bb.bt
  %i.qh = phi i1 [ true, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ], [ false, %bb.bt ]
  %indvars.iv.sroa.phi = phi ptr [ %14, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ], [ %indvars.iv.sroa.gep732, %bb.bt ] ; 2 uses
  %.0172687 = phi i32 [ 0, %_ZNK2cv4MatxIdLi3ELi3EE3invEiPb.exit ], [ %.10.ph, %bb.bt ] ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 16
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !18
  %i.qk = load <2 x double>, ptr %indvars.iv.sroa.phi, align 8, !tbaa !18 ; 5 uses
  %i.ql = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.qk) ; 2 uses
  %i.qm = extractelement <2 x double> %i.ql, i64 0
  %i.qn = extractelement <2 x double> %i.ql, i64 1
  %i.qo = fcmp ugt double %i.qm, %i.qn
  %i.qp = fneg double %i.qj                       ; 2 uses
  br i1 %i.qo, label %bb.as, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.qq = insertelement <2 x double> poison, double %i.qp, i64 0
  %i.qr = fneg <2 x double> %i.qk
  %i.qs = shufflevector <2 x double> %i.qq, <2 x double> %i.qr, <2 x i32> <i32 0, i32 2>
  %i.qt = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qu = fdiv <2 x double> %i.qs, %i.qt          ; 5 uses
  %i.qv = extractelement <2 x double> %i.qu, i64 0 ; 3 uses
  %i.qw = call double @llvm.fmuladd.f64(double %i.qv, double %i.qv, double %i.jo)
  %i.qx = fdiv double 1.000000e+00, %i.qw         ; 2 uses
  %i.qy = fneg <2 x double> %i.qu
  %i.qz = fmul <2 x double> %i.ou, %i.qy          ; 2 uses
  %i.ra = extractelement <2 x double> %i.qz, i64 0
  %i.rb = call double @llvm.fmuladd.f64(double %i.fx, double %i.fh, double %i.ra)
  %i.rc = shufflevector <2 x double> %i.qu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rd = insertelement <2 x double> %i.qz, double %i.rb, i64 0
  %i.re = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rc, <2 x double> %i.qu, <2 x double> %i.rd) ; 2 uses
  %i.rf = extractelement <2 x double> %i.re, i64 0
  %i.rg = fmul double %i.rf, 2.000000e+00
  %i.rh = fmul double %i.qx, %i.rg                ; 8 uses
  %foldExtExtBinop728.a = fsub <2 x double> %i.re, %i.fv
  %i.ri = extractelement <2 x double> %foldExtExtBinop728.a, i64 1
  %i.rj = fadd double %i.ri, 1.000000e+00
  %i.rk = fmul double %i.qx, %i.rj                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.rl = fmul double %i.rk, -4.000000e+00
  %i.rm = call double @llvm.fmuladd.f64(double %i.rh, double %i.rh, double %i.rl) ; 4 uses
  %i.rn = fcmp uge double %i.rm, f0xBD719799812DEA11
  br i1 %i.rn, label %bb.t, label %.thread

.thread:                                          ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bt

bb.t:                                             ; preds = %bb.s
  %i.ro = fcmp ogt double %i.rm, f0xBD719799812DEA11
  %i.rp = fcmp olt double %i.rm, 0.000000e+00
  %or.cond.i = and i1 %i.ro, %i.rp
  br i1 %or.cond.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.rq = fmul double %i.rh, -5.000000e-01
  %i.rr = insertelement <2 x double> <double poison, double -2.000000e+00>, double %i.rq, i64 0
  br label %_ZN2cv7yaqdingL9root2realEddRdS1_.exit

bb.v:                                             ; preds = %bb.t
  %i.rs = call double @sqrt(double noundef %i.rm) #19 ; 4 uses
  %i.rt = fcmp olt double %i.rh, 0.000000e+00
  br i1 %i.rt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
end_hunk_0
