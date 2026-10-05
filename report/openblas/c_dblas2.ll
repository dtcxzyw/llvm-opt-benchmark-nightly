Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblas2?download=true
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 53
begin_hunk_0_@cdspmv_:bb.a

iter.check222:                                    ; preds = %.preheader90.preheader, %.loopexit236
  %indvars.iv161 = phi i64 [ 0, %.preheader90.preheader ], [ %indvars.iv.next162, %.loopexit236 ] ; 3 uses
  %indvars.iv159 = phi i64 [ 1, %.preheader90.preheader ], [ %indvars.iv.next160, %.loopexit236 ] ; 10 uses
  %.0109 = phi i64 [ 0, %.preheader90.preheader ], [ %indvars.iv.next149.lcssa, %.loopexit236 ] ; 5 uses
  %invariant.gep190 = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv161 ; 11 uses
  %min.iters.check207 = icmp samesign ugt i64 %indvars.iv159, 3
  %or.cond = and i1 %min.iters.check207, %ident.check206.not
  br i1 %or.cond, label %vector.main.loop.iter.check208, label %vec.epilog.scalar.ph223.preheader

vector.main.loop.iter.check208:                   ; preds = %iter.check222
  %min.iters.check209 = icmp samesign ult i64 %indvars.iv159, 16
  br i1 %min.iters.check209, label %vec.epilog.ph226, label %vector.ph210

vector.ph210:                                     ; preds = %vector.main.loop.iter.check208
  %i.r = and i64 %indvars.iv159, 12
  %n.vec211 = and i64 %indvars.iv159, 9223372036854775792 ; 5 uses
  %i.s = add i64 %.0109, %n.vec211                ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %4, i64 %.0109
  br label %vector.body212

vector.body212:                                   ; preds = %vector.ph210, %vector.body212
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next218, %vector.body212 ] ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %index213 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %wide.load214 = load <4 x double>, ptr %i.u, align 8, !tbaa !10
  %wide.load215 = load <4 x double>, ptr %i.v, align 8, !tbaa !10
  %wide.load216 = load <4 x double>, ptr %i.w, align 8, !tbaa !10
  %wide.load217 = load <4 x double>, ptr %i.x, align 8, !tbaa !10
  %i.y = getelementptr [8 x i8], ptr %invariant.gep190, i64 %index213 ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 32
  %i.aa = getelementptr i8, ptr %i.y, i64 64
  %i.ab = getelementptr i8, ptr %i.y, i64 96
  store <4 x double> %wide.load214, ptr %i.y, align 8, !tbaa !10
  store <4 x double> %wide.load215, ptr %i.z, align 8, !tbaa !10
  store <4 x double> %wide.load216, ptr %i.aa, align 8, !tbaa !10
  store <4 x double> %wide.load217, ptr %i.ab, align 8, !tbaa !10
  %index.next218 = add nuw i64 %index213, 16      ; 2 uses
  %i.ac = icmp eq i64 %index.next218, %n.vec211
  br i1 %i.ac, label %middle.block219, label %vector.body212, !llvm.loop !134

middle.block219:                                  ; preds = %vector.body212
  %cmp.n220 = icmp eq i64 %indvars.iv159, %n.vec211
  br i1 %cmp.n220, label %.loopexit236, label %vec.epilog.iter.check224

vec.epilog.iter.check224:                         ; preds = %middle.block219
  %min.epilog.iters.check225 = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check225, label %vec.epilog.scalar.ph223.preheader, label %vec.epilog.ph226, !prof !14

vec.epilog.ph226:                                 ; preds = %vector.main.loop.iter.check208, %vec.epilog.iter.check224
  %vec.epilog.resume.val221 = phi i64 [ %n.vec211, %vec.epilog.iter.check224 ], [ 0, %vector.main.loop.iter.check208 ]
  %n.vec227 = and i64 %indvars.iv159, 9223372036854775804 ; 4 uses
  %i.ad = add i64 %.0109, %n.vec227               ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %4, i64 %.0109
  br label %vec.epilog.vector.body228

vec.epilog.vector.body228:                        ; preds = %vec.epilog.vector.body228, %vec.epilog.ph226
  %index229 = phi i64 [ %vec.epilog.resume.val221, %vec.epilog.ph226 ], [ %index.next231, %vec.epilog.vector.body228 ] ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %index229
  %wide.load230 = load <4 x double>, ptr %i.af, align 8, !tbaa !10
  %i.ag = getelementptr [8 x i8], ptr %invariant.gep190, i64 %index229
  store <4 x double> %wide.load230, ptr %i.ag, align 8, !tbaa !10
  %index.next231 = add nuw i64 %index229, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next231, %n.vec227
  br i1 %i.ah, label %vec.epilog.middle.block232, label %vec.epilog.vector.body228, !llvm.loop !135

vec.epilog.middle.block232:                       ; preds = %vec.epilog.vector.body228
  %cmp.n233 = icmp eq i64 %indvars.iv159, %n.vec227
  br i1 %cmp.n233, label %.loopexit236, label %vec.epilog.scalar.ph223.preheader

vec.epilog.scalar.ph223.preheader:                ; preds = %iter.check222, %vec.epilog.iter.check224, %vec.epilog.middle.block232
  %indvars.iv150.ph = phi i64 [ 0, %iter.check222 ], [ %n.vec211, %vec.epilog.iter.check224 ], [ %n.vec227, %vec.epilog.middle.block232 ] ; 4 uses
  %indvars.iv148.ph = phi i64 [ %.0109, %iter.check222 ], [ %i.s, %vec.epilog.iter.check224 ], [ %i.ad, %vec.epilog.middle.block232 ] ; 2 uses
  %i.ai = sub nsw i64 %indvars.iv159, %indvars.iv150.ph
  %i.aj = sub nsw i64 %indvars.iv161, %indvars.iv150.ph
  %xtraiter245 = and i64 %i.ai, 7                 ; 2 uses
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %vec.epilog.scalar.ph223.prol.loopexit, label %vec.epilog.scalar.ph223.prol

vec.epilog.scalar.ph223.prol:                     ; preds = %vec.epilog.scalar.ph223.preheader, %vec.epilog.scalar.ph223.prol
  %indvars.iv150.prol = phi i64 [ %indvars.iv.next151.prol, %vec.epilog.scalar.ph223.prol ], [ %indvars.iv150.ph, %vec.epilog.scalar.ph223.preheader ] ; 2 uses
  %indvars.iv148.prol = phi i64 [ %indvars.iv.next149.prol, %vec.epilog.scalar.ph223.prol ], [ %indvars.iv148.ph, %vec.epilog.scalar.ph223.preheader ] ; 2 uses
  %prol.iter247 = phi i64 [ %prol.iter247.next, %vec.epilog.scalar.ph223.prol ], [ 0, %vec.epilog.scalar.ph223.preheader ]
  %i.ak = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv148.prol
  %i.al = load double, ptr %i.ak, align 8, !tbaa !10
  %i.am = mul nsw i64 %indvars.iv150.prol, %i.e
  %gep191.prol = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.am
  store double %i.al, ptr %gep191.prol, align 8, !tbaa !10
  %indvars.iv.next151.prol = add nuw nsw i64 %indvars.iv150.prol, 1 ; 2 uses
  %indvars.iv.next149.prol = add nsw i64 %indvars.iv148.prol, 1 ; 3 uses
  %prol.iter247.next = add i64 %prol.iter247, 1   ; 2 uses
  %prol.iter247.cmp.not = icmp eq i64 %prol.iter247.next, %xtraiter245
  br i1 %prol.iter247.cmp.not, label %vec.epilog.scalar.ph223.prol.loopexit, label %vec.epilog.scalar.ph223.prol, !llvm.loop !136

vec.epilog.scalar.ph223.prol.loopexit:            ; preds = %vec.epilog.scalar.ph223.prol, %vec.epilog.scalar.ph223.preheader
  %indvars.iv.next149.lcssa239.unr = phi i64 [ poison, %vec.epilog.scalar.ph223.preheader ], [ %indvars.iv.next149.prol, %vec.epilog.scalar.ph223.prol ]
  %indvars.iv150.unr = phi i64 [ %indvars.iv150.ph, %vec.epilog.scalar.ph223.preheader ], [ %indvars.iv.next151.prol, %vec.epilog.scalar.ph223.prol ]
  %indvars.iv148.unr = phi i64 [ %indvars.iv148.ph, %vec.epilog.scalar.ph223.preheader ], [ %indvars.iv.next149.prol, %vec.epilog.scalar.ph223.prol ]
  %i.an = icmp ult i64 %i.aj, 7
  br i1 %i.an, label %.loopexit236, label %vec.epilog.scalar.ph223

.preheader.preheader:                             ; preds = %.loopexit236
  %i.ao = add i32 %i.d, 1                         ; 3 uses
  %i.ap = add nsw i32 %i.p, -1                    ; 4 uses
  %xtraiter248 = and i64 %wide.trip.count166, 1
  %i.aq = icmp eq i32 %i.p, 1
  br i1 %i.aq, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter252 = and i64 %wide.trip.count166, 2147483646
  br label %.preheader

vec.epilog.scalar.ph223:                          ; preds = %vec.epilog.scalar.ph223.prol.loopexit, %vec.epilog.scalar.ph223
  %indvars.iv150 = phi i64 [ %indvars.iv.next151.7, %vec.epilog.scalar.ph223 ], [ %indvars.iv150.unr, %vec.epilog.scalar.ph223.prol.loopexit ] ; 9 uses
  %indvars.iv148 = phi i64 [ %indvars.iv.next149.7, %vec.epilog.scalar.ph223 ], [ %indvars.iv148.unr, %vec.epilog.scalar.ph223.prol.loopexit ] ; 9 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv148
  %i.as = load double, ptr %i.ar, align 8, !tbaa !10
  %i.at = mul nsw i64 %indvars.iv150, %i.e
  %gep191 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.at
  store double %i.as, ptr %gep191, align 8, !tbaa !10
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  %i.au = getelementptr [8 x i8], ptr %4, i64 %indvars.iv148
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !10
  %i.ax = mul nsw i64 %indvars.iv.next151, %i.e
  %gep191.1 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.ax
  store double %i.aw, ptr %gep191.1, align 8, !tbaa !10
  %indvars.iv.next151.1 = add nuw nsw i64 %indvars.iv150, 2
  %i.ay = getelementptr [8 x i8], ptr %4, i64 %indvars.iv148
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !10
  %i.bb = mul nsw i64 %indvars.iv.next151.1, %i.e
  %gep191.2 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.bb
  store double %i.ba, ptr %gep191.2, align 8, !tbaa !10
  %indvars.iv.next151.2 = add nuw nsw i64 %indvars.iv150, 3
  %i.bc = getelementptr [8 x i8], ptr %4, i64 %indvars.iv148
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !10
  %i.bf = mul nsw i64 %indvars.iv.next151.2, %i.e
  %gep191.3 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.bf
  store double %i.be, ptr %gep191.3, align 8, !tbaa !10
  %indvars.iv.next151.3 = add nuw nsw i64 %indvars.iv150, 4
  %i.bg = getelementptr [8 x i8], ptr %4, i64 %indvars.iv148
  %i.bh = getelementptr i8, ptr %i.bg, i64 32
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !10
  %i.bj = mul nsw i64 %indvars.iv.next151.3, %i.e
  %gep191.4 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.bj
  store double %i.bi, ptr %gep191.4, align 8, !tbaa !10
  %indvars.iv.next151.4 = add nuw nsw i64 %indvars.iv150, 5
  %i.bk = getelementptr [8 x i8], ptr %4, i64 %indvars.iv148
  %i.bl = getelementptr i8, ptr %i.bk, i64 40
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !10
  %i.bn = mul nsw i64 %indvars.iv.next151.4, %i.e
  %gep191.5 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.bn
  store double %i.bm, ptr %gep191.5, align 8, !tbaa !10
  %indvars.iv.next151.5 = add nuw nsw i64 %indvars.iv150, 6
  %i.bo = getelementptr [8 x i8], ptr %4, i64 %indvars.iv148
  %i.bp = getelementptr i8, ptr %i.bo, i64 48
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !10
  %i.br = mul nsw i64 %indvars.iv.next151.5, %i.e
  %gep191.6 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.br
  store double %i.bq, ptr %gep191.6, align 8, !tbaa !10
  %indvars.iv.next151.6 = add nuw nsw i64 %indvars.iv150, 7
  %i.bs = getelementptr [8 x i8], ptr %4, i64 %indvars.iv148
  %i.bt = getelementptr i8, ptr %i.bs, i64 56
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !10
  %i.bv = mul nsw i64 %indvars.iv.next151.6, %i.e
  %gep191.7 = getelementptr [8 x i8], ptr %invariant.gep190, i64 %i.bv
  store double %i.bu, ptr %gep191.7, align 8, !tbaa !10
  %indvars.iv.next151.7 = add nuw nsw i64 %indvars.iv150, 8 ; 2 uses
  %indvars.iv.next149.7 = add nsw i64 %indvars.iv148, 8 ; 2 uses
  %exitcond158.not.7 = icmp eq i64 %indvars.iv.next151.7, %indvars.iv159
  br i1 %exitcond158.not.7, label %.loopexit236, label %vec.epilog.scalar.ph223, !llvm.loop !137

.loopexit236:                                     ; preds = %vec.epilog.scalar.ph223.prol.loopexit, %vec.epilog.scalar.ph223, %vec.epilog.middle.block232, %middle.block219
  %indvars.iv.next149.lcssa = phi i64 [ %i.ad, %vec.epilog.middle.block232 ], [ %i.s, %middle.block219 ], [ %indvars.iv.next149.lcssa239.unr, %vec.epilog.scalar.ph223.prol.loopexit ], [ %indvars.iv.next149.7, %vec.epilog.scalar.ph223 ]
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  %exitcond167.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count166
  br i1 %exitcond167.not, label %.preheader.preheader, label %iter.check222, !llvm.loop !138

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv176 = phi i32 [ %i.ap, %.preheader.preheader.new ], [ %indvars.iv.next177.1, %.preheader ] ; 3 uses
  %indvars.iv172 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next173.1, %.preheader ] ; 4 uses
  %.2114 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.cv, %.preheader ] ; 2 uses
  %niter253 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter253.next.1, %.preheader ]
  %i.bw = trunc nuw nsw i64 %indvars.iv172 to i32
  %i.bx = mul i32 %i.ao, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 3
  %scevgep169 = getelementptr i8, ptr %i.h, i64 %i.bz
  %i.ca = trunc i64 %indvars.iv172 to i32
  %i.cb = sub i32 %i.ap, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = add nuw nsw i64 %i.cd, 8
  %i.cf = shl nsw i64 %.2114, 3
  %scevgep168 = getelementptr i8, ptr %i.m, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep168, ptr noundef nonnull align 8 dereferenceable(1) %scevgep169, i64 range(i64 0, 17179869177) %i.ce, i1 false), !tbaa !10
  %i.cg = zext i32 %indvars.iv176 to i64
  %i.ch = add nsw i64 %.2114, 1
  %i.ci = add nsw i64 %i.ch, %i.cg                ; 2 uses
  %indvars.iv.next173 = or disjoint i64 %indvars.iv172, 1 ; 2 uses
  %indvars.iv.next177 = add i32 %indvars.iv176, -1
  %i.cj = trunc nuw nsw i64 %indvars.iv.next173 to i32
  %i.ck = mul i32 %i.ao, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = shl nsw i64 %i.cl, 3
  %scevgep169.1 = getelementptr i8, ptr %i.h, i64 %i.cm
  %i.cn = trunc i64 %indvars.iv.next173 to i32
  %i.co = sub i32 %i.ap, %i.cn
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 8
  %i.cs = shl nsw i64 %i.ci, 3
  %scevgep168.1 = getelementptr i8, ptr %i.m, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep168.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep169.1, i64 range(i64 0, 17179869177) %i.cr, i1 false), !tbaa !10
  %i.ct = zext i32 %indvars.iv.next177 to i64
  %i.cu = add nsw i64 %i.ci, 1
  %i.cv = add nsw i64 %i.cu, %i.ct                ; 2 uses
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %indvars.iv.next177.1 = add i32 %indvars.iv176, -2
  %niter253.next.1 = add i64 %niter253, 2         ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !139

iter.check:                                       ; preds = %.preheader95.preheader, %.loopexit237
  %indvars.iv119 = phi i64 [ 0, %.preheader95.preheader ], [ %indvars.iv.next120, %.loopexit237 ] ; 8 uses
  %.4101 = phi i64 [ 0, %.preheader95.preheader ], [ %indvars.iv.next.lcssa, %.loopexit237 ] ; 5 uses
  %i.cw = sub nsw i64 %wide.trip.count127, %indvars.iv119 ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv119 ; 11 uses
  %min.iters.check = icmp ugt i64 %i.cw, 3
  %or.cond238 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond238, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check193 = icmp ult i64 %i.cw, 16
  br i1 %min.iters.check193, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cx = and i64 %i.cw, 12
  %n.vec = and i64 %i.cw, -16                     ; 5 uses
  %i.cy = add i64 %indvars.iv119, %n.vec
  %i.cz = add i64 %.4101, %n.vec                  ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %4, i64 %.4101
  %i.db = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv119
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %i.da, i64 %index ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %wide.load = load <4 x double>, ptr %i.dc, align 8, !tbaa !10
  %wide.load194 = load <4 x double>, ptr %i.dd, align 8, !tbaa !10
  %wide.load195 = load <4 x double>, ptr %i.de, align 8, !tbaa !10
  %wide.load196 = load <4 x double>, ptr %i.df, align 8, !tbaa !10
  %i.dg = getelementptr [8 x i8], ptr %i.db, i64 %index ; 4 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 32
  %i.di = getelementptr i8, ptr %i.dg, i64 64
  %i.dj = getelementptr i8, ptr %i.dg, i64 96
  store <4 x double> %wide.load, ptr %i.dg, align 8, !tbaa !10
  store <4 x double> %wide.load194, ptr %i.dh, align 8, !tbaa !10
  store <4 x double> %wide.load195, ptr %i.di, align 8, !tbaa !10
  store <4 x double> %wide.load196, ptr %i.dj, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %.loopexit237, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cx, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec198 = and i64 %i.cw, -4                   ; 4 uses
  %i.dl = add i64 %indvars.iv119, %n.vec198
  %i.dm = add i64 %.4101, %n.vec198               ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %4, i64 %.4101
  %i.do = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv119
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index199 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next201, %vec.epilog.vector.body ] ; 3 uses
  %i.dp = getelementptr [8 x i8], ptr %i.dn, i64 %index199
  %wide.load200 = load <4 x double>, ptr %i.dp, align 8, !tbaa !10
  %i.dq = getelementptr [8 x i8], ptr %i.do, i64 %index199
  store <4 x double> %wide.load200, ptr %i.dq, align 8, !tbaa !10
  %index.next201 = add nuw i64 %index199, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next201, %n.vec198
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n202 = icmp eq i64 %i.cw, %n.vec198
  br i1 %cmp.n202, label %.loopexit237, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv121.ph = phi i64 [ %indvars.iv119, %iter.check ], [ %i.cy, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %.4101, %iter.check ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ] ; 2 uses
  %i.ds = sub i64 %wide.trip.count127, %indvars.iv121.ph
  %xtraiter = and i64 %i.ds, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv121.prol = phi i64 [ %indvars.iv.next122.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv121.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dt = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.prol
  %i.du = load double, ptr %i.dt, align 8, !tbaa !10
  %i.dv = mul nsw i64 %indvars.iv121.prol, %i.e
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dv
  store double %i.du, ptr %gep.prol, align 8, !tbaa !10
  %indvars.iv.next122.prol = add nuw nsw i64 %indvars.iv121.prol, 1 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !142

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next.lcssa241.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv121.unr = phi i64 [ %indvars.iv121.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next122.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dw = sub i64 %indvars.iv121.ph, %wide.trip.count127
  %i.dx = icmp ugt i64 %i.dw, -8
  br i1 %i.dx, label %.loopexit237, label %vec.epilog.scalar.ph

.preheader92.preheader:                           ; preds = %.loopexit237
  %xtraiter242 = and i64 %wide.trip.count127, 3   ; 3 uses
  %i.dy = icmp ult i32 %i.p, 4
  br i1 %i.dy, label %.preheader92.epil.preheader, label %.preheader92.preheader.new

.preheader92.preheader.new:                       ; preds = %.preheader92.preheader
  %unroll_iter = and i64 %wide.trip.count127, 2147483644
  br label %.preheader92

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv121 = phi i64 [ %indvars.iv.next122.7, %vec.epilog.scalar.ph ], [ %indvars.iv121.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !10
  %i.eb = mul nsw i64 %indvars.iv121, %i.e
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.eb
  store double %i.ea, ptr %gep, align 8, !tbaa !10
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %i.ec = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !10
  %i.ef = mul nsw i64 %indvars.iv.next122, %i.e
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ef
  store double %i.ee, ptr %gep.1, align 8, !tbaa !10
  %indvars.iv.next122.1 = add nuw nsw i64 %indvars.iv121, 2
  %i.eg = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !10
  %i.ej = mul nsw i64 %indvars.iv.next122.1, %i.e
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ej
  store double %i.ei, ptr %gep.2, align 8, !tbaa !10
  %indvars.iv.next122.2 = add nuw nsw i64 %indvars.iv121, 3
  %i.ek = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.el = getelementptr i8, ptr %i.ek, i64 24
  %i.em = load double, ptr %i.el, align 8, !tbaa !10
  %i.en = mul nsw i64 %indvars.iv.next122.2, %i.e
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.en
  store double %i.em, ptr %gep.3, align 8, !tbaa !10
  %indvars.iv.next122.3 = add nuw nsw i64 %indvars.iv121, 4
  %i.eo = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.ep = getelementptr i8, ptr %i.eo, i64 32
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !10
  %i.er = mul nsw i64 %indvars.iv.next122.3, %i.e
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.er
  store double %i.eq, ptr %gep.4, align 8, !tbaa !10
  %indvars.iv.next122.4 = add nuw nsw i64 %indvars.iv121, 5
  %i.es = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.et = getelementptr i8, ptr %i.es, i64 40
  %i.eu = load double, ptr %i.et, align 8, !tbaa !10
  %i.ev = mul nsw i64 %indvars.iv.next122.4, %i.e
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ev
  store double %i.eu, ptr %gep.5, align 8, !tbaa !10
  %indvars.iv.next122.5 = add nuw nsw i64 %indvars.iv121, 6
  %i.ew = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.ex = getelementptr i8, ptr %i.ew, i64 48
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !10
  %i.ez = mul nsw i64 %indvars.iv.next122.5, %i.e
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ez
  store double %i.ey, ptr %gep.6, align 8, !tbaa !10
  %indvars.iv.next122.6 = add nuw nsw i64 %indvars.iv121, 7
  %i.fa = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.fb = getelementptr i8, ptr %i.fa, i64 56
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !10
  %i.fd = mul nsw i64 %indvars.iv.next122.6, %i.e
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fd
  store double %i.fc, ptr %gep.7, align 8, !tbaa !10
  %indvars.iv.next122.7 = add nuw nsw i64 %indvars.iv121, 8 ; 2 uses
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next122.7, %wide.trip.count127
  br i1 %exitcond.not.7, label %.loopexit237, label %vec.epilog.scalar.ph, !llvm.loop !143

.loopexit237:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.dm, %vec.epilog.middle.block ], [ %i.cz, %middle.block ], [ %indvars.iv.next.lcssa241.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next.7, %vec.epilog.scalar.ph ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count127
  br i1 %exitcond128.not, label %.preheader92.preheader, label %iter.check, !llvm.loop !144

.preheader92:                                     ; preds = %.preheader92, %.preheader92.preheader.new
  %indvars.iv134 = phi i64 [ 1, %.preheader92.preheader.new ], [ %indvars.iv.next135.3, %.preheader92 ] ; 5 uses
  %indvar = phi i64 [ 0, %.preheader92.preheader.new ], [ %indvar.next.3, %.preheader92 ] ; 6 uses
  %.6105 = phi i64 [ 0, %.preheader92.preheader.new ], [ %i.fx, %.preheader92 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader92.preheader.new ], [ %niter.next.3, %.preheader92 ]
  %i.fe = mul i64 %i.f, %indvar
  %scevgep129 = getelementptr i8, ptr %i.h, i64 %i.fe
  %i.ff = shl nuw nsw i64 %indvar, 3
  %i.fg = or disjoint i64 %i.ff, 8
  %i.fh = shl nsw i64 %.6105, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep129, i64 range(i64 0, 17179869177) %i.fg, i1 false), !tbaa !10
  %i.fi = add i64 %indvars.iv134, %.6105          ; 2 uses
  %indvar.next = or disjoint i64 %indvar, 1       ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %i.fj = mul i64 %i.f, %indvar.next
  %scevgep129.1 = getelementptr i8, ptr %i.h, i64 %i.fj
  %i.fk = shl nuw nsw i64 %indvar.next, 3
  %i.fl = add nuw nsw i64 %i.fk, 8
  %i.fm = shl nsw i64 %i.fi, 3
  %scevgep.1 = getelementptr i8, ptr %i.m, i64 %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep129.1, i64 range(i64 0, 17179869177) %i.fl, i1 false), !tbaa !10
  %i.fn = add i64 %indvars.iv.next135, %i.fi      ; 2 uses
  %indvar.next.1 = or disjoint i64 %indvar, 2     ; 2 uses
  %indvars.iv.next135.1 = add nuw nsw i64 %indvars.iv134, 2
  %i.fo = mul i64 %i.f, %indvar.next.1
  %scevgep129.2 = getelementptr i8, ptr %i.h, i64 %i.fo
  %i.fp = shl nuw nsw i64 %indvar.next.1, 3
  %i.fq = or disjoint i64 %i.fp, 8
  %i.fr = shl nsw i64 %i.fn, 3
  %scevgep.2 = getelementptr i8, ptr %i.m, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.2, ptr noundef nonnull align 8 dereferenceable(1) %scevgep129.2, i64 range(i64 0, 17179869177) %i.fq, i1 false), !tbaa !10
  %i.fs = add i64 %indvars.iv.next135.1, %i.fn    ; 2 uses
  %indvar.next.2 = or disjoint i64 %indvar, 3     ; 2 uses
  %indvars.iv.next135.2 = add nuw nsw i64 %indvars.iv134, 3
  %i.ft = mul i64 %i.f, %indvar.next.2
  %scevgep129.3 = getelementptr i8, ptr %i.h, i64 %i.ft
  %i.fu = shl nuw nsw i64 %indvar.next.2, 3
  %i.fv = add nuw nsw i64 %i.fu, 8
  %i.fw = shl nsw i64 %i.fs, 3
  %scevgep.3 = getelementptr i8, ptr %i.m, i64 %i.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.3, ptr noundef nonnull align 8 dereferenceable(1) %scevgep129.3, i64 range(i64 0, 17179869177) %i.fv, i1 false), !tbaa !10
  %i.fx = add i64 %indvars.iv.next135.2, %i.fs    ; 2 uses
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %indvars.iv.next135.3 = add nuw nsw i64 %indvars.iv134, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit240.unr-lcssa, label %.preheader92, !llvm.loop !145

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod250.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod250.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv172.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next173.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.2114.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.cv, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod251 = trunc i32 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod251)
  %i.fy = trunc nuw nsw i64 %indvars.iv172.epil.init to i32
  %i.fz = mul i32 %i.ao, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = shl nsw i64 %i.ga, 3
  %scevgep169.epil = getelementptr i8, ptr %i.h, i64 %i.gb
  %i.gc = trunc i64 %indvars.iv172.epil.init to i32
  %i.gd = sub i32 %i.ap, %i.gc
  %i.ge = zext i32 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 3
  %i.gg = add nuw nsw i64 %i.gf, 8
  %i.gh = shl nsw i64 %.2114.epil.init, 3
  %scevgep168.epil = getelementptr i8, ptr %i.m, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep168.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep169.epil, i64 range(i64 0, 17179869177) %i.gg, i1 false), !tbaa !10
  br label %.loopexit

.loopexit.loopexit240.unr-lcssa:                  ; preds = %.preheader92
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %.loopexit, label %.preheader92.epil.preheader

.preheader92.epil.preheader:                      ; preds = %.loopexit.loopexit240.unr-lcssa, %.preheader92.preheader
  %indvars.iv134.epil.init = phi i64 [ 1, %.preheader92.preheader ], [ %indvars.iv.next135.3, %.loopexit.loopexit240.unr-lcssa ]
  %indvar.epil.init = phi i64 [ 0, %.preheader92.preheader ], [ %indvar.next.3, %.loopexit.loopexit240.unr-lcssa ]
  %.6105.epil.init = phi i64 [ 0, %.preheader92.preheader ], [ %i.fx, %.loopexit.loopexit240.unr-lcssa ]
  %lcmp.mod244 = icmp ne i64 %xtraiter242, 0
  call void @llvm.assume(i1 %lcmp.mod244)
  br label %.preheader92.epil

.preheader92.epil:                                ; preds = %.preheader92.epil, %.preheader92.epil.preheader
  %indvars.iv134.epil = phi i64 [ %indvars.iv134.epil.init, %.preheader92.epil.preheader ], [ %indvars.iv.next135.epil, %.preheader92.epil ] ; 2 uses
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader92.epil.preheader ], [ %indvar.next.epil, %.preheader92.epil ] ; 3 uses
  %.6105.epil = phi i64 [ %.6105.epil.init, %.preheader92.epil.preheader ], [ %i.gm, %.preheader92.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader92.epil.preheader ], [ %epil.iter.next, %.preheader92.epil ]
  %i.gi = mul i64 %i.f, %indvar.epil
  %scevgep129.epil = getelementptr i8, ptr %i.h, i64 %i.gi
  %i.gj = shl nuw nsw i64 %indvar.epil, 3
  %i.gk = add nuw nsw i64 %i.gj, 8
  %i.gl = shl nsw i64 %.6105.epil, 3
  %scevgep.epil = getelementptr i8, ptr %i.m, i64 %i.gl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep129.epil, i64 range(i64 0, 17179869177) %i.gk, i1 false), !tbaa !10
  %i.gm = add i64 %indvars.iv134.epil, %.6105.epil
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %indvars.iv.next135.epil = add nuw nsw i64 %indvars.iv134.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter242
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader92.epil, !llvm.loop !146

