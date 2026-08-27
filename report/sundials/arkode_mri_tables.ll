Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_mri_tables?download=true
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@MRIStepCoupling_MIStoMRI:bb.a
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv224 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !22
  %i.ba = getelementptr i8, ptr %i.ay, i64 -8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !22
  %i.bc = fsub double %i.az, %i.bb
  %i.bd = fcmp olt double %i.bc, f0xBD19000000000000
  br i1 %i.bd, label %.loopexit, label %bb.h

.loopexit167:                                     ; preds = %.prol.loopexit, %.lr.ph181.new, %bb.i
  %.2131.lcssa = phi double [ %.1130184, %bb.i ], [ %.lcssa402.unr, %.prol.loopexit ], [ %i.ci, %.lr.ph181.new ] ; 2 uses
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %._crit_edge186, label %bb.i

bb.i:                                             ; preds = %.lr.ph185, %.loopexit167
  %indvars.iv236 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next237, %.loopexit167 ] ; 4 uses
  %indvars.iv229 = phi i64 [ 1, %.lr.ph185 ], [ %indvars.iv.next230, %.loopexit167 ] ; 3 uses
  %.1130184 = phi double [ 0.000000e+00, %.lr.ph185 ], [ %.2131.lcssa, %.loopexit167 ] ; 3 uses
  %i.be = sub i64 %i.ax, %indvars.iv236
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 3 uses
  %i.bf = icmp slt i64 %indvars.iv.next237, %i.an
  br i1 %i.bf, label %.lr.ph181, label %.loopexit167

.lr.ph181:                                        ; preds = %bb.i
  %i.bg = xor i64 %indvars.iv236, -1
  %i.bh = add nsw i64 %i.bg, %wide.trip.count239
  %i.bi = load ptr, ptr %i.aw, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv236
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !26 ; 5 uses
  %xtraiter407 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod408.not = icmp eq i64 %xtraiter407, 0
  br i1 %lcmp.mod408.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph181, %.prol.preheader
  %indvars.iv231.prol = phi i64 [ %indvars.iv.next232.prol, %.prol.preheader ], [ %indvars.iv229, %.lr.ph181 ] ; 2 uses
  %.2131179.prol = phi double [ %i.bo, %.prol.preheader ], [ %.1130184, %.lr.ph181 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph181 ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv231.prol
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !22
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm)
  %i.bo = fadd double %.2131179.prol, %i.bn       ; 3 uses
  %indvars.iv.next232.prol = add nuw nsw i64 %indvars.iv231.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter407
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !40

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph181
  %.lcssa402.unr = phi double [ poison, %.lr.ph181 ], [ %i.bo, %.prol.preheader ]
  %indvars.iv231.unr = phi i64 [ %indvars.iv229, %.lr.ph181 ], [ %indvars.iv.next232.prol, %.prol.preheader ]
  %.2131179.unr = phi double [ %.1130184, %.lr.ph181 ], [ %i.bo, %.prol.preheader ]
  %i.bp = icmp ult i64 %i.be, 3
  br i1 %i.bp, label %.loopexit167, label %.lr.ph181.new

