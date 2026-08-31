Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sunnonlinsol_fixedpoint?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SUNNonlinSolSolve_FixedPoint:bb.a
  %i.bt = zext nneg i32 %i.r to i64               ; 6 uses
  %wide.trip.count63.i = zext i32 %i.br to i64    ; 5 uses
  br label %.lr.ph16.i

bb.l:                                             ; preds = %bb.k
  %i.bu = sext i32 %i.az to i64                   ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !56
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bw, ptr noundef %2) #15
  %i.bx = icmp sgt i32 %i.u, 1
  %i.by = mul nsw i32 %i.ay, %i.r                 ; 2 uses
  br i1 %i.bx, label %.lr.ph9.i, label %._crit_edge10.i

.lr.ph9.i:                                        ; preds = %bb.l
  %i.bz = sext i32 %i.by to i64
  %wide.trip.count.i = zext nneg i32 %i.ay to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.am, i64 %i.bz
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph9.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.i ], [ %indvars.iv.next.i, %bb.m ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.cb = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !55
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !56
  %i.ce = tail call double @N_VDotProd(ptr noundef %i.cd, ptr noundef %2) #15 ; 2 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store double %i.ce, ptr %gep.i, align 8, !tbaa !57
  %i.cf = fneg double %i.ce
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !56
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.cf, ptr noundef %i.cg, ptr noundef %2) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge10.i, label %bb.m

._crit_edge10.i:                                  ; preds = %bb.m, %bb.l
  %i.ch = tail call double @N_VDotProd(ptr noundef %2, ptr noundef %2) #15 ; 2 uses
  %i.ci = add nsw i32 %i.by, %i.u
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr [8 x i8], ptr %i.am, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8     ; 2 uses
  %i.cm = fcmp ugt double %i.ch, 0.000000e+00
  br i1 %i.cm, label %bb.n, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge10.i
  store double 0.000000e+00, ptr %i.cl, align 8, !tbaa !57
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge10.i
  %i.cn = tail call double @sqrt(double noundef %i.ch) #15 ; 3 uses
  store double %i.cn, ptr %i.cl, align 8, !tbaa !57
  %i.co = fcmp oeq double %i.cn, 0.000000e+00
  br i1 %i.co, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = fdiv double 1.000000e+00, %i.cn
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread.i
  %.sink.i = phi double [ %i.cp, %bb.o ], [ 0.000000e+00, %.thread.i ], [ 0.000000e+00, %bb.n ]
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bu
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !56
  tail call void @N_VScale(double noundef %.sink.i, ptr noundef %2, ptr noundef %i.cr) #15
  %i.cs = sext i32 %i.ay to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.cs
  store i32 %i.ay, ptr %i.ct, align 4, !tbaa !55
  br label %.loopexit2.i

.lr.ph16.i:                                       ; preds = %._crit_edge14.i, %.lr.ph16.preheader.i
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph16.preheader.i ], [ %indvars.iv.next61.i, %._crit_edge14.i ] ; 4 uses
  %indvars.iv53.i = phi i64 [ 2, %.lr.ph16.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge14.i ] ; 2 uses
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 4 uses
  %indvars.i = trunc i64 %indvars.iv.next61.i to i32
  %i.cu = mul nuw nsw i32 %i.r, %indvars.i
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv60.i ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv ; 2 uses
  %i.cy = load <2 x double>, ptr %i.cx, align 8, !tbaa !57 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.cy, %i.cy
  %i.cz = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.da = extractelement <2 x double> %i.cy, i64 0 ; 2 uses
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.da, double %i.cz) ; 2 uses
  %i.dc = fcmp ugt double %i.db, 0.000000e+00
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.db)
  %i.dd = select i1 %i.dc, double %sqrt.i, double 0.000000e+00 ; 2 uses
  %i.de = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fdiv <2 x double> %i.cy, %i.df          ; 4 uses
  %i.dh = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.dd, i64 0
  store <2 x double> %i.dh, ptr %i.cx, align 8, !tbaa !57
  %i.di = add nuw nsw i64 %indvars.iv60.i, 2
  %i.dj = icmp samesign ult i64 %i.di, %i.bt
  %i.dk = extractelement <2 x double> %i.dg, i64 1 ; 2 uses
  %i.dl = fneg double %i.dk                       ; 2 uses
  br i1 %i.dj, label %.lr.ph13.i.preheader, label %._crit_edge14.i

