Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/reodft00e-splitradix?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@apply_e:bb.a
  %stride.check230 = icmp slt i64 %i.ap, 0
  %stride.check271 = icmp slt i64 %i.ap, 0
  %i.dm = bitcast <8 x i1> %i.dl to i8
  %i.dn = icmp ne i8 %i.dm, 0
  %i.do = insertelement <8 x i1> poison, i1 %bound0232, i64 4
  %i.dp = insertelement <8 x i1> %i.do, i1 %stride.check230, i64 5
  %i.dq = insertelement <8 x i1> %i.dp, i1 %stride.check271, i64 6
  %i.dr = insertelement <8 x i1> %i.dq, i1 %i.dn, i64 7
  %i.ds = shufflevector <4 x i1> %i.cv, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <8 x i1> %i.ds, <8 x i1> %i.dr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.du = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true, i1 true>, i1 %bound1233, i64 4
  %i.dv = shufflevector <4 x i1> %i.cw, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <8 x i1> %i.dv, <8 x i1> %i.du, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.dx = and <8 x i1> %i.dt, %i.dw
  %i.dy = bitcast <8 x i1> %i.dx to i8
  %i.dz = icmp ne i8 %i.dy, 0
  %op.rdx293 = or i1 %i.dz, %found.conflict186
  %op.rdx294 = or i1 %found.conflict, %found.conflict191
  %op.rdx295 = or i1 %found.conflict197, %found.conflict202
  %op.rdx296 = or i1 %op.rdx293, %op.rdx294
  %op.rdx297 = or i1 %op.rdx295, %found.conflict207
  %op.rdx298 = or i1 %op.rdx296, %op.rdx297
  %n.vec = and i64 %i.cu, -2                      ; 3 uses
  %i.ea = sub i64 %i.x, %n.vec                    ; 2 uses
  %i.eb = or i64 %i.cu, 1                         ; 2 uses
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.c
  %.0153 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.kb, %bb.c ] ; 12 uses
  %.0126152 = phi ptr [ %2, %.preheader.lr.ph ], [ %i.kc, %bb.c ] ; 15 uses
  %.0130151 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ka, %bb.c ]
  br i1 %.not136, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  br i1 %i.cm, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0127138 = phi i64 [ %i.fx, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 9 uses
  %.0128137 = phi i64 [ %i.fu, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ec = mul nsw i64 %.0127138, %i.b
  %i.ed = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !30
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  store double %i.ee, ptr %i.ef, align 8, !tbaa !30
  %i.eg = add nuw nsw i64 %.0127138, 4
  %i.eh = mul nsw i64 %i.eg, %i.b
  %i.ei = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !30
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store double %i.ej, ptr %i.el, align 8, !tbaa !30
  %i.em = add nuw nsw i64 %.0127138, 8
  %i.en = mul nsw i64 %i.em, %i.b
  %i.eo = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !30
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store double %i.ep, ptr %i.er, align 8, !tbaa !30
  %i.es = add nuw nsw i64 %.0127138, 12
  %i.et = mul nsw i64 %i.es, %i.b
  %i.eu = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !30
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store double %i.ev, ptr %i.ex, align 8, !tbaa !30
  %i.ey = add nuw nsw i64 %.0127138, 16
  %i.ez = mul nsw i64 %i.ey, %i.b
  %i.fa = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !30
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store double %i.fb, ptr %i.fd, align 8, !tbaa !30
  %i.fe = add nuw nsw i64 %.0127138, 20
  %i.ff = mul nsw i64 %i.fe, %i.b
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !30
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  store double %i.fh, ptr %i.fj, align 8, !tbaa !30
  %i.fk = add nuw nsw i64 %.0127138, 24
  %i.fl = mul nsw i64 %i.fk, %i.b
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !30
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  store double %i.fn, ptr %i.fp, align 8, !tbaa !30
  %i.fq = add nuw nsw i64 %.0127138, 28
  %i.fr = mul nsw i64 %i.fq, %i.b
  %i.fs = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !30
  %i.fu = add nuw nsw i64 %.0128137, 8            ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  store double %i.ft, ptr %i.fw, align 8, !tbaa !30
  %i.fx = add nuw nsw i64 %.0127138, 32           ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !56

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0127138.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.fx, %._crit_edge.loopexit.unr-lcssa ]
  %.0128137.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.fu, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod304)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0127138.epil = phi i64 [ %i.gd, %.lr.ph.epil ], [ %.0127138.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0128137.epil = phi i64 [ %i.gb, %.lr.ph.epil ], [ %.0128137.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fy = mul nsw i64 %.0127138.epil, %i.b
  %i.fz = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !30
  %i.gb = add nuw nsw i64 %.0128137.epil, 1
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137.epil
  store double %i.ga, ptr %i.gc, align 8, !tbaa !30
  %i.gd = add nuw nsw i64 %.0127138.epil, 4       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !57

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.0128.lcssa = phi i64 [ 0, %.preheader ], [ %i.ac, %.lr.ph.epil ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %.0127.lcssa = phi i64 [ 1, %.preheader ], [ %i.fx, %._crit_edge.loopexit.unr-lcssa ], [ %i.gd, %.lr.ph.epil ]
  %i.ge = sub nsw i64 %i.u, %.0127.lcssa          ; 2 uses
  %i.gf = icmp sgt i64 %i.ge, 0
  br i1 %i.gf, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %._crit_edge, %.lr.ph143
  %.1141 = phi i64 [ %i.gl, %.lr.ph143 ], [ %i.ge, %._crit_edge ] ; 3 uses
  %.1129140 = phi i64 [ %i.gj, %.lr.ph143 ], [ %.0128.lcssa, %._crit_edge ] ; 2 uses
  %i.gg = mul nsw i64 %.1141, %i.b
  %i.gh = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !30
  %i.gj = add nuw nsw i64 %.1129140, 1
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.1129140
  store double %i.gi, ptr %i.gk, align 8, !tbaa !30
  %i.gl = add nsw i64 %.1141, -4
  %i.gm = icmp samesign ugt i64 %.1141, 4
  br i1 %i.gm, label %.lr.ph143, label %._crit_edge144, !llvm.loop !58

._crit_edge144:                                   ; preds = %.lr.ph143, %._crit_edge
  %i.gn = load ptr, ptr %i.v, align 8, !tbaa !21  ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !33
  tail call void %i.gp(ptr noundef %i.gn, ptr noundef %i.s, ptr noundef %i.s) #5
  %i.gq = load ptr, ptr %i.w, align 8, !tbaa !20  ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !33
  tail call void %i.gs(ptr noundef %i.gq, ptr noundef %.0153, ptr noundef %.0126152) #5
  %i.gt = load double, ptr %.0126152, align 8, !tbaa !30 ; 2 uses
  %i.gu = load double, ptr %i.s, align 8, !tbaa !30
  %i.gv = fmul double %i.gu, 2.000000e+00         ; 2 uses
  %i.gw = fadd double %i.gt, %i.gv
  store double %i.gw, ptr %.0126152, align 8, !tbaa !30
  %i.gx = fsub double %i.gt, %i.gv
  %i.gy = getelementptr inbounds i8, ptr %.0126152, i64 %.reass
  store double %i.gx, ptr %i.gy, align 8, !tbaa !30
  br i1 %i.y, label %.lr.ph147.preheader, label %._crit_edge148

.lr.ph147.preheader:                              ; preds = %._crit_edge144
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx298
  br i1 %brmerge, label %.lr.ph147.preheader299, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph147.preheader
  %invariant.gep = getelementptr [8 x i8], ptr %.0126152, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gz = sub i64 %i.x, %index                    ; 2 uses
  %i.ha = or disjoint i64 %index, 1               ; 5 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ha
  %wide.load = load <2 x double>, ptr %i.hb, align 8, !tbaa !30, !alias.scope !70 ; 2 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.gz
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -8
  %wide.load273 = load <2 x double>, ptr %i.hd, align 8, !tbaa !30, !alias.scope !71
  %reverse = shufflevector <2 x double> %wide.load273, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.he = shl nuw nsw i64 %i.ha, 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.he
  %wide.vec = load <4 x double>, ptr %i.hf, align 8, !tbaa !30, !alias.scope !72 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec274 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hg = fmul <2 x double> %reverse, %strided.vec274
  %i.hh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %wide.load, <2 x double> %i.hg)
  %i.hi = fmul <2 x double> %i.hh, splat (double 2.000000e+00) ; 2 uses
  %i.hj = fneg <2 x double> %wide.load
  %i.hk = fmul <2 x double> %strided.vec274, %i.hj
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %reverse, <2 x double> %i.hk)
  %i.hm = fmul <2 x double> %i.hl, splat (double 2.000000e+00) ; 2 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.ha ; 2 uses
  %wide.load275 = load <2 x double>, ptr %i.hn, align 8, !tbaa !30, !alias.scope !73, !noalias !74 ; 2 uses
  %i.ho = fadd <2 x double> %wide.load275, %i.hi
  store <2 x double> %i.ho, ptr %i.hn, align 8, !tbaa !30, !alias.scope !73, !noalias !74
  %i.hp = fsub <2 x double> %wide.load275, %i.hi
  %i.hq = sub nuw nsw i64 %i.z, %i.ha
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.0126152, i64 %i.hq
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -8
  %reverse276 = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse276, ptr %i.hs, align 8, !tbaa !30, !alias.scope !75, !noalias !76
  %i.ht = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.gz
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -8 ; 2 uses
  %wide.load277 = load <2 x double>, ptr %i.hu, align 8, !tbaa !30, !alias.scope !77, !noalias !78 ; 2 uses
  %reverse278 = shufflevector <2 x double> %wide.load277, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hv = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse279 = fsub <2 x double> %wide.load277, %i.hv
  store <2 x double> %reverse279, ptr %i.hu, align 8, !tbaa !30, !alias.scope !77, !noalias !78
  %i.hw = fadd <2 x double> %i.hm, %reverse278
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ha
  store <2 x double> %i.hw, ptr %gep, align 8, !tbaa !30, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge148, label %.lr.ph147.preheader299

.lr.ph147.preheader299:                           ; preds = %.lr.ph147.preheader, %middle.block
  %.ph = phi i64 [ %i.ea, %middle.block ], [ %i.x, %.lr.ph147.preheader ]
  %.2145.ph = phi i64 [ %i.eb, %middle.block ], [ 1, %.lr.ph147.preheader ]
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader299, %.lr.ph147
  %i.hy = phi i64 [ %i.jj, %.lr.ph147 ], [ %.ph, %.lr.ph147.preheader299 ] ; 2 uses
  %.2145 = phi i64 [ %i.ji, %.lr.ph147 ], [ %.2145.ph, %.lr.ph147.preheader299 ] ; 6 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.2145
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !30 ; 2 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hy
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !30 ; 2 uses
  %.idx135 = shl nuw nsw i64 %.2145, 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx135
  %i.ie = fneg double %i.ia
  %i.if = load <2 x double>, ptr %i.id, align 8, !tbaa !30 ; 2 uses
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ih = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.ie, i64 1
  %i.ij = fmul <2 x double> %i.ig, %i.ii
  %i.ik = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.im = insertelement <2 x double> %i.il, double %i.ic, i64 1
  %i.in = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %i.im, <2 x double> %i.ij) ; 2 uses
  %i.io = extractelement <2 x double> %i.in, i64 0
  %i.ip = fmul double %i.io, 2.000000e+00         ; 2 uses
  %i.iq = extractelement <2 x double> %i.in, i64 1
  %i.ir = fmul double %i.iq, 2.000000e+00         ; 2 uses
  %i.is = mul nsw i64 %.2145, %i.d
  %i.it = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.is ; 2 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !30 ; 2 uses
  %i.iv = fadd double %i.iu, %i.ip
  store double %i.iv, ptr %i.it, align 8, !tbaa !30
  %i.iw = fsub double %i.iu, %i.ip
  %i.ix = sub nuw nsw i64 %i.z, %.2145
  %i.iy = mul nsw i64 %i.ix, %i.d
  %i.iz = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.iy
  store double %i.iw, ptr %i.iz, align 8, !tbaa !30
  %i.ja = mul nsw i64 %i.hy, %i.d
  %i.jb = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.ja ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !30 ; 2 uses
  %i.jd = fsub double %i.jc, %i.ir
  store double %i.jd, ptr %i.jb, align 8, !tbaa !30
  %i.je = fadd double %i.ir, %i.jc
  %i.jf = add nuw nsw i64 %.2145, %i.g
  %i.jg = mul nsw i64 %i.jf, %i.d
  %i.jh = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.jg
  store double %i.je, ptr %i.jh, align 8, !tbaa !30
  %i.ji = add nuw nsw i64 %.2145, 1               ; 4 uses
  %i.jj = sub nsw i64 %i.g, %i.ji                 ; 3 uses
  %i.jk = icmp slt i64 %i.ji, %i.jj
  br i1 %i.jk, label %.lr.ph147, label %._crit_edge148, !llvm.loop !68

