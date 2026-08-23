Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_band?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@SUNDlsMat_bandGBTRF:bb.a

bb.c:                                             ; preds = %bb.b
  store double %i.ax, ptr %i.bt, align 8, !tbaa !20
  store double %i.bu, ptr %i.au, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = phi double [ %i.bu, %bb.c ], [ %i.ax, %bb.b ]
  %i.bx = fdiv double -1.000000e+00, %i.bw        ; 2 uses
  br i1 %.not137152.not, label %.lr.ph164.preheader, label %._crit_edge165

.lr.ph164.preheader:                              ; preds = %bb.d
  %min.iters.check214 = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check214, label %.lr.ph164.preheader230, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph164.preheader
  %n.vec216 = and i64 %i.ak, -4                   ; 4 uses
  %i.by = shl i64 %n.vec216, 3
  %i.bz = getelementptr i8, ptr %i.av, i64 %i.by
  %i.ca = add i64 %i.ay, %n.vec216
  %broadcast.splatinsert217 = insertelement <2 x double> poison, double %i.bx, i64 0
  %broadcast.splat218 = shufflevector <2 x double> %broadcast.splatinsert217, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph215
  %index220 = phi i64 [ 0, %vector.ph215 ], [ %index.next224, %vector.body219 ] ; 2 uses
  %i.cb = shl i64 %index220, 3
  %next.gep221 = getelementptr i8, ptr %i.av, i64 %i.cb ; 3 uses
  %i.cc = getelementptr i8, ptr %next.gep221, i64 16 ; 2 uses
  %wide.load222 = load <2 x double>, ptr %next.gep221, align 8, !tbaa !20
  %wide.load223 = load <2 x double>, ptr %i.cc, align 8, !tbaa !20
  %i.cd = fmul <2 x double> %broadcast.splat218, %wide.load222
  %i.ce = fmul <2 x double> %broadcast.splat218, %wide.load223
  store <2 x double> %i.cd, ptr %next.gep221, align 8, !tbaa !20
  store <2 x double> %i.ce, ptr %i.cc, align 8, !tbaa !20
  %index.next224 = add nuw i64 %index220, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next224, %n.vec216
  br i1 %i.cf, label %middle.block225, label %vector.body219, !llvm.loop !25

middle.block225:                                  ; preds = %vector.body219
  %cmp.n226 = icmp eq i64 %i.ak, %n.vec216
  br i1 %cmp.n226, label %._crit_edge165, label %.lr.ph164.preheader230

.lr.ph164.preheader230:                           ; preds = %.lr.ph164.preheader, %middle.block225
  %.1117162.ph = phi ptr [ %i.av, %.lr.ph164.preheader ], [ %i.bz, %middle.block225 ]
  %.1123161.ph = phi i64 [ %i.ay, %.lr.ph164.preheader ], [ %i.ca, %middle.block225 ]
  br label %.lr.ph164

.lr.ph164:                                        ; preds = %.lr.ph164.preheader230, %.lr.ph164
  %.1117162 = phi ptr [ %i.cj, %.lr.ph164 ], [ %.1117162.ph, %.lr.ph164.preheader230 ] ; 3 uses
  %.1123161 = phi i64 [ %i.ci, %.lr.ph164 ], [ %.1123161.ph, %.lr.ph164.preheader230 ] ; 2 uses
  %i.cg = load double, ptr %.1117162, align 8, !tbaa !20
  %i.ch = fmul double %i.bx, %i.cg
  store double %i.ch, ptr %.1117162, align 8, !tbaa !20
  %i.ci = add nuw i64 %.1123161, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.1117162, i64 8
  %exitcond188.not = icmp eq i64 %.1123161, %smin187
  br i1 %exitcond188.not, label %._crit_edge165, label %.lr.ph164, !llvm.loop !28

._crit_edge165:                                   ; preds = %.lr.ph164, %middle.block225, %bb.d
  %i.ck = add nsw i64 %.0120178, %4
  %.142 = tail call i64 @llvm.smin.i64(i64 %i.ck, i64 %i.ag)
  %.not140172.not = icmp slt i64 %.0120178, %.142
  br i1 %.not140172.not, label %.lr.ph175.preheader, label %._crit_edge176

