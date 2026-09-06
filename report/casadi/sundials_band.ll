Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sundials_band?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@bandGBTRF:bb.a
  store double %i.bh, ptr %i.ar, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bj = phi double [ %i.bh, %bb.e ], [ %.pre, %bb.d ]
  %i.bk = fdiv double -1.000000e+00, %i.bj        ; 2 uses
  br i1 %.not136151.not, label %.lr.ph163.preheader, label %._crit_edge164

.lr.ph163.preheader:                              ; preds = %bb.f
  %i.bl = sub i64 %smin186, %.0120177             ; 3 uses
  %min.iters.check211 = icmp ult i64 %i.bl, 4
  br i1 %min.iters.check211, label %.lr.ph163.preheader227, label %vector.ph212

vector.ph212:                                     ; preds = %.lr.ph163.preheader
  %n.vec213 = and i64 %i.bl, -4                   ; 4 uses
  %i.bm = shl i64 %n.vec213, 3
  %i.bn = getelementptr i8, ptr %i.as, i64 %i.bm
  %i.bo = add i64 %i.aw, %n.vec213
  %broadcast.splatinsert214 = insertelement <2 x double> poison, double %i.bk, i64 0
  %broadcast.splat215 = shufflevector <2 x double> %broadcast.splatinsert214, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph212
  %index217 = phi i64 [ 0, %vector.ph212 ], [ %index.next221, %vector.body216 ] ; 2 uses
  %i.bp = shl i64 %index217, 3
  %next.gep218 = getelementptr i8, ptr %i.as, i64 %i.bp ; 3 uses
  %i.bq = getelementptr i8, ptr %next.gep218, i64 16 ; 2 uses
  %wide.load219 = load <2 x double>, ptr %next.gep218, align 8, !tbaa !26
  %wide.load220 = load <2 x double>, ptr %i.bq, align 8, !tbaa !26
  %i.br = fmul <2 x double> %broadcast.splat215, %wide.load219
  %i.bs = fmul <2 x double> %broadcast.splat215, %wide.load220
  store <2 x double> %i.br, ptr %next.gep218, align 8, !tbaa !26
  store <2 x double> %i.bs, ptr %i.bq, align 8, !tbaa !26
  %index.next221 = add nuw i64 %index217, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next221, %n.vec213
  br i1 %i.bt, label %middle.block222, label %vector.body216, !llvm.loop !35

middle.block222:                                  ; preds = %vector.body216
  %cmp.n223 = icmp eq i64 %i.bl, %n.vec213
  br i1 %cmp.n223, label %._crit_edge164, label %.lr.ph163.preheader227

.lr.ph163.preheader227:                           ; preds = %.lr.ph163.preheader, %middle.block222
  %.1117161.ph = phi ptr [ %i.as, %.lr.ph163.preheader ], [ %i.bn, %middle.block222 ]
  %.1123160.ph = phi i64 [ %i.aw, %.lr.ph163.preheader ], [ %i.bo, %middle.block222 ]
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader227, %.lr.ph163
  %.1117161 = phi ptr [ %i.bx, %.lr.ph163 ], [ %.1117161.ph, %.lr.ph163.preheader227 ] ; 3 uses
  %.1123160 = phi i64 [ %i.bw, %.lr.ph163 ], [ %.1123160.ph, %.lr.ph163.preheader227 ] ; 2 uses
  %i.bu = load double, ptr %.1117161, align 8, !tbaa !26
  %i.bv = fmul double %i.bk, %i.bu
  store double %i.bv, ptr %.1117161, align 8, !tbaa !26
  %i.bw = add nuw i64 %.1123160, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.1117161, i64 8
  %exitcond187.not = icmp eq i64 %.1123160, %smin186
  br i1 %exitcond187.not, label %._crit_edge164, label %.lr.ph163, !llvm.loop !36

