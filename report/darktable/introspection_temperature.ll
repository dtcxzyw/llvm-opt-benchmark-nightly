Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_temperature?download=true
inline.NumInlined: 105
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@process:bb.a
  %xtraiter = and i32 %i.al, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph183
  %i.am = add nsw i64 %i.aj, %i.ak                ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12
  %i.ap = add i32 %.0159.lcssa, 600
  %i.aq = urem i32 %i.ap, 6
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !33
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.ao
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.am
  store float %i.ax, ptr %i.ay, align 4, !tbaa !12
  %indvars.iv.next211.prol = add nuw nsw i64 %i.ak, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph183
  %indvars.iv210.unr = phi i64 [ %i.ak, %.lr.ph183 ], [ %indvars.iv.next211.prol, %.prol.loopexit.unr-lcssa ]
  %i.az = icmp eq i32 %i.h, %.neg
  br i1 %i.az, label %._crit_edge, label %.lr.ph183.new

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv205 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next206, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph ], [ %indvars.iv.next, %bb.c ]
  %.0158181 = phi i32 [ 0, %.lr.ph ], [ %i.cf, %bb.c ] ; 2 uses
  %i.ba = add nuw nsw i64 %i.ah, %indvars.iv205   ; 5 uses
  %i.bb = zext nneg i32 %.0158181 to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bb ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ba
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bf = load float, ptr %i.bc, align 16, !tbaa !12
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ba
  store float %i.bg, ptr %i.bh, align 4, !tbaa !12
  %i.bi = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bi
  store float %i.bn, ptr %i.bo, align 4, !tbaa !12
  %i.bp = add nuw nsw i64 %i.ba, 2                ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !12
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bp
  store float %i.bu, ptr %i.bv, align 4, !tbaa !12
  %i.bw = add nuw nsw i64 %i.ba, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bw
  store float %i.cb, ptr %i.cc, align 4, !tbaa !12
  %i.cd = add i32 %.0158181, 1                    ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 3
  %i.cf = select i1 %i.ce, i32 0, i32 %i.cd
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.cg = icmp slt i64 %indvars.iv.next, %i.n
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 4
  br i1 %i.cg, label %bb.c, label %.preheader172

.lr.ph183.new:                                    ; preds = %.prol.loopexit, %.lr.ph183.new
  %indvars.iv210 = phi i64 [ %indvars.iv.next211.1, %.lr.ph183.new ], [ %indvars.iv210.unr, %.prol.loopexit ] ; 4 uses
  %i.ch = add nsw i64 %i.aj, %indvars.iv210       ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !12
  %i.ck = trunc i64 %indvars.iv210 to i32
  %i.cl = add i32 %i.ck, 600
  %i.cm = urem i32 %i.cl, 6
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !33
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !12
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.cj
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ch
  store float %i.ct, ptr %i.cu, align 4, !tbaa !12
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %i.cv = add nsw i64 %i.aj, %indvars.iv.next211  ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !12
  %i.cy = trunc i64 %indvars.iv.next211 to i32
  %i.cz = add i32 %i.cy, 600
  %i.da = urem i32 %i.cz, 6
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !33
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !12
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, %i.cx
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cv
  store float %i.dh, ptr %i.di, align 4, !tbaa !12
  %indvars.iv.next211.1 = add nuw nsw i64 %indvars.iv210, 2 ; 2 uses
  %i.dj = trunc nuw i64 %indvars.iv.next211.1 to i32
  %i.dk = icmp sgt i32 %i.h, %i.dj
  br i1 %i.dk, label %.lr.ph183.new, label %._crit_edge

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph183.new, %.preheader172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %.lr.ph199, %._crit_edge197
  %indvars.iv231 = phi i64 [ 0, %.lr.ph199 ], [ %indvars.iv.next232, %._crit_edge197 ] ; 8 uses
  %indvars.iv219 = phi i2 [ 0, %.lr.ph199 ], [ %indvars.iv.next220, %._crit_edge197 ] ; 5 uses
  %i.dl = mul i64 %indvars.iv231, %i.s
  %i.dm = zext i2 %indvars.iv219 to i64           ; 3 uses
  %i.dn = add i64 %i.dl, %i.dm
  %i.do = shl i64 %i.dn, 2                        ; 3 uses
  %scevgep257 = getelementptr i8, ptr %3, i64 %i.do
  %i.dp = or disjoint i64 %i.dm, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 %i.v)
  %i.dq = xor i64 %i.dm, -1
  %i.dr = add nsw i64 %umax, %i.dq
  %i.ds = shl nuw nsw i64 %i.dr, 2
  %i.dt = and i64 %i.ds, 9223372036854775792
  %i.du = add i64 %i.dt, %i.do                    ; 2 uses
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %i.du
  %scevgep260 = getelementptr i8, ptr %2, i64 %i.do
  %scevgep262 = getelementptr i8, ptr %scevgep261, i64 %i.du
  %i.dv = zext i2 %indvars.iv219 to i32           ; 3 uses
  %i.dw = trunc nuw nsw i64 %indvars.iv231 to i32
  %i.dx = mul i32 %i.h, %i.dw
  %i.dy = sub i32 0, %i.dx
  %i.dz = and i32 %i.dy, 3
  %.not200 = icmp eq i32 %i.dz, 0
  br i1 %.not200, label %.._crit_edge189_crit_edge, label %.lr.ph188