.loopexit:                                        ; preds = %.loopexit.loopexit240.unr-lcssa, %.preheader92.epil, %.preheader.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader91, %.preheader96
  %i.gn = load double, ptr %3, align 8, !tbaa !10
  %i.go = load i32, ptr %6, align 4, !tbaa !8
  %i.gp = load double, ptr %7, align 8, !tbaa !10
  %i.gq = load i32, ptr %9, align 4, !tbaa !8
  call void @cblas_dspmv(i32 noundef 101, i32 noundef %i.n, i32 noundef %i.p, double noundef %i.gn, ptr noundef %i.m, ptr noundef %5, i32 noundef %i.go, double noundef %i.gp, ptr noundef %8, i32 noundef %i.gq) #7
  call void @free(ptr noundef %i.h) #7
  call void @free(ptr noundef %i.m) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.gr = load i32, ptr %i.a, align 4, !tbaa !8
  %i.gs = load i32, ptr %2, align 4, !tbaa !8
  %i.gt = load double, ptr %3, align 8, !tbaa !10
  %i.gu = load i32, ptr %6, align 4, !tbaa !8
  %i.gv = load double, ptr %7, align 8, !tbaa !10
  %i.gw = load i32, ptr %9, align 4, !tbaa !8
  call void @cblas_dspmv(i32 noundef 102, i32 noundef %i.gr, i32 noundef %i.gs, double noundef %i.gt, ptr noundef %4, ptr noundef %5, i32 noundef %i.gu, double noundef %i.gv, ptr noundef %8, i32 noundef %i.gw) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare void @cblas_dspmv(i32 noundef, i32 noundef, i32 noundef, double noundef, ptr noundef, ptr noundef, i32 noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @cdtpmv_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @get_transpose_type(ptr noundef %2, ptr noundef nonnull %i.a) #7
  call void @get_uplo_type(ptr noundef %1, ptr noundef nonnull %i.b) #7
  call void @get_diag_type(ptr noundef %3, ptr noundef nonnull %i.c) #7
  %i.d = load i32, ptr %0, align 4, !tbaa !8
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %4, align 4, !tbaa !8      ; 4 uses
  %i.g = sext i32 %i.f to i64                     ; 22 uses
  %i.h = shl nsw i64 %i.g, 3                      ; 6 uses
  %i.i = mul i64 %i.h, %i.g
  %i.j = call noalias ptr @malloc(i64 noundef %i.i) #8 ; 11 uses
  %i.k = add nsw i64 %i.g, 1
  %i.l = shl nsw i64 %i.g, 2
  %i.m = mul i64 %i.l, %i.k
  %i.n = and i64 %i.m, -8
  %i.o = call noalias ptr @malloc(i64 noundef %i.n) #8 ; 10 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !8    ; 2 uses
  %i.q = icmp eq i32 %i.p, 121
  %i.r = load i32, ptr %4, align 4, !tbaa !8      ; 8 uses
  %i.s = icmp sgt i32 %i.r, 0                     ; 2 uses
  br i1 %i.q, label %.preheader85, label %.preheader90

.preheader90:                                     ; preds = %bb.b
  br i1 %i.s, label %.preheader89.preheader, label %.loopexit

.preheader89.preheader:                           ; preds = %.preheader90
  %wide.trip.count121 = zext nneg i32 %i.r to i64 ; 7 uses
  %ident.check.not = icmp eq i32 %i.f, 1
  br label %iter.check

.preheader85:                                     ; preds = %bb.b
  br i1 %i.s, label %.preheader84.preheader, label %.loopexit

.preheader84.preheader:                           ; preds = %.preheader85
  %wide.trip.count160 = zext nneg i32 %i.r to i64 ; 3 uses
  %ident.check200.not = icmp eq i32 %i.f, 1
  br label %iter.check216

iter.check216:                                    ; preds = %.preheader84.preheader, %.loopexit230
  %indvars.iv155 = phi i64 [ 0, %.preheader84.preheader ], [ %indvars.iv.next156, %.loopexit230 ] ; 3 uses
  %indvars.iv153 = phi i64 [ 1, %.preheader84.preheader ], [ %indvars.iv.next154, %.loopexit230 ] ; 10 uses
  %.0103 = phi i64 [ 0, %.preheader84.preheader ], [ %indvars.iv.next143.lcssa, %.loopexit230 ] ; 5 uses
  %invariant.gep184 = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv155 ; 11 uses
  %min.iters.check201 = icmp samesign ugt i64 %indvars.iv153, 3
  %or.cond = and i1 %min.iters.check201, %ident.check200.not
  br i1 %or.cond, label %vector.main.loop.iter.check202, label %vec.epilog.scalar.ph217.preheader

vector.main.loop.iter.check202:                   ; preds = %iter.check216
  %min.iters.check203 = icmp samesign ult i64 %indvars.iv153, 16
  br i1 %min.iters.check203, label %vec.epilog.ph220, label %vector.ph204

vector.ph204:                                     ; preds = %vector.main.loop.iter.check202
  %i.t = and i64 %indvars.iv153, 12
  %n.vec205 = and i64 %indvars.iv153, 9223372036854775792 ; 5 uses
  %i.u = add i64 %.0103, %n.vec205                ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %5, i64 %.0103
  br label %vector.body206

vector.body206:                                   ; preds = %vector.ph204, %vector.body206
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next212, %vector.body206 ] ; 3 uses
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index207 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %wide.load208 = load <4 x double>, ptr %i.w, align 8, !tbaa !10
  %wide.load209 = load <4 x double>, ptr %i.x, align 8, !tbaa !10
  %wide.load210 = load <4 x double>, ptr %i.y, align 8, !tbaa !10
  %wide.load211 = load <4 x double>, ptr %i.z, align 8, !tbaa !10
  %i.aa = getelementptr [8 x i8], ptr %invariant.gep184, i64 %index207 ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 32
  %i.ac = getelementptr i8, ptr %i.aa, i64 64
  %i.ad = getelementptr i8, ptr %i.aa, i64 96
  store <4 x double> %wide.load208, ptr %i.aa, align 8, !tbaa !10
  store <4 x double> %wide.load209, ptr %i.ab, align 8, !tbaa !10
  store <4 x double> %wide.load210, ptr %i.ac, align 8, !tbaa !10
  store <4 x double> %wide.load211, ptr %i.ad, align 8, !tbaa !10
  %index.next212 = add nuw i64 %index207, 16      ; 2 uses
  %i.ae = icmp eq i64 %index.next212, %n.vec205
  br i1 %i.ae, label %middle.block213, label %vector.body206, !llvm.loop !147

middle.block213:                                  ; preds = %vector.body206
  %cmp.n214 = icmp eq i64 %indvars.iv153, %n.vec205
  br i1 %cmp.n214, label %.loopexit230, label %vec.epilog.iter.check218

vec.epilog.iter.check218:                         ; preds = %middle.block213
  %min.epilog.iters.check219 = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check219, label %vec.epilog.scalar.ph217.preheader, label %vec.epilog.ph220, !prof !14

vec.epilog.ph220:                                 ; preds = %vector.main.loop.iter.check202, %vec.epilog.iter.check218
  %vec.epilog.resume.val215 = phi i64 [ %n.vec205, %vec.epilog.iter.check218 ], [ 0, %vector.main.loop.iter.check202 ]
  %n.vec221 = and i64 %indvars.iv153, 9223372036854775804 ; 4 uses
  %i.af = add i64 %.0103, %n.vec221               ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %5, i64 %.0103
  br label %vec.epilog.vector.body222

vec.epilog.vector.body222:                        ; preds = %vec.epilog.vector.body222, %vec.epilog.ph220
  %index223 = phi i64 [ %vec.epilog.resume.val215, %vec.epilog.ph220 ], [ %index.next225, %vec.epilog.vector.body222 ] ; 3 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %index223
  %wide.load224 = load <4 x double>, ptr %i.ah, align 8, !tbaa !10
  %i.ai = getelementptr [8 x i8], ptr %invariant.gep184, i64 %index223
  store <4 x double> %wide.load224, ptr %i.ai, align 8, !tbaa !10
  %index.next225 = add nuw i64 %index223, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next225, %n.vec221
  br i1 %i.aj, label %vec.epilog.middle.block226, label %vec.epilog.vector.body222, !llvm.loop !148

vec.epilog.middle.block226:                       ; preds = %vec.epilog.vector.body222
  %cmp.n227 = icmp eq i64 %indvars.iv153, %n.vec221
  br i1 %cmp.n227, label %.loopexit230, label %vec.epilog.scalar.ph217.preheader

vec.epilog.scalar.ph217.preheader:                ; preds = %iter.check216, %vec.epilog.iter.check218, %vec.epilog.middle.block226
  %indvars.iv144.ph = phi i64 [ 0, %iter.check216 ], [ %n.vec205, %vec.epilog.iter.check218 ], [ %n.vec221, %vec.epilog.middle.block226 ] ; 4 uses
  %indvars.iv142.ph = phi i64 [ %.0103, %iter.check216 ], [ %i.u, %vec.epilog.iter.check218 ], [ %i.af, %vec.epilog.middle.block226 ] ; 2 uses
  %i.ak = sub nsw i64 %indvars.iv153, %indvars.iv144.ph
  %i.al = sub nsw i64 %indvars.iv155, %indvars.iv144.ph
  %xtraiter239 = and i64 %i.ak, 7                 ; 2 uses
  %lcmp.mod240.not = icmp eq i64 %xtraiter239, 0
  br i1 %lcmp.mod240.not, label %vec.epilog.scalar.ph217.prol.loopexit, label %vec.epilog.scalar.ph217.prol

vec.epilog.scalar.ph217.prol:                     ; preds = %vec.epilog.scalar.ph217.preheader, %vec.epilog.scalar.ph217.prol
  %indvars.iv144.prol = phi i64 [ %indvars.iv.next145.prol, %vec.epilog.scalar.ph217.prol ], [ %indvars.iv144.ph, %vec.epilog.scalar.ph217.preheader ] ; 2 uses
  %indvars.iv142.prol = phi i64 [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph217.prol ], [ %indvars.iv142.ph, %vec.epilog.scalar.ph217.preheader ] ; 2 uses
  %prol.iter241 = phi i64 [ %prol.iter241.next, %vec.epilog.scalar.ph217.prol ], [ 0, %vec.epilog.scalar.ph217.preheader ]
  %i.am = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv142.prol
  %i.an = load double, ptr %i.am, align 8, !tbaa !10
  %i.ao = mul nsw i64 %indvars.iv144.prol, %i.g
  %gep185.prol = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.ao
  store double %i.an, ptr %gep185.prol, align 8, !tbaa !10
  %indvars.iv.next145.prol = add nuw nsw i64 %indvars.iv144.prol, 1 ; 2 uses
  %indvars.iv.next143.prol = add nsw i64 %indvars.iv142.prol, 1 ; 3 uses
  %prol.iter241.next = add i64 %prol.iter241, 1   ; 2 uses
  %prol.iter241.cmp.not = icmp eq i64 %prol.iter241.next, %xtraiter239
  br i1 %prol.iter241.cmp.not, label %vec.epilog.scalar.ph217.prol.loopexit, label %vec.epilog.scalar.ph217.prol, !llvm.loop !149

vec.epilog.scalar.ph217.prol.loopexit:            ; preds = %vec.epilog.scalar.ph217.prol, %vec.epilog.scalar.ph217.preheader
  %indvars.iv.next143.lcssa233.unr = phi i64 [ poison, %vec.epilog.scalar.ph217.preheader ], [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph217.prol ]
  %indvars.iv144.unr = phi i64 [ %indvars.iv144.ph, %vec.epilog.scalar.ph217.preheader ], [ %indvars.iv.next145.prol, %vec.epilog.scalar.ph217.prol ]
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %vec.epilog.scalar.ph217.preheader ], [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph217.prol ]
  %i.ap = icmp ult i64 %i.al, 7
  br i1 %i.ap, label %.loopexit230, label %vec.epilog.scalar.ph217

.preheader.preheader:                             ; preds = %.loopexit230
  %i.aq = add i32 %i.f, 1                         ; 3 uses
  %i.ar = add nsw i32 %i.r, -1                    ; 4 uses
  %xtraiter242 = and i64 %wide.trip.count160, 1
  %i.as = icmp eq i32 %i.r, 1
  br i1 %i.as, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter246 = and i64 %wide.trip.count160, 2147483646
  br label %.preheader

vec.epilog.scalar.ph217:                          ; preds = %vec.epilog.scalar.ph217.prol.loopexit, %vec.epilog.scalar.ph217
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.7, %vec.epilog.scalar.ph217 ], [ %indvars.iv144.unr, %vec.epilog.scalar.ph217.prol.loopexit ] ; 9 uses
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.7, %vec.epilog.scalar.ph217 ], [ %indvars.iv142.unr, %vec.epilog.scalar.ph217.prol.loopexit ] ; 9 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv142
  %i.au = load double, ptr %i.at, align 8, !tbaa !10
  %i.av = mul nsw i64 %indvars.iv144, %i.g
  %gep185 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.av
  store double %i.au, ptr %gep185, align 8, !tbaa !10
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  %i.aw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !10
  %i.az = mul nsw i64 %indvars.iv.next145, %i.g
  %gep185.1 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.az
  store double %i.ay, ptr %gep185.1, align 8, !tbaa !10
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2
  %i.ba = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !10
  %i.bd = mul nsw i64 %indvars.iv.next145.1, %i.g
  %gep185.2 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.bd
  store double %i.bc, ptr %gep185.2, align 8, !tbaa !10
  %indvars.iv.next145.2 = add nuw nsw i64 %indvars.iv144, 3
  %i.be = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.bf = getelementptr i8, ptr %i.be, i64 24
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !10
  %i.bh = mul nsw i64 %indvars.iv.next145.2, %i.g
  %gep185.3 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.bh
  store double %i.bg, ptr %gep185.3, align 8, !tbaa !10
  %indvars.iv.next145.3 = add nuw nsw i64 %indvars.iv144, 4
  %i.bi = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.bj = getelementptr i8, ptr %i.bi, i64 32
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !10
  %i.bl = mul nsw i64 %indvars.iv.next145.3, %i.g
  %gep185.4 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.bl
  store double %i.bk, ptr %gep185.4, align 8, !tbaa !10
  %indvars.iv.next145.4 = add nuw nsw i64 %indvars.iv144, 5
  %i.bm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.bn = getelementptr i8, ptr %i.bm, i64 40
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !10
  %i.bp = mul nsw i64 %indvars.iv.next145.4, %i.g
  %gep185.5 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.bp
  store double %i.bo, ptr %gep185.5, align 8, !tbaa !10
  %indvars.iv.next145.5 = add nuw nsw i64 %indvars.iv144, 6
  %i.bq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.br = getelementptr i8, ptr %i.bq, i64 48
  %i.bs = load double, ptr %i.br, align 8, !tbaa !10
  %i.bt = mul nsw i64 %indvars.iv.next145.5, %i.g
  %gep185.6 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.bt
  store double %i.bs, ptr %gep185.6, align 8, !tbaa !10
  %indvars.iv.next145.6 = add nuw nsw i64 %indvars.iv144, 7
  %i.bu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.bv = getelementptr i8, ptr %i.bu, i64 56
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !10
  %i.bx = mul nsw i64 %indvars.iv.next145.6, %i.g
  %gep185.7 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.bx
  store double %i.bw, ptr %gep185.7, align 8, !tbaa !10
  %indvars.iv.next145.7 = add nuw nsw i64 %indvars.iv144, 8 ; 2 uses
  %indvars.iv.next143.7 = add nsw i64 %indvars.iv142, 8 ; 2 uses
  %exitcond152.not.7 = icmp eq i64 %indvars.iv.next145.7, %indvars.iv153
  br i1 %exitcond152.not.7, label %.loopexit230, label %vec.epilog.scalar.ph217, !llvm.loop !150

.loopexit230:                                     ; preds = %vec.epilog.scalar.ph217.prol.loopexit, %vec.epilog.scalar.ph217, %vec.epilog.middle.block226, %middle.block213
  %indvars.iv.next143.lcssa = phi i64 [ %i.af, %vec.epilog.middle.block226 ], [ %i.u, %middle.block213 ], [ %indvars.iv.next143.lcssa233.unr, %vec.epilog.scalar.ph217.prol.loopexit ], [ %indvars.iv.next143.7, %vec.epilog.scalar.ph217 ]
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  %exitcond161.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count160
  br i1 %exitcond161.not, label %.preheader.preheader, label %iter.check216, !llvm.loop !151

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv170 = phi i32 [ %i.ar, %.preheader.preheader.new ], [ %indvars.iv.next171.1, %.preheader ] ; 3 uses
  %indvars.iv166 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next167.1, %.preheader ] ; 4 uses
  %.2108 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.cx, %.preheader ] ; 2 uses
  %niter247 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter247.next.1, %.preheader ]
  %i.by = trunc nuw nsw i64 %indvars.iv166 to i32
  %i.bz = mul i32 %i.aq, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 3
  %scevgep163 = getelementptr i8, ptr %i.j, i64 %i.cb
  %i.cc = trunc i64 %indvars.iv166 to i32
  %i.cd = sub i32 %i.ar, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 8
  %i.ch = shl nsw i64 %.2108, 3
  %scevgep162 = getelementptr i8, ptr %i.o, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep162, ptr noundef nonnull align 8 dereferenceable(1) %scevgep163, i64 range(i64 0, 17179869177) %i.cg, i1 false), !tbaa !10
  %i.ci = zext i32 %indvars.iv170 to i64
  %i.cj = add nsw i64 %.2108, 1
  %i.ck = add nsw i64 %i.cj, %i.ci                ; 2 uses
  %indvars.iv.next167 = or disjoint i64 %indvars.iv166, 1 ; 2 uses
  %indvars.iv.next171 = add i32 %indvars.iv170, -1
  %i.cl = trunc nuw nsw i64 %indvars.iv.next167 to i32
  %i.cm = mul i32 %i.aq, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 3
  %scevgep163.1 = getelementptr i8, ptr %i.j, i64 %i.co
  %i.cp = trunc i64 %indvars.iv.next167 to i32
  %i.cq = sub i32 %i.ar, %i.cp
  %i.cr = zext i32 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = add nuw nsw i64 %i.cs, 8
  %i.cu = shl nsw i64 %i.ck, 3
  %scevgep162.1 = getelementptr i8, ptr %i.o, i64 %i.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep162.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep163.1, i64 range(i64 0, 17179869177) %i.ct, i1 false), !tbaa !10
  %i.cv = zext i32 %indvars.iv.next171 to i64
  %i.cw = add nsw i64 %i.ck, 1
  %i.cx = add nsw i64 %i.cw, %i.cv                ; 2 uses
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %indvars.iv.next171.1 = add i32 %indvars.iv170, -2
  %niter247.next.1 = add i64 %niter247, 2         ; 2 uses
  %niter247.ncmp.1 = icmp eq i64 %niter247.next.1, %unroll_iter246
  br i1 %niter247.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !152

iter.check:                                       ; preds = %.preheader89.preheader, %.loopexit231
  %indvars.iv113 = phi i64 [ 0, %.preheader89.preheader ], [ %indvars.iv.next114, %.loopexit231 ] ; 8 uses
  %.495 = phi i64 [ 0, %.preheader89.preheader ], [ %indvars.iv.next.lcssa, %.loopexit231 ] ; 5 uses
  %i.cy = sub nsw i64 %wide.trip.count121, %indvars.iv113 ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv113 ; 11 uses
  %min.iters.check = icmp ugt i64 %i.cy, 3
  %or.cond232 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond232, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check187 = icmp ult i64 %i.cy, 16
  br i1 %min.iters.check187, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %i.cy, 12
  %n.vec = and i64 %i.cy, -16                     ; 5 uses
  %i.da = add i64 %indvars.iv113, %n.vec
  %i.db = add i64 %.495, %n.vec                   ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %5, i64 %.495
  %i.dd = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv113
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = getelementptr [8 x i8], ptr %i.dc, i64 %index ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %wide.load = load <4 x double>, ptr %i.de, align 8, !tbaa !10
  %wide.load188 = load <4 x double>, ptr %i.df, align 8, !tbaa !10
  %wide.load189 = load <4 x double>, ptr %i.dg, align 8, !tbaa !10
  %wide.load190 = load <4 x double>, ptr %i.dh, align 8, !tbaa !10
  %i.di = getelementptr [8 x i8], ptr %i.dd, i64 %index ; 4 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 32
  %i.dk = getelementptr i8, ptr %i.di, i64 64
  %i.dl = getelementptr i8, ptr %i.di, i64 96
  store <4 x double> %wide.load, ptr %i.di, align 8, !tbaa !10
  store <4 x double> %wide.load188, ptr %i.dj, align 8, !tbaa !10
  store <4 x double> %wide.load189, ptr %i.dk, align 8, !tbaa !10
  store <4 x double> %wide.load190, ptr %i.dl, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %.loopexit231, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec192 = and i64 %i.cy, -4                   ; 4 uses
  %i.dn = add i64 %indvars.iv113, %n.vec192
  %i.do = add i64 %.495, %n.vec192                ; 2 uses
  %i.dp = getelementptr [8 x i8], ptr %5, i64 %.495
  %i.dq = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv113
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index193 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next195, %vec.epilog.vector.body ] ; 3 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dp, i64 %index193
  %wide.load194 = load <4 x double>, ptr %i.dr, align 8, !tbaa !10
  %i.ds = getelementptr [8 x i8], ptr %i.dq, i64 %index193
  store <4 x double> %wide.load194, ptr %i.ds, align 8, !tbaa !10
  %index.next195 = add nuw i64 %index193, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next195, %n.vec192
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !154

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n196 = icmp eq i64 %i.cy, %n.vec192
  br i1 %cmp.n196, label %.loopexit231, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv115.ph = phi i64 [ %indvars.iv113, %iter.check ], [ %i.da, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %.495, %iter.check ], [ %i.db, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ] ; 2 uses
  %i.du = sub i64 %wide.trip.count121, %indvars.iv115.ph
  %xtraiter = and i64 %i.du, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv115.prol = phi i64 [ %indvars.iv.next116.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv115.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dv = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv.prol
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !10
  %i.dx = mul nsw i64 %indvars.iv115.prol, %i.g
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dx
  store double %i.dw, ptr %gep.prol, align 8, !tbaa !10
  %indvars.iv.next116.prol = add nuw nsw i64 %indvars.iv115.prol, 1 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !155

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next.lcssa235.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next116.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dy = sub i64 %indvars.iv115.ph, %wide.trip.count121
  %i.dz = icmp ugt i64 %i.dy, -8
  br i1 %i.dz, label %.loopexit231, label %vec.epilog.scalar.ph

.preheader86.preheader:                           ; preds = %.loopexit231
  %xtraiter236 = and i64 %wide.trip.count121, 3   ; 3 uses
  %i.ea = icmp ult i32 %i.r, 4
  br i1 %i.ea, label %.preheader86.epil.preheader, label %.preheader86.preheader.new

.preheader86.preheader.new:                       ; preds = %.preheader86.preheader
  %unroll_iter = and i64 %wide.trip.count121, 2147483644
  br label %.preheader86

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.7, %vec.epilog.scalar.ph ], [ %indvars.iv115.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !10
  %i.ed = mul nsw i64 %indvars.iv115, %i.g
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ed
  store double %i.ec, ptr %gep, align 8, !tbaa !10
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %i.ee = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !10
  %i.eh = mul nsw i64 %indvars.iv.next116, %i.g
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.eh
  store double %i.eg, ptr %gep.1, align 8, !tbaa !10
  %indvars.iv.next116.1 = add nuw nsw i64 %indvars.iv115, 2
  %i.ei = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !10
  %i.el = mul nsw i64 %indvars.iv.next116.1, %i.g
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.el
  store double %i.ek, ptr %gep.2, align 8, !tbaa !10
  %indvars.iv.next116.2 = add nuw nsw i64 %indvars.iv115, 3
  %i.em = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.en = getelementptr i8, ptr %i.em, i64 24
  %i.eo = load double, ptr %i.en, align 8, !tbaa !10
  %i.ep = mul nsw i64 %indvars.iv.next116.2, %i.g
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ep
  store double %i.eo, ptr %gep.3, align 8, !tbaa !10
  %indvars.iv.next116.3 = add nuw nsw i64 %indvars.iv115, 4
  %i.eq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.er = getelementptr i8, ptr %i.eq, i64 32
  %i.es = load double, ptr %i.er, align 8, !tbaa !10
  %i.et = mul nsw i64 %indvars.iv.next116.3, %i.g
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.et
  store double %i.es, ptr %gep.4, align 8, !tbaa !10
  %indvars.iv.next116.4 = add nuw nsw i64 %indvars.iv115, 5
  %i.eu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ev = getelementptr i8, ptr %i.eu, i64 40
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !10
  %i.ex = mul nsw i64 %indvars.iv.next116.4, %i.g
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ex
  store double %i.ew, ptr %gep.5, align 8, !tbaa !10
  %indvars.iv.next116.5 = add nuw nsw i64 %indvars.iv115, 6
  %i.ey = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ez = getelementptr i8, ptr %i.ey, i64 48
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !10
  %i.fb = mul nsw i64 %indvars.iv.next116.5, %i.g
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fb
  store double %i.fa, ptr %gep.6, align 8, !tbaa !10
  %indvars.iv.next116.6 = add nuw nsw i64 %indvars.iv115, 7
  %i.fc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.fd = getelementptr i8, ptr %i.fc, i64 56
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !10
  %i.ff = mul nsw i64 %indvars.iv.next116.6, %i.g
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ff
  store double %i.fe, ptr %gep.7, align 8, !tbaa !10
  %indvars.iv.next116.7 = add nuw nsw i64 %indvars.iv115, 8 ; 2 uses
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next116.7, %wide.trip.count121
  br i1 %exitcond.not.7, label %.loopexit231, label %vec.epilog.scalar.ph, !llvm.loop !156

.loopexit231:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.do, %vec.epilog.middle.block ], [ %i.db, %middle.block ], [ %indvars.iv.next.lcssa235.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next.7, %vec.epilog.scalar.ph ]
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count121
  br i1 %exitcond122.not, label %.preheader86.preheader, label %iter.check, !llvm.loop !157

.preheader86:                                     ; preds = %.preheader86, %.preheader86.preheader.new
  %indvars.iv128 = phi i64 [ 1, %.preheader86.preheader.new ], [ %indvars.iv.next129.3, %.preheader86 ] ; 5 uses
  %indvar = phi i64 [ 0, %.preheader86.preheader.new ], [ %indvar.next.3, %.preheader86 ] ; 6 uses
  %.699 = phi i64 [ 0, %.preheader86.preheader.new ], [ %i.fz, %.preheader86 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader86.preheader.new ], [ %niter.next.3, %.preheader86 ]
  %i.fg = mul i64 %i.h, %indvar
  %scevgep123 = getelementptr i8, ptr %i.j, i64 %i.fg
  %i.fh = shl nuw nsw i64 %indvar, 3
  %i.fi = or disjoint i64 %i.fh, 8
  %i.fj = shl nsw i64 %.699, 3
  %scevgep = getelementptr i8, ptr %i.o, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123, i64 range(i64 0, 17179869177) %i.fi, i1 false), !tbaa !10
  %i.fk = add i64 %indvars.iv128, %.699           ; 2 uses
  %indvar.next = or disjoint i64 %indvar, 1       ; 2 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %i.fl = mul i64 %i.h, %indvar.next
  %scevgep123.1 = getelementptr i8, ptr %i.j, i64 %i.fl
  %i.fm = shl nuw nsw i64 %indvar.next, 3
  %i.fn = add nuw nsw i64 %i.fm, 8
  %i.fo = shl nsw i64 %i.fk, 3
  %scevgep.1 = getelementptr i8, ptr %i.o, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123.1, i64 range(i64 0, 17179869177) %i.fn, i1 false), !tbaa !10
  %i.fp = add i64 %indvars.iv.next129, %i.fk      ; 2 uses
  %indvar.next.1 = or disjoint i64 %indvar, 2     ; 2 uses
  %indvars.iv.next129.1 = add nuw nsw i64 %indvars.iv128, 2
  %i.fq = mul i64 %i.h, %indvar.next.1
  %scevgep123.2 = getelementptr i8, ptr %i.j, i64 %i.fq
  %i.fr = shl nuw nsw i64 %indvar.next.1, 3
  %i.fs = or disjoint i64 %i.fr, 8
  %i.ft = shl nsw i64 %i.fp, 3
  %scevgep.2 = getelementptr i8, ptr %i.o, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.2, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123.2, i64 range(i64 0, 17179869177) %i.fs, i1 false), !tbaa !10
  %i.fu = add i64 %indvars.iv.next129.1, %i.fp    ; 2 uses
  %indvar.next.2 = or disjoint i64 %indvar, 3     ; 2 uses
  %indvars.iv.next129.2 = add nuw nsw i64 %indvars.iv128, 3
  %i.fv = mul i64 %i.h, %indvar.next.2
  %scevgep123.3 = getelementptr i8, ptr %i.j, i64 %i.fv
  %i.fw = shl nuw nsw i64 %indvar.next.2, 3
  %i.fx = add nuw nsw i64 %i.fw, 8
  %i.fy = shl nsw i64 %i.fu, 3
  %scevgep.3 = getelementptr i8, ptr %i.o, i64 %i.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.3, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123.3, i64 range(i64 0, 17179869177) %i.fx, i1 false), !tbaa !10
  %i.fz = add i64 %indvars.iv.next129.2, %i.fu    ; 2 uses
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit234.unr-lcssa, label %.preheader86, !llvm.loop !158

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod244.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod244.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv166.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next167.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.2108.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.cx, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod245 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod245)
  %i.ga = trunc nuw nsw i64 %indvars.iv166.epil.init to i32
  %i.gb = mul i32 %i.aq, %i.ga
  %i.gc = sext i32 %i.gb to i64
  %i.gd = shl nsw i64 %i.gc, 3
  %scevgep163.epil = getelementptr i8, ptr %i.j, i64 %i.gd
  %i.ge = trunc i64 %indvars.iv166.epil.init to i32
  %i.gf = sub i32 %i.ar, %i.ge
  %i.gg = zext i32 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 3
  %i.gi = add nuw nsw i64 %i.gh, 8
  %i.gj = shl nsw i64 %.2108.epil.init, 3
  %scevgep162.epil = getelementptr i8, ptr %i.o, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep162.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep163.epil, i64 range(i64 0, 17179869177) %i.gi, i1 false), !tbaa !10
  br label %.loopexit

.loopexit.loopexit234.unr-lcssa:                  ; preds = %.preheader86
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %.loopexit, label %.preheader86.epil.preheader

.preheader86.epil.preheader:                      ; preds = %.loopexit.loopexit234.unr-lcssa, %.preheader86.preheader
  %indvars.iv128.epil.init = phi i64 [ 1, %.preheader86.preheader ], [ %indvars.iv.next129.3, %.loopexit.loopexit234.unr-lcssa ]
  %indvar.epil.init = phi i64 [ 0, %.preheader86.preheader ], [ %indvar.next.3, %.loopexit.loopexit234.unr-lcssa ]
  %.699.epil.init = phi i64 [ 0, %.preheader86.preheader ], [ %i.fz, %.loopexit.loopexit234.unr-lcssa ]
  %lcmp.mod238 = icmp ne i64 %xtraiter236, 0
  call void @llvm.assume(i1 %lcmp.mod238)
  br label %.preheader86.epil

.preheader86.epil:                                ; preds = %.preheader86.epil, %.preheader86.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.preheader86.epil.preheader ], [ %indvars.iv.next129.epil, %.preheader86.epil ] ; 2 uses
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader86.epil.preheader ], [ %indvar.next.epil, %.preheader86.epil ] ; 3 uses
  %.699.epil = phi i64 [ %.699.epil.init, %.preheader86.epil.preheader ], [ %i.go, %.preheader86.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader86.epil.preheader ], [ %epil.iter.next, %.preheader86.epil ]
  %i.gk = mul i64 %i.h, %indvar.epil
  %scevgep123.epil = getelementptr i8, ptr %i.j, i64 %i.gk
  %i.gl = shl nuw nsw i64 %indvar.epil, 3
  %i.gm = add nuw nsw i64 %i.gl, 8
  %i.gn = shl nsw i64 %.699.epil, 3
  %scevgep.epil = getelementptr i8, ptr %i.o, i64 %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123.epil, i64 range(i64 0, 17179869177) %i.gm, i1 false), !tbaa !10
  %i.go = add i64 %indvars.iv128.epil, %.699.epil
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter236
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader86.epil, !llvm.loop !159