.lr.ph175.preheader:                              ; preds = %._crit_edge165
  %i.cl = getelementptr i8, ptr %i.at, i64 %i.ai
  %scevgep202 = getelementptr i8, ptr %i.cl, i64 16
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.aq
  %min.iters.check = icmp ult i64 %i.am, 4
  %n.vec = and i64 %i.am, -4                      ; 4 uses
  %i.cm = shl i64 %n.vec, 3                       ; 2 uses
  %i.cn = getelementptr i8, ptr %i.av, i64 %i.cm
  %i.co = add i64 %i.ay, %n.vec
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph175.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %.0121173 = phi i64 [ %i.ay, %.lr.ph175.preheader ], [ %i.ds, %.loopexit ] ; 6 uses
  %i.cp = shl i64 %indvar, 3
  %i.cq = sub i64 %i.ar, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0121173
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !19 ; 4 uses
  %i.ct = sub nsw i64 %.0118.lcssa, %.0121173
  %i.cu = getelementptr [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr [8 x i8], ptr %i.cu, i64 %4 ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !20 ; 4 uses
  br i1 %.not138, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph175
  %i.cx = sub nsw i64 %.0120178, %.0121173
  %i.cy = getelementptr [8 x i8], ptr %i.cs, i64 %i.cx
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %4 ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !20
  store double %i.da, ptr %i.cv, align 8, !tbaa !20
  store double %i.cw, ptr %i.cz, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph175
  %i.db = fcmp oeq double %i.cw, 0.000000e+00
  %brmerge = or i1 %i.db, %.not141166.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.f
  %i.dc = sub i64 %i.ay, %.0121173
  %i.dd = getelementptr [8 x i8], ptr %i.cs, i64 %i.dc
  %i.de = getelementptr [8 x i8], ptr %i.dd, i64 %4 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph171.preheader229, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph171.preheader
  %scevgep = getelementptr i8, ptr %i.cs, i64 %i.cq
  %bound0 = icmp ult ptr %i.de, %scevgep203
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph171.preheader229, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.df = getelementptr i8, ptr %i.de, i64 %i.cm
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.de, i64 %i.dg ; 3 uses
  %next.gep206 = getelementptr i8, ptr %i.av, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load = load <2 x double>, ptr %next.gep206, align 8, !tbaa !20, !alias.scope !29
  %wide.load207 = load <2 x double>, ptr %i.dh, align 8, !tbaa !20, !alias.scope !29
  %i.di = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %next.gep, align 8, !tbaa !20, !alias.scope !32, !noalias !29
  %wide.load209 = load <2 x double>, ptr %i.di, align 8, !tbaa !20, !alias.scope !32, !noalias !29
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load208)
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load207, <2 x double> %wide.load209)
  store <2 x double> %i.dj, ptr %next.gep, align 8, !tbaa !20, !alias.scope !32, !noalias !29
  store <2 x double> %i.dk, ptr %i.di, align 8, !tbaa !20, !alias.scope !32, !noalias !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph171.preheader229

.lr.ph171.preheader229:                           ; preds = %vector.memcheck, %.lr.ph171.preheader, %middle.block
  %.0115169.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph171.preheader ], [ %i.df, %middle.block ]
  %.2168.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph171.preheader ], [ %i.cn, %middle.block ]
  %.2124167.ph = phi i64 [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph171.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader229, %.lr.ph171
  %.0115169 = phi ptr [ %i.dr, %.lr.ph171 ], [ %.0115169.ph, %.lr.ph171.preheader229 ] ; 3 uses
  %.2168 = phi ptr [ %i.dq, %.lr.ph171 ], [ %.2168.ph, %.lr.ph171.preheader229 ] ; 2 uses
  %.2124167 = phi i64 [ %i.dp, %.lr.ph171 ], [ %.2124167.ph, %.lr.ph171.preheader229 ] ; 2 uses
  %i.dm = load double, ptr %.2168, align 8, !tbaa !20
  %i.dn = load double, ptr %.0115169, align 8, !tbaa !20
  %i.do = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.dm, double %i.dn)
  store double %i.do, ptr %.0115169, align 8, !tbaa !20
  %i.dp = add nuw nsw i64 %.2124167, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.2168, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.0115169, i64 8
  %.not141.not = icmp slt i64 %.2124167, %.
  br i1 %.not141.not, label %.lr.ph171, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %.lr.ph171, %middle.block, %bb.f
  %i.ds = add nuw i64 %.0121173, 1
  %exitcond192.not = icmp eq i64 %.0121173, %smin191
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond192.not, label %._crit_edge176, label %.lr.ph175