._crit_edge148:                                   ; preds = %.lr.ph147, %middle.block, %._crit_edge144
  %.2.lcssa = phi i64 [ 1, %._crit_edge144 ], [ %i.eb, %middle.block ], [ %i.ji, %.lr.ph147 ] ; 5 uses
  %.lcssa = phi i64 [ %i.x, %._crit_edge144 ], [ %i.ea, %middle.block ], [ %i.jj, %.lr.ph147 ]
  %i.jl = icmp eq i64 %.2.lcssa, %.lcssa
  br i1 %i.jl, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge148
  %.idx134 = shl nuw nsw i64 %.2.lcssa, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx134
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !30
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.2.lcssa
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !30
  %i.jq = fmul double %i.jn, %i.jp
  %i.jr = fmul double %i.jq, 2.000000e+00         ; 2 uses
  %i.js = mul nsw i64 %.2.lcssa, %i.d
  %i.jt = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.js ; 2 uses
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !30 ; 2 uses
  %i.jv = fadd double %i.ju, %i.jr
  store double %i.jv, ptr %i.jt, align 8, !tbaa !30
  %i.jw = fsub double %i.ju, %i.jr
  %i.jx = sub nsw i64 %i.z, %.2.lcssa
  %i.jy = mul nsw i64 %i.jx, %i.d
  %i.jz = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.jy
  store double %i.jw, ptr %i.jz, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge148, %bb.b
  %i.ka = add nuw nsw i64 %.0130151, 1            ; 2 uses
  %i.kb = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.k
  %i.kc = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.m
  %exitcond159.not = icmp eq i64 %i.ka, %i.i
  br i1 %exitcond159.not, label %._crit_edge154, label %.preheader, !llvm.loop !69

