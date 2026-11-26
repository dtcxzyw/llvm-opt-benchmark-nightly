Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4377
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll:bb.a
.preheader139.preheader:                          ; preds = %.preheader141
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
  %i.by = sub i64 %i.bv, %i.bx
  %i.bz = getelementptr i8, ptr %scevgep260, i64 %i.by ; 4 uses
  %i.ca = shl i64 %indvar, 5                      ; 4 uses
  %i.cb = or disjoint i64 %i.ca, 24
  %i.cc = mul i64 %i.ba, %i.cb                    ; 2 uses
  %i.cd = shl i64 %.0128.lcssa, 3                 ; 4 uses
  %i.ce = getelementptr i8, ptr %i.az, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.cd
  %i.cg = getelementptr i8, ptr %i.az, i64 %i.cc
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.i
  %i.ci = or disjoint i64 %i.ca, 16
  %i.cj = mul i64 %i.ba, %i.ci                    ; 2 uses
  %i.ck = getelementptr i8, ptr %i.az, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.cd
  %i.cm = getelementptr i8, ptr %i.az, i64 %i.cj
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.i
  %i.co = or disjoint i64 %i.ca, 8
  %i.cp = mul i64 %i.ba, %i.co                    ; 2 uses
  %i.cq = getelementptr i8, ptr %i.az, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cd
  %i.cs = getelementptr i8, ptr %i.az, i64 %i.cp
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.i
  %i.cu = mul i64 %i.ba, %i.ca                    ; 2 uses
  %i.cv = getelementptr i8, ptr %i.az, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cd
  %i.cx = getelementptr i8, ptr %i.az, i64 %i.cu
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.i
  %bound0 = icmp ult ptr %i.bw, %i.ch
  %bound1 = icmp ult ptr %i.cf, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  %bound0261 = icmp ult ptr %i.bw, %i.cn
  %bound1262 = icmp ult ptr %i.cl, %i.bz
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx = or i1 %found.conflict, %found.conflict263
  %bound0264 = icmp ult ptr %i.bw, %i.ct
  %bound1265 = icmp ult ptr %i.cr, %i.bz
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx, %found.conflict266
  %bound0268 = icmp ult ptr %i.bw, %i.cy
  %bound1269 = icmp ult ptr %i.cw, %i.bz
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  br i1 %conflict.rdx271, label %.loopexit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, -2                      ; 4 uses
  %i.cz = shl i64 %n.vec, 2
  %i.da = add i64 %.2.lcssa, %i.cz                ; 2 uses
  %i.db = add i64 %.0128.lcssa, %n.vec
  %i.dc = getelementptr [8 x i8], ptr %i.az, i64 %.0128.lcssa
  %i.dd = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = getelementptr [8 x i8], ptr %i.dc, i64 %index ; 4 uses
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.bb
  %wide.load = load <2 x double>, ptr %i.df, align 8, !tbaa !42, !alias.scope !780
  %i.dg = getelementptr [8 x i8], ptr %i.de, i64 %i.bd
  %wide.load272 = load <2 x double>, ptr %i.dg, align 8, !tbaa !42, !alias.scope !781
  %i.dh = getelementptr [8 x i8], ptr %i.de, i64 %i.bf
  %wide.load273 = load <2 x double>, ptr %i.dh, align 8, !tbaa !42, !alias.scope !782
  %i.di = getelementptr [8 x i8], ptr %i.de, i64 %i.bh
  %wide.load274 = load <2 x double>, ptr %i.di, align 8, !tbaa !42, !alias.scope !783
  %.idx = shl i64 %index, 5
  %i.dj = getelementptr i8, ptr %i.dd, i64 %.idx
  %i.dk = shufflevector <2 x double> %wide.load, <2 x double> %wide.load272, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dl = shufflevector <2 x double> %wide.load273, <2 x double> %wide.load274, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.dk, <4 x double> %i.dl, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.dj, align 8, !tbaa !42, !alias.scope !784, !noalias !785
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !766

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge160, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader139.preheader, %middle.block
  %.4159.ph = phi i64 [ %.2.lcssa, %vector.memcheck ], [ %.2.lcssa, %vector.scevcheck ], [ %.2.lcssa, %.preheader139.preheader ], [ %i.da, %middle.block ] ; 3 uses
  %.2130157.ph = phi i64 [ %.0128.lcssa, %vector.memcheck ], [ %.0128.lcssa, %vector.scevcheck ], [ %.0128.lcssa, %.preheader139.preheader ], [ %i.db, %middle.block ] ; 5 uses
  %i.dn = sub i64 %3, %.2130157.ph
  %.neg = add i64 %.2130157.ph, 1
  %xtraiter = and i64 %i.dn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.prol.loopexit, label %.loopexit.prol

