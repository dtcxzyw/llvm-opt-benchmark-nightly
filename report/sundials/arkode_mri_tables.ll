Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_mri_tables?download=true
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@MRIStepCoupling_MIStoMRI:bb.a
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv227 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !22
  %i.ba = getelementptr i8, ptr %i.ay, i64 -8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !22
  %i.bc = fsub double %i.az, %i.bb
  %i.bd = fcmp olt double %i.bc, f0xBD19000000000000
  br i1 %i.bd, label %.loopexit, label %bb.h

.loopexit170:                                     ; preds = %.prol.loopexit, %.lr.ph184.new, %bb.i
  %.2131.lcssa = phi double [ %.1130187, %bb.i ], [ %.lcssa404.unr, %.prol.loopexit ], [ %i.ci, %.lr.ph184.new ] ; 2 uses
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %._crit_edge189, label %bb.i

bb.i:                                             ; preds = %.lr.ph188, %.loopexit170
  %indvars.iv239 = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next240, %.loopexit170 ] ; 4 uses
  %indvars.iv232 = phi i64 [ 1, %.lr.ph188 ], [ %indvars.iv.next233, %.loopexit170 ] ; 3 uses
  %.1130187 = phi double [ 0.000000e+00, %.lr.ph188 ], [ %.2131.lcssa, %.loopexit170 ] ; 3 uses
  %i.be = sub i64 %i.ax, %indvars.iv239
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 3 uses
  %i.bf = icmp slt i64 %indvars.iv.next240, %i.an
  br i1 %i.bf, label %.lr.ph184, label %.loopexit170

.lr.ph184:                                        ; preds = %bb.i
  %i.bg = xor i64 %indvars.iv239, -1
  %i.bh = add nsw i64 %i.bg, %wide.trip.count242
  %i.bi = load ptr, ptr %i.aw, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv239
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !26 ; 5 uses
  %xtraiter409 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  br i1 %lcmp.mod410.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph184, %.prol.preheader
  %indvars.iv234.prol = phi i64 [ %indvars.iv.next235.prol, %.prol.preheader ], [ %indvars.iv232, %.lr.ph184 ] ; 2 uses
  %.2131182.prol = phi double [ %i.bo, %.prol.preheader ], [ %.1130187, %.lr.ph184 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph184 ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv234.prol
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm)
  %i.bo = fadd double %.2131182.prol, %i.bn       ; 3 uses
  %indvars.iv.next235.prol = add nuw nsw i64 %indvars.iv234.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter409
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !40

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph184
  %.lcssa404.unr = phi double [ poison, %.lr.ph184 ], [ %i.bo, %.prol.preheader ]
  %indvars.iv234.unr = phi i64 [ %indvars.iv232, %.lr.ph184 ], [ %indvars.iv.next235.prol, %.prol.preheader ]
  %.2131182.unr = phi double [ %.1130187, %.lr.ph184 ], [ %i.bo, %.prol.preheader ]
  %i.bp = icmp ult i64 %i.be, 3
  br i1 %i.bp, label %.loopexit170, label %.lr.ph184.new

