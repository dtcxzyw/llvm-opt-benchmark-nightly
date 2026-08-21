inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@bandGBTRF:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bm = phi double [ %i.bk, %bb.e ], [ %.pre, %bb.d ]
  %i.bn = fdiv double -1.000000e+00, %i.bm        ; 2 uses
  br i1 %.not136151.not, label %.lr.ph163.preheader, label %._crit_edge164

.lr.ph163.preheader:                              ; preds = %bb.f
  %min.iters.check214 = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check214, label %.lr.ph163.preheader230, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph163.preheader
  %n.vec216 = and i64 %i.ak, -4                   ; 4 uses
  %i.bo = shl i64 %n.vec216, 3
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bo
  %i.bq = add i64 %i.az, %n.vec216
  %broadcast.splatinsert217 = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat218 = shufflevector <2 x double> %broadcast.splatinsert217, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph215
  %index220 = phi i64 [ 0, %vector.ph215 ], [ %index.next224, %vector.body219 ] ; 2 uses
  %i.br = shl i64 %index220, 3
  %next.gep221 = getelementptr i8, ptr %i.av, i64 %i.br ; 3 uses
  %i.bs = getelementptr i8, ptr %next.gep221, i64 16 ; 2 uses
  %wide.load222 = load <2 x double>, ptr %next.gep221, align 8, !tbaa !20
  %wide.load223 = load <2 x double>, ptr %i.bs, align 8, !tbaa !20
  %i.bt = fmul <2 x double> %broadcast.splat218, %wide.load222
  %i.bu = fmul <2 x double> %broadcast.splat218, %wide.load223
  store <2 x double> %i.bt, ptr %next.gep221, align 8, !tbaa !20
  store <2 x double> %i.bu, ptr %i.bs, align 8, !tbaa !20
  %index.next224 = add nuw i64 %index220, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next224, %n.vec216
  br i1 %i.bv, label %middle.block225, label %vector.body219, !llvm.loop !28

middle.block225:                                  ; preds = %vector.body219
  %cmp.n226 = icmp eq i64 %i.ak, %n.vec216
  br i1 %cmp.n226, label %._crit_edge164, label %.lr.ph163.preheader230

.lr.ph163.preheader230:                           ; preds = %.lr.ph163.preheader, %middle.block225
  %.1117161.ph = phi ptr [ %i.av, %.lr.ph163.preheader ], [ %i.bp, %middle.block225 ]
  %.1123160.ph = phi i64 [ %i.az, %.lr.ph163.preheader ], [ %i.bq, %middle.block225 ]
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader230, %.lr.ph163
  %.1117161 = phi ptr [ %i.bz, %.lr.ph163 ], [ %.1117161.ph, %.lr.ph163.preheader230 ] ; 3 uses
  %.1123160 = phi i64 [ %i.by, %.lr.ph163 ], [ %.1123160.ph, %.lr.ph163.preheader230 ] ; 2 uses
  %i.bw = load double, ptr %.1117161, align 8, !tbaa !20
  %i.bx = fmul double %i.bn, %i.bw
  store double %i.bx, ptr %.1117161, align 8, !tbaa !20
  %i.by = add nuw i64 %.1123160, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.1117161, i64 8
  %exitcond187.not = icmp eq i64 %.1123160, %smin186
  br i1 %exitcond187.not, label %._crit_edge164, label %.lr.ph163, !llvm.loop !31

._crit_edge164:                                   ; preds = %.lr.ph163, %middle.block225, %bb.f
  %i.ca = add nsw i64 %.0120177, %4
  %.141 = tail call i64 @llvm.smin.i64(i64 %i.ca, i64 %i.ag)
  %.not139171.not = icmp slt i64 %.0120177, %.141
  br i1 %.not139171.not, label %.lr.ph174.preheader, label %._crit_edge175

