Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll:bb.a
.preheader141:                                    ; preds = %.preheader140.us, %.lr.ph166
  %.0128.lcssa = phi i64 [ 0, %.lr.ph166 ], [ %i.ba, %.preheader140.us ] ; 10 uses
  %.2.lcssa = phi i64 [ %.1164, %.lr.ph166 ], [ %i.az, %.preheader140.us ] ; 8 uses
  %i.bc = icmp slt i64 %.0128.lcssa, %3
  br i1 %i.bc, label %.preheader139.preheader, label %._crit_edge160

.preheader139.preheader:                          ; preds = %.preheader141
  %i.bd = load ptr, ptr %2, align 8, !tbaa !182   ; 10 uses
  %i.be = load i64, ptr %i.e, align 8, !tbaa !183 ; 8 uses
  %i.bf = mul nsw i64 %i.be, %.1133162            ; 4 uses
  %i.bg = or disjoint i64 %.1133162, 1
  %i.bh = mul nsw i64 %i.be, %i.bg                ; 4 uses
  %i.bi = or disjoint i64 %.1133162, 2
  %i.bj = mul nsw i64 %i.be, %i.bi                ; 4 uses
  %i.bk = or disjoint i64 %.1133162, 3
  %i.bl = mul nsw i64 %i.be, %i.bk                ; 4 uses
  %i.bm = sub i64 %3, %.0128.lcssa                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bm, 68
  br i1 %min.iters.check, label %.loopexit.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader139.preheader
  %i.bn = xor i64 %.0128.lcssa, -1
  %i.bo = add i64 %3, %i.bn                       ; 2 uses
  %i.bp = shl i64 %.2.lcssa, 3                    ; 3 uses
  %scevgep231 = getelementptr i8, ptr %scevgep, i64 %i.bp ; 2 uses
  %mul.result = shl i64 %i.bo, 5                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.bo, 576460752303423487
  %i.bq = getelementptr i8, ptr %scevgep231, i64 %mul.result
  %i.br = icmp ult ptr %i.bq, %scevgep231
  %scevgep233 = getelementptr i8, ptr %scevgep232, i64 %i.bp ; 2 uses
  %i.bs = getelementptr i8, ptr %scevgep233, i64 %mul.result
  %i.bt = icmp ult ptr %i.bs, %scevgep233
  %scevgep235 = getelementptr i8, ptr %scevgep234, i64 %i.bp ; 2 uses
  %i.bu = getelementptr i8, ptr %scevgep235, i64 %mul.result
  %i.bv = icmp ult ptr %i.bu, %scevgep235
  %i.bw = or i1 %i.bv, %mul.overflow
  %i.bx = or i1 %i.bt, %i.br
  %i.by = or i1 %i.bx, %i.bw
  br i1 %i.by, label %.loopexit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bz = shl i64 %.2.lcssa, 3                    ; 2 uses
  %scevgep236 = getelementptr i8, ptr %1, i64 %i.bz ; 4 uses
  %i.ca = shl i64 %.0128.lcssa, 5
  %i.cb = sub i64 %i.bz, %i.ca
  %scevgep238 = getelementptr i8, ptr %scevgep237.a, i64 %i.cb ; 4 uses
  %i.cc = mul i64 %i.be, %i.t                     ; 2 uses
  %i.cd = shl i64 %.0128.lcssa, 3                 ; 4 uses
  %i.ce = getelementptr i8, ptr %i.bd, i64 %i.cc
  %scevgep239 = getelementptr i8, ptr %i.ce, i64 %i.cd
  %scevgep240 = getelementptr i8, ptr %i.bd, i64 %i.j ; 2 uses
  %scevgep241 = getelementptr i8, ptr %scevgep240, i64 %i.cc
  %i.cf = mul i64 %i.be, %i.u                     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bd, i64 %i.cf
  %scevgep242 = getelementptr i8, ptr %i.cg, i64 %i.cd
  %scevgep243 = getelementptr i8, ptr %scevgep240, i64 %i.cf
  %i.ch = mul i64 %i.be, %i.v                     ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bd, i64 %i.ch
  %scevgep244 = getelementptr i8, ptr %i.ci, i64 %i.cd
  %scevgep245 = getelementptr i8, ptr %i.bd, i64 %i.j ; 2 uses
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.ch
  %i.cj = mul i64 %i.be, %i.s                     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bd, i64 %i.cj
  %scevgep247 = getelementptr i8, ptr %i.ck, i64 %i.cd
  %scevgep248 = getelementptr i8, ptr %scevgep245, i64 %i.cj
  %bound0 = icmp ult ptr %scevgep236, %scevgep241
  %bound1 = icmp ult ptr %scevgep239, %scevgep238
  %found.conflict = and i1 %bound0, %bound1
  %bound0249 = icmp ult ptr %scevgep236, %scevgep243
  %bound1250 = icmp ult ptr %scevgep242, %scevgep238
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx = or i1 %found.conflict, %found.conflict251
  %bound0252 = icmp ult ptr %scevgep236, %scevgep246
  %bound1253 = icmp ult ptr %scevgep244, %scevgep238
  %found.conflict254 = and i1 %bound0252, %bound1253
  %conflict.rdx255 = or i1 %conflict.rdx, %found.conflict254
  %bound0256 = icmp ult ptr %scevgep236, %scevgep248
  %bound1257 = icmp ult ptr %scevgep247, %scevgep238
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %conflict.rdx255, %found.conflict258
  br i1 %conflict.rdx259, label %.loopexit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bm, -2                      ; 4 uses
  %i.cl = shl i64 %n.vec, 2
  %i.cm = add i64 %.2.lcssa, %i.cl                ; 2 uses
  %i.cn = add i64 %.0128.lcssa, %n.vec
  %i.co = getelementptr [8 x i8], ptr %i.bd, i64 %.0128.lcssa
  %i.cp = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cq = getelementptr [8 x i8], ptr %i.co, i64 %index ; 4 uses
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %i.bf
  %wide.load = load <2 x double>, ptr %i.cr, align 8, !tbaa !42, !alias.scope !781
  %i.cs = getelementptr [8 x i8], ptr %i.cq, i64 %i.bh
  %wide.load260 = load <2 x double>, ptr %i.cs, align 8, !tbaa !42, !alias.scope !782
  %i.ct = getelementptr [8 x i8], ptr %i.cq, i64 %i.bj
  %wide.load261 = load <2 x double>, ptr %i.ct, align 8, !tbaa !42, !alias.scope !783
  %i.cu = getelementptr [8 x i8], ptr %i.cq, i64 %i.bl
  %wide.load262 = load <2 x double>, ptr %i.cu, align 8, !tbaa !42, !alias.scope !784
  %.idx = shl i64 %index, 5
  %i.cv = getelementptr i8, ptr %i.cp, i64 %.idx
  %i.cw = shufflevector <2 x double> %wide.load, <2 x double> %wide.load260, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cx = shufflevector <2 x double> %wide.load261, <2 x double> %wide.load262, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.cw, <4 x double> %i.cx, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.cv, align 8, !tbaa !42, !alias.scope !785, !noalias !786
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !767

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge160, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader139.preheader, %middle.block
  %.4159.ph = phi i64 [ %.2.lcssa, %vector.memcheck ], [ %.2.lcssa, %vector.scevcheck ], [ %.2.lcssa, %.preheader139.preheader ], [ %i.cm, %middle.block ] ; 3 uses
  %.2130157.ph = phi i64 [ %.0128.lcssa, %vector.memcheck ], [ %.0128.lcssa, %vector.scevcheck ], [ %.0128.lcssa, %.preheader139.preheader ], [ %i.cn, %middle.block ] ; 5 uses
  %i.cz = sub i64 %3, %.2130157.ph
  %.neg = add i64 %.2130157.ph, 1
  %xtraiter = and i64 %i.cz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.prol.loopexit, label %.loopexit.prol