.lr.ph13.i.preheader:                             ; preds = %.lr.ph16.i
  %i.dm = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dn = insertelement <2 x double> %i.dm, double %i.dl, i64 0
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.preheader, %.lr.ph13.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %.lr.ph13.i ], [ %indvars.iv53.i, %.lr.ph13.i.preheader ] ; 2 uses
  %i.do = mul nuw nsw i64 %indvars.iv55.i, %i.bt
  %gep133.i = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.do ; 3 uses
  %i.dp = load double, ptr %gep133.i, align 8, !tbaa !57
  %i.dq = getelementptr i8, ptr %gep133.i, i64 8
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !57
  %i.ds = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x double> %i.dg, %i.dt
  %i.dv = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.dw, <2 x double> %i.du)
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.dy, ptr %gep133.i, align 8, !tbaa !57
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %i.bt
  br i1 %exitcond59.not.i, label %._crit_edge14.i, label %.lr.ph13.i

._crit_edge14.i:                                  ; preds = %.lr.ph13.i, %.lr.ph16.i
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv60.i ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !56
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next61.i ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !56
  %i.ed = extractelement <2 x double> %i.dg, i64 0 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ed, ptr noundef %i.ea, double noundef %i.dk, ptr noundef %i.ec, ptr noundef %2) #15
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !56
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !56 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.dl, ptr noundef %i.ee, double noundef %i.ed, ptr noundef %i.ef, ptr noundef %i.ef) #15
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !56
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.eg) #15
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next61.i, %wide.trip.count63.i
  br i1 %exitcond64.not.i, label %.preheader3.i.preheader, label %.lr.ph16.i

.preheader3.i.preheader:                          ; preds = %._crit_edge14.i
  %min.iters.check92 = icmp ult i32 %i.r, 5
  %n.vec94 = and i64 %wide.trip.count63.i, 4294967292 ; 3 uses
  %cmp.n100 = icmp eq i64 %n.vec94, %wide.trip.count63.i
  br label %.preheader3.i

.preheader3.i:                                    ; preds = %.preheader3.i.preheader, %._crit_edge19.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %._crit_edge19.i ], [ 1, %.preheader3.i.preheader ] ; 3 uses
  %i.eh = mul nuw nsw i64 %indvars.iv72.i, %i.bt
  %i.ei = add nsw i64 %indvars.iv72.i, -1
  %i.ej = mul nuw nsw i64 %i.ei, %i.bt
  %invariant.gep134.i = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.eh ; 2 uses
  %invariant.gep136.i = getelementptr [8 x i8], ptr %i.am, i64 %i.ej ; 2 uses
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.body95

vector.body95:                                    ; preds = %.preheader3.i, %vector.body95
  %index96 = phi i64 [ %index.next98, %vector.body95 ], [ 0, %.preheader3.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep134.i, i64 %index96 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load = load <2 x double>, ptr %i.ek, align 8, !tbaa !57
  %wide.load97 = load <2 x double>, ptr %i.el, align 8, !tbaa !57
  %i.em = getelementptr [8 x i8], ptr %invariant.gep136.i, i64 %index96 ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 16
  store <2 x double> %wide.load, ptr %i.em, align 8, !tbaa !57
  store <2 x double> %wide.load97, ptr %i.en, align 8, !tbaa !57
  %index.next98 = add nuw i64 %index96, 4         ; 2 uses
  %i.eo = icmp eq i64 %index.next98, %n.vec94
  br i1 %i.eo, label %middle.block99, label %vector.body95, !llvm.loop !58

middle.block99:                                   ; preds = %vector.body95
  br i1 %cmp.n100, label %._crit_edge19.i, label %scalar.ph91.preheader

scalar.ph91.preheader:                            ; preds = %.preheader3.i, %middle.block99
  %indvars.iv66.i.ph = phi i64 [ 0, %.preheader3.i ], [ %n.vec94, %middle.block99 ]
  br label %scalar.ph91

scalar.ph91:                                      ; preds = %scalar.ph91.preheader, %scalar.ph91
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %scalar.ph91 ], [ %indvars.iv66.i.ph, %scalar.ph91.preheader ] ; 3 uses
  %gep135.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep134.i, i64 %indvars.iv66.i
  %i.ep = load double, ptr %gep135.i, align 8, !tbaa !57
  %gep137.i = getelementptr [8 x i8], ptr %invariant.gep136.i, i64 %indvars.iv66.i
  store double %i.ep, ptr %gep137.i, align 8, !tbaa !57
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count63.i
  br i1 %exitcond71.not.i, label %._crit_edge19.i, label %scalar.ph91, !llvm.loop !61

