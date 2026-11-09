Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sundials_band?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@bandGBTRF:bb.a
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.0121172 = phi i64 [ %i.aw, %.lr.ph174.preheader ], [ %i.dj, %.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0121172
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !24 ; 4 uses
  %i.ch = sub nsw i64 %.0118.lcssa, %.0121172
  %i.ci = getelementptr [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr [8 x i8], ptr %i.ci, i64 %4 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !26 ; 4 uses
  br i1 %.not137, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph174
  %i.cl = sub nsw i64 %.0120177, %.0121172
  %i.cm = getelementptr [8 x i8], ptr %i.cg, i64 %i.cl
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %4 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !26
  store double %i.co, ptr %i.cj, align 8, !tbaa !26
  store double %i.ck, ptr %i.cn, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph174
  %i.cp = fcmp oeq double %i.ck, 0.000000e+00
  %brmerge = or i1 %i.cp, %.not140165.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %bb.h
  %i.cq = sub i64 %i.aw, %.0121172
  %i.cr = getelementptr [8 x i8], ptr %i.cg, i64 %i.cq
  %i.cs = getelementptr [8 x i8], ptr %i.cr, i64 %4 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph170.preheader227, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph170.preheader
  %i.ct = shl i64 %indvar, 3
  %i.cu = sub i64 %i.ao, %i.ct
  %i.cv = getelementptr i8, ptr %i.cg, i64 %i.cu
  %bound0 = icmp ult ptr %i.cs, %scevgep204
  %bound1 = icmp ult ptr %i.as, %i.cv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph170.preheader227, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cw = getelementptr i8, ptr %i.cs, i64 %i.cc
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ck, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cs, i64 %i.cx ; 3 uses
  %next.gep205 = getelementptr i8, ptr %i.as, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep205, i64 16
  %wide.load = load <2 x double>, ptr %next.gep205, align 8, !tbaa !26, !alias.scope !44
  %wide.load206 = load <2 x double>, ptr %i.cy, align 8, !tbaa !26, !alias.scope !44
  %i.cz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load207 = load <2 x double>, ptr %next.gep, align 8, !tbaa !26, !alias.scope !45, !noalias !44
  %wide.load208 = load <2 x double>, ptr %i.cz, align 8, !tbaa !26, !alias.scope !45, !noalias !44
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load207)
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load206, <2 x double> %wide.load208)
  store <2 x double> %i.da, ptr %next.gep, align 8, !tbaa !26, !alias.scope !45, !noalias !44
  store <2 x double> %i.db, ptr %i.cz, align 8, !tbaa !26, !alias.scope !45, !noalias !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph170.preheader227

.lr.ph170.preheader227:                           ; preds = %vector.memcheck, %.lr.ph170.preheader, %middle.block
  %.0115168.ph = phi ptr [ %i.cs, %vector.memcheck ], [ %i.cs, %.lr.ph170.preheader ], [ %i.cw, %middle.block ]
  %.2167.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph170.preheader ], [ %i.cd, %middle.block ]
  %.2124166.ph = phi i64 [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph170.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader227, %.lr.ph170
  %.0115168 = phi ptr [ %i.di, %.lr.ph170 ], [ %.0115168.ph, %.lr.ph170.preheader227 ] ; 3 uses
  %.2167 = phi ptr [ %i.dh, %.lr.ph170 ], [ %.2167.ph, %.lr.ph170.preheader227 ] ; 2 uses
  %.2124166 = phi i64 [ %i.dg, %.lr.ph170 ], [ %.2124166.ph, %.lr.ph170.preheader227 ] ; 2 uses
  %i.dd = load double, ptr %.2167, align 8, !tbaa !26
  %i.de = load double, ptr %.0115168, align 8, !tbaa !26
  %i.df = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.dd, double %i.de)
  store double %i.df, ptr %.0115168, align 8, !tbaa !26
  %i.dg = add nuw nsw i64 %.2124166, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.2167, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %.0115168, i64 8
  %.not140.not = icmp slt i64 %.2124166, %.
  br i1 %.not140.not, label %.lr.ph170, label %.loopexit, !llvm.loop !41

.loopexit:                                        ; preds = %.lr.ph170, %middle.block, %bb.h
  %i.dj = add nuw i64 %.0121172, 1
  %exitcond191.not = icmp eq i64 %.0121172, %smin190
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond191.not, label %._crit_edge175, label %.lr.ph174, !llvm.loop !42