._crit_edge176:                                   ; preds = %.loopexit, %._crit_edge165
  %i.dt = getelementptr inbounds nuw i8, ptr %.0127177, i64 8 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next190 = add i64 %indvars.iv189, 1
  %exitcond193.not = icmp eq i64 %i.ay, %i.ag
  br i1 %exitcond193.not, label %._crit_edge181, label %.lr.ph180

._crit_edge181:                                   ; preds = %._crit_edge176, %.loopexit145
  %.0127.lcssa = phi ptr [ %5, %.loopexit145 ], [ %i.dt, %._crit_edge176 ]
  store i64 %i.ag, ptr %.0127.lcssa, align 8, !tbaa !24
  %i.du = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !19
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %4
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !20
  %i.dy = fcmp oeq double %i.dx, 0.000000e+00
  %.143 = select i1 %i.dy, i64 %1, i64 0
  br label %.loopexit144

.loopexit144:                                     ; preds = %._crit_edge159, %._crit_edge181
  %.0128 = phi i64 [ %.143, %._crit_edge181 ], [ %i.ay, %._crit_edge159 ]
  ret i64 %.0128
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_BandGBTRS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = add i64 %i.d, -1                         ; 6 uses
  %i.j = icmp sgt i64 %i.d, 1
  br i1 %i.j, label %.lr.ph68.i.preheader, label %.preheader.i

.lr.ph68.i.preheader:                             ; preds = %bb.a
  %i.k = shl i64 %i.f, 3                          ; 2 uses
  br label %.lr.ph68.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %exitcond75.not.i = icmp eq i64 %i.ag, %i.i
  br i1 %exitcond75.not.i, label %.preheader.i, label %.lr.ph68.i

.preheader.i:                                     ; preds = %.loopexit.i, %bb.a
  %i.l = icmp sgt i64 %i.d, 0
  br i1 %i.l, label %.lr.ph73.i.preheader, label %SUNDlsMat_bandGBTRS.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.m = xor i64 %i.f, -1
  %3 = add i64 %i.d, %i.m
  %4 = shl i64 %i.d, 3
  %i.n = add i64 %4, -8
  %i.o = shl nsw i64 %i.f, 3
  %invariant.op = sub i64 1, %i.d
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %.lr.ph68.i.preheader, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ %i.h, %.lr.ph68.i.preheader ] ; 4 uses
  %.05967.i = phi i64 [ %i.ag, %.loopexit.i ], [ 0, %.lr.ph68.i.preheader ] ; 14 uses
  %smin12 = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i) ; 3 uses
  %i.p = sub i64 %smin12, %.05967.i               ; 3 uses
  %i.q = shl i64 %.05967.i, 3                     ; 2 uses
  %i.r = getelementptr i8, ptr %2, i64 %i.q
  %scevgep = getelementptr i8, ptr %i.r, i64 8
  %i.s = getelementptr i8, ptr %2, i64 %i.q
  %scevgep7 = getelementptr i8, ptr %i.s, i64 16
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i)
  %i.t = xor i64 %.05967.i, -1
  %i.u = add i64 %smin, %i.t
  %i.v = shl i64 %i.u, 3                          ; 2 uses
  %scevgep8 = getelementptr i8, ptr %scevgep7, i64 %i.v
  %smin.i = tail call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.i)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05967.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24   ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !20 ; 5 uses
  %.not.i = icmp eq i64 %i.x, %.05967.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.05967.i ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !20
  store double %i.ab, ptr %i.y, align 8, !tbaa !20
  store double %i.z, ptr %i.aa, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.05967.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 3 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.f ; 4 uses
  %i.af = add nsw i64 %.05967.i, %i.h
  %..i = tail call i64 @llvm.smin.i64(i64 %i.af, i64 %i.i)
  %i.ag = add nuw nsw i64 %.05967.i, 1            ; 6 uses
  %.not6465.not.i = icmp slt i64 %.05967.i, %..i
  br i1 %.not6465.not.i, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader41, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.k
  %scevgep9 = getelementptr i8, ptr %i.ah, i64 8
  %i.ai = getelementptr i8, ptr %i.ad, i64 %i.k
  %scevgep10 = getelementptr i8, ptr %i.ai, i64 16
  %scevgep11 = getelementptr i8, ptr %scevgep10, i64 %i.v
  %bound0 = icmp ult ptr %scevgep, %scevgep11
  %bound1 = icmp ult ptr %scevgep9, %scevgep8
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %i.aj = add i64 %i.ag, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.z, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = add nuw i64 %i.ag, %index               ; 2 uses
  %i.al = sub nuw nsw i64 %i.ak, %.05967.i
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !20, !alias.scope !36
  %wide.load13 = load <2 x double>, ptr %i.an, align 8, !tbaa !20, !alias.scope !36
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ak ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load14 = load <2 x double>, ptr %i.ao, align 8, !tbaa !20, !alias.scope !39, !noalias !36
  %wide.load15 = load <2 x double>, ptr %i.ap, align 8, !tbaa !20, !alias.scope !39, !noalias !36
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load14)
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load13, <2 x double> %wide.load15)
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !20, !alias.scope !39, !noalias !36
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !20, !alias.scope !39, !noalias !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader41