._crit_edge19.i:                                  ; preds = %scalar.ph91, %middle.block99
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next73.i, %i.bt
  br i1 %exitcond77.not.i, label %._crit_edge21.split.i, label %.preheader3.i

._crit_edge21.split.thread.i:                     ; preds = %.preheader5.i
  %i.eq = sext i32 %i.az to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !56
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.es, ptr noundef %2) #15
  br label %._crit_edge25.i

._crit_edge21.split.i:                            ; preds = %._crit_edge19.i
  %i.et = sext i32 %i.az to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !56
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ev, ptr noundef %2) #15
  %i.ew = mul nsw i32 %i.br, %i.r
  %i.ex = zext nneg i32 %i.ew to i64
  %invariant.gep138.i = getelementptr [8 x i8], ptr %i.am, i64 %i.ex
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %._crit_edge21.split.i
  %indvars.iv78.i = phi i64 [ 0, %._crit_edge21.split.i ], [ %indvars.iv.next79.i, %bb.q ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv78.i ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !56
  %i.fa = tail call double @N_VDotProd(ptr noundef %i.ez, ptr noundef %2) #15 ; 2 uses
  %gep139.i = getelementptr [8 x i8], ptr %invariant.gep138.i, i64 %indvars.iv78.i
  store double %i.fa, ptr %gep139.i, align 8, !tbaa !57
  %i.fb = fneg double %i.fa
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !56
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.fb, ptr noundef %i.fc, ptr noundef %2) #15
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next79.i, %wide.trip.count63.i
  br i1 %exitcond83.not.i, label %._crit_edge25.i, label %bb.q

._crit_edge25.i:                                  ; preds = %bb.q, %._crit_edge21.split.thread.i
  %i.fd = tail call double @N_VDotProd(ptr noundef %2, ptr noundef %2) #15 ; 2 uses
  %i.fe = mul i32 %i.r, %i.r
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr [8 x i8], ptr %i.am, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 -8
  %i.fi = fcmp ugt double %i.fd, 0.000000e+00
  br i1 %i.fi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge25.i
  %i.fj = tail call double @sqrt(double noundef %i.fd) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge25.i
  %i.fk = phi double [ %i.fj, %bb.r ], [ 0.000000e+00, %._crit_edge25.i ] ; 2 uses
  store double %i.fk, ptr %i.fh, align 8, !tbaa !57
  %i.fl = fdiv double 1.000000e+00, %i.fk
  %i.fm = sext i32 %i.br to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !56
  tail call void @N_VScale(double noundef %i.fl, ptr noundef %2, ptr noundef %i.fo) #15
  %.335126.i = add nsw i32 %i.az, 1               ; 6 uses
  %i.fp = icmp slt i32 %.335126.i, %i.r
  br i1 %i.fp, label %.lr.ph30.preheader.i, label %.preheader1.i

.lr.ph30.preheader.i:                             ; preds = %bb.s
  %i.fq = sub i32 %i.br, %i.az                    ; 2 uses
  %wide.trip.count88.i = zext i32 %i.fq to i64    ; 5 uses
  %min.iters.check78 = icmp ult i32 %i.fq, 8
  br i1 %min.iters.check78, label %.lr.ph30.i.preheader, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph30.preheader.i
  %n.vec80 = and i64 %wide.trip.count88.i, 4294967288 ; 4 uses
  %i.fr = trunc nuw i64 %n.vec80 to i32
  %i.fs = add i32 %.335126.i, %i.fr
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.335126.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next85, %vector.body81 ] ; 2 uses
  %vec.ind83 = phi <4 x i32> [ %induction, %vector.ph79 ], [ %vec.ind.next86, %vector.body81 ] ; 3 uses
  %step.add84 = add nsw <4 x i32> %vec.ind83, splat (i32 4)
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index82 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <4 x i32> %vec.ind83, ptr %i.ft, align 4, !tbaa !55
  store <4 x i32> %step.add84, ptr %i.fu, align 4, !tbaa !55
  %index.next85 = add nuw i64 %index82, 8         ; 2 uses
  %vec.ind.next86 = add nsw <4 x i32> %vec.ind83, splat (i32 8)
  %i.fv = icmp eq i64 %index.next85, %n.vec80
  br i1 %i.fv, label %middle.block87, label %vector.body81, !llvm.loop !62

