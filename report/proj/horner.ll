Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/horner?download=true
inline.NumInlined: 45
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL27horner_iterative_inverse_4dR8PJ_COORDP8PJconsts:bb.a
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !59 ; 3 uses
  %i.ai = icmp ugt i32 %i.l, 1
  %i.aj = zext i32 %i.x to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aj
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 3 uses
  %i.ao = fneg <2 x double> %i.w
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aq = load double, ptr %i.al, align 8, !tbaa !59 ; 4 uses
  %i.ar = load double, ptr %i.an, align 8, !tbaa !59 ; 4 uses
  br i1 %i.ai, label %.lr.ph55.i.preheader.us.i.preheader, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.split.i

.lr.ph55.i.preheader.us.i.preheader:              ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.as = add i32 %i.l, -1                        ; 2 uses
  %i.at = add i32 %i.l, -2                        ; 2 uses
  %i.au = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.af, i64 1
  %xtraiter = and i32 %i.as, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.aw = icmp ult i32 %i.at, 3
  %xtraiter63 = and i32 %i.as, 3                  ; 2 uses
  %lcmp.mod64.not = icmp eq i32 %xtraiter63, 0
  %i.ax = icmp ult i32 %i.at, 3
  %i.ay = insertelement <2 x double> poison, double %i.n, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph55.i.preheader.us.i

.lr.ph55.i.preheader.us.i:                        ; preds = %.lr.ph55.i.preheader.us.i.preheader, %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i
  %i.ba = phi i32 [ %i.eh, %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i ], [ 31, %.lr.ph55.i.preheader.us.i.preheader ] ; 2 uses
  %i.bb = phi <2 x double> [ %i.ed, %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i ], [ zeroinitializer, %.lr.ph55.i.preheader.us.i.preheader ] ; 13 uses
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.us.i

.lr.ph55.i.us.i:                                  ; preds = %._crit_edge.i.us.i, %.lr.ph55.i.preheader.us.i
  %.03453.i.us.i = phi i32 [ %i.bv, %._crit_edge.i.us.i ], [ %i.l, %.lr.ph55.i.preheader.us.i ] ; 3 uses
  %.03750.i.us.i = phi ptr [ %.1.lcssa.i.us.i, %._crit_edge.i.us.i ], [ %i.ag, %.lr.ph55.i.preheader.us.i ]
  %.03849.i.us.i = phi ptr [ %.139.lcssa.i.us.i, %._crit_edge.i.us.i ], [ %i.ae, %.lr.ph55.i.preheader.us.i ]
  %i.bd = phi <2 x double> [ %i.bu, %._crit_edge.i.us.i ], [ %i.av, %.lr.ph55.i.preheader.us.i ]
  %i.be = getelementptr inbounds i8, ptr %.03849.i.us.i, i64 -8 ; 3 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !59
  %i.bg = getelementptr inbounds i8, ptr %.03750.i.us.i, i64 -8 ; 3 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !59
  %.not40.i.us.i = icmp ult i32 %i.l, %.03453.i.us.i
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bf, i64 1 ; 2 uses
  br i1 %.not40.i.us.i, label %._crit_edge.i.us.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph55.i.us.i, %.lr.ph.i.us.i
  %.045.i.us.i = phi i32 [ %i.bs, %.lr.ph.i.us.i ], [ %i.l, %.lr.ph55.i.us.i ]
  %.142.i.us.i = phi ptr [ %i.bn, %.lr.ph.i.us.i ], [ %i.bg, %.lr.ph55.i.us.i ]
  %.13941.i.us.i = phi ptr [ %i.bl, %.lr.ph.i.us.i ], [ %i.be, %.lr.ph55.i.us.i ]
  %i.bk = phi <2 x double> [ %i.br, %.lr.ph.i.us.i ], [ %i.bj, %.lr.ph55.i.us.i ]
  %i.bl = getelementptr inbounds i8, ptr %.13941.i.us.i, i64 -8 ; 3 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !59
  %i.bn = getelementptr inbounds i8, ptr %.142.i.us.i, i64 -8 ; 3 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !59
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bm, i64 1
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bk, <2 x double> %i.bq) ; 2 uses
  %i.bs = add i32 %.045.i.us.i, -1                ; 2 uses
  %.not.i.us.i = icmp ult i32 %i.bs, %.03453.i.us.i
  br i1 %.not.i.us.i, label %._crit_edge.i.us.i, label %.lr.ph.i.us.i, !llvm.loop !2