.lr.ph.i.preheader41:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.066.i.ph = phi i64 [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.preheader ], [ %i.aj, %middle.block ] ; 6 uses
  %i.at = add i64 %smin12, %.066.i.ph
  %i.au = and i64 %i.at, 1
  %lcmp.mod.not.not = icmp eq i64 %i.au, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader41
  %i.av = sub nuw nsw i64 %.066.i.ph, %.05967.i
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i.ph ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !20
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ax, double %i.az)
  store double %i.ba, ptr %i.ay, align 8, !tbaa !20
  %i.bb = add nuw i64 %.066.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader41
  %.066.i.unr = phi i64 [ %.066.i.ph, %.lr.ph.i.preheader41 ], [ %i.bb, %.lr.ph.i.prol ]
  %i.bc = icmp eq i64 %smin12, %.066.i.ph
  br i1 %i.bc, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.066.i = phi i64 [ %i.bq, %.lr.ph.i ], [ %.066.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.bd = sub nuw nsw i64 %.066.i, %.05967.i
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.066.i ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !20
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.z, double %i.bf, double %i.bh)
  store double %i.bi, ptr %i.bg, align 8, !tbaa !20
  %i.bj = add nuw i64 %.066.i, 1                  ; 3 uses
  %i.bk = sub nuw nsw i64 %i.bj, %.05967.i
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bj ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !20
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.z, double %i.bm, double %i.bo)
  store double %i.bp, ptr %i.bn, align 8, !tbaa !20
  %i.bq = add nuw i64 %.066.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.bj, %smin.i
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !42

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader, %._crit_edge.i
  %indvar = phi i64 [ 0, %.lr.ph73.i.preheader ], [ %indvar.next, %._crit_edge.i ] ; 4 uses
  %.16072.i = phi i64 [ %i.i, %.lr.ph73.i.preheader ], [ %i.cy, %._crit_edge.i ] ; 10 uses
  %i.br = sub i64 %3, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %i.br, i64 0) ; 2 uses
  %i.bs = shl i64 %smax, 3
  %scevgep17 = getelementptr i8, ptr %2, i64 %i.bs
  %i.bt = shl i64 %indvar, 3
  %5 = sub i64 %i.n, %i.bt
  %scevgep18 = getelementptr i8, ptr %2, i64 %5
  %.reass = add i64 %indvar, %invariant.op
  %i.bu = add i64 %smax, %.reass
  %i.bv = shl i64 %i.bu, 3
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.16072.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !19 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.f ; 4 uses
  %i.bz = sub nsw i64 %.16072.i, %i.f
  %i.ca = tail call i64 @llvm.smax.i64(i64 %i.bz, i64 0) ; 5 uses
  %i.cb = load double, ptr %i.by, align 8, !tbaa !20
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.16072.i ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !20
  %i.ce = fdiv double %i.cd, %i.cb                ; 2 uses
  store double %i.ce, ptr %i.cc, align 8, !tbaa !20
  %i.cf = fneg double %i.ce                       ; 2 uses
  %.not.not69.i = icmp samesign ult i64 %i.ca, %.16072.i
  br i1 %.not.not69.i, label %.lr.ph71.i.preheader, label %._crit_edge.i