middle.block87:                                   ; preds = %vector.body81
  %cmp.n88 = icmp eq i64 %n.vec80, %wide.trip.count88.i
  br i1 %cmp.n88, label %.preheader1.i, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %.lr.ph30.preheader.i, %middle.block87
  %indvars.iv84.i.ph = phi i64 [ 0, %.lr.ph30.preheader.i ], [ %n.vec80, %middle.block87 ]
  %.335128.i.ph = phi i32 [ %.335126.i, %.lr.ph30.preheader.i ], [ %i.fs, %middle.block87 ]
  br label %.lr.ph30.i

.preheader1.i:                                    ; preds = %.lr.ph30.i, %middle.block87, %bb.s
  %.4.lcssa.i = phi i64 [ 0, %bb.s ], [ %wide.trip.count88.i, %middle.block87 ], [ %wide.trip.count88.i, %.lr.ph30.i ] ; 3 uses
  %.not37032.i = icmp slt i32 %i.az, 0
  br i1 %.not37032.i, label %.loopexit2.i, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %.preheader1.i
  %i.fw = zext nneg i32 %.335126.i to i64         ; 2 uses
  %min.iters.check = icmp ult i32 %.335126.i, 8
  br i1 %min.iters.check, label %.lr.ph35.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph35.i.preheader
  %n.vec = and i64 %i.fw, 2147483640              ; 4 uses
  %i.fx = add nuw nsw i64 %.4.lcssa.i, %n.vec
  %i.fy = trunc nuw nsw i64 %n.vec to i32
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.4.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <4 x i32> %vec.ind, ptr %i.ga, align 4, !tbaa !55
  store <4 x i32> %step.add, ptr %i.gb, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fw
  br i1 %cmp.n, label %.loopexit2.i, label %.lr.ph35.i.preheader103

.lr.ph35.i.preheader103:                          ; preds = %.lr.ph35.i.preheader, %middle.block
  %indvars.iv90.i.ph = phi i64 [ %.4.lcssa.i, %.lr.ph35.i.preheader ], [ %i.fx, %middle.block ]
  %.435233.i.ph = phi i32 [ 0, %.lr.ph35.i.preheader ], [ %i.fy, %middle.block ]
  br label %.lr.ph35.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %.lr.ph30.i ], [ %indvars.iv84.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  %.335128.i = phi i32 [ %.3351.i, %.lr.ph30.i ], [ %.335128.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv84.i
  store i32 %.335128.i, ptr %i.gd, align 4, !tbaa !55
  %.3351.i = add nsw i32 %.335128.i, 1
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next85.i, %wide.trip.count88.i
  br i1 %exitcond89.not.i, label %.preheader1.i, label %.lr.ph30.i, !llvm.loop !64

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.preheader103, %.lr.ph35.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %.lr.ph35.i ], [ %indvars.iv90.i.ph, %.lr.ph35.i.preheader103 ] ; 2 uses
  %.435233.i = phi i32 [ %i.gf, %.lr.ph35.i ], [ %.435233.i.ph, %.lr.ph35.i.preheader103 ] ; 3 uses
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv90.i
  store i32 %.435233.i, ptr %i.ge, align 4, !tbaa !55
  %i.gf = add nuw i32 %.435233.i, 1
  %exitcond94.not.i = icmp eq i32 %.435233.i, %i.az
  br i1 %exitcond94.not.i, label %.loopexit2.i, label %.lr.ph35.i, !llvm.loop !65

.loopexit2.i:                                     ; preds = %.lr.ph35.i, %middle.block, %.preheader1.i, %bb.p, %bb.j
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.u) ; 7 uses
  %i.gg = tail call i32 @N_VDotProdMulti(i32 noundef %spec.select.i, ptr noundef %i.aq, ptr noundef nonnull %i.ag, ptr noundef %i.ao) #15 ; 0 uses
  store double 1.000000e+00, ptr %i.ai, align 8, !tbaa !57
  store ptr %i.e, ptr %i.ak, align 8, !tbaa !56
  %i.gh = add i32 %spec.select.i, -1              ; 2 uses
  %i.gi = icmp sgt i32 %spec.select.i, 0
  br i1 %i.gi, label %.preheader.lr.ph.i, label %._crit_edge42.thread.i