._crit_edge175:                                   ; preds = %.loopexit, %._crit_edge164
  %i.dk = getelementptr inbounds nuw i8, ptr %.0127176, i64 8 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next189 = add i64 %indvars.iv188, 1
  %exitcond192.not = icmp eq i64 %i.aw, %i.ag
  br i1 %exitcond192.not, label %._crit_edge180, label %.lr.ph179, !llvm.loop !43

._crit_edge180:                                   ; preds = %._crit_edge175, %.loopexit144
  %.0127.lcssa = phi ptr [ %5, %.loopexit144 ], [ %i.dk, %._crit_edge175 ]
  store i64 %i.ag, ptr %.0127.lcssa, align 8, !tbaa !29
  %i.dl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !24
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %4
  %i.do = load double, ptr %i.dn, align 8, !tbaa !26
  %i.dp = fcmp oeq double %i.do, 0.000000e+00
  %.142 = select i1 %i.dp, i64 %1, i64 0
  br label %.loopexit143

.loopexit143:                                     ; preds = %._crit_edge158, %._crit_edge180
  %.0128 = phi i64 [ %.142, %._crit_edge180 ], [ %i.aw, %._crit_edge158 ]
  ret i64 %.0128
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BandGBTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = add i64 %i.d, -1                         ; 4 uses
  %i.j = icmp sgt i64 %i.d, 1
  br i1 %i.j, label %.lr.ph68.i.preheader, label %.preheader.i

.lr.ph68.i.preheader:                             ; preds = %bb.a
  %i.k = shl i64 %i.f, 3                          ; 2 uses
  br label %.lr.ph68.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %exitcond75.not.i = icmp eq i64 %i.y, %i.i
  br i1 %exitcond75.not.i, label %.preheader.i, label %.lr.ph68.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.loopexit.i, %bb.a
  %i.l = icmp sgt i64 %i.d, 0
  br i1 %i.l, label %.lr.ph73.i.preheader, label %bandGBTRS.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.m = shl i64 %i.d, 3
  %i.n = add i64 %i.m, -8
  %invariant.op = sub i64 1, %i.d
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %.lr.ph68.i.preheader, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ %i.h, %.lr.ph68.i.preheader ] ; 2 uses
  %.05967.i = phi i64 [ %i.y, %.loopexit.i ], [ 0, %.lr.ph68.i.preheader ] ; 14 uses
  %smin.i = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i) ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05967.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !26 ; 5 uses
  %.not.i = icmp eq i64 %i.p, %.05967.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05967.i ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !26
  store double %i.t, ptr %i.q, align 8, !tbaa !26
  store double %i.r, ptr %i.s, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.05967.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 3 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.f ; 4 uses
  %i.x = add nsw i64 %.05967.i, %i.h
  %..i = tail call i64 @llvm.smin.i64(i64 %i.x, i64 %i.i)
  %i.y = add nuw nsw i64 %.05967.i, 1             ; 6 uses
  %.not6465.not.i = icmp slt i64 %.05967.i, %..i
  br i1 %.not6465.not.i, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.z = sub i64 %smin.i, %.05967.i               ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.aa = shl nuw nsw i64 %.05967.i, 3            ; 2 uses
  %i.ab = getelementptr i8, ptr %2, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = xor i64 %.05967.i, -1
  %i.ae = add i64 %smin.i, %i.ad
  %i.af = shl i64 %i.ae, 3                        ; 2 uses
  %i.ag = getelementptr i8, ptr %2, i64 %i.aa
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.af
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.k
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %i.al = getelementptr i8, ptr %i.v, i64 %i.k
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = getelementptr i8, ptr %i.am, i64 %i.af
  %bound0 = icmp ult ptr %i.ac, %i.an
  %bound1 = icmp ult ptr %i.ak, %i.ai
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.ao = add i64 %i.y, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.r, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = add nuw i64 %i.y, %index                ; 2 uses
  %i.aq = sub nuw nsw i64 %i.ap, %.05967.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <2 x double>, ptr %i.ar, align 8, !tbaa !26, !alias.scope !56
  %wide.load12 = load <2 x double>, ptr %i.as, align 8, !tbaa !26, !alias.scope !56
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ap ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load13 = load <2 x double>, ptr %i.at, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  %wide.load14 = load <2 x double>, ptr %i.au, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load13)
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load12, <2 x double> %wide.load14)
  store <2 x double> %i.av, ptr %i.at, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader43