.lr.ph174.preheader:                              ; preds = %._crit_edge164
  %i.cb = getelementptr i8, ptr %i.at, i64 %i.ai
  %scevgep202 = getelementptr i8, ptr %i.cb, i64 16
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.aq
  %min.iters.check = icmp ult i64 %i.am, 4
  %n.vec = and i64 %i.am, -4                      ; 4 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.av, i64 %i.cc
  %i.ce = add i64 %i.az, %n.vec
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.0121172 = phi i64 [ %i.az, %.lr.ph174.preheader ], [ %i.di, %.loopexit ] ; 6 uses
  %i.cf = shl i64 %indvar, 3
  %i.cg = sub i64 %i.ar, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0121172
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19 ; 4 uses
  %i.cj = sub nsw i64 %.0118.lcssa, %.0121172
  %i.ck = getelementptr [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %4 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !20 ; 4 uses
  br i1 %.not137, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph174
  %i.cn = sub nsw i64 %.0120177, %.0121172
  %i.co = getelementptr [8 x i8], ptr %i.ci, i64 %i.cn
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %4 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !20
  store double %i.cq, ptr %i.cl, align 8, !tbaa !20
  store double %i.cm, ptr %i.cp, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph174
  %i.cr = fcmp oeq double %i.cm, 0.000000e+00
  %brmerge = or i1 %i.cr, %.not140165.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %bb.h
  %i.cs = sub i64 %i.az, %.0121172
  %i.ct = getelementptr [8 x i8], ptr %i.ci, i64 %i.cs
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %4 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph170.preheader229, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph170.preheader
  %scevgep = getelementptr i8, ptr %i.ci, i64 %i.cg
  %bound0 = icmp ult ptr %i.cu, %scevgep203
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph170.preheader229, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.cc
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cu, i64 %i.cw ; 3 uses
  %next.gep206 = getelementptr i8, ptr %i.av, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load = load <2 x double>, ptr %next.gep206, align 8, !tbaa !20, !alias.scope !32
  %wide.load207 = load <2 x double>, ptr %i.cx, align 8, !tbaa !20, !alias.scope !32
  %i.cy = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %next.gep, align 8, !tbaa !20, !alias.scope !35, !noalias !32
  %wide.load209 = load <2 x double>, ptr %i.cy, align 8, !tbaa !20, !alias.scope !35, !noalias !32
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load208)
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load207, <2 x double> %wide.load209)
  store <2 x double> %i.cz, ptr %next.gep, align 8, !tbaa !20, !alias.scope !35, !noalias !32
  store <2 x double> %i.da, ptr %i.cy, align 8, !tbaa !20, !alias.scope !35, !noalias !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph170.preheader229

.lr.ph170.preheader229:                           ; preds = %vector.memcheck, %.lr.ph170.preheader, %middle.block
  %.0115168.ph = phi ptr [ %i.cu, %vector.memcheck ], [ %i.cu, %.lr.ph170.preheader ], [ %i.cv, %middle.block ]
  %.2167.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph170.preheader ], [ %i.cd, %middle.block ]
  %.2124166.ph = phi i64 [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph170.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader229, %.lr.ph170
  %.0115168 = phi ptr [ %i.dh, %.lr.ph170 ], [ %.0115168.ph, %.lr.ph170.preheader229 ] ; 3 uses
  %.2167 = phi ptr [ %i.dg, %.lr.ph170 ], [ %.2167.ph, %.lr.ph170.preheader229 ] ; 2 uses
  %.2124166 = phi i64 [ %i.df, %.lr.ph170 ], [ %.2124166.ph, %.lr.ph170.preheader229 ] ; 2 uses
  %i.dc = load double, ptr %.2167, align 8, !tbaa !20
  %i.dd = load double, ptr %.0115168, align 8, !tbaa !20
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.dc, double %i.dd)
  store double %i.de, ptr %.0115168, align 8, !tbaa !20
  %i.df = add nuw nsw i64 %.2124166, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.2167, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0115168, i64 8
  %.not140.not = icmp slt i64 %.2124166, %.
  br i1 %.not140.not, label %.lr.ph170, label %.loopexit, !llvm.loop !38

.loopexit:                                        ; preds = %.lr.ph170, %middle.block, %bb.h
  %i.di = add nuw i64 %.0121172, 1
  %exitcond191.not = icmp eq i64 %.0121172, %smin190
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond191.not, label %._crit_edge175, label %.lr.ph174, !llvm.loop !39