.loopexit.prol:                                   ; preds = %.loopexit.preheader
  %i.da = getelementptr [8 x i8], ptr %i.bd, i64 %.2130157.ph ; 4 uses
  %i.db = add nsw i64 %.4159.ph, 4                ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.da, i64 %i.bf
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !42
  %i.de = getelementptr [8 x i8], ptr %i.da, i64 %i.bh
  %i.df = load double, ptr %i.de, align 8, !tbaa !42
  %i.dg = getelementptr [8 x i8], ptr %i.da, i64 %i.bj
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !42
  %i.di = getelementptr [8 x i8], ptr %i.da, i64 %i.bl
  %i.dj = load double, ptr %i.di, align 8, !tbaa !42
  %i.dk = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.ph ; 4 uses
  store double %i.dd, ptr %i.dk, align 8, !tbaa !42
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  store double %i.df, ptr %i.dl, align 8, !tbaa !42
  %i.dm = getelementptr i8, ptr %i.dk, i64 16
  store double %i.dh, ptr %i.dm, align 8, !tbaa !42
  %i.dn = getelementptr i8, ptr %i.dk, i64 24
  store double %i.dj, ptr %i.dn, align 8, !tbaa !42
  %i.do = add nuw nsw i64 %.2130157.ph, 1
  br label %.loopexit.prol.loopexit

.loopexit.prol.loopexit:                          ; preds = %.loopexit.prol, %.loopexit.preheader
  %.lcssa326.unr = phi i64 [ poison, %.loopexit.preheader ], [ %i.db, %.loopexit.prol ]
  %.4159.unr = phi i64 [ %.4159.ph, %.loopexit.preheader ], [ %i.db, %.loopexit.prol ]
  %.2130157.unr = phi i64 [ %.2130157.ph, %.loopexit.preheader ], [ %i.do, %.loopexit.prol ]
  %i.dp = icmp eq i64 %3, %.neg
  br i1 %i.dp, label %._crit_edge160, label %.loopexit