.preheader.lr.ph.i:                               ; preds = %.loopexit2.i
  %.5353372.i = add i32 %i.r, 1
  %i.gj = sext i32 %i.r to i64                    ; 3 uses
  %smin.i = zext nneg i32 %spec.select.i to i64   ; 2 uses
  %i.gk = add nuw i32 %spec.select.i, 1           ; 2 uses
  %wide.trip.count107.i = zext i32 %i.gk to i64   ; 5 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.u, %.preheader.lr.ph.i
  %indvar = phi i32 [ %indvar.next, %bb.u ], [ 0, %.preheader.lr.ph.i ] ; 3 uses
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i, %bb.u ], [ 1, %.preheader.lr.ph.i ] ; 3 uses
  %indvars.iv100.in.i = phi i64 [ %indvars.iv100.i, %bb.u ], [ %smin.i, %.preheader.lr.ph.i ] ; 6 uses
  %indvars.iv100.i = add nsw i64 %indvars.iv100.in.i, -1 ; 5 uses
  %i.gl = icmp slt i64 %indvars.iv100.in.i, %smin.i
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv100.i ; 5 uses
  %.promoted.i = load double, ptr %i.gm, align 8, !tbaa !57 ; 3 uses
  br i1 %i.gl, label %.lr.ph38.i, label %._crit_edge39.i

.lr.ph38.i:                                       ; preds = %.preheader.i
  %invariant.gep140.i = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv100.i ; 3 uses
  %xtraiter = and i32 %indvar, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph38.i
  %i.gn = mul nsw i64 %indvars.iv100.in.i, %i.gj
  %gep141.i.prol = getelementptr [8 x i8], ptr %invariant.gep140.i, i64 %i.gn
  %i.go = load double, ptr %gep141.i.prol, align 8, !tbaa !57
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv100.in.i
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !57
  %i.gr = fneg double %i.go
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.gr, double %i.gq, double %.promoted.i) ; 3 uses
  store double %i.gs, ptr %i.gm, align 8, !tbaa !57
  %indvars.iv.next98.i.prol = add nsw i64 %indvars.iv100.in.i, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph38.i
  %.lcssa.unr = phi double [ poison, %.lr.ph38.i ], [ %i.gs, %.prol.loopexit.unr-lcssa ]
  %indvars.iv97.i.unr = phi i64 [ %indvars.iv100.in.i, %.lr.ph38.i ], [ %indvars.iv.next98.i.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ %.promoted.i, %.lr.ph38.i ], [ %i.gs, %.prol.loopexit.unr-lcssa ]
  %i.gt = icmp eq i32 %indvar, 1
  br i1 %i.gt, label %._crit_edge39.i, label %.lr.ph38.i.new

.lr.ph38.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph38.i.new
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i.1, %.lr.ph38.i.new ], [ %indvars.iv97.i.unr, %.prol.loopexit ] ; 4 uses
  %i.gu = phi double [ %i.hg, %.lr.ph38.i.new ], [ %.unr, %.prol.loopexit ]
  %i.gv = mul nsw i64 %indvars.iv97.i, %i.gj
  %gep141.i = getelementptr [8 x i8], ptr %invariant.gep140.i, i64 %i.gv
  %i.gw = load double, ptr %gep141.i, align 8, !tbaa !57
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv97.i
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !57
  %i.gz = fneg double %i.gw
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.gy, double %i.gu) ; 2 uses
  store double %i.ha, ptr %i.gm, align 8, !tbaa !57
  %indvars.iv.next98.i = add nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %i.hb = mul nsw i64 %indvars.iv.next98.i, %i.gj
  %gep141.i.1 = getelementptr [8 x i8], ptr %invariant.gep140.i, i64 %i.hb
  %i.hc = load double, ptr %gep141.i.1, align 8, !tbaa !57
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next98.i
  %i.he = load double, ptr %i.hd, align 8, !tbaa !57
  %i.hf = fneg double %i.hc
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.hf, double %i.he, double %i.ha) ; 3 uses
  store double %i.hg, ptr %i.gm, align 8, !tbaa !57
  %indvars.iv.next98.i.1 = add nsw i64 %indvars.iv97.i, 2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next98.i.1 to i32
  %exitcond99.not.i.1 = icmp eq i32 %spec.select.i, %lftr.wideiv.i.1
  br i1 %exitcond99.not.i.1, label %._crit_edge39.i, label %.lr.ph38.i.new