._crit_edge175:                                   ; preds = %.loopexit, %._crit_edge164
  %i.dj = getelementptr inbounds nuw i8, ptr %.0127176, i64 8 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next189 = add i64 %indvars.iv188, 1
  %exitcond192.not = icmp eq i64 %i.az, %i.ag
  br i1 %exitcond192.not, label %._crit_edge180, label %.lr.ph179, !llvm.loop !40

._crit_edge180:                                   ; preds = %._crit_edge175, %.loopexit144
  %.0127.lcssa = phi ptr [ %5, %.loopexit144 ], [ %i.dj, %._crit_edge175 ]
  store i64 %i.ag, ptr %.0127.lcssa, align 8, !tbaa !27
  %i.dk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !19
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %4
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !20
  %i.do = fcmp oeq double %i.dn, 0.000000e+00
  %.142 = select i1 %i.do, i64 %1, i64 0
  br label %.loopexit143

.loopexit143:                                     ; preds = %._crit_edge158, %._crit_edge180
  %.0128 = phi i64 [ %.142, %._crit_edge180 ], [ %i.az, %._crit_edge158 ]
  ret i64 %.0128
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BandGBTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = add i64 %i.d, -1                         ; 7 uses
  %i.j = icmp sgt i64 %i.d, 1
  br i1 %i.j, label %.lr.ph68.i.preheader, label %.preheader.i

.lr.ph68.i.preheader:                             ; preds = %bb.a
  %i.k = shl i64 %i.f, 3                          ; 2 uses
  br label %.lr.ph68.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %exitcond75.not.i = icmp eq i64 %i.ai, %i.i
  br i1 %exitcond75.not.i, label %.preheader.i, label %.lr.ph68.i, !llvm.loop !41

.preheader.i:                                     ; preds = %.loopexit.i, %bb.a
  %i.l = icmp sgt i64 %i.d, 0
  br i1 %i.l, label %.lr.ph73.i.preheader, label %bandGBTRS.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.m = xor i64 %i.f, -1
  %i.n = add i64 %i.d, %i.m
  %i.o = shl i64 %i.d, 3
  %i.p = add i64 %i.o, -8
  %i.q = shl nsw i64 %i.f, 3
  %invariant.op = sub i64 1, %i.d
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %.lr.ph68.i.preheader, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ %i.h, %.lr.ph68.i.preheader ] ; 5 uses
  %.05967.i = phi i64 [ %i.ai, %.loopexit.i ], [ 0, %.lr.ph68.i.preheader ] ; 14 uses
  %smin42 = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i) ; 2 uses
  %smin12 = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i)
  %i.r = sub i64 %smin12, %.05967.i               ; 3 uses
  %i.s = shl i64 %.05967.i, 3                     ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.t, i64 8
  %i.u = getelementptr i8, ptr %2, i64 %i.s
  %scevgep7 = getelementptr i8, ptr %i.u, i64 16
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i)
  %i.v = xor i64 %.05967.i, -1
  %i.w = add i64 %smin, %i.v
  %i.x = shl i64 %i.w, 3                          ; 2 uses
  %scevgep8 = getelementptr i8, ptr %scevgep7, i64 %i.x
  %smin.i = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05967.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %2, i64 %i.z ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !20 ; 5 uses
  %.not.i = icmp eq i64 %i.z, %.05967.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05967.i ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !20
  store double %i.ad, ptr %i.aa, align 8, !tbaa !20
  store double %i.ab, ptr %i.ac, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.05967.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19 ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.f ; 4 uses
  %i.ah = add nsw i64 %.05967.i, %i.h
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ah, i64 %i.i)
  %i.ai = add nuw nsw i64 %.05967.i, 1            ; 6 uses
  %.not6465.not.i = icmp slt i64 %.05967.i, %..i
  br i1 %.not6465.not.i, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader41, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.aj = getelementptr i8, ptr %i.af, i64 %i.k
  %scevgep9 = getelementptr i8, ptr %i.aj, i64 8
  %i.ak = getelementptr i8, ptr %i.af, i64 %i.k
  %scevgep10 = getelementptr i8, ptr %i.ak, i64 16
  %scevgep11 = getelementptr i8, ptr %scevgep10, i64 %i.x
  %bound0 = icmp ult ptr %scevgep, %scevgep11
  %bound1 = icmp ult ptr %scevgep9, %scevgep8
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, -4                       ; 3 uses
  %i.al = add i64 %i.ai, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ab, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = add nuw i64 %i.ai, %index               ; 2 uses
  %i.an = sub nuw nsw i64 %i.am, %.05967.i
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !20, !alias.scope !42
  %wide.load13 = load <2 x double>, ptr %i.ap, align 8, !tbaa !20, !alias.scope !42
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.am ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load14 = load <2 x double>, ptr %i.aq, align 8, !tbaa !20, !alias.scope !45, !noalias !42
  %wide.load15 = load <2 x double>, ptr %i.ar, align 8, !tbaa !20, !alias.scope !45, !noalias !42
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load14)
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load13, <2 x double> %wide.load15)
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !20, !alias.scope !45, !noalias !42
  store <2 x double> %i.at, ptr %i.ar, align 8, !tbaa !20, !alias.scope !45, !noalias !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader41