.lr.ph181.new:                                    ; preds = %.prol.loopexit, %.lr.ph181.new
  %indvars.iv231 = phi i64 [ %indvars.iv.next232.3, %.lr.ph181.new ], [ %indvars.iv231.unr, %.prol.loopexit ] ; 5 uses
  %.2131179 = phi double [ %i.ci, %.lr.ph181.new ], [ %.2131179.unr, %.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv231
  %i.br = load double, ptr %i.bq, align 8, !tbaa !22
  %i.bs = tail call double @llvm.fabs.f64(double %i.br)
  %i.bt = fadd double %.2131179, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv231
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !22
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %i.by = fadd double %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv231
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !22
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fadd double %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv231
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !22
  %i.ch = tail call double @llvm.fabs.f64(double %i.cg)
  %i.ci = fadd double %i.cd, %i.ch                ; 2 uses
  %indvars.iv.next232.3 = add nuw nsw i64 %indvars.iv231, 4 ; 2 uses
  %exitcond235.not.3 = icmp eq i64 %indvars.iv.next232.3, %wide.trip.count239
  br i1 %exitcond235.not.3, label %.loopexit167, label %.lr.ph181.new

._crit_edge186:                                   ; preds = %.loopexit167
  %i.cj = fcmp ogt double %.2131.lcssa, f0x3D19000000000000
  br i1 %i.cj, label %.loopexit, label %.lr.ph191

.lr.ph191:                                        ; preds = %._crit_edge186
  %i.ck = fadd double %i.aq, -1.000000e+00
  %i.cl = tail call double @llvm.fabs.f64(double %i.ck)
  %i.cm = fcmp ogt double %i.cl, f0x3D19000000000000
  %.0132 = zext i1 %i.cm to i32                   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !29
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %i.an
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !26 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !30 ; 2 uses
  %wide.trip.count244 = zext nneg i32 %i.j to i64
  %min.iters.check = icmp ult i32 %i.j, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph191
  %n.vec = and i64 %wide.trip.count239, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi305 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <2 x double>, ptr %i.cu, align 8, !tbaa !22
  %wide.load306 = load <2 x double>, ptr %i.cv, align 8, !tbaa !22
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load307 = load <2 x double>, ptr %i.cw, align 8, !tbaa !22
  %wide.load308 = load <2 x double>, ptr %i.cx, align 8, !tbaa !22
  %i.cy = fsub <2 x double> %wide.load, %wide.load307
  %i.cz = fsub <2 x double> %wide.load306, %wide.load308
  %i.da = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cy)
  %i.db = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cz)
  %i.dc = fcmp ogt <2 x double> %i.da, splat (double f0x3D19000000000000)
  %i.dd = fcmp ogt <2 x double> %i.db, splat (double f0x3D19000000000000)
  %i.de = or <2 x i1> %vec.phi, %i.dc             ; 2 uses
  %i.df = or <2 x i1> %vec.phi305, %i.dd          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.df, %i.de
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.dh = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not392 = icmp eq i2 %i.dh, 0
  %rdx.select = select i1 %.not392, i32 %.0132, i32 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count239
  br i1 %cmp.n, label %._crit_edge192.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph191, %middle.block
  %indvars.iv241.ph = phi i64 [ 0, %.lr.ph191 ], [ %n.vec, %middle.block ]
  %.1133189.ph = phi i32 [ %.0132, %.lr.ph191 ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %scalar.ph ], [ %indvars.iv241.ph, %scalar.ph.preheader ] ; 3 uses
  %.1133189 = phi i32 [ %.2134, %scalar.ph ], [ %.1133189.ph, %scalar.ph.preheader ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv241
  %i.dj = load double, ptr %i.di, align 8, !tbaa !22
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv241
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !22
  %i.dm = fsub double %i.dj, %i.dl
  %i.dn = tail call double @llvm.fabs.f64(double %i.dm)
  %i.do = fcmp ogt double %i.dn, f0x3D19000000000000
  %.2134 = select i1 %i.do, i32 1, i32 %.1133189  ; 2 uses
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next242, %wide.trip.count244
  br i1 %exitcond245.not, label %._crit_edge192.loopexit, label %scalar.ph, !llvm.loop !44

._crit_edge192.loopexit:                          ; preds = %scalar.ph, %middle.block
  %.2134.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.2134, %scalar.ph ]
  %i.dp = icmp eq i32 %.2134.lcssa, 0
  br label %._crit_edge192

._crit_edge192:                                   ; preds = %._crit_edge192.loopexit, %.thread299
  %.1133.lcssa = phi i1 [ %i.av, %.thread299 ], [ %i.dp, %._crit_edge192.loopexit ] ; 2 uses
  br i1 %i.a, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge192
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

