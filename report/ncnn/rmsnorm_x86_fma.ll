inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4ncnnL7rmsnormEPfPKffii:bb.a
  %i.de = lshr i32 %i.dd, 3
  %i.df = add nuw nsw i32 %i.de, 1                ; 2 uses
  %xtraiter505 = and i32 %i.df, 3                 ; 3 uses
  %i.dg = icmp ult i32 %i.dd, 24
  br i1 %i.dg, label %.lr.ph274.epil.preheader, label %.lr.ph274.preheader.new

.lr.ph274.preheader.new:                          ; preds = %.lr.ph274.preheader
  %unroll_iter510 = and i32 %i.df, 1073741820
  br label %.lr.ph274

bb.e:                                             ; preds = %.thread199
  %or.cond = and i1 %i.br, %i.b
  br i1 %or.cond, label %.lr.ph235.preheader, label %.loopexit212

.lr.ph235.preheader:                              ; preds = %bb.e
  %i.dh = add nsw i32 %i.a, -8                    ; 3 uses
  %i.di = lshr exact i32 %i.dh, 3
  %i.dj = add nuw nsw i32 %i.di, 1                ; 2 uses
  %i.dk = icmp eq i32 %i.dh, 0
  br i1 %i.dk, label %.lr.ph235.epil.preheader, label %.lr.ph235.preheader.new

.lr.ph235.preheader.new:                          ; preds = %.lr.ph235.preheader
  %unroll_iter501 = and i32 %i.dj, 1073741822
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235, %.lr.ph235.preheader.new
  %.0234 = phi ptr [ %0, %.lr.ph235.preheader.new ], [ %i.dz, %.lr.ph235 ] ; 4 uses
  %.0135233 = phi ptr [ %1, %.lr.ph235.preheader.new ], [ %i.ea, %.lr.ph235 ] ; 3 uses
  %niter502 = phi i32 [ 0, %.lr.ph235.preheader.new ], [ %niter502.next.1, %.lr.ph235 ]
  %i.dl = load <8 x float>, ptr %.0234, align 1, !tbaa !54
  %i.dm = load float, ptr %.0135233, align 4, !tbaa !59
  %i.dn = insertelement <8 x float> poison, float %i.dm, i64 0
  %i.do = shufflevector <8 x float> %i.dn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dp = fmul fast <8 x float> %i.dl, %.3194
  %i.dq = fmul fast <8 x float> %i.dp, %i.do
  store <8 x float> %i.dq, ptr %.0234, align 1, !tbaa !54
  %i.dr = getelementptr inbounds nuw i8, ptr %.0234, i64 32 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0135233, i64 4
  %i.dt = load <8 x float>, ptr %i.dr, align 1, !tbaa !54
  %i.du = load float, ptr %i.ds, align 4, !tbaa !59
  %i.dv = insertelement <8 x float> poison, float %i.du, i64 0
  %i.dw = shufflevector <8 x float> %i.dv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dx = fmul fast <8 x float> %i.dt, %.3194
  %i.dy = fmul fast <8 x float> %i.dx, %i.dw
  store <8 x float> %i.dy, ptr %i.dr, align 1, !tbaa !54
  %i.dz = getelementptr inbounds nuw i8, ptr %.0234, i64 64 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0135233, i64 8 ; 3 uses
  %niter502.next.1 = add i32 %niter502, 2         ; 2 uses
  %niter502.ncmp.1.not = icmp eq i32 %niter502.next.1, %unroll_iter501
  br i1 %niter502.ncmp.1.not, label %.loopexit212.loopexit.unr-lcssa, label %.lr.ph235, !llvm.loop !67

.loopexit212.loopexit.unr-lcssa:                  ; preds = %.lr.ph235
  %i.eb = and i32 %i.dh, 8
  %lcmp.mod497.not.not = icmp eq i32 %i.eb, 0
  br i1 %lcmp.mod497.not.not, label %.lr.ph235.epil.preheader, label %.loopexit212