.lr.ph.i.preheader41:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.066.i.ph = phi i64 [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.preheader ], [ %i.al, %middle.block ] ; 6 uses
  %i.av = add i64 %smin42, %.066.i.ph
  %i.aw = and i64 %i.av, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader41
  %i.ax = sub nuw nsw i64 %.066.i.ph, %.05967.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i.ph ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !20
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.az, double %i.bb)
  store double %i.bc, ptr %i.ba, align 8, !tbaa !20
  %i.bd = add nuw i64 %.066.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader41
  %.066.i.unr = phi i64 [ %.066.i.ph, %.lr.ph.i.preheader41 ], [ %i.bd, %.lr.ph.i.prol ]
  %i.be = icmp eq i64 %smin42, %.066.i.ph
  br i1 %i.be, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.066.i = phi i64 [ %i.bs, %.lr.ph.i ], [ %.066.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.bf = sub nuw nsw i64 %.066.i, %.05967.i
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !20
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.bh, double %i.bj)
  store double %i.bk, ptr %i.bi, align 8, !tbaa !20
  %i.bl = add nuw i64 %.066.i, 1                  ; 3 uses
  %i.bm = sub nuw nsw i64 %i.bl, %.05967.i
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bl ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !20
  %i.br = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.bo, double %i.bq)
  store double %i.br, ptr %i.bp, align 8, !tbaa !20
  %i.bs = add nuw i64 %.066.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.bl, %smin.i
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !48

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader, %._crit_edge.i
  %indvar = phi i64 [ 0, %.lr.ph73.i.preheader ], [ %indvar.next, %._crit_edge.i ] ; 4 uses
  %.16072.i = phi i64 [ %i.i, %.lr.ph73.i.preheader ], [ %i.db, %._crit_edge.i ] ; 10 uses
  %i.bt = sub i64 %i.n, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bt, i64 0) ; 2 uses
  %i.bu = shl i64 %smax, 3
  %scevgep17 = getelementptr i8, ptr %2, i64 %i.bu
  %i.bv = shl i64 %indvar, 3
  %i.bw = sub i64 %i.p, %i.bv
  %scevgep18 = getelementptr i8, ptr %2, i64 %i.bw
  %.reass = add i64 %indvar, %invariant.op
  %i.bx = add i64 %smax, %.reass
  %i.by = shl i64 %i.bx, 3
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16072.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19 ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.f ; 4 uses
  %i.cc = sub nsw i64 %.16072.i, %i.f
  %i.cd = tail call i64 @llvm.smax.i64(i64 %i.cc, i64 0) ; 5 uses
  %i.ce = load double, ptr %i.cb, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.16072.i ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !20
  %i.ch = fdiv double %i.cg, %i.ce                ; 2 uses
  store double %i.ch, ptr %i.cf, align 8, !tbaa !20
  %i.ci = fneg double %i.ch                       ; 2 uses
  %.not.not69.i = icmp samesign ult i64 %i.cd, %.16072.i
  br i1 %.not.not69.i, label %.lr.ph71.i.preheader, label %._crit_edge.i

