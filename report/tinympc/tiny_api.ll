Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll:bb.a
  %i.az = load ptr, ptr %2, align 8, !tbaa !182   ; 12 uses
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !183 ; 8 uses
  %i.bb = mul nsw i64 %i.ba, %.1133162            ; 4 uses
  %i.bc = or disjoint i64 %.1133162, 1
  %i.bd = mul nsw i64 %i.ba, %i.bc                ; 4 uses
  %i.be = or disjoint i64 %.1133162, 2
  %i.bf = mul nsw i64 %i.ba, %i.be                ; 4 uses
  %i.bg = or disjoint i64 %.1133162, 3
  %i.bh = mul nsw i64 %i.ba, %i.bg                ; 4 uses
  %i.bi = sub i64 %3, %.0128.lcssa                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bi, 68
  br i1 %min.iters.check, label %.loopexit.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader139.preheader
  %i.bj = xor i64 %.0128.lcssa, -1
  %i.bk = add i64 %3, %i.bj                       ; 2 uses
  %i.bl = shl i64 %.2.lcssa, 3                    ; 3 uses
  %scevgep231 = getelementptr i8, ptr %scevgep, i64 %i.bl ; 2 uses
  %mul.result = shl i64 %i.bk, 5                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.bk, 576460752303423487
  %i.bm = getelementptr i8, ptr %scevgep231, i64 %mul.result
  %i.bn = icmp ult ptr %i.bm, %scevgep231
  %scevgep233 = getelementptr i8, ptr %scevgep232, i64 %i.bl ; 2 uses
  %i.bo = getelementptr i8, ptr %scevgep233, i64 %mul.result
  %i.bp = icmp ult ptr %i.bo, %scevgep233
  %scevgep235 = getelementptr i8, ptr %scevgep234, i64 %i.bl ; 2 uses
  %i.bq = getelementptr i8, ptr %scevgep235, i64 %mul.result
  %i.br = icmp ult ptr %i.bq, %scevgep235
  %i.bs = or i1 %i.br, %mul.overflow
  %i.bt = or i1 %i.bp, %i.bn
  %i.bu = or i1 %i.bt, %i.bs
  br i1 %i.bu, label %.loopexit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bv = shl i64 %.2.lcssa, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %1, i64 %i.bv     ; 4 uses
  %i.bx = shl i64 %.0128.lcssa, 5
  %i.by = add i64 %i.j, %i.bv
  %i.bz = sub i64 %i.by, %i.bx
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz     ; 4 uses
  %i.cb = shl i64 %indvar, 5                      ; 4 uses
  %i.cc = or disjoint i64 %i.cb, 24
  %i.cd = mul i64 %i.ba, %i.cc                    ; 2 uses
  %i.ce = shl i64 %.0128.lcssa, 3                 ; 4 uses
  %i.cf = getelementptr i8, ptr %i.az, i64 %i.cd
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.ce
  %i.ch = getelementptr i8, ptr %i.az, i64 %i.cd
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.i
  %i.cj = or disjoint i64 %i.cb, 16
  %i.ck = mul i64 %i.ba, %i.cj                    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.az, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.ce
  %i.cn = getelementptr i8, ptr %i.az, i64 %i.ck
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.i
  %i.cp = or disjoint i64 %i.cb, 8
  %i.cq = mul i64 %i.ba, %i.cp                    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.az, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.ce
  %i.ct = getelementptr i8, ptr %i.az, i64 %i.cq
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.i
  %i.cv = mul i64 %i.ba, %i.cb                    ; 2 uses
  %i.cw = getelementptr i8, ptr %i.az, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.ce
  %i.cy = getelementptr i8, ptr %i.az, i64 %i.cv
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.i
  %bound0 = icmp ult ptr %i.bw, %i.ci
  %bound1 = icmp ult ptr %i.cg, %i.ca
  %found.conflict = and i1 %bound0, %bound1
  %bound0260 = icmp ult ptr %i.bw, %i.co
  %bound1261 = icmp ult ptr %i.cm, %i.ca
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx = or i1 %found.conflict, %found.conflict262
  %bound0263 = icmp ult ptr %i.bw, %i.cu
  %bound1264 = icmp ult ptr %i.cs, %i.ca
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx266 = or i1 %conflict.rdx, %found.conflict265
  %bound0267 = icmp ult ptr %i.bw, %i.cz
  %bound1268 = icmp ult ptr %i.cx, %i.ca
  %found.conflict269 = and i1 %bound0267, %bound1268
  %conflict.rdx270 = or i1 %conflict.rdx266, %found.conflict269
  br i1 %conflict.rdx270, label %.loopexit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, -2                      ; 4 uses
  %i.da = shl i64 %n.vec, 2
  %i.db = add i64 %.2.lcssa, %i.da                ; 2 uses
  %i.dc = add i64 %.0128.lcssa, %n.vec
  %i.dd = getelementptr [8 x i8], ptr %i.az, i64 %.0128.lcssa
  %i.de = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.df = getelementptr [8 x i8], ptr %i.dd, i64 %index ; 4 uses
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.bb
  %wide.load = load <2 x double>, ptr %i.dg, align 8, !tbaa !42, !alias.scope !781
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.bd
  %wide.load271 = load <2 x double>, ptr %i.dh, align 8, !tbaa !42, !alias.scope !782
  %i.di = getelementptr [8 x i8], ptr %i.df, i64 %i.bf
  %wide.load272 = load <2 x double>, ptr %i.di, align 8, !tbaa !42, !alias.scope !783
  %i.dj = getelementptr [8 x i8], ptr %i.df, i64 %i.bh
  %wide.load273 = load <2 x double>, ptr %i.dj, align 8, !tbaa !42, !alias.scope !784
  %.idx = shl i64 %index, 5
  %i.dk = getelementptr i8, ptr %i.de, i64 %.idx
  %i.dl = shufflevector <2 x double> %wide.load, <2 x double> %wide.load271, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dm = shufflevector <2 x double> %wide.load272, <2 x double> %wide.load273, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.dl, <4 x double> %i.dm, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.dk, align 8, !tbaa !42, !alias.scope !785, !noalias !786
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !767

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge160, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader139.preheader, %middle.block
  %.4159.ph = phi i64 [ %.2.lcssa, %vector.memcheck ], [ %.2.lcssa, %vector.scevcheck ], [ %.2.lcssa, %.preheader139.preheader ], [ %i.db, %middle.block ] ; 3 uses
  %.2130157.ph = phi i64 [ %.0128.lcssa, %vector.memcheck ], [ %.0128.lcssa, %vector.scevcheck ], [ %.0128.lcssa, %.preheader139.preheader ], [ %i.dc, %middle.block ] ; 5 uses
  %i.do = sub i64 %3, %.2130157.ph
  %.neg = add i64 %.2130157.ph, 1
  %xtraiter = and i64 %i.do, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.prol.loopexit, label %.loopexit.prol