._crit_edge164:                                   ; preds = %.lr.ph163, %middle.block222, %bb.f
  %i.by = add nsw i64 %.0120177, %4
  %.141 = tail call i64 @llvm.smin.i64(i64 %i.by, i64 %i.ag)
  %.not139171.not = icmp slt i64 %.0120177, %.141
  br i1 %.not139171.not, label %.lr.ph174.preheader, label %._crit_edge175

.lr.ph174.preheader:                              ; preds = %._crit_edge164
  %i.bz = getelementptr i8, ptr %i.aq, i64 %i.ai
  %scevgep202 = getelementptr i8, ptr %i.bz, i64 16
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.an
  %i.ca = tail call i64 @llvm.smax.i64(i64 %smin186, i64 %i.aw)
  %i.cb = sub nsw i64 %i.ca, %.0120177            ; 3 uses
  %min.iters.check = icmp ult i64 %i.cb, 4
  %n.vec = and i64 %i.cb, -4                      ; 4 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.as, i64 %i.cc
  %i.ce = add i64 %i.aw, %n.vec
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.0121172 = phi i64 [ %i.aw, %.lr.ph174.preheader ], [ %i.di, %.loopexit ] ; 6 uses
  %i.cf = shl i64 %indvar, 3
  %i.cg = sub i64 %i.ao, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0121172
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !24 ; 4 uses
  %i.cj = sub nsw i64 %.0118.lcssa, %.0121172
  %i.ck = getelementptr [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %4 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !26 ; 4 uses
  br i1 %.not137, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph174
  %i.cn = sub nsw i64 %.0120177, %.0121172
  %i.co = getelementptr [8 x i8], ptr %i.ci, i64 %i.cn
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %4 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !26
  store double %i.cq, ptr %i.cl, align 8, !tbaa !26
  store double %i.cm, ptr %i.cp, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph174
  %i.cr = fcmp oeq double %i.cm, 0.000000e+00
  %brmerge = or i1 %i.cr, %.not140165.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %bb.h
  %i.cs = sub i64 %i.aw, %.0121172
  %i.ct = getelementptr [8 x i8], ptr %i.ci, i64 %i.cs
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %4 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph170.preheader226, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph170.preheader
  %scevgep = getelementptr i8, ptr %i.ci, i64 %i.cg
  %bound0 = icmp ult ptr %i.cu, %scevgep203
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph170.preheader226, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.cc
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cu, i64 %i.cw ; 3 uses
  %next.gep204 = getelementptr i8, ptr %i.as, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep204, i64 16
  %wide.load = load <2 x double>, ptr %next.gep204, align 8, !tbaa !26, !alias.scope !44
  %wide.load205 = load <2 x double>, ptr %i.cx, align 8, !tbaa !26, !alias.scope !44
  %i.cy = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load206 = load <2 x double>, ptr %next.gep, align 8, !tbaa !26, !alias.scope !45, !noalias !44
  %wide.load207 = load <2 x double>, ptr %i.cy, align 8, !tbaa !26, !alias.scope !45, !noalias !44
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load206)
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load205, <2 x double> %wide.load207)
  store <2 x double> %i.cz, ptr %next.gep, align 8, !tbaa !26, !alias.scope !45, !noalias !44
  store <2 x double> %i.da, ptr %i.cy, align 8, !tbaa !26, !alias.scope !45, !noalias !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph170.preheader226