.lr.ph71.i.preheader:                             ; preds = %.lr.ph73.i
  %i.cj = tail call i64 @llvm.smin.i64(i64 %.16072.i, i64 %i.f) ; 3 uses
  %min.iters.check25 = icmp ult i64 %i.cj, 4
  br i1 %min.iters.check25, label %.lr.ph71.i.preheader40, label %vector.memcheck16

vector.memcheck16:                                ; preds = %.lr.ph71.i.preheader
  %scevgep19 = getelementptr i8, ptr %i.ca, i64 %i.q
  %scevgep20 = getelementptr i8, ptr %scevgep19, i64 %i.by
  %bound021 = icmp ult ptr %scevgep17, %i.cb
  %bound122 = icmp ult ptr %scevgep20, %scevgep18
  %found.conflict23 = and i1 %bound021, %bound122
  br i1 %found.conflict23, label %.lr.ph71.i.preheader40, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck16
  %n.vec27 = and i64 %i.cj, -4                    ; 3 uses
  %i.ck = add i64 %i.cd, %n.vec27
  %broadcast.splatinsert28 = insertelement <2 x double> poison, double %i.ci, i64 0
  %broadcast.splat29 = shufflevector <2 x double> %broadcast.splatinsert28, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph26
  %index31 = phi i64 [ 0, %vector.ph26 ], [ %index.next36, %vector.body30 ] ; 2 uses
  %i.cl = add nuw i64 %i.cd, %index31             ; 2 uses
  %i.cm = sub nsw i64 %i.cl, %.16072.i
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load32 = load <2 x double>, ptr %i.cn, align 8, !tbaa !20, !alias.scope !49
  %wide.load33 = load <2 x double>, ptr %i.co, align 8, !tbaa !20, !alias.scope !49
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cl ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load34 = load <2 x double>, ptr %i.cp, align 8, !tbaa !20, !alias.scope !52, !noalias !49
  %wide.load35 = load <2 x double>, ptr %i.cq, align 8, !tbaa !20, !alias.scope !52, !noalias !49
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat29, <2 x double> %wide.load32, <2 x double> %wide.load34)
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat29, <2 x double> %wide.load33, <2 x double> %wide.load35)
  store <2 x double> %i.cr, ptr %i.cp, align 8, !tbaa !20, !alias.scope !52, !noalias !49
  store <2 x double> %i.cs, ptr %i.cq, align 8, !tbaa !20, !alias.scope !52, !noalias !49
  %index.next36 = add nuw i64 %index31, 4         ; 2 uses
  %i.ct = icmp eq i64 %index.next36, %n.vec27
  br i1 %i.ct, label %middle.block37, label %vector.body30, !llvm.loop !54

middle.block37:                                   ; preds = %vector.body30
  %cmp.n38 = icmp eq i64 %i.cj, %n.vec27
  br i1 %cmp.n38, label %._crit_edge.i, label %.lr.ph71.i.preheader40

.lr.ph71.i.preheader40:                           ; preds = %vector.memcheck16, %.lr.ph71.i.preheader, %middle.block37
  %.170.i.ph = phi i64 [ %i.cd, %vector.memcheck16 ], [ %i.cd, %.lr.ph71.i.preheader ], [ %i.ck, %middle.block37 ]
  br label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.preheader40, %.lr.ph71.i
  %.170.i = phi i64 [ %i.da, %.lr.ph71.i ], [ %.170.i.ph, %.lr.ph71.i.preheader40 ] ; 3 uses
  %i.cu = sub nsw i64 %.170.i, %.16072.i
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !20
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.170.i ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !20
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cw, double %i.cy)
  store double %i.cz, ptr %i.cx, align 8, !tbaa !20
  %i.da = add nuw nsw i64 %.170.i, 1              ; 2 uses
  %.not.not.i = icmp slt i64 %i.da, %.16072.i
  br i1 %.not.not.i, label %.lr.ph71.i, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %.lr.ph71.i, %middle.block37, %.lr.ph73.i
  %i.db = add nsw i64 %.16072.i, -1
  %i.dc = icmp sgt i64 %.16072.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dc, label %.lr.ph73.i, label %bandGBTRS.exit, !llvm.loop !56