.lr.ph184.new:                                    ; preds = %.prol.loopexit, %.lr.ph184.new
  %indvars.iv234 = phi i64 [ %indvars.iv.next235.3, %.lr.ph184.new ], [ %indvars.iv234.unr, %.prol.loopexit ] ; 5 uses
  %.2131182 = phi double [ %i.ci, %.lr.ph184.new ], [ %.2131182.unr, %.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv234
  %i.br = load double, ptr %i.bq, align 8, !tbaa !22
  %i.bs = tail call double @llvm.fabs.f64(double %i.br)
  %i.bt = fadd double %.2131182, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv234
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !22
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %i.by = fadd double %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv234
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !22
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fadd double %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv234
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !22
  %i.ch = tail call double @llvm.fabs.f64(double %i.cg)
  %i.ci = fadd double %i.cd, %i.ch                ; 2 uses
  %indvars.iv.next235.3 = add nuw nsw i64 %indvars.iv234, 4 ; 2 uses
  %exitcond238.not.3 = icmp eq i64 %indvars.iv.next235.3, %wide.trip.count242
  br i1 %exitcond238.not.3, label %.loopexit170, label %.lr.ph184.new

._crit_edge189:                                   ; preds = %.loopexit170
  %i.cj = fcmp ogt double %.2131.lcssa, f0x3D19000000000000
  br i1 %i.cj, label %.loopexit, label %.lr.ph194

.lr.ph194:                                        ; preds = %._crit_edge189
  %i.ck = fadd double %i.aq, -1.000000e+00
  %i.cl = tail call double @llvm.fabs.f64(double %i.ck)
  %i.cm = fcmp ogt double %i.cl, f0x3D19000000000000
  %spec.select = zext i1 %i.cm to i32             ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !29
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %i.an
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !26 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !30 ; 2 uses
  %wide.trip.count247 = zext nneg i32 %i.j to i64
  %min.iters.check = icmp ult i32 %i.j, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph194
  %n.vec = and i64 %wide.trip.count242, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi307 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <2 x double>, ptr %i.cu, align 8, !tbaa !22
  %wide.load308 = load <2 x double>, ptr %i.cv, align 8, !tbaa !22
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load309 = load <2 x double>, ptr %i.cw, align 8, !tbaa !22
  %wide.load310 = load <2 x double>, ptr %i.cx, align 8, !tbaa !22
  %i.cy = fsub <2 x double> %wide.load, %wide.load309
  %i.cz = fsub <2 x double> %wide.load308, %wide.load310
  %i.da = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cy)
  %i.db = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cz)
  %i.dc = fcmp ogt <2 x double> %i.da, splat (double f0x3D19000000000000)
  %i.dd = fcmp ogt <2 x double> %i.db, splat (double f0x3D19000000000000)
  %i.de = or <2 x i1> %vec.phi, %i.dc             ; 2 uses
  %i.df = or <2 x i1> %vec.phi307, %i.dd          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.df, %i.de
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.dh = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not394 = icmp eq i2 %i.dh, 0
  %rdx.select = select i1 %.not394, i32 %spec.select, i32 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count242
  br i1 %cmp.n, label %._crit_edge195.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph194, %middle.block
  %indvars.iv244.ph = phi i64 [ 0, %.lr.ph194 ], [ %n.vec, %middle.block ]
  %.1133192.ph = phi i32 [ %spec.select, %.lr.ph194 ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %scalar.ph ], [ %indvars.iv244.ph, %scalar.ph.preheader ] ; 3 uses
  %.1133192 = phi i32 [ %spec.select157, %scalar.ph ], [ %.1133192.ph, %scalar.ph.preheader ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv244
  %i.dj = load double, ptr %i.di, align 8, !tbaa !22
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv244
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !22
  %i.dm = fsub double %i.dj, %i.dl
  %i.dn = tail call double @llvm.fabs.f64(double %i.dm)
  %i.do = fcmp ogt double %i.dn, f0x3D19000000000000
  %spec.select157 = select i1 %i.do, i32 1, i32 %.1133192 ; 2 uses
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %._crit_edge195.loopexit, label %scalar.ph, !llvm.loop !44

._crit_edge195.loopexit:                          ; preds = %scalar.ph, %middle.block
  %spec.select157.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select157, %scalar.ph ]
  %i.dp = icmp eq i32 %spec.select157.lcssa, 0
  br label %._crit_edge195

._crit_edge195:                                   ; preds = %._crit_edge195.loopexit, %.thread301
  %.1133.lcssa = phi i1 [ %i.av, %.thread301 ], [ %i.dp, %._crit_edge195.loopexit ] ; 2 uses
  br i1 %i.a, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge195
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !29
  %i.ds = add nsw i32 %i.j, -1
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !26
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dt
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !22
  %i.dy = tail call double @llvm.fabs.f64(double %i.dx)
  %i.dz = fcmp ule double %i.dy, f0x3D19000000000000
  %or.cond = select i1 %i.dz, i1 %.1133.lcssa, i1 false
  br i1 %or.cond, label %bb.l, label %.thread