.loopexit:                                        ; preds = %.loopexit.loopexit234.unr-lcssa, %.preheader86.epil, %.preheader.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader85, %.preheader90
  %i.gp = load i32, ptr %i.a, align 4, !tbaa !8
  %i.gq = load i32, ptr %i.c, align 4, !tbaa !8
  %i.gr = load i32, ptr %7, align 4, !tbaa !8
  call void @cblas_dtpmv(i32 noundef 101, i32 noundef %i.p, i32 noundef %i.gp, i32 noundef %i.gq, i32 noundef %i.r, ptr noundef %i.o, ptr noundef %6, i32 noundef %i.gr) #7
  call void @free(ptr noundef %i.j) #7
  call void @free(ptr noundef %i.o) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.gs = load i32, ptr %i.b, align 4, !tbaa !8
  %i.gt = load i32, ptr %i.a, align 4, !tbaa !8
  %i.gu = load i32, ptr %i.c, align 4, !tbaa !8
  %i.gv = load i32, ptr %4, align 4, !tbaa !8
  %i.gw = load i32, ptr %7, align 4, !tbaa !8
  call void @cblas_dtpmv(i32 noundef 102, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %i.gv, ptr noundef %5, ptr noundef %6, i32 noundef %i.gw) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare void @cblas_dtpmv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @cdtpsv_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @get_transpose_type(ptr noundef %2, ptr noundef nonnull %i.a) #7
  call void @get_uplo_type(ptr noundef %1, ptr noundef nonnull %i.b) #7
  call void @get_diag_type(ptr noundef %3, ptr noundef nonnull %i.c) #7
  %i.d = load i32, ptr %0, align 4, !tbaa !8
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %4, align 4, !tbaa !8      ; 4 uses
  %i.g = sext i32 %i.f to i64                     ; 22 uses
  %i.h = shl nsw i64 %i.g, 3                      ; 6 uses
  %i.i = mul i64 %i.h, %i.g
  %i.j = call noalias ptr @malloc(i64 noundef %i.i) #8 ; 11 uses
  %i.k = add nsw i64 %i.g, 1
  %i.l = shl nsw i64 %i.g, 2
  %i.m = mul i64 %i.l, %i.k
  %i.n = and i64 %i.m, -8
  %i.o = call noalias ptr @malloc(i64 noundef %i.n) #8 ; 10 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !8    ; 2 uses
  %i.q = icmp eq i32 %i.p, 121
  %i.r = load i32, ptr %4, align 4, !tbaa !8      ; 8 uses
  %i.s = icmp sgt i32 %i.r, 0                     ; 2 uses
  br i1 %i.q, label %.preheader85, label %.preheader90

.preheader90:                                     ; preds = %bb.b
  br i1 %i.s, label %.preheader89.preheader, label %.loopexit

.preheader89.preheader:                           ; preds = %.preheader90
  %wide.trip.count121 = zext nneg i32 %i.r to i64 ; 7 uses
  %ident.check.not = icmp eq i32 %i.f, 1
  br label %iter.check

.preheader85:                                     ; preds = %bb.b
  br i1 %i.s, label %.preheader84.preheader, label %.loopexit

.preheader84.preheader:                           ; preds = %.preheader85
  %wide.trip.count160 = zext nneg i32 %i.r to i64 ; 3 uses
  %ident.check200.not = icmp eq i32 %i.f, 1
  br label %iter.check216

iter.check216:                                    ; preds = %.preheader84.preheader, %.loopexit230
  %indvars.iv155 = phi i64 [ 0, %.preheader84.preheader ], [ %indvars.iv.next156, %.loopexit230 ] ; 3 uses
  %indvars.iv153 = phi i64 [ 1, %.preheader84.preheader ], [ %indvars.iv.next154, %.loopexit230 ] ; 10 uses
  %.0103 = phi i64 [ 0, %.preheader84.preheader ], [ %indvars.iv.next143.lcssa, %.loopexit230 ] ; 5 uses
  %invariant.gep184 = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv155 ; 11 uses
  %min.iters.check201 = icmp samesign ugt i64 %indvars.iv153, 3
  %or.cond = and i1 %min.iters.check201, %ident.check200.not
  br i1 %or.cond, label %vector.main.loop.iter.check202, label %vec.epilog.scalar.ph217.preheader

vector.main.loop.iter.check202:                   ; preds = %iter.check216
  %min.iters.check203 = icmp samesign ult i64 %indvars.iv153, 16
  br i1 %min.iters.check203, label %vec.epilog.ph220, label %vector.ph204

vector.ph204:                                     ; preds = %vector.main.loop.iter.check202
  %i.t = and i64 %indvars.iv153, 12
  %n.vec205 = and i64 %indvars.iv153, 9223372036854775792 ; 5 uses
  %i.u = add i64 %.0103, %n.vec205                ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %5, i64 %.0103
  br label %vector.body206

vector.body206:                                   ; preds = %vector.ph204, %vector.body206
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next212, %vector.body206 ] ; 3 uses
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index207 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %wide.load208 = load <4 x double>, ptr %i.w, align 8, !tbaa !10
  %wide.load209 = load <4 x double>, ptr %i.x, align 8, !tbaa !10
  %wide.load210 = load <4 x double>, ptr %i.y, align 8, !tbaa !10
  %wide.load211 = load <4 x double>, ptr %i.z, align 8, !tbaa !10
  %i.aa = getelementptr [8 x i8], ptr %invariant.gep184, i64 %index207 ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 32
  %i.ac = getelementptr i8, ptr %i.aa, i64 64
  %i.ad = getelementptr i8, ptr %i.aa, i64 96
  store <4 x double> %wide.load208, ptr %i.aa, align 8, !tbaa !10
  store <4 x double> %wide.load209, ptr %i.ab, align 8, !tbaa !10
  store <4 x double> %wide.load210, ptr %i.ac, align 8, !tbaa !10
  store <4 x double> %wide.load211, ptr %i.ad, align 8, !tbaa !10
  %index.next212 = add nuw i64 %index207, 16      ; 2 uses
  %i.ae = icmp eq i64 %index.next212, %n.vec205
  br i1 %i.ae, label %middle.block213, label %vector.body206, !llvm.loop !160

middle.block213:                                  ; preds = %vector.body206
  %cmp.n214 = icmp eq i64 %indvars.iv153, %n.vec205
  br i1 %cmp.n214, label %.loopexit230, label %vec.epilog.iter.check218

vec.epilog.iter.check218:                         ; preds = %middle.block213
  %min.epilog.iters.check219 = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check219, label %vec.epilog.scalar.ph217.preheader, label %vec.epilog.ph220, !prof !14

vec.epilog.ph220:                                 ; preds = %vector.main.loop.iter.check202, %vec.epilog.iter.check218
  %vec.epilog.resume.val215 = phi i64 [ %n.vec205, %vec.epilog.iter.check218 ], [ 0, %vector.main.loop.iter.check202 ]
  %n.vec221 = and i64 %indvars.iv153, 9223372036854775804 ; 4 uses
  %i.af = add i64 %.0103, %n.vec221               ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %5, i64 %.0103
  br label %vec.epilog.vector.body222

vec.epilog.vector.body222:                        ; preds = %vec.epilog.vector.body222, %vec.epilog.ph220
  %index223 = phi i64 [ %vec.epilog.resume.val215, %vec.epilog.ph220 ], [ %index.next225, %vec.epilog.vector.body222 ] ; 3 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %index223
  %wide.load224 = load <4 x double>, ptr %i.ah, align 8, !tbaa !10
  %i.ai = getelementptr [8 x i8], ptr %invariant.gep184, i64 %index223
  store <4 x double> %wide.load224, ptr %i.ai, align 8, !tbaa !10
  %index.next225 = add nuw i64 %index223, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next225, %n.vec221
  br i1 %i.aj, label %vec.epilog.middle.block226, label %vec.epilog.vector.body222, !llvm.loop !161

vec.epilog.middle.block226:                       ; preds = %vec.epilog.vector.body222
  %cmp.n227 = icmp eq i64 %indvars.iv153, %n.vec221
  br i1 %cmp.n227, label %.loopexit230, label %vec.epilog.scalar.ph217.preheader

vec.epilog.scalar.ph217.preheader:                ; preds = %iter.check216, %vec.epilog.iter.check218, %vec.epilog.middle.block226
  %indvars.iv144.ph = phi i64 [ 0, %iter.check216 ], [ %n.vec205, %vec.epilog.iter.check218 ], [ %n.vec221, %vec.epilog.middle.block226 ] ; 4 uses
  %indvars.iv142.ph = phi i64 [ %.0103, %iter.check216 ], [ %i.u, %vec.epilog.iter.check218 ], [ %i.af, %vec.epilog.middle.block226 ] ; 2 uses
  %i.ak = sub nsw i64 %indvars.iv153, %indvars.iv144.ph
  %i.al = sub nsw i64 %indvars.iv155, %indvars.iv144.ph
  %xtraiter239 = and i64 %i.ak, 7                 ; 2 uses
  %lcmp.mod240.not = icmp eq i64 %xtraiter239, 0
  br i1 %lcmp.mod240.not, label %vec.epilog.scalar.ph217.prol.loopexit, label %vec.epilog.scalar.ph217.prol

vec.epilog.scalar.ph217.prol:                     ; preds = %vec.epilog.scalar.ph217.preheader, %vec.epilog.scalar.ph217.prol
  %indvars.iv144.prol = phi i64 [ %indvars.iv.next145.prol, %vec.epilog.scalar.ph217.prol ], [ %indvars.iv144.ph, %vec.epilog.scalar.ph217.preheader ] ; 2 uses
  %indvars.iv142.prol = phi i64 [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph217.prol ], [ %indvars.iv142.ph, %vec.epilog.scalar.ph217.preheader ] ; 2 uses
  %prol.iter241 = phi i64 [ %prol.iter241.next, %vec.epilog.scalar.ph217.prol ], [ 0, %vec.epilog.scalar.ph217.preheader ]
  %i.am = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv142.prol
  %i.an = load double, ptr %i.am, align 8, !tbaa !10
  %i.ao = mul nsw i64 %indvars.iv144.prol, %i.g
  %gep185.prol = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.ao
  store double %i.an, ptr %gep185.prol, align 8, !tbaa !10
  %indvars.iv.next145.prol = add nuw nsw i64 %indvars.iv144.prol, 1 ; 2 uses
  %indvars.iv.next143.prol = add nsw i64 %indvars.iv142.prol, 1 ; 3 uses
  %prol.iter241.next = add i64 %prol.iter241, 1   ; 2 uses
  %prol.iter241.cmp.not = icmp eq i64 %prol.iter241.next, %xtraiter239
  br i1 %prol.iter241.cmp.not, label %vec.epilog.scalar.ph217.prol.loopexit, label %vec.epilog.scalar.ph217.prol, !llvm.loop !162

vec.epilog.scalar.ph217.prol.loopexit:            ; preds = %vec.epilog.scalar.ph217.prol, %vec.epilog.scalar.ph217.preheader
  %indvars.iv.next143.lcssa233.unr = phi i64 [ poison, %vec.epilog.scalar.ph217.preheader ], [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph217.prol ]
  %indvars.iv144.unr = phi i64 [ %indvars.iv144.ph, %vec.epilog.scalar.ph217.preheader ], [ %indvars.iv.next145.prol, %vec.epilog.scalar.ph217.prol ]
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %vec.epilog.scalar.ph217.preheader ], [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph217.prol ]
  %i.ap = icmp ult i64 %i.al, 7
  br i1 %i.ap, label %.loopexit230, label %vec.epilog.scalar.ph217

.preheader.preheader:                             ; preds = %.loopexit230
  %i.aq = add i32 %i.f, 1                         ; 3 uses
  %i.ar = add nsw i32 %i.r, -1                    ; 4 uses
  %xtraiter242 = and i64 %wide.trip.count160, 1
  %i.as = icmp eq i32 %i.r, 1
  br i1 %i.as, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter246 = and i64 %wide.trip.count160, 2147483646
  br label %.preheader

vec.epilog.scalar.ph217:                          ; preds = %vec.epilog.scalar.ph217.prol.loopexit, %vec.epilog.scalar.ph217
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.7, %vec.epilog.scalar.ph217 ], [ %indvars.iv144.unr, %vec.epilog.scalar.ph217.prol.loopexit ] ; 9 uses
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.7, %vec.epilog.scalar.ph217 ], [ %indvars.iv142.unr, %vec.epilog.scalar.ph217.prol.loopexit ] ; 9 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv142
  %i.au = load double, ptr %i.at, align 8, !tbaa !10
  %i.av = mul nsw i64 %indvars.iv144, %i.g
  %gep185 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.av
  store double %i.au, ptr %gep185, align 8, !tbaa !10
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  %i.aw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !10
  %i.az = mul nsw i64 %indvars.iv.next145, %i.g
  %gep185.1 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.az
  store double %i.ay, ptr %gep185.1, align 8, !tbaa !10
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2
  %i.ba = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !10
  %i.bd = mul nsw i64 %indvars.iv.next145.1, %i.g
  %gep185.2 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.bd
  store double %i.bc, ptr %gep185.2, align 8, !tbaa !10
  %indvars.iv.next145.2 = add nuw nsw i64 %indvars.iv144, 3
  %i.be = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.bf = getelementptr i8, ptr %i.be, i64 24
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !10
  %i.bh = mul nsw i64 %indvars.iv.next145.2, %i.g
  %gep185.3 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.bh
  store double %i.bg, ptr %gep185.3, align 8, !tbaa !10
  %indvars.iv.next145.3 = add nuw nsw i64 %indvars.iv144, 4
  %i.bi = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.bj = getelementptr i8, ptr %i.bi, i64 32
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !10
  %i.bl = mul nsw i64 %indvars.iv.next145.3, %i.g
  %gep185.4 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.bl
  store double %i.bk, ptr %gep185.4, align 8, !tbaa !10
  %indvars.iv.next145.4 = add nuw nsw i64 %indvars.iv144, 5
  %i.bm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.bn = getelementptr i8, ptr %i.bm, i64 40
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !10
  %i.bp = mul nsw i64 %indvars.iv.next145.4, %i.g
  %gep185.5 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.bp
  store double %i.bo, ptr %gep185.5, align 8, !tbaa !10
  %indvars.iv.next145.5 = add nuw nsw i64 %indvars.iv144, 6
  %i.bq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.br = getelementptr i8, ptr %i.bq, i64 48
  %i.bs = load double, ptr %i.br, align 8, !tbaa !10
  %i.bt = mul nsw i64 %indvars.iv.next145.5, %i.g
  %gep185.6 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.bt
  store double %i.bs, ptr %gep185.6, align 8, !tbaa !10
  %indvars.iv.next145.6 = add nuw nsw i64 %indvars.iv144, 7
  %i.bu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv142
  %i.bv = getelementptr i8, ptr %i.bu, i64 56
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !10
  %i.bx = mul nsw i64 %indvars.iv.next145.6, %i.g
  %gep185.7 = getelementptr [8 x i8], ptr %invariant.gep184, i64 %i.bx
  store double %i.bw, ptr %gep185.7, align 8, !tbaa !10
  %indvars.iv.next145.7 = add nuw nsw i64 %indvars.iv144, 8 ; 2 uses
  %indvars.iv.next143.7 = add nsw i64 %indvars.iv142, 8 ; 2 uses
  %exitcond152.not.7 = icmp eq i64 %indvars.iv.next145.7, %indvars.iv153
  br i1 %exitcond152.not.7, label %.loopexit230, label %vec.epilog.scalar.ph217, !llvm.loop !163

.loopexit230:                                     ; preds = %vec.epilog.scalar.ph217.prol.loopexit, %vec.epilog.scalar.ph217, %vec.epilog.middle.block226, %middle.block213
  %indvars.iv.next143.lcssa = phi i64 [ %i.af, %vec.epilog.middle.block226 ], [ %i.u, %middle.block213 ], [ %indvars.iv.next143.lcssa233.unr, %vec.epilog.scalar.ph217.prol.loopexit ], [ %indvars.iv.next143.7, %vec.epilog.scalar.ph217 ]
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  %exitcond161.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count160
  br i1 %exitcond161.not, label %.preheader.preheader, label %iter.check216, !llvm.loop !164

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv170 = phi i32 [ %i.ar, %.preheader.preheader.new ], [ %indvars.iv.next171.1, %.preheader ] ; 3 uses
  %indvars.iv166 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next167.1, %.preheader ] ; 4 uses
  %.2108 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.cx, %.preheader ] ; 2 uses
  %niter247 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter247.next.1, %.preheader ]
  %i.by = trunc nuw nsw i64 %indvars.iv166 to i32
  %i.bz = mul i32 %i.aq, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 3
  %scevgep163 = getelementptr i8, ptr %i.j, i64 %i.cb
  %i.cc = trunc i64 %indvars.iv166 to i32
  %i.cd = sub i32 %i.ar, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 8
  %i.ch = shl nsw i64 %.2108, 3
  %scevgep162 = getelementptr i8, ptr %i.o, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep162, ptr noundef nonnull align 8 dereferenceable(1) %scevgep163, i64 range(i64 0, 17179869177) %i.cg, i1 false), !tbaa !10
  %i.ci = zext i32 %indvars.iv170 to i64
  %i.cj = add nsw i64 %.2108, 1
  %i.ck = add nsw i64 %i.cj, %i.ci                ; 2 uses
  %indvars.iv.next167 = or disjoint i64 %indvars.iv166, 1 ; 2 uses
  %indvars.iv.next171 = add i32 %indvars.iv170, -1
  %i.cl = trunc nuw nsw i64 %indvars.iv.next167 to i32
  %i.cm = mul i32 %i.aq, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 3
  %scevgep163.1 = getelementptr i8, ptr %i.j, i64 %i.co
  %i.cp = trunc i64 %indvars.iv.next167 to i32
  %i.cq = sub i32 %i.ar, %i.cp
  %i.cr = zext i32 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = add nuw nsw i64 %i.cs, 8
  %i.cu = shl nsw i64 %i.ck, 3
  %scevgep162.1 = getelementptr i8, ptr %i.o, i64 %i.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep162.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep163.1, i64 range(i64 0, 17179869177) %i.ct, i1 false), !tbaa !10
  %i.cv = zext i32 %indvars.iv.next171 to i64
  %i.cw = add nsw i64 %i.ck, 1
  %i.cx = add nsw i64 %i.cw, %i.cv                ; 2 uses
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %indvars.iv.next171.1 = add i32 %indvars.iv170, -2
  %niter247.next.1 = add i64 %niter247, 2         ; 2 uses
  %niter247.ncmp.1 = icmp eq i64 %niter247.next.1, %unroll_iter246
  br i1 %niter247.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !165

iter.check:                                       ; preds = %.preheader89.preheader, %.loopexit231
  %indvars.iv113 = phi i64 [ 0, %.preheader89.preheader ], [ %indvars.iv.next114, %.loopexit231 ] ; 8 uses
  %.495 = phi i64 [ 0, %.preheader89.preheader ], [ %indvars.iv.next.lcssa, %.loopexit231 ] ; 5 uses
  %i.cy = sub nsw i64 %wide.trip.count121, %indvars.iv113 ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv113 ; 11 uses
  %min.iters.check = icmp ugt i64 %i.cy, 3
  %or.cond232 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond232, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check187 = icmp ult i64 %i.cy, 16
  br i1 %min.iters.check187, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %i.cy, 12
  %n.vec = and i64 %i.cy, -16                     ; 5 uses
  %i.da = add i64 %indvars.iv113, %n.vec
  %i.db = add i64 %.495, %n.vec                   ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %5, i64 %.495
  %i.dd = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv113
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = getelementptr [8 x i8], ptr %i.dc, i64 %index ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %wide.load = load <4 x double>, ptr %i.de, align 8, !tbaa !10
  %wide.load188 = load <4 x double>, ptr %i.df, align 8, !tbaa !10
  %wide.load189 = load <4 x double>, ptr %i.dg, align 8, !tbaa !10
  %wide.load190 = load <4 x double>, ptr %i.dh, align 8, !tbaa !10
  %i.di = getelementptr [8 x i8], ptr %i.dd, i64 %index ; 4 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 32
  %i.dk = getelementptr i8, ptr %i.di, i64 64
  %i.dl = getelementptr i8, ptr %i.di, i64 96
  store <4 x double> %wide.load, ptr %i.di, align 8, !tbaa !10
  store <4 x double> %wide.load188, ptr %i.dj, align 8, !tbaa !10
  store <4 x double> %wide.load189, ptr %i.dk, align 8, !tbaa !10
  store <4 x double> %wide.load190, ptr %i.dl, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %.loopexit231, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec192 = and i64 %i.cy, -4                   ; 4 uses
  %i.dn = add i64 %indvars.iv113, %n.vec192
  %i.do = add i64 %.495, %n.vec192                ; 2 uses
  %i.dp = getelementptr [8 x i8], ptr %5, i64 %.495
  %i.dq = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv113
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index193 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next195, %vec.epilog.vector.body ] ; 3 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dp, i64 %index193
  %wide.load194 = load <4 x double>, ptr %i.dr, align 8, !tbaa !10
  %i.ds = getelementptr [8 x i8], ptr %i.dq, i64 %index193
  store <4 x double> %wide.load194, ptr %i.ds, align 8, !tbaa !10
  %index.next195 = add nuw i64 %index193, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next195, %n.vec192
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !167

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n196 = icmp eq i64 %i.cy, %n.vec192
  br i1 %cmp.n196, label %.loopexit231, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv115.ph = phi i64 [ %indvars.iv113, %iter.check ], [ %i.da, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %.495, %iter.check ], [ %i.db, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ] ; 2 uses
  %i.du = sub i64 %wide.trip.count121, %indvars.iv115.ph
  %xtraiter = and i64 %i.du, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv115.prol = phi i64 [ %indvars.iv.next116.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv115.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dv = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv.prol
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !10
  %i.dx = mul nsw i64 %indvars.iv115.prol, %i.g
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dx
  store double %i.dw, ptr %gep.prol, align 8, !tbaa !10
  %indvars.iv.next116.prol = add nuw nsw i64 %indvars.iv115.prol, 1 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !168

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next.lcssa235.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next116.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dy = sub i64 %indvars.iv115.ph, %wide.trip.count121
  %i.dz = icmp ugt i64 %i.dy, -8
  br i1 %i.dz, label %.loopexit231, label %vec.epilog.scalar.ph

.preheader86.preheader:                           ; preds = %.loopexit231
  %xtraiter236 = and i64 %wide.trip.count121, 3   ; 3 uses
  %i.ea = icmp ult i32 %i.r, 4
  br i1 %i.ea, label %.preheader86.epil.preheader, label %.preheader86.preheader.new

.preheader86.preheader.new:                       ; preds = %.preheader86.preheader
  %unroll_iter = and i64 %wide.trip.count121, 2147483644
  br label %.preheader86

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.7, %vec.epilog.scalar.ph ], [ %indvars.iv115.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !10
  %i.ed = mul nsw i64 %indvars.iv115, %i.g
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ed
  store double %i.ec, ptr %gep, align 8, !tbaa !10
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %i.ee = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !10
  %i.eh = mul nsw i64 %indvars.iv.next116, %i.g
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.eh
  store double %i.eg, ptr %gep.1, align 8, !tbaa !10
  %indvars.iv.next116.1 = add nuw nsw i64 %indvars.iv115, 2
  %i.ei = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !10
  %i.el = mul nsw i64 %indvars.iv.next116.1, %i.g
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.el
  store double %i.ek, ptr %gep.2, align 8, !tbaa !10
  %indvars.iv.next116.2 = add nuw nsw i64 %indvars.iv115, 3
  %i.em = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.en = getelementptr i8, ptr %i.em, i64 24
  %i.eo = load double, ptr %i.en, align 8, !tbaa !10
  %i.ep = mul nsw i64 %indvars.iv.next116.2, %i.g
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ep
  store double %i.eo, ptr %gep.3, align 8, !tbaa !10
  %indvars.iv.next116.3 = add nuw nsw i64 %indvars.iv115, 4
  %i.eq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.er = getelementptr i8, ptr %i.eq, i64 32
  %i.es = load double, ptr %i.er, align 8, !tbaa !10
  %i.et = mul nsw i64 %indvars.iv.next116.3, %i.g
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.et
  store double %i.es, ptr %gep.4, align 8, !tbaa !10
  %indvars.iv.next116.4 = add nuw nsw i64 %indvars.iv115, 5
  %i.eu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ev = getelementptr i8, ptr %i.eu, i64 40
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !10
  %i.ex = mul nsw i64 %indvars.iv.next116.4, %i.g
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ex
  store double %i.ew, ptr %gep.5, align 8, !tbaa !10
  %indvars.iv.next116.5 = add nuw nsw i64 %indvars.iv115, 6
  %i.ey = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ez = getelementptr i8, ptr %i.ey, i64 48
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !10
  %i.fb = mul nsw i64 %indvars.iv.next116.5, %i.g
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fb
  store double %i.fa, ptr %gep.6, align 8, !tbaa !10
  %indvars.iv.next116.6 = add nuw nsw i64 %indvars.iv115, 7
  %i.fc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.fd = getelementptr i8, ptr %i.fc, i64 56
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !10
  %i.ff = mul nsw i64 %indvars.iv.next116.6, %i.g
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ff
  store double %i.fe, ptr %gep.7, align 8, !tbaa !10
  %indvars.iv.next116.7 = add nuw nsw i64 %indvars.iv115, 8 ; 2 uses
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next116.7, %wide.trip.count121
  br i1 %exitcond.not.7, label %.loopexit231, label %vec.epilog.scalar.ph, !llvm.loop !169

.loopexit231:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.do, %vec.epilog.middle.block ], [ %i.db, %middle.block ], [ %indvars.iv.next.lcssa235.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next.7, %vec.epilog.scalar.ph ]
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count121
  br i1 %exitcond122.not, label %.preheader86.preheader, label %iter.check, !llvm.loop !170

.preheader86:                                     ; preds = %.preheader86, %.preheader86.preheader.new
  %indvars.iv128 = phi i64 [ 1, %.preheader86.preheader.new ], [ %indvars.iv.next129.3, %.preheader86 ] ; 5 uses
  %indvar = phi i64 [ 0, %.preheader86.preheader.new ], [ %indvar.next.3, %.preheader86 ] ; 6 uses
  %.699 = phi i64 [ 0, %.preheader86.preheader.new ], [ %i.fz, %.preheader86 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader86.preheader.new ], [ %niter.next.3, %.preheader86 ]
  %i.fg = mul i64 %i.h, %indvar
  %scevgep123 = getelementptr i8, ptr %i.j, i64 %i.fg
  %i.fh = shl nuw nsw i64 %indvar, 3
  %i.fi = or disjoint i64 %i.fh, 8
  %i.fj = shl nsw i64 %.699, 3
  %scevgep = getelementptr i8, ptr %i.o, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123, i64 range(i64 0, 17179869177) %i.fi, i1 false), !tbaa !10
  %i.fk = add i64 %indvars.iv128, %.699           ; 2 uses
  %indvar.next = or disjoint i64 %indvar, 1       ; 2 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %i.fl = mul i64 %i.h, %indvar.next
  %scevgep123.1 = getelementptr i8, ptr %i.j, i64 %i.fl
  %i.fm = shl nuw nsw i64 %indvar.next, 3
  %i.fn = add nuw nsw i64 %i.fm, 8
  %i.fo = shl nsw i64 %i.fk, 3
  %scevgep.1 = getelementptr i8, ptr %i.o, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123.1, i64 range(i64 0, 17179869177) %i.fn, i1 false), !tbaa !10
  %i.fp = add i64 %indvars.iv.next129, %i.fk      ; 2 uses
  %indvar.next.1 = or disjoint i64 %indvar, 2     ; 2 uses
  %indvars.iv.next129.1 = add nuw nsw i64 %indvars.iv128, 2
  %i.fq = mul i64 %i.h, %indvar.next.1
  %scevgep123.2 = getelementptr i8, ptr %i.j, i64 %i.fq
  %i.fr = shl nuw nsw i64 %indvar.next.1, 3
  %i.fs = or disjoint i64 %i.fr, 8
  %i.ft = shl nsw i64 %i.fp, 3
  %scevgep.2 = getelementptr i8, ptr %i.o, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.2, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123.2, i64 range(i64 0, 17179869177) %i.fs, i1 false), !tbaa !10
  %i.fu = add i64 %indvars.iv.next129.1, %i.fp    ; 2 uses
  %indvar.next.2 = or disjoint i64 %indvar, 3     ; 2 uses
  %indvars.iv.next129.2 = add nuw nsw i64 %indvars.iv128, 3
  %i.fv = mul i64 %i.h, %indvar.next.2
  %scevgep123.3 = getelementptr i8, ptr %i.j, i64 %i.fv
  %i.fw = shl nuw nsw i64 %indvar.next.2, 3
  %i.fx = add nuw nsw i64 %i.fw, 8
  %i.fy = shl nsw i64 %i.fu, 3
  %scevgep.3 = getelementptr i8, ptr %i.o, i64 %i.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.3, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123.3, i64 range(i64 0, 17179869177) %i.fx, i1 false), !tbaa !10
  %i.fz = add i64 %indvars.iv.next129.2, %i.fu    ; 2 uses
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit234.unr-lcssa, label %.preheader86, !llvm.loop !171

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod244.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod244.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv166.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next167.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.2108.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.cx, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod245 = trunc i32 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod245)
  %i.ga = trunc nuw nsw i64 %indvars.iv166.epil.init to i32
  %i.gb = mul i32 %i.aq, %i.ga
  %i.gc = sext i32 %i.gb to i64
  %i.gd = shl nsw i64 %i.gc, 3
  %scevgep163.epil = getelementptr i8, ptr %i.j, i64 %i.gd
  %i.ge = trunc i64 %indvars.iv166.epil.init to i32
  %i.gf = sub i32 %i.ar, %i.ge
  %i.gg = zext i32 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 3
  %i.gi = add nuw nsw i64 %i.gh, 8
  %i.gj = shl nsw i64 %.2108.epil.init, 3
  %scevgep162.epil = getelementptr i8, ptr %i.o, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep162.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep163.epil, i64 range(i64 0, 17179869177) %i.gi, i1 false), !tbaa !10
  br label %.loopexit

.loopexit.loopexit234.unr-lcssa:                  ; preds = %.preheader86
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %.loopexit, label %.preheader86.epil.preheader

.preheader86.epil.preheader:                      ; preds = %.loopexit.loopexit234.unr-lcssa, %.preheader86.preheader
  %indvars.iv128.epil.init = phi i64 [ 1, %.preheader86.preheader ], [ %indvars.iv.next129.3, %.loopexit.loopexit234.unr-lcssa ]
  %indvar.epil.init = phi i64 [ 0, %.preheader86.preheader ], [ %indvar.next.3, %.loopexit.loopexit234.unr-lcssa ]
  %.699.epil.init = phi i64 [ 0, %.preheader86.preheader ], [ %i.fz, %.loopexit.loopexit234.unr-lcssa ]
  %lcmp.mod238 = icmp ne i64 %xtraiter236, 0
  call void @llvm.assume(i1 %lcmp.mod238)
  br label %.preheader86.epil

.preheader86.epil:                                ; preds = %.preheader86.epil, %.preheader86.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.preheader86.epil.preheader ], [ %indvars.iv.next129.epil, %.preheader86.epil ] ; 2 uses
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader86.epil.preheader ], [ %indvar.next.epil, %.preheader86.epil ] ; 3 uses
  %.699.epil = phi i64 [ %.699.epil.init, %.preheader86.epil.preheader ], [ %i.go, %.preheader86.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader86.epil.preheader ], [ %epil.iter.next, %.preheader86.epil ]
  %i.gk = mul i64 %i.h, %indvar.epil
  %scevgep123.epil = getelementptr i8, ptr %i.j, i64 %i.gk
  %i.gl = shl nuw nsw i64 %indvar.epil, 3
  %i.gm = add nuw nsw i64 %i.gl, 8
  %i.gn = shl nsw i64 %.699.epil, 3
  %scevgep.epil = getelementptr i8, ptr %i.o, i64 %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123.epil, i64 range(i64 0, 17179869177) %i.gm, i1 false), !tbaa !10
  %i.go = add i64 %indvars.iv128.epil, %.699.epil
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter236
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader86.epil, !llvm.loop !172