.lr.ph235.epil.preheader:                         ; preds = %.loopexit212.loopexit.unr-lcssa, %.lr.ph235.preheader
  %.0234.epil.init = phi ptr [ %0, %.lr.ph235.preheader ], [ %i.dz, %.loopexit212.loopexit.unr-lcssa ] ; 3 uses
  %.0135233.epil.init = phi ptr [ %1, %.lr.ph235.preheader ], [ %i.ea, %.loopexit212.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod500 = trunc i32 %i.dj to i1
  tail call void @llvm.assume(i1 %lcmp.mod500)
  %i.ec = load <8 x float>, ptr %.0234.epil.init, align 1, !tbaa !54
  %i.ed = load float, ptr %.0135233.epil.init, align 4, !tbaa !59
  %i.ee = insertelement <8 x float> poison, float %i.ed, i64 0
  %i.ef = shufflevector <8 x float> %i.ee, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eg = fmul fast <8 x float> %i.ec, %.3194
  %i.eh = fmul fast <8 x float> %i.eg, %i.ef
  store <8 x float> %i.eh, ptr %.0234.epil.init, align 1, !tbaa !54
  %i.ei = getelementptr inbounds nuw i8, ptr %.0234.epil.init, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %.0135233.epil.init, i64 4
  br label %.loopexit212

.loopexit212:                                     ; preds = %.lr.ph235.epil.preheader, %.loopexit212.loopexit.unr-lcssa, %bb.e
  %.1156 = phi i32 [ 0, %bb.e ], [ %i.a, %.loopexit212.loopexit.unr-lcssa ], [ %i.a, %.lr.ph235.epil.preheader ] ; 4 uses
  %.1136 = phi ptr [ %1, %bb.e ], [ %i.ea, %.loopexit212.loopexit.unr-lcssa ], [ %i.ej, %.lr.ph235.epil.preheader ] ; 3 uses
  %.1 = phi ptr [ %0, %bb.e ], [ %i.dz, %.loopexit212.loopexit.unr-lcssa ], [ %i.ei, %.lr.ph235.epil.preheader ] ; 3 uses
  br i1 %i.dc, label %.preheader210, label %.loopexit209

.preheader210:                                    ; preds = %.loopexit212
  %i.ek = or disjoint i32 %.1156, 7
  %i.el = icmp slt i32 %i.ek, %i.a
  br i1 %i.el, label %.lr.ph242, label %.preheader208

.preheader208:                                    ; preds = %.lr.ph242, %.preheader210
  %.2157.lcssa = phi i32 [ %.1156, %.preheader210 ], [ %i.ez, %.lr.ph242 ] ; 3 uses
  %.2137.lcssa = phi ptr [ %.1136, %.preheader210 ], [ %i.ey, %.lr.ph242 ] ; 2 uses
  %.2.lcssa = phi ptr [ %.1, %.preheader210 ], [ %i.ex, %.lr.ph242 ] ; 2 uses
  %i.em = or disjoint i32 %.2157.lcssa, 3
  %i.en = icmp slt i32 %i.em, %i.a
  br i1 %i.en, label %.lr.ph249, label %.loopexit209

.lr.ph242:                                        ; preds = %.preheader210, %.lr.ph242
  %.2241 = phi ptr [ %i.ex, %.lr.ph242 ], [ %.1, %.preheader210 ] ; 3 uses
  %.2137240 = phi ptr [ %i.ey, %.lr.ph242 ], [ %.1136, %.preheader210 ] ; 3 uses
  %.2157239 = phi i32 [ %i.ez, %.lr.ph242 ], [ %.1156, %.preheader210 ]
  %i.eo = load <8 x float>, ptr %.2241, align 1, !tbaa !54
  %i.ep = load float, ptr %.2137240, align 4, !tbaa !59
  %i.eq = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.er = getelementptr inbounds nuw i8, ptr %.2137240, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !59
  %i.et = insertelement <4 x float> poison, float %i.es, i64 0
  %i.eu = shufflevector <4 x float> %i.eq, <4 x float> %i.et, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ev = fmul fast <8 x float> %i.eo, %.3194
  %i.ew = fmul fast <8 x float> %i.ev, %i.eu
  store <8 x float> %i.ew, ptr %.2241, align 1, !tbaa !54
  %i.ex = getelementptr inbounds nuw i8, ptr %.2241, i64 32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.2137240, i64 8 ; 2 uses
  %i.ez = add nuw nsw i32 %.2157239, 8            ; 3 uses
  %i.fa = or disjoint i32 %i.ez, 7
  %i.fb = icmp slt i32 %i.fa, %i.a
  br i1 %i.fb, label %.lr.ph242, label %.preheader208, !llvm.loop !68

.lr.ph249:                                        ; preds = %.preheader208, %.lr.ph249
  %.3248 = phi ptr [ %i.fi, %.lr.ph249 ], [ %.2.lcssa, %.preheader208 ] ; 3 uses
  %.3138247 = phi ptr [ %i.fj, %.lr.ph249 ], [ %.2137.lcssa, %.preheader208 ] ; 2 uses
  %.3158246 = phi i32 [ %i.fk, %.lr.ph249 ], [ %.2157.lcssa, %.preheader208 ]
  %i.fc = load <4 x float>, ptr %.3248, align 1, !tbaa !54
  %i.fd = load float, ptr %.3138247, align 4, !tbaa !59
  %i.fe = insertelement <4 x float> poison, float %i.fd, i64 0
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fg = fmul fast <4 x float> %i.fc, %.2197
  %i.fh = fmul fast <4 x float> %i.fg, %i.ff
  store <4 x float> %i.fh, ptr %.3248, align 1, !tbaa !54
  %i.fi = getelementptr inbounds nuw i8, ptr %.3248, i64 16 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.3138247, i64 4 ; 2 uses
  %i.fk = add nuw nsw i32 %.3158246, 4            ; 3 uses
  %i.fl = or disjoint i32 %i.fk, 3
  %i.fm = icmp slt i32 %i.fl, %i.a
  br i1 %i.fm, label %.lr.ph249, label %.loopexit209, !llvm.loop !69

.loopexit209:                                     ; preds = %.lr.ph249, %.preheader208, %.loopexit212
  %.4159 = phi i32 [ %.1156, %.loopexit212 ], [ %.2157.lcssa, %.preheader208 ], [ %i.fk, %.lr.ph249 ] ; 4 uses
  %.4139 = phi ptr [ %.1136, %.loopexit212 ], [ %.2137.lcssa, %.preheader208 ], [ %i.fj, %.lr.ph249 ] ; 3 uses
  %.4 = phi ptr [ %.1, %.loopexit212 ], [ %.2.lcssa, %.preheader208 ], [ %i.fi, %.lr.ph249 ] ; 3 uses
  br i1 %i.db, label %.preheader207, label %.loopexit206

.preheader207:                                    ; preds = %.loopexit209
  %i.fn = add nuw nsw i32 %.4159, 7
  %i.fo = icmp slt i32 %i.fn, %i.a
  br i1 %i.fo, label %.lr.ph256, label %.preheader205

.preheader205:                                    ; preds = %.lr.ph256, %.preheader207
  %.5160.lcssa = phi i32 [ %.4159, %.preheader207 ], [ %i.fx, %.lr.ph256 ] ; 3 uses
  %.5140.lcssa = phi ptr [ %.4139, %.preheader207 ], [ %i.fw, %.lr.ph256 ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4, %.preheader207 ], [ %i.fv, %.lr.ph256 ] ; 2 uses
  %i.fp = add nsw i32 %.5160.lcssa, 3
  %i.fq = icmp slt i32 %i.fp, %i.a
  br i1 %i.fq, label %.lr.ph263, label %.loopexit206

.lr.ph256:                                        ; preds = %.preheader207, %.lr.ph256
  %.5255 = phi ptr [ %i.fv, %.lr.ph256 ], [ %.4, %.preheader207 ] ; 3 uses
  %.5140254 = phi ptr [ %i.fw, %.lr.ph256 ], [ %.4139, %.preheader207 ] ; 2 uses
  %.5160253 = phi i32 [ %i.fx, %.lr.ph256 ], [ %.4159, %.preheader207 ] ; 2 uses
  %i.fr = load <8 x float>, ptr %.5255, align 1, !tbaa !54
  %i.fs = load <8 x float>, ptr %.5140254, align 1, !tbaa !54
  %i.ft = fmul fast <8 x float> %i.fr, %.3194
  %i.fu = fmul fast <8 x float> %i.ft, %i.fs
  store <8 x float> %i.fu, ptr %.5255, align 1, !tbaa !54
  %i.fv = getelementptr inbounds nuw i8, ptr %.5255, i64 32 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.5140254, i64 32 ; 2 uses
  %i.fx = add nsw i32 %.5160253, 8                ; 2 uses
  %i.fy = add nsw i32 %.5160253, 15
  %i.fz = icmp slt i32 %i.fy, %i.a
  br i1 %i.fz, label %.lr.ph256, label %.preheader205, !llvm.loop !70

.lr.ph263:                                        ; preds = %.preheader205, %.lr.ph263
  %.6262 = phi ptr [ %i.ge, %.lr.ph263 ], [ %.5.lcssa, %.preheader205 ] ; 3 uses
  %.6141261 = phi ptr [ %i.gf, %.lr.ph263 ], [ %.5140.lcssa, %.preheader205 ] ; 2 uses
  %.6161260 = phi i32 [ %i.gg, %.lr.ph263 ], [ %.5160.lcssa, %.preheader205 ] ; 2 uses
  %i.ga = load <4 x float>, ptr %.6262, align 1, !tbaa !54
  %i.gb = load <4 x float>, ptr %.6141261, align 1, !tbaa !54
  %i.gc = fmul fast <4 x float> %i.ga, %.2197
  %i.gd = fmul fast <4 x float> %i.gc, %i.gb
  store <4 x float> %i.gd, ptr %.6262, align 1, !tbaa !54
  %i.ge = getelementptr inbounds nuw i8, ptr %.6262, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.6141261, i64 16 ; 2 uses
  %i.gg = add nsw i32 %.6161260, 4                ; 2 uses
  %i.gh = add nsw i32 %.6161260, 7
  %i.gi = icmp slt i32 %i.gh, %i.a
  br i1 %i.gi, label %.lr.ph263, label %.loopexit206, !llvm.loop !71

.loopexit206:                                     ; preds = %.lr.ph263, %.preheader205, %.loopexit209
  %.7162 = phi i32 [ %.4159, %.loopexit209 ], [ %.5160.lcssa, %.preheader205 ], [ %i.gg, %.lr.ph263 ] ; 7 uses
  %.7142 = phi ptr [ %.4139, %.loopexit209 ], [ %.5140.lcssa, %.preheader205 ], [ %i.gf, %.lr.ph263 ] ; 8 uses
  %.7 = phi ptr [ %.4, %.loopexit209 ], [ %.5.lcssa, %.preheader205 ], [ %i.ge, %.lr.ph263 ] ; 8 uses
  %i.gj = icmp slt i32 %.7162, %i.a
  br i1 %i.gj, label %iter.check408, label %.loopexit

iter.check408:                                    ; preds = %.loopexit206
  %i.gk = xor i32 %.7162, -1
  %i.gl = add i32 %i.a, %i.gk                     ; 3 uses
  %i.gm = zext i32 %i.gl to i64
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 5 uses
  %min.iters.check385 = icmp ult i32 %i.gl, 7
  br i1 %min.iters.check385, label %.lr.ph271.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check408
  %i.go = xor i32 %.7162, -1
  %i.gp = add i32 %i.a, %i.go
  %i.gq = zext i32 %i.gp to i64
  %i.gr = shl nuw nsw i64 %i.gq, 2                ; 2 uses
  %5 = getelementptr i8, ptr %.7, i64 %i.gr
  %scevgep = getelementptr i8, ptr %5, i64 4
  %scevgep.a = getelementptr i8, ptr %.7142, i64 %i.gr
  %scevgep384 = getelementptr i8, ptr %scevgep.a, i64 4
  %bound0 = icmp ult ptr %.7, %scevgep384
  %bound1 = icmp ult ptr %.7142, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph271.preheader, label %vector.main.loop.iter.check386

vector.main.loop.iter.check386:                   ; preds = %vector.memcheck
  %min.iters.check387 = icmp ult i32 %i.gl, 31
  br i1 %min.iters.check387, label %vec.epilog.ph412, label %vector.ph388

vector.ph388:                                     ; preds = %vector.main.loop.iter.check386
  %i.gs = and i64 %i.gn, 24
  %n.vec389 = and i64 %i.gn, 8589934560           ; 5 uses
  %i.gt = shl nuw nsw i64 %n.vec389, 2            ; 2 uses
  %i.gu = getelementptr i8, ptr %.7, i64 %i.gt
  %i.gv = getelementptr i8, ptr %.7142, i64 %i.gt
  %i.gw = trunc i64 %n.vec389 to i32
  %i.gx = add i32 %.7162, %i.gw
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.1148, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next402, %vector.body390 ] ; 2 uses
  %i.gy = shl i64 %index391, 2                    ; 2 uses
  %next.gep392 = getelementptr i8, ptr %.7, i64 %i.gy ; 5 uses
  %next.gep393 = getelementptr i8, ptr %.7142, i64 %i.gy ; 4 uses
  %i.gz = getelementptr i8, ptr %next.gep392, i64 32 ; 2 uses
  %i.ha = getelementptr i8, ptr %next.gep392, i64 64 ; 2 uses
  %i.hb = getelementptr i8, ptr %next.gep392, i64 96 ; 2 uses
  %wide.load394 = load <8 x float>, ptr %next.gep392, align 4, !tbaa !59, !alias.scope !72, !noalias !75
  %wide.load395 = load <8 x float>, ptr %i.gz, align 4, !tbaa !59, !alias.scope !72, !noalias !75
  %wide.load396 = load <8 x float>, ptr %i.ha, align 4, !tbaa !59, !alias.scope !72, !noalias !75
  %wide.load397 = load <8 x float>, ptr %i.hb, align 4, !tbaa !59, !alias.scope !72, !noalias !75
  %i.hc = fmul fast <8 x float> %wide.load394, %broadcast.splat
  %i.hd = fmul fast <8 x float> %wide.load395, %broadcast.splat
  %i.he = fmul fast <8 x float> %wide.load396, %broadcast.splat
  %i.hf = fmul fast <8 x float> %wide.load397, %broadcast.splat
  %i.hg = getelementptr i8, ptr %next.gep393, i64 32
  %i.hh = getelementptr i8, ptr %next.gep393, i64 64
  %i.hi = getelementptr i8, ptr %next.gep393, i64 96
  %wide.load398 = load <8 x float>, ptr %next.gep393, align 4, !tbaa !59, !alias.scope !75
  %wide.load399 = load <8 x float>, ptr %i.hg, align 4, !tbaa !59, !alias.scope !75
  %wide.load400 = load <8 x float>, ptr %i.hh, align 4, !tbaa !59, !alias.scope !75
  %wide.load401 = load <8 x float>, ptr %i.hi, align 4, !tbaa !59, !alias.scope !75
  %i.hj = fmul fast <8 x float> %i.hc, %wide.load398
  %i.hk = fmul fast <8 x float> %i.hd, %wide.load399
  %i.hl = fmul fast <8 x float> %i.he, %wide.load400
  %i.hm = fmul fast <8 x float> %i.hf, %wide.load401
  store <8 x float> %i.hj, ptr %next.gep392, align 4, !tbaa !59, !alias.scope !72, !noalias !75
  store <8 x float> %i.hk, ptr %i.gz, align 4, !tbaa !59, !alias.scope !72, !noalias !75
  store <8 x float> %i.hl, ptr %i.ha, align 4, !tbaa !59, !alias.scope !72, !noalias !75
  store <8 x float> %i.hm, ptr %i.hb, align 4, !tbaa !59, !alias.scope !72, !noalias !75
  %index.next402 = add nuw i64 %index391, 32      ; 2 uses
  %i.hn = icmp eq i64 %index.next402, %n.vec389
  br i1 %i.hn, label %middle.block403, label %vector.body390, !llvm.loop !77