bb.k:                                             ; preds = %._crit_edge192
  br i1 %.1133.lcssa, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %i.ea = add nsw i32 %i.j, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.thread
  %.not155159 = phi i1 [ false, %.thread ], [ true, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.eb = phi i32 [ %i.ea, %.thread ], [ %i.j, %bb.k ], [ %i.j, %bb.j ] ; 7 uses
  br i1 %i.k, label %.preheader166.lr.ph, label %._crit_edge198

.preheader166.lr.ph:                              ; preds = %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !29
  %wide.trip.count254 = zext nneg i32 %i.j to i64 ; 3 uses
  br label %.preheader166

.preheader166:                                    ; preds = %.preheader166.lr.ph, %.loopexit391
  %indvars.iv246 = phi i64 [ 0, %.preheader166.lr.ph ], [ %indvars.iv.next247, %.loopexit391 ] ; 6 uses
  %.0197 = phi i32 [ 0, %.preheader166.lr.ph ], [ %.2.lcssa, %.loopexit391 ] ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv246
  %4 = load ptr, ptr %3, align 8, !tbaa !26       ; 2 uses
  %5 = sub nsw i64 %wide.trip.count254, %indvars.iv246 ; 3 uses
  %min.iters.check310 = icmp ult i64 %5, 4
  br i1 %min.iters.check310, label %scalar.ph309.preheader, label %vector.ph311

vector.ph311:                                     ; preds = %.preheader166
  %n.vec312 = and i64 %5, -4                      ; 3 uses
  %i.ee = add i64 %indvars.iv246, %n.vec312
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv246
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph311
  %index314 = phi i64 [ 0, %vector.ph311 ], [ %index.next319, %vector.body313 ] ; 2 uses
  %vec.phi315 = phi <2 x i1> [ zeroinitializer, %vector.ph311 ], [ %i.em, %vector.body313 ]
  %vec.phi316 = phi <2 x i1> [ zeroinitializer, %vector.ph311 ], [ %i.en, %vector.body313 ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index314 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load317 = load <2 x double>, ptr %i.eg, align 8, !tbaa !22
  %wide.load318 = load <2 x double>, ptr %i.eh, align 8, !tbaa !22
  %i.ei = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load317)
  %i.ej = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load318)
  %i.ek = fcmp ogt <2 x double> %i.ei, splat (double f0x3D19000000000000)
  %i.el = fcmp ogt <2 x double> %i.ej, splat (double f0x3D19000000000000)
  %i.em = or <2 x i1> %vec.phi315, %i.ek          ; 2 uses
  %i.en = or <2 x i1> %vec.phi316, %i.el          ; 2 uses
  %index.next319 = add nuw i64 %index314, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next319, %n.vec312
  br i1 %i.eo, label %middle.block320, label %vector.body313, !llvm.loop !45

middle.block320:                                  ; preds = %vector.body313
  %bin.rdx321 = or <2 x i1> %i.en, %i.em
  %bin.rdx321.fr = freeze <2 x i1> %bin.rdx321
  %i.ep = bitcast <2 x i1> %bin.rdx321.fr to i2
  %.not393 = icmp eq i2 %i.ep, 0
  %rdx.select322 = select i1 %.not393, i32 %.0197, i32 1 ; 2 uses
  %cmp.n323 = icmp eq i64 %5, %n.vec312
  br i1 %cmp.n323, label %.loopexit391, label %scalar.ph309.preheader

scalar.ph309.preheader:                           ; preds = %.preheader166, %middle.block320
  %indvars.iv248.ph = phi i64 [ %indvars.iv246, %.preheader166 ], [ %i.ee, %middle.block320 ]
  %.1195.ph = phi i32 [ %.0197, %.preheader166 ], [ %rdx.select322, %middle.block320 ]
  br label %scalar.ph309