.loopexit:                                        ; preds = %.loopexit.loopexit234.unr-lcssa, %.preheader86.epil, %.preheader.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader85, %.preheader90
  %i.gp = load i32, ptr %i.a, align 4, !tbaa !8
  %i.gq = load i32, ptr %i.c, align 4, !tbaa !8
  %i.gr = load i32, ptr %7, align 4, !tbaa !8
  call void @cblas_dtpsv(i32 noundef 101, i32 noundef %i.p, i32 noundef %i.gp, i32 noundef %i.gq, i32 noundef %i.r, ptr noundef %i.o, ptr noundef %6, i32 noundef %i.gr) #7
  call void @free(ptr noundef %i.j) #7
  call void @free(ptr noundef %i.o) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.gs = load i32, ptr %i.b, align 4, !tbaa !8
  %i.gt = load i32, ptr %i.a, align 4, !tbaa !8
  %i.gu = load i32, ptr %i.c, align 4, !tbaa !8
  %i.gv = load i32, ptr %4, align 4, !tbaa !8
  %i.gw = load i32, ptr %7, align 4, !tbaa !8
  call void @cblas_dtpsv(i32 noundef 102, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %i.gv, ptr noundef %5, ptr noundef %6, i32 noundef %i.gw) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare void @cblas_dtpsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @cdspr_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @get_uplo_type(ptr noundef %1, ptr noundef nonnull %i.a) #7
  %i.b = load i32, ptr %0, align 4, !tbaa !8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !8      ; 7 uses
  %i.e = sext i32 %i.d to i64                     ; 40 uses
  %i.f = shl nsw i64 %i.e, 3                      ; 11 uses
  %i.g = mul i64 %i.f, %i.e
  %i.h = call noalias ptr @malloc(i64 noundef %i.g) #8 ; 21 uses
  %i.i = add nsw i64 %i.e, 1
  %i.j = shl nsw i64 %i.e, 2
  %i.k = mul i64 %i.j, %i.i
  %i.l = and i64 %i.k, -8
  %i.m = call noalias ptr @malloc(i64 noundef %i.l) #8 ; 18 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.o = icmp eq i32 %i.n, 121
  %i.p = load i32, ptr %2, align 4, !tbaa !8      ; 8 uses
  %i.q = icmp sgt i32 %i.p, 0                     ; 2 uses
  br i1 %i.o, label %.preheader161, label %.preheader166

.preheader166:                                    ; preds = %bb.b
  br i1 %i.q, label %.preheader165.preheader, label %.loopexit159

.preheader165.preheader:                          ; preds = %.preheader166
  %wide.trip.count222 = zext nneg i32 %i.p to i64 ; 7 uses
  %ident.check.not = icmp eq i32 %i.d, 1
  br label %iter.check

.preheader161:                                    ; preds = %bb.b
  br i1 %i.q, label %.preheader160.preheader, label %.loopexit159

.preheader160.preheader:                          ; preds = %.preheader161
  %wide.trip.count261 = zext nneg i32 %i.p to i64 ; 3 uses
  %ident.check385.not = icmp eq i32 %i.d, 1
  br label %iter.check401

iter.check401:                                    ; preds = %.preheader160.preheader, %.loopexit480
  %indvars.iv256 = phi i64 [ 0, %.preheader160.preheader ], [ %indvars.iv.next257, %.loopexit480 ] ; 3 uses
  %indvars.iv254 = phi i64 [ 1, %.preheader160.preheader ], [ %indvars.iv.next255, %.loopexit480 ] ; 10 uses
  %.0181 = phi i64 [ 0, %.preheader160.preheader ], [ %indvars.iv.next244.lcssa, %.loopexit480 ] ; 5 uses
  %invariant.gep364 = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv256 ; 11 uses
  %min.iters.check386 = icmp samesign ugt i64 %indvars.iv254, 3
  %or.cond = and i1 %min.iters.check386, %ident.check385.not
  br i1 %or.cond, label %vector.main.loop.iter.check387, label %vec.epilog.scalar.ph402.preheader

vector.main.loop.iter.check387:                   ; preds = %iter.check401
  %min.iters.check388 = icmp samesign ult i64 %indvars.iv254, 16
  br i1 %min.iters.check388, label %vec.epilog.ph405, label %vector.ph389

vector.ph389:                                     ; preds = %vector.main.loop.iter.check387
  %i.r = and i64 %indvars.iv254, 12
  %n.vec390 = and i64 %indvars.iv254, 9223372036854775792 ; 5 uses
  %i.s = add i64 %.0181, %n.vec390                ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %6, i64 %.0181
  br label %vector.body391

vector.body391:                                   ; preds = %vector.ph389, %vector.body391
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next397, %vector.body391 ] ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %index392 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %wide.load393 = load <4 x double>, ptr %i.u, align 8, !tbaa !10
  %wide.load394 = load <4 x double>, ptr %i.v, align 8, !tbaa !10
  %wide.load395 = load <4 x double>, ptr %i.w, align 8, !tbaa !10
  %wide.load396 = load <4 x double>, ptr %i.x, align 8, !tbaa !10
  %i.y = getelementptr [8 x i8], ptr %invariant.gep364, i64 %index392 ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 32
  %i.aa = getelementptr i8, ptr %i.y, i64 64
  %i.ab = getelementptr i8, ptr %i.y, i64 96
  store <4 x double> %wide.load393, ptr %i.y, align 8, !tbaa !10
  store <4 x double> %wide.load394, ptr %i.z, align 8, !tbaa !10
  store <4 x double> %wide.load395, ptr %i.aa, align 8, !tbaa !10
  store <4 x double> %wide.load396, ptr %i.ab, align 8, !tbaa !10
  %index.next397 = add nuw i64 %index392, 16      ; 2 uses
  %i.ac = icmp eq i64 %index.next397, %n.vec390
  br i1 %i.ac, label %middle.block398, label %vector.body391, !llvm.loop !173

middle.block398:                                  ; preds = %vector.body391
  %cmp.n399 = icmp eq i64 %indvars.iv254, %n.vec390
  br i1 %cmp.n399, label %.loopexit480, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph405, !prof !14

vec.epilog.ph405:                                 ; preds = %vector.main.loop.iter.check387, %vec.epilog.iter.check403
  %vec.epilog.resume.val400 = phi i64 [ %n.vec390, %vec.epilog.iter.check403 ], [ 0, %vector.main.loop.iter.check387 ]
  %n.vec406 = and i64 %indvars.iv254, 9223372036854775804 ; 4 uses
  %i.ad = add i64 %.0181, %n.vec406               ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %6, i64 %.0181
  br label %vec.epilog.vector.body407

vec.epilog.vector.body407:                        ; preds = %vec.epilog.vector.body407, %vec.epilog.ph405
  %index408 = phi i64 [ %vec.epilog.resume.val400, %vec.epilog.ph405 ], [ %index.next410, %vec.epilog.vector.body407 ] ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %index408
  %wide.load409 = load <4 x double>, ptr %i.af, align 8, !tbaa !10
  %i.ag = getelementptr [8 x i8], ptr %invariant.gep364, i64 %index408
  store <4 x double> %wide.load409, ptr %i.ag, align 8, !tbaa !10
  %index.next410 = add nuw i64 %index408, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next410, %n.vec406
  br i1 %i.ah, label %vec.epilog.middle.block411, label %vec.epilog.vector.body407, !llvm.loop !174

vec.epilog.middle.block411:                       ; preds = %vec.epilog.vector.body407
  %cmp.n412 = icmp eq i64 %indvars.iv254, %n.vec406
  br i1 %cmp.n412, label %.loopexit480, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check401, %vec.epilog.iter.check403, %vec.epilog.middle.block411
  %indvars.iv245.ph = phi i64 [ 0, %iter.check401 ], [ %n.vec390, %vec.epilog.iter.check403 ], [ %n.vec406, %vec.epilog.middle.block411 ] ; 4 uses
  %indvars.iv243.ph = phi i64 [ %.0181, %iter.check401 ], [ %i.s, %vec.epilog.iter.check403 ], [ %i.ad, %vec.epilog.middle.block411 ] ; 2 uses
  %i.ai = sub nsw i64 %indvars.iv254, %indvars.iv245.ph
  %i.aj = sub nsw i64 %indvars.iv256, %indvars.iv245.ph
  %xtraiter494 = and i64 %i.ai, 7                 ; 2 uses
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  br i1 %lcmp.mod495.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader, %vec.epilog.scalar.ph402.prol
  %indvars.iv245.prol = phi i64 [ %indvars.iv.next246.prol, %vec.epilog.scalar.ph402.prol ], [ %indvars.iv245.ph, %vec.epilog.scalar.ph402.preheader ] ; 2 uses
  %indvars.iv243.prol = phi i64 [ %indvars.iv.next244.prol, %vec.epilog.scalar.ph402.prol ], [ %indvars.iv243.ph, %vec.epilog.scalar.ph402.preheader ] ; 2 uses
  %prol.iter496 = phi i64 [ %prol.iter496.next, %vec.epilog.scalar.ph402.prol ], [ 0, %vec.epilog.scalar.ph402.preheader ]
  %i.ak = getelementptr inbounds [8 x i8], ptr %6, i64 %indvars.iv243.prol
  %i.al = load double, ptr %i.ak, align 8, !tbaa !10
  %i.am = mul nsw i64 %indvars.iv245.prol, %i.e
  %gep365.prol = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.am
  store double %i.al, ptr %gep365.prol, align 8, !tbaa !10
  %indvars.iv.next246.prol = add nuw nsw i64 %indvars.iv245.prol, 1 ; 2 uses
  %indvars.iv.next244.prol = add nsw i64 %indvars.iv243.prol, 1 ; 3 uses
  %prol.iter496.next = add i64 %prol.iter496, 1   ; 2 uses
  %prol.iter496.cmp.not = icmp eq i64 %prol.iter496.next, %xtraiter494
  br i1 %prol.iter496.cmp.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol, !llvm.loop !175

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %indvars.iv.next244.lcssa488.unr = phi i64 [ poison, %vec.epilog.scalar.ph402.preheader ], [ %indvars.iv.next244.prol, %vec.epilog.scalar.ph402.prol ]
  %indvars.iv245.unr = phi i64 [ %indvars.iv245.ph, %vec.epilog.scalar.ph402.preheader ], [ %indvars.iv.next246.prol, %vec.epilog.scalar.ph402.prol ]
  %indvars.iv243.unr = phi i64 [ %indvars.iv243.ph, %vec.epilog.scalar.ph402.preheader ], [ %indvars.iv.next244.prol, %vec.epilog.scalar.ph402.prol ]
  %i.an = icmp ult i64 %i.aj, 7
  br i1 %i.an, label %.loopexit480, label %vec.epilog.scalar.ph402

.preheader157.preheader:                          ; preds = %.loopexit480
  %i.ao = add i32 %i.d, 1                         ; 3 uses
  %i.ap = add nsw i32 %i.p, -1                    ; 4 uses
  %xtraiter497 = and i64 %wide.trip.count261, 1
  %i.aq = icmp eq i32 %i.p, 1
  br i1 %i.aq, label %.preheader157.epil.preheader, label %.preheader157.preheader.new

.preheader157.preheader.new:                      ; preds = %.preheader157.preheader
  %unroll_iter501 = and i64 %wide.trip.count261, 2147483646
  br label %.preheader157

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402
  %indvars.iv245 = phi i64 [ %indvars.iv.next246.7, %vec.epilog.scalar.ph402 ], [ %indvars.iv245.unr, %vec.epilog.scalar.ph402.prol.loopexit ] ; 9 uses
  %indvars.iv243 = phi i64 [ %indvars.iv.next244.7, %vec.epilog.scalar.ph402 ], [ %indvars.iv243.unr, %vec.epilog.scalar.ph402.prol.loopexit ] ; 9 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %6, i64 %indvars.iv243
  %i.as = load double, ptr %i.ar, align 8, !tbaa !10
  %i.at = mul nsw i64 %indvars.iv245, %i.e
  %gep365 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.at
  store double %i.as, ptr %gep365, align 8, !tbaa !10
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1
  %i.au = getelementptr [8 x i8], ptr %6, i64 %indvars.iv243
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !10
  %i.ax = mul nsw i64 %indvars.iv.next246, %i.e
  %gep365.1 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.ax
  store double %i.aw, ptr %gep365.1, align 8, !tbaa !10
  %indvars.iv.next246.1 = add nuw nsw i64 %indvars.iv245, 2
  %i.ay = getelementptr [8 x i8], ptr %6, i64 %indvars.iv243
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !10
  %i.bb = mul nsw i64 %indvars.iv.next246.1, %i.e
  %gep365.2 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.bb
  store double %i.ba, ptr %gep365.2, align 8, !tbaa !10
  %indvars.iv.next246.2 = add nuw nsw i64 %indvars.iv245, 3
  %i.bc = getelementptr [8 x i8], ptr %6, i64 %indvars.iv243
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !10
  %i.bf = mul nsw i64 %indvars.iv.next246.2, %i.e
  %gep365.3 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.bf
  store double %i.be, ptr %gep365.3, align 8, !tbaa !10
  %indvars.iv.next246.3 = add nuw nsw i64 %indvars.iv245, 4
  %i.bg = getelementptr [8 x i8], ptr %6, i64 %indvars.iv243
  %i.bh = getelementptr i8, ptr %i.bg, i64 32
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !10
  %i.bj = mul nsw i64 %indvars.iv.next246.3, %i.e
  %gep365.4 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.bj
  store double %i.bi, ptr %gep365.4, align 8, !tbaa !10
  %indvars.iv.next246.4 = add nuw nsw i64 %indvars.iv245, 5
  %i.bk = getelementptr [8 x i8], ptr %6, i64 %indvars.iv243
  %i.bl = getelementptr i8, ptr %i.bk, i64 40
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !10
  %i.bn = mul nsw i64 %indvars.iv.next246.4, %i.e
  %gep365.5 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.bn
  store double %i.bm, ptr %gep365.5, align 8, !tbaa !10
  %indvars.iv.next246.5 = add nuw nsw i64 %indvars.iv245, 6
  %i.bo = getelementptr [8 x i8], ptr %6, i64 %indvars.iv243
  %i.bp = getelementptr i8, ptr %i.bo, i64 48
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !10
  %i.br = mul nsw i64 %indvars.iv.next246.5, %i.e
  %gep365.6 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.br
  store double %i.bq, ptr %gep365.6, align 8, !tbaa !10
  %indvars.iv.next246.6 = add nuw nsw i64 %indvars.iv245, 7
  %i.bs = getelementptr [8 x i8], ptr %6, i64 %indvars.iv243
  %i.bt = getelementptr i8, ptr %i.bs, i64 56
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !10
  %i.bv = mul nsw i64 %indvars.iv.next246.6, %i.e
  %gep365.7 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %i.bv
  store double %i.bu, ptr %gep365.7, align 8, !tbaa !10
  %indvars.iv.next246.7 = add nuw nsw i64 %indvars.iv245, 8 ; 2 uses
  %indvars.iv.next244.7 = add nsw i64 %indvars.iv243, 8 ; 2 uses
  %exitcond253.not.7 = icmp eq i64 %indvars.iv.next246.7, %indvars.iv254
  br i1 %exitcond253.not.7, label %.loopexit480, label %vec.epilog.scalar.ph402, !llvm.loop !176

.loopexit480:                                     ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %vec.epilog.middle.block411, %middle.block398
  %indvars.iv.next244.lcssa = phi i64 [ %i.ad, %vec.epilog.middle.block411 ], [ %i.s, %middle.block398 ], [ %indvars.iv.next244.lcssa488.unr, %vec.epilog.scalar.ph402.prol.loopexit ], [ %indvars.iv.next244.7, %vec.epilog.scalar.ph402 ]
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1
  %exitcond262.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count261
  br i1 %exitcond262.not, label %.preheader157.preheader, label %iter.check401, !llvm.loop !177

.preheader157:                                    ; preds = %.preheader157, %.preheader157.preheader.new
  %indvars.iv271 = phi i32 [ %i.ap, %.preheader157.preheader.new ], [ %indvars.iv.next272.1, %.preheader157 ] ; 3 uses
  %indvars.iv267 = phi i64 [ 0, %.preheader157.preheader.new ], [ %indvars.iv.next268.1, %.preheader157 ] ; 4 uses
  %.2186 = phi i64 [ 0, %.preheader157.preheader.new ], [ %i.cv, %.preheader157 ] ; 2 uses
  %niter502 = phi i64 [ 0, %.preheader157.preheader.new ], [ %niter502.next.1, %.preheader157 ]
  %i.bw = trunc nuw nsw i64 %indvars.iv267 to i32
  %i.bx = mul i32 %i.ao, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 3
  %scevgep264 = getelementptr i8, ptr %i.h, i64 %i.bz
  %i.ca = trunc i64 %indvars.iv267 to i32
  %i.cb = sub i32 %i.ap, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = add nuw nsw i64 %i.cd, 8
  %i.cf = shl nsw i64 %.2186, 3
  %scevgep263 = getelementptr i8, ptr %i.m, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep263, ptr noundef nonnull align 8 dereferenceable(1) %scevgep264, i64 range(i64 0, 17179869177) %i.ce, i1 false), !tbaa !10
  %i.cg = zext i32 %indvars.iv271 to i64
  %i.ch = add nsw i64 %.2186, 1
  %i.ci = add nsw i64 %i.ch, %i.cg                ; 2 uses
  %indvars.iv.next268 = or disjoint i64 %indvars.iv267, 1 ; 2 uses
  %indvars.iv.next272 = add i32 %indvars.iv271, -1
  %i.cj = trunc nuw nsw i64 %indvars.iv.next268 to i32
  %i.ck = mul i32 %i.ao, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = shl nsw i64 %i.cl, 3
  %scevgep264.1 = getelementptr i8, ptr %i.h, i64 %i.cm
  %i.cn = trunc i64 %indvars.iv.next268 to i32
  %i.co = sub i32 %i.ap, %i.cn
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 8
  %i.cs = shl nsw i64 %i.ci, 3
  %scevgep263.1 = getelementptr i8, ptr %i.m, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep263.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep264.1, i64 range(i64 0, 17179869177) %i.cr, i1 false), !tbaa !10
  %i.ct = zext i32 %indvars.iv.next272 to i64
  %i.cu = add nsw i64 %i.ci, 1
  %i.cv = add nsw i64 %i.cu, %i.ct                ; 2 uses
  %indvars.iv.next268.1 = add nuw nsw i64 %indvars.iv267, 2 ; 2 uses
  %indvars.iv.next272.1 = add i32 %indvars.iv271, -2
  %niter502.next.1 = add i64 %niter502, 2         ; 2 uses
  %niter502.ncmp.1 = icmp eq i64 %niter502.next.1, %unroll_iter501
  br i1 %niter502.ncmp.1, label %.loopexit159.loopexit.unr-lcssa, label %.preheader157, !llvm.loop !178

iter.check:                                       ; preds = %.preheader165.preheader, %.loopexit481
  %indvars.iv214 = phi i64 [ 0, %.preheader165.preheader ], [ %indvars.iv.next215, %.loopexit481 ] ; 8 uses
  %.4173 = phi i64 [ 0, %.preheader165.preheader ], [ %indvars.iv.next.lcssa, %.loopexit481 ] ; 5 uses
  %i.cw = sub nsw i64 %wide.trip.count222, %indvars.iv214 ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv214 ; 11 uses
  %min.iters.check = icmp ugt i64 %i.cw, 3
  %or.cond482 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond482, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check372 = icmp ult i64 %i.cw, 16
  br i1 %min.iters.check372, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cx = and i64 %i.cw, 12
  %n.vec = and i64 %i.cw, -16                     ; 5 uses
  %i.cy = add i64 %indvars.iv214, %n.vec
  %i.cz = add i64 %.4173, %n.vec                  ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %6, i64 %.4173
  %i.db = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv214
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %i.da, i64 %index ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %wide.load = load <4 x double>, ptr %i.dc, align 8, !tbaa !10
  %wide.load373 = load <4 x double>, ptr %i.dd, align 8, !tbaa !10
  %wide.load374 = load <4 x double>, ptr %i.de, align 8, !tbaa !10
  %wide.load375 = load <4 x double>, ptr %i.df, align 8, !tbaa !10
  %i.dg = getelementptr [8 x i8], ptr %i.db, i64 %index ; 4 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 32
  %i.di = getelementptr i8, ptr %i.dg, i64 64
  %i.dj = getelementptr i8, ptr %i.dg, i64 96
  store <4 x double> %wide.load, ptr %i.dg, align 8, !tbaa !10
  store <4 x double> %wide.load373, ptr %i.dh, align 8, !tbaa !10
  store <4 x double> %wide.load374, ptr %i.di, align 8, !tbaa !10
  store <4 x double> %wide.load375, ptr %i.dj, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %.loopexit481, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cx, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec377 = and i64 %i.cw, -4                   ; 4 uses
  %i.dl = add i64 %indvars.iv214, %n.vec377
  %i.dm = add i64 %.4173, %n.vec377               ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %6, i64 %.4173
  %i.do = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv214
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index378 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next380, %vec.epilog.vector.body ] ; 3 uses
  %i.dp = getelementptr [8 x i8], ptr %i.dn, i64 %index378
  %wide.load379 = load <4 x double>, ptr %i.dp, align 8, !tbaa !10
  %i.dq = getelementptr [8 x i8], ptr %i.do, i64 %index378
  store <4 x double> %wide.load379, ptr %i.dq, align 8, !tbaa !10
  %index.next380 = add nuw i64 %index378, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next380, %n.vec377
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !180

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n381 = icmp eq i64 %i.cw, %n.vec377
  br i1 %cmp.n381, label %.loopexit481, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv216.ph = phi i64 [ %indvars.iv214, %iter.check ], [ %i.cy, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %.4173, %iter.check ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ] ; 2 uses
  %i.ds = sub i64 %wide.trip.count222, %indvars.iv216.ph
  %xtraiter = and i64 %i.ds, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv216.prol = phi i64 [ %indvars.iv.next217.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv216.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dt = getelementptr inbounds [8 x i8], ptr %6, i64 %indvars.iv.prol
  %i.du = load double, ptr %i.dt, align 8, !tbaa !10
  %i.dv = mul nsw i64 %indvars.iv216.prol, %i.e
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dv
  store double %i.du, ptr %gep.prol, align 8, !tbaa !10
  %indvars.iv.next217.prol = add nuw nsw i64 %indvars.iv216.prol, 1 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !181

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next.lcssa490.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv216.unr = phi i64 [ %indvars.iv216.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next217.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dw = sub i64 %indvars.iv216.ph, %wide.trip.count222
  %i.dx = icmp ugt i64 %i.dw, -8
  br i1 %i.dx, label %.loopexit481, label %vec.epilog.scalar.ph

.preheader162.preheader:                          ; preds = %.loopexit481
  %xtraiter491 = and i64 %wide.trip.count222, 3   ; 3 uses
  %i.dy = icmp ult i32 %i.p, 4
  br i1 %i.dy, label %.preheader162.epil.preheader, label %.preheader162.preheader.new

.preheader162.preheader.new:                      ; preds = %.preheader162.preheader
  %unroll_iter = and i64 %wide.trip.count222, 2147483644
  br label %.preheader162

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv216 = phi i64 [ %indvars.iv.next217.7, %vec.epilog.scalar.ph ], [ %indvars.iv216.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %6, i64 %indvars.iv
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !10
  %i.eb = mul nsw i64 %indvars.iv216, %i.e
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.eb
  store double %i.ea, ptr %gep, align 8, !tbaa !10
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1
  %i.ec = getelementptr [8 x i8], ptr %6, i64 %indvars.iv
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !10
  %i.ef = mul nsw i64 %indvars.iv.next217, %i.e
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ef
  store double %i.ee, ptr %gep.1, align 8, !tbaa !10
  %indvars.iv.next217.1 = add nuw nsw i64 %indvars.iv216, 2
  %i.eg = getelementptr [8 x i8], ptr %6, i64 %indvars.iv
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !10
  %i.ej = mul nsw i64 %indvars.iv.next217.1, %i.e
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ej
  store double %i.ei, ptr %gep.2, align 8, !tbaa !10
  %indvars.iv.next217.2 = add nuw nsw i64 %indvars.iv216, 3
  %i.ek = getelementptr [8 x i8], ptr %6, i64 %indvars.iv
  %i.el = getelementptr i8, ptr %i.ek, i64 24
  %i.em = load double, ptr %i.el, align 8, !tbaa !10
  %i.en = mul nsw i64 %indvars.iv.next217.2, %i.e
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.en
  store double %i.em, ptr %gep.3, align 8, !tbaa !10
  %indvars.iv.next217.3 = add nuw nsw i64 %indvars.iv216, 4
  %i.eo = getelementptr [8 x i8], ptr %6, i64 %indvars.iv
  %i.ep = getelementptr i8, ptr %i.eo, i64 32
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !10
  %i.er = mul nsw i64 %indvars.iv.next217.3, %i.e
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.er
  store double %i.eq, ptr %gep.4, align 8, !tbaa !10
  %indvars.iv.next217.4 = add nuw nsw i64 %indvars.iv216, 5
  %i.es = getelementptr [8 x i8], ptr %6, i64 %indvars.iv
  %i.et = getelementptr i8, ptr %i.es, i64 40
  %i.eu = load double, ptr %i.et, align 8, !tbaa !10
  %i.ev = mul nsw i64 %indvars.iv.next217.4, %i.e
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ev
  store double %i.eu, ptr %gep.5, align 8, !tbaa !10
  %indvars.iv.next217.5 = add nuw nsw i64 %indvars.iv216, 6
  %i.ew = getelementptr [8 x i8], ptr %6, i64 %indvars.iv
  %i.ex = getelementptr i8, ptr %i.ew, i64 48
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !10
  %i.ez = mul nsw i64 %indvars.iv.next217.5, %i.e
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ez
  store double %i.ey, ptr %gep.6, align 8, !tbaa !10
  %indvars.iv.next217.6 = add nuw nsw i64 %indvars.iv216, 7
  %i.fa = getelementptr [8 x i8], ptr %6, i64 %indvars.iv
  %i.fb = getelementptr i8, ptr %i.fa, i64 56
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !10
  %i.fd = mul nsw i64 %indvars.iv.next217.6, %i.e
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fd
  store double %i.fc, ptr %gep.7, align 8, !tbaa !10
  %indvars.iv.next217.7 = add nuw nsw i64 %indvars.iv216, 8 ; 2 uses
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next217.7, %wide.trip.count222
  br i1 %exitcond.not.7, label %.loopexit481, label %vec.epilog.scalar.ph, !llvm.loop !182

.loopexit481:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.dm, %vec.epilog.middle.block ], [ %i.cz, %middle.block ], [ %indvars.iv.next.lcssa490.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next.7, %vec.epilog.scalar.ph ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count222
  br i1 %exitcond223.not, label %.preheader162.preheader, label %iter.check, !llvm.loop !183

.preheader162:                                    ; preds = %.preheader162, %.preheader162.preheader.new
  %indvars.iv229 = phi i64 [ 1, %.preheader162.preheader.new ], [ %indvars.iv.next230.3, %.preheader162 ] ; 5 uses
  %indvar = phi i64 [ 0, %.preheader162.preheader.new ], [ %indvar.next.3, %.preheader162 ] ; 6 uses
  %.6177 = phi i64 [ 0, %.preheader162.preheader.new ], [ %i.fx, %.preheader162 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader162.preheader.new ], [ %niter.next.3, %.preheader162 ]
  %i.fe = mul i64 %i.f, %indvar
  %scevgep224 = getelementptr i8, ptr %i.h, i64 %i.fe
  %i.ff = shl nuw nsw i64 %indvar, 3
  %i.fg = or disjoint i64 %i.ff, 8
  %i.fh = shl nsw i64 %.6177, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep224, i64 range(i64 0, 17179869177) %i.fg, i1 false), !tbaa !10
  %i.fi = add i64 %indvars.iv229, %.6177          ; 2 uses
  %indvar.next = or disjoint i64 %indvar, 1       ; 2 uses
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  %i.fj = mul i64 %i.f, %indvar.next
  %scevgep224.1 = getelementptr i8, ptr %i.h, i64 %i.fj
  %i.fk = shl nuw nsw i64 %indvar.next, 3
  %i.fl = add nuw nsw i64 %i.fk, 8
  %i.fm = shl nsw i64 %i.fi, 3
  %scevgep.1 = getelementptr i8, ptr %i.m, i64 %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep224.1, i64 range(i64 0, 17179869177) %i.fl, i1 false), !tbaa !10
  %i.fn = add i64 %indvars.iv.next230, %i.fi      ; 2 uses
  %indvar.next.1 = or disjoint i64 %indvar, 2     ; 2 uses
  %indvars.iv.next230.1 = add nuw nsw i64 %indvars.iv229, 2
  %i.fo = mul i64 %i.f, %indvar.next.1
  %scevgep224.2 = getelementptr i8, ptr %i.h, i64 %i.fo
  %i.fp = shl nuw nsw i64 %indvar.next.1, 3
  %i.fq = or disjoint i64 %i.fp, 8
  %i.fr = shl nsw i64 %i.fn, 3
  %scevgep.2 = getelementptr i8, ptr %i.m, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.2, ptr noundef nonnull align 8 dereferenceable(1) %scevgep224.2, i64 range(i64 0, 17179869177) %i.fq, i1 false), !tbaa !10
  %i.fs = add i64 %indvars.iv.next230.1, %i.fn    ; 2 uses
  %indvar.next.2 = or disjoint i64 %indvar, 3     ; 2 uses
  %indvars.iv.next230.2 = add nuw nsw i64 %indvars.iv229, 3
  %i.ft = mul i64 %i.f, %indvar.next.2
  %scevgep224.3 = getelementptr i8, ptr %i.h, i64 %i.ft
  %i.fu = shl nuw nsw i64 %indvar.next.2, 3
  %i.fv = add nuw nsw i64 %i.fu, 8
  %i.fw = shl nsw i64 %i.fs, 3
  %scevgep.3 = getelementptr i8, ptr %i.m, i64 %i.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.3, ptr noundef nonnull align 8 dereferenceable(1) %scevgep224.3, i64 range(i64 0, 17179869177) %i.fv, i1 false), !tbaa !10
  %i.fx = add i64 %indvars.iv.next230.2, %i.fs    ; 2 uses
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %indvars.iv.next230.3 = add nuw nsw i64 %indvars.iv229, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit159.loopexit489.unr-lcssa, label %.preheader162, !llvm.loop !184

.loopexit159.loopexit.unr-lcssa:                  ; preds = %.preheader157
  %lcmp.mod499.not = icmp eq i64 %xtraiter497, 0
  br i1 %lcmp.mod499.not, label %.loopexit159, label %.preheader157.epil.preheader