._crit_edge154:                                   ; preds = %bb.c, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.s) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_o(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 8 uses
  %i.g = sdiv i64 %i.f, 2                         ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 6 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16 ; 3 uses
  %i.r = shl i64 %i.g, 3
  %i.s = tail call ptr @fftw_malloc_plain(i64 noundef %i.r) #5 ; 24 uses
  %i.t = icmp sgt i64 %i.i, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge169

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i64 %i.f, 1
  %i.v = shl i64 %i.f, 1
  %i.w = add i64 %i.v, -2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = add nsw i64 %i.g, -1                     ; 11 uses
  %i.aa = icmp sgt i64 %i.f, 3
  %i.ab = mul nsw i64 %i.z, %i.d                  ; 2 uses
  %i.ac = icmp sgt i64 %i.f, 5
  %i.ad = shl nuw nsw i64 %i.g, 1                 ; 3 uses
  %i.ae = add i64 %i.f, -2                        ; 2 uses
  %i.af = lshr i64 %i.ae, 2                       ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.z, i64 1) ; 7 uses
  %i.ah = add nuw i64 %i.i, 2305843009213693951
  %i.ai = mul i64 %i.m, %i.ah
  %i.aj = shl i64 %i.ai, 3                        ; 3 uses
  %i.ak = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.al = icmp sgt i64 %i.f, 9
  %umin = zext i1 %i.al to i64                    ; 2 uses
  %i.am = add nsw i64 %i.ak, -4
  %i.an = sub i64 %i.am, %umin
  %i.ao = lshr i64 %i.an, 1
  %i.ap = add nuw i64 %i.ao, %umin                ; 2 uses
  %i.aq = shl i64 %i.ap, 3                        ; 6 uses
  %i.ar = getelementptr i8, ptr %2, i64 %i.aj
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.aq
  %scevgep = getelementptr i8, ptr %i.as, i64 8   ; 3 uses
  %i.at = shl i64 %i.m, 3                         ; 3 uses
  %i.au = shl i64 %i.g, 4                         ; 2 uses
  %i.av = add i64 %i.au, -16
  %i.aw = sub i64 %i.av, %i.aq
  %scevgep188 = getelementptr i8, ptr %2, i64 %i.aw ; 3 uses
  %i.ax = getelementptr i8, ptr %2, i64 %i.aj
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.au
  %scevgep189 = getelementptr i8, ptr %i.ay, i64 -8 ; 3 uses
  %i.az = shl i64 %i.g, 3                         ; 5 uses
  %i.ba = add i64 %i.az, -16
  %i.bb = sub i64 %i.ba, %i.aq
  %scevgep190 = getelementptr i8, ptr %2, i64 %i.bb
  %i.bc = add i64 %i.aj, %i.az                    ; 2 uses
  %i.bd = getelementptr i8, ptr %2, i64 %i.bc
  %scevgep192 = getelementptr i8, ptr %2, i64 %i.az ; 5 uses
  %i.be = getelementptr i8, ptr %2, i64 %i.bc
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.aq  ; 2 uses
  %i.bg = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %i.bh = insertelement <2 x ptr> %i.bg, ptr %i.bf, i64 1
  %i.bi = getelementptr i8, <2 x ptr> %i.bh, <2 x i64> <i64 -8, i64 8> ; 3 uses
  %scevgep193 = getelementptr i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bj = add i64 %i.az, -8
  %i.bk = sub i64 %i.bj, %i.aq
  %scevgep194 = getelementptr i8, ptr %i.s, i64 %i.bk ; 4 uses
  %scevgep195 = getelementptr i8, ptr %i.s, i64 %i.az ; 4 uses
  %scevgep196 = getelementptr i8, ptr %i.s, i64 8 ; 4 uses
  %i.bl = getelementptr i8, ptr %i.s, i64 %i.aq   ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.bl, i64 16
  %i.bm = shl i64 %i.ap, 4
  %i.bn = getelementptr i8, ptr %i.p, i64 %i.bm   ; 2 uses
  %i.bo = insertelement <2 x ptr> poison, ptr %i.bl, i64 0
  %i.bp = insertelement <2 x ptr> %i.bo, ptr %i.bn, i64 1
  %i.bq = getelementptr i8, <2 x ptr> %i.bp, i64 16 ; 2 uses
  %scevgep198 = getelementptr i8, ptr %i.bn, i64 16 ; 3 uses
  %i.br = add nsw i64 %i.i, -1                    ; 2 uses
  %i.bs = mul i64 %i.m, %i.br
  %i.bt = add i64 %i.bs, %smax
  %i.bu = shl i64 %i.bt, 3
  %scevgep301 = getelementptr i8, ptr %2, i64 %i.bu
  %scevgep302 = getelementptr i8, ptr %1, i64 8
  %i.bv = mul i64 %i.k, %i.br
  %i.bw = add i64 %i.bv, %smax
  %i.bx = shl i64 %i.bw, 3
  %i.by = getelementptr i8, ptr %1, i64 %i.bx
  %scevgep303 = getelementptr i8, ptr %i.by, i64 8
  %i.bz = insertelement <4 x ptr> poison, ptr %scevgep190, i64 0 ; 3 uses
  %i.ca = shufflevector <4 x ptr> %i.bz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cb = insertelement <4 x ptr> poison, ptr %scevgep193, i64 0
  %i.cc = insertelement <4 x ptr> %i.cb, ptr %scevgep195, i64 1
  %i.cd = insertelement <4 x ptr> poison, ptr %scevgep192, i64 0
  %i.ce = insertelement <4 x ptr> %i.cd, ptr %scevgep194, i64 1
  %i.cf = insertelement <4 x ptr> %i.ce, ptr %scevgep196, i64 2
  %i.cg = insertelement <4 x ptr> %i.cf, ptr %i.p, i64 3
  %i.ch = insertelement <4 x ptr> poison, ptr %scevgep188, i64 0
  %i.ci = shufflevector <4 x ptr> %i.ch, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cj = insertelement <4 x ptr> %i.bz, ptr %scevgep192, i64 1
  %i.ck = insertelement <4 x ptr> %i.cj, ptr %scevgep194, i64 2
  %i.cl = insertelement <4 x ptr> %i.ck, ptr %scevgep196, i64 3
  %i.cm = insertelement <4 x ptr> poison, ptr %scevgep189, i64 0
  %i.cn = shufflevector <4 x ptr> %i.cm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.co = insertelement <4 x ptr> poison, ptr %2, i64 0
  %i.cp = shufflevector <4 x ptr> %i.co, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cq = insertelement <4 x ptr> %i.bz, ptr %scevgep188, i64 1
  %i.cr = insertelement <4 x ptr> %i.cq, ptr %scevgep192, i64 2
  %i.cs = insertelement <4 x ptr> %i.cr, ptr %scevgep194, i64 3
  %i.ct = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.cu = shufflevector <4 x ptr> %i.ct, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cv = insertelement <2 x ptr> poison, ptr %scevgep194, i64 0
  %i.cw = insertelement <2 x ptr> %i.cv, ptr %scevgep196, i64 1
  %i.cx = insertelement <2 x ptr> poison, ptr %scevgep193, i64 0
  %i.cy = shufflevector <2 x ptr> %i.cx, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x ptr> poison, ptr %scevgep192, i64 0
  %i.da = shufflevector <2 x ptr> %i.cz, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.db = insertelement <2 x ptr> poison, ptr %scevgep195, i64 0
  %i.dc = shufflevector <2 x ptr> %i.bq, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dd = shufflevector <4 x ptr> %i.cc, <4 x ptr> %i.dc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.de = shufflevector <2 x ptr> %i.db, <2 x ptr> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.df = shufflevector <2 x ptr> %i.bi, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dg = shufflevector <2 x ptr> %i.bi, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dh = add nuw nsw i64 %i.af, 1                ; 2 uses
  %xtraiter = and i64 %i.dh, 7                    ; 3 uses
  %i.di = icmp ult i64 %i.ae, 28
  %unroll_iter = and i64 %i.dh, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod349 = icmp ne i64 %xtraiter, 0
  %min.iters.check310 = icmp slt i64 %i.f, 34
  %ident.check298 = icmp ne i64 %i.d, 1
  %ident.check299 = icmp ne i64 %i.b, 1
  %i.dj = or i1 %ident.check298, %ident.check299
  %bound0304 = icmp ult ptr %2, %scevgep303