middle.block403:                                  ; preds = %vector.body390
  %cmp.n404 = icmp eq i64 %i.gn, %n.vec389
  br i1 %cmp.n404, label %.loopexit, label %vec.epilog.iter.check410

vec.epilog.iter.check410:                         ; preds = %middle.block403
  %min.epilog.iters.check411 = icmp eq i64 %i.gs, 0
  br i1 %min.epilog.iters.check411, label %.lr.ph271.preheader, label %vec.epilog.ph412, !prof !78

vec.epilog.ph412:                                 ; preds = %vector.main.loop.iter.check386, %vec.epilog.iter.check410
  %vec.epilog.resume.val405 = phi i64 [ %n.vec389, %vec.epilog.iter.check410 ], [ 0, %vector.main.loop.iter.check386 ]
  %n.vec413 = and i64 %i.gn, 8589934584           ; 4 uses
  %i.ho = shl nuw nsw i64 %n.vec413, 2            ; 2 uses
  %i.hp = getelementptr i8, ptr %.7, i64 %i.ho
  %i.hq = getelementptr i8, ptr %.7142, i64 %i.ho
  %i.hr = trunc i64 %n.vec413 to i32
  %i.hs = add i32 %.7162, %i.hr
  %broadcast.splatinsert414 = insertelement <8 x float> poison, float %.1148, i64 0
  %broadcast.splat415 = shufflevector <8 x float> %broadcast.splatinsert414, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body416