.loopexit.prol:                                   ; preds = %.loopexit.preheader
  %i.do = getelementptr [8 x i8], ptr %i.az, i64 %.2130157.ph ; 4 uses
  %i.dp = add nsw i64 %.4159.ph, 4                ; 2 uses
  %i.dq = getelementptr [8 x i8], ptr %i.do, i64 %i.bb
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !42
  %i.ds = getelementptr [8 x i8], ptr %i.do, i64 %i.bd
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !42
  %i.du = getelementptr [8 x i8], ptr %i.do, i64 %i.bf
  %i.dv = load double, ptr %i.du, align 8, !tbaa !42
  %i.dw = getelementptr [8 x i8], ptr %i.do, i64 %i.bh
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !42
  %i.dy = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.ph ; 4 uses
  store double %i.dr, ptr %i.dy, align 8, !tbaa !42
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  store double %i.dt, ptr %i.dz, align 8, !tbaa !42
  %i.ea = getelementptr i8, ptr %i.dy, i64 16
  store double %i.dv, ptr %i.ea, align 8, !tbaa !42
  %i.eb = getelementptr i8, ptr %i.dy, i64 24
  store double %i.dx, ptr %i.eb, align 8, !tbaa !42
  %i.ec = add nuw nsw i64 %.2130157.ph, 1
  br label %.loopexit.prol.loopexit

.loopexit.prol.loopexit:                          ; preds = %.loopexit.prol, %.loopexit.preheader
  %.lcssa352.unr = phi i64 [ poison, %.loopexit.preheader ], [ %i.dp, %.loopexit.prol ]
  %.4159.unr = phi i64 [ %.4159.ph, %.loopexit.preheader ], [ %i.dp, %.loopexit.prol ]
  %.2130157.unr = phi i64 [ %.2130157.ph, %.loopexit.preheader ], [ %i.ec, %.loopexit.prol ]
  %i.ed = icmp eq i64 %3, %.neg
  br i1 %i.ed, label %._crit_edge160, label %.loopexit