bandGBTRS.exit:                                   ; preds = %._crit_edge.i, %.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @bandGBTRS(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, -1                           ; 7 uses
  %i.b = icmp sgt i64 %1, 1
  br i1 %i.b, label %.lr.ph68.preheader, label %.preheader

.lr.ph68.preheader:                               ; preds = %bb.a
  %i.c = shl i64 %2, 3                            ; 2 uses
  br label %.lr.ph68

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond75.not = icmp eq i64 %i.aa, %i.a
  br i1 %exitcond75.not, label %.preheader, label %.lr.ph68, !llvm.loop !41

.preheader:                                       ; preds = %.loopexit, %bb.a
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %.lr.ph73.preheader, label %._crit_edge74

.lr.ph73.preheader:                               ; preds = %.preheader
  %i.e = xor i64 %2, -1
  %i.f = add i64 %1, %i.e
  %i.g = shl i64 %1, 3
  %i.h = add i64 %i.g, -8
  %i.i = shl nsw i64 %2, 3
  %invariant.op = sub i64 1, %1
  br label %.lr.ph73

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %3, %.lr.ph68.preheader ] ; 5 uses
  %.05967 = phi i64 [ %i.aa, %.loopexit ], [ 0, %.lr.ph68.preheader ] ; 14 uses
  %smin113 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a) ; 2 uses
  %smin83 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a)
  %i.j = sub i64 %smin83, %.05967                 ; 3 uses
  %i.k = shl i64 %.05967, 3                       ; 2 uses
  %i.l = getelementptr i8, ptr %5, i64 %i.k
  %scevgep = getelementptr i8, ptr %i.l, i64 8
  %i.m = getelementptr i8, ptr %5, i64 %i.k
  %scevgep77 = getelementptr i8, ptr %i.m, i64 16
  %smin78 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a)
  %i.n = xor i64 %.05967, -1
  %i.o = add i64 %smin78, %i.n
  %i.p = shl i64 %i.o, 3                          ; 2 uses
  %scevgep79 = getelementptr i8, ptr %scevgep77, i64 %i.p
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.05967
  %i.r = load i64, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %5, i64 %i.r ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !20 ; 5 uses
  %.not = icmp eq i64 %i.r, %.05967
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.05967 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !20
  store double %i.v, ptr %i.s, align 8, !tbaa !20
  store double %i.t, ptr %i.u, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05967
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %2 ; 4 uses
  %i.z = add nsw i64 %.05967, %3
  %. = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %i.a)
  %i.aa = add nuw nsw i64 %.05967, 1              ; 6 uses
  %.not6465.not = icmp slt i64 %.05967, %.
  br i1 %.not6465.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.j, 4
  br i1 %min.iters.check, label %.lr.ph.preheader112, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ab = getelementptr i8, ptr %i.x, i64 %i.c
  %scevgep80 = getelementptr i8, ptr %i.ab, i64 8
  %i.ac = getelementptr i8, ptr %i.x, i64 %i.c
  %scevgep81 = getelementptr i8, ptr %i.ac, i64 16
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.p
  %bound0 = icmp ult ptr %scevgep, %scevgep82
  %bound1 = icmp ult ptr %scevgep80, %scevgep79
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader112, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -4                       ; 3 uses
  %i.ad = add i64 %i.aa, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add nuw i64 %i.aa, %index               ; 2 uses
  %i.af = sub nuw nsw i64 %i.ae, %.05967
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !20, !alias.scope !57
  %wide.load84 = load <2 x double>, ptr %i.ah, align 8, !tbaa !20, !alias.scope !57
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ae ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load85 = load <2 x double>, ptr %i.ai, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  %wide.load86 = load <2 x double>, ptr %i.aj, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load85)
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load84, <2 x double> %wide.load86)
  store <2 x double> %i.ak, ptr %i.ai, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  store <2 x double> %i.al, ptr %i.aj, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader112