vec.epilog.vector.body416:                        ; preds = %vec.epilog.vector.body416, %vec.epilog.ph412
  %index417 = phi i64 [ %vec.epilog.resume.val405, %vec.epilog.ph412 ], [ %index.next422, %vec.epilog.vector.body416 ] ; 2 uses
  %i.ht = shl i64 %index417, 2                    ; 2 uses
  %next.gep418 = getelementptr i8, ptr %.7, i64 %i.ht ; 2 uses
  %next.gep419 = getelementptr i8, ptr %.7142, i64 %i.ht
  %wide.load420 = load <8 x float>, ptr %next.gep418, align 4, !tbaa !59, !alias.scope !72, !noalias !75
  %i.hu = fmul fast <8 x float> %wide.load420, %broadcast.splat415
  %wide.load421 = load <8 x float>, ptr %next.gep419, align 4, !tbaa !59, !alias.scope !75
  %i.hv = fmul fast <8 x float> %i.hu, %wide.load421
  store <8 x float> %i.hv, ptr %next.gep418, align 4, !tbaa !59, !alias.scope !72, !noalias !75
  %index.next422 = add nuw i64 %index417, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next422, %n.vec413
  br i1 %i.hw, label %vec.epilog.middle.block423, label %vec.epilog.vector.body416, !llvm.loop !79