.loopexit:                                        ; preds = %.loopexit.prol.loopexit, %.loopexit
  %.4159 = phi i64 [ %i.ef, %.loopexit ], [ %.4159.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %.2130157 = phi i64 [ %i.et, %.loopexit ], [ %.2130157.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %i.dq = getelementptr [8 x i8], ptr %i.bd, i64 %.2130157 ; 4 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %i.bf
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !42
  %i.dt = getelementptr [8 x i8], ptr %i.dq, i64 %i.bh
  %i.du = load double, ptr %i.dt, align 8, !tbaa !42
  %i.dv = getelementptr [8 x i8], ptr %i.dq, i64 %i.bj
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !42
  %i.dx = getelementptr [8 x i8], ptr %i.dq, i64 %i.bl
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !42
  %i.dz = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  store double %i.ds, ptr %i.dz, align 8, !tbaa !42
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  store double %i.du, ptr %i.ea, align 8, !tbaa !42
  %i.eb = getelementptr i8, ptr %i.dz, i64 16
  store double %i.dw, ptr %i.eb, align 8, !tbaa !42
  %i.ec = getelementptr i8, ptr %i.dz, i64 24
  store double %i.dy, ptr %i.ec, align 8, !tbaa !42
  %i.ed = getelementptr [8 x i8], ptr %i.bd, i64 %.2130157
  %i.ee = getelementptr i8, ptr %i.ed, i64 8      ; 4 uses
  %i.ef = add nsw i64 %.4159, 8                   ; 2 uses
  %i.eg = getelementptr [8 x i8], ptr %i.ee, i64 %i.bf
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !42
  %i.ei = getelementptr [8 x i8], ptr %i.ee, i64 %i.bh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !42
  %i.ek = getelementptr [8 x i8], ptr %i.ee, i64 %i.bj
  %i.el = load double, ptr %i.ek, align 8, !tbaa !42
  %i.em = getelementptr [8 x i8], ptr %i.ee, i64 %i.bl
  %i.en = load double, ptr %i.em, align 8, !tbaa !42
  %i.eo = getelementptr [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 32
  store double %i.eh, ptr %i.ep, align 8, !tbaa !42
  %i.eq = getelementptr i8, ptr %i.eo, i64 40
  store double %i.ej, ptr %i.eq, align 8, !tbaa !42
  %i.er = getelementptr i8, ptr %i.eo, i64 48
  store double %i.el, ptr %i.er, align 8, !tbaa !42
  %i.es = getelementptr i8, ptr %i.eo, i64 56
  store double %i.en, ptr %i.es, align 8, !tbaa !42
  %i.et = add nuw nsw i64 %.2130157, 2            ; 2 uses
  %exitcond190.not.1 = icmp eq i64 %i.et, %3
  br i1 %exitcond190.not.1, label %._crit_edge160, label %.loopexit, !llvm.loop !768

._crit_edge160:                                   ; preds = %.loopexit.prol.loopexit, %.loopexit, %middle.block, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %i.cm, %middle.block ], [ %.lcssa326.unr, %.loopexit.prol.loopexit ], [ %i.ef, %.loopexit ] ; 2 uses
  %i.eu = add nuw nsw i64 %.1133162, 4            ; 3 uses
  %i.ev = icmp slt i64 %i.eu, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ev, label %.lr.ph166, label %._crit_edge167, !llvm.loop !769

._crit_edge167:                                   ; preds = %._crit_edge160, %bb.a
  %.1133.lcssa = phi i64 [ 0, %bb.a ], [ %i.eu, %._crit_edge160 ] ; 5 uses
  %.1.lcssa = phi i64 [ 0, %bb.a ], [ %.4.lcssa, %._crit_edge160 ] ; 2 uses
  %i.ew = sub i64 %4, %.1133.lcssa
  %i.ex = srem i64 %i.ew, 2
  %i.ey = sub i64 %4, %i.ex                       ; 2 uses
  %i.ez = icmp slt i64 %.1133.lcssa, %i.ey
  br i1 %i.ez, label %.lr.ph166.1.preheader, label %._crit_edge167.1

.lr.ph166.1.preheader:                            ; preds = %._crit_edge167
  %scevgep265 = getelementptr i8, ptr %1, i64 8
  %i.fa = shl i64 %3, 4
  %scevgep272 = getelementptr i8, ptr %1, i64 %i.fa
  %i.fb = shl i64 %.1133.lcssa, 3                 ; 2 uses
  %i.fc = add i64 %i.fb, 8
  %i.fd = shl i64 %3, 3
  br label %.lr.ph166.1

.lr.ph166.1:                                      ; preds = %.lr.ph166.1.preheader, %._crit_edge160.1
  %indvar274 = phi i64 [ 0, %.lr.ph166.1.preheader ], [ %indvar.next275, %._crit_edge160.1 ] ; 2 uses
  %.1164.1 = phi i64 [ %.1.lcssa, %.lr.ph166.1.preheader ], [ %.4.lcssa.1, %._crit_edge160.1 ] ; 2 uses
  %.1133162.1 = phi i64 [ %.1133.lcssa, %.lr.ph166.1.preheader ], [ %i.ij, %._crit_edge160.1 ] ; 5 uses
  %i.fe = shl i64 %indvar274, 4                   ; 2 uses
  %i.ff = add i64 %i.fc, %i.fe
  %i.fg = add i64 %i.fb, %i.fe
  br i1 %i.d, label %.preheader140.us.preheader.1, label %.preheader141.1

.preheader140.us.preheader.1:                     ; preds = %.lr.ph166.1
  %i.fh = add nuw nsw i64 %.1133162.1, 1
  br label %.preheader140.us.1

.preheader140.us.1:                               ; preds = %.preheader140.us.1, %.preheader140.us.preheader.1
  %.2146.us.1 = phi i64 [ %i.fv, %.preheader140.us.1 ], [ %.1164.1, %.preheader140.us.preheader.1 ] ; 2 uses
  %.0128145.us.1 = phi i64 [ %i.fw, %.preheader140.us.1 ], [ 0, %.preheader140.us.preheader.1 ] ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146.us.1 ; 2 uses
  %i.fj = load ptr, ptr %2, align 8, !tbaa !182
  %i.fk = load i64, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %i.fl = getelementptr [8 x i8], ptr %i.fj, i64 %.0128145.us.1 ; 2 uses
  %i.fm = mul nsw i64 %i.fk, %.1133162.1
  %i.fn = getelementptr [8 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = load <2 x double>, ptr %i.fn, align 1, !tbaa !24 ; 2 uses
  %i.fp = mul nsw i64 %i.fk, %i.fh
  %i.fq = getelementptr [8 x i8], ptr %i.fl, i64 %i.fp
  %i.fr = load <2 x double>, ptr %i.fq, align 1, !tbaa !24 ; 2 uses
  %i.fs = shufflevector <2 x double> %i.fo, <2 x double> %i.fr, <2 x i32> <i32 1, i32 3>
  %i.ft = shufflevector <2 x double> %i.fo, <2 x double> %i.fr, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.ft, ptr %i.fi, align 16, !tbaa !24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <2 x double> %i.fs, ptr %i.fu, align 16, !tbaa !24
  %i.fv = add nsw i64 %.2146.us.1, 4              ; 2 uses
  %i.fw = add nuw nsw i64 %.0128145.us.1, 2       ; 3 uses
  %i.fx = icmp slt i64 %i.fw, %i.c
  br i1 %i.fx, label %.preheader140.us.1, label %.preheader141.1, !llvm.loop !760

.preheader141.1:                                  ; preds = %.preheader140.us.1, %.lr.ph166.1
  %.0128.lcssa.1 = phi i64 [ 0, %.lr.ph166.1 ], [ %i.fw, %.preheader140.us.1 ] ; 10 uses
  %.2.lcssa.1 = phi i64 [ %.1164.1, %.lr.ph166.1 ], [ %i.fv, %.preheader140.us.1 ] ; 8 uses
  %i.fy = icmp slt i64 %.0128.lcssa.1, %3
  br i1 %i.fy, label %.preheader139.preheader.1, label %._crit_edge160.1

.preheader139.preheader.1:                        ; preds = %.preheader141.1
  %i.fz = load ptr, ptr %2, align 8, !tbaa !182   ; 7 uses
  %i.ga = load i64, ptr %i.e, align 8, !tbaa !183 ; 4 uses
  %i.gb = mul nsw i64 %i.ga, %.1133162.1          ; 4 uses
  %i.gc = add nuw nsw i64 %.1133162.1, 1
  %i.gd = mul nsw i64 %i.ga, %i.gc                ; 4 uses
  %i.ge = sub i64 %3, %.0128.lcssa.1              ; 3 uses
  %min.iters.check289 = icmp ult i64 %i.ge, 42
  br i1 %min.iters.check289, label %.loopexit.1.preheader, label %vector.scevcheck264

vector.scevcheck264:                              ; preds = %.preheader139.preheader.1
  %i.gf = xor i64 %.0128.lcssa.1, -1
  %i.gg = add i64 %3, %i.gf                       ; 2 uses
  %i.gh = shl i64 %.2.lcssa.1, 3
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.gh ; 2 uses
  %mul.result268 = shl i64 %i.gg, 4
  %mul.overflow269 = icmp ugt i64 %i.gg, 1152921504606846975
  %i.gi = getelementptr i8, ptr %scevgep266, i64 %mul.result268
  %i.gj = icmp ult ptr %i.gi, %scevgep266
  %i.gk = or i1 %i.gj, %mul.overflow269
  br i1 %i.gk, label %.loopexit.1.preheader, label %vector.memcheck270

vector.memcheck270:                               ; preds = %vector.scevcheck264
  %i.gl = shl i64 %.2.lcssa.1, 3                  ; 2 uses
  %scevgep271 = getelementptr i8, ptr %1, i64 %i.gl ; 2 uses
  %i.gm = shl i64 %.0128.lcssa.1, 4
  %i.gn = sub i64 %i.gl, %i.gm
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %i.gn ; 2 uses
  %i.go = mul i64 %i.ga, %i.ff                    ; 2 uses
  %i.gp = shl i64 %.0128.lcssa.1, 3               ; 2 uses
  %i.gq = getelementptr i8, ptr %i.fz, i64 %i.go
  %scevgep276 = getelementptr i8, ptr %i.gq, i64 %i.gp
  %scevgep277 = getelementptr i8, ptr %i.fz, i64 %i.fd ; 2 uses
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.go
  %i.gr = mul i64 %i.ga, %i.fg                    ; 2 uses
  %i.gs = getelementptr i8, ptr %i.fz, i64 %i.gr
  %scevgep279 = getelementptr i8, ptr %i.gs, i64 %i.gp
  %scevgep280 = getelementptr i8, ptr %scevgep277, i64 %i.gr
  %bound0281 = icmp ult ptr %scevgep271, %scevgep278
  %bound1282 = icmp ult ptr %scevgep276, %scevgep273
  %found.conflict283 = and i1 %bound0281, %bound1282
  %bound0284 = icmp ult ptr %scevgep271, %scevgep280
  %bound1285 = icmp ult ptr %scevgep279, %scevgep273
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx287 = or i1 %found.conflict283, %found.conflict286
  br i1 %conflict.rdx287, label %.loopexit.1.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck270
  %n.vec291 = and i64 %i.ge, -2                   ; 4 uses
  %i.gt = shl i64 %n.vec291, 1
  %i.gu = add i64 %.2.lcssa.1, %i.gt              ; 2 uses
  %i.gv = add i64 %.0128.lcssa.1, %n.vec291
  %i.gw = getelementptr [8 x i8], ptr %i.fz, i64 %.0128.lcssa.1
  %i.gx = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa.1
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next297, %vector.body292 ] ; 3 uses
  %i.gy = getelementptr [8 x i8], ptr %i.gw, i64 %index293 ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr %i.gy, i64 %i.gb
  %wide.load294 = load <2 x double>, ptr %i.gz, align 8, !tbaa !42, !alias.scope !787
  %.idx318 = shl i64 %index293, 4
  %i.ha = getelementptr i8, ptr %i.gx, i64 %.idx318
  %i.hb = getelementptr [8 x i8], ptr %i.gy, i64 %i.gd
  %wide.load295 = load <2 x double>, ptr %i.hb, align 8, !tbaa !42, !alias.scope !788
  %interleaved.vec296 = shufflevector <2 x double> %wide.load294, <2 x double> %wide.load295, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec296, ptr %i.ha, align 8, !tbaa !42, !alias.scope !789, !noalias !790
  %index.next297 = add nuw i64 %index293, 2       ; 2 uses
  %i.hc = icmp eq i64 %index.next297, %n.vec291
  br i1 %i.hc, label %middle.block298, label %vector.body292, !llvm.loop !774

middle.block298:                                  ; preds = %vector.body292
  %cmp.n299 = icmp eq i64 %i.ge, %n.vec291
  br i1 %cmp.n299, label %._crit_edge160.1, label %.loopexit.1.preheader

.loopexit.1.preheader:                            ; preds = %vector.memcheck270, %vector.scevcheck264, %.preheader139.preheader.1, %middle.block298
  %.4159.1.ph = phi i64 [ %.2.lcssa.1, %vector.memcheck270 ], [ %.2.lcssa.1, %vector.scevcheck264 ], [ %.2.lcssa.1, %.preheader139.preheader.1 ], [ %i.gu, %middle.block298 ] ; 4 uses
  %.2130157.1.ph = phi i64 [ %.0128.lcssa.1, %vector.memcheck270 ], [ %.0128.lcssa.1, %vector.scevcheck264 ], [ %.0128.lcssa.1, %.preheader139.preheader.1 ], [ %i.gv, %middle.block298 ] ; 5 uses
  %i.hd = sub i64 %3, %.2130157.1.ph
  %.neg335 = add i64 %.2130157.1.ph, 1
  %xtraiter331 = and i64 %i.hd, 1
  %lcmp.mod332.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %.loopexit.1.prol.loopexit, label %.loopexit.1.prol

.loopexit.1.prol:                                 ; preds = %.loopexit.1.preheader
  %i.he = getelementptr [8 x i8], ptr %i.fz, i64 %.2130157.1.ph ; 2 uses
  %i.hf = getelementptr [8 x i8], ptr %i.he, i64 %i.gb
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !42
  %i.hh = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1.ph
  store double %i.hg, ptr %i.hh, align 8, !tbaa !42
  %i.hi = getelementptr [8 x i8], ptr %i.he, i64 %i.gd
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !42
  %i.hk = add i64 %.4159.1.ph, 2                  ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %1, i64 %.4159.1.ph
  %i.hm = getelementptr i8, ptr %i.hl, i64 8
  store double %i.hj, ptr %i.hm, align 8, !tbaa !42
  %i.hn = add nuw nsw i64 %.2130157.1.ph, 1
  br label %.loopexit.1.prol.loopexit

.loopexit.1.prol.loopexit:                        ; preds = %.loopexit.1.prol, %.loopexit.1.preheader
  %.lcssa322.unr = phi i64 [ poison, %.loopexit.1.preheader ], [ %i.hk, %.loopexit.1.prol ]
  %.4159.1.unr = phi i64 [ %.4159.1.ph, %.loopexit.1.preheader ], [ %i.hk, %.loopexit.1.prol ]
  %.2130157.1.unr = phi i64 [ %.2130157.1.ph, %.loopexit.1.preheader ], [ %i.hn, %.loopexit.1.prol ]
  %i.ho = icmp eq i64 %3, %.neg335
  br i1 %i.ho, label %._crit_edge160.1, label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1
  %.4159.1 = phi i64 [ %i.if, %.loopexit.1 ], [ %.4159.1.unr, %.loopexit.1.prol.loopexit ] ; 4 uses
  %.2130157.1 = phi i64 [ %i.ii, %.loopexit.1 ], [ %.2130157.1.unr, %.loopexit.1.prol.loopexit ] ; 3 uses
  %i.hp = getelementptr [8 x i8], ptr %i.fz, i64 %.2130157.1 ; 2 uses
  %i.hq = getelementptr [8 x i8], ptr %i.hp, i64 %i.gb
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !42
  %i.hs = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1
  store double %i.hr, ptr %i.hs, align 8, !tbaa !42
  %i.ht = getelementptr [8 x i8], ptr %i.hp, i64 %i.gd
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !42
  %i.hv = add i64 %.4159.1, 2                     ; 2 uses
  %i.hw = getelementptr [8 x i8], ptr %1, i64 %.4159.1
  %i.hx = getelementptr i8, ptr %i.hw, i64 8
  store double %i.hu, ptr %i.hx, align 8, !tbaa !42
  %i.hy = getelementptr [8 x i8], ptr %i.fz, i64 %.2130157.1
  %i.hz = getelementptr i8, ptr %i.hy, i64 8      ; 2 uses
  %i.ia = getelementptr [8 x i8], ptr %i.hz, i64 %i.gb
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !42
  %i.ic = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hv
  store double %i.ib, ptr %i.ic, align 8, !tbaa !42
  %i.id = getelementptr [8 x i8], ptr %i.hz, i64 %i.gd
  %i.ie = load double, ptr %i.id, align 8, !tbaa !42
  %i.if = add i64 %.4159.1, 4                     ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %1, i64 %i.hv
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  store double %i.ie, ptr %i.ih, align 8, !tbaa !42
  %i.ii = add nuw nsw i64 %.2130157.1, 2          ; 2 uses
  %exitcond190.1.not.1 = icmp eq i64 %i.ii, %3
  br i1 %exitcond190.1.not.1, label %._crit_edge160.1, label %.loopexit.1, !llvm.loop !775

._crit_edge160.1:                                 ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1, %middle.block298, %.preheader141.1
  %.4.lcssa.1 = phi i64 [ %.2.lcssa.1, %.preheader141.1 ], [ %i.gu, %middle.block298 ], [ %.lcssa322.unr, %.loopexit.1.prol.loopexit ], [ %i.if, %.loopexit.1 ] ; 2 uses
  %i.ij = add nuw nsw i64 %.1133162.1, 2          ; 3 uses
  %i.ik = icmp slt i64 %i.ij, %i.ey
  %indvar.next275 = add i64 %indvar274, 1
  br i1 %i.ik, label %.lr.ph166.1, label %._crit_edge167.1, !llvm.loop !769

._crit_edge167.1:                                 ; preds = %._crit_edge160.1, %._crit_edge167
  %.1133.lcssa.1 = phi i64 [ %.1133.lcssa, %._crit_edge167 ], [ %i.ij, %._crit_edge160.1 ] ; 3 uses
  %.1.lcssa.1 = phi i64 [ %.1.lcssa, %._crit_edge167 ], [ %.4.lcssa.1, %._crit_edge160.1 ]
  %i.il = icmp slt i64 %.1133.lcssa.1, %4
  %i.im = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.il, %i.im
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge180.split

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge176
  %indvar303 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next304, %._crit_edge176 ] ; 2 uses
  %.8179 = phi i64 [ %.1.lcssa.1, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge176 ] ; 5 uses
  %.2134178 = phi i64 [ %.1133.lcssa.1, %.preheader.lr.ph.split ], [ %i.jg, %._crit_edge176 ] ; 2 uses
  %i.in = mul nsw i64 %i.m, %.2134178
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.in ; 6 uses
  br i1 %min.iters.check306, label %scalar.ph305.preheader, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.preheader
  %i.io = mul i64 %i.r, %indvar303
  %i.ip = add i64 %i.q, %i.io
  %i.iq = shl i64 %.8179, 3
  %i.ir = add i64 %i.ip, %i.iq
  %i.is = add i64 %i.ir, -1
  %diff.check = icmp ult i64 %i.is, 31
  br i1 %diff.check, label %scalar.ph305.preheader, label %vector.ph307

vector.ph307:                                     ; preds = %vector.memcheck302
  %i.it = add i64 %.8179, %n.vec308               ; 2 uses
  %i.iu = getelementptr [8 x i8], ptr %1, i64 %.8179
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph307
  %index310 = phi i64 [ 0, %vector.ph307 ], [ %index.next313, %vector.body309 ] ; 3 uses
  %i.iv = getelementptr [8 x i8], ptr %invariant.gep, i64 %index310 ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 16
  %wide.load311 = load <2 x double>, ptr %i.iv, align 8, !tbaa !42
  %wide.load312 = load <2 x double>, ptr %i.iw, align 8, !tbaa !42
  %i.ix = getelementptr [8 x i8], ptr %i.iu, i64 %index310 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store <2 x double> %wide.load311, ptr %i.ix, align 8, !tbaa !42
  store <2 x double> %wide.load312, ptr %i.iy, align 8, !tbaa !42
  %index.next313 = add nuw i64 %index310, 4       ; 2 uses
  %i.iz = icmp eq i64 %index.next313, %n.vec308
  br i1 %i.iz, label %middle.block314, label %vector.body309, !llvm.loop !776

middle.block314:                                  ; preds = %vector.body309
  br i1 %cmp.n315, label %._crit_edge176, label %scalar.ph305.preheader

scalar.ph305.preheader:                           ; preds = %vector.memcheck302, %.preheader, %middle.block314
  %.0174.ph = phi i64 [ 0, %vector.memcheck302 ], [ 0, %.preheader ], [ %n.vec308, %middle.block314 ] ; 3 uses
  %.9173.ph = phi i64 [ %.8179, %vector.memcheck302 ], [ %.8179, %.preheader ], [ %i.it, %middle.block314 ] ; 2 uses
  br i1 %lcmp.mod334.not.a, label %scalar.ph305.prol.loopexit, label %scalar.ph305.prol

scalar.ph305.prol:                                ; preds = %scalar.ph305.preheader, %scalar.ph305.prol
  %.0174.prol = phi i64 [ %i.jd, %scalar.ph305.prol ], [ %.0174.ph, %scalar.ph305.preheader ] ; 2 uses
  %.9173.prol = phi i64 [ %i.jb, %scalar.ph305.prol ], [ %.9173.ph, %scalar.ph305.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph305.prol ], [ 0, %scalar.ph305.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174.prol
  %i.ja = load double, ptr %gep.prol, align 8, !tbaa !42
  %i.jb = add nsw i64 %.9173.prol, 1              ; 3 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173.prol
  store double %i.ja, ptr %i.jc, align 8, !tbaa !42
  %i.jd = add nuw nsw i64 %.0174.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter333.a
  br i1 %prol.iter.cmp.not, label %scalar.ph305.prol.loopexit, label %scalar.ph305.prol, !llvm.loop !777

scalar.ph305.prol.loopexit:                       ; preds = %scalar.ph305.prol, %scalar.ph305.preheader
  %.lcssa319.unr = phi i64 [ poison, %scalar.ph305.preheader ], [ %i.jb, %scalar.ph305.prol ]
  %.0174.unr = phi i64 [ %.0174.ph, %scalar.ph305.preheader ], [ %i.jd, %scalar.ph305.prol ]
  %.9173.unr = phi i64 [ %.9173.ph, %scalar.ph305.preheader ], [ %i.jb, %scalar.ph305.prol ]
  %i.je = sub nsw i64 %.0174.ph, %3
  %i.jf = icmp ugt i64 %i.je, -4
  br i1 %i.jf, label %._crit_edge176, label %scalar.ph305

._crit_edge176:                                   ; preds = %scalar.ph305.prol.loopexit, %scalar.ph305, %middle.block314
  %.lcssa = phi i64 [ %i.it, %middle.block314 ], [ %.lcssa319.unr, %scalar.ph305.prol.loopexit ], [ %i.jt, %scalar.ph305 ]
  %i.jg = add nuw nsw i64 %.2134178, 1            ; 2 uses
  %exitcond191.not = icmp eq i64 %i.jg, %4
  %indvar.next304 = add i64 %indvar303, 1
  br i1 %exitcond191.not, label %._crit_edge180.split, label %.preheader, !llvm.loop !778

scalar.ph305:                                     ; preds = %scalar.ph305.prol.loopexit, %scalar.ph305
  %.0174 = phi i64 [ %i.jw, %scalar.ph305 ], [ %.0174.unr, %scalar.ph305.prol.loopexit ] ; 5 uses
  %.9173 = phi i64 [ %i.jt, %scalar.ph305 ], [ %.9173.unr, %scalar.ph305.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %i.jh = load double, ptr %gep, align 8, !tbaa !42
  %i.ji = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173
  store double %i.jh, ptr %i.ji, align 8, !tbaa !42
  %i.jj = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.1 = getelementptr i8, ptr %i.jj, i64 8
  %i.jk = load double, ptr %gep.1, align 8, !tbaa !42
  %i.jl = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.jm = getelementptr i8, ptr %i.jl, i64 8
  store double %i.jk, ptr %i.jm, align 8, !tbaa !42
  %i.jn = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.2 = getelementptr i8, ptr %i.jn, i64 16
  %i.jo = load double, ptr %gep.2, align 8, !tbaa !42
  %i.jp = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.jq = getelementptr i8, ptr %i.jp, i64 16
  store double %i.jo, ptr %i.jq, align 8, !tbaa !42
  %i.jr = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.3 = getelementptr i8, ptr %i.jr, i64 24
  %i.js = load double, ptr %gep.3, align 8, !tbaa !42
  %i.jt = add nsw i64 %.9173, 4                   ; 2 uses
  %i.ju = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.jv = getelementptr i8, ptr %i.ju, i64 24
  store double %i.js, ptr %i.jv, align 8, !tbaa !42
  %i.jw = add nuw nsw i64 %.0174, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.jw, %3
  br i1 %exitcond.not.3, label %._crit_edge176, label %scalar.ph305, !llvm.loop !779

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
  %i.j = shl i64 %3, 5
  %scevgep86 = getelementptr i8, ptr %1, i64 %i.j
  %i.k = mul i64 %i.g, 24
  %scevgep88 = getelementptr i8, ptr %i.e, i64 %i.k
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.l = add nsw i64 %smax, -4                    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = shl i64 %i.l, 3                          ; 3 uses
  %i.o = or disjoint i64 %i.n, 24
  %i.p = mul i64 %i.g, %i.o
  %i.q = shl i64 %3, 3                            ; 4 uses
  %i.r = getelementptr i8, ptr %i.e, i64 %i.p
  %scevgep89 = getelementptr i8, ptr %i.r, i64 %i.q
  %i.s = shl i64 %i.g, 4
  %scevgep90 = getelementptr i8, ptr %i.e, i64 %i.s
  %i.t = or disjoint i64 %i.n, 16
  %i.u = mul i64 %i.g, %i.t
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %scevgep91 = getelementptr i8, ptr %i.v, i64 %i.q
  %i.w = shl i64 %i.g, 3
  %scevgep92 = getelementptr i8, ptr %i.e, i64 %i.w
  %i.x = or disjoint i64 %i.n, 8
  %i.y = mul i64 %i.g, %i.x
  %i.z = getelementptr i8, ptr %i.e, i64 %i.y
  %scevgep93 = getelementptr i8, ptr %i.z, i64 %i.q
  %i.aa = mul i64 %i.g, %i.m
  %i.ab = shl i64 %i.aa, 5
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %scevgep94 = getelementptr i8, ptr %i.ac, i64 %i.q
  %i.ad = insertelement <4 x ptr> poison, ptr %scevgep89, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep91, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %scevgep93, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %scevgep94, i64 3
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep88, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep90, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep92, i64 2
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
  %.04460.us = phi i64 [ %i.ds, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.am = mul nsw i64 %i.g, %.04460.us
  %i.an = getelementptr [8 x i8], ptr %i.e, i64 %i.am ; 4 uses
  %i.ao = or disjoint i64 %.04460.us, 1
  %i.ap = mul nsw i64 %i.g, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.e, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.04460.us, 2
  %i.as = mul nsw i64 %i.g, %i.ar
end_hunk_0