.lr.ph.i.preheader43:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.066.i.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.preheader ], [ %i.ao, %middle.block ] ; 6 uses
  %i.ay = add i64 %smin.i, %.066.i.ph
  %i.az = and i64 %i.ay, 1
  %lcmp.mod.not.not = icmp eq i64 %i.az, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader43
  %i.ba = sub nuw nsw i64 %.066.i.ph, %.05967.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i.ph ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !26
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bc, double %i.be)
  store double %i.bf, ptr %i.bd, align 8, !tbaa !26
  %i.bg = add nuw i64 %.066.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader43
  %.066.i.unr = phi i64 [ %.066.i.ph, %.lr.ph.i.preheader43 ], [ %i.bg, %.lr.ph.i.prol ]
  %i.bh = icmp eq i64 %smin.i, %.066.i.ph
  br i1 %i.bh, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.066.i = phi i64 [ %i.bv, %.lr.ph.i ], [ %.066.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.bi = sub nuw nsw i64 %.066.i, %.05967.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !26
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.r, double %i.bk, double %i.bm)
  store double %i.bn, ptr %i.bl, align 8, !tbaa !26
  %i.bo = add nuw i64 %.066.i, 1                  ; 3 uses
  %i.bp = sub nuw nsw i64 %i.bo, %.05967.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !26
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bo ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !26
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.r, double %i.br, double %i.bt)
  store double %i.bu, ptr %i.bs, align 8, !tbaa !26
  %i.bv = add nuw i64 %.066.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.bo, %smin.i
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !50

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader, %._crit_edge.i
  %indvar = phi i64 [ 0, %.lr.ph73.i.preheader ], [ %indvar.next, %._crit_edge.i ] ; 3 uses
  %.16072.i = phi i64 [ %i.i, %.lr.ph73.i.preheader ], [ %i.dh, %._crit_edge.i ] ; 10 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16072.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !24 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.f ; 4 uses
  %i.bz = sub nsw i64 %.16072.i, %i.f
  %i.ca = tail call i64 @llvm.smax.i64(i64 %i.bz, i64 0) ; 7 uses
  %i.cb = load double, ptr %i.by, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.16072.i ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !26
  %i.ce = fdiv double %i.cd, %i.cb                ; 2 uses
  store double %i.ce, ptr %i.cc, align 8, !tbaa !26
  %i.cf = fneg double %i.ce                       ; 2 uses
  %.not.not69.i = icmp samesign ult i64 %i.ca, %.16072.i
  br i1 %.not.not69.i, label %.lr.ph71.i.preheader, label %._crit_edge.i

.lr.ph71.i.preheader:                             ; preds = %.lr.ph73.i
  %i.cg = tail call i64 @llvm.smin.i64(i64 %.16072.i, i64 %i.f) ; 3 uses
  %min.iters.check23 = icmp ult i64 %i.cg, 4
  br i1 %min.iters.check23, label %.lr.ph71.i.preheader42, label %vector.memcheck24

vector.memcheck24:                                ; preds = %.lr.ph71.i.preheader
  %i.ch = shl i64 %i.ca, 3
  %i.ci = getelementptr i8, ptr %2, i64 %i.ch
  %i.cj = shl i64 %indvar, 3
  %i.ck = sub i64 %i.n, %i.cj
  %i.cl = getelementptr i8, ptr %2, i64 %i.ck
  %.reass = add i64 %indvar, %invariant.op
  %i.cm = add i64 %i.ca, %.reass
  %i.cn = add i64 %i.f, %i.cm
  %i.co = shl i64 %i.cn, 3
  %i.cp = getelementptr i8, ptr %i.bx, i64 %i.co
  %bound025 = icmp ult ptr %i.ci, %i.by
  %bound126 = icmp ult ptr %i.cp, %i.cl
  %found.conflict27 = and i1 %bound025, %bound126
  br i1 %found.conflict27, label %.lr.ph71.i.preheader42, label %vector.ph28