.lr.ph71.i.preheader:                             ; preds = %.lr.ph73.i
  %i.cg = tail call i64 @llvm.smin.i64(i64 %.16072.i, i64 %i.f) ; 3 uses
  %min.iters.check25 = icmp ult i64 %i.cg, 4
  br i1 %min.iters.check25, label %.lr.ph71.i.preheader40, label %vector.memcheck16

vector.memcheck16:                                ; preds = %.lr.ph71.i.preheader
  %scevgep19 = getelementptr i8, ptr %i.bx, i64 %i.o
  %scevgep20 = getelementptr i8, ptr %scevgep19, i64 %i.bv
  %bound021 = icmp ult ptr %scevgep17, %i.by
  %bound122 = icmp ult ptr %scevgep20, %scevgep18
  %found.conflict23 = and i1 %bound021, %bound122
  br i1 %found.conflict23, label %.lr.ph71.i.preheader40, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck16
  %n.vec27 = and i64 %i.cg, -4                    ; 3 uses
  %i.ch = add i64 %i.ca, %n.vec27
  %broadcast.splatinsert28 = insertelement <2 x double> poison, double %i.cf, i64 0
  %broadcast.splat29 = shufflevector <2 x double> %broadcast.splatinsert28, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph26
  %index31 = phi i64 [ 0, %vector.ph26 ], [ %index.next36, %vector.body30 ] ; 2 uses
  %i.ci = add nuw i64 %i.ca, %index31             ; 2 uses
  %i.cj = sub nsw i64 %i.ci, %.16072.i
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load32 = load <2 x double>, ptr %i.ck, align 8, !tbaa !20, !alias.scope !43
  %wide.load33 = load <2 x double>, ptr %i.cl, align 8, !tbaa !20, !alias.scope !43
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ci ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %wide.load34 = load <2 x double>, ptr %i.cm, align 8, !tbaa !20, !alias.scope !46, !noalias !43
  %wide.load35 = load <2 x double>, ptr %i.cn, align 8, !tbaa !20, !alias.scope !46, !noalias !43
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat29, <2 x double> %wide.load32, <2 x double> %wide.load34)
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat29, <2 x double> %wide.load33, <2 x double> %wide.load35)
  store <2 x double> %i.co, ptr %i.cm, align 8, !tbaa !20, !alias.scope !46, !noalias !43
  store <2 x double> %i.cp, ptr %i.cn, align 8, !tbaa !20, !alias.scope !46, !noalias !43
  %index.next36 = add nuw i64 %index31, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next36, %n.vec27
  br i1 %i.cq, label %middle.block37, label %vector.body30, !llvm.loop !48

middle.block37:                                   ; preds = %vector.body30
  %cmp.n38 = icmp eq i64 %i.cg, %n.vec27
  br i1 %cmp.n38, label %._crit_edge.i, label %.lr.ph71.i.preheader40

.lr.ph71.i.preheader40:                           ; preds = %vector.memcheck16, %.lr.ph71.i.preheader, %middle.block37
  %.170.i.ph = phi i64 [ %i.ca, %vector.memcheck16 ], [ %i.ca, %.lr.ph71.i.preheader ], [ %i.ch, %middle.block37 ]
  br label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.preheader40, %.lr.ph71.i
  %.170.i = phi i64 [ %i.cx, %.lr.ph71.i ], [ %.170.i.ph, %.lr.ph71.i.preheader40 ] ; 3 uses
  %i.cr = sub nsw i64 %.170.i, %.16072.i
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !20
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.170.i ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !20
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ct, double %i.cv)
  store double %i.cw, ptr %i.cu, align 8, !tbaa !20
  %i.cx = add nuw nsw i64 %.170.i, 1              ; 2 uses
  %.not.not.i = icmp slt i64 %i.cx, %.16072.i
  br i1 %.not.not.i, label %.lr.ph71.i, label %._crit_edge.i, !llvm.loop !49

