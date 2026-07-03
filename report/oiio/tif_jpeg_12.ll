inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@JPEGDecodeRaw:bb.a
  br i1 %i.aw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge176
  %indvars.iv229 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next230, %._crit_edge176 ] ; 2 uses
  %.0130190 = phi ptr [ %i.ax, %.lr.ph.preheader ], [ %i.er, %._crit_edge176 ] ; 3 uses
  %.0131189 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1132.lcssa, %._crit_edge176 ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0130190, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !144 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0130190, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !146 ; 7 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph175, label %._crit_edge176

.lr.ph175:                                        ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv229
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !175 ; 2 uses
  %i.bf = mul nsw i32 %i.au, %i.bb                ; 2 uses
  %i.bg = icmp eq i32 %i.az, 1
  %i.bh = icmp sgt i32 %i.az, 0
  br i1 %i.bg, label %.lr.ph175.split.us, label %.lr.ph175.split

.lr.ph175.split.us:                               ; preds = %.lr.ph175
  br i1 %.not139165, label %.preheader156.us.us.preheader, label %.preheader156.us.preheader

.preheader156.us.preheader:                       ; preds = %.lr.ph175.split.us
  %i.bi = sext i32 %i.bf to i64
  %i.bj = sext i32 %.0131189 to i64
  %wide.trip.count227 = zext nneg i32 %i.bb to i64
  %invariant.gep258 = getelementptr [8 x i8], ptr %i.be, i64 %i.bi
  br label %.preheader156.us

.preheader156.us.us.preheader:                    ; preds = %.lr.ph175.split.us
  %i.bk = add i32 %.0131189, %i.bb
  br label %._crit_edge176

.preheader156.us:                                 ; preds = %.preheader156.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv222 = phi i64 [ %i.bj, %.preheader156.us.preheader ], [ %indvars.iv.next223, %..loopexit_crit_edge.us ] ; 2 uses
  %indvars.iv220 = phi i64 [ 0, %.preheader156.us.preheader ], [ %indvars.iv.next221, %..loopexit_crit_edge.us ] ; 2 uses
  %gep259 = getelementptr [8 x i8], ptr %invariant.gep258, i64 %indvars.iv220
  %i.bl = load ptr, ptr %gep259, align 8, !tbaa !151 ; 2 uses
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %indvars.iv222 ; 2 uses
  br i1 %lcmp.mod309.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader156.us, %.prol.preheader
  %.0119171.us.prol = phi ptr [ %i.bq, %.prol.preheader ], [ %i.bm, %.preheader156.us ] ; 2 uses
  %.0121170.us.prol = phi i32 [ %i.bn, %.prol.preheader ], [ %i.q, %.preheader156.us ]
  %.0123169.us.prol = phi ptr [ %i.bo, %.prol.preheader ], [ %i.bl, %.preheader156.us ] ; 2 uses
  %prol.iter310 = phi i32 [ %prol.iter310.next, %.prol.preheader ], [ 0, %.preheader156.us ]
  %i.bn = add i32 %.0121170.us.prol, -1           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0123169.us.prol, i64 2 ; 2 uses
  %i.bp = load i16, ptr %.0123169.us.prol, align 2, !tbaa !79
  store i16 %i.bp, ptr %.0119171.us.prol, align 2, !tbaa !79
  %i.bq = getelementptr inbounds [2 x i8], ptr %.0119171.us.prol, i64 %i.ai ; 2 uses
  %prol.iter310.next = add i32 %prol.iter310, 1   ; 2 uses
  %prol.iter310.cmp.not = icmp eq i32 %prol.iter310.next, %xtraiter308
  br i1 %prol.iter310.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !190

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader156.us
  %.0119171.us.unr = phi ptr [ %i.bm, %.preheader156.us ], [ %i.bq, %.prol.preheader ]
  %.0121170.us.unr = phi i32 [ %i.q, %.preheader156.us ], [ %i.bn, %.prol.preheader ]
  %.0123169.us.unr = phi ptr [ %i.bl, %.preheader156.us ], [ %i.bo, %.prol.preheader ]
  br i1 %i.am, label %..loopexit_crit_edge.us, label %.preheader156.us.new

.preheader156.us.new:                             ; preds = %.prol.loopexit, %.preheader156.us.new
  %.0119171.us = phi ptr [ %i.cp, %.preheader156.us.new ], [ %.0119171.us.unr, %.prol.loopexit ] ; 2 uses
  %.0121170.us = phi i32 [ %i.cm, %.preheader156.us.new ], [ %.0121170.us.unr, %.prol.loopexit ]
  %.0123169.us = phi ptr [ %i.cn, %.preheader156.us.new ], [ %.0123169.us.unr, %.prol.loopexit ] ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 2
  %i.bs = load i16, ptr %.0123169.us, align 2, !tbaa !79
  store i16 %i.bs, ptr %.0119171.us, align 2, !tbaa !79
  %i.bt = getelementptr inbounds [2 x i8], ptr %.0119171.us, i64 %i.ai ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 4
  %i.bv = load i16, ptr %i.br, align 2, !tbaa !79
  store i16 %i.bv, ptr %i.bt, align 2, !tbaa !79
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.bt, i64 %i.ai ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 6
  %i.by = load i16, ptr %i.bu, align 2, !tbaa !79
  store i16 %i.by, ptr %i.bw, align 2, !tbaa !79
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.ai ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 8
  %i.cb = load i16, ptr %i.bx, align 2, !tbaa !79
  store i16 %i.cb, ptr %i.bz, align 2, !tbaa !79
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.ai ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 10
  %i.ce = load i16, ptr %i.ca, align 2, !tbaa !79
  store i16 %i.ce, ptr %i.cc, align 2, !tbaa !79
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.ai ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 12
  %i.ch = load i16, ptr %i.cd, align 2, !tbaa !79
  store i16 %i.ch, ptr %i.cf, align 2, !tbaa !79
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cf, i64 %i.ai ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 14
  %i.ck = load i16, ptr %i.cg, align 2, !tbaa !79
  store i16 %i.ck, ptr %i.ci, align 2, !tbaa !79
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.ai ; 2 uses
  %i.cm = add i32 %.0121170.us, -8                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0123169.us, i64 16
  %i.co = load i16, ptr %i.cj, align 2, !tbaa !79
  store i16 %i.co, ptr %i.cl, align 2, !tbaa !79
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.ai
  %.not140.us.7 = icmp eq i32 %i.cm, 0
  br i1 %.not140.us.7, label %..loopexit_crit_edge.us, label %.preheader156.us.new

