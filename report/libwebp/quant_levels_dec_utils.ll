Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/quant_levels_dec_utils?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@WebPDequantizeLevels:bb.a
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv.i52.i
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !33
  %i.ca = sub i16 0, %i.by
  %i.cb = sub nsw i64 0, %indvars.iv.i52.i
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.cb
  store i16 %i.ca, ptr %i.cc, align 2, !tbaa !33
  %indvars.iv.next.i54.i = add nuw nsw i64 %indvars.iv.i52.i, 1 ; 2 uses
  %exitcond.not.i55.i = icmp eq i64 %indvars.iv.next.i54.i, 1024
  br i1 %exitcond.not.i55.i, label %bb.q, label %bb.m, !llvm.loop !11

bb.q:                                             ; preds = %bb.p
  %i.cd = mul nuw nsw i32 %i.y, %i.y
  %i.ce = udiv i32 262144, %i.cd                  ; 8 uses
  store i16 0, ptr %i.bo, align 2, !tbaa !33
  %i.cf = icmp sgt i32 %.sroa.49.1.1, 2
  %i.cg = icmp sgt i32 %2, %i.l
  %or.cond108 = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond108, label %.lr.ph.preheader.i.lr.ph, label %.loopexit

.lr.ph.preheader.i.lr.ph:                         ; preds = %bb.q
  %i.ch = zext nneg i32 %.1 to i64                ; 7 uses
  %i.ci = add nuw i32 %.1, 1                      ; 3 uses
  %wide.trip.count.i34 = zext i32 %i.ci to i64    ; 12 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.ab, i64 %i.ch ; 6 uses
  %i.cj = sub nsw i32 %1, %.1                     ; 2 uses
  %i.ck = icmp slt i32 %i.ci, %i.cj
  %i.cl = xor i32 %.1, -1                         ; 4 uses
  %i.cm = zext i32 %i.cj to i64                   ; 3 uses
  %i.cn = getelementptr [2 x i8], ptr %i.ab, i64 %i.s ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -2     ; 3 uses
  %i.cp = add nsw i32 %i.p, -2                    ; 2 uses
  %i.cq = add i32 %i.p, -2
  %i.cr = xor i32 %.1, -1
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.r
  %i.cs = sub nsw i64 2, %i.t
  %scevgep110 = getelementptr i8, ptr %i.w, i64 %i.cs
  %i.ct = add i32 %i.p, -2
  %i.cu = shl nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.cv = getelementptr i8, ptr %i.w, i64 %i.cu
  %scevgep112 = getelementptr i8, ptr %i.cv, i64 2
  %scevgep114 = getelementptr i8, ptr %i.w, i64 %i.cu
  %i.cw = xor i32 %.1, -1
  %i.cx = add nuw nsw i64 %i.s, %i.aa
  %i.cy = add nuw nsw i64 %wide.trip.count.i34, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 %i.cm)
  %i.cz = add nuw nsw i64 %i.ch, %i.aa
  %i.da = shl nuw nsw i64 %i.cz, 1
  %i.db = shl nuw nsw i64 %wide.trip.count.i34, 1 ; 3 uses
  %i.dc = add nuw nsw i64 %i.db, %i.r             ; 2 uses
  %i.dd = shl nuw nsw i64 %i.aa, 1                ; 3 uses
  %scevgep146 = getelementptr i8, ptr %i.w, i64 %i.dc ; 2 uses
  %i.de = shl nuw nsw i64 %i.ch, 1                ; 2 uses
  %i.df = add nuw nsw i64 %i.de, %i.dd            ; 3 uses
  %i.dg = getelementptr i8, ptr %i.w, i64 %i.df
  %scevgep147 = getelementptr i8, ptr %i.dg, i64 -2
  %i.dh = getelementptr i8, ptr %i.w, i64 %i.df
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.db
  %scevgep148 = getelementptr i8, ptr %i.di, i64 -2
  %i.dj = add nuw nsw i64 %i.df, 2
  %i.dk = sub nsw i64 %i.dj, %i.db
  %scevgep149 = getelementptr i8, ptr %i.w, i64 %i.dk
  %i.dl = getelementptr i8, ptr %i.w, i64 %i.de
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.dd
  %scevgep150 = getelementptr i8, ptr %i.dm, i64 2
  %i.dn = zext nneg i32 %.1 to i64
  %xtraiter = and i64 %i.s, 1
  %i.do = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.s, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod178 = trunc i32 %1 to i1
  %min.iters.check159 = icmp ult i32 %.1, 7
  %bound0151 = icmp ult ptr %i.bi, %scevgep148
  %bound1152 = icmp ult ptr %scevgep147, %scevgep146
  %found.conflict153 = and i1 %bound0151, %bound1152
  %bound0154 = icmp ult ptr %i.bi, %scevgep150
  %bound1155 = icmp ult ptr %scevgep149, %scevgep146
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %found.conflict153, %found.conflict156
  %n.vec161 = and i64 %wide.trip.count.i34, 4294967288 ; 3 uses
  %broadcast.splatinsert162 = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat163 = shufflevector <8 x i32> %broadcast.splatinsert162, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n171 = icmp eq i64 %n.vec161, %wide.trip.count.i34
  %xtraiter179 = and i64 %wide.trip.count.i34, 1
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  %i.dp = add nuw nsw i64 %wide.trip.count.i34, 1
  %i.dq = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 %i.cm)
  %i.dr = sub nsw i64 %i.dq, %wide.trip.count.i34 ; 3 uses
  %min.iters.check132 = icmp ugt i64 %i.dr, 7
  %i.ds = sub nsw i64 %wide.trip.count.i34, %umax
  %.not173 = icmp ugt i64 %i.ds, -2147483649
  %or.cond174 = select i1 %min.iters.check132, i1 %.not173, i1 false
  %i.dt = sub nsw i64 %i.da, %i.r
  %diff.check = icmp ugt i64 %i.dt, -16
  %i.du = sub nsw i64 %i.dd, %i.dc
  %diff.check129 = icmp ugt i64 %i.du, -16
  %conflict.rdx130 = or i1 %diff.check, %diff.check129
  %n.vec134 = and i64 %i.dr, -8                   ; 3 uses
  %i.dv = add nsw i64 %n.vec134, %wide.trip.count.i34 ; 2 uses
  %broadcast.splatinsert135 = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat136 = shufflevector <8 x i32> %broadcast.splatinsert135, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n143 = icmp eq i64 %i.dr, %n.vec134
  %bound1 = icmp ult ptr %i.co, %i.bj
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.lr.ph, %bb.t
  %.sroa.43.098 = phi ptr [ %i.ad, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.36.097, %bb.t ] ; 3 uses
  %.sroa.36.097 = phi ptr [ %i.w, %.lr.ph.preheader.i.lr.ph ], [ %spec.select86, %bb.t ] ; 5 uses
  %.sroa.23.096 = phi ptr [ %0, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.23.1, %bb.t ] ; 3 uses
  %.sroa.20.095 = phi ptr [ %0, %.lr.ph.preheader.i.lr.ph ], [ %.sroa.20.2, %bb.t ] ; 4 uses
  %.sroa.14.094 = phi i32 [ %i.l, %.lr.ph.preheader.i.lr.ph ], [ %i.ln, %bb.t ] ; 4 uses
  br i1 %i.do, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %.03437.i = phi i16 [ %i.ek, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !30
  %i.dy = zext i8 %i.dx to i16
  %i.dz = add i16 %.03437.i, %i.dy                ; 2 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.i
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !33
  %i.ec = add i16 %i.dz, %i.eb                    ; 2 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.i ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !33
  %i.ef = sub i16 %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !33
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !33
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.next.i
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !30
  %i.ej = zext i8 %i.ei to i16
  %i.ek = add i16 %i.dz, %i.ej                    ; 3 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.next.i
  %i.em = load i16, ptr %i.el, align 2, !tbaa !33
  %i.en = add i16 %i.ek, %i.em                    ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.next.i ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !33
  %i.eq = sub i16 %i.en, %i.ep
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !33
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !33
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !12

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 4 uses
  %.03437.i.epil.init = phi i16 [ 0, %.lr.ph.preheader.i ], [ %i.ek, %._crit_edge.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.i.epil.init
  %i.et = load i8, ptr %i.es, align 1, !tbaa !30
  %i.eu = zext i8 %i.et to i16
  %i.ev = add i16 %.03437.i.epil.init, %i.eu
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.i.epil.init
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !33
  %i.ey = add i16 %i.ev, %i.ex                    ; 2 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !33
  %i.fb = sub i16 %i.ey, %i.fa
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i.epil.init
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !33
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !33
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %i.s ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ab
  %spec.select86 = select i1 %i.fe, ptr %i.w, ptr %i.fd
  %i.ff = icmp sgt i32 %.sroa.14.094, -1
  %i.fg = icmp slt i32 %.sroa.14.094, %i.j
  %or.cond88 = select i1 %i.ff, i1 %i.fg, i1 false
  %.sroa.20.2.idx = select i1 %or.cond88, i64 %i.ae, i64 0
  %.sroa.20.2 = getelementptr inbounds i8, ptr %.sroa.20.095, i64 %.sroa.20.2.idx
  %.not32 = icmp slt i32 %.sroa.14.094, %.1
  br i1 %.not32, label %bb.t, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %._crit_edge.i.loopexit
  %brmerge = select i1 %min.iters.check159, i1 true, i1 %conflict.rdx157
  br i1 %brmerge, label %.lr.ph.i35.preheader176, label %vector.body164

vector.body164:                                   ; preds = %.lr.ph.i35.preheader, %vector.body164
  %index165 = phi i64 [ %index.next169, %vector.body164 ], [ 0, %.lr.ph.i35.preheader ] ; 4 uses
  %i.fh = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index165
  %i.fi = getelementptr i8, ptr %i.fh, i64 -2
  %wide.load166 = load <8 x i16>, ptr %i.fi, align 2, !tbaa !33, !alias.scope !34
  %i.fj = sub nuw nsw i64 %i.ch, %index165
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fj
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -14
  %wide.load167 = load <8 x i16>, ptr %i.fl, align 2, !tbaa !33, !alias.scope !35
  %reverse168 = shufflevector <8 x i16> %wide.load167, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fm = add <8 x i16> %reverse168, %wide.load166
  %i.fn = zext <8 x i16> %i.fm to <8 x i32>
  %i.fo = mul nuw <8 x i32> %broadcast.splat163, %i.fn
  %i.fp = lshr <8 x i32> %i.fo, splat (i32 16)
  %i.fq = trunc nuw <8 x i32> %i.fp to <8 x i16>
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %index165
  store <8 x i16> %i.fq, ptr %i.fr, align 2, !tbaa !33, !alias.scope !36, !noalias !37
  %index.next169 = add nuw i64 %index165, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next169, %n.vec161
  br i1 %i.fs, label %middle.block170, label %vector.body164, !llvm.loop !17

middle.block170:                                  ; preds = %vector.body164
  br i1 %cmp.n171, label %.preheader53.i, label %.lr.ph.i35.preheader176

.lr.ph.i35.preheader176:                          ; preds = %.lr.ph.i35.preheader, %middle.block170
  %indvars.iv.i36.ph = phi i64 [ %n.vec161, %middle.block170 ], [ 0, %.lr.ph.i35.preheader ] ; 6 uses
  br i1 %lcmp.mod180.not, label %.lr.ph.i35.prol.loopexit, label %.lr.ph.i35.prol

.lr.ph.i35.prol:                                  ; preds = %.lr.ph.i35.preheader176
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36.ph
  %i.ft = getelementptr i8, ptr %gep.i.prol, i64 -2
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !33
  %i.fv = sub nuw nsw i64 %i.ch, %indvars.iv.i36.ph
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !33
  %i.fy = add i16 %i.fx, %i.fu
  %i.fz = zext i16 %i.fy to i32
  %i.ga = mul nuw i32 %i.ce, %i.fz
  %i.gb = lshr i32 %i.ga, 16
  %i.gc = trunc nuw i32 %i.gb to i16
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36.ph
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !33
  %indvars.iv.next.i37.prol = or disjoint i64 %indvars.iv.i36.ph, 1
  br label %.lr.ph.i35.prol.loopexit

.lr.ph.i35.prol.loopexit:                         ; preds = %.lr.ph.i35.prol, %.lr.ph.i35.preheader176
  %indvars.iv.i36.unr = phi i64 [ %indvars.iv.i36.ph, %.lr.ph.i35.preheader176 ], [ %indvars.iv.next.i37.prol, %.lr.ph.i35.prol ]
  %i.ge = icmp eq i64 %indvars.iv.i36.ph, %i.dn
  br i1 %i.ge, label %.preheader53.i, label %.lr.ph.i35

.preheader53.i:                                   ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35, %middle.block170
  br i1 %i.ck, label %.lr.ph57.i.preheader, label %.preheader.i

.lr.ph57.i.preheader:                             ; preds = %.preheader53.i
  %or.cond174.not = xor i1 %or.cond174, true
  %brmerge183 = select i1 %or.cond174.not, i1 true, i1 %conflict.rdx130
  br i1 %brmerge183, label %.lr.ph57.i.preheader175, label %vector.body137

vector.body137:                                   ; preds = %.lr.ph57.i.preheader, %vector.body137
  %index138 = phi i64 [ %index.next141, %vector.body137 ], [ 0, %.lr.ph57.i.preheader ] ; 2 uses
  %i.gf = add nuw i64 %index138, %wide.trip.count.i34 ; 3 uses
  %i.gg = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.gf
  %wide.load139 = load <8 x i16>, ptr %i.gg, align 2, !tbaa !33
  %i.gh = trunc nuw nsw i64 %i.gf to i32
  %i.gi = add i32 %i.gh, %i.cl
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.gj
  %wide.load140 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !33
  %i.gl = sub <8 x i16> %wide.load139, %wide.load140
  %i.gm = zext <8 x i16> %i.gl to <8 x i32>
  %i.gn = mul nuw <8 x i32> %broadcast.splat136, %i.gm
  %i.go = lshr <8 x i32> %i.gn, splat (i32 16)
  %i.gp = trunc nuw <8 x i32> %i.go to <8 x i16>
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.gf
  store <8 x i16> %i.gp, ptr %i.gq, align 2, !tbaa !33
  %index.next141 = add nuw i64 %index138, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.gr, label %middle.block142, label %vector.body137, !llvm.loop !18

middle.block142:                                  ; preds = %vector.body137
  br i1 %cmp.n143, label %.preheader.loopexit.i, label %.lr.ph57.i.preheader175

.lr.ph57.i.preheader175:                          ; preds = %.lr.ph57.i.preheader, %middle.block142
  %indvars.iv63.i.ph = phi i64 [ %i.dv, %middle.block142 ], [ %wide.trip.count.i34, %.lr.ph57.i.preheader ]
  br label %.lr.ph57.i

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i37.1, %.lr.ph.i35 ], [ %indvars.iv.i36.unr, %.lr.ph.i35.prol.loopexit ] ; 5 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36
  %i.gs = getelementptr i8, ptr %gep.i, i64 -2
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !33
  %i.gu = sub nuw nsw i64 %i.ch, %indvars.iv.i36
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !33
  %i.gx = add i16 %i.gw, %i.gt
  %i.gy = zext i16 %i.gx to i32
  %i.gz = mul nuw i32 %i.ce, %i.gy
  %i.ha = lshr i32 %i.gz, 16
  %i.hb = trunc nuw i32 %i.ha to i16
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !33
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 3 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i37
  %i.hd = getelementptr i8, ptr %gep.i.1, i64 -2
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !33
  %i.hf = sub nuw nsw i64 %i.ch, %indvars.iv.next.i37
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !33
  %i.hi = add i16 %i.hh, %i.he
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul nuw i32 %i.ce, %i.hj
  %i.hl = lshr i32 %i.hk, 16
  %i.hm = trunc nuw i32 %i.hl to i16
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next.i37
  store i16 %i.hm, ptr %i.hn, align 2, !tbaa !33
  %indvars.iv.next.i37.1 = add nuw nsw i64 %indvars.iv.i36, 2 ; 2 uses
  %exitcond.not.i38.1 = icmp eq i64 %indvars.iv.next.i37.1, %wide.trip.count.i34
  br i1 %exitcond.not.i38.1, label %.preheader53.i, label %.lr.ph.i35, !llvm.loop !19

.preheader.loopexit.i:                            ; preds = %.lr.ph57.i, %middle.block142
  %indvars.iv.next64.i.lcssa = phi i64 [ %i.dv, %middle.block142 ], [ %indvars.iv.next64.i, %.lr.ph57.i ]
  %i.ho = trunc nuw nsw i64 %indvars.iv.next64.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader53.i
  %.1.lcssa.i = phi i32 [ %i.ci, %.preheader53.i ], [ %i.ho, %.preheader.loopexit.i ] ; 6 uses
  %i.hp = icmp slt i32 %.1.lcssa.i, %1
  br i1 %i.hp, label %.lr.ph60.i, label %.lr.ph.i41.preheader

.lr.ph60.i:                                       ; preds = %.preheader.i
  %i.hq = zext i32 %.1.lcssa.i to i64             ; 10 uses
  %i.hr = sub nsw i64 %i.s, %i.hq                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.hr, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph60.i
  %i.hs = xor i64 %i.hq, -1
  %i.ht = add nsw i64 %i.hs, %i.s                 ; 2 uses
  %i.hu = add i32 %.1, %.1.lcssa.i
  %i.hv = sub i32 %i.cq, %i.hu                    ; 2 uses
  %i.hw = trunc i64 %i.ht to i32                  ; 2 uses
  %i.hx = sub i32 %i.hv, %i.hw
  %i.hy = icmp sgt i32 %i.hx, %i.hv
  %i.hz = add i32 %.1.lcssa.i, %i.cr              ; 2 uses
  %i.ia = add i32 %i.hz, %i.hw
  %i.ib = icmp slt i32 %i.ia, %i.hz
  %i.ic = icmp ugt i64 %i.ht, 4294967295
  %i.id = or i1 %i.ib, %i.ic
  %i.ie = or i1 %i.hy, %i.id
  br i1 %i.ie, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.if = shl nuw nsw i64 %i.hq, 1
  %scevgep109 = getelementptr i8, ptr %scevgep, i64 %i.if ; 3 uses
  %i.ig = add i32 %.1, %.1.lcssa.i
  %i.ih = sub i32 %i.ct, %i.ig
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = add nsw i64 %i.aa, %i.ii
  %i.ik = add nsw i64 %i.ij, %i.hq
  %i.il = shl nsw i64 %i.ik, 1
  %scevgep111 = getelementptr i8, ptr %scevgep110, i64 %i.il
  %i.im = shl nsw i64 %i.ii, 1
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.im
  %i.in = add i32 %.1.lcssa.i, %i.cw
  %i.io = sext i32 %i.in to i64                   ; 2 uses
  %i.ip = shl nsw i64 %i.io, 1
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.ip
  %i.iq = add nsw i64 %i.cx, %i.io
  %i.ir = sub nsw i64 %i.iq, %i.hq
  %i.is = shl nsw i64 %i.ir, 1
  %scevgep116 = getelementptr i8, ptr %i.w, i64 %i.is
  %bound0 = icmp ult ptr %scevgep109, %i.cn
  %found.conflict = and i1 %bound0, %bound1
  %bound0117 = icmp ult ptr %scevgep109, %scevgep113
  %bound1118 = icmp ult ptr %scevgep111, %i.bj
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx = or i1 %found.conflict, %found.conflict119
  %bound0120 = icmp ult ptr %scevgep109, %scevgep116
  %bound1121 = icmp ult ptr %scevgep115, %i.bj
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx, %found.conflict122
  br i1 %conflict.rdx123, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hr, -8                      ; 3 uses
  %i.it = add nsw i64 %n.vec, %i.hq
  %i.iu = load i16, ptr %i.co, align 2, !tbaa !33, !alias.scope !40
  %i.iv = shl i16 %i.iu, 1
  %broadcast.splatinsert125 = insertelement <8 x i16> poison, i16 %i.iv, i64 0
  %broadcast.splat126 = shufflevector <8 x i16> %broadcast.splatinsert125, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iw = add nuw i64 %index, %i.hq               ; 2 uses
  %i.ix = trunc nsw i64 %i.iw to i32              ; 2 uses
  %i.iy = add i32 %.1, %i.ix
  %i.iz = sub i32 %i.cp, %i.iy
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ja
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -14
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !tbaa !33, !alias.scope !41
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.jd = add i32 %i.ix, %i.cl
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.je
  %wide.load124 = load <8 x i16>, ptr %i.jf, align 2, !tbaa !33, !alias.scope !42
  %i.jg = add <8 x i16> %reverse, %wide.load124
  %i.jh = sub <8 x i16> %broadcast.splat126, %i.jg
  %i.ji = zext <8 x i16> %i.jh to <8 x i32>
  %i.jj = mul nuw <8 x i32> %broadcast.splat, %i.ji
  %i.jk = lshr <8 x i32> %i.jj, splat (i32 16)
  %i.jl = trunc nuw <8 x i32> %i.jk to <8 x i16>
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.iw
  store <8 x i16> %i.jl, ptr %i.jm, align 2, !tbaa !33, !alias.scope !43, !noalias !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hr, %n.vec
  br i1 %cmp.n, label %.lr.ph.i41.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph60.i, %middle.block
  %indvars.iv66.i.ph = phi i64 [ %i.hq, %vector.memcheck ], [ %i.hq, %vector.scevcheck ], [ %i.hq, %.lr.ph60.i ], [ %i.it, %middle.block ]
  br label %scalar.ph

.lr.ph57.i:                                       ; preds = %.lr.ph57.i.preheader175, %.lr.ph57.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.lr.ph57.i ], [ %indvars.iv63.i.ph, %.lr.ph57.i.preheader175 ] ; 4 uses
  %gep74.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv63.i
  %i.jo = load i16, ptr %gep74.i, align 2, !tbaa !33
  %i.jp = trunc nuw nsw i64 %indvars.iv63.i to i32
  %i.jq = add i32 %i.jp, %i.cl
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.jr
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !33
  %i.ju = sub i16 %i.jo, %i.jt
  %i.jv = zext i16 %i.ju to i32
  %i.jw = mul nuw i32 %i.ce, %i.jv
  %i.jx = lshr i32 %i.jw, 16
  %i.jy = trunc nuw i32 %i.jx to i16
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv63.i
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !33
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 3 uses
  %i.ka = icmp samesign ult i64 %indvars.iv.next64.i, %i.cm
  br i1 %i.ka, label %.lr.ph57.i, label %.preheader.loopexit.i, !llvm.loop !26

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %scalar.ph ], [ %indvars.iv66.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kb = load i16, ptr %i.co, align 2, !tbaa !33
  %i.kc = shl i16 %i.kb, 1
  %i.kd = trunc nsw i64 %indvars.iv66.i to i32    ; 2 uses
  %i.ke = add i32 %.1, %i.kd
  %i.kf = sub i32 %i.cp, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.kg
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !33
  %i.kj = add i32 %i.kd, %i.cl
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !33
  %i.kn = add i16 %i.ki, %i.km
  %i.ko = sub i16 %i.kc, %i.kn
  %i.kp = zext i16 %i.ko to i32
  %i.kq = mul nuw i32 %i.ce, %i.kp
  %i.kr = lshr i32 %i.kq, 16
  %i.ks = trunc nuw i32 %i.kr to i16
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv66.i
  store i16 %i.ks, ptr %i.kt, align 2, !tbaa !33
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %i.s
  br i1 %exitcond70.not.i, label %.lr.ph.i41.preheader, label %scalar.ph, !llvm.loop !27

.lr.ph.i41.preheader:                             ; preds = %scalar.ph, %middle.block, %.preheader.i
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.preheader, %bb.s
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %bb.s ], [ 0, %.lr.ph.i41.preheader ] ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.23.096, i64 %indvars.iv.i43 ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !30
  %i.kw = zext i8 %i.kv to i32                    ; 4 uses
  %i.kx = icmp sgt i32 %.sroa.55.2, %i.kw
  %i.ky = icmp slt i32 %.sroa.52.2, %i.kw
  %or.cond89 = select i1 %i.kx, i1 %i.ky, i1 false
  br i1 %or.cond89, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i41
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i43
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !33
  %i.lb = zext i16 %i.la to i32
  %i.lc = shl nuw nsw i32 %i.kw, 2
  %i.ld = sub nsw i32 %i.lb, %i.lc
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.le
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !33
  %i.lh = sext i16 %i.lg to i32
  %i.li = add nsw i32 %i.lh, %i.kw
  %i.lj = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 33023) %i.li, i32 0)
  %i.lk = tail call i32 @llvm.umin.i32(i32 %i.lj, i32 255)
  %i.ll = trunc nuw i32 %i.lk to i8
  store i8 %i.ll, ptr %i.ku, align 1, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i41
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %i.s
  br i1 %exitcond.not.i45, label %ApplyFilter.exit.loopexit, label %.lr.ph.i41, !llvm.loop !28