._crit_edge.i:                                    ; preds = %.lr.ph71.i, %middle.block37, %.lr.ph73.i
  %i.cy = add nsw i64 %.16072.i, -1
  %i.cz = icmp sgt i64 %.16072.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cz, label %.lr.ph73.i, label %SUNDlsMat_bandGBTRS.exit

SUNDlsMat_bandGBTRS.exit:                         ; preds = %._crit_edge.i, %.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_bandGBTRS(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, -1                           ; 6 uses
  %i.b = icmp sgt i64 %1, 1
  br i1 %i.b, label %.lr.ph68.preheader, label %.preheader

.lr.ph68.preheader:                               ; preds = %bb.a
  %i.c = shl i64 %2, 3                            ; 2 uses
  br label %.lr.ph68

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond75.not = icmp eq i64 %i.y, %i.a
  br i1 %exitcond75.not, label %.preheader, label %.lr.ph68

.preheader:                                       ; preds = %.loopexit, %bb.a
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %.lr.ph73.preheader, label %._crit_edge74

.lr.ph73.preheader:                               ; preds = %.preheader
  %i.e = xor i64 %2, -1
  %6 = add i64 %1, %i.e
  %7 = shl i64 %1, 3
  %i.f = add i64 %7, -8
  %i.g = shl nsw i64 %2, 3
  %invariant.op = sub i64 1, %1
  br label %.lr.ph73

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %3, %.lr.ph68.preheader ] ; 4 uses
  %.05967 = phi i64 [ %i.y, %.loopexit ], [ 0, %.lr.ph68.preheader ] ; 14 uses
  %smin83 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a) ; 3 uses
  %i.h = sub i64 %smin83, %.05967                 ; 3 uses
  %i.i = shl i64 %.05967, 3                       ; 2 uses
  %i.j = getelementptr i8, ptr %5, i64 %i.i
  %scevgep = getelementptr i8, ptr %i.j, i64 8
  %i.k = getelementptr i8, ptr %5, i64 %i.i
  %scevgep77 = getelementptr i8, ptr %i.k, i64 16
  %smin78 = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a)
  %i.l = xor i64 %.05967, -1
  %i.m = add i64 %smin78, %i.l
  %i.n = shl i64 %i.m, 3                          ; 2 uses
  %scevgep79 = getelementptr i8, ptr %scevgep77, i64 %i.n
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv, i64 %i.a)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.05967
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %5, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !20 ; 5 uses
  %.not = icmp eq i64 %i.p, %.05967
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph68
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.05967 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !20
  store double %i.t, ptr %i.q, align 8, !tbaa !20
  store double %i.r, ptr %i.s, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph68
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05967
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 3 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %2 ; 4 uses
  %i.x = add nsw i64 %.05967, %3
  %. = tail call i64 @llvm.smin.i64(i64 %i.x, i64 %i.a)
  %i.y = add nuw nsw i64 %.05967, 1               ; 6 uses
  %.not6465.not = icmp slt i64 %.05967, %.
  br i1 %.not6465.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.preheader112, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.z = getelementptr i8, ptr %i.v, i64 %i.c
  %scevgep80 = getelementptr i8, ptr %i.z, i64 8
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.c
  %scevgep81 = getelementptr i8, ptr %i.aa, i64 16
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.n
  %bound0 = icmp ult ptr %scevgep, %scevgep82
  %bound1 = icmp ult ptr %scevgep80, %scevgep79
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader112, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -4                       ; 3 uses
  %i.ab = add i64 %i.y, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.r, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add nuw i64 %i.y, %index                ; 2 uses
  %i.ad = sub nuw nsw i64 %i.ac, %.05967
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !20, !alias.scope !50
  %wide.load84 = load <2 x double>, ptr %i.af, align 8, !tbaa !20, !alias.scope !50
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ac ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load85 = load <2 x double>, ptr %i.ag, align 8, !tbaa !20, !alias.scope !53, !noalias !50
  %wide.load86 = load <2 x double>, ptr %i.ah, align 8, !tbaa !20, !alias.scope !53, !noalias !50
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load85)
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load84, <2 x double> %wide.load86)
  store <2 x double> %i.ai, ptr %i.ag, align 8, !tbaa !20, !alias.scope !53, !noalias !50
  store <2 x double> %i.aj, ptr %i.ah, align 8, !tbaa !20, !alias.scope !53, !noalias !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader112