..loopexit_crit_edge.us:                          ; preds = %.preheader156.us.new, %.prol.loopexit
  %indvars.iv.next223 = add nsw i64 %indvars.iv222, 1 ; 2 uses
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge176.loopexit198, label %.preheader156.us

.lr.ph175.split:                                  ; preds = %.lr.ph175
  br i1 %.not139165, label %.preheader157.us.preheader, label %.lr.ph175.split.split

.preheader157.us.preheader:                       ; preds = %.lr.ph175.split
  %i.cq = mul i32 %i.bb, %i.az
  %i.cr = add i32 %.0131189, %i.cq
  br label %._crit_edge176

.lr.ph175.split.split:                            ; preds = %.lr.ph175.split
  br i1 %i.bh, label %.preheader157.us182.preheader, label %.preheader157.preheader

.preheader157.preheader:                          ; preds = %.lr.ph175.split.split
  %i.cs = mul i32 %i.bb, %i.az
  %i.ct = add i32 %.0131189, %i.cs
  br label %._crit_edge176

.preheader157.us182.preheader:                    ; preds = %.lr.ph175.split.split
  %i.cu = sext i32 %i.bf to i64
  %i.cv = sext i32 %.0131189 to i64               ; 2 uses
  %i.cw = zext nneg i32 %i.az to i64
  %wide.trip.count218 = zext nneg i32 %i.bb to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.be, i64 %i.cu
  %wide.trip.count = zext nneg i32 %i.az to i64   ; 9 uses
  %i.cx = shl nsw i64 %i.cv, 1
  %i.cy = add i64 %i.cx, %i.ac
  %i.cz = shl nuw nsw i64 %wide.trip.count, 1
  %min.iters.check274 = icmp ult i32 %i.az, 4
  %min.iters.check276 = icmp ult i32 %i.az, 16
  %n.mod.vf278 = and i64 %wide.trip.count, 12
  %n.vec279 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.da = shl nuw nsw i64 %n.vec279, 1
  %cmp.n286 = icmp eq i64 %n.vec279, %wide.trip.count
  %min.epilog.iters.check292 = icmp eq i64 %n.mod.vf278, 0
  %n.vec295 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.db = shl nuw nsw i64 %n.vec295, 1
  %cmp.n302 = icmp eq i64 %n.vec295, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader157.us182

.preheader157.us182:                              ; preds = %.preheader157.us182.preheader, %..loopexit158_crit_edge.us
  %indvars.iv213 = phi i64 [ %i.cv, %.preheader157.us182.preheader ], [ %indvars.iv.next214, %..loopexit158_crit_edge.us ] ; 2 uses
  %indvars.iv211 = phi i64 [ 0, %.preheader157.us182.preheader ], [ %indvars.iv.next212, %..loopexit158_crit_edge.us ] ; 3 uses
  %i.dc = mul i64 %i.cz, %indvars.iv211
  %i.dd = add i64 %i.cy, %i.dc
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv211
  %i.de = load ptr, ptr %gep, align 8, !tbaa !151
  %i.df = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %indvars.iv213
  br label %iter.check289

vec.epilog.scalar.ph290:                          ; preds = %vec.epilog.scalar.ph290.prol.loopexit, %vec.epilog.scalar.ph290
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph290 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph290.prol.loopexit ] ; 5 uses
  %.2125163.us = phi ptr [ %i.dr, %vec.epilog.scalar.ph290 ], [ %.2125163.us.unr, %vec.epilog.scalar.ph290.prol.loopexit ] ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.2125163.us, i64 2
  %i.dh = load i16, ptr %.2125163.us, align 2, !tbaa !79
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %indvars.iv
  store i16 %i.dh, ptr %i.di, align 2, !tbaa !79
  %i.dj = getelementptr inbounds nuw i8, ptr %.2125163.us, i64 4
  %i.dk = load i16, ptr %i.dg, align 2, !tbaa !79
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %indvars.iv
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i16 %i.dk, ptr %i.dm, align 2, !tbaa !79
  %i.dn = getelementptr inbounds nuw i8, ptr %.2125163.us, i64 6
  %i.do = load i16, ptr %i.dj, align 2, !tbaa !79
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %indvars.iv
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i16 %i.do, ptr %i.dq, align 2, !tbaa !79
  %i.dr = getelementptr inbounds nuw i8, ptr %.2125163.us, i64 8 ; 2 uses
  %i.ds = load i16, ptr %i.dn, align 2, !tbaa !79
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %indvars.iv
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 6
  store i16 %i.ds, ptr %i.du, align 2, !tbaa !79
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %vec.epilog.scalar.ph290, !llvm.loop !191

