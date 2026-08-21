Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/termination?download=true
inline.NumInlined: 512
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv4usac29ProsacTerminationCriteriaImpl4initEv:bb.a

.noexc63:                                         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #17
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.r = phi i32 [ %.pre, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.b, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ] ; 4 uses
  %.pre-phi139 = phi i64 [ %.pre129, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.c, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i59 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i59, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit, label %.noexc64

.noexc64:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %.pre-phi139, 3          ; 2 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #14 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !96
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.pre-phi139
  %i.v = ptrtoint ptr %i.u to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit:            ; preds = %.noexc64, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.070.0 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %.noexc64 ] ; 9 uses
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.v, %.noexc64 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !118 ; 2 uses
  %i.y = fsub double 1.000000e+00, %i.x           ; 2 uses
  %i.z = fdiv double %i.x, %i.y                   ; 3 uses
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.r, i32 1200) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !124 ; 4 uses
  %i.ad = icmp sge i32 %i.ac, %i.r
  %i.ae = icmp sgt i32 %i.ac, %i.aa
  %or.cond97 = or i1 %i.ae, %i.ad
  br i1 %or.cond97, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !130
  %i.ah = sext i32 %i.ac to i64                   ; 2 uses
  %i.ai = zext nneg i32 %i.aa to i64
  %i.aj = add nsw i64 %i.ah, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph99, %._crit_edge95
  %indvar = phi i64 [ 0, %.lr.ph99 ], [ %indvar.next, %._crit_edge95 ] ; 2 uses
  %indvars.iv115 = phi i64 [ %i.ah, %.lr.ph99 ], [ %indvars.iv.next116, %._crit_edge95 ] ; 9 uses
  %i.ak = trunc nsw i64 %indvars.iv115 to i32     ; 4 uses
  %i.al = sitofp i32 %i.ak to double
  %i.am = tail call noundef double @pow(double noundef %i.y, double noundef %i.al) #16 ; 3 uses
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !124 ; 7 uses
  %i.ao = sext i32 %i.an to i64                   ; 9 uses
  %i.ap = getelementptr [8 x i8], ptr %.sroa.070.0, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  store double %i.am, ptr %i.aq, align 8, !tbaa !96
  %.not.not87 = icmp sgt i64 %indvars.iv115, %i.ao
  br i1 %.not.not87, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ar = mul nuw nsw i64 %indvar, 50
  %i.as = add i64 %i.aj, %i.ar
  %i.at = sub i64 %indvars.iv115, %i.ao
  %xtraiter = and i64 %i.at, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next.prol = add nsw i64 %i.ao, 1    ; 2 uses
  %i.au = sub i32 %i.ak, %i.an
  %i.av = sitofp i32 %i.au to double
  %i.aw = fmul double %i.z, %i.av
  %i.ax = trunc i64 %indvars.iv.next.prol to i32
  %i.ay = sub i32 %i.ax, %i.an
  %i.az = sitofp i32 %i.ay to double
  %i.ba = fdiv double %i.aw, %i.az
  %i.bb = fmul double %i.am, %i.ba                ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.070.0, i64 %i.ao
  store double %i.bb, ptr %i.bc, align 8, !tbaa !96
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.ao, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.04788.unr = phi double [ %i.am, %.lr.ph.preheader ], [ %i.bb, %.lr.ph.prol ]
  %i.bd = icmp eq i64 %i.as, %i.ao
  br i1 %i.bd, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %.not90 = icmp slt i64 %indvars.iv115, %i.ao
  br i1 %.not90, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %.preheader
  %i.be = load double, ptr %i.af, align 8, !tbaa !119 ; 2 uses
  %indvars.iv.next118156 = add nsw i64 %indvars.iv115, -1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.070.0, i64 %indvars.iv.next118156
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !96 ; 2 uses
  %i.bh = fcmp olt double %i.bg, %i.be
  br i1 %i.bh, label %.lr.ph159, label %._crit_edge, !llvm.loop !136