.loopexit.prol:                                   ; preds = %.loopexit.preheader
  %i.dp = getelementptr [8 x i8], ptr %i.az, i64 %.2130157.ph ; 4 uses
  %i.dq = add nsw i64 %.4159.ph, 4                ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dp, i64 %i.bb
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !42
  %i.dt = getelementptr [8 x i8], ptr %i.dp, i64 %i.bd
  %i.du = load double, ptr %i.dt, align 8, !tbaa !42
  %i.dv = getelementptr [8 x i8], ptr %i.dp, i64 %i.bf
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !42
  %i.dx = getelementptr [8 x i8], ptr %i.dp, i64 %i.bh
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !42
  %i.dz = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.ph ; 4 uses
  store double %i.ds, ptr %i.dz, align 8, !tbaa !42
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  store double %i.du, ptr %i.ea, align 8, !tbaa !42
  %i.eb = getelementptr i8, ptr %i.dz, i64 16
  store double %i.dw, ptr %i.eb, align 8, !tbaa !42
  %i.ec = getelementptr i8, ptr %i.dz, i64 24
  store double %i.dy, ptr %i.ec, align 8, !tbaa !42
  %i.ed = add nuw nsw i64 %.2130157.ph, 1
  br label %.loopexit.prol.loopexit

.loopexit.prol.loopexit:                          ; preds = %.loopexit.prol, %.loopexit.preheader
  %.lcssa350.unr = phi i64 [ poison, %.loopexit.preheader ], [ %i.dq, %.loopexit.prol ]
  %.4159.unr = phi i64 [ %.4159.ph, %.loopexit.preheader ], [ %i.dq, %.loopexit.prol ]
  %.2130157.unr = phi i64 [ %.2130157.ph, %.loopexit.preheader ], [ %i.ed, %.loopexit.prol ]
  %i.ee = icmp eq i64 %3, %.neg
  br i1 %i.ee, label %._crit_edge160, label %.loopexit