.preheader157.epil.preheader:                     ; preds = %.loopexit159.loopexit.unr-lcssa, %.preheader157.preheader
  %indvars.iv267.epil.init = phi i64 [ 0, %.preheader157.preheader ], [ %indvars.iv.next268.1, %.loopexit159.loopexit.unr-lcssa ] ; 2 uses
  %.2186.epil.init = phi i64 [ 0, %.preheader157.preheader ], [ %i.cv, %.loopexit159.loopexit.unr-lcssa ]
  %lcmp.mod500 = trunc i32 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod500)
  %i.fy = trunc nuw nsw i64 %indvars.iv267.epil.init to i32
  %i.fz = mul i32 %i.ao, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = shl nsw i64 %i.ga, 3
  %scevgep264.epil = getelementptr i8, ptr %i.h, i64 %i.gb
  %i.gc = trunc i64 %indvars.iv267.epil.init to i32
  %i.gd = sub i32 %i.ap, %i.gc
  %i.ge = zext i32 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 3
  %i.gg = add nuw nsw i64 %i.gf, 8
  %i.gh = shl nsw i64 %.2186.epil.init, 3
  %scevgep263.epil = getelementptr i8, ptr %i.m, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep263.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep264.epil, i64 range(i64 0, 17179869177) %i.gg, i1 false), !tbaa !10
  br label %.loopexit159

.loopexit159.loopexit489.unr-lcssa:               ; preds = %.preheader162
  %lcmp.mod492.not = icmp eq i64 %xtraiter491, 0
  br i1 %lcmp.mod492.not, label %.loopexit159, label %.preheader162.epil.preheader

.preheader162.epil.preheader:                     ; preds = %.loopexit159.loopexit489.unr-lcssa, %.preheader162.preheader
  %indvars.iv229.epil.init = phi i64 [ 1, %.preheader162.preheader ], [ %indvars.iv.next230.3, %.loopexit159.loopexit489.unr-lcssa ]
  %indvar.epil.init = phi i64 [ 0, %.preheader162.preheader ], [ %indvar.next.3, %.loopexit159.loopexit489.unr-lcssa ]
  %.6177.epil.init = phi i64 [ 0, %.preheader162.preheader ], [ %i.fx, %.loopexit159.loopexit489.unr-lcssa ]
  %lcmp.mod493 = icmp ne i64 %xtraiter491, 0
  call void @llvm.assume(i1 %lcmp.mod493)
  br label %.preheader162.epil

.preheader162.epil:                               ; preds = %.preheader162.epil, %.preheader162.epil.preheader
  %indvars.iv229.epil = phi i64 [ %indvars.iv229.epil.init, %.preheader162.epil.preheader ], [ %indvars.iv.next230.epil, %.preheader162.epil ] ; 2 uses
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader162.epil.preheader ], [ %indvar.next.epil, %.preheader162.epil ] ; 3 uses
  %.6177.epil = phi i64 [ %.6177.epil.init, %.preheader162.epil.preheader ], [ %i.gm, %.preheader162.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader162.epil.preheader ], [ %epil.iter.next, %.preheader162.epil ]
  %i.gi = mul i64 %i.f, %indvar.epil
  %scevgep224.epil = getelementptr i8, ptr %i.h, i64 %i.gi
  %i.gj = shl nuw nsw i64 %indvar.epil, 3
  %i.gk = add nuw nsw i64 %i.gj, 8
  %i.gl = shl nsw i64 %.6177.epil, 3
  %scevgep.epil = getelementptr i8, ptr %i.m, i64 %i.gl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep224.epil, i64 range(i64 0, 17179869177) %i.gk, i1 false), !tbaa !10
  %i.gm = add i64 %indvars.iv229.epil, %.6177.epil
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %indvars.iv.next230.epil = add nuw nsw i64 %indvars.iv229.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter491
  br i1 %epil.iter.cmp.not, label %.loopexit159, label %.preheader162.epil, !llvm.loop !185

.loopexit159:                                     ; preds = %.loopexit159.loopexit489.unr-lcssa, %.preheader162.epil, %.preheader157.epil.preheader, %.loopexit159.loopexit.unr-lcssa, %.preheader161, %.preheader166
  %i.gn = load double, ptr %3, align 8, !tbaa !10
  %i.go = load i32, ptr %5, align 4, !tbaa !8
  call void @cblas_dspr(i32 noundef 101, i32 noundef %i.n, i32 noundef %i.p, double noundef %i.gn, ptr noundef %4, i32 noundef %i.go, ptr noundef %i.m) #7
  %i.gp = load i32, ptr %i.a, align 4, !tbaa !8
  %i.gq = icmp eq i32 %i.gp, 121
  %i.gr = load i32, ptr %2, align 4, !tbaa !8     ; 9 uses
  %i.gs = icmp sgt i32 %i.gr, 0                   ; 2 uses
  br i1 %i.gq, label %.preheader151, label %.preheader156

.preheader156:                                    ; preds = %.loopexit159
  br i1 %i.gs, label %.preheader155.preheader, label %.loopexit

.preheader155.preheader:                          ; preds = %.preheader156
  %wide.trip.count301 = zext nneg i32 %i.gr to i64 ; 5 uses
  %xtraiter503 = and i64 %wide.trip.count301, 3   ; 3 uses
  %i.gt = icmp ult i32 %i.gr, 4
  br i1 %i.gt, label %.preheader155.epil.preheader, label %.preheader155.preheader.new

.preheader155.preheader.new:                      ; preds = %.preheader155.preheader
  %unroll_iter507 = and i64 %wide.trip.count301, 2147483644
  br label %.preheader155

.preheader151:                                    ; preds = %.loopexit159
  br i1 %i.gs, label %.preheader150.preheader, label %.loopexit

.preheader150.preheader:                          ; preds = %.preheader151
  %i.gu = add i32 %i.d, 1                         ; 3 uses
  %i.gv = add nsw i32 %i.gr, -1                   ; 4 uses
  %wide.trip.count333 = zext nneg i32 %i.gr to i64 ; 2 uses
  %xtraiter512 = and i64 %wide.trip.count333, 1
  %i.gw = icmp eq i32 %i.gr, 1
  br i1 %i.gw, label %.preheader150.epil.preheader, label %.preheader150.preheader.new

.preheader150.preheader.new:                      ; preds = %.preheader150.preheader
  %unroll_iter516 = and i64 %wide.trip.count333, 2147483646
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150, %.preheader150.preheader.new
  %indvars.iv325 = phi i32 [ %i.gv, %.preheader150.preheader.new ], [ %indvars.iv.next326.1, %.preheader150 ] ; 3 uses
  %indvars.iv321 = phi i64 [ 0, %.preheader150.preheader.new ], [ %indvars.iv.next322.1, %.preheader150 ] ; 4 uses
  %.8199 = phi i64 [ 0, %.preheader150.preheader.new ], [ %i.hw, %.preheader150 ] ; 2 uses
  %niter517 = phi i64 [ 0, %.preheader150.preheader.new ], [ %niter517.next.1, %.preheader150 ]
  %i.gx = trunc nuw nsw i64 %indvars.iv321 to i32
  %i.gy = mul i32 %i.gu, %i.gx
  %i.gz = sext i32 %i.gy to i64
  %i.ha = shl nsw i64 %i.gz, 3
  %scevgep317 = getelementptr i8, ptr %i.h, i64 %i.ha
  %i.hb = trunc i64 %indvars.iv321 to i32
  %i.hc = sub i32 %i.gv, %i.hb
  %i.hd = zext i32 %i.hc to i64
  %i.he = shl nuw nsw i64 %i.hd, 3
  %i.hf = add nuw nsw i64 %i.he, 8
  %i.hg = shl nsw i64 %.8199, 3
  %scevgep318 = getelementptr i8, ptr %i.m, i64 %i.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep317, ptr noundef nonnull align 8 dereferenceable(1) %scevgep318, i64 range(i64 0, 17179869177) %i.hf, i1 false), !tbaa !10
  %i.hh = zext i32 %indvars.iv325 to i64
  %i.hi = add nsw i64 %.8199, 1
  %i.hj = add nsw i64 %i.hi, %i.hh                ; 2 uses
  %indvars.iv.next322 = or disjoint i64 %indvars.iv321, 1 ; 2 uses
  %indvars.iv.next326 = add i32 %indvars.iv325, -1
  %i.hk = trunc nuw nsw i64 %indvars.iv.next322 to i32
  %i.hl = mul i32 %i.gu, %i.hk
  %i.hm = sext i32 %i.hl to i64
  %i.hn = shl nsw i64 %i.hm, 3
  %scevgep317.1 = getelementptr i8, ptr %i.h, i64 %i.hn
  %i.ho = trunc i64 %indvars.iv.next322 to i32
  %i.hp = sub i32 %i.gv, %i.ho
  %i.hq = zext i32 %i.hp to i64
  %i.hr = shl nuw nsw i64 %i.hq, 3
  %i.hs = add nuw nsw i64 %i.hr, 8
  %i.ht = shl nsw i64 %i.hj, 3
  %scevgep318.1 = getelementptr i8, ptr %i.m, i64 %i.ht
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep317.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep318.1, i64 range(i64 0, 17179869177) %i.hs, i1 false), !tbaa !10
  %i.hu = zext i32 %indvars.iv.next326 to i64
  %i.hv = add nsw i64 %i.hj, 1
  %i.hw = add nsw i64 %i.hv, %i.hu                ; 2 uses
  %indvars.iv.next322.1 = add nuw nsw i64 %indvars.iv321, 2 ; 2 uses
  %indvars.iv.next326.1 = add i32 %indvars.iv325, -2
  %niter517.next.1 = add i64 %niter517, 2         ; 2 uses
  %niter517.ncmp.1 = icmp eq i64 %niter517.next.1, %unroll_iter516
  br i1 %niter517.ncmp.1, label %.preheader.preheader.unr-lcssa, label %.preheader150, !llvm.loop !186

.preheader.preheader.unr-lcssa:                   ; preds = %.preheader150
  %lcmp.mod514.not = icmp eq i64 %xtraiter512, 0
  br i1 %lcmp.mod514.not, label %.preheader.preheader, label %.preheader150.epil.preheader

.preheader150.epil.preheader:                     ; preds = %.preheader.preheader.unr-lcssa, %.preheader150.preheader
  %indvars.iv321.epil.init = phi i64 [ 0, %.preheader150.preheader ], [ %indvars.iv.next322.1, %.preheader.preheader.unr-lcssa ] ; 2 uses
  %.8199.epil.init = phi i64 [ 0, %.preheader150.preheader ], [ %i.hw, %.preheader.preheader.unr-lcssa ]
  %lcmp.mod515 = trunc i32 %i.gr to i1
  call void @llvm.assume(i1 %lcmp.mod515)
  %i.hx = trunc nuw nsw i64 %indvars.iv321.epil.init to i32
  %i.hy = mul i32 %i.gu, %i.hx
  %i.hz = sext i32 %i.hy to i64
  %i.ia = shl nsw i64 %i.hz, 3
  %scevgep317.epil = getelementptr i8, ptr %i.h, i64 %i.ia
  %i.ib = trunc i64 %indvars.iv321.epil.init to i32
  %i.ic = sub i32 %i.gv, %i.ib
  %i.id = zext i32 %i.ic to i64
  %i.ie = shl nuw nsw i64 %i.id, 3
  %i.if = add nuw nsw i64 %i.ie, 8
  %i.ig = shl nsw i64 %.8199.epil.init, 3
  %scevgep318.epil = getelementptr i8, ptr %i.m, i64 %i.ig
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep317.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep318.epil, i64 range(i64 0, 17179869177) %i.if, i1 false), !tbaa !10
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.unr-lcssa, %.preheader150.epil.preheader
  %wide.trip.count353 = zext nneg i32 %i.gr to i64
  %ident.check448.not = icmp eq i32 %i.d, 1
  br label %iter.check464

iter.check464:                                    ; preds = %.preheader.preheader, %.loopexit478
  %indvars.iv348 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next349, %.loopexit478 ] ; 3 uses
  %indvars.iv346 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next347, %.loopexit478 ] ; 10 uses
  %.10204 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next336.lcssa, %.loopexit478 ] ; 5 uses
  %invariant.gep368 = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv348 ; 11 uses
  %min.iters.check449 = icmp samesign ugt i64 %indvars.iv346, 3
  %or.cond483 = and i1 %min.iters.check449, %ident.check448.not
  br i1 %or.cond483, label %vector.main.loop.iter.check450, label %vec.epilog.scalar.ph465.preheader

vector.main.loop.iter.check450:                   ; preds = %iter.check464
  %min.iters.check451 = icmp samesign ult i64 %indvars.iv346, 16
  br i1 %min.iters.check451, label %vec.epilog.ph468, label %vector.ph452

vector.ph452:                                     ; preds = %vector.main.loop.iter.check450
  %i.ih = and i64 %indvars.iv346, 12
  %n.vec453 = and i64 %indvars.iv346, 9223372036854775792 ; 5 uses
  %i.ii = add i64 %.10204, %n.vec453              ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %6, i64 %.10204
  br label %vector.body454

vector.body454:                                   ; preds = %vector.ph452, %vector.body454
  %index455 = phi i64 [ 0, %vector.ph452 ], [ %index.next460, %vector.body454 ] ; 3 uses
  %i.ik = getelementptr [8 x i8], ptr %invariant.gep368, i64 %index455 ; 4 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 32
  %i.im = getelementptr i8, ptr %i.ik, i64 64
  %i.in = getelementptr i8, ptr %i.ik, i64 96
  %wide.load456 = load <4 x double>, ptr %i.ik, align 8, !tbaa !10
  %wide.load457 = load <4 x double>, ptr %i.il, align 8, !tbaa !10
  %wide.load458 = load <4 x double>, ptr %i.im, align 8, !tbaa !10
  %wide.load459 = load <4 x double>, ptr %i.in, align 8, !tbaa !10
  %i.io = getelementptr [8 x i8], ptr %i.ij, i64 %index455 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 96
  store <4 x double> %wide.load456, ptr %i.io, align 8, !tbaa !10
  store <4 x double> %wide.load457, ptr %i.ip, align 8, !tbaa !10
  store <4 x double> %wide.load458, ptr %i.iq, align 8, !tbaa !10
  store <4 x double> %wide.load459, ptr %i.ir, align 8, !tbaa !10
  %index.next460 = add nuw i64 %index455, 16      ; 2 uses
  %i.is = icmp eq i64 %index.next460, %n.vec453
  br i1 %i.is, label %middle.block461, label %vector.body454, !llvm.loop !187

middle.block461:                                  ; preds = %vector.body454
  %cmp.n462 = icmp eq i64 %indvars.iv346, %n.vec453
  br i1 %cmp.n462, label %.loopexit478, label %vec.epilog.iter.check466

vec.epilog.iter.check466:                         ; preds = %middle.block461
  %min.epilog.iters.check467 = icmp eq i64 %i.ih, 0
  br i1 %min.epilog.iters.check467, label %vec.epilog.scalar.ph465.preheader, label %vec.epilog.ph468, !prof !14

vec.epilog.ph468:                                 ; preds = %vector.main.loop.iter.check450, %vec.epilog.iter.check466
  %vec.epilog.resume.val463 = phi i64 [ %n.vec453, %vec.epilog.iter.check466 ], [ 0, %vector.main.loop.iter.check450 ]
  %n.vec469 = and i64 %indvars.iv346, 9223372036854775804 ; 4 uses
  %i.it = add i64 %.10204, %n.vec469              ; 2 uses
  %i.iu = getelementptr [8 x i8], ptr %6, i64 %.10204
  br label %vec.epilog.vector.body470

vec.epilog.vector.body470:                        ; preds = %vec.epilog.vector.body470, %vec.epilog.ph468
  %index471 = phi i64 [ %vec.epilog.resume.val463, %vec.epilog.ph468 ], [ %index.next473, %vec.epilog.vector.body470 ] ; 3 uses
  %i.iv = getelementptr [8 x i8], ptr %invariant.gep368, i64 %index471
  %wide.load472 = load <4 x double>, ptr %i.iv, align 8, !tbaa !10
  %i.iw = getelementptr [8 x i8], ptr %i.iu, i64 %index471
  store <4 x double> %wide.load472, ptr %i.iw, align 8, !tbaa !10
  %index.next473 = add nuw i64 %index471, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next473, %n.vec469
  br i1 %i.ix, label %vec.epilog.middle.block474, label %vec.epilog.vector.body470, !llvm.loop !188

vec.epilog.middle.block474:                       ; preds = %vec.epilog.vector.body470
  %cmp.n475 = icmp eq i64 %indvars.iv346, %n.vec469
  br i1 %cmp.n475, label %.loopexit478, label %vec.epilog.scalar.ph465.preheader

vec.epilog.scalar.ph465.preheader:                ; preds = %iter.check464, %vec.epilog.iter.check466, %vec.epilog.middle.block474
  %indvars.iv337.ph = phi i64 [ 0, %iter.check464 ], [ %n.vec453, %vec.epilog.iter.check466 ], [ %n.vec469, %vec.epilog.middle.block474 ] ; 4 uses
  %indvars.iv335.ph = phi i64 [ %.10204, %iter.check464 ], [ %i.ii, %vec.epilog.iter.check466 ], [ %i.it, %vec.epilog.middle.block474 ] ; 2 uses
  %i.iy = sub nsw i64 %indvars.iv346, %indvars.iv337.ph
  %i.iz = sub nsw i64 %indvars.iv348, %indvars.iv337.ph
  %xtraiter518 = and i64 %i.iy, 7                 ; 2 uses
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %vec.epilog.scalar.ph465.prol.loopexit, label %vec.epilog.scalar.ph465.prol

vec.epilog.scalar.ph465.prol:                     ; preds = %vec.epilog.scalar.ph465.preheader, %vec.epilog.scalar.ph465.prol
  %indvars.iv337.prol = phi i64 [ %indvars.iv.next338.prol, %vec.epilog.scalar.ph465.prol ], [ %indvars.iv337.ph, %vec.epilog.scalar.ph465.preheader ] ; 2 uses
  %indvars.iv335.prol = phi i64 [ %indvars.iv.next336.prol, %vec.epilog.scalar.ph465.prol ], [ %indvars.iv335.ph, %vec.epilog.scalar.ph465.preheader ] ; 2 uses
  %prol.iter520 = phi i64 [ %prol.iter520.next, %vec.epilog.scalar.ph465.prol ], [ 0, %vec.epilog.scalar.ph465.preheader ]
  %i.ja = mul nsw i64 %indvars.iv337.prol, %i.e
  %gep369.prol = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.ja
  %i.jb = load double, ptr %gep369.prol, align 8, !tbaa !10
  %i.jc = getelementptr inbounds [8 x i8], ptr %6, i64 %indvars.iv335.prol
  store double %i.jb, ptr %i.jc, align 8, !tbaa !10
  %indvars.iv.next338.prol = add nuw nsw i64 %indvars.iv337.prol, 1 ; 2 uses
  %indvars.iv.next336.prol = add nsw i64 %indvars.iv335.prol, 1 ; 3 uses
  %prol.iter520.next = add i64 %prol.iter520, 1   ; 2 uses
  %prol.iter520.cmp.not = icmp eq i64 %prol.iter520.next, %xtraiter518
  br i1 %prol.iter520.cmp.not, label %vec.epilog.scalar.ph465.prol.loopexit, label %vec.epilog.scalar.ph465.prol, !llvm.loop !189

vec.epilog.scalar.ph465.prol.loopexit:            ; preds = %vec.epilog.scalar.ph465.prol, %vec.epilog.scalar.ph465.preheader
  %indvars.iv.next336.lcssa485.unr = phi i64 [ poison, %vec.epilog.scalar.ph465.preheader ], [ %indvars.iv.next336.prol, %vec.epilog.scalar.ph465.prol ]
  %indvars.iv337.unr = phi i64 [ %indvars.iv337.ph, %vec.epilog.scalar.ph465.preheader ], [ %indvars.iv.next338.prol, %vec.epilog.scalar.ph465.prol ]
  %indvars.iv335.unr = phi i64 [ %indvars.iv335.ph, %vec.epilog.scalar.ph465.preheader ], [ %indvars.iv.next336.prol, %vec.epilog.scalar.ph465.prol ]
  %i.jd = icmp ult i64 %i.iz, 7
  br i1 %i.jd, label %.loopexit478, label %vec.epilog.scalar.ph465

vec.epilog.scalar.ph465:                          ; preds = %vec.epilog.scalar.ph465.prol.loopexit, %vec.epilog.scalar.ph465
  %indvars.iv337 = phi i64 [ %indvars.iv.next338.7, %vec.epilog.scalar.ph465 ], [ %indvars.iv337.unr, %vec.epilog.scalar.ph465.prol.loopexit ] ; 9 uses
  %indvars.iv335 = phi i64 [ %indvars.iv.next336.7, %vec.epilog.scalar.ph465 ], [ %indvars.iv335.unr, %vec.epilog.scalar.ph465.prol.loopexit ] ; 9 uses
  %i.je = mul nsw i64 %indvars.iv337, %i.e
  %gep369 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.je
  %i.jf = load double, ptr %gep369, align 8, !tbaa !10
  %i.jg = getelementptr inbounds [8 x i8], ptr %6, i64 %indvars.iv335
  store double %i.jf, ptr %i.jg, align 8, !tbaa !10
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1
  %i.jh = mul nsw i64 %indvars.iv.next338, %i.e
  %gep369.1 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.jh
  %i.ji = load double, ptr %gep369.1, align 8, !tbaa !10
  %i.jj = getelementptr [8 x i8], ptr %6, i64 %indvars.iv335
  %i.jk = getelementptr i8, ptr %i.jj, i64 8
  store double %i.ji, ptr %i.jk, align 8, !tbaa !10
  %indvars.iv.next338.1 = add nuw nsw i64 %indvars.iv337, 2
  %i.jl = mul nsw i64 %indvars.iv.next338.1, %i.e
  %gep369.2 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.jl
  %i.jm = load double, ptr %gep369.2, align 8, !tbaa !10
  %i.jn = getelementptr [8 x i8], ptr %6, i64 %indvars.iv335
  %i.jo = getelementptr i8, ptr %i.jn, i64 16
  store double %i.jm, ptr %i.jo, align 8, !tbaa !10
  %indvars.iv.next338.2 = add nuw nsw i64 %indvars.iv337, 3
  %i.jp = mul nsw i64 %indvars.iv.next338.2, %i.e
  %gep369.3 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.jp
  %i.jq = load double, ptr %gep369.3, align 8, !tbaa !10
  %i.jr = getelementptr [8 x i8], ptr %6, i64 %indvars.iv335
  %i.js = getelementptr i8, ptr %i.jr, i64 24
  store double %i.jq, ptr %i.js, align 8, !tbaa !10
  %indvars.iv.next338.3 = add nuw nsw i64 %indvars.iv337, 4
  %i.jt = mul nsw i64 %indvars.iv.next338.3, %i.e
  %gep369.4 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.jt
  %i.ju = load double, ptr %gep369.4, align 8, !tbaa !10
  %i.jv = getelementptr [8 x i8], ptr %6, i64 %indvars.iv335
  %i.jw = getelementptr i8, ptr %i.jv, i64 32
  store double %i.ju, ptr %i.jw, align 8, !tbaa !10
  %indvars.iv.next338.4 = add nuw nsw i64 %indvars.iv337, 5
  %i.jx = mul nsw i64 %indvars.iv.next338.4, %i.e
  %gep369.5 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.jx
  %i.jy = load double, ptr %gep369.5, align 8, !tbaa !10
  %i.jz = getelementptr [8 x i8], ptr %6, i64 %indvars.iv335
  %i.ka = getelementptr i8, ptr %i.jz, i64 40
  store double %i.jy, ptr %i.ka, align 8, !tbaa !10
  %indvars.iv.next338.5 = add nuw nsw i64 %indvars.iv337, 6
  %i.kb = mul nsw i64 %indvars.iv.next338.5, %i.e
  %gep369.6 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.kb
  %i.kc = load double, ptr %gep369.6, align 8, !tbaa !10
  %i.kd = getelementptr [8 x i8], ptr %6, i64 %indvars.iv335
  %i.ke = getelementptr i8, ptr %i.kd, i64 48
  store double %i.kc, ptr %i.ke, align 8, !tbaa !10
  %indvars.iv.next338.6 = add nuw nsw i64 %indvars.iv337, 7
  %i.kf = mul nsw i64 %indvars.iv.next338.6, %i.e
  %gep369.7 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.kf
  %i.kg = load double, ptr %gep369.7, align 8, !tbaa !10
  %i.kh = getelementptr [8 x i8], ptr %6, i64 %indvars.iv335
  %i.ki = getelementptr i8, ptr %i.kh, i64 56
  store double %i.kg, ptr %i.ki, align 8, !tbaa !10
  %indvars.iv.next338.7 = add nuw nsw i64 %indvars.iv337, 8 ; 2 uses
  %indvars.iv.next336.7 = add nsw i64 %indvars.iv335, 8 ; 2 uses
  %exitcond345.not.7 = icmp eq i64 %indvars.iv.next338.7, %indvars.iv346
  br i1 %exitcond345.not.7, label %.loopexit478, label %vec.epilog.scalar.ph465, !llvm.loop !190

.loopexit478:                                     ; preds = %vec.epilog.scalar.ph465.prol.loopexit, %vec.epilog.scalar.ph465, %vec.epilog.middle.block474, %middle.block461
  %indvars.iv.next336.lcssa = phi i64 [ %i.it, %vec.epilog.middle.block474 ], [ %i.ii, %middle.block461 ], [ %indvars.iv.next336.lcssa485.unr, %vec.epilog.scalar.ph465.prol.loopexit ], [ %indvars.iv.next336.7, %vec.epilog.scalar.ph465 ]
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 2 uses
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1
  %exitcond354.not = icmp eq i64 %indvars.iv.next349, %wide.trip.count353
  br i1 %exitcond354.not, label %.loopexit, label %iter.check464, !llvm.loop !191

.preheader155:                                    ; preds = %.preheader155, %.preheader155.preheader.new
  %indvars.iv289 = phi i64 [ 1, %.preheader155.preheader.new ], [ %indvars.iv.next290.3, %.preheader155 ] ; 5 uses
  %indvar281 = phi i64 [ 0, %.preheader155.preheader.new ], [ %indvar.next282.3, %.preheader155 ] ; 6 uses
  %.12190 = phi i64 [ 0, %.preheader155.preheader.new ], [ %i.lc, %.preheader155 ] ; 2 uses
  %niter508 = phi i64 [ 0, %.preheader155.preheader.new ], [ %niter508.next.3, %.preheader155 ]
  %i.kj = mul i64 %i.f, %indvar281
  %scevgep283 = getelementptr i8, ptr %i.h, i64 %i.kj
  %i.kk = shl nuw nsw i64 %indvar281, 3
  %i.kl = or disjoint i64 %i.kk, 8
  %i.km = shl nsw i64 %.12190, 3
  %scevgep284 = getelementptr i8, ptr %i.m, i64 %i.km
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep283, ptr noundef nonnull align 8 dereferenceable(1) %scevgep284, i64 range(i64 0, 17179869177) %i.kl, i1 false), !tbaa !10
  %i.kn = add i64 %indvars.iv289, %.12190         ; 2 uses
  %indvar.next282 = or disjoint i64 %indvar281, 1 ; 2 uses
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1
  %i.ko = mul i64 %i.f, %indvar.next282
  %scevgep283.1 = getelementptr i8, ptr %i.h, i64 %i.ko
  %i.kp = shl nuw nsw i64 %indvar.next282, 3
  %i.kq = add nuw nsw i64 %i.kp, 8
  %i.kr = shl nsw i64 %i.kn, 3
  %scevgep284.1 = getelementptr i8, ptr %i.m, i64 %i.kr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep283.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep284.1, i64 range(i64 0, 17179869177) %i.kq, i1 false), !tbaa !10
  %i.ks = add i64 %indvars.iv.next290, %i.kn      ; 2 uses
  %indvar.next282.1 = or disjoint i64 %indvar281, 2 ; 2 uses
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2
  %i.kt = mul i64 %i.f, %indvar.next282.1
  %scevgep283.2 = getelementptr i8, ptr %i.h, i64 %i.kt
  %i.ku = shl nuw nsw i64 %indvar.next282.1, 3
  %i.kv = or disjoint i64 %i.ku, 8
  %i.kw = shl nsw i64 %i.ks, 3
  %scevgep284.2 = getelementptr i8, ptr %i.m, i64 %i.kw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep283.2, ptr noundef nonnull align 8 dereferenceable(1) %scevgep284.2, i64 range(i64 0, 17179869177) %i.kv, i1 false), !tbaa !10
  %i.kx = add i64 %indvars.iv.next290.1, %i.ks    ; 2 uses
  %indvar.next282.2 = or disjoint i64 %indvar281, 3 ; 2 uses
  %indvars.iv.next290.2 = add nuw nsw i64 %indvars.iv289, 3
  %i.ky = mul i64 %i.f, %indvar.next282.2
  %scevgep283.3 = getelementptr i8, ptr %i.h, i64 %i.ky
  %i.kz = shl nuw nsw i64 %indvar.next282.2, 3
  %i.la = add nuw nsw i64 %i.kz, 8
  %i.lb = shl nsw i64 %i.kx, 3
  %scevgep284.3 = getelementptr i8, ptr %i.m, i64 %i.lb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep283.3, ptr noundef nonnull align 8 dereferenceable(1) %scevgep284.3, i64 range(i64 0, 17179869177) %i.la, i1 false), !tbaa !10
  %i.lc = add i64 %indvars.iv.next290.2, %i.kx    ; 2 uses
  %indvar.next282.3 = add nuw nsw i64 %indvar281, 4 ; 2 uses
  %indvars.iv.next290.3 = add nuw nsw i64 %indvars.iv289, 4 ; 2 uses
  %niter508.next.3 = add i64 %niter508, 4         ; 2 uses
  %niter508.ncmp.3 = icmp eq i64 %niter508.next.3, %unroll_iter507
  br i1 %niter508.ncmp.3, label %.preheader152.preheader.unr-lcssa, label %.preheader155, !llvm.loop !192

.preheader152.preheader.unr-lcssa:                ; preds = %.preheader155
  %lcmp.mod505.not = icmp eq i64 %xtraiter503, 0
  br i1 %lcmp.mod505.not, label %.preheader152.preheader, label %.preheader155.epil.preheader

.preheader155.epil.preheader:                     ; preds = %.preheader152.preheader.unr-lcssa, %.preheader155.preheader
  %indvars.iv289.epil.init = phi i64 [ 1, %.preheader155.preheader ], [ %indvars.iv.next290.3, %.preheader152.preheader.unr-lcssa ]
  %indvar281.epil.init = phi i64 [ 0, %.preheader155.preheader ], [ %indvar.next282.3, %.preheader152.preheader.unr-lcssa ]
  %.12190.epil.init = phi i64 [ 0, %.preheader155.preheader ], [ %i.lc, %.preheader152.preheader.unr-lcssa ]
  %lcmp.mod506 = icmp ne i64 %xtraiter503, 0
  call void @llvm.assume(i1 %lcmp.mod506)
  br label %.preheader155.epil

.preheader155.epil:                               ; preds = %.preheader155.epil, %.preheader155.epil.preheader
  %indvars.iv289.epil = phi i64 [ %indvars.iv289.epil.init, %.preheader155.epil.preheader ], [ %indvars.iv.next290.epil, %.preheader155.epil ] ; 2 uses
  %indvar281.epil = phi i64 [ %indvar281.epil.init, %.preheader155.epil.preheader ], [ %indvar.next282.epil, %.preheader155.epil ] ; 3 uses
  %.12190.epil = phi i64 [ %.12190.epil.init, %.preheader155.epil.preheader ], [ %i.lh, %.preheader155.epil ] ; 2 uses
  %epil.iter504 = phi i64 [ 0, %.preheader155.epil.preheader ], [ %epil.iter504.next, %.preheader155.epil ]
  %i.ld = mul i64 %i.f, %indvar281.epil
  %scevgep283.epil = getelementptr i8, ptr %i.h, i64 %i.ld
  %i.le = shl nuw nsw i64 %indvar281.epil, 3
  %i.lf = add nuw nsw i64 %i.le, 8
  %i.lg = shl nsw i64 %.12190.epil, 3
  %scevgep284.epil = getelementptr i8, ptr %i.m, i64 %i.lg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep283.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep284.epil, i64 range(i64 0, 17179869177) %i.lf, i1 false), !tbaa !10
  %i.lh = add i64 %indvars.iv289.epil, %.12190.epil
  %indvar.next282.epil = add nuw nsw i64 %indvar281.epil, 1
  %indvars.iv.next290.epil = add nuw nsw i64 %indvars.iv289.epil, 1
  %epil.iter504.next = add i64 %epil.iter504, 1   ; 2 uses
  %epil.iter504.cmp.not = icmp eq i64 %epil.iter504.next, %xtraiter503
  br i1 %epil.iter504.cmp.not, label %.preheader152.preheader, label %.preheader155.epil, !llvm.loop !193