end_hunk_0
begin_hunk_1_@apply_o:bb.a
  %.1151 = phi i64 [ %i.hy, %.lr.ph153 ], [ %i.hq, %._crit_edge ] ; 3 uses
  %.1141150 = phi i64 [ %i.hw, %.lr.ph153 ], [ %.0140.lcssa, %._crit_edge ] ; 2 uses
  %i.hs = mul nsw i64 %.1151, %i.b
  %i.ht = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !30
  %i.hv = fneg double %i.hu
  %i.hw = add nuw nsw i64 %.1141150, 1
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.1141150
  store double %i.hv, ptr %i.hx, align 8, !tbaa !30
  %i.hy = add nsw i64 %.1151, -4
  %i.hz = icmp samesign ugt i64 %.1151, 4
  br i1 %i.hz, label %.lr.ph153, label %._crit_edge154, !llvm.loop !83

._crit_edge154:                                   ; preds = %.lr.ph153, %._crit_edge
  %i.ia = load ptr, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !33
  tail call void %i.ic(ptr noundef %i.ia, ptr noundef %i.s, ptr noundef %i.s) #5
  %i.id = load ptr, ptr %i.y, align 8, !tbaa !20  ; 3 uses
  %i.ie = icmp eq ptr %.0167, %.0138165
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 56
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !33 ; 2 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.b ; 3 uses
  br i1 %i.ie, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge154
  tail call void %i.ig(ptr noundef %i.id, ptr noundef %i.ih, ptr noundef %i.ih) #5
  br i1 %i.aa, label %.lr.ph157.preheader, label %.loopexit.thread