.._crit_edge189_crit_edge:                        ; preds = %bb.d
  %.pre = shl nuw nsw i64 %indvars.iv231, 1
  br label %._crit_edge189

.lr.ph188:                                        ; preds = %bb.d
  %i.ea = mul nsw i64 %indvars.iv231, %i.s        ; 4 uses
  %i.eb = shl nuw nsw i64 %indvars.iv231, 1       ; 4 uses
  %i.ec = trunc nuw i64 %i.eb to i32
  %i.ed = and i32 %i.ec, 14                       ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ea
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !12
  %i.eg = shl nuw nsw i32 %i.ed, 1
  %i.eh = lshr i32 %i.c, %i.eg
  %i.ei = and i32 %i.eh, 3
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !12
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.ef
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ea
  store float %i.em, ptr %i.en, align 4, !tbaa !12
  %exitcond222.not = icmp eq i2 %indvars.iv219, 1
  br i1 %exitcond222.not, label %._crit_edge189, label %bb.e

bb.e:                                             ; preds = %.lr.ph188
  %i.eo = add nsw i64 %i.ea, 1                    ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !12
  %.tr.i.1 = shl nuw nsw i32 %i.ed, 1
  %i.er = or disjoint i32 %.tr.i.1, 2
  %i.es = lshr i32 %i.c, %i.er
  %i.et = and i32 %i.es, 3
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !12
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ew, %i.eq
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eo
  store float %i.ex, ptr %i.ey, align 4, !tbaa !12
  %exitcond222.not.1 = icmp eq i2 %indvars.iv219, -2
  br i1 %exitcond222.not.1, label %._crit_edge189, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ez = add nsw i64 %i.ea, 2                    ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !12
  %i.fc = shl nuw nsw i32 %i.ed, 1
  %i.fd = lshr i32 %i.c, %i.fc
  %i.fe = and i32 %i.fd, 3
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !12
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, %i.fb
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ez
  store float %i.fi, ptr %i.fj, align 4, !tbaa !12
  br label %._crit_edge189

._crit_edge189:                                   ; preds = %.lr.ph188, %bb.e, %bb.f, %.._crit_edge189_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge189_crit_edge ], [ %i.eb, %bb.f ], [ %i.eb, %bb.e ], [ %i.eb, %.lr.ph188 ]
  %.0155.lcssa = phi i32 [ 0, %.._crit_edge189_crit_edge ], [ %i.dv, %bb.f ], [ %i.dv, %bb.e ], [ %i.dv, %.lr.ph188 ] ; 4 uses
  %6 = and i32 %.0155.lcssa, 1
  %7 = trunc i64 %.pre-phi to i32
  %8 = and i32 %7, 14                             ; 6 uses
  %.tr.i166 = or disjoint i32 %6, %8
  %i.fk = shl nuw nsw i32 %.tr.i166, 1            ; 2 uses
  %i.fl = lshr i32 %i.c, %i.fk
  %i.fm = and i32 %i.fl, 3
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fn
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !12 ; 3 uses
  %i.fq = xor i32 %i.fk, 2
  %i.fr = lshr i32 %i.c, %i.fq
  %i.fs = and i32 %i.fr, 3
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !12 ; 3 uses
  %i.fw = icmp slt i32 %.0155.lcssa, %i.t
  br i1 %i.fw, label %.lr.ph193, label %.preheader