vector.ph28:                                      ; preds = %vector.memcheck24
  %n.vec29 = and i64 %i.cg, -4                    ; 3 uses
  %i.cq = add i64 %i.ca, %n.vec29
  %broadcast.splatinsert30 = insertelement <2 x double> poison, double %i.cf, i64 0
  %broadcast.splat31 = shufflevector <2 x double> %broadcast.splatinsert30, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph28
  %index33 = phi i64 [ 0, %vector.ph28 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %i.cr = add nuw i64 %i.ca, %index33             ; 2 uses
  %i.cs = sub nsw i64 %i.cr, %.16072.i
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load34 = load <2 x double>, ptr %i.ct, align 8, !tbaa !26, !alias.scope !58
  %wide.load35 = load <2 x double>, ptr %i.cu, align 8, !tbaa !26, !alias.scope !58
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cr ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load36 = load <2 x double>, ptr %i.cv, align 8, !tbaa !26, !alias.scope !59, !noalias !58
  %wide.load37 = load <2 x double>, ptr %i.cw, align 8, !tbaa !26, !alias.scope !59, !noalias !58
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat31, <2 x double> %wide.load34, <2 x double> %wide.load36)
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat31, <2 x double> %wide.load35, <2 x double> %wide.load37)
  store <2 x double> %i.cx, ptr %i.cv, align 8, !tbaa !26, !alias.scope !59, !noalias !58
  store <2 x double> %i.cy, ptr %i.cw, align 8, !tbaa !26, !alias.scope !59, !noalias !58
  %index.next38 = add nuw i64 %index33, 4         ; 2 uses
  %i.cz = icmp eq i64 %index.next38, %n.vec29
  br i1 %i.cz, label %middle.block39, label %vector.body32, !llvm.loop !54

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %i.cg, %n.vec29
  br i1 %cmp.n40, label %._crit_edge.i, label %.lr.ph71.i.preheader42

.lr.ph71.i.preheader42:                           ; preds = %vector.memcheck24, %.lr.ph71.i.preheader, %middle.block39
  %.170.i.ph = phi i64 [ %i.ca, %vector.memcheck24 ], [ %i.ca, %.lr.ph71.i.preheader ], [ %i.cq, %middle.block39 ]
  br label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.preheader42, %.lr.ph71.i
  %.170.i = phi i64 [ %i.dg, %.lr.ph71.i ], [ %.170.i.ph, %.lr.ph71.i.preheader42 ] ; 3 uses
  %i.da = sub nsw i64 %.170.i, %.16072.i
  %i.db = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !26
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.170.i ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !26
  %i.df = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.dc, double %i.de)
  store double %i.df, ptr %i.dd, align 8, !tbaa !26
  %i.dg = add nuw nsw i64 %.170.i, 1              ; 2 uses
  %.not.not.i = icmp slt i64 %i.dg, %.16072.i
  br i1 %.not.not.i, label %.lr.ph71.i, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %.lr.ph71.i, %middle.block39, %.lr.ph73.i
  %i.dh = add nsw i64 %.16072.i, -1
  %i.di = icmp sgt i64 %.16072.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.di, label %.lr.ph73.i, label %bandGBTRS.exit, !llvm.loop !1