.lr.ph157.preheader:                              ; preds = %bb.b
  %brmerge = select i1 %min.iters.check310, i1 true, i1 %i.dj
  %brmerge358 = select i1 %brmerge, i1 true, i1 %i.dn
  br i1 %brmerge358, label %.lr.ph157.preheader344, label %vector.body313

vector.body313:                                   ; preds = %.lr.ph157.preheader, %vector.body313
  %index314 = phi i64 [ %index.next317, %vector.body313 ], [ 0, %.lr.ph157.preheader ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %.0167, i64 %index314 ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 8
  %i.ik = getelementptr i8, ptr %i.ii, i64 24
  %wide.load315 = load <2 x double>, ptr %i.ij, align 8, !tbaa !30, !alias.scope !101
  %wide.load316 = load <2 x double>, ptr %i.ik, align 8, !tbaa !30, !alias.scope !101
  %i.il = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %index314 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <2 x double> %wide.load315, ptr %i.il, align 8, !tbaa !30, !alias.scope !102, !noalias !101
  store <2 x double> %wide.load316, ptr %i.im, align 8, !tbaa !30, !alias.scope !102, !noalias !101
  %index.next317 = add nuw i64 %index314, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next317, %n.vec312
  br i1 %i.in, label %middle.block318, label %vector.body313, !llvm.loop !87

middle.block318:                                  ; preds = %vector.body313
  br i1 %cmp.n319, label %.loopexit, label %.lr.ph157.preheader344

.lr.ph157.preheader344:                           ; preds = %.lr.ph157.preheader, %middle.block318
  %.2155.ph = phi i64 [ 0, %.lr.ph157.preheader ], [ %n.vec312, %middle.block318 ] ; 4 uses
  %i.io = sub nsw i64 %smax, %.2155.ph
  %xtraiter350 = and i64 %i.io, 7                 ; 2 uses
  %lcmp.mod351.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod351.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol

.lr.ph157.prol:                                   ; preds = %.lr.ph157.preheader344, %.lr.ph157.prol
  %.2155.prol = phi i64 [ %i.ip, %.lr.ph157.prol ], [ %.2155.ph, %.lr.ph157.preheader344 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph157.prol ], [ 0, %.lr.ph157.preheader344 ]
  %i.ip = add nuw nsw i64 %.2155.prol, 1          ; 3 uses
  %i.iq = mul nsw i64 %i.ip, %i.b
  %i.ir = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.iq
  %i.is = load double, ptr %i.ir, align 8, !tbaa !30
  %i.it = mul nsw i64 %.2155.prol, %i.d
  %i.iu = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.it
  store double %i.is, ptr %i.iu, align 8, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter350
  br i1 %prol.iter.cmp.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol, !llvm.loop !88

.lr.ph157.prol.loopexit:                          ; preds = %.lr.ph157.prol, %.lr.ph157.preheader344
  %.2155.unr = phi i64 [ %.2155.ph, %.lr.ph157.preheader344 ], [ %i.ip, %.lr.ph157.prol ]
  %i.iv = sub nsw i64 %.2155.ph, %smax
  %i.iw = icmp ugt i64 %i.iv, -8
  br i1 %i.iw, label %.loopexit, label %.lr.ph157

.loopexit.thread:                                 ; preds = %bb.b
  %i.ix = load double, ptr %i.s, align 8, !tbaa !30
  %i.iy = fmul double %i.ix, 2.000000e+00
  %i.iz = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.ab
  store double %i.iy, ptr %i.iz, align 8, !tbaa !30
  br label %._crit_edge161

.lr.ph157:                                        ; preds = %.lr.ph157.prol.loopexit, %.lr.ph157
  %.2155 = phi i64 [ %i.kq, %.lr.ph157 ], [ %.2155.unr, %.lr.ph157.prol.loopexit ] ; 9 uses
  %i.ja = add nuw nsw i64 %.2155, 1               ; 2 uses
  %i.jb = mul nsw i64 %i.ja, %i.b
  %i.jc = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !30
  %i.je = mul nsw i64 %.2155, %i.d
  %i.jf = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.je
  store double %i.jd, ptr %i.jf, align 8, !tbaa !30
  %i.jg = add nuw nsw i64 %.2155, 2               ; 2 uses
  %i.jh = mul nsw i64 %i.jg, %i.b
  %i.ji = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !30
  %i.jk = mul nsw i64 %i.ja, %i.d
  %i.jl = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.jk
  store double %i.jj, ptr %i.jl, align 8, !tbaa !30
  %i.jm = add nuw nsw i64 %.2155, 3               ; 2 uses
  %i.jn = mul nsw i64 %i.jm, %i.b
  %i.jo = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.jn
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !30
  %i.jq = mul nsw i64 %i.jg, %i.d
  %i.jr = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.jq
  store double %i.jp, ptr %i.jr, align 8, !tbaa !30
  %i.js = add nuw nsw i64 %.2155, 4               ; 2 uses
  %i.jt = mul nsw i64 %i.js, %i.b
  %i.ju = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.jt
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !30
  %i.jw = mul nsw i64 %i.jm, %i.d
  %i.jx = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.jw
  store double %i.jv, ptr %i.jx, align 8, !tbaa !30
  %i.jy = add nuw nsw i64 %.2155, 5               ; 2 uses
  %i.jz = mul nsw i64 %i.jy, %i.b
  %i.ka = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !30
  %i.kc = mul nsw i64 %i.js, %i.d
  %i.kd = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.kc
  store double %i.kb, ptr %i.kd, align 8, !tbaa !30
  %i.ke = add nuw nsw i64 %.2155, 6               ; 2 uses
  %i.kf = mul nsw i64 %i.ke, %i.b
  %i.kg = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.kf
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !30
  %i.ki = mul nsw i64 %i.jy, %i.d
  %i.kj = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.ki
  store double %i.kh, ptr %i.kj, align 8, !tbaa !30
  %i.kk = add nuw nsw i64 %.2155, 7               ; 2 uses
  %i.kl = mul nsw i64 %i.kk, %i.b
  %i.km = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.kl
  %i.kn = load double, ptr %i.km, align 8, !tbaa !30
  %i.ko = mul nsw i64 %i.ke, %i.d
  %i.kp = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.ko
  store double %i.kn, ptr %i.kp, align 8, !tbaa !30
  %i.kq = add nuw nsw i64 %.2155, 8               ; 3 uses
  %i.kr = mul nsw i64 %i.kq, %i.b
  %i.ks = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.kr
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !30
  %i.ku = mul nsw i64 %i.kk, %i.d
  %i.kv = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.ku
  store double %i.kt, ptr %i.kv, align 8, !tbaa !30
  %exitcond174.not.7 = icmp eq i64 %i.kq, %smax
  br i1 %exitcond174.not.7, label %.loopexit, label %.lr.ph157, !llvm.loop !89

bb.c:                                             ; preds = %._crit_edge154
  tail call void %i.ig(ptr noundef %i.id, ptr noundef %i.ih, ptr noundef %.0138165) #5
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph157.prol.loopexit, %.lr.ph157, %middle.block318, %bb.c
  %i.kw = load double, ptr %i.s, align 8, !tbaa !30
  %i.kx = fmul double %i.kw, 2.000000e+00
  %i.ky = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.ab
  store double %i.kx, ptr %i.ky, align 8, !tbaa !30
  br i1 %i.ac, label %.lr.ph160.preheader, label %._crit_edge161

.lr.ph160.preheader:                              ; preds = %.loopexit
  %or.cond.not = xor i1 %or.cond, true
  %brmerge359 = select i1 %or.cond.not, i1 true, i1 %op.rdx341
  br i1 %brmerge359, label %.lr.ph160.preheader343, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph160.preheader
  %i.kz = getelementptr [8 x i8], ptr %.0138165, i64 %i.ad
  %invariant.gep = getelementptr [8 x i8], ptr %.0138165, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.la = sub i64 %i.z, %index
  %i.lb = or disjoint i64 %index, 1               ; 4 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.lb
  %wide.load = load <2 x double>, ptr %i.lc, align 8, !tbaa !30, !alias.scope !103 ; 2 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.la
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 -8
  %wide.load289 = load <2 x double>, ptr %i.le, align 8, !tbaa !30, !alias.scope !104
  %reverse = shufflevector <2 x double> %wide.load289, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lf = shl nuw nsw i64 %i.lb, 4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.lf
  %wide.vec = load <4 x double>, ptr %i.lg, align 8, !tbaa !30, !alias.scope !105 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec290 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.lh = fmul <2 x double> %reverse, %strided.vec290
  %i.li = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %wide.load, <2 x double> %i.lh)
  %i.lj = fmul <2 x double> %i.li, splat (double 2.000000e+00) ; 2 uses
  %i.lk = fneg <2 x double> %reverse
  %i.ll = fmul <2 x double> %strided.vec, %i.lk
  %i.lm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec290, <2 x double> %wide.load, <2 x double> %i.ll)
  %i.ln = fmul <2 x double> %i.lm, splat (double 2.000000e+00) ; 2 uses
  %i.lo = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %index ; 2 uses
  %wide.load291 = load <2 x double>, ptr %i.lo, align 8, !tbaa !30, !alias.scope !106, !noalias !107 ; 2 uses
  %i.lp = fadd <2 x double> %wide.load291, %i.ln
  store <2 x double> %i.lp, ptr %i.lo, align 8, !tbaa !30, !alias.scope !106, !noalias !107
  %i.lq = fsub <2 x double> %i.ln, %wide.load291
  %i.lr = xor i64 %index, -2
  %i.ls = getelementptr [8 x i8], ptr %i.kz, i64 %i.lr
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -8
  %reverse292 = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse292, ptr %i.lt, align 8, !tbaa !30, !alias.scope !108, !noalias !109
  %i.lu = sub nuw nsw i64 %i.z, %i.lb
  %i.lv = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.lu
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 -8 ; 2 uses
  %wide.load293 = load <2 x double>, ptr %i.lw, align 8, !tbaa !30, !alias.scope !110, !noalias !111 ; 2 uses
  %reverse294 = shufflevector <2 x double> %wide.load293, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lx = shufflevector <2 x double> %i.lj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse295 = fadd <2 x double> %i.lx, %wide.load293
  store <2 x double> %reverse295, ptr %i.lw, align 8, !tbaa !30, !alias.scope !110, !noalias !111
  %i.ly = fsub <2 x double> %i.lj, %reverse294
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.lb
  store <2 x double> %i.ly, ptr %gep, align 8, !tbaa !30, !alias.scope !112, !noalias !113
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.lz = icmp eq i64 %index.next, %n.vec
  br i1 %i.lz, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge161, label %.lr.ph160.preheader343