.lr.ph193:                                        ; preds = %._crit_edge189
  %i.fx = mul nuw nsw i64 %indvars.iv231, %i.s    ; 2 uses
  %i.fy = zext nneg i32 %.0155.lcssa to i64       ; 6 uses
  %i.fz = or disjoint i64 %i.fy, 4
  %i.ga = tail call i64 @llvm.umax.i64(i64 %i.fz, i64 %i.v)
  %i.gb = xor i64 %i.fy, -1
  %i.gc = add nsw i64 %i.ga, %i.gb                ; 2 uses
  %i.gd = lshr i64 %i.gc, 2
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 2 uses
  %min.iters.check267 = icmp ult i64 %i.gc, 12
  br i1 %min.iters.check267, label %scalar.ph266.preheader, label %vector.memcheck256

vector.memcheck256:                               ; preds = %.lr.ph193
  %bound0263 = icmp ult ptr %scevgep257, %scevgep262
  %bound1264 = icmp ult ptr %scevgep260, %scevgep259
  %found.conflict265 = and i1 %bound0263, %bound1264
  br i1 %found.conflict265, label %scalar.ph266.preheader, label %vector.ph268

vector.ph268:                                     ; preds = %vector.memcheck256
  %n.vec269 = and i64 %i.ge, 9223372036854775804  ; 3 uses
  %i.gf = shl i64 %n.vec269, 2
  %i.gg = or disjoint i64 %i.gf, %i.fy            ; 2 uses
  %broadcast.splatinsert270 = insertelement <4 x float> poison, float %i.fp, i64 0
  %broadcast.splat271 = shufflevector <4 x float> %broadcast.splatinsert270, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert272 = insertelement <4 x float> poison, float %i.fv, i64 0
  %broadcast.splat273 = shufflevector <4 x float> %broadcast.splatinsert272, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph268
  %index275 = phi i64 [ 0, %vector.ph268 ], [ %index.next282, %vector.body274 ] ; 2 uses
  %i.gh = shl nuw i64 %index275, 2
  %i.gi = or disjoint i64 %i.gh, %i.fy
  %i.gj = add nsw i64 %i.fx, %i.gi                ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gj
  %wide.vec276 = load <16 x float>, ptr %i.gl, align 4, !tbaa !12, !alias.scope !195 ; 4 uses
  %strided.vec277 = shufflevector <16 x float> %wide.vec276, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec278 = shufflevector <16 x float> %wide.vec276, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec279 = shufflevector <16 x float> %wide.vec276, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec280 = shufflevector <16 x float> %wide.vec276, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.gm = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec277, %broadcast.splat271
  %i.gn = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec278, %broadcast.splat273
  %i.go = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec279, %broadcast.splat271
  %i.gp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec280, %broadcast.splat273
  %i.gq = shufflevector <4 x float> %i.gm, <4 x float> %i.gn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gr = shufflevector <4 x float> %i.go, <4 x float> %i.gp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec281 = shufflevector <8 x float> %i.gq, <8 x float> %i.gr, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec281, ptr %i.gk, align 4, !tbaa !12, !alias.scope !196, !noalias !195
  %index.next282 = add nuw i64 %index275, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next282, %n.vec269
  br i1 %i.gs, label %middle.block283, label %vector.body274, !llvm.loop !183

middle.block283:                                  ; preds = %vector.body274
  %cmp.n284 = icmp eq i64 %i.ge, %n.vec269
  br i1 %cmp.n284, label %.preheader.loopexit, label %scalar.ph266.preheader

scalar.ph266.preheader:                           ; preds = %vector.memcheck256, %.lr.ph193, %middle.block283
  %indvars.iv223.ph = phi i64 [ %i.fy, %vector.memcheck256 ], [ %i.fy, %.lr.ph193 ], [ %i.gg, %middle.block283 ]
  br label %scalar.ph266

.preheader.loopexit:                              ; preds = %scalar.ph266, %middle.block283
  %indvars.iv.next224.lcssa = phi i64 [ %i.gg, %middle.block283 ], [ %indvars.iv.next224, %scalar.ph266 ]
  %i.gt = trunc nuw nsw i64 %indvars.iv.next224.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge189
  %.1.lcssa = phi i32 [ %.0155.lcssa, %._crit_edge189 ], [ %i.gt, %.preheader.loopexit ] ; 2 uses
  %i.gu = icmp slt i32 %.1.lcssa, %i.h
  br i1 %i.gu, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %.preheader
  %i.gv = mul nuw nsw i64 %indvars.iv231, %i.s    ; 5 uses
  %i.gw = zext i32 %.1.lcssa to i64               ; 4 uses
  %i.gx = sub nsw i64 %wide.trip.count229, %i.gw
  %xtraiter292 = and i64 %i.gx, 3                 ; 2 uses
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod293.not, label %.prol.loopexit291, label %.prol.preheader290