bb.k:                                             ; preds = %._crit_edge195
  br i1 %.1133.lcssa, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %i.ea = add nsw i32 %i.j, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.thread
  %.not155162 = phi i1 [ false, %.thread ], [ true, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.eb = phi i32 [ %i.ea, %.thread ], [ %i.j, %bb.k ], [ %i.j, %bb.j ] ; 7 uses
  br i1 %i.k, label %.preheader169.lr.ph, label %._crit_edge201

.preheader169.lr.ph:                              ; preds = %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !29
  %wide.trip.count257 = zext nneg i32 %i.j to i64 ; 3 uses
  br label %.preheader169

.preheader169:                                    ; preds = %.preheader169.lr.ph, %.loopexit393
  %indvars.iv249 = phi i64 [ 0, %.preheader169.lr.ph ], [ %indvars.iv.next250, %.loopexit393 ] ; 6 uses
  %.0200 = phi i32 [ 0, %.preheader169.lr.ph ], [ %spec.select159.lcssa, %.loopexit393 ] ; 2 uses
  %3 = sub nsw i64 %wide.trip.count257, %indvars.iv249 ; 3 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv249
  %5 = load ptr, ptr %4, align 8, !tbaa !26       ; 2 uses
  %min.iters.check312 = icmp ult i64 %3, 4
  br i1 %min.iters.check312, label %scalar.ph311.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %.preheader169
  %n.vec314 = and i64 %3, -4                      ; 3 uses
  %i.ee = add i64 %indvars.iv249, %n.vec314
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv249
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next321, %vector.body315 ] ; 2 uses
  %vec.phi317 = phi <2 x i1> [ zeroinitializer, %vector.ph313 ], [ %i.em, %vector.body315 ]
  %vec.phi318 = phi <2 x i1> [ zeroinitializer, %vector.ph313 ], [ %i.en, %vector.body315 ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index316 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load319 = load <2 x double>, ptr %i.eg, align 8, !tbaa !22
  %wide.load320 = load <2 x double>, ptr %i.eh, align 8, !tbaa !22
  %i.ei = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load319)
  %i.ej = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load320)
  %i.ek = fcmp ogt <2 x double> %i.ei, splat (double f0x3D19000000000000)
  %i.el = fcmp ogt <2 x double> %i.ej, splat (double f0x3D19000000000000)
  %i.em = or <2 x i1> %vec.phi317, %i.ek          ; 2 uses
  %i.en = or <2 x i1> %vec.phi318, %i.el          ; 2 uses
  %index.next321 = add nuw i64 %index316, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next321, %n.vec314
  br i1 %i.eo, label %middle.block322, label %vector.body315, !llvm.loop !45

middle.block322:                                  ; preds = %vector.body315
  %bin.rdx323 = or <2 x i1> %i.en, %i.em
  %bin.rdx323.fr = freeze <2 x i1> %bin.rdx323
  %i.ep = bitcast <2 x i1> %bin.rdx323.fr to i2
  %.not395 = icmp eq i2 %i.ep, 0
  %rdx.select324 = select i1 %.not395, i32 %.0200, i32 1 ; 2 uses
  %cmp.n325 = icmp eq i64 %3, %n.vec314
  br i1 %cmp.n325, label %.loopexit393, label %scalar.ph311.preheader

scalar.ph311.preheader:                           ; preds = %.preheader169, %middle.block322
  %indvars.iv251.ph = phi i64 [ %indvars.iv249, %.preheader169 ], [ %i.ee, %middle.block322 ]
  %.1198.ph = phi i32 [ %.0200, %.preheader169 ], [ %rdx.select324, %middle.block322 ]
  br label %scalar.ph311