vec.epilog.middle.block423:                       ; preds = %vec.epilog.vector.body416
  %cmp.n424 = icmp eq i64 %i.gn, %n.vec413
  br i1 %cmp.n424, label %.loopexit, label %.lr.ph271.preheader

.lr.ph271.preheader:                              ; preds = %vector.memcheck, %iter.check408, %vec.epilog.iter.check410, %vec.epilog.middle.block423
  %.8269.ph = phi ptr [ %.7, %iter.check408 ], [ %.7, %vector.memcheck ], [ %i.gu, %vec.epilog.iter.check410 ], [ %i.hp, %vec.epilog.middle.block423 ] ; 2 uses
  %.8143268.ph = phi ptr [ %.7142, %iter.check408 ], [ %.7142, %vector.memcheck ], [ %i.gv, %vec.epilog.iter.check410 ], [ %i.hq, %vec.epilog.middle.block423 ] ; 2 uses
  %.8163267.ph = phi i32 [ %.7162, %iter.check408 ], [ %.7162, %vector.memcheck ], [ %i.gx, %vec.epilog.iter.check410 ], [ %i.hs, %vec.epilog.middle.block423 ] ; 4 uses
  %i.hx = sub i32 %i.a, %.8163267.ph
  %xtraiter503 = and i32 %i.hx, 3                 ; 2 uses
  %lcmp.mod504.not = icmp eq i32 %xtraiter503, 0
  br i1 %lcmp.mod504.not, label %.lr.ph271.prol.loopexit, label %.lr.ph271.prol