.prol.preheader290:                               ; preds = %.lr.ph196, %.prol.preheader290
  %indvars.iv226.prol = phi i64 [ %indvars.iv.next227.prol, %.prol.preheader290 ], [ %i.gw, %.lr.ph196 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader290 ], [ 0, %.lr.ph196 ]
  %i.gy = add nsw i64 %i.gv, %indvars.iv226.prol  ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gy
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !12
  %9 = trunc nuw nsw i64 %indvars.iv226.prol to i32
  %10 = and i32 %9, 1
  %.tr.i170.prol = or disjoint i32 %10, %8
  %i.hb = shl nuw nsw i32 %.tr.i170.prol, 1
  %i.hc = lshr i32 %i.c, %i.hb
  %i.hd = and i32 %i.hc, 3
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.he
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !12
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hg, %i.ha
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gy
  store float %i.hh, ptr %i.hi, align 4, !tbaa !12
  %indvars.iv.next227.prol = add nuw nsw i64 %indvars.iv226.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter292
  br i1 %prol.iter.cmp.not, label %.prol.loopexit291, label %.prol.preheader290, !llvm.loop !184

.prol.loopexit291:                                ; preds = %.prol.preheader290, %.lr.ph196
  %indvars.iv226.unr = phi i64 [ %i.gw, %.lr.ph196 ], [ %indvars.iv.next227.prol, %.prol.preheader290 ] ; 3 uses
  %i.hj = sub nsw i64 %i.gw, %wide.trip.count229
  %i.hk = icmp ugt i64 %i.hj, -4
  br i1 %i.hk, label %._crit_edge197, label %.lr.ph196.new

.lr.ph196.new:                                    ; preds = %.prol.loopexit291
  %11 = trunc i64 %indvars.iv226.unr to i1
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32                        ; 2 uses
  %14 = trunc i64 %indvars.iv226.unr to i32
  %15 = and i32 %14, 1                            ; 2 uses
  %.tr.i170 = or disjoint i32 %15, %8
  %i.hl = shl nuw nsw i32 %.tr.i170, 1
  %i.hm = lshr i32 %i.c, %i.hl
  %i.hn = and i32 %i.hm, 3
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ho
  %invariant.op = add i64 1, %i.gv
  %.tr.i170.1 = or disjoint i32 %8, %13
  %i.hq = shl nuw nsw i32 %.tr.i170.1, 1
  %i.hr = lshr i32 %i.c, %i.hq
  %i.hs = and i32 %i.hr, 3
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ht
  %invariant.op295 = add i64 2, %i.gv
  %.tr.i170.2 = or disjoint i32 %15, %8
  %i.hv = shl nuw nsw i32 %.tr.i170.2, 1
  %i.hw = lshr i32 %i.c, %i.hv
  %i.hx = and i32 %i.hw, 3
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hy
  %invariant.op297 = add i64 3, %i.gv
  %.tr.i170.3 = or disjoint i32 %8, %13
  %i.ia = shl nuw nsw i32 %.tr.i170.3, 1
  %i.ib = lshr i32 %i.c, %i.ia
  %i.ic = and i32 %i.ib, 3
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.id
  br label %bb.g

scalar.ph266:                                     ; preds = %scalar.ph266.preheader, %scalar.ph266
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %scalar.ph266 ], [ %indvars.iv223.ph, %scalar.ph266.preheader ] ; 2 uses
  %i.if = add nsw i64 %i.fx, %indvars.iv223       ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.if ; 4 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.if ; 4 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !12
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ii, %i.fp
  store float %i.ij, ptr %i.ig, align 4, !tbaa !12
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.il = load float, ptr %i.ik, align 4, !tbaa !12
  %i.im = fmul reassoc nsz arcp contract afn float %i.il, %i.fv
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  store float %i.im, ptr %i.in, align 4, !tbaa !12
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ip = load float, ptr %i.io, align 4, !tbaa !12
  %i.iq = fmul reassoc nsz arcp contract afn float %i.ip, %i.fp
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store float %i.iq, ptr %i.ir, align 4, !tbaa !12
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.it = load float, ptr %i.is, align 4, !tbaa !12
  %i.iu = fmul reassoc nsz arcp contract afn float %i.it, %i.fv
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  store float %i.iu, ptr %i.iv, align 4, !tbaa !12
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 4 ; 3 uses
  %i.iw = icmp samesign ult i64 %indvars.iv.next224, %i.v
  br i1 %i.iw, label %scalar.ph266, label %.preheader.loopexit, !llvm.loop !185