._crit_edge.i.us.i:                               ; preds = %.lr.ph.i.us.i, %.lr.ph55.i.us.i
  %.139.lcssa.i.us.i = phi ptr [ %i.be, %.lr.ph55.i.us.i ], [ %i.bl, %.lr.ph.i.us.i ]
  %.1.lcssa.i.us.i = phi ptr [ %i.bg, %.lr.ph55.i.us.i ], [ %i.bn, %.lr.ph.i.us.i ]
  %i.bt = phi <2 x double> [ %i.bj, %.lr.ph55.i.us.i ], [ %i.br, %.lr.ph.i.us.i ]
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bd, <2 x double> %i.bt) ; 4 uses
  %i.bv = add i32 %.03453.i.us.i, -1              ; 2 uses
  %i.bw = icmp ugt i32 %i.bv, 1
  br i1 %i.bw, label %.lr.ph55.i.us.i, label %.lr.ph.i65.us.i.preheader, !llvm.loop !1

.lr.ph.i65.us.i.preheader:                        ; preds = %._crit_edge.i.us.i
  br i1 %lcmp.mod.not, label %.lr.ph.i65.us.i.prol.loopexit, label %.lr.ph.i65.us.i.prol.preheader

.lr.ph.i65.us.i.prol.preheader:                   ; preds = %.lr.ph.i65.us.i.preheader
  %i.bx = extractelement <2 x double> %i.bb, i64 0
  br label %.lr.ph.i65.us.i.prol

.lr.ph.i65.us.i.prol:                             ; preds = %.lr.ph.i65.us.i.prol, %.lr.ph.i65.us.i.prol.preheader
  %.015.i.us.i.prol = phi i32 [ %i.cb, %.lr.ph.i65.us.i.prol ], [ %i.l, %.lr.ph.i65.us.i.prol.preheader ]
  %.01114.i.us.i.prol = phi double [ %i.ca, %.lr.ph.i65.us.i.prol ], [ %i.aq, %.lr.ph.i65.us.i.prol.preheader ]
  %.01213.i.us.i.prol = phi ptr [ %i.by, %.lr.ph.i65.us.i.prol ], [ %i.al, %.lr.ph.i65.us.i.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i65.us.i.prol ], [ 0, %.lr.ph.i65.us.i.prol.preheader ]
  %i.by = getelementptr inbounds i8, ptr %.01213.i.us.i.prol, i64 -8 ; 3 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !59
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bx, double %.01114.i.us.i.prol, double %i.bz) ; 3 uses
  %i.cb = add i32 %.015.i.us.i.prol, -1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i65.us.i.prol.loopexit, label %.lr.ph.i65.us.i.prol, !llvm.loop !73

.lr.ph.i65.us.i.prol.loopexit:                    ; preds = %.lr.ph.i65.us.i.prol, %.lr.ph.i65.us.i.preheader
  %.015.i.us.i.unr = phi i32 [ %i.l, %.lr.ph.i65.us.i.preheader ], [ %i.cb, %.lr.ph.i65.us.i.prol ]
  %.01114.i.us.i.unr = phi double [ %i.aq, %.lr.ph.i65.us.i.preheader ], [ %i.ca, %.lr.ph.i65.us.i.prol ]
  %.01213.i.us.i.unr = phi ptr [ %i.al, %.lr.ph.i65.us.i.preheader ], [ %i.by, %.lr.ph.i65.us.i.prol ]
  %.lcssa59.unr = phi double [ poison, %.lr.ph.i65.us.i.preheader ], [ %i.ca, %.lr.ph.i65.us.i.prol ]
  br i1 %i.aw, label %.lr.ph.i68.us.i.preheader, label %.lr.ph.i65.us.i.preheader.new