.preheader152.preheader:                          ; preds = %.preheader155.epil, %.preheader152.preheader.unr-lcssa
  %wide.trip.count315 = zext nneg i32 %i.gr to i64 ; 2 uses
  %ident.check416.not = icmp eq i32 %i.d, 1
  br label %iter.check433

iter.check433:                                    ; preds = %.preheader152.preheader, %.loopexit479
  %indvars.iv305 = phi i64 [ 0, %.preheader152.preheader ], [ %indvars.iv.next306, %.loopexit479 ] ; 8 uses
  %.14195 = phi i64 [ 0, %.preheader152.preheader ], [ %indvars.iv.next304.lcssa, %.loopexit479 ] ; 5 uses
  %i.li = sub nsw i64 %wide.trip.count301, %indvars.iv305 ; 7 uses
  %invariant.gep366 = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv305 ; 11 uses
  %min.iters.check417 = icmp ugt i64 %i.li, 3
  %or.cond484 = and i1 %min.iters.check417, %ident.check416.not
  br i1 %or.cond484, label %vector.main.loop.iter.check418, label %vec.epilog.scalar.ph434.preheader

vector.main.loop.iter.check418:                   ; preds = %iter.check433
  %min.iters.check419 = icmp ult i64 %i.li, 16
  br i1 %min.iters.check419, label %vec.epilog.ph437, label %vector.ph420

vector.ph420:                                     ; preds = %vector.main.loop.iter.check418
  %i.lj = and i64 %i.li, 12
  %n.vec421 = and i64 %i.li, -16                  ; 5 uses
  %i.lk = add i64 %indvars.iv305, %n.vec421
  %i.ll = add i64 %.14195, %n.vec421              ; 2 uses
  %i.lm = getelementptr [8 x i8], ptr %invariant.gep366, i64 %indvars.iv305
  %i.ln = getelementptr [8 x i8], ptr %6, i64 %.14195
  br label %vector.body422

vector.body422:                                   ; preds = %vector.ph420, %vector.body422
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next428, %vector.body422 ] ; 3 uses
  %i.lo = getelementptr [8 x i8], ptr %i.lm, i64 %index423 ; 4 uses
  %i.lp = getelementptr i8, ptr %i.lo, i64 32
  %i.lq = getelementptr i8, ptr %i.lo, i64 64
  %i.lr = getelementptr i8, ptr %i.lo, i64 96
  %wide.load424 = load <4 x double>, ptr %i.lo, align 8, !tbaa !10
  %wide.load425 = load <4 x double>, ptr %i.lp, align 8, !tbaa !10
  %wide.load426 = load <4 x double>, ptr %i.lq, align 8, !tbaa !10
  %wide.load427 = load <4 x double>, ptr %i.lr, align 8, !tbaa !10
  %i.ls = getelementptr [8 x i8], ptr %i.ln, i64 %index423 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 96
  store <4 x double> %wide.load424, ptr %i.ls, align 8, !tbaa !10
  store <4 x double> %wide.load425, ptr %i.lt, align 8, !tbaa !10
  store <4 x double> %wide.load426, ptr %i.lu, align 8, !tbaa !10
  store <4 x double> %wide.load427, ptr %i.lv, align 8, !tbaa !10
  %index.next428 = add nuw i64 %index423, 16      ; 2 uses
  %i.lw = icmp eq i64 %index.next428, %n.vec421
  br i1 %i.lw, label %middle.block429, label %vector.body422, !llvm.loop !194

middle.block429:                                  ; preds = %vector.body422
  %cmp.n430 = icmp eq i64 %i.li, %n.vec421
  br i1 %cmp.n430, label %.loopexit479, label %vec.epilog.iter.check435

vec.epilog.iter.check435:                         ; preds = %middle.block429
  %min.epilog.iters.check436 = icmp eq i64 %i.lj, 0
  br i1 %min.epilog.iters.check436, label %vec.epilog.scalar.ph434.preheader, label %vec.epilog.ph437, !prof !14

vec.epilog.ph437:                                 ; preds = %vector.main.loop.iter.check418, %vec.epilog.iter.check435
  %vec.epilog.resume.val431 = phi i64 [ %n.vec421, %vec.epilog.iter.check435 ], [ 0, %vector.main.loop.iter.check418 ]
  %n.vec438 = and i64 %i.li, -4                   ; 4 uses
  %i.lx = add i64 %indvars.iv305, %n.vec438
  %i.ly = add i64 %.14195, %n.vec438              ; 2 uses
  %i.lz = getelementptr [8 x i8], ptr %invariant.gep366, i64 %indvars.iv305
  %i.ma = getelementptr [8 x i8], ptr %6, i64 %.14195
  br label %vec.epilog.vector.body439

vec.epilog.vector.body439:                        ; preds = %vec.epilog.vector.body439, %vec.epilog.ph437
  %index440 = phi i64 [ %vec.epilog.resume.val431, %vec.epilog.ph437 ], [ %index.next442, %vec.epilog.vector.body439 ] ; 3 uses
  %i.mb = getelementptr [8 x i8], ptr %i.lz, i64 %index440
  %wide.load441 = load <4 x double>, ptr %i.mb, align 8, !tbaa !10
  %i.mc = getelementptr [8 x i8], ptr %i.ma, i64 %index440
  store <4 x double> %wide.load441, ptr %i.mc, align 8, !tbaa !10
  %index.next442 = add nuw i64 %index440, 4       ; 2 uses
  %i.md = icmp eq i64 %index.next442, %n.vec438
  br i1 %i.md, label %vec.epilog.middle.block443, label %vec.epilog.vector.body439, !llvm.loop !195

vec.epilog.middle.block443:                       ; preds = %vec.epilog.vector.body439
  %cmp.n444 = icmp eq i64 %i.li, %n.vec438
  br i1 %cmp.n444, label %.loopexit479, label %vec.epilog.scalar.ph434.preheader

vec.epilog.scalar.ph434.preheader:                ; preds = %iter.check433, %vec.epilog.iter.check435, %vec.epilog.middle.block443
  %indvars.iv307.ph = phi i64 [ %indvars.iv305, %iter.check433 ], [ %i.lk, %vec.epilog.iter.check435 ], [ %i.lx, %vec.epilog.middle.block443 ] ; 4 uses
  %indvars.iv303.ph = phi i64 [ %.14195, %iter.check433 ], [ %i.ll, %vec.epilog.iter.check435 ], [ %i.ly, %vec.epilog.middle.block443 ] ; 2 uses
  %i.me = sub i64 %wide.trip.count301, %indvars.iv307.ph
  %xtraiter509 = and i64 %i.me, 7                 ; 2 uses
  %lcmp.mod510.not = icmp eq i64 %xtraiter509, 0
  br i1 %lcmp.mod510.not, label %vec.epilog.scalar.ph434.prol.loopexit, label %vec.epilog.scalar.ph434.prol

vec.epilog.scalar.ph434.prol:                     ; preds = %vec.epilog.scalar.ph434.preheader, %vec.epilog.scalar.ph434.prol
  %indvars.iv307.prol = phi i64 [ %indvars.iv.next308.prol, %vec.epilog.scalar.ph434.prol ], [ %indvars.iv307.ph, %vec.epilog.scalar.ph434.preheader ] ; 2 uses
  %indvars.iv303.prol = phi i64 [ %indvars.iv.next304.prol, %vec.epilog.scalar.ph434.prol ], [ %indvars.iv303.ph, %vec.epilog.scalar.ph434.preheader ] ; 2 uses
  %prol.iter511 = phi i64 [ %prol.iter511.next, %vec.epilog.scalar.ph434.prol ], [ 0, %vec.epilog.scalar.ph434.preheader ]
  %i.mf = mul nsw i64 %indvars.iv307.prol, %i.e
  %gep367.prol = getelementptr [8 x i8], ptr %invariant.gep366, i64 %i.mf
  %i.mg = load double, ptr %gep367.prol, align 8, !tbaa !10
  %i.mh = getelementptr inbounds [8 x i8], ptr %6, i64 %indvars.iv303.prol
  store double %i.mg, ptr %i.mh, align 8, !tbaa !10
  %indvars.iv.next308.prol = add nuw nsw i64 %indvars.iv307.prol, 1 ; 2 uses
  %indvars.iv.next304.prol = add nsw i64 %indvars.iv303.prol, 1 ; 3 uses
  %prol.iter511.next = add i64 %prol.iter511, 1   ; 2 uses
  %prol.iter511.cmp.not = icmp eq i64 %prol.iter511.next, %xtraiter509
  br i1 %prol.iter511.cmp.not, label %vec.epilog.scalar.ph434.prol.loopexit, label %vec.epilog.scalar.ph434.prol, !llvm.loop !196

vec.epilog.scalar.ph434.prol.loopexit:            ; preds = %vec.epilog.scalar.ph434.prol, %vec.epilog.scalar.ph434.preheader
  %indvars.iv.next304.lcssa487.unr = phi i64 [ poison, %vec.epilog.scalar.ph434.preheader ], [ %indvars.iv.next304.prol, %vec.epilog.scalar.ph434.prol ]
  %indvars.iv307.unr = phi i64 [ %indvars.iv307.ph, %vec.epilog.scalar.ph434.preheader ], [ %indvars.iv.next308.prol, %vec.epilog.scalar.ph434.prol ]
  %indvars.iv303.unr = phi i64 [ %indvars.iv303.ph, %vec.epilog.scalar.ph434.preheader ], [ %indvars.iv.next304.prol, %vec.epilog.scalar.ph434.prol ]
  %i.mi = sub i64 %indvars.iv307.ph, %wide.trip.count301
  %i.mj = icmp ugt i64 %i.mi, -8
  br i1 %i.mj, label %.loopexit479, label %vec.epilog.scalar.ph434

vec.epilog.scalar.ph434:                          ; preds = %vec.epilog.scalar.ph434.prol.loopexit, %vec.epilog.scalar.ph434
  %indvars.iv307 = phi i64 [ %indvars.iv.next308.7, %vec.epilog.scalar.ph434 ], [ %indvars.iv307.unr, %vec.epilog.scalar.ph434.prol.loopexit ] ; 9 uses
  %indvars.iv303 = phi i64 [ %indvars.iv.next304.7, %vec.epilog.scalar.ph434 ], [ %indvars.iv303.unr, %vec.epilog.scalar.ph434.prol.loopexit ] ; 9 uses
  %i.mk = mul nsw i64 %indvars.iv307, %i.e
  %gep367 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %i.mk
  %i.ml = load double, ptr %gep367, align 8, !tbaa !10
  %i.mm = getelementptr inbounds [8 x i8], ptr %6, i64 %indvars.iv303
  store double %i.ml, ptr %i.mm, align 8, !tbaa !10
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1
  %i.mn = mul nsw i64 %indvars.iv.next308, %i.e
  %gep367.1 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %i.mn
  %i.mo = load double, ptr %gep367.1, align 8, !tbaa !10
  %i.mp = getelementptr [8 x i8], ptr %6, i64 %indvars.iv303
  %i.mq = getelementptr i8, ptr %i.mp, i64 8
  store double %i.mo, ptr %i.mq, align 8, !tbaa !10
  %indvars.iv.next308.1 = add nuw nsw i64 %indvars.iv307, 2
  %i.mr = mul nsw i64 %indvars.iv.next308.1, %i.e
  %gep367.2 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %i.mr
  %i.ms = load double, ptr %gep367.2, align 8, !tbaa !10
  %i.mt = getelementptr [8 x i8], ptr %6, i64 %indvars.iv303
  %i.mu = getelementptr i8, ptr %i.mt, i64 16
  store double %i.ms, ptr %i.mu, align 8, !tbaa !10
  %indvars.iv.next308.2 = add nuw nsw i64 %indvars.iv307, 3
  %i.mv = mul nsw i64 %indvars.iv.next308.2, %i.e
  %gep367.3 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %i.mv
  %i.mw = load double, ptr %gep367.3, align 8, !tbaa !10
  %i.mx = getelementptr [8 x i8], ptr %6, i64 %indvars.iv303
  %i.my = getelementptr i8, ptr %i.mx, i64 24
  store double %i.mw, ptr %i.my, align 8, !tbaa !10
  %indvars.iv.next308.3 = add nuw nsw i64 %indvars.iv307, 4
  %i.mz = mul nsw i64 %indvars.iv.next308.3, %i.e
  %gep367.4 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %i.mz
  %i.na = load double, ptr %gep367.4, align 8, !tbaa !10
  %i.nb = getelementptr [8 x i8], ptr %6, i64 %indvars.iv303
  %i.nc = getelementptr i8, ptr %i.nb, i64 32
  store double %i.na, ptr %i.nc, align 8, !tbaa !10
  %indvars.iv.next308.4 = add nuw nsw i64 %indvars.iv307, 5
  %i.nd = mul nsw i64 %indvars.iv.next308.4, %i.e
  %gep367.5 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %i.nd
  %i.ne = load double, ptr %gep367.5, align 8, !tbaa !10
  %i.nf = getelementptr [8 x i8], ptr %6, i64 %indvars.iv303
  %i.ng = getelementptr i8, ptr %i.nf, i64 40
  store double %i.ne, ptr %i.ng, align 8, !tbaa !10
  %indvars.iv.next308.5 = add nuw nsw i64 %indvars.iv307, 6
  %i.nh = mul nsw i64 %indvars.iv.next308.5, %i.e
  %gep367.6 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %i.nh
  %i.ni = load double, ptr %gep367.6, align 8, !tbaa !10
  %i.nj = getelementptr [8 x i8], ptr %6, i64 %indvars.iv303
  %i.nk = getelementptr i8, ptr %i.nj, i64 48
  store double %i.ni, ptr %i.nk, align 8, !tbaa !10
  %indvars.iv.next308.6 = add nuw nsw i64 %indvars.iv307, 7
  %i.nl = mul nsw i64 %indvars.iv.next308.6, %i.e
  %gep367.7 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %i.nl
  %i.nm = load double, ptr %gep367.7, align 8, !tbaa !10
  %i.nn = getelementptr [8 x i8], ptr %6, i64 %indvars.iv303
  %i.no = getelementptr i8, ptr %i.nn, i64 56
  store double %i.nm, ptr %i.no, align 8, !tbaa !10
  %indvars.iv.next308.7 = add nuw nsw i64 %indvars.iv307, 8 ; 2 uses
  %indvars.iv.next304.7 = add nsw i64 %indvars.iv303, 8 ; 2 uses
  %exitcond313.not.7 = icmp eq i64 %indvars.iv.next308.7, %wide.trip.count315
  br i1 %exitcond313.not.7, label %.loopexit479, label %vec.epilog.scalar.ph434, !llvm.loop !197

.loopexit479:                                     ; preds = %vec.epilog.scalar.ph434.prol.loopexit, %vec.epilog.scalar.ph434, %vec.epilog.middle.block443, %middle.block429
  %indvars.iv.next304.lcssa = phi i64 [ %i.ly, %vec.epilog.middle.block443 ], [ %i.ll, %middle.block429 ], [ %indvars.iv.next304.lcssa487.unr, %vec.epilog.scalar.ph434.prol.loopexit ], [ %indvars.iv.next304.7, %vec.epilog.scalar.ph434 ]
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next306, %wide.trip.count315
  br i1 %exitcond316.not, label %.loopexit, label %iter.check433, !llvm.loop !198

.loopexit:                                        ; preds = %.loopexit479, %.loopexit478, %.preheader156, %.preheader151
  call void @free(ptr noundef %i.h) #7
  call void @free(ptr noundef %i.m) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.np = load i32, ptr %i.a, align 4, !tbaa !8
  %i.nq = load i32, ptr %2, align 4, !tbaa !8
  %i.nr = load double, ptr %3, align 8, !tbaa !10
  %i.ns = load i32, ptr %5, align 4, !tbaa !8
  call void @cblas_dspr(i32 noundef 102, i32 noundef %i.np, i32 noundef %i.nq, double noundef %i.nr, ptr noundef %4, i32 noundef %i.ns, ptr noundef %6) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
end_hunk_0
begin_hunk_1_@cdspr2_:bb.a

iter.check405:                                    ; preds = %.preheader164.preheader, %.loopexit484
  %indvars.iv260 = phi i64 [ 0, %.preheader164.preheader ], [ %indvars.iv.next261, %.loopexit484 ] ; 3 uses
  %indvars.iv258 = phi i64 [ 1, %.preheader164.preheader ], [ %indvars.iv.next259, %.loopexit484 ] ; 10 uses
  %.0185 = phi i64 [ 0, %.preheader164.preheader ], [ %indvars.iv.next248.lcssa, %.loopexit484 ] ; 5 uses
  %invariant.gep368 = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv260 ; 11 uses
  %min.iters.check390 = icmp samesign ugt i64 %indvars.iv258, 3
  %or.cond = and i1 %min.iters.check390, %ident.check389.not
  br i1 %or.cond, label %vector.main.loop.iter.check391, label %vec.epilog.scalar.ph406.preheader

vector.main.loop.iter.check391:                   ; preds = %iter.check405
  %min.iters.check392 = icmp samesign ult i64 %indvars.iv258, 16
  br i1 %min.iters.check392, label %vec.epilog.ph409, label %vector.ph393

vector.ph393:                                     ; preds = %vector.main.loop.iter.check391
  %i.r = and i64 %indvars.iv258, 12
  %n.vec394 = and i64 %indvars.iv258, 9223372036854775792 ; 5 uses
  %i.s = add i64 %.0185, %n.vec394                ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %8, i64 %.0185
  br label %vector.body395

vector.body395:                                   ; preds = %vector.ph393, %vector.body395
  %index396 = phi i64 [ 0, %vector.ph393 ], [ %index.next401, %vector.body395 ] ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %index396 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %wide.load397 = load <4 x double>, ptr %i.u, align 8, !tbaa !10
  %wide.load398 = load <4 x double>, ptr %i.v, align 8, !tbaa !10
  %wide.load399 = load <4 x double>, ptr %i.w, align 8, !tbaa !10
  %wide.load400 = load <4 x double>, ptr %i.x, align 8, !tbaa !10
  %i.y = getelementptr [8 x i8], ptr %invariant.gep368, i64 %index396 ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 32
  %i.aa = getelementptr i8, ptr %i.y, i64 64
  %i.ab = getelementptr i8, ptr %i.y, i64 96
  store <4 x double> %wide.load397, ptr %i.y, align 8, !tbaa !10
  store <4 x double> %wide.load398, ptr %i.z, align 8, !tbaa !10
  store <4 x double> %wide.load399, ptr %i.aa, align 8, !tbaa !10
  store <4 x double> %wide.load400, ptr %i.ab, align 8, !tbaa !10
  %index.next401 = add nuw i64 %index396, 16      ; 2 uses
  %i.ac = icmp eq i64 %index.next401, %n.vec394
  br i1 %i.ac, label %middle.block402, label %vector.body395, !llvm.loop !199

middle.block402:                                  ; preds = %vector.body395
  %cmp.n403 = icmp eq i64 %indvars.iv258, %n.vec394
  br i1 %cmp.n403, label %.loopexit484, label %vec.epilog.iter.check407

vec.epilog.iter.check407:                         ; preds = %middle.block402
  %min.epilog.iters.check408 = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check408, label %vec.epilog.scalar.ph406.preheader, label %vec.epilog.ph409, !prof !14

vec.epilog.ph409:                                 ; preds = %vector.main.loop.iter.check391, %vec.epilog.iter.check407
  %vec.epilog.resume.val404 = phi i64 [ %n.vec394, %vec.epilog.iter.check407 ], [ 0, %vector.main.loop.iter.check391 ]
  %n.vec410 = and i64 %indvars.iv258, 9223372036854775804 ; 4 uses
  %i.ad = add i64 %.0185, %n.vec410               ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %8, i64 %.0185
  br label %vec.epilog.vector.body411

vec.epilog.vector.body411:                        ; preds = %vec.epilog.vector.body411, %vec.epilog.ph409
  %index412 = phi i64 [ %vec.epilog.resume.val404, %vec.epilog.ph409 ], [ %index.next414, %vec.epilog.vector.body411 ] ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %index412
  %wide.load413 = load <4 x double>, ptr %i.af, align 8, !tbaa !10
  %i.ag = getelementptr [8 x i8], ptr %invariant.gep368, i64 %index412
  store <4 x double> %wide.load413, ptr %i.ag, align 8, !tbaa !10
  %index.next414 = add nuw i64 %index412, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next414, %n.vec410
  br i1 %i.ah, label %vec.epilog.middle.block415, label %vec.epilog.vector.body411, !llvm.loop !200

vec.epilog.middle.block415:                       ; preds = %vec.epilog.vector.body411
  %cmp.n416 = icmp eq i64 %indvars.iv258, %n.vec410
  br i1 %cmp.n416, label %.loopexit484, label %vec.epilog.scalar.ph406.preheader

vec.epilog.scalar.ph406.preheader:                ; preds = %iter.check405, %vec.epilog.iter.check407, %vec.epilog.middle.block415
  %indvars.iv249.ph = phi i64 [ 0, %iter.check405 ], [ %n.vec394, %vec.epilog.iter.check407 ], [ %n.vec410, %vec.epilog.middle.block415 ] ; 4 uses
  %indvars.iv247.ph = phi i64 [ %.0185, %iter.check405 ], [ %i.s, %vec.epilog.iter.check407 ], [ %i.ad, %vec.epilog.middle.block415 ] ; 2 uses
  %i.ai = sub nsw i64 %indvars.iv258, %indvars.iv249.ph
  %i.aj = sub nsw i64 %indvars.iv260, %indvars.iv249.ph
  %xtraiter498 = and i64 %i.ai, 7                 ; 2 uses
  %lcmp.mod499.not = icmp eq i64 %xtraiter498, 0
  br i1 %lcmp.mod499.not, label %vec.epilog.scalar.ph406.prol.loopexit, label %vec.epilog.scalar.ph406.prol

vec.epilog.scalar.ph406.prol:                     ; preds = %vec.epilog.scalar.ph406.preheader, %vec.epilog.scalar.ph406.prol
  %indvars.iv249.prol = phi i64 [ %indvars.iv.next250.prol, %vec.epilog.scalar.ph406.prol ], [ %indvars.iv249.ph, %vec.epilog.scalar.ph406.preheader ] ; 2 uses
  %indvars.iv247.prol = phi i64 [ %indvars.iv.next248.prol, %vec.epilog.scalar.ph406.prol ], [ %indvars.iv247.ph, %vec.epilog.scalar.ph406.preheader ] ; 2 uses
  %prol.iter500 = phi i64 [ %prol.iter500.next, %vec.epilog.scalar.ph406.prol ], [ 0, %vec.epilog.scalar.ph406.preheader ]
  %i.ak = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv247.prol
  %i.al = load double, ptr %i.ak, align 8, !tbaa !10
  %i.am = mul nsw i64 %indvars.iv249.prol, %i.e
  %gep369.prol = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.am
  store double %i.al, ptr %gep369.prol, align 8, !tbaa !10
  %indvars.iv.next250.prol = add nuw nsw i64 %indvars.iv249.prol, 1 ; 2 uses
  %indvars.iv.next248.prol = add nsw i64 %indvars.iv247.prol, 1 ; 3 uses
  %prol.iter500.next = add i64 %prol.iter500, 1   ; 2 uses
  %prol.iter500.cmp.not = icmp eq i64 %prol.iter500.next, %xtraiter498
  br i1 %prol.iter500.cmp.not, label %vec.epilog.scalar.ph406.prol.loopexit, label %vec.epilog.scalar.ph406.prol, !llvm.loop !201

vec.epilog.scalar.ph406.prol.loopexit:            ; preds = %vec.epilog.scalar.ph406.prol, %vec.epilog.scalar.ph406.preheader
  %indvars.iv.next248.lcssa492.unr = phi i64 [ poison, %vec.epilog.scalar.ph406.preheader ], [ %indvars.iv.next248.prol, %vec.epilog.scalar.ph406.prol ]
  %indvars.iv249.unr = phi i64 [ %indvars.iv249.ph, %vec.epilog.scalar.ph406.preheader ], [ %indvars.iv.next250.prol, %vec.epilog.scalar.ph406.prol ]
  %indvars.iv247.unr = phi i64 [ %indvars.iv247.ph, %vec.epilog.scalar.ph406.preheader ], [ %indvars.iv.next248.prol, %vec.epilog.scalar.ph406.prol ]
  %i.an = icmp ult i64 %i.aj, 7
  br i1 %i.an, label %.loopexit484, label %vec.epilog.scalar.ph406

.preheader161.preheader:                          ; preds = %.loopexit484
  %i.ao = add i32 %i.d, 1                         ; 3 uses
  %i.ap = add nsw i32 %i.p, -1                    ; 4 uses
  %xtraiter501 = and i64 %wide.trip.count265, 1
  %i.aq = icmp eq i32 %i.p, 1
  br i1 %i.aq, label %.preheader161.epil.preheader, label %.preheader161.preheader.new

.preheader161.preheader.new:                      ; preds = %.preheader161.preheader
  %unroll_iter505 = and i64 %wide.trip.count265, 2147483646
  br label %.preheader161

vec.epilog.scalar.ph406:                          ; preds = %vec.epilog.scalar.ph406.prol.loopexit, %vec.epilog.scalar.ph406
  %indvars.iv249 = phi i64 [ %indvars.iv.next250.7, %vec.epilog.scalar.ph406 ], [ %indvars.iv249.unr, %vec.epilog.scalar.ph406.prol.loopexit ] ; 9 uses
  %indvars.iv247 = phi i64 [ %indvars.iv.next248.7, %vec.epilog.scalar.ph406 ], [ %indvars.iv247.unr, %vec.epilog.scalar.ph406.prol.loopexit ] ; 9 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv247
  %i.as = load double, ptr %i.ar, align 8, !tbaa !10
  %i.at = mul nsw i64 %indvars.iv249, %i.e
  %gep369 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.at
  store double %i.as, ptr %gep369, align 8, !tbaa !10
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1
  %i.au = getelementptr [8 x i8], ptr %8, i64 %indvars.iv247
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !10
  %i.ax = mul nsw i64 %indvars.iv.next250, %i.e
  %gep369.1 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.ax
  store double %i.aw, ptr %gep369.1, align 8, !tbaa !10
  %indvars.iv.next250.1 = add nuw nsw i64 %indvars.iv249, 2
  %i.ay = getelementptr [8 x i8], ptr %8, i64 %indvars.iv247
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !10
  %i.bb = mul nsw i64 %indvars.iv.next250.1, %i.e
  %gep369.2 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.bb
  store double %i.ba, ptr %gep369.2, align 8, !tbaa !10
  %indvars.iv.next250.2 = add nuw nsw i64 %indvars.iv249, 3
  %i.bc = getelementptr [8 x i8], ptr %8, i64 %indvars.iv247
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !10
  %i.bf = mul nsw i64 %indvars.iv.next250.2, %i.e
  %gep369.3 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.bf
  store double %i.be, ptr %gep369.3, align 8, !tbaa !10
  %indvars.iv.next250.3 = add nuw nsw i64 %indvars.iv249, 4
  %i.bg = getelementptr [8 x i8], ptr %8, i64 %indvars.iv247
  %i.bh = getelementptr i8, ptr %i.bg, i64 32
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !10
  %i.bj = mul nsw i64 %indvars.iv.next250.3, %i.e
  %gep369.4 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.bj
  store double %i.bi, ptr %gep369.4, align 8, !tbaa !10
  %indvars.iv.next250.4 = add nuw nsw i64 %indvars.iv249, 5
  %i.bk = getelementptr [8 x i8], ptr %8, i64 %indvars.iv247
  %i.bl = getelementptr i8, ptr %i.bk, i64 40
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !10
  %i.bn = mul nsw i64 %indvars.iv.next250.4, %i.e
  %gep369.5 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.bn
  store double %i.bm, ptr %gep369.5, align 8, !tbaa !10
  %indvars.iv.next250.5 = add nuw nsw i64 %indvars.iv249, 6
  %i.bo = getelementptr [8 x i8], ptr %8, i64 %indvars.iv247
  %i.bp = getelementptr i8, ptr %i.bo, i64 48
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !10
  %i.br = mul nsw i64 %indvars.iv.next250.5, %i.e
  %gep369.6 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.br
  store double %i.bq, ptr %gep369.6, align 8, !tbaa !10
  %indvars.iv.next250.6 = add nuw nsw i64 %indvars.iv249, 7
  %i.bs = getelementptr [8 x i8], ptr %8, i64 %indvars.iv247
  %i.bt = getelementptr i8, ptr %i.bs, i64 56
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !10
  %i.bv = mul nsw i64 %indvars.iv.next250.6, %i.e
  %gep369.7 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %i.bv
  store double %i.bu, ptr %gep369.7, align 8, !tbaa !10
  %indvars.iv.next250.7 = add nuw nsw i64 %indvars.iv249, 8 ; 2 uses
  %indvars.iv.next248.7 = add nsw i64 %indvars.iv247, 8 ; 2 uses
  %exitcond257.not.7 = icmp eq i64 %indvars.iv.next250.7, %indvars.iv258
  br i1 %exitcond257.not.7, label %.loopexit484, label %vec.epilog.scalar.ph406, !llvm.loop !202

.loopexit484:                                     ; preds = %vec.epilog.scalar.ph406.prol.loopexit, %vec.epilog.scalar.ph406, %vec.epilog.middle.block415, %middle.block402
  %indvars.iv.next248.lcssa = phi i64 [ %i.ad, %vec.epilog.middle.block415 ], [ %i.s, %middle.block402 ], [ %indvars.iv.next248.lcssa492.unr, %vec.epilog.scalar.ph406.prol.loopexit ], [ %indvars.iv.next248.7, %vec.epilog.scalar.ph406 ]
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1
  %exitcond266.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count265
  br i1 %exitcond266.not, label %.preheader161.preheader, label %iter.check405, !llvm.loop !203