bb.g:                                             ; preds = %bb.g, %.lr.ph196.new
  %indvars.iv226 = phi i64 [ %indvars.iv226.unr, %.lr.ph196.new ], [ %indvars.iv.next227.3, %bb.g ] ; 5 uses
  %i.ix = add nsw i64 %i.gv, %indvars.iv226       ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !12
  %i.ja = load float, ptr %i.hp, align 4, !tbaa !12
  %i.jb = fmul reassoc nsz arcp contract afn float %i.ja, %i.iz
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ix
  store float %i.jb, ptr %i.jc, align 4, !tbaa !12
  %.reass = add i64 %indvars.iv226, %invariant.op ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass
  %i.je = load float, ptr %i.jd, align 4, !tbaa !12
  %i.jf = load float, ptr %i.hu, align 4, !tbaa !12
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, %i.je
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.reass
  store float %i.jg, ptr %i.jh, align 4, !tbaa !12
  %.reass296 = add i64 %indvars.iv226, %invariant.op295 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass296
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !12
  %i.jk = load float, ptr %i.hz, align 4, !tbaa !12
  %i.jl = fmul reassoc nsz arcp contract afn float %i.jk, %i.jj
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.reass296
  store float %i.jl, ptr %i.jm, align 4, !tbaa !12
  %.reass298 = add i64 %indvars.iv226, %invariant.op297 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass298
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !12
  %i.jp = load float, ptr %i.ie, align 4, !tbaa !12
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jp, %i.jo
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.reass298
  store float %i.jq, ptr %i.jr, align 4, !tbaa !12
  %indvars.iv.next227.3 = add nuw nsw i64 %indvars.iv226, 4 ; 2 uses
  %exitcond230.not.3 = icmp eq i64 %indvars.iv.next227.3, %wide.trip.count229
  br i1 %exitcond230.not.3, label %._crit_edge197, label %bb.g

._crit_edge197:                                   ; preds = %.prol.loopexit291, %bb.g, %.preheader
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %indvars.iv.next220 = sub i2 %indvars.iv219, %i.u
  %exitcond234.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count233
  br i1 %exitcond234.not, label %.loopexit, label %bb.d

bb.h:                                             ; preds = %bb.a
  %i.js = sext i32 %i.j to i64
  %i.jt = sext i32 %i.h to i64
  %i.ju = shl nsw i64 %i.jt, 2
  %i.jv = mul i64 %i.ju, %i.js                    ; 4 uses
  %.not = icmp eq i64 %i.jv, 0
  br i1 %.not, label %.loopexit, label %.preheader175.preheader