.lr.ph.preheader112:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.066.ph = phi i64 [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.preheader ], [ %i.ad, %middle.block ] ; 6 uses
  %i.an = add i64 %smin113, %.066.ph
  %i.ao = and i64 %i.an, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ao, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader112
  %i.ap = sub nuw nsw i64 %.066.ph, %.05967
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066.ph ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !20
  %i.au = tail call double @llvm.fmuladd.f64(double %i.t, double %i.ar, double %i.at)
  store double %i.au, ptr %i.as, align 8, !tbaa !20
  %i.av = add nuw i64 %.066.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader112
  %.066.unr = phi i64 [ %.066.ph, %.lr.ph.preheader112 ], [ %i.av, %.lr.ph.prol ]
  %i.aw = icmp eq i64 %smin113, %.066.ph
  br i1 %i.aw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.066 = phi i64 [ %i.bk, %.lr.ph ], [ %.066.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ax = sub nuw nsw i64 %.066, %.05967
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !20
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.t, double %i.az, double %i.bb)
  store double %i.bc, ptr %i.ba, align 8, !tbaa !20
  %i.bd = add nuw i64 %.066, 1                    ; 3 uses
  %i.be = sub nuw nsw i64 %i.bd, %.05967
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bd ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !20
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.t, double %i.bg, double %i.bi)
  store double %i.bj, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add nuw i64 %.066, 2
  %exitcond.not.1 = icmp eq i64 %i.bd, %smin
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !63

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvar.next, %._crit_edge ] ; 4 uses
  %.16072 = phi i64 [ %i.a, %.lr.ph73.preheader ], [ %i.ct, %._crit_edge ] ; 10 uses
  %i.bl = sub i64 %i.f, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bl, i64 0) ; 2 uses
  %i.bm = shl i64 %smax, 3
  %scevgep88 = getelementptr i8, ptr %5, i64 %i.bm
  %i.bn = shl i64 %indvar, 3
  %i.bo = sub i64 %i.h, %i.bn
  %scevgep89 = getelementptr i8, ptr %5, i64 %i.bo
  %.reass = add i64 %indvar, %invariant.op
  %i.bp = add i64 %smax, %.reass
  %i.bq = shl i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16072
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !19 ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %2 ; 4 uses
  %i.bu = sub nsw i64 %.16072, %2
  %i.bv = tail call i64 @llvm.smax.i64(i64 %i.bu, i64 0) ; 5 uses
  %i.bw = load double, ptr %i.bt, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.16072 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !20
  %i.bz = fdiv double %i.by, %i.bw                ; 2 uses
  store double %i.bz, ptr %i.bx, align 8, !tbaa !20
  %i.ca = fneg double %i.bz                       ; 2 uses
  %.not.not69 = icmp samesign ult i64 %i.bv, %.16072
  br i1 %.not.not69, label %.lr.ph71.preheader, label %._crit_edge

.lr.ph71.preheader:                               ; preds = %.lr.ph73
  %i.cb = tail call i64 @llvm.smin.i64(i64 %.16072, i64 %2) ; 3 uses
  %min.iters.check96 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check96, label %.lr.ph71.preheader111, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph71.preheader
  %scevgep90 = getelementptr i8, ptr %i.bs, i64 %i.i
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.bq
  %bound092 = icmp ult ptr %scevgep88, %i.bt
  %bound193 = icmp ult ptr %scevgep91, %scevgep89
  %found.conflict94 = and i1 %bound092, %bound193
  br i1 %found.conflict94, label %.lr.ph71.preheader111, label %vector.ph97