.loopexit:                                        ; preds = %.loopexit.prol.loopexit, %.loopexit
  %.4159 = phi i64 [ %i.et, %.loopexit ], [ %.4159.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %.2130157 = phi i64 [ %i.fh, %.loopexit ], [ %.2130157.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %i.ee = getelementptr [8 x i8], ptr %i.az, i64 %.2130157 ; 4 uses
  %i.ef = getelementptr [8 x i8], ptr %i.ee, i64 %i.bb
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !42
  %i.eh = getelementptr [8 x i8], ptr %i.ee, i64 %i.bd
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !42
  %i.ej = getelementptr [8 x i8], ptr %i.ee, i64 %i.bf
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !42
  %i.el = getelementptr [8 x i8], ptr %i.ee, i64 %i.bh
  %i.em = load double, ptr %i.el, align 8, !tbaa !42
  %i.en = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  store double %i.eg, ptr %i.en, align 8, !tbaa !42
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  store double %i.ei, ptr %i.eo, align 8, !tbaa !42
  %i.ep = getelementptr i8, ptr %i.en, i64 16
  store double %i.ek, ptr %i.ep, align 8, !tbaa !42
  %i.eq = getelementptr i8, ptr %i.en, i64 24
  store double %i.em, ptr %i.eq, align 8, !tbaa !42
  %i.er = getelementptr [8 x i8], ptr %i.az, i64 %.2130157
  %i.es = getelementptr i8, ptr %i.er, i64 8      ; 4 uses
  %i.et = add nsw i64 %.4159, 8                   ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %i.es, i64 %i.bb
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !42
  %i.ew = getelementptr [8 x i8], ptr %i.es, i64 %i.bd
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !42
  %i.ey = getelementptr [8 x i8], ptr %i.es, i64 %i.bf
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !42
  %i.fa = getelementptr [8 x i8], ptr %i.es, i64 %i.bh
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !42
  %i.fc = getelementptr [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 32
  store double %i.ev, ptr %i.fd, align 8, !tbaa !42
  %i.fe = getelementptr i8, ptr %i.fc, i64 40
  store double %i.ex, ptr %i.fe, align 8, !tbaa !42
  %i.ff = getelementptr i8, ptr %i.fc, i64 48
  store double %i.ez, ptr %i.ff, align 8, !tbaa !42
  %i.fg = getelementptr i8, ptr %i.fc, i64 56
  store double %i.fb, ptr %i.fg, align 8, !tbaa !42
  %i.fh = add nuw nsw i64 %.2130157, 2            ; 2 uses
  %exitcond190.not.1 = icmp eq i64 %i.fh, %3
  br i1 %exitcond190.not.1, label %._crit_edge160, label %.loopexit, !llvm.loop !767

._crit_edge160:                                   ; preds = %.loopexit.prol.loopexit, %.loopexit, %middle.block, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %i.da, %middle.block ], [ %.lcssa352.unr, %.loopexit.prol.loopexit ], [ %i.et, %.loopexit ] ; 2 uses
  %i.fi = add i64 %.1133162, 4                    ; 3 uses
  %i.fj = icmp slt i64 %i.fi, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fj, label %.lr.ph166, label %._crit_edge167, !llvm.loop !768

._crit_edge167:                                   ; preds = %._crit_edge160, %bb.a
  %.1133.lcssa = phi i64 [ 0, %bb.a ], [ %i.fi, %._crit_edge160 ] ; 5 uses
  %.1.lcssa = phi i64 [ 0, %bb.a ], [ %.4.lcssa, %._crit_edge160 ] ; 2 uses
  %i.fk = sub i64 %4, %.1133.lcssa
  %i.fl = srem i64 %i.fk, 2
  %i.fm = sub i64 %4, %i.fl                       ; 2 uses
  %i.fn = icmp slt i64 %.1133.lcssa, %i.fm
  br i1 %i.fn, label %.lr.ph166.1.preheader, label %._crit_edge167.1

.lr.ph166.1.preheader:                            ; preds = %._crit_edge167
  %scevgep277 = getelementptr i8, ptr %1, i64 8
  %i.fo = shl i64 %.1133.lcssa, 3                 ; 2 uses
  %i.fp = shl i64 %3, 3                           ; 2 uses
  %i.fq = add i64 %i.fo, 8
  %i.fr = shl i64 %3, 4
  %scevgep302 = getelementptr i8, ptr %1, i64 %i.fr
  br label %.lr.ph166.1

.lr.ph166.1:                                      ; preds = %.lr.ph166.1.preheader, %._crit_edge160.1
  %indvar300 = phi i64 [ 0, %.lr.ph166.1.preheader ], [ %indvar.next301, %._crit_edge160.1 ] ; 2 uses
  %.1164.1 = phi i64 [ %.1.lcssa, %.lr.ph166.1.preheader ], [ %.4.lcssa.1, %._crit_edge160.1 ] ; 2 uses
  %.1133162.1 = phi i64 [ %.1133.lcssa, %.lr.ph166.1.preheader ], [ %i.jf, %._crit_edge160.1 ] ; 5 uses
  br i1 %i.d, label %.preheader140.us.preheader.1, label %.preheader141.1

.preheader140.us.preheader.1:                     ; preds = %.lr.ph166.1
  %i.fs = add nsw i64 %.1133162.1, 1
  br label %.preheader140.us.1

.preheader140.us.1:                               ; preds = %.preheader140.us.1, %.preheader140.us.preheader.1
  %.2146.us.1 = phi i64 [ %i.gg, %.preheader140.us.1 ], [ %.1164.1, %.preheader140.us.preheader.1 ] ; 2 uses
  %.0128145.us.1 = phi i64 [ %i.gh, %.preheader140.us.1 ], [ 0, %.preheader140.us.preheader.1 ] ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146.us.1 ; 2 uses
  %i.fu = load ptr, ptr %2, align 8, !tbaa !182
  %i.fv = load i64, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.fu, i64 %.0128145.us.1 ; 2 uses
  %i.fx = mul nsw i64 %i.fv, %.1133162.1
  %i.fy = getelementptr [8 x i8], ptr %i.fw, i64 %i.fx
  %i.fz = load <2 x double>, ptr %i.fy, align 1, !tbaa !24 ; 2 uses
  %i.ga = mul nsw i64 %i.fv, %i.fs
  %i.gb = getelementptr [8 x i8], ptr %i.fw, i64 %i.ga
  %i.gc = load <2 x double>, ptr %i.gb, align 1, !tbaa !24 ; 2 uses
  %i.gd = shufflevector <2 x double> %i.fz, <2 x double> %i.gc, <2 x i32> <i32 1, i32 3>
  %i.ge = shufflevector <2 x double> %i.fz, <2 x double> %i.gc, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.ge, ptr %i.ft, align 16, !tbaa !24
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <2 x double> %i.gd, ptr %i.gf, align 16, !tbaa !24
  %i.gg = add nsw i64 %.2146.us.1, 4              ; 2 uses
  %i.gh = add nuw nsw i64 %.0128145.us.1, 2       ; 3 uses
  %i.gi = icmp slt i64 %i.gh, %i.c
  br i1 %i.gi, label %.preheader140.us.1, label %.preheader141.1, !llvm.loop !759

.preheader141.1:                                  ; preds = %.preheader140.us.1, %.lr.ph166.1
  %.0128.lcssa.1 = phi i64 [ 0, %.lr.ph166.1 ], [ %i.gh, %.preheader140.us.1 ] ; 10 uses
  %.2.lcssa.1 = phi i64 [ %.1164.1, %.lr.ph166.1 ], [ %i.gg, %.preheader140.us.1 ] ; 8 uses
  %i.gj = icmp slt i64 %.0128.lcssa.1, %3
  br i1 %i.gj, label %.preheader139.preheader.1, label %._crit_edge160.1

.preheader139.preheader.1:                        ; preds = %.preheader141.1
  %i.gk = load ptr, ptr %2, align 8, !tbaa !182   ; 8 uses
  %i.gl = load i64, ptr %i.e, align 8, !tbaa !183 ; 4 uses
  %i.gm = mul nsw i64 %i.gl, %.1133162.1          ; 4 uses
  %i.gn = add nsw i64 %.1133162.1, 1
  %i.go = mul nsw i64 %i.gl, %i.gn                ; 4 uses
  %i.gp = sub i64 %3, %.0128.lcssa.1              ; 3 uses
  %min.iters.check304 = icmp ult i64 %i.gp, 42
  br i1 %min.iters.check304, label %.loopexit.1.preheader, label %vector.scevcheck276

vector.scevcheck276:                              ; preds = %.preheader139.preheader.1
  %i.gq = xor i64 %.0128.lcssa.1, -1
  %i.gr = add i64 %3, %i.gq                       ; 2 uses
  %i.gs = shl i64 %.2.lcssa.1, 3
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.gs ; 2 uses
  %mul.result280 = shl i64 %i.gr, 4
  %mul.overflow281 = icmp ugt i64 %i.gr, 1152921504606846975
  %i.gt = getelementptr i8, ptr %scevgep278, i64 %mul.result280
  %i.gu = icmp ult ptr %i.gt, %scevgep278
  %i.gv = or i1 %i.gu, %mul.overflow281
  br i1 %i.gv, label %.loopexit.1.preheader, label %vector.memcheck305

vector.memcheck305:                               ; preds = %vector.scevcheck276
  %i.gw = shl i64 %.2.lcssa.1, 3                  ; 2 uses
  %i.gx = getelementptr i8, ptr %1, i64 %i.gw     ; 2 uses
  %i.gy = shl i64 %.0128.lcssa.1, 4
  %i.gz = sub i64 %i.gw, %i.gy
  %i.ha = getelementptr i8, ptr %scevgep302, i64 %i.gz ; 2 uses
  %i.hb = shl i64 %indvar300, 4                   ; 2 uses
  %i.hc = add i64 %i.fq, %i.hb
  %i.hd = mul i64 %i.gl, %i.hc                    ; 2 uses
  %i.he = shl i64 %.0128.lcssa.1, 3               ; 2 uses
  %i.hf = getelementptr i8, ptr %i.gk, i64 %i.hd
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.he
  %i.hh = getelementptr i8, ptr %i.gk, i64 %i.hd
  %i.hi = getelementptr i8, ptr %i.hh, i64 %i.fp
  %i.hj = add i64 %i.fo, %i.hb
  %i.hk = mul i64 %i.gl, %i.hj                    ; 2 uses
  %i.hl = getelementptr i8, ptr %i.gk, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.he
  %i.hn = getelementptr i8, ptr %i.gk, i64 %i.hk
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.fp
  %bound0306 = icmp ult ptr %i.gx, %i.hi
  %bound1307 = icmp ult ptr %i.hg, %i.ha
  %found.conflict308 = and i1 %bound0306, %bound1307
  %bound0309 = icmp ult ptr %i.gx, %i.ho
  %bound1310 = icmp ult ptr %i.hm, %i.ha
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %found.conflict308, %found.conflict311
  br i1 %conflict.rdx312, label %.loopexit.1.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck305
  %n.vec314 = and i64 %i.gp, -2                   ; 4 uses
  %i.hp = shl i64 %n.vec314, 1
  %i.hq = add i64 %.2.lcssa.1, %i.hp              ; 2 uses
  %i.hr = add i64 %.0128.lcssa.1, %n.vec314
  %i.hs = getelementptr [8 x i8], ptr %i.gk, i64 %.0128.lcssa.1
  %i.ht = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa.1
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next320, %vector.body315 ] ; 3 uses
  %i.hu = getelementptr [8 x i8], ptr %i.hs, i64 %index316 ; 2 uses
  %i.hv = getelementptr [8 x i8], ptr %i.hu, i64 %i.gm
  %wide.load317 = load <2 x double>, ptr %i.hv, align 8, !tbaa !42, !alias.scope !786
  %.idx344 = shl i64 %index316, 4
  %i.hw = getelementptr i8, ptr %i.ht, i64 %.idx344
  %i.hx = getelementptr [8 x i8], ptr %i.hu, i64 %i.go
  %wide.load318 = load <2 x double>, ptr %i.hx, align 8, !tbaa !42, !alias.scope !787
  %interleaved.vec319 = shufflevector <2 x double> %wide.load317, <2 x double> %wide.load318, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec319, ptr %i.hw, align 8, !tbaa !42, !alias.scope !788, !noalias !789
  %index.next320 = add nuw i64 %index316, 2       ; 2 uses
  %i.hy = icmp eq i64 %index.next320, %n.vec314
  br i1 %i.hy, label %middle.block321, label %vector.body315, !llvm.loop !773

middle.block321:                                  ; preds = %vector.body315
  %cmp.n322 = icmp eq i64 %i.gp, %n.vec314
  br i1 %cmp.n322, label %._crit_edge160.1, label %.loopexit.1.preheader

.loopexit.1.preheader:                            ; preds = %vector.memcheck305, %vector.scevcheck276, %.preheader139.preheader.1, %middle.block321
  %.4159.1.ph = phi i64 [ %.2.lcssa.1, %vector.memcheck305 ], [ %.2.lcssa.1, %vector.scevcheck276 ], [ %.2.lcssa.1, %.preheader139.preheader.1 ], [ %i.hq, %middle.block321 ] ; 4 uses
  %.2130157.1.ph = phi i64 [ %.0128.lcssa.1, %vector.memcheck305 ], [ %.0128.lcssa.1, %vector.scevcheck276 ], [ %.0128.lcssa.1, %.preheader139.preheader.1 ], [ %i.hr, %middle.block321 ] ; 5 uses
  %i.hz = sub i64 %3, %.2130157.1.ph
  %.neg361 = add i64 %.2130157.1.ph, 1
  %xtraiter357 = and i64 %i.hz, 1
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.loopexit.1.prol.loopexit, label %.loopexit.1.prol

.loopexit.1.prol:                                 ; preds = %.loopexit.1.preheader
  %i.ia = getelementptr [8 x i8], ptr %i.gk, i64 %.2130157.1.ph ; 2 uses
  %i.ib = getelementptr [8 x i8], ptr %i.ia, i64 %i.gm
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !42
  %i.id = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1.ph
  store double %i.ic, ptr %i.id, align 8, !tbaa !42
  %i.ie = getelementptr [8 x i8], ptr %i.ia, i64 %i.go
  %i.if = load double, ptr %i.ie, align 8, !tbaa !42
  %i.ig = add i64 %.4159.1.ph, 2                  ; 2 uses
  %i.ih = getelementptr [8 x i8], ptr %1, i64 %.4159.1.ph
  %i.ii = getelementptr i8, ptr %i.ih, i64 8
  store double %i.if, ptr %i.ii, align 8, !tbaa !42
  %i.ij = add nuw nsw i64 %.2130157.1.ph, 1
  br label %.loopexit.1.prol.loopexit

.loopexit.1.prol.loopexit:                        ; preds = %.loopexit.1.prol, %.loopexit.1.preheader
  %.lcssa348.unr = phi i64 [ poison, %.loopexit.1.preheader ], [ %i.ig, %.loopexit.1.prol ]
  %.4159.1.unr = phi i64 [ %.4159.1.ph, %.loopexit.1.preheader ], [ %i.ig, %.loopexit.1.prol ]
  %.2130157.1.unr = phi i64 [ %.2130157.1.ph, %.loopexit.1.preheader ], [ %i.ij, %.loopexit.1.prol ]
  %i.ik = icmp eq i64 %3, %.neg361
  br i1 %i.ik, label %._crit_edge160.1, label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1
  %.4159.1 = phi i64 [ %i.jb, %.loopexit.1 ], [ %.4159.1.unr, %.loopexit.1.prol.loopexit ] ; 4 uses
  %.2130157.1 = phi i64 [ %i.je, %.loopexit.1 ], [ %.2130157.1.unr, %.loopexit.1.prol.loopexit ] ; 3 uses
  %i.il = getelementptr [8 x i8], ptr %i.gk, i64 %.2130157.1 ; 2 uses
  %i.im = getelementptr [8 x i8], ptr %i.il, i64 %i.gm
  %i.in = load double, ptr %i.im, align 8, !tbaa !42
  %i.io = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1
  store double %i.in, ptr %i.io, align 8, !tbaa !42
  %i.ip = getelementptr [8 x i8], ptr %i.il, i64 %i.go
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !42
  %i.ir = add i64 %.4159.1, 2                     ; 2 uses
  %i.is = getelementptr [8 x i8], ptr %1, i64 %.4159.1
  %i.it = getelementptr i8, ptr %i.is, i64 8
  store double %i.iq, ptr %i.it, align 8, !tbaa !42
  %i.iu = getelementptr [8 x i8], ptr %i.gk, i64 %.2130157.1
  %i.iv = getelementptr i8, ptr %i.iu, i64 8      ; 2 uses
  %i.iw = getelementptr [8 x i8], ptr %i.iv, i64 %i.gm
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !42
  %i.iy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ir
  store double %i.ix, ptr %i.iy, align 8, !tbaa !42
  %i.iz = getelementptr [8 x i8], ptr %i.iv, i64 %i.go
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !42
  %i.jb = add i64 %.4159.1, 4                     ; 2 uses
  %i.jc = getelementptr [8 x i8], ptr %1, i64 %i.ir
  %i.jd = getelementptr i8, ptr %i.jc, i64 8
  store double %i.ja, ptr %i.jd, align 8, !tbaa !42
  %i.je = add nuw nsw i64 %.2130157.1, 2          ; 2 uses
  %exitcond190.1.not.1 = icmp eq i64 %i.je, %3
  br i1 %exitcond190.1.not.1, label %._crit_edge160.1, label %.loopexit.1, !llvm.loop !774

._crit_edge160.1:                                 ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1, %middle.block321, %.preheader141.1
  %.4.lcssa.1 = phi i64 [ %.2.lcssa.1, %.preheader141.1 ], [ %i.hq, %middle.block321 ], [ %.lcssa348.unr, %.loopexit.1.prol.loopexit ], [ %i.jb, %.loopexit.1 ] ; 2 uses
  %i.jf = add i64 %.1133162.1, 2                  ; 3 uses
  %i.jg = icmp slt i64 %i.jf, %i.fm
  %indvar.next301 = add i64 %indvar300, 1
  br i1 %i.jg, label %.lr.ph166.1, label %._crit_edge167.1, !llvm.loop !768

._crit_edge167.1:                                 ; preds = %._crit_edge160.1, %._crit_edge167
  %.1133.lcssa.1 = phi i64 [ %.1133.lcssa, %._crit_edge167 ], [ %i.jf, %._crit_edge160.1 ] ; 3 uses
  %.1.lcssa.1 = phi i64 [ %.1.lcssa, %._crit_edge167 ], [ %.4.lcssa.1, %._crit_edge160.1 ]
  %i.jh = icmp slt i64 %.1133.lcssa.1, %4
  %i.ji = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.jh, %i.ji
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge180.split

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge176
  %indvar328 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next329, %._crit_edge176 ] ; 2 uses
  %.8179 = phi i64 [ %.1.lcssa.1, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge176 ] ; 5 uses
  %.2134178 = phi i64 [ %.1133.lcssa.1, %.preheader.lr.ph.split ], [ %i.kc, %._crit_edge176 ] ; 2 uses
  %i.jj = mul nsw i64 %i.m, %.2134178
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.jj ; 6 uses
  br i1 %min.iters.check331, label %scalar.ph330.preheader, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.preheader
  %i.jk = mul i64 %indvar328, %i.n
  %i.jl = add i64 %i.r, %i.jk
  %i.jm = shl i64 %.8179, 3
  %i.jn = add i64 %i.jl, %i.jm
  %i.jo = add i64 %i.jn, -1
  %diff.check = icmp ult i64 %i.jo, 31
  br i1 %diff.check, label %scalar.ph330.preheader, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck332
  %i.jp = add i64 %.8179, %n.vec334               ; 2 uses
  %i.jq = getelementptr [8 x i8], ptr %1, i64 %.8179
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 3 uses
  %i.jr = getelementptr [8 x i8], ptr %invariant.gep, i64 %index336 ; 2 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 16
  %wide.load337 = load <2 x double>, ptr %i.jr, align 8, !tbaa !42
  %wide.load338 = load <2 x double>, ptr %i.js, align 8, !tbaa !42
  %i.jt = getelementptr [8 x i8], ptr %i.jq, i64 %index336 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store <2 x double> %wide.load337, ptr %i.jt, align 8, !tbaa !42
  store <2 x double> %wide.load338, ptr %i.ju, align 8, !tbaa !42
  %index.next339 = add nuw i64 %index336, 4       ; 2 uses
  %i.jv = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.jv, label %middle.block340, label %vector.body335, !llvm.loop !775