.preheader175.preheader:                          ; preds = %bb.h
  %i.jw = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.jz = add i64 %i.jv, -4                       ; 2 uses
  %i.ka = lshr exact i64 %i.jz, 2
  %i.kb = add nuw nsw i64 %i.ka, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jz, 28
  br i1 %min.iters.check, label %.preheader175.preheader288, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader175.preheader
  %i.kc = shl i64 %i.jv, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.kc  ; 2 uses
  %scevgep242 = getelementptr i8, ptr %2, i64 %i.kc
  %scevgep243 = getelementptr i8, ptr %i.f, i64 16
  %bound0 = icmp ult ptr %3, %scevgep242
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0244 = icmp ult ptr %3, %scevgep243
  %bound1245 = icmp ult ptr %i.f, %scevgep
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx = or i1 %found.conflict, %found.conflict246
  br i1 %conflict.rdx, label %.preheader175.preheader288, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kb, 9223372036854775804     ; 3 uses
  %i.kd = shl i64 %n.vec, 2
  %i.ke = load float, ptr %i.f, align 4, !tbaa !12, !alias.scope !198
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ke, i64 0
  %i.kf = load float, ptr %i.jw, align 4, !tbaa !12, !alias.scope !198
  %broadcast.splatinsert250 = insertelement <4 x float> poison, float %i.kf, i64 0
  %i.kg = load float, ptr %i.jx, align 4, !tbaa !12, !alias.scope !198
  %broadcast.splatinsert252 = insertelement <4 x float> poison, float %i.kg, i64 0
  %i.kh = load float, ptr %i.jy, align 4, !tbaa !12, !alias.scope !198
  %broadcast.splatinsert254 = insertelement <4 x float> poison, float %i.kh, i64 0
  %i.ki = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert250, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.kj = shufflevector <4 x float> %broadcast.splatinsert252, <4 x float> %broadcast.splatinsert254, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kk = shl nuw i64 %index, 2                   ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kk
  %wide.vec = load <16 x float>, ptr %i.kl, align 4, !tbaa !12, !alias.scope !199 ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kk
  %i.kn = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ko = fmul reassoc nsz arcp contract afn <8 x float> %i.ki, %i.kn
  %i.kp = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.kq = fmul reassoc nsz arcp contract afn <8 x float> %i.kj, %i.kp
  %interleaved.vec = shufflevector <8 x float> %i.ko, <8 x float> %i.kq, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.km, align 4, !tbaa !12, !alias.scope !200, !noalias !201
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kr = icmp eq i64 %index.next, %n.vec
  br i1 %i.kr, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader175.preheader288

.preheader175.preheader288:                       ; preds = %vector.memcheck, %.preheader175.preheader, %middle.block
  %.0154178.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader175.preheader ], [ %i.kd, %middle.block ]
  br label %.preheader175

.preheader175:                                    ; preds = %.preheader175.preheader288, %.preheader175
  %.0154178 = phi i64 [ %i.lp, %.preheader175 ], [ %.0154178.ph, %.preheader175.preheader288 ] ; 6 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0154178
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !12
  %i.ku = load float, ptr %i.f, align 4, !tbaa !12
  %i.kv = fmul reassoc nsz arcp contract afn float %i.ku, %i.kt
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0154178
  store float %i.kv, ptr %i.kw, align 4, !tbaa !12
  %i.kx = or disjoint i64 %.0154178, 1            ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kx
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !12
  %i.la = load float, ptr %i.jw, align 4, !tbaa !12
  %i.lb = fmul reassoc nsz arcp contract afn float %i.la, %i.kz
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kx
  store float %i.lb, ptr %i.lc, align 4, !tbaa !12
  %i.ld = or disjoint i64 %.0154178, 2            ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !12
  %i.lg = load float, ptr %i.jx, align 4, !tbaa !12
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lg, %i.lf
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ld
  store float %i.lh, ptr %i.li, align 4, !tbaa !12
  %i.lj = or disjoint i64 %.0154178, 3            ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lj
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !12
  %i.lm = load float, ptr %i.jy, align 4, !tbaa !12
  %i.ln = fmul reassoc nsz arcp contract afn float %i.lm, %i.ll
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.lj
  store float %i.ln, ptr %i.lo, align 4, !tbaa !12
  %i.lp = add nuw i64 %.0154178, 4                ; 2 uses
  %i.lq = icmp ult i64 %i.lp, %i.jv
  br i1 %i.lq, label %.preheader175, label %.loopexit, !llvm.loop !191

.loopexit:                                        ; preds = %.preheader175, %._crit_edge, %._crit_edge197, %middle.block, %bb.h, %.preheader173, %.preheader171
  %i.lr = load ptr, ptr %1, align 16, !tbaa !202
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 664
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !47 ; 5 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lv = load i32, ptr %i.lu, align 16, !tbaa !48
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !203 ; 9 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 240
  store i32 %i.lv, ptr %i.ly, align 16, !tbaa !204
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 256
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 272 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 2400
  %i.mc = load float, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  store float %i.mc, ptr %i.lz, align 16, !tbaa !12
  %i.md = load float, ptr %i.ma, align 16, !tbaa !12
  %i.me = fmul reassoc nsz arcp contract afn float %i.md, %i.mc
  store float %i.me, ptr %i.ma, align 16, !tbaa !12
  %i.mf = load float, ptr %i.f, align 4, !tbaa !12
  store float %i.mf, ptr %i.mb, align 4, !tbaa !12
  %i.mg = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !12 ; 2 uses
end_hunk_0