.lr.ph.i65.us.i.preheader.new:                    ; preds = %.lr.ph.i65.us.i.prol.loopexit
  %i.cc = extractelement <2 x double> %i.bb, i64 0
  %i.cd = extractelement <2 x double> %i.bb, i64 0
  %i.ce = extractelement <2 x double> %i.bb, i64 0
  %i.cf = extractelement <2 x double> %i.bb, i64 0
  br label %.lr.ph.i65.us.i

.lr.ph.i65.us.i:                                  ; preds = %.lr.ph.i65.us.i, %.lr.ph.i65.us.i.preheader.new
  %.015.i.us.i = phi i32 [ %.015.i.us.i.unr, %.lr.ph.i65.us.i.preheader.new ], [ %i.cs, %.lr.ph.i65.us.i ]
  %.01114.i.us.i = phi double [ %.01114.i.us.i.unr, %.lr.ph.i65.us.i.preheader.new ], [ %i.cr, %.lr.ph.i65.us.i ]
  %.01213.i.us.i = phi ptr [ %.01213.i.us.i.unr, %.lr.ph.i65.us.i.preheader.new ], [ %i.cp, %.lr.ph.i65.us.i ] ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %.01213.i.us.i, i64 -8
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !59
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.cc, double %.01114.i.us.i, double %i.ch)
  %i.cj = getelementptr inbounds i8, ptr %.01213.i.us.i, i64 -16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !59
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.ci, double %i.ck)
  %i.cm = getelementptr inbounds i8, ptr %.01213.i.us.i, i64 -24
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !59
  %i.co = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.cl, double %i.cn)
  %i.cp = getelementptr inbounds i8, ptr %.01213.i.us.i, i64 -32 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !59
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.co, double %i.cq) ; 2 uses
  %i.cs = add i32 %.015.i.us.i, -4                ; 2 uses
  %i.ct = icmp ugt i32 %i.cs, 1
  br i1 %i.ct, label %.lr.ph.i65.us.i, label %.lr.ph.i68.us.i.preheader, !llvm.loop !74

.lr.ph.i68.us.i.preheader:                        ; preds = %.lr.ph.i65.us.i, %.lr.ph.i65.us.i.prol.loopexit
  %.lcssa59 = phi double [ %.lcssa59.unr, %.lr.ph.i65.us.i.prol.loopexit ], [ %i.cr, %.lr.ph.i65.us.i ] ; 2 uses
  br i1 %lcmp.mod64.not, label %.lr.ph.i68.us.i.prol.loopexit, label %.lr.ph.i68.us.i.prol.preheader

.lr.ph.i68.us.i.prol.preheader:                   ; preds = %.lr.ph.i68.us.i.preheader
  %i.cu = extractelement <2 x double> %i.bb, i64 1
  br label %.lr.ph.i68.us.i.prol

.lr.ph.i68.us.i.prol:                             ; preds = %.lr.ph.i68.us.i.prol, %.lr.ph.i68.us.i.prol.preheader
  %.015.i69.us.i.prol = phi i32 [ %i.cy, %.lr.ph.i68.us.i.prol ], [ %i.l, %.lr.ph.i68.us.i.prol.preheader ]
  %.01114.i70.us.i.prol = phi double [ %i.cx, %.lr.ph.i68.us.i.prol ], [ %i.ar, %.lr.ph.i68.us.i.prol.preheader ]
  %.01213.i71.us.i.prol = phi ptr [ %i.cv, %.lr.ph.i68.us.i.prol ], [ %i.an, %.lr.ph.i68.us.i.prol.preheader ]
  %prol.iter65 = phi i32 [ %prol.iter65.next, %.lr.ph.i68.us.i.prol ], [ 0, %.lr.ph.i68.us.i.prol.preheader ]
  %i.cv = getelementptr inbounds i8, ptr %.01213.i71.us.i.prol, i64 -8 ; 3 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !59
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cu, double %.01114.i70.us.i.prol, double %i.cw) ; 3 uses
  %i.cy = add i32 %.015.i69.us.i.prol, -1         ; 2 uses
  %prol.iter65.next = add i32 %prol.iter65, 1     ; 2 uses
  %prol.iter65.cmp.not = icmp eq i32 %prol.iter65.next, %xtraiter63
  br i1 %prol.iter65.cmp.not, label %.lr.ph.i68.us.i.prol.loopexit, label %.lr.ph.i68.us.i.prol, !llvm.loop !75