middle.block340:                                  ; preds = %vector.body335
  br i1 %cmp.n341, label %._crit_edge176, label %scalar.ph330.preheader

scalar.ph330.preheader:                           ; preds = %vector.memcheck332, %.preheader, %middle.block340
  %.0174.ph = phi i64 [ 0, %vector.memcheck332 ], [ 0, %.preheader ], [ %n.vec334, %middle.block340 ] ; 3 uses
  %.9173.ph = phi i64 [ %.8179, %vector.memcheck332 ], [ %.8179, %.preheader ], [ %i.jp, %middle.block340 ] ; 2 uses
  br i1 %lcmp.mod360.not.a, label %scalar.ph330.prol.loopexit, label %scalar.ph330.prol

scalar.ph330.prol:                                ; preds = %scalar.ph330.preheader, %scalar.ph330.prol
  %.0174.prol = phi i64 [ %i.jz, %scalar.ph330.prol ], [ %.0174.ph, %scalar.ph330.preheader ] ; 2 uses
  %.9173.prol = phi i64 [ %i.jx, %scalar.ph330.prol ], [ %.9173.ph, %scalar.ph330.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph330.prol ], [ 0, %scalar.ph330.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174.prol
  %i.jw = load double, ptr %gep.prol, align 8, !tbaa !42
  %i.jx = add nsw i64 %.9173.prol, 1              ; 3 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173.prol
  store double %i.jw, ptr %i.jy, align 8, !tbaa !42
  %i.jz = add nuw nsw i64 %.0174.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter359.a
  br i1 %prol.iter.cmp.not, label %scalar.ph330.prol.loopexit, label %scalar.ph330.prol, !llvm.loop !776

scalar.ph330.prol.loopexit:                       ; preds = %scalar.ph330.prol, %scalar.ph330.preheader
  %.lcssa345.unr = phi i64 [ poison, %scalar.ph330.preheader ], [ %i.jx, %scalar.ph330.prol ]
  %.0174.unr = phi i64 [ %.0174.ph, %scalar.ph330.preheader ], [ %i.jz, %scalar.ph330.prol ]
  %.9173.unr = phi i64 [ %.9173.ph, %scalar.ph330.preheader ], [ %i.jx, %scalar.ph330.prol ]
  %i.ka = sub nsw i64 %.0174.ph, %3
  %i.kb = icmp ugt i64 %i.ka, -4
  br i1 %i.kb, label %._crit_edge176, label %scalar.ph330

._crit_edge176:                                   ; preds = %scalar.ph330.prol.loopexit, %scalar.ph330, %middle.block340
  %.lcssa = phi i64 [ %i.jp, %middle.block340 ], [ %.lcssa345.unr, %scalar.ph330.prol.loopexit ], [ %i.kp, %scalar.ph330 ]
  %i.kc = add nuw nsw i64 %.2134178, 1            ; 2 uses
  %exitcond191.not = icmp eq i64 %i.kc, %4
  %indvar.next329 = add i64 %indvar328, 1
  br i1 %exitcond191.not, label %._crit_edge180.split, label %.preheader, !llvm.loop !777

scalar.ph330:                                     ; preds = %scalar.ph330.prol.loopexit, %scalar.ph330
  %.0174 = phi i64 [ %i.ks, %scalar.ph330 ], [ %.0174.unr, %scalar.ph330.prol.loopexit ] ; 5 uses
  %.9173 = phi i64 [ %i.kp, %scalar.ph330 ], [ %.9173.unr, %scalar.ph330.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %i.kd = load double, ptr %gep, align 8, !tbaa !42
  %i.ke = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173
  store double %i.kd, ptr %i.ke, align 8, !tbaa !42
  %i.kf = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.1 = getelementptr i8, ptr %i.kf, i64 8
  %i.kg = load double, ptr %gep.1, align 8, !tbaa !42
  %i.kh = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.ki = getelementptr i8, ptr %i.kh, i64 8
  store double %i.kg, ptr %i.ki, align 8, !tbaa !42
  %i.kj = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.2 = getelementptr i8, ptr %i.kj, i64 16
  %i.kk = load double, ptr %gep.2, align 8, !tbaa !42
  %i.kl = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.km = getelementptr i8, ptr %i.kl, i64 16
  store double %i.kk, ptr %i.km, align 8, !tbaa !42
  %i.kn = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.3 = getelementptr i8, ptr %i.kn, i64 24
  %i.ko = load double, ptr %gep.3, align 8, !tbaa !42
  %i.kp = add nsw i64 %.9173, 4                   ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.kr = getelementptr i8, ptr %i.kq, i64 24
  store double %i.ko, ptr %i.kr, align 8, !tbaa !42
  %i.ks = add nuw nsw i64 %.0174, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ks, %3
  br i1 %exitcond.not.3, label %._crit_edge176, label %scalar.ph330, !llvm.loop !778

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
  %scevgep113 = getelementptr i8, ptr %1, i64 %i.ac
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
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.du, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.am = mul nsw i64 %i.g, %.04460.us
  %i.an = getelementptr [8 x i8], ptr %i.e, i64 %i.am ; 4 uses
  %i.ao = or disjoint i64 %.04460.us, 1
  %i.ap = mul nsw i64 %i.g, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.e, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.04460.us, 2
  %i.as = mul nsw i64 %i.g, %i.ar
end_hunk_0