scalar.ph311:                                     ; preds = %scalar.ph311.preheader, %scalar.ph311
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %scalar.ph311 ], [ %indvars.iv251.ph, %scalar.ph311.preheader ] ; 2 uses
  %.1198 = phi i32 [ %spec.select159, %scalar.ph311 ], [ %.1198.ph, %scalar.ph311.preheader ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv251
  %i.er = load double, ptr %i.eq, align 8, !tbaa !22
  %i.es = tail call double @llvm.fabs.f64(double %i.er)
  %i.et = fcmp ogt double %i.es, f0x3D19000000000000
  %spec.select159 = select i1 %i.et, i32 1, i32 %.1198 ; 2 uses
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %exitcond255.not = icmp eq i64 %indvars.iv.next252, %wide.trip.count257
  br i1 %exitcond255.not, label %.loopexit393, label %scalar.ph311, !llvm.loop !46

.loopexit393:                                     ; preds = %scalar.ph311, %middle.block322
  %spec.select159.lcssa = phi i32 [ %rdx.select324, %middle.block322 ], [ %spec.select159, %scalar.ph311 ] ; 2 uses
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count257
  br i1 %exitcond258.not, label %._crit_edge201, label %.preheader169

._crit_edge201:                                   ; preds = %.loopexit393, %bb.l
  %.0.lcssa = phi i32 [ 0, %bb.l ], [ %spec.select159.lcssa, %.loopexit393 ] ; 2 uses
  %i.eu = tail call ptr @MRIStepCoupling_Alloc(i32 noundef 1, i32 noundef %i.eb, i32 noundef %.0.lcssa) ; 10 uses
  %.not156 = icmp eq ptr %i.eu, null
  br i1 %.not156, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %._crit_edge201
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i32 %1, ptr %i.ev, align 4, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i32 %2, ptr %i.ew, align 8, !tbaa !20
  %i.ex = load i32, ptr %i.i, align 8, !tbaa !37  ; 11 uses
  %i.ey = icmp sgt i32 %i.ex, 0                   ; 2 uses
  br i1 %i.ey, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.m
  %i.ez = load ptr, ptr %i.e, align 8, !tbaa !28  ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !21 ; 7 uses
  %wide.trip.count262 = zext nneg i32 %i.ex to i64 ; 5 uses
  %min.iters.check329 = icmp ult i32 %i.ex, 8
  %i.fc = ptrtoaddr ptr %i.fb to i64
  %i.fd = ptrtoaddr ptr %i.ez to i64
  %i.fe = sub i64 %i.fd, %i.fc
  %diff.check = icmp ugt i64 %i.fe, -32
  %or.cond398 = select i1 %min.iters.check329, i1 true, i1 %diff.check
  br i1 %or.cond398, label %scalar.ph328.preheader, label %vector.ph330

vector.ph330:                                     ; preds = %.lr.ph205
  %n.vec331 = and i64 %wide.trip.count262, 2147483644 ; 3 uses
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph330
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next336, %vector.body332 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index333 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load334 = load <2 x double>, ptr %i.ff, align 8, !tbaa !22
  %wide.load335 = load <2 x double>, ptr %i.fg, align 8, !tbaa !22
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index333 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <2 x double> %wide.load334, ptr %i.fh, align 8, !tbaa !22
  store <2 x double> %wide.load335, ptr %i.fi, align 8, !tbaa !22
  %index.next336 = add nuw i64 %index333, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next336, %n.vec331
  br i1 %i.fj, label %middle.block337, label %vector.body332, !llvm.loop !47

middle.block337:                                  ; preds = %vector.body332
  %cmp.n338 = icmp eq i64 %n.vec331, %wide.trip.count262
  br i1 %cmp.n338, label %._crit_edge206, label %scalar.ph328.preheader

scalar.ph328.preheader:                           ; preds = %.lr.ph205, %middle.block337
  %indvars.iv259.ph = phi i64 [ 0, %.lr.ph205 ], [ %n.vec331, %middle.block337 ] ; 3 uses
  %xtraiter411 = and i64 %wide.trip.count262, 3   ; 2 uses
  %lcmp.mod412.not = icmp eq i64 %xtraiter411, 0
  br i1 %lcmp.mod412.not, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol

scalar.ph328.prol:                                ; preds = %scalar.ph328.preheader, %scalar.ph328.prol
  %indvars.iv259.prol = phi i64 [ %indvars.iv.next260.prol, %scalar.ph328.prol ], [ %indvars.iv259.ph, %scalar.ph328.preheader ] ; 3 uses
  %prol.iter413 = phi i64 [ %prol.iter413.next, %scalar.ph328.prol ], [ 0, %scalar.ph328.preheader ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv259.prol
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !22
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv259.prol
  store double %i.fl, ptr %i.fm, align 8, !tbaa !22
  %indvars.iv.next260.prol = add nuw nsw i64 %indvars.iv259.prol, 1 ; 2 uses
  %prol.iter413.next = add i64 %prol.iter413, 1   ; 2 uses
  %prol.iter413.cmp.not = icmp eq i64 %prol.iter413.next, %xtraiter411
  br i1 %prol.iter413.cmp.not, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol, !llvm.loop !48

scalar.ph328.prol.loopexit:                       ; preds = %scalar.ph328.prol, %scalar.ph328.preheader
  %indvars.iv259.unr = phi i64 [ %indvars.iv259.ph, %scalar.ph328.preheader ], [ %indvars.iv.next260.prol, %scalar.ph328.prol ]
  %i.fn = sub nsw i64 %indvars.iv259.ph, %wide.trip.count262
  %i.fo = icmp ugt i64 %i.fn, -4
  br i1 %i.fo, label %._crit_edge206, label %scalar.ph328

scalar.ph328:                                     ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328
  %indvars.iv259 = phi i64 [ %indvars.iv.next260.3, %scalar.ph328 ], [ %indvars.iv259.unr, %scalar.ph328.prol.loopexit ] ; 6 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv259
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !22
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv259
  store double %i.fq, ptr %i.fr, align 8, !tbaa !22
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next260
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !22
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next260
  store double %i.ft, ptr %i.fu, align 8, !tbaa !22
  %indvars.iv.next260.1 = add nuw nsw i64 %indvars.iv259, 2 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next260.1
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !22
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next260.1
  store double %i.fw, ptr %i.fx, align 8, !tbaa !22
  %indvars.iv.next260.2 = add nuw nsw i64 %indvars.iv259, 3 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next260.2
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !22
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next260.2
  store double %i.fz, ptr %i.ga, align 8, !tbaa !22
  %indvars.iv.next260.3 = add nuw nsw i64 %indvars.iv259, 4 ; 2 uses
  %exitcond263.not.3 = icmp eq i64 %indvars.iv.next260.3, %wide.trip.count262
  br i1 %exitcond263.not.3, label %._crit_edge206, label %scalar.ph328, !llvm.loop !49

._crit_edge206:                                   ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328, %middle.block337, %bb.m
  br i1 %.not155162, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge206
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !21
  %i.gd = sext i32 %i.eb to i64
  %i.ge = getelementptr [8 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 -8
  store double 1.000000e+00, ptr %i.gf, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge206
  %i.gg = icmp eq i32 %.0.lcssa, 0
  %.0128.in.v = select i1 %i.gg, i64 32, i64 40
  %.0128.in = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.0128.in.v
  %.0128 = load ptr, ptr %.0128.in, align 8, !tbaa !50 ; 4 uses
  %i.gh = icmp sgt i32 %i.eb, 0
  br i1 %i.gh, label %.preheader168.lr.ph.split, label %.preheader167

.preheader168.lr.ph.split:                        ; preds = %bb.o
  %i.gi = load ptr, ptr %.0128, align 8, !tbaa !25 ; 9 uses
  %i.gj = zext nneg i32 %i.eb to i64              ; 3 uses
  %i.gk = shl nuw nsw i64 %i.gj, 3                ; 9 uses
  %xtraiter414 = and i64 %i.gj, 7                 ; 3 uses
  %i.gl = icmp ult i32 %i.eb, 8
  br i1 %i.gl, label %.preheader168.epil.preheader, label %.preheader168.lr.ph.split.new

.preheader168.lr.ph.split.new:                    ; preds = %.preheader168.lr.ph.split
  %unroll_iter418 = and i64 %i.gj, 2147483640
  br label %.preheader168

.preheader168:                                    ; preds = %.preheader168, %.preheader168.lr.ph.split.new
  %indvars.iv267 = phi i64 [ 0, %.preheader168.lr.ph.split.new ], [ %indvars.iv.next268.7, %.preheader168 ] ; 9 uses
  %niter419 = phi i64 [ 0, %.preheader168.lr.ph.split.new ], [ %niter419.next.7, %.preheader168 ]
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv267
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gn, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv267
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gq, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv267
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gt, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv267
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gw, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv267
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gz, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv267
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hc, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv267
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hf, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv267
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 56
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hi, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %indvars.iv.next268.7 = add nuw nsw i64 %indvars.iv267, 8 ; 2 uses
  %niter419.next.7 = add i64 %niter419, 8         ; 2 uses
  %niter419.ncmp.7 = icmp eq i64 %niter419.next.7, %unroll_iter418
  br i1 %niter419.ncmp.7, label %.preheader167.loopexit.unr-lcssa, label %.preheader168

.preheader167.loopexit.unr-lcssa:                 ; preds = %.preheader168
  %lcmp.mod416.not = icmp eq i64 %xtraiter414, 0
  br i1 %lcmp.mod416.not, label %.preheader167, label %.preheader168.epil.preheader

.preheader168.epil.preheader:                     ; preds = %.preheader167.loopexit.unr-lcssa, %.preheader168.lr.ph.split
  %indvars.iv267.epil.init = phi i64 [ 0, %.preheader168.lr.ph.split ], [ %indvars.iv.next268.7, %.preheader167.loopexit.unr-lcssa ]
  %lcmp.mod417 = icmp ne i64 %xtraiter414, 0
  tail call void @llvm.assume(i1 %lcmp.mod417)
  br label %.preheader168.epil

.preheader168.epil:                               ; preds = %.preheader168.epil, %.preheader168.epil.preheader
  %indvars.iv267.epil = phi i64 [ %indvars.iv267.epil.init, %.preheader168.epil.preheader ], [ %indvars.iv.next268.epil, %.preheader168.epil ] ; 2 uses
  %epil.iter415 = phi i64 [ 0, %.preheader168.epil.preheader ], [ %epil.iter415.next, %.preheader168.epil ]
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv267.epil
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hk, i8 0, i64 %i.gk, i1 false), !tbaa !22
end_hunk_0