.lr.ph.i68.us.i.prol.loopexit:                    ; preds = %.lr.ph.i68.us.i.prol, %.lr.ph.i68.us.i.preheader
  %.015.i69.us.i.unr = phi i32 [ %i.l, %.lr.ph.i68.us.i.preheader ], [ %i.cy, %.lr.ph.i68.us.i.prol ]
  %.01114.i70.us.i.unr = phi double [ %i.ar, %.lr.ph.i68.us.i.preheader ], [ %i.cx, %.lr.ph.i68.us.i.prol ]
  %.01213.i71.us.i.unr = phi ptr [ %i.an, %.lr.ph.i68.us.i.preheader ], [ %i.cv, %.lr.ph.i68.us.i.prol ]
  %.lcssa60.unr = phi double [ poison, %.lr.ph.i68.us.i.preheader ], [ %i.cx, %.lr.ph.i68.us.i.prol ]
  br i1 %i.ax, label %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i, label %.lr.ph.i68.us.i.preheader.new

.lr.ph.i68.us.i.preheader.new:                    ; preds = %.lr.ph.i68.us.i.prol.loopexit
  %i.cz = extractelement <2 x double> %i.bb, i64 1
  %i.da = extractelement <2 x double> %i.bb, i64 1
  %i.db = extractelement <2 x double> %i.bb, i64 1
  %i.dc = extractelement <2 x double> %i.bb, i64 1
  br label %.lr.ph.i68.us.i

.lr.ph.i68.us.i:                                  ; preds = %.lr.ph.i68.us.i, %.lr.ph.i68.us.i.preheader.new
  %.015.i69.us.i = phi i32 [ %.015.i69.us.i.unr, %.lr.ph.i68.us.i.preheader.new ], [ %i.dp, %.lr.ph.i68.us.i ]
  %.01114.i70.us.i = phi double [ %.01114.i70.us.i.unr, %.lr.ph.i68.us.i.preheader.new ], [ %i.do, %.lr.ph.i68.us.i ]
  %.01213.i71.us.i = phi ptr [ %.01213.i71.us.i.unr, %.lr.ph.i68.us.i.preheader.new ], [ %i.dm, %.lr.ph.i68.us.i ] ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %.01213.i71.us.i, i64 -8
  %i.de = load double, ptr %i.dd, align 8, !tbaa !59
  %i.df = tail call double @llvm.fmuladd.f64(double %i.cz, double %.01114.i70.us.i, double %i.de)
  %i.dg = getelementptr inbounds i8, ptr %.01213.i71.us.i, i64 -16
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !59
  %i.di = tail call double @llvm.fmuladd.f64(double %i.da, double %i.df, double %i.dh)
  %i.dj = getelementptr inbounds i8, ptr %.01213.i71.us.i, i64 -24
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !59
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.db, double %i.di, double %i.dk)
  %i.dm = getelementptr inbounds i8, ptr %.01213.i71.us.i, i64 -32 ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !59
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.dl, double %i.dn) ; 2 uses
  %i.dp = add i32 %.015.i69.us.i, -4              ; 2 uses
  %i.dq = icmp ugt i32 %i.dp, 1
  br i1 %i.dq, label %.lr.ph.i68.us.i, label %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i, !llvm.loop !74