.lr.ph.preheader112:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.066.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.preheader ], [ %i.ab, %middle.block ] ; 6 uses
  %i.al = add i64 %smin83, %.066.ph
  %i.am = and i64 %i.al, 1
  %lcmp.mod.not.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader112
  %i.an = sub nuw nsw i64 %.066.ph, %.05967
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066.ph ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !20
  %i.as = tail call double @llvm.fmuladd.f64(double %i.r, double %i.ap, double %i.ar)
  store double %i.as, ptr %i.aq, align 8, !tbaa !20
  %i.at = add nuw i64 %.066.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader112
  %.066.unr = phi i64 [ %.066.ph, %.lr.ph.preheader112 ], [ %i.at, %.lr.ph.prol ]
  %i.au = icmp eq i64 %smin83, %.066.ph
  br i1 %i.au, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.066 = phi i64 [ %i.bi, %.lr.ph ], [ %.066.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.av = sub nuw nsw i64 %.066, %.05967
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.066 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !20
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.r, double %i.ax, double %i.az)
  store double %i.ba, ptr %i.ay, align 8, !tbaa !20
  %i.bb = add nuw i64 %.066, 1                    ; 3 uses
  %i.bc = sub nuw nsw i64 %i.bb, %.05967
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bb ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !20
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.r, double %i.be, double %i.bg)
  store double %i.bh, ptr %i.bf, align 8, !tbaa !20
  %i.bi = add nuw i64 %.066, 2
  %exitcond.not.1 = icmp eq i64 %i.bb, %smin
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !56

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvar.next, %._crit_edge ] ; 4 uses
  %.16072 = phi i64 [ %i.a, %.lr.ph73.preheader ], [ %i.cq, %._crit_edge ] ; 10 uses
  %i.bj = sub i64 %6, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bj, i64 0) ; 2 uses
  %i.bk = shl i64 %smax, 3
  %scevgep88 = getelementptr i8, ptr %5, i64 %i.bk
  %i.bl = shl i64 %indvar, 3
  %8 = sub i64 %i.f, %i.bl
  %scevgep89 = getelementptr i8, ptr %5, i64 %8
  %.reass = add i64 %indvar, %invariant.op
  %i.bm = add i64 %smax, %.reass
  %i.bn = shl i64 %i.bm, 3
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.16072
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19 ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %2 ; 4 uses
  %i.br = sub nsw i64 %.16072, %2
  %i.bs = tail call i64 @llvm.smax.i64(i64 %i.br, i64 0) ; 5 uses
  %i.bt = load double, ptr %i.bq, align 8, !tbaa !20
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.16072 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !20
  %i.bw = fdiv double %i.bv, %i.bt                ; 2 uses
  store double %i.bw, ptr %i.bu, align 8, !tbaa !20
  %i.bx = fneg double %i.bw                       ; 2 uses
  %.not.not69 = icmp samesign ult i64 %i.bs, %.16072
  br i1 %.not.not69, label %.lr.ph71.preheader, label %._crit_edge

.lr.ph71.preheader:                               ; preds = %.lr.ph73
  %i.by = tail call i64 @llvm.smin.i64(i64 %.16072, i64 %2) ; 3 uses
  %min.iters.check96 = icmp ult i64 %i.by, 4
  br i1 %min.iters.check96, label %.lr.ph71.preheader111, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph71.preheader
  %scevgep90 = getelementptr i8, ptr %i.bp, i64 %i.g
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.bn
  %bound092 = icmp ult ptr %scevgep88, %i.bq
  %bound193 = icmp ult ptr %scevgep91, %scevgep89
  %found.conflict94 = and i1 %bound092, %bound193
  br i1 %found.conflict94, label %.lr.ph71.preheader111, label %vector.ph97