bandGBTRS.exit:                                   ; preds = %._crit_edge.i, %.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @bandGBTRS(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, -1                           ; 4 uses
  %i.b = icmp sgt i64 %1, 1
  br i1 %i.b, label %.lr.ph68.preheader, label %.preheader

.lr.ph68.preheader:                               ; preds = %bb.a
  %i.c = shl i64 %2, 3                            ; 2 uses
  br label %.lr.ph68

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond75.not = icmp eq i64 %i.q, %i.a
  br i1 %exitcond75.not, label %.preheader, label %.lr.ph68, !llvm.loop !0

.preheader:                                       ; preds = %.loopexit, %bb.a
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %.lr.ph73.preheader, label %._crit_edge74

.lr.ph73.preheader:                               ; preds = %.preheader
  %i.e = shl i64 %1, 3
  %i.f = add i64 %i.e, -8
  %invariant.op = sub i64 1, %1
  br label %.lr.ph73

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %3, %.lr.ph68.preheader ] ; 2 uses
  %.05967 = phi i64 [ %i.q, %.loopexit ], [ 0, %.lr.ph68.preheader ] ; 14 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a) ; 5 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.05967
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %5, i64 %i.h ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !26 ; 5 uses
  %.not = icmp eq i64 %i.h, %.05967
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.05967 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !26
  store double %i.l, ptr %i.i, align 8, !tbaa !26
  store double %i.j, ptr %i.k, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05967
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 3 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %2 ; 4 uses
  %i.p = add nsw i64 %.05967, %3
  %. = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %i.a)
  %i.q = add nuw nsw i64 %.05967, 1               ; 6 uses
  %.not6465.not = icmp slt i64 %.05967, %.
  br i1 %.not6465.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = sub i64 %smin, %.05967                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.preheader114, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.s = shl nuw nsw i64 %.05967, 3               ; 2 uses
  %i.t = getelementptr i8, ptr %5, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = xor i64 %.05967, -1
  %i.w = add i64 %smin, %i.v
  %i.x = shl i64 %i.w, 3                          ; 2 uses
  %i.y = getelementptr i8, ptr %5, i64 %i.s
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.x
  %i.ab = getelementptr i8, ptr %i.n, i64 %i.c
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = getelementptr i8, ptr %i.n, i64 %i.c
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.x
  %bound0 = icmp ult ptr %i.u, %i.af
  %bound1 = icmp ult ptr %i.ac, %i.aa
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader114, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, -4                       ; 3 uses
  %i.ag = add i64 %i.q, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add nuw i64 %i.q, %index                ; 2 uses
  %i.ai = sub nuw nsw i64 %i.ah, %.05967
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <2 x double>, ptr %i.aj, align 8, !tbaa !26, !alias.scope !70
  %wide.load83 = load <2 x double>, ptr %i.ak, align 8, !tbaa !26, !alias.scope !70
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ah ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load84 = load <2 x double>, ptr %i.al, align 8, !tbaa !26, !alias.scope !71, !noalias !70
  %wide.load85 = load <2 x double>, ptr %i.am, align 8, !tbaa !26, !alias.scope !71, !noalias !70
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load84)
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load83, <2 x double> %wide.load85)
  store <2 x double> %i.an, ptr %i.al, align 8, !tbaa !26, !alias.scope !71, !noalias !70
  store <2 x double> %i.ao, ptr %i.am, align 8, !tbaa !26, !alias.scope !71, !noalias !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader114

.lr.ph.preheader114:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.066.ph = phi i64 [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.preheader ], [ %i.ag, %middle.block ] ; 6 uses
  %i.aq = add i64 %smin, %.066.ph
  %i.ar = and i64 %i.aq, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ar, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader114
  %i.as = sub nuw nsw i64 %.066.ph, %.05967
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066.ph ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !26
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.j, double %i.au, double %i.aw)
  store double %i.ax, ptr %i.av, align 8, !tbaa !26
  %i.ay = add nuw i64 %.066.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader114
  %.066.unr = phi i64 [ %.066.ph, %.lr.ph.preheader114 ], [ %i.ay, %.lr.ph.prol ]
  %i.az = icmp eq i64 %smin, %.066.ph
  br i1 %i.az, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.066 = phi i64 [ %i.bn, %.lr.ph ], [ %.066.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ba = sub nuw nsw i64 %.066, %.05967
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !26
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.j, double %i.bc, double %i.be)
  store double %i.bf, ptr %i.bd, align 8, !tbaa !26
  %i.bg = add nuw i64 %.066, 1                    ; 3 uses
  %i.bh = sub nuw nsw i64 %i.bg, %.05967
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bg ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !26
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.j, double %i.bj, double %i.bl)
  store double %i.bm, ptr %i.bk, align 8, !tbaa !26
  %i.bn = add nuw i64 %.066, 2
  %exitcond.not.1 = icmp eq i64 %i.bg, %smin
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !64

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %.16072 = phi i64 [ %i.a, %.lr.ph73.preheader ], [ %i.cz, %._crit_edge ] ; 10 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16072
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !24 ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %2 ; 4 uses
  %i.br = sub nsw i64 %.16072, %2
  %i.bs = tail call i64 @llvm.smax.i64(i64 %i.br, i64 0) ; 7 uses
  %i.bt = load double, ptr %i.bq, align 8, !tbaa !26
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.16072 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !26
  %i.bw = fdiv double %i.bv, %i.bt                ; 2 uses
  store double %i.bw, ptr %i.bu, align 8, !tbaa !26
  %i.bx = fneg double %i.bw                       ; 2 uses
  %.not.not69 = icmp samesign ult i64 %i.bs, %.16072
  br i1 %.not.not69, label %.lr.ph71.preheader, label %._crit_edge