.preheader161:                                    ; preds = %.preheader161, %.preheader161.preheader.new
  %indvars.iv275 = phi i32 [ %i.ap, %.preheader161.preheader.new ], [ %indvars.iv.next276.1, %.preheader161 ] ; 3 uses
  %indvars.iv271 = phi i64 [ 0, %.preheader161.preheader.new ], [ %indvars.iv.next272.1, %.preheader161 ] ; 4 uses
  %.2190 = phi i64 [ 0, %.preheader161.preheader.new ], [ %i.cv, %.preheader161 ] ; 2 uses
  %niter506 = phi i64 [ 0, %.preheader161.preheader.new ], [ %niter506.next.1, %.preheader161 ]
  %i.bw = trunc nuw nsw i64 %indvars.iv271 to i32
  %i.bx = mul i32 %i.ao, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 3
  %scevgep268 = getelementptr i8, ptr %i.h, i64 %i.bz
  %i.ca = trunc i64 %indvars.iv271 to i32
  %i.cb = sub i32 %i.ap, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = add nuw nsw i64 %i.cd, 8
  %i.cf = shl nsw i64 %.2190, 3
  %scevgep267 = getelementptr i8, ptr %i.m, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep267, ptr noundef nonnull align 8 dereferenceable(1) %scevgep268, i64 range(i64 0, 17179869177) %i.ce, i1 false), !tbaa !10
  %i.cg = zext i32 %indvars.iv275 to i64
  %i.ch = add nsw i64 %.2190, 1
  %i.ci = add nsw i64 %i.ch, %i.cg                ; 2 uses
  %indvars.iv.next272 = or disjoint i64 %indvars.iv271, 1 ; 2 uses
  %indvars.iv.next276 = add i32 %indvars.iv275, -1
  %i.cj = trunc nuw nsw i64 %indvars.iv.next272 to i32
  %i.ck = mul i32 %i.ao, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = shl nsw i64 %i.cl, 3
  %scevgep268.1 = getelementptr i8, ptr %i.h, i64 %i.cm
  %i.cn = trunc i64 %indvars.iv.next272 to i32
  %i.co = sub i32 %i.ap, %i.cn
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 8
  %i.cs = shl nsw i64 %i.ci, 3
  %scevgep267.1 = getelementptr i8, ptr %i.m, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep267.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep268.1, i64 range(i64 0, 17179869177) %i.cr, i1 false), !tbaa !10
  %i.ct = zext i32 %indvars.iv.next276 to i64
  %i.cu = add nsw i64 %i.ci, 1
  %i.cv = add nsw i64 %i.cu, %i.ct                ; 2 uses
  %indvars.iv.next272.1 = add nuw nsw i64 %indvars.iv271, 2 ; 2 uses
  %indvars.iv.next276.1 = add i32 %indvars.iv275, -2
  %niter506.next.1 = add i64 %niter506, 2         ; 2 uses
  %niter506.ncmp.1 = icmp eq i64 %niter506.next.1, %unroll_iter505
  br i1 %niter506.ncmp.1, label %.loopexit163.loopexit.unr-lcssa, label %.preheader161, !llvm.loop !204

iter.check:                                       ; preds = %.preheader169.preheader, %.loopexit485
  %indvars.iv218 = phi i64 [ 0, %.preheader169.preheader ], [ %indvars.iv.next219, %.loopexit485 ] ; 8 uses
  %.4177 = phi i64 [ 0, %.preheader169.preheader ], [ %indvars.iv.next.lcssa, %.loopexit485 ] ; 5 uses
  %i.cw = sub nsw i64 %wide.trip.count226, %indvars.iv218 ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv218 ; 11 uses
  %min.iters.check = icmp ugt i64 %i.cw, 3
  %or.cond486 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond486, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check376 = icmp ult i64 %i.cw, 16
  br i1 %min.iters.check376, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cx = and i64 %i.cw, 12
  %n.vec = and i64 %i.cw, -16                     ; 5 uses
  %i.cy = add i64 %indvars.iv218, %n.vec
  %i.cz = add i64 %.4177, %n.vec                  ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %8, i64 %.4177
  %i.db = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv218
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %i.da, i64 %index ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %wide.load = load <4 x double>, ptr %i.dc, align 8, !tbaa !10
  %wide.load377 = load <4 x double>, ptr %i.dd, align 8, !tbaa !10
  %wide.load378 = load <4 x double>, ptr %i.de, align 8, !tbaa !10
  %wide.load379 = load <4 x double>, ptr %i.df, align 8, !tbaa !10
  %i.dg = getelementptr [8 x i8], ptr %i.db, i64 %index ; 4 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 32
  %i.di = getelementptr i8, ptr %i.dg, i64 64
  %i.dj = getelementptr i8, ptr %i.dg, i64 96
  store <4 x double> %wide.load, ptr %i.dg, align 8, !tbaa !10
  store <4 x double> %wide.load377, ptr %i.dh, align 8, !tbaa !10
  store <4 x double> %wide.load378, ptr %i.di, align 8, !tbaa !10
  store <4 x double> %wide.load379, ptr %i.dj, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %.loopexit485, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cx, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec381 = and i64 %i.cw, -4                   ; 4 uses
  %i.dl = add i64 %indvars.iv218, %n.vec381
  %i.dm = add i64 %.4177, %n.vec381               ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %8, i64 %.4177
  %i.do = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv218
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index382 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next384, %vec.epilog.vector.body ] ; 3 uses
  %i.dp = getelementptr [8 x i8], ptr %i.dn, i64 %index382
  %wide.load383 = load <4 x double>, ptr %i.dp, align 8, !tbaa !10
  %i.dq = getelementptr [8 x i8], ptr %i.do, i64 %index382
  store <4 x double> %wide.load383, ptr %i.dq, align 8, !tbaa !10
  %index.next384 = add nuw i64 %index382, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next384, %n.vec381
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !206

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n385 = icmp eq i64 %i.cw, %n.vec381
  br i1 %cmp.n385, label %.loopexit485, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv220.ph = phi i64 [ %indvars.iv218, %iter.check ], [ %i.cy, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %.4177, %iter.check ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ] ; 2 uses
  %i.ds = sub i64 %wide.trip.count226, %indvars.iv220.ph
  %xtraiter = and i64 %i.ds, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv220.prol = phi i64 [ %indvars.iv.next221.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv220.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dt = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv.prol
  %i.du = load double, ptr %i.dt, align 8, !tbaa !10
  %i.dv = mul nsw i64 %indvars.iv220.prol, %i.e
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dv
  store double %i.du, ptr %gep.prol, align 8, !tbaa !10
  %indvars.iv.next221.prol = add nuw nsw i64 %indvars.iv220.prol, 1 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !207

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next.lcssa494.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv220.unr = phi i64 [ %indvars.iv220.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next221.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dw = sub i64 %indvars.iv220.ph, %wide.trip.count226
  %i.dx = icmp ugt i64 %i.dw, -8
  br i1 %i.dx, label %.loopexit485, label %vec.epilog.scalar.ph

.preheader166.preheader:                          ; preds = %.loopexit485
  %xtraiter495 = and i64 %wide.trip.count226, 3   ; 3 uses
  %i.dy = icmp ult i32 %i.p, 4
  br i1 %i.dy, label %.preheader166.epil.preheader, label %.preheader166.preheader.new

.preheader166.preheader.new:                      ; preds = %.preheader166.preheader
  %unroll_iter = and i64 %wide.trip.count226, 2147483644
  br label %.preheader166

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv220 = phi i64 [ %indvars.iv.next221.7, %vec.epilog.scalar.ph ], [ %indvars.iv220.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !10
  %i.eb = mul nsw i64 %indvars.iv220, %i.e
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.eb
  store double %i.ea, ptr %gep, align 8, !tbaa !10
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1
  %i.ec = getelementptr [8 x i8], ptr %8, i64 %indvars.iv
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !10
  %i.ef = mul nsw i64 %indvars.iv.next221, %i.e
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ef
  store double %i.ee, ptr %gep.1, align 8, !tbaa !10
  %indvars.iv.next221.1 = add nuw nsw i64 %indvars.iv220, 2
  %i.eg = getelementptr [8 x i8], ptr %8, i64 %indvars.iv
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !10
  %i.ej = mul nsw i64 %indvars.iv.next221.1, %i.e
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ej
  store double %i.ei, ptr %gep.2, align 8, !tbaa !10
  %indvars.iv.next221.2 = add nuw nsw i64 %indvars.iv220, 3
  %i.ek = getelementptr [8 x i8], ptr %8, i64 %indvars.iv
  %i.el = getelementptr i8, ptr %i.ek, i64 24
  %i.em = load double, ptr %i.el, align 8, !tbaa !10
  %i.en = mul nsw i64 %indvars.iv.next221.2, %i.e
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.en
  store double %i.em, ptr %gep.3, align 8, !tbaa !10
  %indvars.iv.next221.3 = add nuw nsw i64 %indvars.iv220, 4
  %i.eo = getelementptr [8 x i8], ptr %8, i64 %indvars.iv
  %i.ep = getelementptr i8, ptr %i.eo, i64 32
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !10
  %i.er = mul nsw i64 %indvars.iv.next221.3, %i.e
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.er
  store double %i.eq, ptr %gep.4, align 8, !tbaa !10
  %indvars.iv.next221.4 = add nuw nsw i64 %indvars.iv220, 5
  %i.es = getelementptr [8 x i8], ptr %8, i64 %indvars.iv
  %i.et = getelementptr i8, ptr %i.es, i64 40
  %i.eu = load double, ptr %i.et, align 8, !tbaa !10
  %i.ev = mul nsw i64 %indvars.iv.next221.4, %i.e
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ev
  store double %i.eu, ptr %gep.5, align 8, !tbaa !10
  %indvars.iv.next221.5 = add nuw nsw i64 %indvars.iv220, 6
  %i.ew = getelementptr [8 x i8], ptr %8, i64 %indvars.iv
  %i.ex = getelementptr i8, ptr %i.ew, i64 48
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !10
  %i.ez = mul nsw i64 %indvars.iv.next221.5, %i.e
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ez
  store double %i.ey, ptr %gep.6, align 8, !tbaa !10
  %indvars.iv.next221.6 = add nuw nsw i64 %indvars.iv220, 7
  %i.fa = getelementptr [8 x i8], ptr %8, i64 %indvars.iv
  %i.fb = getelementptr i8, ptr %i.fa, i64 56
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !10
  %i.fd = mul nsw i64 %indvars.iv.next221.6, %i.e
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fd
  store double %i.fc, ptr %gep.7, align 8, !tbaa !10
  %indvars.iv.next221.7 = add nuw nsw i64 %indvars.iv220, 8 ; 2 uses
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next221.7, %wide.trip.count226
  br i1 %exitcond.not.7, label %.loopexit485, label %vec.epilog.scalar.ph, !llvm.loop !208

.loopexit485:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.dm, %vec.epilog.middle.block ], [ %i.cz, %middle.block ], [ %indvars.iv.next.lcssa494.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next.7, %vec.epilog.scalar.ph ]
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count226
  br i1 %exitcond227.not, label %.preheader166.preheader, label %iter.check, !llvm.loop !209

.preheader166:                                    ; preds = %.preheader166, %.preheader166.preheader.new
  %indvars.iv233 = phi i64 [ 1, %.preheader166.preheader.new ], [ %indvars.iv.next234.3, %.preheader166 ] ; 5 uses
  %indvar = phi i64 [ 0, %.preheader166.preheader.new ], [ %indvar.next.3, %.preheader166 ] ; 6 uses
  %.6181 = phi i64 [ 0, %.preheader166.preheader.new ], [ %i.fx, %.preheader166 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader166.preheader.new ], [ %niter.next.3, %.preheader166 ]
  %i.fe = mul i64 %i.f, %indvar
  %scevgep228 = getelementptr i8, ptr %i.h, i64 %i.fe
  %i.ff = shl nuw nsw i64 %indvar, 3
  %i.fg = or disjoint i64 %i.ff, 8
  %i.fh = shl nsw i64 %.6181, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep228, i64 range(i64 0, 17179869177) %i.fg, i1 false), !tbaa !10
  %i.fi = add i64 %indvars.iv233, %.6181          ; 2 uses
  %indvar.next = or disjoint i64 %indvar, 1       ; 2 uses
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  %i.fj = mul i64 %i.f, %indvar.next
  %scevgep228.1 = getelementptr i8, ptr %i.h, i64 %i.fj
  %i.fk = shl nuw nsw i64 %indvar.next, 3
  %i.fl = add nuw nsw i64 %i.fk, 8
  %i.fm = shl nsw i64 %i.fi, 3
  %scevgep.1 = getelementptr i8, ptr %i.m, i64 %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep228.1, i64 range(i64 0, 17179869177) %i.fl, i1 false), !tbaa !10
  %i.fn = add i64 %indvars.iv.next234, %i.fi      ; 2 uses
  %indvar.next.1 = or disjoint i64 %indvar, 2     ; 2 uses
  %indvars.iv.next234.1 = add nuw nsw i64 %indvars.iv233, 2
  %i.fo = mul i64 %i.f, %indvar.next.1
  %scevgep228.2 = getelementptr i8, ptr %i.h, i64 %i.fo
  %i.fp = shl nuw nsw i64 %indvar.next.1, 3
  %i.fq = or disjoint i64 %i.fp, 8
  %i.fr = shl nsw i64 %i.fn, 3
  %scevgep.2 = getelementptr i8, ptr %i.m, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.2, ptr noundef nonnull align 8 dereferenceable(1) %scevgep228.2, i64 range(i64 0, 17179869177) %i.fq, i1 false), !tbaa !10
  %i.fs = add i64 %indvars.iv.next234.1, %i.fn    ; 2 uses
  %indvar.next.2 = or disjoint i64 %indvar, 3     ; 2 uses
  %indvars.iv.next234.2 = add nuw nsw i64 %indvars.iv233, 3
  %i.ft = mul i64 %i.f, %indvar.next.2
  %scevgep228.3 = getelementptr i8, ptr %i.h, i64 %i.ft
  %i.fu = shl nuw nsw i64 %indvar.next.2, 3
  %i.fv = add nuw nsw i64 %i.fu, 8
  %i.fw = shl nsw i64 %i.fs, 3
  %scevgep.3 = getelementptr i8, ptr %i.m, i64 %i.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.3, ptr noundef nonnull align 8 dereferenceable(1) %scevgep228.3, i64 range(i64 0, 17179869177) %i.fv, i1 false), !tbaa !10
  %i.fx = add i64 %indvars.iv.next234.2, %i.fs    ; 2 uses
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %indvars.iv.next234.3 = add nuw nsw i64 %indvars.iv233, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit163.loopexit493.unr-lcssa, label %.preheader166, !llvm.loop !210

.loopexit163.loopexit.unr-lcssa:                  ; preds = %.preheader161
  %lcmp.mod503.not = icmp eq i64 %xtraiter501, 0
  br i1 %lcmp.mod503.not, label %.loopexit163, label %.preheader161.epil.preheader

.preheader161.epil.preheader:                     ; preds = %.loopexit163.loopexit.unr-lcssa, %.preheader161.preheader
  %indvars.iv271.epil.init = phi i64 [ 0, %.preheader161.preheader ], [ %indvars.iv.next272.1, %.loopexit163.loopexit.unr-lcssa ] ; 2 uses
  %.2190.epil.init = phi i64 [ 0, %.preheader161.preheader ], [ %i.cv, %.loopexit163.loopexit.unr-lcssa ]
  %lcmp.mod504 = trunc i32 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod504)
  %i.fy = trunc nuw nsw i64 %indvars.iv271.epil.init to i32
  %i.fz = mul i32 %i.ao, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = shl nsw i64 %i.ga, 3
  %scevgep268.epil = getelementptr i8, ptr %i.h, i64 %i.gb
  %i.gc = trunc i64 %indvars.iv271.epil.init to i32
  %i.gd = sub i32 %i.ap, %i.gc
  %i.ge = zext i32 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 3
  %i.gg = add nuw nsw i64 %i.gf, 8
  %i.gh = shl nsw i64 %.2190.epil.init, 3
  %scevgep267.epil = getelementptr i8, ptr %i.m, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep267.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep268.epil, i64 range(i64 0, 17179869177) %i.gg, i1 false), !tbaa !10
  br label %.loopexit163

.loopexit163.loopexit493.unr-lcssa:               ; preds = %.preheader166
  %lcmp.mod496.not = icmp eq i64 %xtraiter495, 0
  br i1 %lcmp.mod496.not, label %.loopexit163, label %.preheader166.epil.preheader

.preheader166.epil.preheader:                     ; preds = %.loopexit163.loopexit493.unr-lcssa, %.preheader166.preheader
  %indvars.iv233.epil.init = phi i64 [ 1, %.preheader166.preheader ], [ %indvars.iv.next234.3, %.loopexit163.loopexit493.unr-lcssa ]
  %indvar.epil.init = phi i64 [ 0, %.preheader166.preheader ], [ %indvar.next.3, %.loopexit163.loopexit493.unr-lcssa ]
  %.6181.epil.init = phi i64 [ 0, %.preheader166.preheader ], [ %i.fx, %.loopexit163.loopexit493.unr-lcssa ]
  %lcmp.mod497 = icmp ne i64 %xtraiter495, 0
  call void @llvm.assume(i1 %lcmp.mod497)
  br label %.preheader166.epil

.preheader166.epil:                               ; preds = %.preheader166.epil, %.preheader166.epil.preheader
  %indvars.iv233.epil = phi i64 [ %indvars.iv233.epil.init, %.preheader166.epil.preheader ], [ %indvars.iv.next234.epil, %.preheader166.epil ] ; 2 uses
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader166.epil.preheader ], [ %indvar.next.epil, %.preheader166.epil ] ; 3 uses
  %.6181.epil = phi i64 [ %.6181.epil.init, %.preheader166.epil.preheader ], [ %i.gm, %.preheader166.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader166.epil.preheader ], [ %epil.iter.next, %.preheader166.epil ]
  %i.gi = mul i64 %i.f, %indvar.epil
  %scevgep228.epil = getelementptr i8, ptr %i.h, i64 %i.gi
  %i.gj = shl nuw nsw i64 %indvar.epil, 3
  %i.gk = add nuw nsw i64 %i.gj, 8
  %i.gl = shl nsw i64 %.6181.epil, 3
  %scevgep.epil = getelementptr i8, ptr %i.m, i64 %i.gl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep228.epil, i64 range(i64 0, 17179869177) %i.gk, i1 false), !tbaa !10
  %i.gm = add i64 %indvars.iv233.epil, %.6181.epil
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %indvars.iv.next234.epil = add nuw nsw i64 %indvars.iv233.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter495
  br i1 %epil.iter.cmp.not, label %.loopexit163, label %.preheader166.epil, !llvm.loop !211

.loopexit163:                                     ; preds = %.loopexit163.loopexit493.unr-lcssa, %.preheader166.epil, %.preheader161.epil.preheader, %.loopexit163.loopexit.unr-lcssa, %.preheader165, %.preheader170
  %i.gn = load double, ptr %3, align 8, !tbaa !10
  %i.go = load i32, ptr %5, align 4, !tbaa !8
  %i.gp = load i32, ptr %7, align 4, !tbaa !8
  call void @cblas_dspr2(i32 noundef 101, i32 noundef %i.n, i32 noundef %i.p, double noundef %i.gn, ptr noundef %4, i32 noundef %i.go, ptr noundef %6, i32 noundef %i.gp, ptr noundef %i.m) #7
  %i.gq = load i32, ptr %i.a, align 4, !tbaa !8
  %i.gr = icmp eq i32 %i.gq, 121
  %i.gs = load i32, ptr %2, align 4, !tbaa !8     ; 9 uses
  %i.gt = icmp sgt i32 %i.gs, 0                   ; 2 uses
  br i1 %i.gr, label %.preheader155, label %.preheader160

.preheader160:                                    ; preds = %.loopexit163
  br i1 %i.gt, label %.preheader159.preheader, label %.loopexit

.preheader159.preheader:                          ; preds = %.preheader160
  %wide.trip.count305 = zext nneg i32 %i.gs to i64 ; 5 uses
  %xtraiter507 = and i64 %wide.trip.count305, 3   ; 3 uses
  %i.gu = icmp ult i32 %i.gs, 4
  br i1 %i.gu, label %.preheader159.epil.preheader, label %.preheader159.preheader.new

.preheader159.preheader.new:                      ; preds = %.preheader159.preheader
  %unroll_iter511 = and i64 %wide.trip.count305, 2147483644
  br label %.preheader159

.preheader155:                                    ; preds = %.loopexit163
  br i1 %i.gt, label %.preheader154.preheader, label %.loopexit

.preheader154.preheader:                          ; preds = %.preheader155
  %i.gv = add i32 %i.d, 1                         ; 3 uses
  %i.gw = add nsw i32 %i.gs, -1                   ; 4 uses
  %wide.trip.count337 = zext nneg i32 %i.gs to i64 ; 2 uses
  %xtraiter516 = and i64 %wide.trip.count337, 1
  %i.gx = icmp eq i32 %i.gs, 1
  br i1 %i.gx, label %.preheader154.epil.preheader, label %.preheader154.preheader.new

.preheader154.preheader.new:                      ; preds = %.preheader154.preheader
  %unroll_iter520 = and i64 %wide.trip.count337, 2147483646
  br label %.preheader154

.preheader154:                                    ; preds = %.preheader154, %.preheader154.preheader.new
  %indvars.iv329 = phi i32 [ %i.gw, %.preheader154.preheader.new ], [ %indvars.iv.next330.1, %.preheader154 ] ; 3 uses
  %indvars.iv325 = phi i64 [ 0, %.preheader154.preheader.new ], [ %indvars.iv.next326.1, %.preheader154 ] ; 4 uses
  %.8203 = phi i64 [ 0, %.preheader154.preheader.new ], [ %i.hx, %.preheader154 ] ; 2 uses
  %niter521 = phi i64 [ 0, %.preheader154.preheader.new ], [ %niter521.next.1, %.preheader154 ]
  %i.gy = trunc nuw nsw i64 %indvars.iv325 to i32
  %i.gz = mul i32 %i.gv, %i.gy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 3
  %scevgep321 = getelementptr i8, ptr %i.h, i64 %i.hb
  %i.hc = trunc i64 %indvars.iv325 to i32
  %i.hd = sub i32 %i.gw, %i.hc
  %i.he = zext i32 %i.hd to i64
  %i.hf = shl nuw nsw i64 %i.he, 3
  %i.hg = add nuw nsw i64 %i.hf, 8
  %i.hh = shl nsw i64 %.8203, 3
  %scevgep322 = getelementptr i8, ptr %i.m, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep321, ptr noundef nonnull align 8 dereferenceable(1) %scevgep322, i64 range(i64 0, 17179869177) %i.hg, i1 false), !tbaa !10
  %i.hi = zext i32 %indvars.iv329 to i64
  %i.hj = add nsw i64 %.8203, 1
  %i.hk = add nsw i64 %i.hj, %i.hi                ; 2 uses
  %indvars.iv.next326 = or disjoint i64 %indvars.iv325, 1 ; 2 uses
  %indvars.iv.next330 = add i32 %indvars.iv329, -1
  %i.hl = trunc nuw nsw i64 %indvars.iv.next326 to i32
  %i.hm = mul i32 %i.gv, %i.hl
  %i.hn = sext i32 %i.hm to i64
  %i.ho = shl nsw i64 %i.hn, 3
  %scevgep321.1 = getelementptr i8, ptr %i.h, i64 %i.ho
  %i.hp = trunc i64 %indvars.iv.next326 to i32
  %i.hq = sub i32 %i.gw, %i.hp
  %i.hr = zext i32 %i.hq to i64
  %i.hs = shl nuw nsw i64 %i.hr, 3
  %i.ht = add nuw nsw i64 %i.hs, 8
  %i.hu = shl nsw i64 %i.hk, 3
  %scevgep322.1 = getelementptr i8, ptr %i.m, i64 %i.hu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep321.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep322.1, i64 range(i64 0, 17179869177) %i.ht, i1 false), !tbaa !10
  %i.hv = zext i32 %indvars.iv.next330 to i64
  %i.hw = add nsw i64 %i.hk, 1
  %i.hx = add nsw i64 %i.hw, %i.hv                ; 2 uses
  %indvars.iv.next326.1 = add nuw nsw i64 %indvars.iv325, 2 ; 2 uses
  %indvars.iv.next330.1 = add i32 %indvars.iv329, -2
  %niter521.next.1 = add i64 %niter521, 2         ; 2 uses
  %niter521.ncmp.1 = icmp eq i64 %niter521.next.1, %unroll_iter520
  br i1 %niter521.ncmp.1, label %.preheader.preheader.unr-lcssa, label %.preheader154, !llvm.loop !212

.preheader.preheader.unr-lcssa:                   ; preds = %.preheader154
  %lcmp.mod518.not = icmp eq i64 %xtraiter516, 0
  br i1 %lcmp.mod518.not, label %.preheader.preheader, label %.preheader154.epil.preheader

.preheader154.epil.preheader:                     ; preds = %.preheader.preheader.unr-lcssa, %.preheader154.preheader
  %indvars.iv325.epil.init = phi i64 [ 0, %.preheader154.preheader ], [ %indvars.iv.next326.1, %.preheader.preheader.unr-lcssa ] ; 2 uses
  %.8203.epil.init = phi i64 [ 0, %.preheader154.preheader ], [ %i.hx, %.preheader.preheader.unr-lcssa ]
  %lcmp.mod519 = trunc i32 %i.gs to i1
  call void @llvm.assume(i1 %lcmp.mod519)
  %i.hy = trunc nuw nsw i64 %indvars.iv325.epil.init to i32
  %i.hz = mul i32 %i.gv, %i.hy
  %i.ia = sext i32 %i.hz to i64
  %i.ib = shl nsw i64 %i.ia, 3
  %scevgep321.epil = getelementptr i8, ptr %i.h, i64 %i.ib
  %i.ic = trunc i64 %indvars.iv325.epil.init to i32
  %i.id = sub i32 %i.gw, %i.ic
  %i.ie = zext i32 %i.id to i64
  %i.if = shl nuw nsw i64 %i.ie, 3
  %i.ig = add nuw nsw i64 %i.if, 8
  %i.ih = shl nsw i64 %.8203.epil.init, 3
  %scevgep322.epil = getelementptr i8, ptr %i.m, i64 %i.ih
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep321.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep322.epil, i64 range(i64 0, 17179869177) %i.ig, i1 false), !tbaa !10
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.unr-lcssa, %.preheader154.epil.preheader
  %wide.trip.count357 = zext nneg i32 %i.gs to i64
  %ident.check452.not = icmp eq i32 %i.d, 1
  br label %iter.check468

iter.check468:                                    ; preds = %.preheader.preheader, %.loopexit482
  %indvars.iv352 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next353, %.loopexit482 ] ; 3 uses
  %indvars.iv350 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next351, %.loopexit482 ] ; 10 uses
  %.10208 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next340.lcssa, %.loopexit482 ] ; 5 uses
  %invariant.gep372 = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv352 ; 11 uses
  %min.iters.check453 = icmp samesign ugt i64 %indvars.iv350, 3
  %or.cond487 = and i1 %min.iters.check453, %ident.check452.not
  br i1 %or.cond487, label %vector.main.loop.iter.check454, label %vec.epilog.scalar.ph469.preheader

vector.main.loop.iter.check454:                   ; preds = %iter.check468
  %min.iters.check455 = icmp samesign ult i64 %indvars.iv350, 16
  br i1 %min.iters.check455, label %vec.epilog.ph472, label %vector.ph456

vector.ph456:                                     ; preds = %vector.main.loop.iter.check454
  %i.ii = and i64 %indvars.iv350, 12
  %n.vec457 = and i64 %indvars.iv350, 9223372036854775792 ; 5 uses
  %i.ij = add i64 %.10208, %n.vec457              ; 2 uses
  %i.ik = getelementptr [8 x i8], ptr %8, i64 %.10208
  br label %vector.body458

vector.body458:                                   ; preds = %vector.ph456, %vector.body458
  %index459 = phi i64 [ 0, %vector.ph456 ], [ %index.next464, %vector.body458 ] ; 3 uses
  %i.il = getelementptr [8 x i8], ptr %invariant.gep372, i64 %index459 ; 4 uses
  %i.im = getelementptr i8, ptr %i.il, i64 32
  %i.in = getelementptr i8, ptr %i.il, i64 64
  %i.io = getelementptr i8, ptr %i.il, i64 96
  %wide.load460 = load <4 x double>, ptr %i.il, align 8, !tbaa !10
  %wide.load461 = load <4 x double>, ptr %i.im, align 8, !tbaa !10
  %wide.load462 = load <4 x double>, ptr %i.in, align 8, !tbaa !10
  %wide.load463 = load <4 x double>, ptr %i.io, align 8, !tbaa !10
  %i.ip = getelementptr [8 x i8], ptr %i.ik, i64 %index459 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 64
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 96
  store <4 x double> %wide.load460, ptr %i.ip, align 8, !tbaa !10
  store <4 x double> %wide.load461, ptr %i.iq, align 8, !tbaa !10
  store <4 x double> %wide.load462, ptr %i.ir, align 8, !tbaa !10
  store <4 x double> %wide.load463, ptr %i.is, align 8, !tbaa !10
  %index.next464 = add nuw i64 %index459, 16      ; 2 uses
  %i.it = icmp eq i64 %index.next464, %n.vec457
  br i1 %i.it, label %middle.block465, label %vector.body458, !llvm.loop !213

middle.block465:                                  ; preds = %vector.body458
  %cmp.n466 = icmp eq i64 %indvars.iv350, %n.vec457
  br i1 %cmp.n466, label %.loopexit482, label %vec.epilog.iter.check470

vec.epilog.iter.check470:                         ; preds = %middle.block465
  %min.epilog.iters.check471 = icmp eq i64 %i.ii, 0
  br i1 %min.epilog.iters.check471, label %vec.epilog.scalar.ph469.preheader, label %vec.epilog.ph472, !prof !14

vec.epilog.ph472:                                 ; preds = %vector.main.loop.iter.check454, %vec.epilog.iter.check470
  %vec.epilog.resume.val467 = phi i64 [ %n.vec457, %vec.epilog.iter.check470 ], [ 0, %vector.main.loop.iter.check454 ]
  %n.vec473 = and i64 %indvars.iv350, 9223372036854775804 ; 4 uses
  %i.iu = add i64 %.10208, %n.vec473              ; 2 uses
  %i.iv = getelementptr [8 x i8], ptr %8, i64 %.10208
  br label %vec.epilog.vector.body474

vec.epilog.vector.body474:                        ; preds = %vec.epilog.vector.body474, %vec.epilog.ph472
  %index475 = phi i64 [ %vec.epilog.resume.val467, %vec.epilog.ph472 ], [ %index.next477, %vec.epilog.vector.body474 ] ; 3 uses
  %i.iw = getelementptr [8 x i8], ptr %invariant.gep372, i64 %index475
  %wide.load476 = load <4 x double>, ptr %i.iw, align 8, !tbaa !10
  %i.ix = getelementptr [8 x i8], ptr %i.iv, i64 %index475
  store <4 x double> %wide.load476, ptr %i.ix, align 8, !tbaa !10
  %index.next477 = add nuw i64 %index475, 4       ; 2 uses
  %i.iy = icmp eq i64 %index.next477, %n.vec473
  br i1 %i.iy, label %vec.epilog.middle.block478, label %vec.epilog.vector.body474, !llvm.loop !214

vec.epilog.middle.block478:                       ; preds = %vec.epilog.vector.body474
  %cmp.n479 = icmp eq i64 %indvars.iv350, %n.vec473
  br i1 %cmp.n479, label %.loopexit482, label %vec.epilog.scalar.ph469.preheader

vec.epilog.scalar.ph469.preheader:                ; preds = %iter.check468, %vec.epilog.iter.check470, %vec.epilog.middle.block478
  %indvars.iv341.ph = phi i64 [ 0, %iter.check468 ], [ %n.vec457, %vec.epilog.iter.check470 ], [ %n.vec473, %vec.epilog.middle.block478 ] ; 4 uses
  %indvars.iv339.ph = phi i64 [ %.10208, %iter.check468 ], [ %i.ij, %vec.epilog.iter.check470 ], [ %i.iu, %vec.epilog.middle.block478 ] ; 2 uses
  %i.iz = sub nsw i64 %indvars.iv350, %indvars.iv341.ph
  %i.ja = sub nsw i64 %indvars.iv352, %indvars.iv341.ph
  %xtraiter522 = and i64 %i.iz, 7                 ; 2 uses
  %lcmp.mod523.not = icmp eq i64 %xtraiter522, 0
  br i1 %lcmp.mod523.not, label %vec.epilog.scalar.ph469.prol.loopexit, label %vec.epilog.scalar.ph469.prol