.lr.ph170.preheader226:                           ; preds = %vector.memcheck, %.lr.ph170.preheader, %middle.block
  %.0115168.ph = phi ptr [ %i.cu, %vector.memcheck ], [ %i.cu, %.lr.ph170.preheader ], [ %i.cv, %middle.block ]
  %.2167.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph170.preheader ], [ %i.cd, %middle.block ]
  %.2124166.ph = phi i64 [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph170.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader226, %.lr.ph170
  %.0115168 = phi ptr [ %i.dh, %.lr.ph170 ], [ %.0115168.ph, %.lr.ph170.preheader226 ] ; 3 uses
  %.2167 = phi ptr [ %i.dg, %.lr.ph170 ], [ %.2167.ph, %.lr.ph170.preheader226 ] ; 2 uses
  %.2124166 = phi i64 [ %i.df, %.lr.ph170 ], [ %.2124166.ph, %.lr.ph170.preheader226 ] ; 2 uses
  %i.dc = load double, ptr %.2167, align 8, !tbaa !26
  %i.dd = load double, ptr %.0115168, align 8, !tbaa !26
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.dc, double %i.dd)
  store double %i.de, ptr %.0115168, align 8, !tbaa !26
  %i.df = add nuw nsw i64 %.2124166, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.2167, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0115168, i64 8
  %.not140.not = icmp slt i64 %.2124166, %.
  br i1 %.not140.not, label %.lr.ph170, label %.loopexit, !llvm.loop !41

.loopexit:                                        ; preds = %.lr.ph170, %middle.block, %bb.h
  %i.di = add nuw i64 %.0121172, 1
  %exitcond191.not = icmp eq i64 %.0121172, %smin190
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond191.not, label %._crit_edge175, label %.lr.ph174, !llvm.loop !42

._crit_edge175:                                   ; preds = %.loopexit, %._crit_edge164
  %i.dj = getelementptr inbounds nuw i8, ptr %.0127176, i64 8 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next189 = add i64 %indvars.iv188, 1
  %exitcond192.not = icmp eq i64 %i.aw, %i.ag
  br i1 %exitcond192.not, label %._crit_edge180, label %.lr.ph179, !llvm.loop !43

._crit_edge180:                                   ; preds = %._crit_edge175, %.loopexit144
  %.0127.lcssa = phi ptr [ %5, %.loopexit144 ], [ %i.dj, %._crit_edge175 ]
  store i64 %i.ag, ptr %.0127.lcssa, align 8, !tbaa !29
  %i.dk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !24
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %4
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !26
  %i.do = fcmp oeq double %i.dn, 0.000000e+00
  %.142 = select i1 %i.do, i64 %1, i64 0
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
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = add i64 %i.d, -1                         ; 5 uses
  %i.j = icmp sgt i64 %i.d, 1
  br i1 %i.j, label %.lr.ph68.i.preheader, label %.preheader.i

.lr.ph68.i.preheader:                             ; preds = %bb.a
  %i.k = shl i64 %i.f, 3                          ; 2 uses
  br label %.lr.ph68.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %exitcond75.not.i = icmp eq i64 %i.af, %i.i
  br i1 %exitcond75.not.i, label %.preheader.i, label %.lr.ph68.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.loopexit.i, %bb.a
  %i.l = icmp sgt i64 %i.d, 0
  br i1 %i.l, label %.lr.ph73.i.preheader, label %bandGBTRS.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.m = xor i64 %i.f, -1
  %i.n = add i64 %i.d, %i.m
  %i.o = shl nsw i64 %i.f, 3
  %invariant.op = sub i64 1, %i.d
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %.lr.ph68.i.preheader, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ %i.h, %.lr.ph68.i.preheader ] ; 3 uses
  %.05967.i = phi i64 [ %i.af, %.loopexit.i ], [ 0, %.lr.ph68.i.preheader ] ; 14 uses
  %i.p = shl nuw nsw i64 %.05967.i, 3             ; 2 uses
  %i.q = getelementptr i8, ptr %2, i64 %i.p
  %scevgep = getelementptr i8, ptr %i.q, i64 8
  %i.r = getelementptr i8, ptr %2, i64 %i.p
  %scevgep7 = getelementptr i8, ptr %i.r, i64 16
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i)
  %i.s = xor i64 %.05967.i, -1
  %i.t = add i64 %smin, %i.s
  %i.u = shl i64 %i.t, 3                          ; 2 uses
  %scevgep8 = getelementptr i8, ptr %scevgep7, i64 %i.u
  %smin.i = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i) ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05967.i
  %i.w = load i64, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !26 ; 5 uses
  %.not.i = icmp eq i64 %i.w, %.05967.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05967.i ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !26
  store double %i.aa, ptr %i.x, align 8, !tbaa !26
  store double %i.y, ptr %i.z, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.05967.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24 ; 3 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.f ; 4 uses
  %i.ae = add nsw i64 %.05967.i, %i.h
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.i)
  %i.af = add nuw nsw i64 %.05967.i, 1            ; 6 uses
  %.not6465.not.i = icmp slt i64 %.05967.i, %..i
  br i1 %.not6465.not.i, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ag = sub i64 %smin.i, %.05967.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.ag, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ah = getelementptr i8, ptr %i.ac, i64 %i.k
  %scevgep9 = getelementptr i8, ptr %i.ah, i64 8
  %i.ai = getelementptr i8, ptr %i.ac, i64 %i.k
  %scevgep10 = getelementptr i8, ptr %i.ai, i64 16
  %scevgep11 = getelementptr i8, ptr %scevgep10, i64 %i.u
  %bound0 = icmp ult ptr %scevgep, %scevgep11
  %bound1 = icmp ult ptr %scevgep9, %scevgep8
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, -4                      ; 3 uses
  %i.aj = add i64 %i.af, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = add nuw i64 %i.af, %index               ; 2 uses
  %i.al = sub nuw nsw i64 %i.ak, %.05967.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !26, !alias.scope !56
  %wide.load12 = load <2 x double>, ptr %i.an, align 8, !tbaa !26, !alias.scope !56
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ak ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load13 = load <2 x double>, ptr %i.ao, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  %wide.load14 = load <2 x double>, ptr %i.ap, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load13)
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load12, <2 x double> %wide.load14)
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !26, !alias.scope !57, !noalias !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader40