.lr.ph71.preheader:                               ; preds = %.lr.ph73
  %i.by = tail call i64 @llvm.smin.i64(i64 %.16072, i64 %2) ; 3 uses
  %min.iters.check94 = icmp ult i64 %i.by, 4
  br i1 %min.iters.check94, label %.lr.ph71.preheader113, label %vector.memcheck95

vector.memcheck95:                                ; preds = %.lr.ph71.preheader
  %i.bz = shl i64 %i.bs, 3
  %i.ca = getelementptr i8, ptr %5, i64 %i.bz
  %i.cb = shl i64 %indvar, 3
  %i.cc = sub i64 %i.f, %i.cb
  %i.cd = getelementptr i8, ptr %5, i64 %i.cc
  %.reass = add i64 %indvar, %invariant.op
  %i.ce = add i64 %i.bs, %.reass
  %i.cf = add i64 %2, %i.ce
  %i.cg = shl i64 %i.cf, 3
  %i.ch = getelementptr i8, ptr %i.bp, i64 %i.cg
  %bound096 = icmp ult ptr %i.ca, %i.bq
  %bound197 = icmp ult ptr %i.ch, %i.cd
  %found.conflict98 = and i1 %bound096, %bound197
  br i1 %found.conflict98, label %.lr.ph71.preheader113, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck95
  %n.vec100 = and i64 %i.by, -4                   ; 3 uses
  %i.ci = add i64 %i.bs, %n.vec100
  %broadcast.splatinsert101 = insertelement <2 x double> poison, double %i.bx, i64 0
  %broadcast.splat102 = shufflevector <2 x double> %broadcast.splatinsert101, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph99
  %index104 = phi i64 [ 0, %vector.ph99 ], [ %index.next109, %vector.body103 ] ; 2 uses
  %i.cj = add nuw i64 %i.bs, %index104            ; 2 uses
  %i.ck = sub nsw i64 %i.cj, %.16072
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load105 = load <2 x double>, ptr %i.cl, align 8, !tbaa !26, !alias.scope !72
  %wide.load106 = load <2 x double>, ptr %i.cm, align 8, !tbaa !26, !alias.scope !72
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cj ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %wide.load107 = load <2 x double>, ptr %i.cn, align 8, !tbaa !26, !alias.scope !73, !noalias !72
  %wide.load108 = load <2 x double>, ptr %i.co, align 8, !tbaa !26, !alias.scope !73, !noalias !72
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat102, <2 x double> %wide.load105, <2 x double> %wide.load107)
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat102, <2 x double> %wide.load106, <2 x double> %wide.load108)
  store <2 x double> %i.cp, ptr %i.cn, align 8, !tbaa !26, !alias.scope !73, !noalias !72
  store <2 x double> %i.cq, ptr %i.co, align 8, !tbaa !26, !alias.scope !73, !noalias !72
  %index.next109 = add nuw i64 %index104, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next109, %n.vec100
  br i1 %i.cr, label %middle.block110, label %vector.body103, !llvm.loop !68

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %i.by, %n.vec100
  br i1 %cmp.n111, label %._crit_edge, label %.lr.ph71.preheader113

.lr.ph71.preheader113:                            ; preds = %vector.memcheck95, %.lr.ph71.preheader, %middle.block110
  %.170.ph = phi i64 [ %i.bs, %vector.memcheck95 ], [ %i.bs, %.lr.ph71.preheader ], [ %i.ci, %middle.block110 ]
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.preheader113, %.lr.ph71
  %.170 = phi i64 [ %i.cy, %.lr.ph71 ], [ %.170.ph, %.lr.ph71.preheader113 ] ; 3 uses
  %i.cs = sub nsw i64 %.170, %.16072
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.170 ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !26
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.cu, double %i.cw)
  store double %i.cx, ptr %i.cv, align 8, !tbaa !26
  %i.cy = add nuw nsw i64 %.170, 1                ; 2 uses
  %.not.not = icmp slt i64 %i.cy, %.16072
  br i1 %.not.not, label %.lr.ph71, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph71, %middle.block110, %.lr.ph73
  %i.cz = add nsw i64 %.16072, -1
  %i.da = icmp sgt i64 %.16072, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.da, label %.lr.ph73, label %._crit_edge74, !llvm.loop !1