_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i: ; preds = %.lr.ph.i68.us.i, %.lr.ph.i68.us.i.prol.loopexit
  %.lcssa60 = phi double [ %.lcssa60.unr, %.lr.ph.i68.us.i.prol.loopexit ], [ %i.do, %.lr.ph.i68.us.i ] ; 2 uses
  %i.dr = extractelement <2 x double> %i.bu, i64 1
  %i.ds = fneg double %i.dr
  %i.dt = extractelement <2 x double> %i.bu, i64 0
  %i.du = fmul double %i.dt, %i.ds
  %i.dv = tail call double @llvm.fmuladd.f64(double %.lcssa59, double %.lcssa60, double %i.du)
  %i.dw = fdiv double 1.000000e+00, %i.dv
  %i.dx = fmul <2 x double> %i.bu, %i.ap
  %i.dy = insertelement <2 x double> poison, double %.lcssa60, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %.lcssa59, i64 1
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.w, <2 x double> %i.dx)
  %i.eb = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.ea, %i.ec          ; 3 uses
  %i.ee = fsub <2 x double> %i.ed, %i.bb
  %i.ef = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ee)
  %i.eg = fcmp olt <2 x double> %i.ef, %i.az
  %2 = freeze <2 x i1> %i.eg
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1                          ; 2 uses
  %i.eh = add nsw i32 %i.ba, -1
  %i.ei = icmp eq i32 %i.ba, 0
  %.not63.us.i = or i1 %i.ei, %4
  br i1 %.not63.us.i, label %.split.us.i, label %.lr.ph55.i.preheader.us.i, !llvm.loop !76

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.split.i: ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ej = fneg double %i.af
  %i.ek = fmul double %i.ah, %i.ej
  %i.el = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.ar, double %i.ek)
  %i.em = fdiv double 1.000000e+00, %i.el
  %i.en = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.eo = insertelement <2 x double> %i.en, double %i.af, i64 1
  %i.ep = fmul <2 x double> %i.eo, %i.ap
  %i.eq = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.aq, i64 1
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %i.w, <2 x double> %i.ep)
  %i.et = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x double> %i.es, %i.eu          ; 6 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 0
  %i.ex = tail call double @llvm.fabs.f64(double %i.ew)
  %i.ey = fcmp olt double %i.ex, %i.n
  %i.ez = extractelement <2 x double> %i.ev, i64 1
  %i.fa = tail call double @llvm.fabs.f64(double %i.ez)
  %i.fb = fcmp olt double %i.fa, %i.n
  %i.fc = select i1 %i.ey, i1 %i.fb, i1 false
  br i1 %i.fc, label %.split.us.thread.i, label %_ZL23double_real_horner_evaljPKdS0_5PJ_UVj.exit.thread.peel.next.i

_ZL23double_real_horner_evaljPKdS0_5PJ_UVj.exit.thread.peel.next.i: ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.split.i
  %i.fd = fsub <2 x double> %i.ev, %i.ev
  %i.fe = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fd)
  %i.ff = insertelement <2 x double> poison, double %i.n, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fcmp olt <2 x double> %i.fe, %i.fg
  %5 = freeze <2 x i1> %i.fh
  %6 = bitcast <2 x i1> %5 to i2
  %7 = icmp eq i2 %6, -1
  br i1 %7, label %.split.us.thread.i, label %.split.us.i.thread32

.split.us.i:                                      ; preds = %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i
  br i1 %4, label %.split.us.thread.i, label %.split.us.i.thread32

.split.us.i.thread32:                             ; preds = %_ZL23double_real_horner_evaljPKdS0_5PJ_UVj.exit.thread.peel.next.i, %.split.us.i
  %i.fi = tail call i32 @proj_errno_set(ptr noundef %1, i32 noundef 2048) ; 0 uses
  br label %_ZL27real_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

.split.us.thread.i:                               ; preds = %_ZL23double_real_horner_evaljPKdS0_5PJ_UVj.exit.thread.peel.next.i, %.split.us.i, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.split.i
  %i.fj = phi <2 x double> [ %i.ed, %.split.us.i ], [ %i.ev, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.split.i ], [ %i.ev, %_ZL23double_real_horner_evaljPKdS0_5PJ_UVj.exit.thread.peel.next.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !53
  %i.fm = load <2 x double>, ptr %i.fl, align 8, !tbaa !59
  %i.fn = fadd <2 x double> %i.fj, %i.fm
  br label %_ZL27real_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

_ZL27real_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit: ; preds = %bb.b, %.split.us.i.thread32, %.split.us.thread.i
  %i.fo = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.fn, %.split.us.thread.i ], [ splat (double +inf), %.split.us.i.thread32 ]
  store <2 x double> %i.fo, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL11parse_coefsP8PJconstsPdPKci(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !79
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #11
  %i.c = add i64 %i.b, 2                          ; 3 uses
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 1) #9 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef %0, ptr noundef nonnull @.str.27)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef nonnull @.str.28, ptr noundef nonnull %2) #10 ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.g, ptr noundef %i.i, ptr noundef nonnull %i.d)
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #10
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.m = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef nonnull @.str.29, ptr noundef nonnull %2) #10 ; 0 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !42
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.p = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %i.d)
  tail call void @free(ptr noundef nonnull %i.d) #10
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.r = inttoptr i64 %i.p to ptr
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.s = call noundef double @_Z9pj_strtodPKcPPc(ptr noundef %i.r, ptr noundef nonnull %i.a)
  store double %i.s, ptr %1, align 8, !tbaa !59
  %exitcond.peel.not = icmp eq i32 %3, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.f, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !79   ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit39, label %bb.g