._crit_edge39.i:                                  ; preds = %.prol.loopexit, %.lr.ph38.i.new, %.preheader.i
  %i.hh = phi double [ %.promoted.i, %.preheader.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.hg, %.lr.ph38.i.new ] ; 2 uses
  %i.hi = fcmp oeq double %i.hh, 0.000000e+00
  br i1 %i.hi, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge39.i
  %i.hj = trunc nuw nsw i64 %indvars.iv100.i to i32
  %i.hk = mul i32 %.5353372.i, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !57
  %i.ho = fdiv double %i.hh, %i.hn
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge39.i
  %storemerge.i = phi double [ %i.ho, %bb.t ], [ 0.000000e+00, %._crit_edge39.i ] ; 2 uses
  store double %storemerge.i, ptr %i.gm, align 8, !tbaa !57
  %i.hp = fneg double %storemerge.i
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv103.i
  store double %i.hp, ptr %i.hq, align 8, !tbaa !57
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv100.i
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !55
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !56
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv103.i
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !56
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %exitcond108.not.i = icmp eq i64 %indvars.iv.next104.i, %wide.trip.count107.i
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond108.not.i, label %._crit_edge42.i, label %.preheader.i

._crit_edge42.i:                                  ; preds = %bb.u
  %.not371.i = icmp eq i32 %i.as, 0
  br i1 %.not371.i, label %.loopexit.i, label %bb.v

._crit_edge42.thread.i:                           ; preds = %.loopexit2.i
  %.not371127.i = icmp eq i32 %i.as, 0
  br i1 %.not371127.i, label %.loopexit.i, label %.thread129.i

.thread129.i:                                     ; preds = %._crit_edge42.thread.i
  %i.hx = fsub double 1.000000e+00, %i.au
  %i.hy = fneg double %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store double %i.hy, ptr %i.hz, align 8, !tbaa !57
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aq, ptr %i.ia, align 8, !tbaa !56
  br label %.loopexit.i

bb.v:                                             ; preds = %._crit_edge42.i
  %i.ib = fsub double 1.000000e+00, %i.au         ; 4 uses
  %i.ic = fneg double %i.ib
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %wide.trip.count107.i
  store double %i.ic, ptr %i.id, align 8, !tbaa !57
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %wide.trip.count107.i
  store ptr %i.aq, ptr %i.ie, align 8, !tbaa !56
  %i.if = add nuw nsw i64 %wide.trip.count107.i, 1 ; 3 uses
  %i.ig = zext i32 %i.gh to i64                   ; 4 uses
  %i.ih = and i32 %spec.select.i, 1
  %lcmp.mod108.not = icmp eq i32 %i.ih, 0
  br i1 %lcmp.mod108.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol

.lr.ph48.i.prol:                                  ; preds = %bb.v
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ig
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !57
  %i.ik = fmul double %i.ib, %i.ij
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.if
  store double %i.ik, ptr %i.il, align 8, !tbaa !57
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ig
  %i.in = load i32, ptr %i.im, align 4, !tbaa !55
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.io
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !56
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.if
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !56
  %indvars.iv.next112.i.prol = add nsw i64 %i.ig, -1
  %indvars.iv.next110.i.prol = add nuw nsw i64 %wide.trip.count107.i, 2 ; 2 uses
  br label %.lr.ph48.i.prol.loopexit