._crit_edge74:                                    ; preds = %._crit_edge, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BandCopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = add i64 %3, %2                           ; 2 uses
  %i.l = icmp sgt i64 %i.f, 0
  br i1 %i.l, label %.lr.ph24.i, label %bandCopy.exit

.lr.ph24.i:                                       ; preds = %bb.a
  %i.m = sub i64 0, %2                            ; 2 uses
  %.not20.i = icmp slt i64 %i.k, 0
  br i1 %.not20.i, label %bandCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph24.i
  %4 = sub i64 %i.j, %i.h
  %i.n = shl i64 %4, 3
  %i.o = add i64 %3, %2
  %i.p = add i64 %i.o, 1
  %i.q = add i64 %3, %2
  %i.r = add i64 %3, %2
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 6
  %invariant.op = add i64 %i.n, -1
  %n.vec = and i64 %i.s, -4                       ; 3 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %._crit_edge.i
  %.022.i = phi i64 [ %i.bf, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.022.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24   ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.h
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.m ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.022.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24   ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.j
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.m ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ab = ptrtoaddr ptr %i.y to i64
  %i.ac = ptrtoaddr ptr %i.u to i64
  %5 = sub i64 %i.ab, %i.ac
  %i.ad = add i64 %5, %invariant.op
  %diff.check = icmp ult i64 %i.ad, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !26
  %wide.load8 = load <2 x double>, ptr %i.af, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x double> %wide.load, ptr %i.ag, align 8, !tbaa !26
  store <2 x double> %wide.load8, ptr %i.ah, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.01921.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.aj = sub i64 %i.q, %.01921.i.ph
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01921.i.prol = phi i64 [ %i.an, %scalar.ph.prol ], [ %.01921.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.01921.i.prol
  %i.al = load double, ptr %i.ak, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.01921.i.prol
  store double %i.al, ptr %i.am, align 8, !tbaa !26
  %i.an = add nuw i64 %.01921.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !75

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01921.i.unr = phi i64 [ %.01921.i.ph, %scalar.ph.preheader ], [ %i.an, %scalar.ph.prol ]
  %i.ao = icmp ult i64 %i.aj, 3
  br i1 %i.ao, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01921.i = phi i64 [ %i.be, %scalar.ph ], [ %.01921.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.01921.i
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.01921.i
  store double %i.aq, ptr %i.ar, align 8, !tbaa !26
  %i.as = add nuw i64 %.01921.i, 1                ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.as
  store double %i.au, ptr %i.av, align 8, !tbaa !26
  %i.aw = add nuw i64 %.01921.i, 2                ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aw
  store double %i.ay, ptr %i.az, align 8, !tbaa !26
  %i.ba = add nuw i64 %.01921.i, 3                ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ba
  store double %i.bc, ptr %i.bd, align 8, !tbaa !26
  %i.be = add nuw i64 %.01921.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.ba, %i.k
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !76

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bf = add nuw nsw i64 %.022.i, 1              ; 2 uses
  %exitcond26.not.i = icmp eq i64 %i.bf, %i.f
  br i1 %exitcond26.not.i, label %bandCopy.exit, label %.lr.ph.i, !llvm.loop !2

bandCopy.exit:                                    ; preds = %._crit_edge.i, %bb.a, %.lr.ph24.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @bandCopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %6, %5                           ; 2 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph24, label %._crit_edge25.split

.lr.ph24:                                         ; preds = %bb.a
  %i.c = sub i64 0, %5                            ; 2 uses
  %.not20 = icmp slt i64 %i.a, 0
  br i1 %.not20, label %._crit_edge25.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph24
  %7 = sub i64 %4, %3
  %i.d = shl i64 %7, 3
  %i.e = add i64 %6, %5
  %i.f = add i64 %i.e, 1
  %i.g = add i64 %6, %5
  %i.h = add i64 %6, %5
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 6
  %invariant.op = add i64 %i.d, -1
  %n.vec = and i64 %i.i, -4                       ; 3 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.022 = phi i64 [ %i.av, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.022
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %3
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.c ; 6 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.022
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %4
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.c ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.r = ptrtoaddr ptr %i.o to i64
  %i.s = ptrtoaddr ptr %i.k to i64
  %8 = sub i64 %i.r, %i.s
  %i.t = add i64 %8, %invariant.op
  %diff.check = icmp ult i64 %i.t, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x double>, ptr %i.u, align 8, !tbaa !26
  %wide.load29 = load <2 x double>, ptr %i.v, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %wide.load, ptr %i.w, align 8, !tbaa !26
  store <2 x double> %wide.load29, ptr %i.x, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.01921.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %i.z = sub i64 %i.g, %.01921.ph
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01921.prol = phi i64 [ %i.ad, %scalar.ph.prol ], [ %.01921.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.01921.prol
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.01921.prol
  store double %i.ab, ptr %i.ac, align 8, !tbaa !26
  %i.ad = add nuw i64 %.01921.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !78

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01921.unr = phi i64 [ %.01921.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %i.ae = icmp ult i64 %i.z, 3
  br i1 %i.ae, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01921 = phi i64 [ %i.au, %scalar.ph ], [ %.01921.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.01921
  %i.ag = load double, ptr %i.af, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.01921
  store double %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = add nuw i64 %.01921, 1                  ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ai
  store double %i.ak, ptr %i.al, align 8, !tbaa !26
  %i.am = add nuw i64 %.01921, 2                  ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.am
  store double %i.ao, ptr %i.ap, align 8, !tbaa !26
  %i.aq = add nuw i64 %.01921, 3                  ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aq
  store double %i.as, ptr %i.at, align 8, !tbaa !26
  %i.au = add nuw i64 %.01921, 4
  %exitcond.not.3 = icmp eq i64 %i.aq, %i.a
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.av = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond26.not = icmp eq i64 %i.av, %2
  br i1 %exitcond26.not, label %._crit_edge25.split, label %.lr.ph, !llvm.loop !2

._crit_edge25.split:                              ; preds = %._crit_edge, %.lr.ph24, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BandScale(double noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23
  %i.k = add i64 %i.h, %i.f                       ; 2 uses
  %i.l = icmp sgt i64 %i.d, 0
  br i1 %i.l, label %.lr.ph19.i, label %bandScale.exit

.lr.ph19.i:                                       ; preds = %bb.a
  %i.m = sub i64 0, %i.f
  %.not15.i = icmp slt i64 %i.k, 0
  br i1 %.not15.i, label %bandScale.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph19.i
  %i.n = add i64 %i.f, %i.h
  %i.o = add i64 %i.n, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 4
  %n.vec = and i64 %i.o, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %._crit_edge.i
  %.017.i = phi i64 [ %i.ac, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.017.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.j
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.m ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !26
  %wide.load8 = load <2 x double>, ptr %i.u, align 8, !tbaa !26
  %i.v = fmul <2 x double> %broadcast.splat, %wide.load
  %i.w = fmul <2 x double> %broadcast.splat, %wide.load8
  store <2 x double> %i.v, ptr %i.t, align 8, !tbaa !26
  store <2 x double> %i.w, ptr %i.u, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01416.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01416.i = phi i64 [ %i.ab, %scalar.ph ], [ %.01416.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.01416.i ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !26
  %i.aa = fmul double %0, %i.z
  store double %i.aa, ptr %i.y, align 8, !tbaa !26
  %i.ab = add nuw i64 %.01416.i, 1
  %exitcond.not.i = icmp eq i64 %.01416.i, %i.k
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !81

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.ac = add nuw nsw i64 %.017.i, 1              ; 2 uses
  %exitcond21.not.i = icmp eq i64 %i.ac, %i.d
  br i1 %exitcond21.not.i, label %bandScale.exit, label %.lr.ph.i, !llvm.loop !3

bandScale.exit:                                   ; preds = %._crit_edge.i, %bb.a, %.lr.ph19.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @bandScale(double noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %4, %3                           ; 2 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph19, label %._crit_edge20.split

.lr.ph19:                                         ; preds = %bb.a
  %i.c = sub i64 0, %3
  %.not15 = icmp slt i64 %i.a, 0
  br i1 %.not15, label %._crit_edge20.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph19
  %i.d = add i64 %4, %3
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.e, 4
  %n.vec = and i64 %i.e, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.017 = phi i64 [ %i.s, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.017
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %5
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.c ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.j, align 8, !tbaa !26
  %wide.load24 = load <2 x double>, ptr %i.k, align 8, !tbaa !26
  %i.l = fmul <2 x double> %broadcast.splat, %wide.load
  %i.m = fmul <2 x double> %broadcast.splat, %wide.load24
  store <2 x double> %i.l, ptr %i.j, align 8, !tbaa !26
  store <2 x double> %i.m, ptr %i.k, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
end_hunk_0