vector.ph97:                                      ; preds = %vector.memcheck87
  %n.vec98 = and i64 %i.by, -4                    ; 3 uses
  %i.bz = add i64 %i.bs, %n.vec98
  %broadcast.splatinsert99 = insertelement <2 x double> poison, double %i.bx, i64 0
  %broadcast.splat100 = shufflevector <2 x double> %broadcast.splatinsert99, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph97
  %index102 = phi i64 [ 0, %vector.ph97 ], [ %index.next107, %vector.body101 ] ; 2 uses
  %i.ca = add nuw i64 %i.bs, %index102            ; 2 uses
  %i.cb = sub nsw i64 %i.ca, %.16072
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load103 = load <2 x double>, ptr %i.cc, align 8, !tbaa !20, !alias.scope !57
  %wide.load104 = load <2 x double>, ptr %i.cd, align 8, !tbaa !20, !alias.scope !57
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ca ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %wide.load105 = load <2 x double>, ptr %i.ce, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  %wide.load106 = load <2 x double>, ptr %i.cf, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat100, <2 x double> %wide.load103, <2 x double> %wide.load105)
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat100, <2 x double> %wide.load104, <2 x double> %wide.load106)
  store <2 x double> %i.cg, ptr %i.ce, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  store <2 x double> %i.ch, ptr %i.cf, align 8, !tbaa !20, !alias.scope !60, !noalias !57
  %index.next107 = add nuw i64 %index102, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next107, %n.vec98
  br i1 %i.ci, label %middle.block108, label %vector.body101, !llvm.loop !62

middle.block108:                                  ; preds = %vector.body101
  %cmp.n109 = icmp eq i64 %i.by, %n.vec98
  br i1 %cmp.n109, label %._crit_edge, label %.lr.ph71.preheader111

.lr.ph71.preheader111:                            ; preds = %vector.memcheck87, %.lr.ph71.preheader, %middle.block108
  %.170.ph = phi i64 [ %i.bs, %vector.memcheck87 ], [ %i.bs, %.lr.ph71.preheader ], [ %i.bz, %middle.block108 ]
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.preheader111, %.lr.ph71
  %.170 = phi i64 [ %i.cp, %.lr.ph71 ], [ %.170.ph, %.lr.ph71.preheader111 ] ; 3 uses
  %i.cj = sub nsw i64 %.170, %.16072
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.170 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !20
  %i.co = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.cl, double %i.cn)
  store double %i.co, ptr %i.cm, align 8, !tbaa !20
  %i.cp = add nuw nsw i64 %.170, 1                ; 2 uses
  %.not.not = icmp slt i64 %i.cp, %.16072
  br i1 %.not.not, label %.lr.ph71, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph71, %middle.block108, %.lr.ph73
  %i.cq = add nsw i64 %.16072, -1
  %i.cr = icmp sgt i64 %.16072, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cr, label %.lr.ph73, label %._crit_edge74

._crit_edge74:                                    ; preds = %._crit_edge, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SUNDlsMat_BandCopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
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
  br i1 %i.l, label %.lr.ph24.i, label %SUNDlsMat_bandCopy.exit

.lr.ph24.i:                                       ; preds = %bb.a
  %i.m = sub i64 0, %2                            ; 2 uses
  %.not20.i = icmp slt i64 %i.k, 0
  br i1 %.not20.i, label %SUNDlsMat_bandCopy.exit, label %.lr.ph.i.preheader

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
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !64

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
  %i.an = load double, ptr %i.am, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.01921.i.prol
  store double %i.an, ptr %i.ao, align 8, !tbaa !20
  %i.ap = add nuw i64 %.01921.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !65

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01921.i.unr = phi i64 [ %.01921.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp ult i64 %i.al, 3
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01921.i = phi i64 [ %i.bg, %scalar.ph ], [ %.01921.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.01921.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.01921.i
  store double %i.as, ptr %i.at, align 8, !tbaa !20
  %i.au = add nuw i64 %.01921.i, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.au
  store double %i.aw, ptr %i.ax, align 8, !tbaa !20
  %i.ay = add nuw i64 %.01921.i, 2                ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ay
  store double %i.ba, ptr %i.bb, align 8, !tbaa !20
end_hunk_0