.lr.ph160.preheader343:                           ; preds = %.lr.ph160.preheader, %middle.block
  %.ph = phi i64 [ %i.fm, %middle.block ], [ %i.z, %.lr.ph160.preheader ]
  %.3158.ph = phi i64 [ %i.fn, %middle.block ], [ 1, %.lr.ph160.preheader ]
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader343, %.lr.ph160
  %i.ma = phi i64 [ %i.nn, %.lr.ph160 ], [ %.ph, %.lr.ph160.preheader343 ]
  %.3158 = phi i64 [ %i.nm, %.lr.ph160 ], [ %.3158.ph, %.lr.ph160.preheader343 ] ; 7 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.3158
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !30
  %i.md = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ma
  %i.me = load double, ptr %i.md, align 8, !tbaa !30 ; 2 uses
  %.idx146 = shl nuw nsw i64 %.3158, 4
  %i.mf = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx146
  %i.mg = fneg double %i.me
  %i.mh = load <2 x double>, ptr %i.mf, align 8, !tbaa !30 ; 2 uses
  %i.mi = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.me, i64 1
  %i.mk = fmul <2 x double> %i.mh, %i.mj
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mm = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.mn = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mh, <2 x double> %i.mn, <2 x double> %i.ml) ; 2 uses
  %i.mp = extractelement <2 x double> %i.mo, i64 0
  %i.mq = fmul double %i.mp, 2.000000e+00         ; 2 uses
  %i.mr = extractelement <2 x double> %i.mo, i64 1
  %i.ms = fmul double %i.mr, 2.000000e+00         ; 2 uses
  %i.mt = add nsw i64 %.3158, -1
  %i.mu = mul nsw i64 %i.mt, %i.d
  %i.mv = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.mu ; 2 uses
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !30 ; 2 uses
  %i.mx = fadd double %i.mw, %i.ms
  store double %i.mx, ptr %i.mv, align 8, !tbaa !30
  %i.my = fsub double %i.ms, %i.mw
  %i.mz = xor i64 %.3158, -1
  %i.na = add nsw i64 %i.ad, %i.mz
  %i.nb = mul nsw i64 %i.na, %i.d
  %i.nc = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.nb
  store double %i.my, ptr %i.nc, align 8, !tbaa !30
  %i.nd = sub nuw nsw i64 %i.z, %.3158
  %i.ne = mul nsw i64 %i.nd, %i.d
  %i.nf = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.ne ; 2 uses
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !30 ; 2 uses
  %i.nh = fadd double %i.mq, %i.ng
  store double %i.nh, ptr %i.nf, align 8, !tbaa !30
  %i.ni = fsub double %i.mq, %i.ng
  %i.nj = add nuw nsw i64 %.3158, %i.z
  %i.nk = mul nsw i64 %i.nj, %i.d
  %i.nl = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.nk
  store double %i.ni, ptr %i.nl, align 8, !tbaa !30
  %i.nm = add nuw nsw i64 %.3158, 1               ; 4 uses
  %i.nn = sub nsw i64 %i.g, %i.nm                 ; 3 uses
  %i.no = icmp slt i64 %i.nm, %i.nn
  br i1 %i.no, label %.lr.ph160, label %._crit_edge161, !llvm.loop !99