iter.check289:                                    ; preds = %.preheader157.us182, %._crit_edge.us
  %indvar = phi i64 [ 0, %.preheader157.us182 ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %.in = phi i32 [ %i.q, %.preheader157.us182 ], [ %i.en, %._crit_edge.us ]
  %.1120167.us = phi ptr [ %i.df, %.preheader157.us182 ], [ %i.eo, %._crit_edge.us ] ; 8 uses
  %.1124166.us = phi ptr [ %i.de, %.preheader157.us182 ], [ %.lcssa261, %._crit_edge.us ] ; 7 uses
  br i1 %min.iters.check274, label %vec.epilog.scalar.ph290.preheader, label %vector.memcheck272

vector.memcheck272:                               ; preds = %iter.check289
  %.1124166.us273 = ptrtoaddr ptr %.1124166.us to i64
  %i.dv = mul i64 %i.al, %indvar
  %i.dw = add i64 %i.dd, %i.dv
  %i.dx = sub i64 %.1124166.us273, %i.dw
  %diff.check = icmp ugt i64 %i.dx, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph290.preheader, label %vector.main.loop.iter.check275

vector.main.loop.iter.check275:                   ; preds = %vector.memcheck272
  br i1 %min.iters.check276, label %vec.epilog.ph293, label %vector.ph277

vector.ph277:                                     ; preds = %vector.main.loop.iter.check275
  %i.dy = getelementptr i8, ptr %.1124166.us, i64 %i.da ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph277
  %index281 = phi i64 [ 0, %vector.ph277 ], [ %index.next284, %vector.body280 ] ; 3 uses
  %i.dz = shl i64 %index281, 1
  %next.gep = getelementptr i8, ptr %.1124166.us, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  %wide.load282 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !79
  %wide.load283 = load <8 x i16>, ptr %i.ea, align 2, !tbaa !79
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %index281 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <8 x i16> %wide.load282, ptr %i.eb, align 2, !tbaa !79
  store <8 x i16> %wide.load283, ptr %i.ec, align 2, !tbaa !79
  %index.next284 = add nuw i64 %index281, 16      ; 2 uses
  %i.ed = icmp eq i64 %index.next284, %n.vec279
  br i1 %i.ed, label %middle.block285, label %vector.body280, !llvm.loop !192

middle.block285:                                  ; preds = %vector.body280
  br i1 %cmp.n286, label %._crit_edge.us, label %vec.epilog.iter.check291

vec.epilog.iter.check291:                         ; preds = %middle.block285
  br i1 %min.epilog.iters.check292, label %vec.epilog.scalar.ph290.preheader, label %vec.epilog.ph293, !prof !160

vec.epilog.ph293:                                 ; preds = %vector.main.loop.iter.check275, %vec.epilog.iter.check291
  %vec.epilog.resume.val287 = phi i64 [ %n.vec279, %vec.epilog.iter.check291 ], [ 0, %vector.main.loop.iter.check275 ]
  %i.ee = getelementptr i8, ptr %.1124166.us, i64 %i.db ; 2 uses
  br label %vec.epilog.vector.body296

vec.epilog.vector.body296:                        ; preds = %vec.epilog.vector.body296, %vec.epilog.ph293
  %index297 = phi i64 [ %vec.epilog.resume.val287, %vec.epilog.ph293 ], [ %index.next300, %vec.epilog.vector.body296 ] ; 3 uses
  %i.ef = shl i64 %index297, 1
  %next.gep298 = getelementptr i8, ptr %.1124166.us, i64 %i.ef
  %wide.load299 = load <4 x i16>, ptr %next.gep298, align 2, !tbaa !79
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %index297
  store <4 x i16> %wide.load299, ptr %i.eg, align 2, !tbaa !79
  %index.next300 = add nuw i64 %index297, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next300, %n.vec295
  br i1 %i.eh, label %vec.epilog.middle.block301, label %vec.epilog.vector.body296, !llvm.loop !193

vec.epilog.middle.block301:                       ; preds = %vec.epilog.vector.body296
  br i1 %cmp.n302, label %._crit_edge.us, label %vec.epilog.scalar.ph290.preheader

vec.epilog.scalar.ph290.preheader:                ; preds = %vector.memcheck272, %iter.check289, %vec.epilog.iter.check291, %vec.epilog.middle.block301
  %indvars.iv.ph = phi i64 [ 0, %iter.check289 ], [ 0, %vector.memcheck272 ], [ %n.vec279, %vec.epilog.iter.check291 ], [ %n.vec295, %vec.epilog.middle.block301 ] ; 3 uses
  %.2125163.us.ph = phi ptr [ %.1124166.us, %iter.check289 ], [ %.1124166.us, %vector.memcheck272 ], [ %i.dy, %vec.epilog.iter.check291 ], [ %i.ee, %vec.epilog.middle.block301 ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph290.prol.loopexit, label %vec.epilog.scalar.ph290.prol

vec.epilog.scalar.ph290.prol:                     ; preds = %vec.epilog.scalar.ph290.preheader, %vec.epilog.scalar.ph290.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph290.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph290.preheader ] ; 2 uses
  %.2125163.us.prol = phi ptr [ %i.ei, %vec.epilog.scalar.ph290.prol ], [ %.2125163.us.ph, %vec.epilog.scalar.ph290.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph290.prol ], [ 0, %vec.epilog.scalar.ph290.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.2125163.us.prol, i64 2 ; 3 uses
  %i.ej = load i16, ptr %.2125163.us.prol, align 2, !tbaa !79
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %.1120167.us, i64 %indvars.iv.prol
  store i16 %i.ej, ptr %i.ek, align 2, !tbaa !79
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph290.prol.loopexit, label %vec.epilog.scalar.ph290.prol, !llvm.loop !194

vec.epilog.scalar.ph290.prol.loopexit:            ; preds = %vec.epilog.scalar.ph290.prol, %vec.epilog.scalar.ph290.preheader
  %.lcssa306.unr = phi ptr [ poison, %vec.epilog.scalar.ph290.preheader ], [ %i.ei, %vec.epilog.scalar.ph290.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph290.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph290.prol ]
  %.2125163.us.unr = phi ptr [ %.2125163.us.ph, %vec.epilog.scalar.ph290.preheader ], [ %i.ei, %vec.epilog.scalar.ph290.prol ]
  %i.el = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %._crit_edge.us, label %vec.epilog.scalar.ph290

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph290.prol.loopexit, %vec.epilog.scalar.ph290, %vec.epilog.middle.block301, %middle.block285
  %.lcssa261 = phi ptr [ %i.ee, %vec.epilog.middle.block301 ], [ %i.dy, %middle.block285 ], [ %.lcssa306.unr, %vec.epilog.scalar.ph290.prol.loopexit ], [ %i.dr, %vec.epilog.scalar.ph290 ]
  %i.en = add i32 %.in, -1                        ; 2 uses
  %i.eo = getelementptr inbounds [2 x i8], ptr %.1120167.us, i64 %i.ai
  %.not139.us = icmp eq i32 %i.en, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not139.us, label %..loopexit158_crit_edge.us, label %iter.check289

..loopexit158_crit_edge.us:                       ; preds = %._crit_edge.us
  %indvars.iv.next214 = add nsw i64 %indvars.iv213, %i.cw ; 2 uses
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count218
  br i1 %exitcond219.not, label %._crit_edge176.loopexit200, label %.preheader157.us182

._crit_edge176.loopexit198:                       ; preds = %..loopexit_crit_edge.us
  %i.ep = trunc nsw i64 %indvars.iv.next223 to i32
  br label %._crit_edge176

._crit_edge176.loopexit200:                       ; preds = %..loopexit158_crit_edge.us
  %i.eq = trunc nsw i64 %indvars.iv.next214 to i32
  br label %._crit_edge176

._crit_edge176:                                   ; preds = %.preheader157.preheader, %._crit_edge176.loopexit200, %.preheader157.us.preheader, %._crit_edge176.loopexit198, %.preheader156.us.us.preheader, %.lr.ph
  %.1132.lcssa = phi i32 [ %.0131189, %.lr.ph ], [ %i.bk, %.preheader156.us.us.preheader ], [ %i.eq, %._crit_edge176.loopexit200 ], [ %i.ep, %._crit_edge176.loopexit198 ], [ %i.cr, %.preheader157.us.preheader ], [ %i.ct, %.preheader157.preheader ]
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0130190, i64 96
  %i.es = load i32, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp slt i64 %indvars.iv.next230, %i.et
  br i1 %i.eu, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge176, %bb.g
  %.lcssa = phi i32 [ %i.av, %bb.g ], [ %i.es, %._crit_edge176 ]
  %i.ev = load i32, ptr %i.aj, align 8, !tbaa !21
  %i.ew = icmp eq i32 %i.ev, 8
  %i.ex = load i32, ptr %i.t, align 8, !tbaa !21
  %i.ey = mul i32 %i.ex, %.lcssa                  ; 5 uses
  br i1 %i.ew, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %iter.check, label %.loopexit159

iter.check:                                       ; preds = %bb.h
  %wide.trip.count240 = zext nneg i32 %i.ey to i64 ; 10 uses
  %min.iters.check = icmp ult i32 %i.ey, 4
  br i1 %min.iters.check, label %.lr.ph196.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.0110, i64 %wide.trip.count240
  %i.fa = shl nuw nsw i64 %wide.trip.count240, 1
  %scevgep263 = getelementptr i8, ptr %i.ab, i64 %i.fa
  %bound0 = icmp ult ptr %.0110, %scevgep263
  %bound1 = icmp ult ptr %i.ab, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph196.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check264 = icmp ult i32 %i.ey, 16
  br i1 %min.iters.check264, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count240, 12
  %n.vec = and i64 %wide.trip.count240, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load = load <8 x i16>, ptr %i.fb, align 2, !tbaa !79, !alias.scope !195
  %wide.load265 = load <8 x i16>, ptr %i.fc, align 2, !tbaa !79, !alias.scope !195
  %i.fd = trunc <8 x i16> %wide.load to <8 x i8>
  %i.fe = trunc <8 x i16> %wide.load265 to <8 x i8>
  %i.ff = getelementptr inbounds nuw i8, ptr %.0110, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store <8 x i8> %i.fd, ptr %i.ff, align 1, !tbaa !21, !alias.scope !198, !noalias !195
  store <8 x i8> %i.fe, ptr %i.fg, align 1, !tbaa !21, !alias.scope !198, !noalias !195
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count240
  br i1 %cmp.n, label %.loopexit159, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph196.preheader, label %vec.epilog.ph, !prof !160

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec267 = and i64 %wide.trip.count240, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index268 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next270, %vec.epilog.vector.body ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index268
  %wide.load269 = load <4 x i16>, ptr %i.fi, align 2, !tbaa !79, !alias.scope !195
  %i.fj = trunc <4 x i16> %wide.load269 to <4 x i8>
  %i.fk = getelementptr inbounds nuw i8, ptr %.0110, i64 %index268
  store <4 x i8> %i.fj, ptr %i.fk, align 1, !tbaa !21, !alias.scope !198, !noalias !195
  %index.next270 = add nuw i64 %index268, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next270, %n.vec267
  br i1 %i.fl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !201

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n271 = icmp eq i64 %n.vec267, %wide.trip.count240
  br i1 %cmp.n271, label %.loopexit159, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv237.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec267, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter311 = and i64 %wide.trip.count240, 3   ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol

.lr.ph196.prol:                                   ; preds = %.lr.ph196.preheader, %.lr.ph196.prol
  %indvars.iv237.prol = phi i64 [ %indvars.iv.next238.prol, %.lr.ph196.prol ], [ %indvars.iv237.ph, %.lr.ph196.preheader ] ; 3 uses
  %prol.iter313 = phi i64 [ %prol.iter313.next, %.lr.ph196.prol ], [ 0, %.lr.ph196.preheader ]
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv237.prol
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !79
  %i.fo = trunc i16 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %.0110, i64 %indvars.iv237.prol
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !21
  %indvars.iv.next238.prol = add nuw nsw i64 %indvars.iv237.prol, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@JPEGEncodeRaw:bb.a
  %i.dp = load i32, ptr %i.ao, align 8, !tbaa !149
  %i.dq = mul nsw i32 %i.dp, %i.dg
  %i.dr = icmp eq i32 %i.de, 1
  %i.ds = icmp sgt i32 %i.de, 0
  %i.dt = icmp sgt i32 %i.dl, 0                   ; 2 uses
  %i.du = sext i32 %i.dq to i64                   ; 2 uses
  %i.dv = sext i32 %.097140 to i64                ; 3 uses
  br i1 %i.dr, label %.preheader105.us.preheader, label %.preheader106.preheader

.preheader106.preheader:                          ; preds = %.lr.ph125
  %i.dw = sext i32 %i.de to i64                   ; 2 uses
  %wide.trip.count181 = zext nneg i32 %i.dg to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.do, i64 %i.du
  %wide.trip.count = zext i32 %i.de to i64        ; 8 uses
  %.neg = mul nsw i64 %i.dv, -2
  %.neg260 = sub i64 %.neg, %i.cz
  %i.dx = mul nsw i64 %i.dw, -2
  %min.iters.check = icmp ult i32 %i.de, 4
  %min.iters.check241 = icmp ult i32 %i.de, 16
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 5 uses
  %i.dy = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec244 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.dz = shl nuw nsw i64 %n.vec244, 1
  %cmp.n249 = icmp eq i64 %n.vec244, %wide.trip.count
  %xtraiter266 = and i32 %i.dl, 7                 ; 3 uses
  %i.ea = sub i32 %i.dk, %i.dj
  %i.eb = icmp ugt i32 %i.ea, -8
  %unroll_iter = and i32 %i.dl, 2147483640
  %lcmp.mod267.not = icmp eq i32 %xtraiter266, 0
  %lcmp.mod268 = icmp ne i32 %xtraiter266, 0
  br label %.preheader106

.preheader105.us.preheader:                       ; preds = %.lr.ph125
  %wide.trip.count191 = zext nneg i32 %i.dg to i64
  %invariant.gep228 = getelementptr [8 x i8], ptr %i.do, i64 %i.du
  %xtraiter272 = and i32 %i.dl, 7                 ; 3 uses
  %i.ec = sub i32 %i.dk, %i.dj
  %i.ed = icmp ugt i32 %i.ec, -8
  %unroll_iter276 = and i32 %i.dl, 2147483640
  %lcmp.mod274.not = icmp eq i32 %xtraiter272, 0
  %lcmp.mod275 = icmp ne i32 %xtraiter272, 0
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %._crit_edge.us129, %.preheader105.us.preheader
  %indvars.iv186 = phi i64 [ %i.dv, %.preheader105.us.preheader ], [ %indvars.iv.next187, %._crit_edge.us129 ] ; 2 uses
  %indvars.iv184 = phi i64 [ 0, %.preheader105.us.preheader ], [ %indvars.iv.next185, %._crit_edge.us129 ] ; 2 uses
  %gep229 = getelementptr [8 x i8], ptr %invariant.gep228, i64 %indvars.iv184
  %i.ee = load ptr, ptr %gep229, align 8, !tbaa !151 ; 2 uses
  %i.ef = getelementptr inbounds [2 x i8], ptr %.081154, i64 %indvars.iv186 ; 2 uses
  br i1 %lcmp.mod270.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.082118.us.prol = phi ptr [ %i.ej, %.lr.ph.us.prol ], [ %i.ef, %.lr.ph.us.preheader ] ; 2 uses
  %.084117.us.prol = phi ptr [ %i.ei, %.lr.ph.us.prol ], [ %i.ee, %.lr.ph.us.preheader ] ; 3 uses
  %.090116.us.prol = phi i32 [ %i.eg, %.lr.ph.us.prol ], [ %.fr, %.lr.ph.us.preheader ]
  %prol.iter271 = phi i32 [ %prol.iter271.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.eg = add i32 %.090116.us.prol, -1            ; 2 uses
  %i.eh = load i16, ptr %.082118.us.prol, align 2, !tbaa !79
  %i.ei = getelementptr inbounds nuw i8, ptr %.084117.us.prol, i64 2 ; 3 uses
  store i16 %i.eh, ptr %.084117.us.prol, align 2, !tbaa !79
  %i.ej = getelementptr inbounds [2 x i8], ptr %.082118.us.prol, i64 %i.ap ; 2 uses
  %prol.iter271.next = add i32 %prol.iter271, 1   ; 2 uses
  %prol.iter271.cmp.not = icmp eq i32 %prol.iter271.next, %xtraiter269
  br i1 %prol.iter271.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !210

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.084117.us.lcssa.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %.084117.us.prol, %.lr.ph.us.prol ]
  %.lcssa265.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %i.ei, %.lr.ph.us.prol ]
  %.082118.us.unr = phi ptr [ %i.ef, %.lr.ph.us.preheader ], [ %i.ej, %.lr.ph.us.prol ]
  %.084117.us.unr = phi ptr [ %i.ee, %.lr.ph.us.preheader ], [ %i.ei, %.lr.ph.us.prol ]
  %.090116.us.unr = phi i32 [ %.fr, %.lr.ph.us.preheader ], [ %i.eg, %.lr.ph.us.prol ]
  br i1 %i.at, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.082118.us = phi ptr [ %i.fi, %.lr.ph.us ], [ %.082118.us.unr, %.lr.ph.us.prol.loopexit ] ; 2 uses
  %.084117.us = phi ptr [ %i.fh, %.lr.ph.us ], [ %.084117.us.unr, %.lr.ph.us.prol.loopexit ] ; 10 uses
  %.090116.us = phi i32 [ %i.ff, %.lr.ph.us ], [ %.090116.us.unr, %.lr.ph.us.prol.loopexit ]
  %i.ek = load i16, ptr %.082118.us, align 2, !tbaa !79
  %i.el = getelementptr inbounds nuw i8, ptr %.084117.us, i64 2
  store i16 %i.ek, ptr %.084117.us, align 2, !tbaa !79
  %i.em = getelementptr inbounds [2 x i8], ptr %.082118.us, i64 %i.ap ; 2 uses
  %i.en = load i16, ptr %i.em, align 2, !tbaa !79
  %i.eo = getelementptr inbounds nuw i8, ptr %.084117.us, i64 4
  store i16 %i.en, ptr %i.el, align 2, !tbaa !79
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.em, i64 %i.ap ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !79
  %i.er = getelementptr inbounds nuw i8, ptr %.084117.us, i64 6
  store i16 %i.eq, ptr %i.eo, align 2, !tbaa !79
  %i.es = getelementptr inbounds [2 x i8], ptr %i.ep, i64 %i.ap ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !79
  %i.eu = getelementptr inbounds nuw i8, ptr %.084117.us, i64 8
  store i16 %i.et, ptr %i.er, align 2, !tbaa !79
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.es, i64 %i.ap ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !79
  %i.ex = getelementptr inbounds nuw i8, ptr %.084117.us, i64 10
  store i16 %i.ew, ptr %i.eu, align 2, !tbaa !79
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.ap ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !79
  %i.fa = getelementptr inbounds nuw i8, ptr %.084117.us, i64 12
  store i16 %i.ez, ptr %i.ex, align 2, !tbaa !79
  %i.fb = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.ap ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !79
  %i.fd = getelementptr inbounds nuw i8, ptr %.084117.us, i64 14
  store i16 %i.fc, ptr %i.fa, align 2, !tbaa !79
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.fb, i64 %i.ap ; 2 uses
  %i.ff = add i32 %.090116.us, -8                 ; 2 uses
  %i.fg = load i16, ptr %i.fe, align 2, !tbaa !79
  %i.fh = getelementptr inbounds nuw i8, ptr %.084117.us, i64 16 ; 2 uses
  store i16 %i.fg, ptr %i.fd, align 2, !tbaa !79
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.fe, i64 %i.ap
  %.not104.us.7 = icmp eq i32 %i.ff, 0
  br i1 %.not104.us.7, label %.loopexit.us.unr-lcssa, label %.lr.ph.us

._crit_edge.us129.loopexit.unr-lcssa:             ; preds = %.lr.ph121.us
  br i1 %lcmp.mod274.not, label %._crit_edge.us129, label %.lr.ph121.us.epil.preheader

.lr.ph121.us.epil.preheader:                      ; preds = %._crit_edge.us129.loopexit.unr-lcssa, %.lr.ph121.us.preheader
  %.4120.us.epil.init = phi ptr [ %.lcssa265, %.lr.ph121.us.preheader ], [ %i.fr, %._crit_edge.us129.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod275)
  br label %.lr.ph121.us.epil

.lr.ph121.us.epil:                                ; preds = %.lr.ph121.us.epil, %.lr.ph121.us.epil.preheader
  %.4120.us.epil = phi ptr [ %i.fj, %.lr.ph121.us.epil ], [ %.4120.us.epil.init, %.lr.ph121.us.epil.preheader ] ; 2 uses
  %epil.iter273 = phi i32 [ %epil.iter273.next, %.lr.ph121.us.epil ], [ 0, %.lr.ph121.us.epil.preheader ]
  store i16 %load_initial258, ptr %.4120.us.epil, align 2, !tbaa !79
  %i.fj = getelementptr inbounds nuw i8, ptr %.4120.us.epil, i64 2
  %epil.iter273.next = add i32 %epil.iter273, 1   ; 2 uses
  %epil.iter273.cmp.not = icmp eq i32 %epil.iter273.next, %xtraiter272
  br i1 %epil.iter273.cmp.not, label %._crit_edge.us129, label %.lr.ph121.us.epil, !llvm.loop !211

._crit_edge.us129:                                ; preds = %._crit_edge.us129.loopexit.unr-lcssa, %.lr.ph121.us.epil, %.loopexit.us
  %indvars.iv.next187 = add nsw i64 %indvars.iv186, 1 ; 2 uses
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count191
  br i1 %exitcond192.not, label %._crit_edge126.loopexit, label %.lr.ph.us.preheader

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %.lr.ph121.us
  %.4120.us = phi ptr [ %i.fr, %.lr.ph121.us ], [ %.lcssa265, %.lr.ph121.us.preheader ] ; 9 uses
  %niter277 = phi i32 [ %niter277.next.7, %.lr.ph121.us ], [ 0, %.lr.ph121.us.preheader ]
  store i16 %load_initial258, ptr %.4120.us, align 2, !tbaa !79
  %i.fk = getelementptr inbounds nuw i8, ptr %.4120.us, i64 2
  store i16 %load_initial258, ptr %i.fk, align 2, !tbaa !79
  %i.fl = getelementptr inbounds nuw i8, ptr %.4120.us, i64 4
  store i16 %load_initial258, ptr %i.fl, align 2, !tbaa !79
  %i.fm = getelementptr inbounds nuw i8, ptr %.4120.us, i64 6
  store i16 %load_initial258, ptr %i.fm, align 2, !tbaa !79
  %i.fn = getelementptr inbounds nuw i8, ptr %.4120.us, i64 8
  store i16 %load_initial258, ptr %i.fn, align 2, !tbaa !79
  %i.fo = getelementptr inbounds nuw i8, ptr %.4120.us, i64 10
  store i16 %load_initial258, ptr %i.fo, align 2, !tbaa !79
  %i.fp = getelementptr inbounds nuw i8, ptr %.4120.us, i64 12
  store i16 %load_initial258, ptr %i.fp, align 2, !tbaa !79
  %i.fq = getelementptr inbounds nuw i8, ptr %.4120.us, i64 14
  store i16 %load_initial258, ptr %i.fq, align 2, !tbaa !79
  %i.fr = getelementptr inbounds nuw i8, ptr %.4120.us, i64 16 ; 2 uses
  %niter277.next.7 = add i32 %niter277, 8         ; 2 uses
  %niter277.ncmp.7 = icmp eq i32 %niter277.next.7, %unroll_iter276
  br i1 %niter277.ncmp.7, label %._crit_edge.us129.loopexit.unr-lcssa, label %.lr.ph121.us

.loopexit.us.unr-lcssa:                           ; preds = %.lr.ph.us
  %i.fs = getelementptr inbounds nuw i8, ptr %.084117.us, i64 14
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.loopexit.us.unr-lcssa
  %.084117.us.lcssa = phi ptr [ %.084117.us.lcssa.unr, %.lr.ph.us.prol.loopexit ], [ %i.fs, %.loopexit.us.unr-lcssa ]
  %.lcssa265 = phi ptr [ %.lcssa265.unr, %.lr.ph.us.prol.loopexit ], [ %i.fh, %.loopexit.us.unr-lcssa ] ; 2 uses
  br i1 %i.dt, label %.lr.ph121.us.preheader, label %._crit_edge.us129

.lr.ph121.us.preheader:                           ; preds = %.loopexit.us
  %load_initial258 = load i16, ptr %.084117.us.lcssa, align 2 ; 9 uses
  br i1 %i.ed, label %.lr.ph121.us.epil.preheader, label %.lr.ph121.us

.preheader106:                                    ; preds = %.preheader106.preheader, %._crit_edge
  %indvars.iv176 = phi i64 [ %i.dv, %.preheader106.preheader ], [ %indvars.iv.next177, %._crit_edge ] ; 2 uses
  %indvars.iv174 = phi i64 [ 0, %.preheader106.preheader ], [ %indvars.iv.next175, %._crit_edge ] ; 3 uses
  %i.ft = mul i64 %i.dx, %indvars.iv174
  %i.fu = add i64 %.neg260, %i.ft
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv174
  %i.fv = load ptr, ptr %gep, align 8, !tbaa !151 ; 2 uses
  br i1 %i.ds, label %.preheader.us.preheader, label %..loopexit107_crit_edge

.preheader.us.preheader:                          ; preds = %.preheader106
  %i.fw = getelementptr inbounds [2 x i8], ptr %.081154, i64 %indvars.iv176
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvar239 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvar.next240, %._crit_edge.us ] ; 2 uses
  %.in = phi i32 [ %.fr, %.preheader.us.preheader ], [ %i.fx, %._crit_edge.us ]
  %.183113.us = phi ptr [ %i.fw, %.preheader.us.preheader ], [ %i.hw, %._crit_edge.us ] ; 12 uses
  %.185112.us = phi ptr [ %i.fv, %.preheader.us.preheader ], [ %.lcssa, %._crit_edge.us ] ; 7 uses
  %i.fx = add i32 %.in, -1                        ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fy = mul i64 %i.as, %indvar239
  %i.fz = add i64 %i.fu, %i.fy
  %.185112.us238 = ptrtoaddr ptr %.185112.us to i64
  %4 = add i64 %i.fz, %.185112.us238
  %i.ga = add i64 %4, -1
  %diff.check = icmp ult i64 %i.ga, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check241, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gb = getelementptr i8, ptr %.185112.us, i64 %i.dy ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.185112.us, i64 %i.gc ; 2 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %index ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load = load <8 x i16>, ptr %i.gd, align 2, !tbaa !79
  %wide.load242 = load <8 x i16>, ptr %i.ge, align 2, !tbaa !79
  %i.gf = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !79
  store <8 x i16> %wide.load242, ptr %i.gf, align 2, !tbaa !79
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !160

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gh = getelementptr i8, ptr %.185112.us, i64 %i.dz ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index245 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next248, %vec.epilog.vector.body ] ; 3 uses
  %i.gi = shl i64 %index245, 1
  %next.gep246 = getelementptr i8, ptr %.185112.us, i64 %i.gi
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %index245
  %wide.load247 = load <4 x i16>, ptr %i.gj, align 2, !tbaa !79
  store <4 x i16> %wide.load247, ptr %next.gep246, align 2, !tbaa !79
  %index.next248 = add nuw i64 %index245, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next248, %n.vec244
  br i1 %i.gk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !213

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n249, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec244, %vec.epilog.middle.block ] ; 4 uses
  %.286110.us.ph = phi ptr [ %.185112.us, %iter.check ], [ %.185112.us, %vector.memcheck ], [ %i.gb, %vec.epilog.iter.check ], [ %i.gh, %vec.epilog.middle.block ] ; 2 uses
  %i.gl = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.gl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.286110.us.prol = phi ptr [ %i.go, %vec.epilog.scalar.ph.prol ], [ %.286110.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv.prol
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !79
  %i.go = getelementptr inbounds nuw i8, ptr %.286110.us.prol, i64 2 ; 3 uses
  store i16 %i.gn, ptr %.286110.us.prol, align 2, !tbaa !79
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !214

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa264.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.go, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.286110.us.unr = phi ptr [ %.286110.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.go, %vec.epilog.scalar.ph.prol ]
  %i.gp = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gq = icmp ugt i64 %i.gp, -8
  br i1 %i.gq, label %._crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.286110.us = phi ptr [ %i.hv, %vec.epilog.scalar.ph ], [ %.286110.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !79
  %i.gt = getelementptr inbounds nuw i8, ptr %.286110.us, i64 2
  store i16 %i.gs, ptr %.286110.us, align 2, !tbaa !79
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 2
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !79
  %i.gx = getelementptr inbounds nuw i8, ptr %.286110.us, i64 4
  store i16 %i.gw, ptr %i.gt, align 2, !tbaa !79
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !79
  %i.hb = getelementptr inbounds nuw i8, ptr %.286110.us, i64 6
  store i16 %i.ha, ptr %i.gx, align 2, !tbaa !79
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 6
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !79
  %i.hf = getelementptr inbounds nuw i8, ptr %.286110.us, i64 8
  store i16 %i.he, ptr %i.hb, align 2, !tbaa !79
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !79
  %i.hj = getelementptr inbounds nuw i8, ptr %.286110.us, i64 10
  store i16 %i.hi, ptr %i.hf, align 2, !tbaa !79
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 10
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !79
  %i.hn = getelementptr inbounds nuw i8, ptr %.286110.us, i64 12
  store i16 %i.hm, ptr %i.hj, align 2, !tbaa !79
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !79
  %i.hr = getelementptr inbounds nuw i8, ptr %.286110.us, i64 14
  store i16 %i.hq, ptr %i.hn, align 2, !tbaa !79
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.183113.us, i64 %indvars.iv
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 14
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !79
  %i.hv = getelementptr inbounds nuw i8, ptr %.286110.us, i64 16 ; 2 uses
  store i16 %i.hu, ptr %i.hr, align 2, !tbaa !79
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !215

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.gh, %vec.epilog.middle.block ], [ %i.gb, %middle.block ], [ %.lcssa264.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hv, %vec.epilog.scalar.ph ] ; 2 uses
  %i.hw = getelementptr inbounds [2 x i8], ptr %.183113.us, i64 %i.ap
  %.not103.us = icmp eq i32 %i.fx, 0
  %indvar.next240 = add i64 %indvar239, 1
  br i1 %.not103.us, label %..loopexit107_crit_edge, label %iter.check

..loopexit107_crit_edge:                          ; preds = %._crit_edge.us, %.preheader106
  %.us-phi = phi ptr [ %i.fv, %.preheader106 ], [ %.lcssa, %._crit_edge.us ] ; 3 uses
  br i1 %i.dt, label %.lr.ph121.preheader, label %._crit_edge

.lr.ph121.preheader:                              ; preds = %..loopexit107_crit_edge
  %scevgep255 = getelementptr i8, ptr %.us-phi, i64 -2
  %load_initial256 = load i16, ptr %scevgep255, align 2 ; 9 uses
  br i1 %i.eb, label %.lr.ph121.epil.preheader, label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %.4120 = phi ptr [ %i.ie, %.lr.ph121 ], [ %.us-phi, %.lr.ph121.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph121 ], [ 0, %.lr.ph121.preheader ]
  store i16 %load_initial256, ptr %.4120, align 2, !tbaa !79
  %i.hx = getelementptr inbounds nuw i8, ptr %.4120, i64 2
  store i16 %load_initial256, ptr %i.hx, align 2, !tbaa !79
  %i.hy = getelementptr inbounds nuw i8, ptr %.4120, i64 4
  store i16 %load_initial256, ptr %i.hy, align 2, !tbaa !79
  %i.hz = getelementptr inbounds nuw i8, ptr %.4120, i64 6
  store i16 %load_initial256, ptr %i.hz, align 2, !tbaa !79
  %i.ia = getelementptr inbounds nuw i8, ptr %.4120, i64 8
  store i16 %load_initial256, ptr %i.ia, align 2, !tbaa !79
  %i.ib = getelementptr inbounds nuw i8, ptr %.4120, i64 10
  store i16 %load_initial256, ptr %i.ib, align 2, !tbaa !79
  %i.ic = getelementptr inbounds nuw i8, ptr %.4120, i64 12
  store i16 %load_initial256, ptr %i.ic, align 2, !tbaa !79
  %i.id = getelementptr inbounds nuw i8, ptr %.4120, i64 14
  store i16 %load_initial256, ptr %i.id, align 2, !tbaa !79
  %i.ie = getelementptr inbounds nuw i8, ptr %.4120, i64 16 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph121

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph121
  br i1 %lcmp.mod267.not, label %._crit_edge, label %.lr.ph121.epil.preheader

.lr.ph121.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph121.preheader
  %.4120.epil.init = phi ptr [ %.us-phi, %.lr.ph121.preheader ], [ %i.ie, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod268)
  br label %.lr.ph121.epil

.lr.ph121.epil:                                   ; preds = %.lr.ph121.epil, %.lr.ph121.epil.preheader
  %.4120.epil = phi ptr [ %i.if, %.lr.ph121.epil ], [ %.4120.epil.init, %.lr.ph121.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph121.epil ], [ 0, %.lr.ph121.epil.preheader ]
  store i16 %load_initial256, ptr %.4120.epil, align 2, !tbaa !79
  %i.if = getelementptr inbounds nuw i8, ptr %.4120.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter266
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph121.epil, !llvm.loop !216

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph121.epil, %..loopexit107_crit_edge
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, %i.dw ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge126.loopexit162, label %.preheader106

._crit_edge126.loopexit:                          ; preds = %._crit_edge.us129
  %i.ig = trunc nsw i64 %indvars.iv.next187 to i32
  br label %._crit_edge126

._crit_edge126.loopexit162:                       ; preds = %._crit_edge
  %i.ih = trunc nsw i64 %indvars.iv.next177 to i32
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.loopexit162, %._crit_edge126.loopexit, %.lr.ph
  %.198.lcssa = phi i32 [ %.097140, %.lr.ph ], [ %i.ig, %._crit_edge126.loopexit ], [ %i.ih, %._crit_edge126.loopexit162 ]
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.092142, i64 96
  %i.ij = load i32, ptr %i.am, align 4, !tbaa !21
  %i.ik = sext i32 %i.ij to i64
end_hunk_1