.lr.ph.i.preheader40:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.066.i.ph = phi i64 [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.preheader ], [ %i.aj, %middle.block ] ; 6 uses
  %i.at = add i64 %smin.i, %.066.i.ph
  %i.au = and i64 %i.at, 1
  %lcmp.mod.not.not = icmp eq i64 %i.au, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader40
  %i.av = sub nuw nsw i64 %.066.i.ph, %.05967.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i.ph ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !26
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.y, double %i.ax, double %i.az)
  store double %i.ba, ptr %i.ay, align 8, !tbaa !26
  %i.bb = add nuw i64 %.066.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader40
  %.066.i.unr = phi i64 [ %.066.i.ph, %.lr.ph.i.preheader40 ], [ %i.bb, %.lr.ph.i.prol ]
  %i.bc = icmp eq i64 %smin.i, %.066.i.ph
  br i1 %i.bc, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.066.i = phi i64 [ %i.bq, %.lr.ph.i ], [ %.066.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.bd = sub nuw nsw i64 %.066.i, %.05967.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !26
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.y, double %i.bf, double %i.bh)
  store double %i.bi, ptr %i.bg, align 8, !tbaa !26
  %i.bj = add nuw i64 %.066.i, 1                  ; 3 uses
  %i.bk = sub nuw nsw i64 %i.bj, %.05967.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bj ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !26
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.y, double %i.bm, double %i.bo)
  store double %i.bp, ptr %i.bn, align 8, !tbaa !26
  %i.bq = add nuw i64 %.066.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.bj, %smin.i
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !50

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader, %._crit_edge.i
  %indvar = phi i64 [ 0, %.lr.ph73.i.preheader ], [ %indvar.next, %._crit_edge.i ] ; 3 uses
  %.16072.i = phi i64 [ %i.i, %.lr.ph73.i.preheader ], [ %i.cy, %._crit_edge.i ] ; 11 uses
  %i.br = sub i64 %i.n, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %i.br, i64 0) ; 2 uses
  %i.bs = shl i64 %smax, 3
  %scevgep16 = getelementptr i8, ptr %2, i64 %i.bs
  %i.bt = shl i64 %.16072.i, 3
  %scevgep17 = getelementptr i8, ptr %2, i64 %i.bt
  %.reass = add i64 %indvar, %invariant.op
  %i.bu = add i64 %smax, %.reass
  %i.bv = shl i64 %i.bu, 3
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16072.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !24 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.f ; 4 uses
  %i.bz = sub nsw i64 %.16072.i, %i.f
  %i.ca = tail call i64 @llvm.smax.i64(i64 %i.bz, i64 0) ; 5 uses
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
  %min.iters.check24 = icmp ult i64 %i.cg, 4
  br i1 %min.iters.check24, label %.lr.ph71.i.preheader39, label %vector.memcheck15