.loopexit:                                        ; preds = %.loopexit.prol.loopexit, %.loopexit
  %.4159 = phi i64 [ %i.eu, %.loopexit ], [ %.4159.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %.2130157 = phi i64 [ %i.fi, %.loopexit ], [ %.2130157.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %i.ef = getelementptr [8 x i8], ptr %i.az, i64 %.2130157 ; 4 uses
  %i.eg = getelementptr [8 x i8], ptr %i.ef, i64 %i.bb
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !42
  %i.ei = getelementptr [8 x i8], ptr %i.ef, i64 %i.bd
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !42
  %i.ek = getelementptr [8 x i8], ptr %i.ef, i64 %i.bf
  %i.el = load double, ptr %i.ek, align 8, !tbaa !42
  %i.em = getelementptr [8 x i8], ptr %i.ef, i64 %i.bh
  %i.en = load double, ptr %i.em, align 8, !tbaa !42
  %i.eo = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  store double %i.eh, ptr %i.eo, align 8, !tbaa !42
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  store double %i.ej, ptr %i.ep, align 8, !tbaa !42
  %i.eq = getelementptr i8, ptr %i.eo, i64 16
  store double %i.el, ptr %i.eq, align 8, !tbaa !42
  %i.er = getelementptr i8, ptr %i.eo, i64 24
  store double %i.en, ptr %i.er, align 8, !tbaa !42
  %i.es = getelementptr [8 x i8], ptr %i.az, i64 %.2130157
  %i.et = getelementptr i8, ptr %i.es, i64 8      ; 4 uses
  %i.eu = add nsw i64 %.4159, 8                   ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %i.et, i64 %i.bb
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !42
  %i.ex = getelementptr [8 x i8], ptr %i.et, i64 %i.bd
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !42
  %i.ez = getelementptr [8 x i8], ptr %i.et, i64 %i.bf
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !42
  %i.fb = getelementptr [8 x i8], ptr %i.et, i64 %i.bh
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !42
  %i.fd = getelementptr [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 32
  store double %i.ew, ptr %i.fe, align 8, !tbaa !42
  %i.ff = getelementptr i8, ptr %i.fd, i64 40
  store double %i.ey, ptr %i.ff, align 8, !tbaa !42
  %i.fg = getelementptr i8, ptr %i.fd, i64 48
  store double %i.fa, ptr %i.fg, align 8, !tbaa !42
  %i.fh = getelementptr i8, ptr %i.fd, i64 56
  store double %i.fc, ptr %i.fh, align 8, !tbaa !42
  %i.fi = add nuw nsw i64 %.2130157, 2            ; 2 uses
  %exitcond190.not.1 = icmp eq i64 %i.fi, %3
  br i1 %exitcond190.not.1, label %._crit_edge160, label %.loopexit, !llvm.loop !768

._crit_edge160:                                   ; preds = %.loopexit.prol.loopexit, %.loopexit, %middle.block, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %i.db, %middle.block ], [ %.lcssa350.unr, %.loopexit.prol.loopexit ], [ %i.eu, %.loopexit ] ; 2 uses
  %i.fj = add i64 %.1133162, 4                    ; 3 uses
  %i.fk = icmp slt i64 %i.fj, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fk, label %.lr.ph166, label %._crit_edge167, !llvm.loop !769

._crit_edge167:                                   ; preds = %._crit_edge160, %bb.a
  %.1133.lcssa = phi i64 [ 0, %bb.a ], [ %i.fj, %._crit_edge160 ] ; 5 uses
  %.1.lcssa = phi i64 [ 0, %bb.a ], [ %.4.lcssa, %._crit_edge160 ] ; 2 uses
  %i.fl = sub i64 %4, %.1133.lcssa
  %i.fm = srem i64 %i.fl, 2
  %i.fn = sub i64 %4, %i.fm                       ; 2 uses
  %i.fo = icmp slt i64 %.1133.lcssa, %i.fn
  br i1 %i.fo, label %.lr.ph166.1.preheader, label %._crit_edge167.1

.lr.ph166.1.preheader:                            ; preds = %._crit_edge167
  %scevgep276 = getelementptr i8, ptr %1, i64 8
  %i.fp = shl i64 %.1133.lcssa, 3                 ; 2 uses
  %i.fq = shl i64 %3, 3                           ; 2 uses
  %i.fr = add i64 %i.fp, 8
  %i.fs = shl i64 %3, 4
  br label %.lr.ph166.1

.lr.ph166.1:                                      ; preds = %.lr.ph166.1.preheader, %._crit_edge160.1
  %indvar299 = phi i64 [ 0, %.lr.ph166.1.preheader ], [ %indvar.next300, %._crit_edge160.1 ] ; 2 uses
  %.1164.1 = phi i64 [ %.1.lcssa, %.lr.ph166.1.preheader ], [ %.4.lcssa.1, %._crit_edge160.1 ] ; 2 uses
  %.1133162.1 = phi i64 [ %.1133.lcssa, %.lr.ph166.1.preheader ], [ %i.jh, %._crit_edge160.1 ] ; 5 uses
  br i1 %i.d, label %.preheader140.us.preheader.1, label %.preheader141.1

.preheader140.us.preheader.1:                     ; preds = %.lr.ph166.1
  %i.ft = add nsw i64 %.1133162.1, 1
  br label %.preheader140.us.1

.preheader140.us.1:                               ; preds = %.preheader140.us.1, %.preheader140.us.preheader.1
  %.2146.us.1 = phi i64 [ %i.gh, %.preheader140.us.1 ], [ %.1164.1, %.preheader140.us.preheader.1 ] ; 2 uses
  %.0128145.us.1 = phi i64 [ %i.gi, %.preheader140.us.1 ], [ 0, %.preheader140.us.preheader.1 ] ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146.us.1 ; 2 uses
  %i.fv = load ptr, ptr %2, align 8, !tbaa !182
  %i.fw = load i64, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %i.fx = getelementptr [8 x i8], ptr %i.fv, i64 %.0128145.us.1 ; 2 uses
  %i.fy = mul nsw i64 %i.fw, %.1133162.1
  %i.fz = getelementptr [8 x i8], ptr %i.fx, i64 %i.fy
  %i.ga = load <2 x double>, ptr %i.fz, align 1, !tbaa !24 ; 2 uses
  %i.gb = mul nsw i64 %i.fw, %i.ft
  %i.gc = getelementptr [8 x i8], ptr %i.fx, i64 %i.gb
  %i.gd = load <2 x double>, ptr %i.gc, align 1, !tbaa !24 ; 2 uses
  %i.ge = shufflevector <2 x double> %i.ga, <2 x double> %i.gd, <2 x i32> <i32 1, i32 3>
  %i.gf = shufflevector <2 x double> %i.ga, <2 x double> %i.gd, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.gf, ptr %i.fu, align 16, !tbaa !24
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <2 x double> %i.ge, ptr %i.gg, align 16, !tbaa !24
  %i.gh = add nsw i64 %.2146.us.1, 4              ; 2 uses
  %i.gi = add nuw nsw i64 %.0128145.us.1, 2       ; 3 uses
  %i.gj = icmp slt i64 %i.gi, %i.c
  br i1 %i.gj, label %.preheader140.us.1, label %.preheader141.1, !llvm.loop !760

.preheader141.1:                                  ; preds = %.preheader140.us.1, %.lr.ph166.1
  %.0128.lcssa.1 = phi i64 [ 0, %.lr.ph166.1 ], [ %i.gi, %.preheader140.us.1 ] ; 10 uses
  %.2.lcssa.1 = phi i64 [ %.1164.1, %.lr.ph166.1 ], [ %i.gh, %.preheader140.us.1 ] ; 8 uses
  %i.gk = icmp slt i64 %.0128.lcssa.1, %3
  br i1 %i.gk, label %.preheader139.preheader.1, label %._crit_edge160.1

.preheader139.preheader.1:                        ; preds = %.preheader141.1
  %i.gl = load ptr, ptr %2, align 8, !tbaa !182   ; 8 uses
  %i.gm = load i64, ptr %i.e, align 8, !tbaa !183 ; 4 uses
  %i.gn = mul nsw i64 %i.gm, %.1133162.1          ; 4 uses
  %i.go = add nsw i64 %.1133162.1, 1
  %i.gp = mul nsw i64 %i.gm, %i.go                ; 4 uses
  %i.gq = sub i64 %3, %.0128.lcssa.1              ; 3 uses
  %min.iters.check302 = icmp ult i64 %i.gq, 42
  br i1 %min.iters.check302, label %.loopexit.1.preheader, label %vector.scevcheck275

vector.scevcheck275:                              ; preds = %.preheader139.preheader.1
  %i.gr = xor i64 %.0128.lcssa.1, -1
  %i.gs = add i64 %3, %i.gr                       ; 2 uses
  %i.gt = shl i64 %.2.lcssa.1, 3
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.gt ; 2 uses
  %mul.result279 = shl i64 %i.gs, 4
  %mul.overflow280 = icmp ugt i64 %i.gs, 1152921504606846975
  %i.gu = getelementptr i8, ptr %scevgep277, i64 %mul.result279
  %i.gv = icmp ult ptr %i.gu, %scevgep277
  %i.gw = or i1 %i.gv, %mul.overflow280
  br i1 %i.gw, label %.loopexit.1.preheader, label %vector.memcheck303

vector.memcheck303:                               ; preds = %vector.scevcheck275
  %i.gx = shl i64 %.2.lcssa.1, 3                  ; 2 uses
  %i.gy = getelementptr i8, ptr %1, i64 %i.gx     ; 2 uses
  %i.gz = shl i64 %.0128.lcssa.1, 4
  %i.ha = add i64 %i.fs, %i.gx
  %i.hb = sub i64 %i.ha, %i.gz
  %i.hc = getelementptr i8, ptr %1, i64 %i.hb     ; 2 uses
  %i.hd = shl i64 %indvar299, 4                   ; 2 uses
  %i.he = add i64 %i.fr, %i.hd
  %i.hf = mul i64 %i.gm, %i.he                    ; 2 uses
  %i.hg = shl i64 %.0128.lcssa.1, 3               ; 2 uses
  %i.hh = getelementptr i8, ptr %i.gl, i64 %i.hf
  %i.hi = getelementptr i8, ptr %i.hh, i64 %i.hg
  %i.hj = getelementptr i8, ptr %i.gl, i64 %i.hf
  %i.hk = getelementptr i8, ptr %i.hj, i64 %i.fq
  %i.hl = add i64 %i.fp, %i.hd
  %i.hm = mul i64 %i.gm, %i.hl                    ; 2 uses
  %i.hn = getelementptr i8, ptr %i.gl, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.hg
  %i.hp = getelementptr i8, ptr %i.gl, i64 %i.hm
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.fq
  %bound0304 = icmp ult ptr %i.gy, %i.hk
  %bound1305 = icmp ult ptr %i.hi, %i.hc
  %found.conflict306 = and i1 %bound0304, %bound1305
  %bound0307 = icmp ult ptr %i.gy, %i.hq
  %bound1308 = icmp ult ptr %i.ho, %i.hc
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %found.conflict306, %found.conflict309
  br i1 %conflict.rdx310, label %.loopexit.1.preheader, label %vector.ph311

vector.ph311:                                     ; preds = %vector.memcheck303
  %n.vec312 = and i64 %i.gq, -2                   ; 4 uses
  %i.hr = shl i64 %n.vec312, 1
  %i.hs = add i64 %.2.lcssa.1, %i.hr              ; 2 uses
  %i.ht = add i64 %.0128.lcssa.1, %n.vec312
  %i.hu = getelementptr [8 x i8], ptr %i.gl, i64 %.0128.lcssa.1
  %i.hv = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa.1
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph311
  %index314 = phi i64 [ 0, %vector.ph311 ], [ %index.next318, %vector.body313 ] ; 3 uses
  %i.hw = getelementptr [8 x i8], ptr %i.hu, i64 %index314 ; 2 uses
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.gn
  %wide.load315 = load <2 x double>, ptr %i.hx, align 8, !tbaa !42, !alias.scope !787
  %.idx342 = shl i64 %index314, 4
  %i.hy = getelementptr i8, ptr %i.hv, i64 %.idx342
  %i.hz = getelementptr [8 x i8], ptr %i.hw, i64 %i.gp
  %wide.load316 = load <2 x double>, ptr %i.hz, align 8, !tbaa !42, !alias.scope !788
  %interleaved.vec317 = shufflevector <2 x double> %wide.load315, <2 x double> %wide.load316, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec317, ptr %i.hy, align 8, !tbaa !42, !alias.scope !789, !noalias !790
  %index.next318 = add nuw i64 %index314, 2       ; 2 uses
  %i.ia = icmp eq i64 %index.next318, %n.vec312
  br i1 %i.ia, label %middle.block319, label %vector.body313, !llvm.loop !774

middle.block319:                                  ; preds = %vector.body313
  %cmp.n320 = icmp eq i64 %i.gq, %n.vec312
  br i1 %cmp.n320, label %._crit_edge160.1, label %.loopexit.1.preheader

.loopexit.1.preheader:                            ; preds = %vector.memcheck303, %vector.scevcheck275, %.preheader139.preheader.1, %middle.block319
  %.4159.1.ph = phi i64 [ %.2.lcssa.1, %vector.memcheck303 ], [ %.2.lcssa.1, %vector.scevcheck275 ], [ %.2.lcssa.1, %.preheader139.preheader.1 ], [ %i.hs, %middle.block319 ] ; 4 uses
  %.2130157.1.ph = phi i64 [ %.0128.lcssa.1, %vector.memcheck303 ], [ %.0128.lcssa.1, %vector.scevcheck275 ], [ %.0128.lcssa.1, %.preheader139.preheader.1 ], [ %i.ht, %middle.block319 ] ; 5 uses
  %i.ib = sub i64 %3, %.2130157.1.ph
  %.neg359 = add i64 %.2130157.1.ph, 1
  %xtraiter355 = and i64 %i.ib, 1
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.loopexit.1.prol.loopexit, label %.loopexit.1.prol

.loopexit.1.prol:                                 ; preds = %.loopexit.1.preheader
  %i.ic = getelementptr [8 x i8], ptr %i.gl, i64 %.2130157.1.ph ; 2 uses
  %i.id = getelementptr [8 x i8], ptr %i.ic, i64 %i.gn
  %i.ie = load double, ptr %i.id, align 8, !tbaa !42
  %i.if = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1.ph
  store double %i.ie, ptr %i.if, align 8, !tbaa !42
  %i.ig = getelementptr [8 x i8], ptr %i.ic, i64 %i.gp
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !42
  %i.ii = add i64 %.4159.1.ph, 2                  ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %1, i64 %.4159.1.ph
  %i.ik = getelementptr i8, ptr %i.ij, i64 8
  store double %i.ih, ptr %i.ik, align 8, !tbaa !42
  %i.il = add nuw nsw i64 %.2130157.1.ph, 1
  br label %.loopexit.1.prol.loopexit

.loopexit.1.prol.loopexit:                        ; preds = %.loopexit.1.prol, %.loopexit.1.preheader
  %.lcssa346.unr = phi i64 [ poison, %.loopexit.1.preheader ], [ %i.ii, %.loopexit.1.prol ]
  %.4159.1.unr = phi i64 [ %.4159.1.ph, %.loopexit.1.preheader ], [ %i.ii, %.loopexit.1.prol ]
  %.2130157.1.unr = phi i64 [ %.2130157.1.ph, %.loopexit.1.preheader ], [ %i.il, %.loopexit.1.prol ]
  %i.im = icmp eq i64 %3, %.neg359
  br i1 %i.im, label %._crit_edge160.1, label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1
  %.4159.1 = phi i64 [ %i.jd, %.loopexit.1 ], [ %.4159.1.unr, %.loopexit.1.prol.loopexit ] ; 4 uses
  %.2130157.1 = phi i64 [ %i.jg, %.loopexit.1 ], [ %.2130157.1.unr, %.loopexit.1.prol.loopexit ] ; 3 uses
  %i.in = getelementptr [8 x i8], ptr %i.gl, i64 %.2130157.1 ; 2 uses
  %i.io = getelementptr [8 x i8], ptr %i.in, i64 %i.gn
  %i.ip = load double, ptr %i.io, align 8, !tbaa !42
  %i.iq = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1
  store double %i.ip, ptr %i.iq, align 8, !tbaa !42
  %i.ir = getelementptr [8 x i8], ptr %i.in, i64 %i.gp
  %i.is = load double, ptr %i.ir, align 8, !tbaa !42
  %i.it = add i64 %.4159.1, 2                     ; 2 uses
  %i.iu = getelementptr [8 x i8], ptr %1, i64 %.4159.1
  %i.iv = getelementptr i8, ptr %i.iu, i64 8
  store double %i.is, ptr %i.iv, align 8, !tbaa !42
  %i.iw = getelementptr [8 x i8], ptr %i.gl, i64 %.2130157.1
  %i.ix = getelementptr i8, ptr %i.iw, i64 8      ; 2 uses
  %i.iy = getelementptr [8 x i8], ptr %i.ix, i64 %i.gn
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !42
  %i.ja = getelementptr inbounds [8 x i8], ptr %1, i64 %i.it
  store double %i.iz, ptr %i.ja, align 8, !tbaa !42
  %i.jb = getelementptr [8 x i8], ptr %i.ix, i64 %i.gp
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !42
  %i.jd = add i64 %.4159.1, 4                     ; 2 uses
  %i.je = getelementptr [8 x i8], ptr %1, i64 %i.it
  %i.jf = getelementptr i8, ptr %i.je, i64 8
  store double %i.jc, ptr %i.jf, align 8, !tbaa !42
  %i.jg = add nuw nsw i64 %.2130157.1, 2          ; 2 uses
  %exitcond190.1.not.1 = icmp eq i64 %i.jg, %3
  br i1 %exitcond190.1.not.1, label %._crit_edge160.1, label %.loopexit.1, !llvm.loop !775

._crit_edge160.1:                                 ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1, %middle.block319, %.preheader141.1
  %.4.lcssa.1 = phi i64 [ %.2.lcssa.1, %.preheader141.1 ], [ %i.hs, %middle.block319 ], [ %.lcssa346.unr, %.loopexit.1.prol.loopexit ], [ %i.jd, %.loopexit.1 ] ; 2 uses
  %i.jh = add i64 %.1133162.1, 2                  ; 3 uses
  %i.ji = icmp slt i64 %i.jh, %i.fn
  %indvar.next300 = add i64 %indvar299, 1
  br i1 %i.ji, label %.lr.ph166.1, label %._crit_edge167.1, !llvm.loop !769

._crit_edge167.1:                                 ; preds = %._crit_edge160.1, %._crit_edge167
  %.1133.lcssa.1 = phi i64 [ %.1133.lcssa, %._crit_edge167 ], [ %i.jh, %._crit_edge160.1 ] ; 3 uses
  %.1.lcssa.1 = phi i64 [ %.1.lcssa, %._crit_edge167 ], [ %.4.lcssa.1, %._crit_edge160.1 ]
  %i.jj = icmp slt i64 %.1133.lcssa.1, %4
  %i.jk = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.jj, %i.jk
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge180.split

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge176
  %indvar326 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next327, %._crit_edge176 ] ; 2 uses
  %.8179 = phi i64 [ %.1.lcssa.1, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge176 ] ; 5 uses
  %.2134178 = phi i64 [ %.1133.lcssa.1, %.preheader.lr.ph.split ], [ %i.ke, %._crit_edge176 ] ; 2 uses
  %i.jl = mul nsw i64 %i.m, %.2134178
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.jl ; 6 uses
  br i1 %min.iters.check329, label %scalar.ph328.preheader, label %vector.memcheck330

vector.memcheck330:                               ; preds = %.preheader
  %i.jm = mul i64 %indvar326, %i.n
  %i.jn = add i64 %i.r, %i.jm
  %i.jo = shl i64 %.8179, 3
  %i.jp = add i64 %i.jn, %i.jo
  %i.jq = add i64 %i.jp, -1
  %diff.check = icmp ult i64 %i.jq, 31
  br i1 %diff.check, label %scalar.ph328.preheader, label %vector.ph331

vector.ph331:                                     ; preds = %vector.memcheck330
  %i.jr = add i64 %.8179, %n.vec332               ; 2 uses
  %i.js = getelementptr [8 x i8], ptr %1, i64 %.8179
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next337, %vector.body333 ] ; 3 uses
  %i.jt = getelementptr [8 x i8], ptr %invariant.gep, i64 %index334 ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 16
  %wide.load335 = load <2 x double>, ptr %i.jt, align 8, !tbaa !42
  %wide.load336 = load <2 x double>, ptr %i.ju, align 8, !tbaa !42
  %i.jv = getelementptr [8 x i8], ptr %i.js, i64 %index334 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store <2 x double> %wide.load335, ptr %i.jv, align 8, !tbaa !42
  store <2 x double> %wide.load336, ptr %i.jw, align 8, !tbaa !42
  %index.next337 = add nuw i64 %index334, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next337, %n.vec332
  br i1 %i.jx, label %middle.block338, label %vector.body333, !llvm.loop !776