.lr.ph271.prol:                                   ; preds = %.lr.ph271.preheader, %.lr.ph271.prol
  %.8269.prol = phi ptr [ %i.ic, %.lr.ph271.prol ], [ %.8269.ph, %.lr.ph271.preheader ] ; 3 uses
  %.8143268.prol = phi ptr [ %i.id, %.lr.ph271.prol ], [ %.8143268.ph, %.lr.ph271.preheader ] ; 2 uses
  %.8163267.prol = phi i32 [ %i.ie, %.lr.ph271.prol ], [ %.8163267.ph, %.lr.ph271.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph271.prol ], [ 0, %.lr.ph271.preheader ]
  %i.hy = load float, ptr %.8269.prol, align 4, !tbaa !59
  %i.hz = fmul fast float %i.hy, %.1148
  %i.ia = load float, ptr %.8143268.prol, align 4, !tbaa !59
  %i.ib = fmul fast float %i.hz, %i.ia
  store float %i.ib, ptr %.8269.prol, align 4, !tbaa !59
  %i.ic = getelementptr inbounds nuw i8, ptr %.8269.prol, i64 4 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.8143268.prol, i64 4 ; 2 uses
  %i.ie = add nsw i32 %.8163267.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter503
  br i1 %prol.iter.cmp.not, label %.lr.ph271.prol.loopexit, label %.lr.ph271.prol, !llvm.loop !80