vector.ph97:                                      ; preds = %vector.memcheck87
  %n.vec98 = and i64 %i.cb, -4                    ; 3 uses
  %i.cc = add i64 %i.bv, %n.vec98
  %broadcast.splatinsert99 = insertelement <2 x double> poison, double %i.ca, i64 0
  %broadcast.splat100 = shufflevector <2 x double> %broadcast.splatinsert99, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph97
  %index102 = phi i64 [ 0, %vector.ph97 ], [ %index.next107, %vector.body101 ] ; 2 uses
  %i.cd = add nuw i64 %i.bv, %index102            ; 2 uses
  %i.ce = sub nsw i64 %i.cd, %.16072
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load103 = load <2 x double>, ptr %i.cf, align 8, !tbaa !20, !alias.scope !64
  %wide.load104 = load <2 x double>, ptr %i.cg, align 8, !tbaa !20, !alias.scope !64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cd ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load105 = load <2 x double>, ptr %i.ch, align 8, !tbaa !20, !alias.scope !67, !noalias !64
  %wide.load106 = load <2 x double>, ptr %i.ci, align 8, !tbaa !20, !alias.scope !67, !noalias !64
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat100, <2 x double> %wide.load103, <2 x double> %wide.load105)
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat100, <2 x double> %wide.load104, <2 x double> %wide.load106)
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !20, !alias.scope !67, !noalias !64
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !20, !alias.scope !67, !noalias !64
  %index.next107 = add nuw i64 %index102, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next107, %n.vec98
  br i1 %i.cl, label %middle.block108, label %vector.body101, !llvm.loop !69

middle.block108:                                  ; preds = %vector.body101
  %cmp.n109 = icmp eq i64 %i.cb, %n.vec98
  br i1 %cmp.n109, label %._crit_edge, label %.lr.ph71.preheader111

.lr.ph71.preheader111:                            ; preds = %vector.memcheck87, %.lr.ph71.preheader, %middle.block108
  %.170.ph = phi i64 [ %i.bv, %vector.memcheck87 ], [ %i.bv, %.lr.ph71.preheader ], [ %i.cc, %middle.block108 ]
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.preheader111, %.lr.ph71
  %.170 = phi i64 [ %i.cs, %.lr.ph71 ], [ %.170.ph, %.lr.ph71.preheader111 ] ; 3 uses
  %i.cm = sub nsw i64 %.170, %.16072
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !20
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.170 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !20
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.co, double %i.cq)
  store double %i.cr, ptr %i.cp, align 8, !tbaa !20
  %i.cs = add nuw nsw i64 %.170, 1                ; 2 uses
  %.not.not = icmp slt i64 %i.cs, %.16072
  br i1 %.not.not, label %.lr.ph71, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph71, %middle.block108, %.lr.ph73
  %i.ct = add nsw i64 %.16072, -1
  %i.cu = icmp sgt i64 %.16072, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cu, label %.lr.ph73, label %._crit_edge74, !llvm.loop !56

._crit_edge74:                                    ; preds = %._crit_edge, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BandCopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = add i64 %3, %2                           ; 2 uses
  %i.l = icmp sgt i64 %i.f, 0
  br i1 %i.l, label %.lr.ph24.i, label %bandCopy.exit

.lr.ph24.i:                                       ; preds = %bb.a
  %i.m = sub i64 0, %2                            ; 2 uses
  %.not20.i = icmp slt i64 %i.k, 0
  br i1 %.not20.i, label %bandCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph24.i
  %i.n = sub i64 %i.j, %i.h
  %i.o = shl i64 %i.n, 3
  %i.p = add i64 %3, %2
  %i.q = add i64 %i.p, 1
  %i.r = add i64 %3, %2
  %i.s = add i64 %3, %2
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 6
  %n.vec = and i64 %i.t, -4                       ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %._crit_edge.i
  %.022.i = phi i64 [ %i.bh, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.022.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.h
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.m ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.022.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19   ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.j
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.m ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ac = ptrtoaddr ptr %i.z to i64
  %i.ad = ptrtoaddr ptr %i.v to i64
  %i.ae = add i64 %i.o, %i.ac
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !20
  %wide.load8 = load <2 x double>, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x double> %wide.load, ptr %i.ai, align 8, !tbaa !20
  store <2 x double> %wide.load8, ptr %i.aj, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.01921.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.al = sub i64 %i.r, %.01921.i.ph
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

end_hunk_0