vector.memcheck15:                                ; preds = %.lr.ph71.i.preheader
  %scevgep18 = getelementptr i8, ptr %i.bx, i64 %i.o
  %scevgep19 = getelementptr i8, ptr %scevgep18, i64 %i.bv
  %bound020 = icmp ult ptr %scevgep16, %i.by
  %bound121 = icmp ult ptr %scevgep19, %scevgep17
  %found.conflict22 = and i1 %bound020, %bound121
  br i1 %found.conflict22, label %.lr.ph71.i.preheader39, label %vector.ph25

vector.ph25:                                      ; preds = %vector.memcheck15
  %n.vec26 = and i64 %i.cg, -4                    ; 3 uses
  %i.ch = add i64 %i.ca, %n.vec26
  %broadcast.splatinsert27 = insertelement <2 x double> poison, double %i.cf, i64 0
  %broadcast.splat28 = shufflevector <2 x double> %broadcast.splatinsert27, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph25
  %index30 = phi i64 [ 0, %vector.ph25 ], [ %index.next35, %vector.body29 ] ; 2 uses
  %i.ci = add nuw i64 %i.ca, %index30             ; 2 uses
  %i.cj = sub nsw i64 %i.ci, %.16072.i
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load31 = load <2 x double>, ptr %i.ck, align 8, !tbaa !26, !alias.scope !58
  %wide.load32 = load <2 x double>, ptr %i.cl, align 8, !tbaa !26, !alias.scope !58
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ci ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %wide.load33 = load <2 x double>, ptr %i.cm, align 8, !tbaa !26, !alias.scope !59, !noalias !58
  %wide.load34 = load <2 x double>, ptr %i.cn, align 8, !tbaa !26, !alias.scope !59, !noalias !58
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat28, <2 x double> %wide.load31, <2 x double> %wide.load33)
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat28, <2 x double> %wide.load32, <2 x double> %wide.load34)
  store <2 x double> %i.co, ptr %i.cm, align 8, !tbaa !26, !alias.scope !59, !noalias !58
  store <2 x double> %i.cp, ptr %i.cn, align 8, !tbaa !26, !alias.scope !59, !noalias !58
  %index.next35 = add nuw i64 %index30, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next35, %n.vec26
  br i1 %i.cq, label %middle.block36, label %vector.body29, !llvm.loop !54

middle.block36:                                   ; preds = %vector.body29
  %cmp.n37 = icmp eq i64 %i.cg, %n.vec26
  br i1 %cmp.n37, label %._crit_edge.i, label %.lr.ph71.i.preheader39

.lr.ph71.i.preheader39:                           ; preds = %vector.memcheck15, %.lr.ph71.i.preheader, %middle.block36
  %.170.i.ph = phi i64 [ %i.ca, %vector.memcheck15 ], [ %i.ca, %.lr.ph71.i.preheader ], [ %i.ch, %middle.block36 ]
  br label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.preheader39, %.lr.ph71.i
  %.170.i = phi i64 [ %i.cx, %.lr.ph71.i ], [ %.170.i.ph, %.lr.ph71.i.preheader39 ] ; 3 uses
  %i.cr = sub nsw i64 %.170.i, %.16072.i
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.170.i ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !26
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ct, double %i.cv)
  store double %i.cw, ptr %i.cu, align 8, !tbaa !26
  %i.cx = add nuw nsw i64 %.170.i, 1              ; 2 uses
  %.not.not.i = icmp slt i64 %i.cx, %.16072.i
  br i1 %.not.not.i, label %.lr.ph71.i, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %.lr.ph71.i, %middle.block36, %.lr.ph73.i
  %i.cy = add nsw i64 %.16072.i, -1
  %i.cz = icmp sgt i64 %.16072.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cz, label %.lr.ph73.i, label %bandGBTRS.exit, !llvm.loop !1