.lr.ph271.prol.loopexit:                          ; preds = %.lr.ph271.prol, %.lr.ph271.preheader
  %.8269.unr = phi ptr [ %.8269.ph, %.lr.ph271.preheader ], [ %i.ic, %.lr.ph271.prol ]
  %.8143268.unr = phi ptr [ %.8143268.ph, %.lr.ph271.preheader ], [ %i.id, %.lr.ph271.prol ]
  %.8163267.unr = phi i32 [ %.8163267.ph, %.lr.ph271.preheader ], [ %i.ie, %.lr.ph271.prol ]
  %i.if = sub i32 %.8163267.ph, %i.a
  %i.ig = icmp ugt i32 %i.if, -4
  br i1 %i.ig, label %.loopexit, label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.prol.loopexit, %.lr.ph271
  %.8269 = phi ptr [ %i.jd, %.lr.ph271 ], [ %.8269.unr, %.lr.ph271.prol.loopexit ] ; 6 uses
  %.8143268 = phi ptr [ %i.je, %.lr.ph271 ], [ %.8143268.unr, %.lr.ph271.prol.loopexit ] ; 5 uses
  %.8163267 = phi i32 [ %i.jf, %.lr.ph271 ], [ %.8163267.unr, %.lr.ph271.prol.loopexit ]
  %i.ih = load float, ptr %.8269, align 4, !tbaa !59
  %i.ii = fmul fast float %i.ih, %.1148
  %i.ij = load float, ptr %.8143268, align 4, !tbaa !59
  %i.ik = fmul fast float %i.ii, %i.ij
  store float %i.ik, ptr %.8269, align 4, !tbaa !59
  %i.il = getelementptr inbounds nuw i8, ptr %.8269, i64 4 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.8143268, i64 4
  %i.in = load float, ptr %i.il, align 4, !tbaa !59
  %i.io = fmul fast float %i.in, %.1148
  %i.ip = load float, ptr %i.im, align 4, !tbaa !59
  %i.iq = fmul fast float %i.io, %i.ip
  store float %i.iq, ptr %i.il, align 4, !tbaa !59
  %i.ir = getelementptr inbounds nuw i8, ptr %.8269, i64 8 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.8143268, i64 8
  %i.it = load float, ptr %i.ir, align 4, !tbaa !59
  %i.iu = fmul fast float %i.it, %.1148
  %i.iv = load float, ptr %i.is, align 4, !tbaa !59
  %i.iw = fmul fast float %i.iu, %i.iv
  store float %i.iw, ptr %i.ir, align 4, !tbaa !59
  %i.ix = getelementptr inbounds nuw i8, ptr %.8269, i64 12 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.8143268, i64 12
  %i.iz = load float, ptr %i.ix, align 4, !tbaa !59
  %i.ja = fmul fast float %i.iz, %.1148
  %i.jb = load float, ptr %i.iy, align 4, !tbaa !59
  %i.jc = fmul fast float %i.ja, %i.jb
  store float %i.jc, ptr %i.ix, align 4, !tbaa !59
  %i.jd = getelementptr inbounds nuw i8, ptr %.8269, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %.8143268, i64 16
  %i.jf = add nsw i32 %.8163267, 4                ; 2 uses
  %exitcond311.not.3 = icmp eq i32 %i.jf, %i.a
  br i1 %exitcond311.not.3, label %.loopexit, label %.lr.ph271, !llvm.loop !81