._crit_edge161:                                   ; preds = %.lr.ph160, %middle.block, %.loopexit.thread, %.loopexit
  %.3.lcssa = phi i64 [ 1, %.loopexit ], [ 1, %.loopexit.thread ], [ %i.fn, %middle.block ], [ %i.nm, %.lr.ph160 ] ; 5 uses
  %.lcssa = phi i64 [ %i.z, %.loopexit ], [ %i.z, %.loopexit.thread ], [ %i.fm, %middle.block ], [ %i.nn, %.lr.ph160 ]
  %i.np = icmp eq i64 %.3.lcssa, %.lcssa
  br i1 %i.np, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge161
  %.idx = shl nuw nsw i64 %.3.lcssa, 4
  %i.nq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !30
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.3.lcssa
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !30
  %i.nv = fmul double %i.ns, %i.nu
  %i.nw = fmul double %i.nv, 2.000000e+00         ; 2 uses
  %i.nx = add nsw i64 %.3.lcssa, -1
  %i.ny = mul nsw i64 %i.nx, %i.d
  %i.nz = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.ny ; 2 uses
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !30 ; 2 uses
  %i.ob = fadd double %i.oa, %i.nw
  store double %i.ob, ptr %i.nz, align 8, !tbaa !30
  %i.oc = fsub double %i.nw, %i.oa
  %i.od = xor i64 %.3.lcssa, -1
  %i.oe = add i64 %i.ad, %i.od
  %i.of = mul nsw i64 %i.oe, %i.d
  %i.og = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.of
  store double %i.oc, ptr %i.og, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge161, %bb.d
  %i.oh = add nuw nsw i64 %.0142164, 1            ; 2 uses
  %i.oi = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.k
  %i.oj = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.m
  %exitcond175.not = icmp eq i64 %i.oh, %i.i
  br i1 %exitcond175.not, label %._crit_edge169, label %.preheader, !llvm.loop !100