bandGBTRS.exit:                                   ; preds = %._crit_edge.i, %.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @bandGBTRS(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, -1                           ; 5 uses
  %i.b = icmp sgt i64 %1, 1
  br i1 %i.b, label %.lr.ph68.preheader, label %.preheader

.lr.ph68.preheader:                               ; preds = %bb.a
  %i.c = shl i64 %2, 3                            ; 2 uses
  br label %.lr.ph68

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond75.not = icmp eq i64 %i.x, %i.a
  br i1 %exitcond75.not, label %.preheader, label %.lr.ph68, !llvm.loop !0

.preheader:                                       ; preds = %.loopexit, %bb.a
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %.lr.ph73.preheader, label %._crit_edge74

.lr.ph73.preheader:                               ; preds = %.preheader
  %i.e = xor i64 %2, -1
  %i.f = add i64 %1, %i.e
  %i.g = shl nsw i64 %2, 3
  %invariant.op = sub i64 1, %1
  br label %.lr.ph73

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %3, %.lr.ph68.preheader ] ; 3 uses
  %.05967 = phi i64 [ %i.x, %.loopexit ], [ 0, %.lr.ph68.preheader ] ; 14 uses
  %i.h = shl nuw nsw i64 %.05967, 3               ; 2 uses
  %i.i = getelementptr i8, ptr %5, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.i, i64 8
  %i.j = getelementptr i8, ptr %5, i64 %i.h
  %scevgep77 = getelementptr i8, ptr %i.j, i64 16
  %smin78 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a)
  %i.k = xor i64 %.05967, -1
  %i.l = add i64 %smin78, %i.k
  %i.m = shl i64 %i.l, 3                          ; 2 uses
  %scevgep79 = getelementptr i8, ptr %scevgep77, i64 %i.m
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a) ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.05967
  %i.o = load i64, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %5, i64 %i.o ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !26 ; 5 uses
  %.not = icmp eq i64 %i.o, %.05967
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.05967 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !26
  store double %i.s, ptr %i.p, align 8, !tbaa !26
  store double %i.q, ptr %i.r, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05967
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24   ; 3 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %2 ; 4 uses
  %i.w = add nsw i64 %.05967, %3
  %. = tail call i64 @llvm.smin.i64(i64 %i.w, i64 %i.a)
  %i.x = add nuw nsw i64 %.05967, 1               ; 6 uses
  %.not6465.not = icmp slt i64 %.05967, %.
  br i1 %.not6465.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.y = sub i64 %smin, %.05967                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 4
  br i1 %min.iters.check, label %.lr.ph.preheader111, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.z = getelementptr i8, ptr %i.u, i64 %i.c
  %scevgep80 = getelementptr i8, ptr %i.z, i64 8
  %i.aa = getelementptr i8, ptr %i.u, i64 %i.c
  %scevgep81 = getelementptr i8, ptr %i.aa, i64 16
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.m
  %bound0 = icmp ult ptr %scevgep, %scevgep82
  %bound1 = icmp ult ptr %scevgep80, %scevgep79
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader111, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -4                       ; 3 uses
  %i.ab = add i64 %i.x, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add nuw i64 %i.x, %index                ; 2 uses
  %i.ad = sub nuw nsw i64 %i.ac, %.05967
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !26, !alias.scope !70
  %wide.load83 = load <2 x double>, ptr %i.af, align 8, !tbaa !26, !alias.scope !70
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ac ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load84 = load <2 x double>, ptr %i.ag, align 8, !tbaa !26, !alias.scope !71, !noalias !70
  %wide.load85 = load <2 x double>, ptr %i.ah, align 8, !tbaa !26, !alias.scope !71, !noalias !70
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load84)
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load83, <2 x double> %wide.load85)
  store <2 x double> %i.ai, ptr %i.ag, align 8, !tbaa !26, !alias.scope !71, !noalias !70
  store <2 x double> %i.aj, ptr %i.ah, align 8, !tbaa !26, !alias.scope !71, !noalias !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader111