.lr.ph159:                                        ; preds = %.lr.ph94
  %i.bi = fadd double %i.bg, 0.000000e+00
  br label %bb.c, !llvm.loop !136

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.04788 = phi double [ %i.cb, %.lr.ph ], [ %.04788.unr, %.lr.ph.prol.loopexit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bj = trunc nsw i64 %indvars.iv to i32
  %i.bk = sub i32 %i.ak, %i.bj
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = fmul double %i.z, %i.bl
  %i.bn = trunc i64 %indvars.iv.next to i32
  %i.bo = sub i32 %i.bn, %i.an
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = fdiv double %i.bm, %i.bp
  %i.br = fmul double %.04788, %i.bq              ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.070.0, i64 %indvars.iv
  store double %i.br, ptr %i.bs, align 8, !tbaa !96
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bt = trunc nsw i64 %indvars.iv.next to i32
  %i.bu = sub i32 %i.ak, %i.bt
  %i.bv = sitofp i32 %i.bu to double
  %i.bw = fmul double %i.z, %i.bv
  %i.bx = trunc i64 %indvars.iv.next.1 to i32
  %i.by = sub i32 %i.bx, %i.an
  %i.bz = sitofp i32 %i.by to double
  %i.ca = fdiv double %i.bw, %i.bz
  %i.cb = fmul double %i.br, %i.ca                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.070.0, i64 %indvars.iv.next
  store double %i.cb, ptr %i.cc, align 8, !tbaa !96
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %indvars.iv115
  br i1 %exitcond.not.1, label %.preheader, label %.lr.ph, !llvm.loop !138

bb.c:                                             ; preds = %.lr.ph159, %bb.d
  %i.cd = phi double [ %i.bi, %.lr.ph159 ], [ %i.cg, %bb.d ]
  %indvars.iv.next118158 = phi i64 [ %indvars.iv.next118156, %.lr.ph159 ], [ %indvars.iv.next118, %bb.d ] ; 2 uses
  %indvars.iv117157 = phi i64 [ %indvars.iv115, %.lr.ph159 ], [ %indvars.iv.next118158, %bb.d ] ; 3 uses
  %.not.not106 = icmp sgt i64 %indvars.iv117157, %i.ao
  br i1 %.not.not106, label %bb.d, label %._crit_edge95.loopexit, !llvm.loop !136

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next118 = add nsw i64 %indvars.iv.next118158, -1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.070.0, i64 %indvars.iv.next118
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !96
  %i.cg = fadd double %i.cd, %i.cf                ; 2 uses
  %i.ch = fcmp olt double %i.cg, %i.be
  br i1 %i.ch, label %bb.c, label %.._crit_edge_crit_edge, !llvm.loop !136

.._crit_edge_crit_edge:                           ; preds = %bb.d
  %i.ci = trunc nsw i64 %indvars.iv117157 to i32
  br label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %.lr.ph94
  %.04492.lcssa = phi i32 [ %i.ci, %.._crit_edge_crit_edge ], [ %i.an, %.lr.ph94 ]
  br label %._crit_edge95, !llvm.loop !136

._crit_edge95.loopexit:                           ; preds = %bb.c
  %i.cj = trunc nsw i64 %indvars.iv117157 to i32
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge95.loopexit, %._crit_edge, %.preheader
  %.044.lcssa = phi i32 [ %.04492.lcssa, %._crit_edge ], [ %i.an, %.preheader ], [ %i.cj, %._crit_edge95.loopexit ]
  %i.ck = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv115
  %i.cl = getelementptr i8, ptr %i.ck, i64 -4
  store i32 %.044.lcssa, ptr %i.cl, align 4, !tbaa !41
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, 50 ; 3 uses
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !122 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp sge i64 %indvars.iv.next116, %i.cn
  %i.cp = icmp sgt i64 %indvars.iv.next116, %i.ai
  %or.cond = or i1 %i.cp, %i.co
  %indvar.next = add i64 %indvar, 1
  br i1 %or.cond, label %._crit_edge100.loopexit, label %bb.b, !llvm.loop !139

._crit_edge100.loopexit:                          ; preds = %._crit_edge95
  %.pre128 = load i32, ptr %i.ab, align 4, !tbaa !124
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.loopexit, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  %i.cq = phi i32 [ %i.cm, %._crit_edge100.loopexit ], [ %i.r, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit ] ; 2 uses
  %i.cr = phi i32 [ %.pre128, %._crit_edge100.loopexit ], [ %i.ac, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit ] ; 2 uses
  %.not54102 = icmp sgt i32 %i.cr, %i.cq
  br i1 %.not54102, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %._crit_edge100
  %i.cs = sext i32 %i.cr to i64                   ; 4 uses
  %i.ct = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.cu = add nsw i64 %i.cs, -1                   ; 2 uses
  %i.cv = add nsw i64 %i.cs, 49                   ; 2 uses
  %.not55160 = icmp slt i64 %i.cv, %i.ct
  br i1 %.not55160, label %.lr.ph162.preheader, label %.lr.ph105._crit_edge

.lr.ph162.preheader:                              ; preds = %.lr.ph105.preheader
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !130 ; 3 uses
  br label %.lr.ph162

.lr.ph105:                                        ; preds = %.lr.ph162
  %i.cx = add nsw i64 %indvars.iv125161, 49       ; 2 uses
  %i.cy = add nsw i64 %indvars.iv125161, 99       ; 2 uses
  %.not55 = icmp slt i64 %i.cy, %i.ct
  br i1 %.not55, label %.lr.ph162, label %.lr.ph105._crit_edge, !llvm.loop !140

.lr.ph105._crit_edge:                             ; preds = %.lr.ph105, %.lr.ph105.preheader
  %indvars.iv125.lcssa = phi i64 [ %i.cs, %.lr.ph105.preheader ], [ %indvars.iv.next126, %.lr.ph105 ] ; 2 uses
  %.lcssa150 = phi i32 [ %i.cq, %.lr.ph105.preheader ], [ %i.fj, %.lr.ph105 ]
  %.lcssa = phi i64 [ %i.cu, %.lr.ph105.preheader ], [ %i.cx, %.lr.ph105 ]
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !130 ; 3 uses
  %.idx = shl nsw i64 %indvars.iv125.lcssa, 2
  %i.da = add nsw i64 %.idx, -4                   ; 2 uses
  %i.db = sext i32 %.lcssa150 to i64              ; 2 uses
  %.idx82 = shl nsw i64 %i.db, 2                  ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 %.idx82
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.lcssa
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !41 ; 2 uses
  %.not5.i.i.i = icmp eq i64 %i.da, %.idx82
  br i1 %.not5.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph105._crit_edge
  %i.df = getelementptr inbounds i8, ptr %i.cz, i64 %i.da ; 3 uses
  %i.dg = sub i64 %i.db, %indvars.iv125.lcssa
  %1 = and i64 %i.dg, 4611686018427387903         ; 2 uses
  %i.dh = add nuw nsw i64 %1, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader176, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.dh, 9223372036854775800     ; 3 uses
  %i.di = shl i64 %n.vec, 2
  %i.dj = getelementptr i8, ptr %i.df, i64 %i.di
  %broadcast.splatinsert170 = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat171 = shufflevector <4 x i32> %broadcast.splatinsert170, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph169
  %index173 = phi i64 [ 0, %vector.ph169 ], [ %index.next174, %vector.body172 ] ; 2 uses
  %i.dk = shl i64 %index173, 2
  %next.gep = getelementptr i8, ptr %i.df, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat171, ptr %next.gep, align 4, !tbaa !41
  store <4 x i32> %broadcast.splat171, ptr %i.dl, align 4, !tbaa !41
  %index.next174 = add nuw i64 %index173, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next174, %n.vec
  br i1 %i.dm, label %middle.block175, label %vector.body172, !llvm.loop !141

middle.block175:                                  ; preds = %vector.body172
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader176

.lr.ph.i.i.i.preheader176:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block175
  %.06.i.i.i.ph = phi ptr [ %i.df, %.lr.ph.i.i.i.preheader ], [ %i.dj, %middle.block175 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader176, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader176 ] ; 2 uses
  store i32 %i.de, ptr %.06.i.i.i, align 4, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.dn, %i.dc
  br i1 %.not.i.i.i65, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !144

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %.lr.ph105
  %i.do = phi i64 [ %i.cy, %.lr.ph105 ], [ %i.cv, %.lr.ph162.preheader ]
  %i.dp = phi i64 [ %i.cx, %.lr.ph105 ], [ %i.cu, %.lr.ph162.preheader ]
  %indvars.iv125161 = phi i64 [ %indvars.iv.next126, %.lr.ph105 ], [ %i.cs, %.lr.ph162.preheader ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !41 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.do
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !41
  %i.du = sub nsw i32 %i.dt, %i.dr
  %i.dv = sitofp i32 %i.du to double
  %i.dw = fdiv double %i.dv, 5.000000e+01         ; 2 uses
  %i.dx = sitofp i32 %i.dr to double              ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.cw, i64 %indvars.iv125161 ; 13 uses
  %broadcast.splatinsert166 = insertelement <4 x double> poison, double %i.dx, i64 0
  %broadcast.splat167 = shufflevector <4 x double> %broadcast.splatinsert166, <4 x double> poison, <4 x i32> zeroinitializer ; 12 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.dw, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 12 uses
  %i.dy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> <double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00>, <4 x double> %broadcast.splat167)
  %i.dz = fptosi <4 x double> %i.dy to <4 x i32>
  store <4 x i32> %i.dz, ptr %invariant.gep, align 4, !tbaa !41
  %i.ea = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> <double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00>, <4 x double> %broadcast.splat167)
  %i.eb = fptosi <4 x double> %i.ea to <4 x i32>
  %i.ec = getelementptr i8, ptr %invariant.gep, i64 16
  store <4 x i32> %i.eb, ptr %i.ec, align 4, !tbaa !41
  %i.ed = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> <double 9.000000e+00, double 1.000000e+01, double 1.100000e+01, double 1.200000e+01>, <4 x double> %broadcast.splat167)
  %i.ee = fptosi <4 x double> %i.ed to <4 x i32>
  %i.ef = getelementptr i8, ptr %invariant.gep, i64 32
  store <4 x i32> %i.ee, ptr %i.ef, align 4, !tbaa !41
  %i.eg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> <double 1.300000e+01, double 1.400000e+01, double 1.500000e+01, double 1.600000e+01>, <4 x double> %broadcast.splat167)
  %i.eh = fptosi <4 x double> %i.eg to <4 x i32>
  %i.ei = getelementptr i8, ptr %invariant.gep, i64 48
  store <4 x i32> %i.eh, ptr %i.ei, align 4, !tbaa !41
  %i.ej = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> <double 1.700000e+01, double 1.800000e+01, double 1.900000e+01, double 2.000000e+01>, <4 x double> %broadcast.splat167)
  %i.ek = fptosi <4 x double> %i.ej to <4 x i32>
  %i.el = getelementptr i8, ptr %invariant.gep, i64 64
  store <4 x i32> %i.ek, ptr %i.el, align 4, !tbaa !41
  %i.em = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> <double 2.100000e+01, double 2.200000e+01, double 2.300000e+01, double 2.400000e+01>, <4 x double> %broadcast.splat167)
  %i.en = fptosi <4 x double> %i.em to <4 x i32>
  %i.eo = getelementptr i8, ptr %invariant.gep, i64 80
  store <4 x i32> %i.en, ptr %i.eo, align 4, !tbaa !41
  %i.ep = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> <double 2.500000e+01, double 2.600000e+01, double 2.700000e+01, double 2.800000e+01>, <4 x double> %broadcast.splat167)
  %i.eq = fptosi <4 x double> %i.ep to <4 x i32>
  %i.er = getelementptr i8, ptr %invariant.gep, i64 96
  store <4 x i32> %i.eq, ptr %i.er, align 4, !tbaa !41
  %i.es = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> <double 2.900000e+01, double 3.000000e+01, double 3.100000e+01, double 3.200000e+01>, <4 x double> %broadcast.splat167)
  %i.et = fptosi <4 x double> %i.es to <4 x i32>
  %i.eu = getelementptr i8, ptr %invariant.gep, i64 112
  store <4 x i32> %i.et, ptr %i.eu, align 4, !tbaa !41
  %i.ev = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> <double 3.300000e+01, double 3.400000e+01, double 3.500000e+01, double 3.600000e+01>, <4 x double> %broadcast.splat167)
  %i.ew = fptosi <4 x double> %i.ev to <4 x i32>
  %i.ex = getelementptr i8, ptr %invariant.gep, i64 128
  store <4 x i32> %i.ew, ptr %i.ex, align 4, !tbaa !41
  %i.ey = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> <double 3.700000e+01, double 3.800000e+01, double 3.900000e+01, double 4.000000e+01>, <4 x double> %broadcast.splat167)
  %i.ez = fptosi <4 x double> %i.ey to <4 x i32>
  %i.fa = getelementptr i8, ptr %invariant.gep, i64 144
  store <4 x i32> %i.ez, ptr %i.fa, align 4, !tbaa !41
  %i.fb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> <double 4.100000e+01, double 4.200000e+01, double 4.300000e+01, double 4.400000e+01>, <4 x double> %broadcast.splat167)
  %i.fc = fptosi <4 x double> %i.fb to <4 x i32>
  %i.fd = getelementptr i8, ptr %invariant.gep, i64 160
  store <4 x i32> %i.fc, ptr %i.fd, align 4, !tbaa !41
  %i.fe = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> <double 4.500000e+01, double 4.600000e+01, double 4.700000e+01, double 4.800000e+01>, <4 x double> %broadcast.splat167)
  %i.ff = fptosi <4 x double> %i.fe to <4 x i32>
  %i.fg = getelementptr i8, ptr %invariant.gep, i64 176
  store <4 x i32> %i.ff, ptr %i.fg, align 4, !tbaa !41
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.dw, double 4.900000e+01, double %i.dx)
  %i.fi = fptosi double %i.fh to i32
  %gep = getelementptr i8, ptr %invariant.gep, i64 192
  store i32 %i.fi, ptr %gep, align 4, !tbaa !41
  %indvars.iv.next126 = add nsw i64 %indvars.iv125161, 50 ; 3 uses
  %i.fj = load i32, ptr %i.a, align 4, !tbaa !122 ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %.not54 = icmp sgt i64 %indvars.iv.next126, %i.fk
  br i1 %.not54, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph105, !llvm.loop !140

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph162, %.lr.ph.i.i.i, %middle.block175, %._crit_edge100, %.lr.ph105._crit_edge
  %.not.i.i.i67 = icmp eq ptr %.sroa.070.0, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIdSaIdEED2Ev.exit68, label %bb.e

bb.e:                                             ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit
  %i.fl = ptrtoint ptr %.sroa.070.0 to i64
  %i.fm = sub i64 %.sroa.13.0, %i.fl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.070.0, i64 noundef %i.fm) #15
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit68

_ZNSt6vectorIdSaIdEED2Ev.exit68:                  ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !130    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.i = load ptr, ptr %0, align 8, !tbaa !130    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !85

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #14 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !145

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !41
  store i32 %i.r, ptr %i.o, align 4, !tbaa !41
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #15
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !130
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !131
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 4
  br i1 %i.x, label %bb.k, label %bb.l, !prof !145

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
end_hunk_0