.preheader202.loopexit.unr-lcssa:                 ; preds = %.lr.ph274
  %lcmp.mod507.not = icmp eq i32 %xtraiter505, 0
  br i1 %lcmp.mod507.not, label %.preheader202.loopexit, label %.lr.ph274.epil.preheader

.lr.ph274.epil.preheader:                         ; preds = %.preheader202.loopexit.unr-lcssa, %.lr.ph274.preheader
  %.9273.epil.init = phi ptr [ %0, %.lr.ph274.preheader ], [ %i.jx, %.preheader202.loopexit.unr-lcssa ]
  %lcmp.mod509 = icmp ne i32 %xtraiter505, 0
  tail call void @llvm.assume(i1 %lcmp.mod509)
  br label %.lr.ph274.epil

.lr.ph274.epil:                                   ; preds = %.lr.ph274.epil, %.lr.ph274.epil.preheader
  %.9273.epil = phi ptr [ %i.ji, %.lr.ph274.epil ], [ %.9273.epil.init, %.lr.ph274.epil.preheader ] ; 3 uses
  %epil.iter506 = phi i32 [ %epil.iter506.next, %.lr.ph274.epil ], [ 0, %.lr.ph274.epil.preheader ]
  %i.jg = load <8 x float>, ptr %.9273.epil, align 1, !tbaa !54
  %i.jh = fmul fast <8 x float> %i.jg, %.3194
  store <8 x float> %i.jh, ptr %.9273.epil, align 1, !tbaa !54
  %i.ji = getelementptr inbounds nuw i8, ptr %.9273.epil, i64 32 ; 2 uses
  %epil.iter506.next = add i32 %epil.iter506, 1   ; 2 uses
  %epil.iter506.cmp.not = icmp eq i32 %epil.iter506.next, %xtraiter505
  br i1 %epil.iter506.cmp.not, label %.preheader202.loopexit, label %.lr.ph274.epil, !llvm.loop !82

.preheader202.loopexit:                           ; preds = %.lr.ph274.epil, %.preheader202.loopexit.unr-lcssa
  %.lcssa465 = phi ptr [ %i.jx, %.preheader202.loopexit.unr-lcssa ], [ %i.ji, %.lr.ph274.epil ]
  %i.jj = and i32 %i.a, 2147483640
  br label %.preheader202

.preheader202:                                    ; preds = %.preheader202.loopexit, %.preheader203
  %.0144.lcssa = phi i32 [ 0, %.preheader203 ], [ %i.jj, %.preheader202.loopexit ] ; 3 uses
  %.9.lcssa = phi ptr [ %0, %.preheader203 ], [ %.lcssa465, %.preheader202.loopexit ] ; 2 uses
  %i.jk = or disjoint i32 %.0144.lcssa, 3
  %i.jl = icmp slt i32 %i.jk, %i.a
  br i1 %i.jl, label %.lr.ph279, label %.preheader

.lr.ph274:                                        ; preds = %.lr.ph274, %.lr.ph274.preheader.new
  %.9273 = phi ptr [ %0, %.lr.ph274.preheader.new ], [ %i.jx, %.lr.ph274 ] ; 6 uses
  %niter511 = phi i32 [ 0, %.lr.ph274.preheader.new ], [ %niter511.next.3, %.lr.ph274 ]
  %i.jm = load <8 x float>, ptr %.9273, align 1, !tbaa !54
  %i.jn = fmul fast <8 x float> %i.jm, %.3194
end_hunk_0