.lr.ph.preheader111:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.066.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.ab, %middle.block ] ; 6 uses
  %i.al = add i64 %smin, %.066.ph
  %i.am = and i64 %i.al, 1
  %lcmp.mod.not.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader111
  %i.an = sub nuw nsw i64 %.066.ph, %.05967
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066.ph ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !26
  %i.as = tail call double @llvm.fmuladd.f64(double %i.q, double %i.ap, double %i.ar)
  store double %i.as, ptr %i.aq, align 8, !tbaa !26
  %i.at = add nuw i64 %.066.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader111
  %.066.unr = phi i64 [ %.066.ph, %.lr.ph.preheader111 ], [ %i.at, %.lr.ph.prol ]
  %i.au = icmp eq i64 %smin, %.066.ph
  br i1 %i.au, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.066 = phi i64 [ %i.bi, %.lr.ph ], [ %.066.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.av = sub nuw nsw i64 %.066, %.05967
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !26
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.q, double %i.ax, double %i.az)
  store double %i.ba, ptr %i.ay, align 8, !tbaa !26
  %i.bb = add nuw i64 %.066, 1                    ; 3 uses
  %i.bc = sub nuw nsw i64 %i.bb, %.05967
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bb ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !26
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.q, double %i.be, double %i.bg)
  store double %i.bh, ptr %i.bf, align 8, !tbaa !26
  %i.bi = add nuw i64 %.066, 2
  %exitcond.not.1 = icmp eq i64 %i.bb, %smin
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !64

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %.16072 = phi i64 [ %i.a, %.lr.ph73.preheader ], [ %i.cq, %._crit_edge ] ; 11 uses
  %i.bj = sub i64 %i.f, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bj, i64 0) ; 2 uses
  %i.bk = shl i64 %smax, 3
  %scevgep87 = getelementptr i8, ptr %5, i64 %i.bk
  %i.bl = shl i64 %.16072, 3
  %scevgep88 = getelementptr i8, ptr %5, i64 %i.bl
  %.reass = add i64 %indvar, %invariant.op
  %i.bm = add i64 %smax, %.reass
  %i.bn = shl i64 %i.bm, 3
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16072
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !24 ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %2 ; 4 uses
  %i.br = sub nsw i64 %.16072, %2
  %i.bs = tail call i64 @llvm.smax.i64(i64 %i.br, i64 0) ; 5 uses
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
  %min.iters.check95 = icmp ult i64 %i.by, 4
  br i1 %min.iters.check95, label %.lr.ph71.preheader110, label %vector.memcheck86