scalar.ph309:                                     ; preds = %scalar.ph309.preheader, %scalar.ph309
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %scalar.ph309 ], [ %indvars.iv248.ph, %scalar.ph309.preheader ] ; 2 uses
  %.1195 = phi i32 [ %.2, %scalar.ph309 ], [ %.1195.ph, %scalar.ph309.preheader ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv248
  %i.er = load double, ptr %i.eq, align 8, !tbaa !22
  %i.es = tail call double @llvm.fabs.f64(double %i.er)
  %i.et = fcmp ogt double %i.es, f0x3D19000000000000
  %.2 = select i1 %i.et, i32 1, i32 %.1195        ; 2 uses
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond252.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count254
  br i1 %exitcond252.not, label %.loopexit391, label %scalar.ph309, !llvm.loop !46

.loopexit391:                                     ; preds = %scalar.ph309, %middle.block320
  %.2.lcssa = phi i32 [ %rdx.select322, %middle.block320 ], [ %.2, %scalar.ph309 ] ; 2 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond255.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count254
  br i1 %exitcond255.not, label %._crit_edge198, label %.preheader166

._crit_edge198:                                   ; preds = %.loopexit391, %bb.l
  %.0.lcssa = phi i32 [ 0, %bb.l ], [ %.2.lcssa, %.loopexit391 ] ; 2 uses
  %i.eu = tail call ptr @MRIStepCoupling_Alloc(i32 noundef 1, i32 noundef %i.eb, i32 noundef %.0.lcssa) ; 10 uses
  %.not156 = icmp eq ptr %i.eu, null
  br i1 %.not156, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %._crit_edge198
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i32 %1, ptr %i.ev, align 4, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i32 %2, ptr %i.ew, align 8, !tbaa !20
  %i.ex = load i32, ptr %i.i, align 8, !tbaa !37  ; 11 uses
  %i.ey = icmp sgt i32 %i.ex, 0                   ; 2 uses
  br i1 %i.ey, label %.lr.ph202, label %._crit_edge203

.lr.ph202:                                        ; preds = %bb.m
  %i.ez = load ptr, ptr %i.e, align 8, !tbaa !28  ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !21 ; 7 uses
  %wide.trip.count259 = zext nneg i32 %i.ex to i64 ; 5 uses
  %min.iters.check327 = icmp ult i32 %i.ex, 8
  %i.fc = ptrtoaddr ptr %i.fb to i64
  %i.fd = ptrtoaddr ptr %i.ez to i64
  %i.fe = sub i64 %i.fd, %i.fc
  %diff.check = icmp ugt i64 %i.fe, -32
  %or.cond396 = select i1 %min.iters.check327, i1 true, i1 %diff.check
  br i1 %or.cond396, label %scalar.ph326.preheader, label %vector.ph328

vector.ph328:                                     ; preds = %.lr.ph202
  %n.vec329 = and i64 %wide.trip.count259, 2147483644 ; 3 uses
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next334, %vector.body330 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index331 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load332 = load <2 x double>, ptr %i.ff, align 8, !tbaa !22
  %wide.load333 = load <2 x double>, ptr %i.fg, align 8, !tbaa !22
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index331 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <2 x double> %wide.load332, ptr %i.fh, align 8, !tbaa !22
  store <2 x double> %wide.load333, ptr %i.fi, align 8, !tbaa !22
  %index.next334 = add nuw i64 %index331, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next334, %n.vec329
  br i1 %i.fj, label %middle.block335, label %vector.body330, !llvm.loop !47

middle.block335:                                  ; preds = %vector.body330
  %cmp.n336 = icmp eq i64 %n.vec329, %wide.trip.count259
  br i1 %cmp.n336, label %._crit_edge203, label %scalar.ph326.preheader

scalar.ph326.preheader:                           ; preds = %.lr.ph202, %middle.block335
  %indvars.iv256.ph = phi i64 [ 0, %.lr.ph202 ], [ %n.vec329, %middle.block335 ] ; 3 uses
  %xtraiter409 = and i64 %wide.trip.count259, 3   ; 2 uses
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  br i1 %lcmp.mod410.not, label %scalar.ph326.prol.loopexit, label %scalar.ph326.prol

scalar.ph326.prol:                                ; preds = %scalar.ph326.preheader, %scalar.ph326.prol
  %indvars.iv256.prol = phi i64 [ %indvars.iv.next257.prol, %scalar.ph326.prol ], [ %indvars.iv256.ph, %scalar.ph326.preheader ] ; 3 uses
  %prol.iter411 = phi i64 [ %prol.iter411.next, %scalar.ph326.prol ], [ 0, %scalar.ph326.preheader ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv256.prol
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !22
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv256.prol
  store double %i.fl, ptr %i.fm, align 8, !tbaa !22
  %indvars.iv.next257.prol = add nuw nsw i64 %indvars.iv256.prol, 1 ; 2 uses
  %prol.iter411.next = add i64 %prol.iter411, 1   ; 2 uses
  %prol.iter411.cmp.not = icmp eq i64 %prol.iter411.next, %xtraiter409
  br i1 %prol.iter411.cmp.not, label %scalar.ph326.prol.loopexit, label %scalar.ph326.prol, !llvm.loop !48

scalar.ph326.prol.loopexit:                       ; preds = %scalar.ph326.prol, %scalar.ph326.preheader
  %indvars.iv256.unr = phi i64 [ %indvars.iv256.ph, %scalar.ph326.preheader ], [ %indvars.iv.next257.prol, %scalar.ph326.prol ]
  %i.fn = sub nsw i64 %indvars.iv256.ph, %wide.trip.count259
  %i.fo = icmp ugt i64 %i.fn, -4
  br i1 %i.fo, label %._crit_edge203, label %scalar.ph326

scalar.ph326:                                     ; preds = %scalar.ph326.prol.loopexit, %scalar.ph326
  %indvars.iv256 = phi i64 [ %indvars.iv.next257.3, %scalar.ph326 ], [ %indvars.iv256.unr, %scalar.ph326.prol.loopexit ] ; 6 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv256
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !22
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv256
  store double %i.fq, ptr %i.fr, align 8, !tbaa !22
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next257
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !22
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next257
  store double %i.ft, ptr %i.fu, align 8, !tbaa !22
  %indvars.iv.next257.1 = add nuw nsw i64 %indvars.iv256, 2 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next257.1
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !22
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next257.1
  store double %i.fw, ptr %i.fx, align 8, !tbaa !22
  %indvars.iv.next257.2 = add nuw nsw i64 %indvars.iv256, 3 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next257.2
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !22
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next257.2
  store double %i.fz, ptr %i.ga, align 8, !tbaa !22
  %indvars.iv.next257.3 = add nuw nsw i64 %indvars.iv256, 4 ; 2 uses
  %exitcond260.not.3 = icmp eq i64 %indvars.iv.next257.3, %wide.trip.count259
  br i1 %exitcond260.not.3, label %._crit_edge203, label %scalar.ph326, !llvm.loop !49

._crit_edge203:                                   ; preds = %scalar.ph326.prol.loopexit, %scalar.ph326, %middle.block335, %bb.m
  br i1 %.not155159, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge203
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !21
  %i.gd = sext i32 %i.eb to i64
  %i.ge = getelementptr [8 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 -8
  store double 1.000000e+00, ptr %i.gf, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge203
  %i.gg = icmp eq i32 %.0.lcssa, 0
  %.0128.in.v = select i1 %i.gg, i64 32, i64 40
  %.0128.in = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.0128.in.v
  %.0128 = load ptr, ptr %.0128.in, align 8, !tbaa !50 ; 4 uses
  %i.gh = icmp sgt i32 %i.eb, 0
  br i1 %i.gh, label %.preheader165.lr.ph.split, label %.preheader164

.preheader165.lr.ph.split:                        ; preds = %bb.o
  %i.gi = load ptr, ptr %.0128, align 8, !tbaa !25 ; 9 uses
  %i.gj = zext nneg i32 %i.eb to i64              ; 3 uses
  %i.gk = shl nuw nsw i64 %i.gj, 3                ; 9 uses
  %xtraiter412 = and i64 %i.gj, 7                 ; 3 uses
  %i.gl = icmp ult i32 %i.eb, 8
  br i1 %i.gl, label %.preheader165.epil.preheader, label %.preheader165.lr.ph.split.new

.preheader165.lr.ph.split.new:                    ; preds = %.preheader165.lr.ph.split
  %unroll_iter416 = and i64 %i.gj, 2147483640
  br label %.preheader165

.preheader165:                                    ; preds = %.preheader165, %.preheader165.lr.ph.split.new
  %indvars.iv264 = phi i64 [ 0, %.preheader165.lr.ph.split.new ], [ %indvars.iv.next265.7, %.preheader165 ] ; 9 uses
  %niter417 = phi i64 [ 0, %.preheader165.lr.ph.split.new ], [ %niter417.next.7, %.preheader165 ]
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv264
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gn, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv264
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gq, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv264
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gt, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv264
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gw, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv264
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gz, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv264
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hc, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv264
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hf, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv264
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 56
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hi, i8 0, i64 %i.gk, i1 false), !tbaa !22
  %indvars.iv.next265.7 = add nuw nsw i64 %indvars.iv264, 8 ; 2 uses
  %niter417.next.7 = add i64 %niter417, 8         ; 2 uses
  %niter417.ncmp.7 = icmp eq i64 %niter417.next.7, %unroll_iter416
  br i1 %niter417.ncmp.7, label %.preheader164.loopexit.unr-lcssa, label %.preheader165

.preheader164.loopexit.unr-lcssa:                 ; preds = %.preheader165
  %lcmp.mod414.not = icmp eq i64 %xtraiter412, 0
  br i1 %lcmp.mod414.not, label %.preheader164, label %.preheader165.epil.preheader

.preheader165.epil.preheader:                     ; preds = %.preheader164.loopexit.unr-lcssa, %.preheader165.lr.ph.split
  %indvars.iv264.epil.init = phi i64 [ 0, %.preheader165.lr.ph.split ], [ %indvars.iv.next265.7, %.preheader164.loopexit.unr-lcssa ]
  %lcmp.mod415 = icmp ne i64 %xtraiter412, 0
  tail call void @llvm.assume(i1 %lcmp.mod415)
  br label %.preheader165.epil

.preheader165.epil:                               ; preds = %.preheader165.epil, %.preheader165.epil.preheader
  %indvars.iv264.epil = phi i64 [ %indvars.iv264.epil.init, %.preheader165.epil.preheader ], [ %indvars.iv.next265.epil, %.preheader165.epil ] ; 2 uses
  %epil.iter413 = phi i64 [ 0, %.preheader165.epil.preheader ], [ %epil.iter413.next, %.preheader165.epil ]
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv264.epil
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hk, i8 0, i64 %i.gk, i1 false), !tbaa !22
end_hunk_0