middle.block338:                                  ; preds = %vector.body333
  br i1 %cmp.n339, label %._crit_edge176, label %scalar.ph328.preheader

scalar.ph328.preheader:                           ; preds = %vector.memcheck330, %.preheader, %middle.block338
  %.0174.ph = phi i64 [ 0, %vector.memcheck330 ], [ 0, %.preheader ], [ %n.vec332, %middle.block338 ] ; 3 uses
  %.9173.ph = phi i64 [ %.8179, %vector.memcheck330 ], [ %.8179, %.preheader ], [ %i.jr, %middle.block338 ] ; 2 uses
  br i1 %lcmp.mod358.not.a, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol

scalar.ph328.prol:                                ; preds = %scalar.ph328.preheader, %scalar.ph328.prol
  %.0174.prol = phi i64 [ %i.kb, %scalar.ph328.prol ], [ %.0174.ph, %scalar.ph328.preheader ] ; 2 uses
  %.9173.prol = phi i64 [ %i.jz, %scalar.ph328.prol ], [ %.9173.ph, %scalar.ph328.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph328.prol ], [ 0, %scalar.ph328.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174.prol
  %i.jy = load double, ptr %gep.prol, align 8, !tbaa !42
  %i.jz = add nsw i64 %.9173.prol, 1              ; 3 uses
  %i.ka = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173.prol
  store double %i.jy, ptr %i.ka, align 8, !tbaa !42
  %i.kb = add nuw nsw i64 %.0174.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter357.a
  br i1 %prol.iter.cmp.not, label %scalar.ph328.prol.loopexit, label %scalar.ph328.prol, !llvm.loop !777

scalar.ph328.prol.loopexit:                       ; preds = %scalar.ph328.prol, %scalar.ph328.preheader
  %.lcssa343.unr = phi i64 [ poison, %scalar.ph328.preheader ], [ %i.jz, %scalar.ph328.prol ]
  %.0174.unr = phi i64 [ %.0174.ph, %scalar.ph328.preheader ], [ %i.kb, %scalar.ph328.prol ]
  %.9173.unr = phi i64 [ %.9173.ph, %scalar.ph328.preheader ], [ %i.jz, %scalar.ph328.prol ]
  %i.kc = sub nsw i64 %.0174.ph, %3
  %i.kd = icmp ugt i64 %i.kc, -4
  br i1 %i.kd, label %._crit_edge176, label %scalar.ph328

._crit_edge176:                                   ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328, %middle.block338
  %.lcssa = phi i64 [ %i.jr, %middle.block338 ], [ %.lcssa343.unr, %scalar.ph328.prol.loopexit ], [ %i.kr, %scalar.ph328 ]
  %i.ke = add nuw nsw i64 %.2134178, 1            ; 2 uses
  %exitcond191.not = icmp eq i64 %i.ke, %4
  %indvar.next327 = add i64 %indvar326, 1
  br i1 %exitcond191.not, label %._crit_edge180.split, label %.preheader, !llvm.loop !778

scalar.ph328:                                     ; preds = %scalar.ph328.prol.loopexit, %scalar.ph328
  %.0174 = phi i64 [ %i.ku, %scalar.ph328 ], [ %.0174.unr, %scalar.ph328.prol.loopexit ] ; 5 uses
  %.9173 = phi i64 [ %i.kr, %scalar.ph328 ], [ %.9173.unr, %scalar.ph328.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %i.kf = load double, ptr %gep, align 8, !tbaa !42
  %i.kg = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173
  store double %i.kf, ptr %i.kg, align 8, !tbaa !42
  %i.kh = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.1 = getelementptr i8, ptr %i.kh, i64 8
  %i.ki = load double, ptr %gep.1, align 8, !tbaa !42
  %i.kj = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.kk = getelementptr i8, ptr %i.kj, i64 8
  store double %i.ki, ptr %i.kk, align 8, !tbaa !42
  %i.kl = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.2 = getelementptr i8, ptr %i.kl, i64 16
  %i.km = load double, ptr %gep.2, align 8, !tbaa !42
  %i.kn = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.ko = getelementptr i8, ptr %i.kn, i64 16
  store double %i.km, ptr %i.ko, align 8, !tbaa !42
  %i.kp = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.3 = getelementptr i8, ptr %i.kp, i64 24
  %i.kq = load double, ptr %gep.3, align 8, !tbaa !42
  %i.kr = add nsw i64 %.9173, 4                   ; 2 uses
  %i.ks = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.kt = getelementptr i8, ptr %i.ks, i64 24
  store double %i.kq, ptr %i.kt, align 8, !tbaa !42
  %i.ku = add nuw nsw i64 %.0174, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ku, %3
  br i1 %exitcond.not.3, label %._crit_edge176, label %scalar.ph328, !llvm.loop !779

._crit_edge180.split:                             ; preds = %._crit_edge176, %._crit_edge167.1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !193
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !185    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !186  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.j = add nsw i64 %smax, -4                    ; 2 uses
  %i.k = lshr exact i64 %i.j, 2
  %i.l = mul i64 %i.g, %i.k
  %i.m = shl i64 %i.l, 5
  %i.n = shl i64 %3, 3                            ; 4 uses
  %i.o = getelementptr i8, ptr %i.e, i64 %i.m
  %scevgep106 = getelementptr i8, ptr %i.o, i64 %i.n
  %i.p = shl i64 %i.j, 3                          ; 3 uses
  %i.q = or disjoint i64 %i.p, 8
  %i.r = mul i64 %i.g, %i.q
  %i.s = getelementptr i8, ptr %i.e, i64 %i.r
  %scevgep107 = getelementptr i8, ptr %i.s, i64 %i.n
  %i.t = shl i64 %i.g, 3
  %scevgep108 = getelementptr i8, ptr %i.e, i64 %i.t
  %i.u = or disjoint i64 %i.p, 16
  %i.v = mul i64 %i.g, %i.u
  %i.w = getelementptr i8, ptr %i.e, i64 %i.v
  %scevgep109 = getelementptr i8, ptr %i.w, i64 %i.n
  %i.x = shl i64 %i.g, 4
  %scevgep110 = getelementptr i8, ptr %i.e, i64 %i.x
  %i.y = or disjoint i64 %i.p, 24
  %i.z = mul i64 %i.g, %i.y
  %i.aa = getelementptr i8, ptr %i.e, i64 %i.z
  %scevgep111 = getelementptr i8, ptr %i.aa, i64 %i.n
  %i.ab = mul i64 %i.g, 24
  %scevgep112 = getelementptr i8, ptr %i.e, i64 %i.ab
  %i.ac = shl i64 %3, 5
  %i.ad = insertelement <4 x ptr> poison, ptr %scevgep111, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep109, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %scevgep107, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %scevgep106, i64 3
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep112, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep110, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep108, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.e, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %i.al = getelementptr i8, ptr %1, i64 %i.ac
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.am = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.dv, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.an = mul nsw i64 %i.g, %.04460.us
  %i.ao = getelementptr [8 x i8], ptr %i.e, i64 %i.an ; 4 uses
  %i.ap = or disjoint i64 %.04460.us, 1
  %i.aq = mul nsw i64 %i.g, %i.ap
  %i.ar = getelementptr [8 x i8], ptr %i.e, i64 %i.aq ; 4 uses
  %i.as = or disjoint i64 %.04460.us, 2
  %i.at = mul nsw i64 %i.g, %i.as
end_hunk_0