.lr.ph48.i.prol.loopexit:                         ; preds = %.lr.ph48.i.prol, %bb.v
  %indvars.iv.next110.i.lcssa.unr = phi i64 [ poison, %bb.v ], [ %indvars.iv.next110.i.prol, %.lr.ph48.i.prol ]
  %indvars.iv111.i.unr = phi i64 [ %i.ig, %bb.v ], [ %indvars.iv.next112.i.prol, %.lr.ph48.i.prol ]
  %indvars.iv109.i.unr = phi i64 [ %i.if, %bb.v ], [ %indvars.iv.next110.i.prol, %.lr.ph48.i.prol ]
  %i.is = icmp eq i32 %i.gh, 0
  br i1 %i.is, label %.loopexit.loopexit.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i.1, %.lr.ph48.i ], [ %indvars.iv111.i.unr, %.lr.ph48.i.prol.loopexit ] ; 4 uses
  %indvars.iv109.i = phi i64 [ %indvars.iv.next110.i.1, %.lr.ph48.i ], [ %indvars.iv109.i.unr, %.lr.ph48.i.prol.loopexit ] ; 4 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv111.i
  %i.iu = load double, ptr %i.it, align 8, !tbaa !57
  %i.iv = fmul double %i.ib, %i.iu
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv109.i
  store double %i.iv, ptr %i.iw, align 8, !tbaa !57
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv111.i
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !55
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !56
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv109.i
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !56
  %indvars.iv.next112.i = add nsw i64 %indvars.iv111.i, -1 ; 3 uses
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next112.i
  %i.je = load double, ptr %i.jd, align 8, !tbaa !57
  %i.jf = fmul double %i.ib, %i.je
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next110.i
  store double %i.jf, ptr %i.jg, align 8, !tbaa !57
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next112.i
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !55
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !56
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next110.i
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !56
  %indvars.iv.next112.i.1 = add nsw i64 %indvars.iv111.i, -2
  %indvars.iv.next110.i.1 = add nuw nsw i64 %indvars.iv109.i, 2 ; 2 uses
  %.not144.i.1 = icmp eq i64 %indvars.iv.next112.i, 0
  br i1 %.not144.i.1, label %.loopexit.loopexit.i, label %.lr.ph48.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph48.i, %.lr.ph48.i.prol.loopexit
  %indvars.iv.next110.i.lcssa = phi i64 [ %indvars.iv.next110.i.lcssa.unr, %.lr.ph48.i.prol.loopexit ], [ %indvars.iv.next110.i.1, %.lr.ph48.i ]
  %i.jn = trunc nuw i64 %indvars.iv.next110.i.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.thread129.i, %._crit_edge42.thread.i, %._crit_edge42.i
  %.2357.i = phi i32 [ %i.gk, %._crit_edge42.i ], [ 2, %.thread129.i ], [ %i.jn, %.loopexit.loopexit.i ], [ 1, %._crit_edge42.thread.i ]
  %i.jo = tail call i32 @N_VLinearCombination(i32 noundef %.2357.i, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ak, ptr noundef %2) #15 ; 0 uses
  br label %AndersonAccelerate.exit

AndersonAccelerate.exit:                          ; preds = %.loopexit.i, %bb.g, %bb.c
  %i.jp = load ptr, ptr %0, align 8, !tbaa !27
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 192 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !66
  %i.js = add nsw i64 %i.jr, 1
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !66
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef -1.000000e+00, ptr noundef %i.c, ptr noundef %i.g) #15
  %i.jt = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !67
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 208
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !68
  %i.jy = tail call i32 %i.jv(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %i.g, double noundef %4, ptr noundef %3, ptr noundef %i.jx) #15 ; 4 uses
  switch i32 %i.jy, label %bb.w [
    i32 0, label %.loopexit
    i32 903, label %.loopexit
    i32 901, label %bb.x
  ]

bb.w:                                             ; preds = %AndersonAccelerate.exit
  %i.jz = load ptr, ptr %0, align 8, !tbaa !27
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 200 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !69
  %i.kc = add nsw i64 %i.kb, 1
  store i64 %i.kc, ptr %i.ka, align 8, !tbaa !69
  br label %.loopexit

bb.x:                                             ; preds = %AndersonAccelerate.exit
  %i.kd = load ptr, ptr %0, align 8, !tbaa !27    ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 184 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !52
  %i.kg = add nsw i32 %i.kf, 1                    ; 2 uses
  store i32 %i.kg, ptr %i.ke, align 8, !tbaa !52
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 188
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !38
  %i.kj = icmp slt i32 %i.kg, %i.ki
  br i1 %i.kj, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.x
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kd, i64 200
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !69
  %i.kk = add nsw i64 %.pre, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.kl = phi i64 [ 1, %bb.a ], [ %i.kk, %._crit_edge.loopexit ]
  %.lcssa46 = phi ptr [ %i.a, %bb.a ], [ %i.kd, %._crit_edge.loopexit ]
  %i.km = getelementptr inbounds nuw i8, ptr %.lcssa46, i64 200
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !69
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %AndersonAccelerate.exit, %AndersonAccelerate.exit, %._crit_edge, %bb.w
  %.0 = phi i32 [ 902, %._crit_edge ], [ %i.jy, %bb.w ], [ %i.jy, %AndersonAccelerate.exit ], [ %i.o, %.lr.ph ], [ %i.jy, %AndersonAccelerate.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNNonlinSolFree_FixedPoint(ptr noundef captures(address_is_null) %0) #0 {
end_hunk_0