ApplyFilter.exit.loopexit:                        ; preds = %bb.s
  %i.lm = getelementptr inbounds i8, ptr %.sroa.23.096, i64 %i.ae
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.loopexit, %ApplyFilter.exit.loopexit
  %.sroa.23.1 = phi ptr [ %.sroa.23.096, %._crit_edge.i.loopexit ], [ %i.lm, %ApplyFilter.exit.loopexit ]
  %i.ln = add nsw i32 %.sroa.14.094, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ln, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.preheader.i, !llvm.loop !29

.loopexit:                                        ; preds = %bb.t, %bb.q
  tail call void @WebPSafeFree(ptr noundef nonnull %i.w) #6
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %.loopexit, %bb.b, %bb.a
  %.126 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.loopexit ], [ 0, %bb.d ]
  ret i32 %.126
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !31}
!9 = distinct !{!9, !31}
!10 = distinct !{!10, !31}
!11 = distinct !{!11, !31}
!12 = distinct !{!12, !31}
!13 = distinct !{!13, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !31, !38, !39}
!18 = distinct !{!18, !31, !38, !39}
!19 = distinct !{!19, !31, !38}
!20 = distinct !{!20, !"LVerDomain"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !31, !38, !39}
!26 = distinct !{!26, !31, !38}
!27 = distinct !{!27, !31, !38}
!28 = distinct !{!28, !31}
!29 = distinct !{!29, !31}
!30 = !{!4, !4, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"short", !4, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!14}
!35 = !{!15}
!36 = !{!16}
!37 = !{!14, !15}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!21}
!41 = !{!22}
!42 = !{!23}
!43 = !{!24}
!44 = !{!21, !22, !23}
end_hunk_0