bb.g:                                             ; preds = %.lr.ph.peel.next
  %i.v = load i8, ptr %i.t, align 1, !tbaa !80
  %.not34 = icmp eq i8 %i.v, 44
  br i1 %.not34, label %bb.h, label %.loopexit39

.loopexit39:                                      ; preds = %bb.g, %.lr.ph.peel.next
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef nonnull %2, i32 noundef %3)
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  store ptr %i.w, ptr %i.a, align 8, !tbaa !79
  %i.x = call noundef double @_Z9pj_strtodPKcPPc(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %i.x, ptr %i.y, align 8, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.peel.next, !llvm.loop !78

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.e, %.loopexit39, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %.loopexit39 ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare { double, double } @__divdc3(double, double, double, double) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare noundef double @_Z9pj_strtodPKcPPc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !62}
!1 = distinct !{!1, !62}
!2 = distinct !{!2, !62}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS6pj_ctx", !11, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
!15 = !{!"p1 _ZTS8PJconsts", !11, i64 0}
!16 = !{!"p1 _ZTS13geod_geodesic", !11, i64 0}
!17 = !{!"double", !7, i64 0}
!18 = !{!"_ZTS11pj_io_units", !7, i64 0}
!19 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !11, i64 0}
!20 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!21 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0}
!22 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0, !21, i64 8}
!23 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !22, i64 0}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!26 = !{!"long", !7, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !7, i64 16}
!28 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !11, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !29, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !30, i64 0}
!32 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !31, i64 0}
!33 = !{!"_ZTS7PJ_TYPE", !7, i64 0}
!34 = !{!"p1 _ZTS16PJCoordOperation", !11, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !35, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !37, i64 0}
!39 = !{!"_ZTS8PJconsts", !12, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !13, i64 32, !15, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !16, i64 80, !11, i64 88, !8, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !17, i64 224, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !17, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !17, i64 296, !17, i64 304, !17, i64 312, !17, i64 320, !17, i64 328, !17, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !8, i64 376, !18, i64 380, !18, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !17, i64 440, !17, i64 448, !17, i64 456, !17, i64 464, !17, i64 472, !17, i64 480, !17, i64 488, !17, i64 496, !17, i64 504, !17, i64 512, !17, i64 520, !8, i64 528, !7, i64 536, !8, i64 592, !11, i64 600, !11, i64 608, !17, i64 616, !17, i64 624, !8, i64 632, !7, i64 636, !23, i64 640, !24, i64 656, !17, i64 664, !24, i64 672, !27, i64 680, !27, i64 712, !27, i64 744, !24, i64 776, !32, i64 784, !33, i64 808, !38, i64 816, !8, i64 840, !24, i64 844, !24, i64 845, !24, i64 846, !15, i64 848}
!40 = !{!39, !18, i64 380}
!41 = !{!39, !18, i64 384}
!42 = !{!39, !12, i64 0}
!43 = !{!39, !14, i64 24}
!44 = !{!"p1 double", !11, i64 0}
!45 = !{!"_ZTSN12_GLOBAL__N_16hornerE", !8, i64 0, !8, i64 4, !8, i64 8, !17, i64 16, !24, i64 24, !17, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !11, i64 88, !11, i64 96}
!46 = !{!45, !8, i64 8}
!47 = !{!45, !44, i64 72}
end_hunk_0