vec.epilog.scalar.ph469.prol:                     ; preds = %vec.epilog.scalar.ph469.preheader, %vec.epilog.scalar.ph469.prol
  %indvars.iv341.prol = phi i64 [ %indvars.iv.next342.prol, %vec.epilog.scalar.ph469.prol ], [ %indvars.iv341.ph, %vec.epilog.scalar.ph469.preheader ] ; 2 uses
  %indvars.iv339.prol = phi i64 [ %indvars.iv.next340.prol, %vec.epilog.scalar.ph469.prol ], [ %indvars.iv339.ph, %vec.epilog.scalar.ph469.preheader ] ; 2 uses
  %prol.iter524 = phi i64 [ %prol.iter524.next, %vec.epilog.scalar.ph469.prol ], [ 0, %vec.epilog.scalar.ph469.preheader ]
  %i.jb = mul nsw i64 %indvars.iv341.prol, %i.e
  %gep373.prol = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.jb
  %i.jc = load double, ptr %gep373.prol, align 8, !tbaa !10
  %i.jd = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv339.prol
  store double %i.jc, ptr %i.jd, align 8, !tbaa !10
  %indvars.iv.next342.prol = add nuw nsw i64 %indvars.iv341.prol, 1 ; 2 uses
  %indvars.iv.next340.prol = add nsw i64 %indvars.iv339.prol, 1 ; 3 uses
  %prol.iter524.next = add i64 %prol.iter524, 1   ; 2 uses
  %prol.iter524.cmp.not = icmp eq i64 %prol.iter524.next, %xtraiter522
  br i1 %prol.iter524.cmp.not, label %vec.epilog.scalar.ph469.prol.loopexit, label %vec.epilog.scalar.ph469.prol, !llvm.loop !215

vec.epilog.scalar.ph469.prol.loopexit:            ; preds = %vec.epilog.scalar.ph469.prol, %vec.epilog.scalar.ph469.preheader
  %indvars.iv.next340.lcssa489.unr = phi i64 [ poison, %vec.epilog.scalar.ph469.preheader ], [ %indvars.iv.next340.prol, %vec.epilog.scalar.ph469.prol ]
  %indvars.iv341.unr = phi i64 [ %indvars.iv341.ph, %vec.epilog.scalar.ph469.preheader ], [ %indvars.iv.next342.prol, %vec.epilog.scalar.ph469.prol ]
  %indvars.iv339.unr = phi i64 [ %indvars.iv339.ph, %vec.epilog.scalar.ph469.preheader ], [ %indvars.iv.next340.prol, %vec.epilog.scalar.ph469.prol ]
  %i.je = icmp ult i64 %i.ja, 7
  br i1 %i.je, label %.loopexit482, label %vec.epilog.scalar.ph469

vec.epilog.scalar.ph469:                          ; preds = %vec.epilog.scalar.ph469.prol.loopexit, %vec.epilog.scalar.ph469
  %indvars.iv341 = phi i64 [ %indvars.iv.next342.7, %vec.epilog.scalar.ph469 ], [ %indvars.iv341.unr, %vec.epilog.scalar.ph469.prol.loopexit ] ; 9 uses
  %indvars.iv339 = phi i64 [ %indvars.iv.next340.7, %vec.epilog.scalar.ph469 ], [ %indvars.iv339.unr, %vec.epilog.scalar.ph469.prol.loopexit ] ; 9 uses
  %i.jf = mul nsw i64 %indvars.iv341, %i.e
  %gep373 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.jf
  %i.jg = load double, ptr %gep373, align 8, !tbaa !10
  %i.jh = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv339
  store double %i.jg, ptr %i.jh, align 8, !tbaa !10
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1
  %i.ji = mul nsw i64 %indvars.iv.next342, %i.e
  %gep373.1 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.ji
  %i.jj = load double, ptr %gep373.1, align 8, !tbaa !10
  %i.jk = getelementptr [8 x i8], ptr %8, i64 %indvars.iv339
  %i.jl = getelementptr i8, ptr %i.jk, i64 8
  store double %i.jj, ptr %i.jl, align 8, !tbaa !10
  %indvars.iv.next342.1 = add nuw nsw i64 %indvars.iv341, 2
  %i.jm = mul nsw i64 %indvars.iv.next342.1, %i.e
  %gep373.2 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.jm
  %i.jn = load double, ptr %gep373.2, align 8, !tbaa !10
  %i.jo = getelementptr [8 x i8], ptr %8, i64 %indvars.iv339
  %i.jp = getelementptr i8, ptr %i.jo, i64 16
  store double %i.jn, ptr %i.jp, align 8, !tbaa !10
  %indvars.iv.next342.2 = add nuw nsw i64 %indvars.iv341, 3
  %i.jq = mul nsw i64 %indvars.iv.next342.2, %i.e
  %gep373.3 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.jq
  %i.jr = load double, ptr %gep373.3, align 8, !tbaa !10
  %i.js = getelementptr [8 x i8], ptr %8, i64 %indvars.iv339
  %i.jt = getelementptr i8, ptr %i.js, i64 24
  store double %i.jr, ptr %i.jt, align 8, !tbaa !10
  %indvars.iv.next342.3 = add nuw nsw i64 %indvars.iv341, 4
  %i.ju = mul nsw i64 %indvars.iv.next342.3, %i.e
  %gep373.4 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.ju
  %i.jv = load double, ptr %gep373.4, align 8, !tbaa !10
  %i.jw = getelementptr [8 x i8], ptr %8, i64 %indvars.iv339
  %i.jx = getelementptr i8, ptr %i.jw, i64 32
  store double %i.jv, ptr %i.jx, align 8, !tbaa !10
  %indvars.iv.next342.4 = add nuw nsw i64 %indvars.iv341, 5
  %i.jy = mul nsw i64 %indvars.iv.next342.4, %i.e
  %gep373.5 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.jy
  %i.jz = load double, ptr %gep373.5, align 8, !tbaa !10
  %i.ka = getelementptr [8 x i8], ptr %8, i64 %indvars.iv339
  %i.kb = getelementptr i8, ptr %i.ka, i64 40
  store double %i.jz, ptr %i.kb, align 8, !tbaa !10
  %indvars.iv.next342.5 = add nuw nsw i64 %indvars.iv341, 6
  %i.kc = mul nsw i64 %indvars.iv.next342.5, %i.e
  %gep373.6 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.kc
  %i.kd = load double, ptr %gep373.6, align 8, !tbaa !10
  %i.ke = getelementptr [8 x i8], ptr %8, i64 %indvars.iv339
  %i.kf = getelementptr i8, ptr %i.ke, i64 48
  store double %i.kd, ptr %i.kf, align 8, !tbaa !10
  %indvars.iv.next342.6 = add nuw nsw i64 %indvars.iv341, 7
  %i.kg = mul nsw i64 %indvars.iv.next342.6, %i.e
  %gep373.7 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %i.kg
  %i.kh = load double, ptr %gep373.7, align 8, !tbaa !10
  %i.ki = getelementptr [8 x i8], ptr %8, i64 %indvars.iv339
  %i.kj = getelementptr i8, ptr %i.ki, i64 56
  store double %i.kh, ptr %i.kj, align 8, !tbaa !10
  %indvars.iv.next342.7 = add nuw nsw i64 %indvars.iv341, 8 ; 2 uses
  %indvars.iv.next340.7 = add nsw i64 %indvars.iv339, 8 ; 2 uses
  %exitcond349.not.7 = icmp eq i64 %indvars.iv.next342.7, %indvars.iv350
  br i1 %exitcond349.not.7, label %.loopexit482, label %vec.epilog.scalar.ph469, !llvm.loop !216

.loopexit482:                                     ; preds = %vec.epilog.scalar.ph469.prol.loopexit, %vec.epilog.scalar.ph469, %vec.epilog.middle.block478, %middle.block465
  %indvars.iv.next340.lcssa = phi i64 [ %i.iu, %vec.epilog.middle.block478 ], [ %i.ij, %middle.block465 ], [ %indvars.iv.next340.lcssa489.unr, %vec.epilog.scalar.ph469.prol.loopexit ], [ %indvars.iv.next340.7, %vec.epilog.scalar.ph469 ]
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 2 uses
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1
  %exitcond358.not = icmp eq i64 %indvars.iv.next353, %wide.trip.count357
  br i1 %exitcond358.not, label %.loopexit, label %iter.check468, !llvm.loop !217

.preheader159:                                    ; preds = %.preheader159, %.preheader159.preheader.new
  %indvars.iv293 = phi i64 [ 1, %.preheader159.preheader.new ], [ %indvars.iv.next294.3, %.preheader159 ] ; 5 uses
  %indvar285 = phi i64 [ 0, %.preheader159.preheader.new ], [ %indvar.next286.3, %.preheader159 ] ; 6 uses
  %.12194 = phi i64 [ 0, %.preheader159.preheader.new ], [ %i.ld, %.preheader159 ] ; 2 uses
  %niter512 = phi i64 [ 0, %.preheader159.preheader.new ], [ %niter512.next.3, %.preheader159 ]
  %i.kk = mul i64 %i.f, %indvar285
  %scevgep287 = getelementptr i8, ptr %i.h, i64 %i.kk
  %i.kl = shl nuw nsw i64 %indvar285, 3
  %i.km = or disjoint i64 %i.kl, 8
  %i.kn = shl nsw i64 %.12194, 3
  %scevgep288 = getelementptr i8, ptr %i.m, i64 %i.kn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep287, ptr noundef nonnull align 8 dereferenceable(1) %scevgep288, i64 range(i64 0, 17179869177) %i.km, i1 false), !tbaa !10
  %i.ko = add i64 %indvars.iv293, %.12194         ; 2 uses
  %indvar.next286 = or disjoint i64 %indvar285, 1 ; 2 uses
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1
  %i.kp = mul i64 %i.f, %indvar.next286
  %scevgep287.1 = getelementptr i8, ptr %i.h, i64 %i.kp
  %i.kq = shl nuw nsw i64 %indvar.next286, 3
  %i.kr = add nuw nsw i64 %i.kq, 8
  %i.ks = shl nsw i64 %i.ko, 3
  %scevgep288.1 = getelementptr i8, ptr %i.m, i64 %i.ks
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep287.1, ptr noundef nonnull align 8 dereferenceable(1) %scevgep288.1, i64 range(i64 0, 17179869177) %i.kr, i1 false), !tbaa !10
  %i.kt = add i64 %indvars.iv.next294, %i.ko      ; 2 uses
  %indvar.next286.1 = or disjoint i64 %indvar285, 2 ; 2 uses
  %indvars.iv.next294.1 = add nuw nsw i64 %indvars.iv293, 2
  %i.ku = mul i64 %i.f, %indvar.next286.1
  %scevgep287.2 = getelementptr i8, ptr %i.h, i64 %i.ku
  %i.kv = shl nuw nsw i64 %indvar.next286.1, 3
  %i.kw = or disjoint i64 %i.kv, 8
  %i.kx = shl nsw i64 %i.kt, 3
  %scevgep288.2 = getelementptr i8, ptr %i.m, i64 %i.kx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep287.2, ptr noundef nonnull align 8 dereferenceable(1) %scevgep288.2, i64 range(i64 0, 17179869177) %i.kw, i1 false), !tbaa !10
  %i.ky = add i64 %indvars.iv.next294.1, %i.kt    ; 2 uses
  %indvar.next286.2 = or disjoint i64 %indvar285, 3 ; 2 uses
  %indvars.iv.next294.2 = add nuw nsw i64 %indvars.iv293, 3
  %i.kz = mul i64 %i.f, %indvar.next286.2
  %scevgep287.3 = getelementptr i8, ptr %i.h, i64 %i.kz
  %i.la = shl nuw nsw i64 %indvar.next286.2, 3
  %i.lb = add nuw nsw i64 %i.la, 8
  %i.lc = shl nsw i64 %i.ky, 3
  %scevgep288.3 = getelementptr i8, ptr %i.m, i64 %i.lc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep287.3, ptr noundef nonnull align 8 dereferenceable(1) %scevgep288.3, i64 range(i64 0, 17179869177) %i.lb, i1 false), !tbaa !10
  %i.ld = add i64 %indvars.iv.next294.2, %i.ky    ; 2 uses
  %indvar.next286.3 = add nuw nsw i64 %indvar285, 4 ; 2 uses
  %indvars.iv.next294.3 = add nuw nsw i64 %indvars.iv293, 4 ; 2 uses
  %niter512.next.3 = add i64 %niter512, 4         ; 2 uses
  %niter512.ncmp.3 = icmp eq i64 %niter512.next.3, %unroll_iter511
  br i1 %niter512.ncmp.3, label %.preheader156.preheader.unr-lcssa, label %.preheader159, !llvm.loop !218

.preheader156.preheader.unr-lcssa:                ; preds = %.preheader159
  %lcmp.mod509.not = icmp eq i64 %xtraiter507, 0
  br i1 %lcmp.mod509.not, label %.preheader156.preheader, label %.preheader159.epil.preheader

.preheader159.epil.preheader:                     ; preds = %.preheader156.preheader.unr-lcssa, %.preheader159.preheader
  %indvars.iv293.epil.init = phi i64 [ 1, %.preheader159.preheader ], [ %indvars.iv.next294.3, %.preheader156.preheader.unr-lcssa ]
  %indvar285.epil.init = phi i64 [ 0, %.preheader159.preheader ], [ %indvar.next286.3, %.preheader156.preheader.unr-lcssa ]
  %.12194.epil.init = phi i64 [ 0, %.preheader159.preheader ], [ %i.ld, %.preheader156.preheader.unr-lcssa ]
  %lcmp.mod510 = icmp ne i64 %xtraiter507, 0
  call void @llvm.assume(i1 %lcmp.mod510)
  br label %.preheader159.epil

.preheader159.epil:                               ; preds = %.preheader159.epil, %.preheader159.epil.preheader
  %indvars.iv293.epil = phi i64 [ %indvars.iv293.epil.init, %.preheader159.epil.preheader ], [ %indvars.iv.next294.epil, %.preheader159.epil ] ; 2 uses
  %indvar285.epil = phi i64 [ %indvar285.epil.init, %.preheader159.epil.preheader ], [ %indvar.next286.epil, %.preheader159.epil ] ; 3 uses
  %.12194.epil = phi i64 [ %.12194.epil.init, %.preheader159.epil.preheader ], [ %i.li, %.preheader159.epil ] ; 2 uses
  %epil.iter508 = phi i64 [ 0, %.preheader159.epil.preheader ], [ %epil.iter508.next, %.preheader159.epil ]
  %i.le = mul i64 %i.f, %indvar285.epil
  %scevgep287.epil = getelementptr i8, ptr %i.h, i64 %i.le
  %i.lf = shl nuw nsw i64 %indvar285.epil, 3
  %i.lg = add nuw nsw i64 %i.lf, 8
  %i.lh = shl nsw i64 %.12194.epil, 3
  %scevgep288.epil = getelementptr i8, ptr %i.m, i64 %i.lh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep287.epil, ptr noundef nonnull align 8 dereferenceable(1) %scevgep288.epil, i64 range(i64 0, 17179869177) %i.lg, i1 false), !tbaa !10
  %i.li = add i64 %indvars.iv293.epil, %.12194.epil
  %indvar.next286.epil = add nuw nsw i64 %indvar285.epil, 1
  %indvars.iv.next294.epil = add nuw nsw i64 %indvars.iv293.epil, 1
  %epil.iter508.next = add i64 %epil.iter508, 1   ; 2 uses
  %epil.iter508.cmp.not = icmp eq i64 %epil.iter508.next, %xtraiter507
  br i1 %epil.iter508.cmp.not, label %.preheader156.preheader, label %.preheader159.epil, !llvm.loop !219

.preheader156.preheader:                          ; preds = %.preheader159.epil, %.preheader156.preheader.unr-lcssa
  %wide.trip.count319 = zext nneg i32 %i.gs to i64 ; 2 uses
  %ident.check420.not = icmp eq i32 %i.d, 1
  br label %iter.check437

iter.check437:                                    ; preds = %.preheader156.preheader, %.loopexit483
  %indvars.iv309 = phi i64 [ 0, %.preheader156.preheader ], [ %indvars.iv.next310, %.loopexit483 ] ; 8 uses
  %.14199 = phi i64 [ 0, %.preheader156.preheader ], [ %indvars.iv.next308.lcssa, %.loopexit483 ] ; 5 uses
  %i.lj = sub nsw i64 %wide.trip.count305, %indvars.iv309 ; 7 uses
  %invariant.gep370 = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv309 ; 11 uses
  %min.iters.check421 = icmp ugt i64 %i.lj, 3
  %or.cond488 = and i1 %min.iters.check421, %ident.check420.not
  br i1 %or.cond488, label %vector.main.loop.iter.check422, label %vec.epilog.scalar.ph438.preheader

vector.main.loop.iter.check422:                   ; preds = %iter.check437
  %min.iters.check423 = icmp ult i64 %i.lj, 16
  br i1 %min.iters.check423, label %vec.epilog.ph441, label %vector.ph424

vector.ph424:                                     ; preds = %vector.main.loop.iter.check422
  %i.lk = and i64 %i.lj, 12
  %n.vec425 = and i64 %i.lj, -16                  ; 5 uses
  %i.ll = add i64 %indvars.iv309, %n.vec425
  %i.lm = add i64 %.14199, %n.vec425              ; 2 uses
  %i.ln = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv309
  %i.lo = getelementptr [8 x i8], ptr %8, i64 %.14199
  br label %vector.body426

vector.body426:                                   ; preds = %vector.ph424, %vector.body426
  %index427 = phi i64 [ 0, %vector.ph424 ], [ %index.next432, %vector.body426 ] ; 3 uses
  %i.lp = getelementptr [8 x i8], ptr %i.ln, i64 %index427 ; 4 uses
  %i.lq = getelementptr i8, ptr %i.lp, i64 32
  %i.lr = getelementptr i8, ptr %i.lp, i64 64
  %i.ls = getelementptr i8, ptr %i.lp, i64 96
  %wide.load428 = load <4 x double>, ptr %i.lp, align 8, !tbaa !10
  %wide.load429 = load <4 x double>, ptr %i.lq, align 8, !tbaa !10
  %wide.load430 = load <4 x double>, ptr %i.lr, align 8, !tbaa !10
  %wide.load431 = load <4 x double>, ptr %i.ls, align 8, !tbaa !10
  %i.lt = getelementptr [8 x i8], ptr %i.lo, i64 %index427 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 96
  store <4 x double> %wide.load428, ptr %i.lt, align 8, !tbaa !10
  store <4 x double> %wide.load429, ptr %i.lu, align 8, !tbaa !10
  store <4 x double> %wide.load430, ptr %i.lv, align 8, !tbaa !10
  store <4 x double> %wide.load431, ptr %i.lw, align 8, !tbaa !10
  %index.next432 = add nuw i64 %index427, 16      ; 2 uses
  %i.lx = icmp eq i64 %index.next432, %n.vec425
  br i1 %i.lx, label %middle.block433, label %vector.body426, !llvm.loop !220

middle.block433:                                  ; preds = %vector.body426
  %cmp.n434 = icmp eq i64 %i.lj, %n.vec425
  br i1 %cmp.n434, label %.loopexit483, label %vec.epilog.iter.check439

vec.epilog.iter.check439:                         ; preds = %middle.block433
  %min.epilog.iters.check440 = icmp eq i64 %i.lk, 0
  br i1 %min.epilog.iters.check440, label %vec.epilog.scalar.ph438.preheader, label %vec.epilog.ph441, !prof !14

vec.epilog.ph441:                                 ; preds = %vector.main.loop.iter.check422, %vec.epilog.iter.check439
  %vec.epilog.resume.val435 = phi i64 [ %n.vec425, %vec.epilog.iter.check439 ], [ 0, %vector.main.loop.iter.check422 ]
  %n.vec442 = and i64 %i.lj, -4                   ; 4 uses
  %i.ly = add i64 %indvars.iv309, %n.vec442
  %i.lz = add i64 %.14199, %n.vec442              ; 2 uses
  %i.ma = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv309
  %i.mb = getelementptr [8 x i8], ptr %8, i64 %.14199
  br label %vec.epilog.vector.body443

vec.epilog.vector.body443:                        ; preds = %vec.epilog.vector.body443, %vec.epilog.ph441
  %index444 = phi i64 [ %vec.epilog.resume.val435, %vec.epilog.ph441 ], [ %index.next446, %vec.epilog.vector.body443 ] ; 3 uses
  %i.mc = getelementptr [8 x i8], ptr %i.ma, i64 %index444
  %wide.load445 = load <4 x double>, ptr %i.mc, align 8, !tbaa !10
  %i.md = getelementptr [8 x i8], ptr %i.mb, i64 %index444
  store <4 x double> %wide.load445, ptr %i.md, align 8, !tbaa !10
  %index.next446 = add nuw i64 %index444, 4       ; 2 uses
  %i.me = icmp eq i64 %index.next446, %n.vec442
  br i1 %i.me, label %vec.epilog.middle.block447, label %vec.epilog.vector.body443, !llvm.loop !221

vec.epilog.middle.block447:                       ; preds = %vec.epilog.vector.body443
  %cmp.n448 = icmp eq i64 %i.lj, %n.vec442
  br i1 %cmp.n448, label %.loopexit483, label %vec.epilog.scalar.ph438.preheader

vec.epilog.scalar.ph438.preheader:                ; preds = %iter.check437, %vec.epilog.iter.check439, %vec.epilog.middle.block447
  %indvars.iv311.ph = phi i64 [ %indvars.iv309, %iter.check437 ], [ %i.ll, %vec.epilog.iter.check439 ], [ %i.ly, %vec.epilog.middle.block447 ] ; 4 uses
  %indvars.iv307.ph = phi i64 [ %.14199, %iter.check437 ], [ %i.lm, %vec.epilog.iter.check439 ], [ %i.lz, %vec.epilog.middle.block447 ] ; 2 uses
  %i.mf = sub i64 %wide.trip.count305, %indvars.iv311.ph
  %xtraiter513 = and i64 %i.mf, 7                 ; 2 uses
  %lcmp.mod514.not = icmp eq i64 %xtraiter513, 0
  br i1 %lcmp.mod514.not, label %vec.epilog.scalar.ph438.prol.loopexit, label %vec.epilog.scalar.ph438.prol

vec.epilog.scalar.ph438.prol:                     ; preds = %vec.epilog.scalar.ph438.preheader, %vec.epilog.scalar.ph438.prol
  %indvars.iv311.prol = phi i64 [ %indvars.iv.next312.prol, %vec.epilog.scalar.ph438.prol ], [ %indvars.iv311.ph, %vec.epilog.scalar.ph438.preheader ] ; 2 uses
  %indvars.iv307.prol = phi i64 [ %indvars.iv.next308.prol, %vec.epilog.scalar.ph438.prol ], [ %indvars.iv307.ph, %vec.epilog.scalar.ph438.preheader ] ; 2 uses
  %prol.iter515 = phi i64 [ %prol.iter515.next, %vec.epilog.scalar.ph438.prol ], [ 0, %vec.epilog.scalar.ph438.preheader ]
  %i.mg = mul nsw i64 %indvars.iv311.prol, %i.e
  %gep371.prol = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.mg
  %i.mh = load double, ptr %gep371.prol, align 8, !tbaa !10
  %i.mi = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv307.prol
  store double %i.mh, ptr %i.mi, align 8, !tbaa !10
  %indvars.iv.next312.prol = add nuw nsw i64 %indvars.iv311.prol, 1 ; 2 uses
  %indvars.iv.next308.prol = add nsw i64 %indvars.iv307.prol, 1 ; 3 uses
  %prol.iter515.next = add i64 %prol.iter515, 1   ; 2 uses
  %prol.iter515.cmp.not = icmp eq i64 %prol.iter515.next, %xtraiter513
  br i1 %prol.iter515.cmp.not, label %vec.epilog.scalar.ph438.prol.loopexit, label %vec.epilog.scalar.ph438.prol, !llvm.loop !222

vec.epilog.scalar.ph438.prol.loopexit:            ; preds = %vec.epilog.scalar.ph438.prol, %vec.epilog.scalar.ph438.preheader
  %indvars.iv.next308.lcssa491.unr = phi i64 [ poison, %vec.epilog.scalar.ph438.preheader ], [ %indvars.iv.next308.prol, %vec.epilog.scalar.ph438.prol ]
  %indvars.iv311.unr = phi i64 [ %indvars.iv311.ph, %vec.epilog.scalar.ph438.preheader ], [ %indvars.iv.next312.prol, %vec.epilog.scalar.ph438.prol ]
  %indvars.iv307.unr = phi i64 [ %indvars.iv307.ph, %vec.epilog.scalar.ph438.preheader ], [ %indvars.iv.next308.prol, %vec.epilog.scalar.ph438.prol ]
  %i.mj = sub i64 %indvars.iv311.ph, %wide.trip.count305
  %i.mk = icmp ugt i64 %i.mj, -8
  br i1 %i.mk, label %.loopexit483, label %vec.epilog.scalar.ph438

vec.epilog.scalar.ph438:                          ; preds = %vec.epilog.scalar.ph438.prol.loopexit, %vec.epilog.scalar.ph438
  %indvars.iv311 = phi i64 [ %indvars.iv.next312.7, %vec.epilog.scalar.ph438 ], [ %indvars.iv311.unr, %vec.epilog.scalar.ph438.prol.loopexit ] ; 9 uses
  %indvars.iv307 = phi i64 [ %indvars.iv.next308.7, %vec.epilog.scalar.ph438 ], [ %indvars.iv307.unr, %vec.epilog.scalar.ph438.prol.loopexit ] ; 9 uses
  %i.ml = mul nsw i64 %indvars.iv311, %i.e
  %gep371 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.ml
  %i.mm = load double, ptr %gep371, align 8, !tbaa !10
  %i.mn = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv307
  store double %i.mm, ptr %i.mn, align 8, !tbaa !10
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1
  %i.mo = mul nsw i64 %indvars.iv.next312, %i.e
  %gep371.1 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.mo
  %i.mp = load double, ptr %gep371.1, align 8, !tbaa !10
  %i.mq = getelementptr [8 x i8], ptr %8, i64 %indvars.iv307
  %i.mr = getelementptr i8, ptr %i.mq, i64 8
  store double %i.mp, ptr %i.mr, align 8, !tbaa !10
  %indvars.iv.next312.1 = add nuw nsw i64 %indvars.iv311, 2
  %i.ms = mul nsw i64 %indvars.iv.next312.1, %i.e
  %gep371.2 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.ms
  %i.mt = load double, ptr %gep371.2, align 8, !tbaa !10
  %i.mu = getelementptr [8 x i8], ptr %8, i64 %indvars.iv307
  %i.mv = getelementptr i8, ptr %i.mu, i64 16
  store double %i.mt, ptr %i.mv, align 8, !tbaa !10
  %indvars.iv.next312.2 = add nuw nsw i64 %indvars.iv311, 3
  %i.mw = mul nsw i64 %indvars.iv.next312.2, %i.e
  %gep371.3 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.mw
  %i.mx = load double, ptr %gep371.3, align 8, !tbaa !10
  %i.my = getelementptr [8 x i8], ptr %8, i64 %indvars.iv307
  %i.mz = getelementptr i8, ptr %i.my, i64 24
  store double %i.mx, ptr %i.mz, align 8, !tbaa !10
  %indvars.iv.next312.3 = add nuw nsw i64 %indvars.iv311, 4
  %i.na = mul nsw i64 %indvars.iv.next312.3, %i.e
  %gep371.4 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.na
  %i.nb = load double, ptr %gep371.4, align 8, !tbaa !10
  %i.nc = getelementptr [8 x i8], ptr %8, i64 %indvars.iv307
  %i.nd = getelementptr i8, ptr %i.nc, i64 32
  store double %i.nb, ptr %i.nd, align 8, !tbaa !10
  %indvars.iv.next312.4 = add nuw nsw i64 %indvars.iv311, 5
  %i.ne = mul nsw i64 %indvars.iv.next312.4, %i.e
  %gep371.5 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.ne
  %i.nf = load double, ptr %gep371.5, align 8, !tbaa !10
  %i.ng = getelementptr [8 x i8], ptr %8, i64 %indvars.iv307
  %i.nh = getelementptr i8, ptr %i.ng, i64 40
  store double %i.nf, ptr %i.nh, align 8, !tbaa !10
  %indvars.iv.next312.5 = add nuw nsw i64 %indvars.iv311, 6
  %i.ni = mul nsw i64 %indvars.iv.next312.5, %i.e
  %gep371.6 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.ni
  %i.nj = load double, ptr %gep371.6, align 8, !tbaa !10
  %i.nk = getelementptr [8 x i8], ptr %8, i64 %indvars.iv307
  %i.nl = getelementptr i8, ptr %i.nk, i64 48
  store double %i.nj, ptr %i.nl, align 8, !tbaa !10
  %indvars.iv.next312.6 = add nuw nsw i64 %indvars.iv311, 7
  %i.nm = mul nsw i64 %indvars.iv.next312.6, %i.e
  %gep371.7 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %i.nm
  %i.nn = load double, ptr %gep371.7, align 8, !tbaa !10
  %i.no = getelementptr [8 x i8], ptr %8, i64 %indvars.iv307
  %i.np = getelementptr i8, ptr %i.no, i64 56
  store double %i.nn, ptr %i.np, align 8, !tbaa !10
  %indvars.iv.next312.7 = add nuw nsw i64 %indvars.iv311, 8 ; 2 uses
  %indvars.iv.next308.7 = add nsw i64 %indvars.iv307, 8 ; 2 uses
  %exitcond317.not.7 = icmp eq i64 %indvars.iv.next312.7, %wide.trip.count319
  br i1 %exitcond317.not.7, label %.loopexit483, label %vec.epilog.scalar.ph438, !llvm.loop !223

.loopexit483:                                     ; preds = %vec.epilog.scalar.ph438.prol.loopexit, %vec.epilog.scalar.ph438, %vec.epilog.middle.block447, %middle.block433
  %indvars.iv.next308.lcssa = phi i64 [ %i.lz, %vec.epilog.middle.block447 ], [ %i.lm, %middle.block433 ], [ %indvars.iv.next308.lcssa491.unr, %vec.epilog.scalar.ph438.prol.loopexit ], [ %indvars.iv.next308.7, %vec.epilog.scalar.ph438 ]
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next310, %wide.trip.count319
  br i1 %exitcond320.not, label %.loopexit, label %iter.check437, !llvm.loop !224

.loopexit:                                        ; preds = %.loopexit483, %.loopexit482, %.preheader160, %.preheader155
  call void @free(ptr noundef %i.h) #7
  call void @free(ptr noundef %i.m) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.nq = load i32, ptr %i.a, align 4, !tbaa !8
  %i.nr = load i32, ptr %2, align 4, !tbaa !8
  %i.ns = load double, ptr %3, align 8, !tbaa !10
  %i.nt = load i32, ptr %5, align 4, !tbaa !8
  %i.nu = load i32, ptr %7, align 4, !tbaa !8
  call void @cblas_dspr2(i32 noundef 102, i32 noundef %i.nq, i32 noundef %i.nr, double noundef %i.ns, ptr noundef %4, i32 noundef %i.nt, ptr noundef %6, i32 noundef %i.nu, ptr noundef %8) #7
  br label %bb.d

end_hunk_1