vector.memcheck86:                                ; preds = %.lr.ph71.preheader
  %scevgep89 = getelementptr i8, ptr %i.bp, i64 %i.g
  %scevgep90 = getelementptr i8, ptr %scevgep89, i64 %i.bn
  %bound091 = icmp ult ptr %scevgep87, %i.bq
  %bound192 = icmp ult ptr %scevgep90, %scevgep88
  %found.conflict93 = and i1 %bound091, %bound192
  br i1 %found.conflict93, label %.lr.ph71.preheader110, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck86
  %n.vec97 = and i64 %i.by, -4                    ; 3 uses
  %i.bz = add i64 %i.bs, %n.vec97
  %broadcast.splatinsert98 = insertelement <2 x double> poison, double %i.bx, i64 0
  %broadcast.splat99 = shufflevector <2 x double> %broadcast.splatinsert98, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph96
  %index101 = phi i64 [ 0, %vector.ph96 ], [ %index.next106, %vector.body100 ] ; 2 uses
  %i.ca = add nuw i64 %i.bs, %index101            ; 2 uses
  %i.cb = sub nsw i64 %i.ca, %.16072
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load102 = load <2 x double>, ptr %i.cc, align 8, !tbaa !26, !alias.scope !72
  %wide.load103 = load <2 x double>, ptr %i.cd, align 8, !tbaa !26, !alias.scope !72
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ca ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %wide.load104 = load <2 x double>, ptr %i.ce, align 8, !tbaa !26, !alias.scope !73, !noalias !72
  %wide.load105 = load <2 x double>, ptr %i.cf, align 8, !tbaa !26, !alias.scope !73, !noalias !72
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat99, <2 x double> %wide.load102, <2 x double> %wide.load104)
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat99, <2 x double> %wide.load103, <2 x double> %wide.load105)
  store <2 x double> %i.cg, ptr %i.ce, align 8, !tbaa !26, !alias.scope !73, !noalias !72
  store <2 x double> %i.ch, ptr %i.cf, align 8, !tbaa !26, !alias.scope !73, !noalias !72
  %index.next106 = add nuw i64 %index101, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next106, %n.vec97
  br i1 %i.ci, label %middle.block107, label %vector.body100, !llvm.loop !68

middle.block107:                                  ; preds = %vector.body100
  %cmp.n108 = icmp eq i64 %i.by, %n.vec97
  br i1 %cmp.n108, label %._crit_edge, label %.lr.ph71.preheader110

.lr.ph71.preheader110:                            ; preds = %vector.memcheck86, %.lr.ph71.preheader, %middle.block107
  %.170.ph = phi i64 [ %i.bs, %vector.memcheck86 ], [ %i.bs, %.lr.ph71.preheader ], [ %i.bz, %middle.block107 ]
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.preheader110, %.lr.ph71
  %.170 = phi i64 [ %i.cp, %.lr.ph71 ], [ %.170.ph, %.lr.ph71.preheader110 ] ; 3 uses
  %i.cj = sub nsw i64 %.170, %.16072
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !26
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.170 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !26
  %i.co = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.cl, double %i.cn)
  store double %i.co, ptr %i.cm, align 8, !tbaa !26
  %i.cp = add nuw nsw i64 %.170, 1                ; 2 uses
  %.not.not = icmp slt i64 %i.cp, %.16072
  br i1 %.not.not, label %.lr.ph71, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph71, %middle.block107, %.lr.ph73
  %i.cq = add nsw i64 %.16072, -1
  %i.cr = icmp sgt i64 %.16072, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cr, label %.lr.ph73, label %._crit_edge74, !llvm.loop !1

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
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.h
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.m ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.022.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24   ; 2 uses
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
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !26
  %wide.load8 = load <2 x double>, ptr %i.ah, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x double> %wide.load, ptr %i.ai, align 8, !tbaa !26
  store <2 x double> %wide.load8, ptr %i.aj, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.01921.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %i.al = sub i64 %i.r, %.01921.i.ph
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01921.i.prol = phi i64 [ %i.ap, %scalar.ph.prol ], [ %.01921.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.01921.i.prol
  %i.an = load double, ptr %i.am, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.01921.i.prol
  store double %i.an, ptr %i.ao, align 8, !tbaa !26
  %i.ap = add nuw i64 %.01921.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !75

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01921.i.unr = phi i64 [ %.01921.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp ult i64 %i.al, 3
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01921.i = phi i64 [ %i.bg, %scalar.ph ], [ %.01921.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.01921.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.01921.i
  store double %i.as, ptr %i.at, align 8, !tbaa !26
  %i.au = add nuw i64 %.01921.i, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.au
  store double %i.aw, ptr %i.ax, align 8, !tbaa !26
  %i.ay = add nuw i64 %.01921.i, 2                ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ay
  store double %i.ba, ptr %i.bb, align 8, !tbaa !26
end_hunk_0