._crit_edge169:                                   ; preds = %bb.e, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.s) #5
  ret void
}

declare i32 @fftw_tensor_tornk1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_zero(ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_madd2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @fftw_twiddle_awake(i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!14 = !{!"plan_s", !9, i64 0, !13, i64 8, !12, i64 40, !6, i64 48, !6, i64 52}
!15 = !{!"", !14, i64 0, !9, i64 56}
!16 = !{!"p1 _ZTS6plan_s", !9, i64 0}
!17 = !{!"p1 _ZTS6twid_s", !9, i64 0}
!18 = !{!"", !15, i64 0, !16, i64 64, !16, i64 72, !17, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128}
!19 = !{!18, !11, i64 104}
!20 = !{!18, !16, i64 64}
!21 = !{!18, !16, i64 72}
!22 = !{!18, !17, i64 80}
!23 = !{!18, !11, i64 112}
!24 = !{!18, !11, i64 88}
!25 = !{!18, !11, i64 96}
!26 = !{!18, !11, i64 120}
!27 = !{!18, !11, i64 128}
!28 = !{!"twid_s", !10, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !9, i64 40, !17, i64 48, !6, i64 56}
!29 = !{!28, !10, i64 0}
!30 = !{!12, !12, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!15, !9, i64 56}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"problem_s", !9, i64 0}
!37 = !{!"", !36, i64 0, !9, i64 8, !9, i64 16, !10, i64 24, !10, i64 32, !5, i64 40}
!38 = !{!37, !9, i64 8}
!39 = !{!"", !6, i64 0, !5, i64 8}
!40 = !{!39, !6, i64 0}
!41 = !{!37, !9, i64 16}
!42 = !{!6, !6, i64 0}
!43 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!44 = !{!43, !11, i64 0}
!45 = !{!37, !10, i64 24}
!46 = !{!37, !10, i64 32}
!47 = !{!43, !11, i64 8}
!48 = !{!43, !11, i64 16}
!49 = !{!11, !11, i64 0}
!50 = !{!13, !12, i64 0}
!51 = !{!13, !12, i64 8}
!52 = !{!13, !12, i64 24}
!53 = !{!18, !9, i64 56}
!54 = !{!"printer_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36}
!55 = !{!54, !9, i64 0}
!56 = distinct !{!56, !31}
!57 = distinct !{!57, !32}
!58 = distinct !{!58, !31}
!59 = distinct !{!59, !"LVerDomain"}
!60 = distinct !{!60, !59}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !59}
!63 = distinct !{!63, !59}
!64 = distinct !{!64, !59}
!65 = distinct !{!65, !59}
!66 = distinct !{!66, !59}
!67 = distinct !{!67, !31, !34, !35}
!68 = distinct !{!68, !31, !34}
!69 = distinct !{!69, !31}
!70 = !{!60}
!71 = !{!61}
!72 = !{!62}
!73 = !{!63}
!74 = !{!66, !65, !64, !61, !60, !62}
!75 = !{!66}
!76 = !{!65, !64, !61, !60, !62}
!77 = !{!65}
!78 = !{!64, !61, !60, !62}
!79 = !{!64}
!80 = !{!61, !60, !62}
!81 = distinct !{!81, !31}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, !31}
!84 = distinct !{!84, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !31, !34, !35}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !31, !34}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !90}
!94 = distinct !{!94, !90}
!95 = distinct !{!95, !90}
!96 = distinct !{!96, !90}
!97 = distinct !{!97, !90}
!98 = distinct !{!98, !31, !34, !35}
!99 = distinct !{!99, !31, !34}
!100 = distinct !{!100, !31}
!101 = !{!85}
!102 = !{!86}
!103 = !{!91}
!104 = !{!92}
!105 = !{!93}
!106 = !{!94}
!107 = !{!97, !96, !95, !92, !91, !93}
!108 = !{!97}
!109 = !{!96, !95, !92, !91, !93}
!110 = !{!96}
!111 = !{!95, !92, !91, !93}
end_hunk_1
