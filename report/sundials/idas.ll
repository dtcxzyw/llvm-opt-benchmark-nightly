inline.NumInlined: 61
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@IDARestore:bb.a
  store double %i.ac, ptr %i.ad, align 8, !tbaa !24
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod258 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod258)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !24
  %i.ag = load double, ptr %i.f, align 8, !tbaa !216
  %i.ah = fsub double %i.af, %i.ag
  %i.ai = getelementptr i8, ptr %i.ae, i64 -8
  store double %i.ah, ptr %i.ai, align 8, !tbaa !24
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !360

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 5 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !239 ; 5 uses
  %.not96 = icmp sgt i32 %i.ak, %i.d
  br i1 %.not96, label %bb.i, label %.preheader109

.preheader109:                                    ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !101 ; 8 uses
  %i.ao = sext i32 %i.ak to i64                   ; 11 uses
  %i.ap = add i32 %i.d, 1                         ; 2 uses
  %i.aq = sub i32 %i.d, %i.ak
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.d, %i.ak
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader109
  %i.at = ptrtoaddr ptr %i.an to i64
  %i.au = shl nsw i64 %i.ao, 3
  %i.av = add i64 %i.au, %i.a
  %i.aw = sub i64 %i.at, %i.av
  %i.ax = add i64 %i.aw, -489
  %diff.check = icmp ult i64 %i.ax, 15
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 8589934590              ; 3 uses
  %i.ay = add nsw i64 %n.vec, %i.ao
  %invariant.gep = getelementptr [8 x i8], ptr %i.al, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !24
  %i.az = fdiv <2 x double> splat (double 1.000000e+00), %wide.load
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.an, i64 %index
  store <2 x double> %i.az, ptr %i.ba, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader109, %middle.block
  %indvars.iv149.ph = phi i64 [ %i.ao, %vector.memcheck ], [ %i.ao, %.preheader109 ], [ %i.ay, %middle.block ] ; 3 uses
  %i.bc = add i32 %i.d, 1
  %i.bd = trunc i64 %indvars.iv149.ph to i32      ; 2 uses
  %i.be = sub i32 %i.bc, %i.bd
  %i.bf = sub i32 %i.d, %i.bd
  %xtraiter259 = and i32 %i.be, 3                 ; 2 uses
  %lcmp.mod260.not = icmp eq i32 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv149.prol = phi i64 [ %indvars.iv.next150.prol, %scalar.ph.prol ], [ %indvars.iv149.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv149.prol
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !24
  %i.bi = fdiv double 1.000000e+00, %i.bh
  %i.bj = sub nsw i64 %indvars.iv149.prol, %i.ao
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bj
  store double %i.bi, ptr %i.bk, align 8, !tbaa !24
  %indvars.iv.next150.prol = add nsw i64 %indvars.iv149.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter259
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !362

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv149.unr = phi i64 [ %indvars.iv149.ph, %scalar.ph.preheader ], [ %indvars.iv.next150.prol, %scalar.ph.prol ]
  %i.bl = icmp ult i32 %i.bf, 3
  br i1 %i.bl, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.3, %scalar.ph ], [ %indvars.iv149.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv149
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !24
  %i.bo = fdiv double 1.000000e+00, %i.bn
  %i.bp = sub nsw i64 %indvars.iv149, %i.ao
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bp
  store double %i.bo, ptr %i.bq, align 8, !tbaa !24
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv.next150
  %i.bs = load double, ptr %i.br, align 8, !tbaa !24
  %i.bt = fdiv double 1.000000e+00, %i.bs
  %i.bu = sub nsw i64 %indvars.iv.next150, %i.ao
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bu
  store double %i.bt, ptr %i.bv, align 8, !tbaa !24
  %indvars.iv.next150.1 = add nsw i64 %indvars.iv149, 2 ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv.next150.1
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = fdiv double 1.000000e+00, %i.bx
  %i.bz = sub nsw i64 %indvars.iv.next150.1, %i.ao
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bz
  store double %i.by, ptr %i.ca, align 8, !tbaa !24
  %indvars.iv.next150.2 = add nsw i64 %indvars.iv149, 3 ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv.next150.2
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !24
  %i.cd = fdiv double 1.000000e+00, %i.cc
  %i.ce = sub nsw i64 %indvars.iv.next150.2, %i.ao
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ce
  store double %i.cd, ptr %i.cf, align 8, !tbaa !24
  %indvars.iv.next150.3 = add nsw i64 %indvars.iv149, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next150.3 to i32
  %exitcond152.not.3 = icmp eq i32 %i.ap, %lftr.wideiv.3
  br i1 %exitcond152.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !363

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cg = sub i32 %i.ap, %i.ak
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.ao ; 2 uses
  %i.cj = tail call i32 @N_VScaleVectorArray(i32 noundef %i.cg, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.ci) #14 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !142
  %.not98 = icmp eq i32 %i.cl, 0
  br i1 %.not98, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.cm = load i32, ptr %i.c, align 8, !tbaa !226
  %i.cn = load i32, ptr %i.aj, align 8, !tbaa !239 ; 2 uses
  %i.co = add i32 %i.cm, 1
  %i.cp = sub i32 %i.co, %i.cn
  %i.cq = load ptr, ptr %i.am, align 8, !tbaa !101
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.cs = sext i32 %i.cn to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = tail call i32 @N_VScaleVectorArray(i32 noundef %i.cp, ptr noundef %i.cq, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ct) #14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !171
  %.not99 = icmp eq i32 %i.cw, 0                  ; 2 uses
  br i1 %.not99, label %bb.f, label %.thread206

bb.f:                                             ; preds = %bb.e
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !194
  %.not100 = icmp eq i32 %i.cy, 0
  br i1 %.not100, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cz = load i32, ptr %i.aj, align 8, !tbaa !239 ; 2 uses
  %i.da = load i32, ptr %i.c, align 8, !tbaa !226 ; 2 uses
  %.not101119 = icmp sgt i32 %i.cz, %i.da
  br i1 %.not101119, label %.thread, label %.preheader108.lr.ph

.thread206:                                       ; preds = %bb.e
  %i.db = load i32, ptr %i.aj, align 8, !tbaa !239 ; 3 uses
  %i.dc = load i32, ptr %i.c, align 8, !tbaa !226 ; 3 uses
  %.not101119207 = icmp sgt i32 %i.db, %i.dc
  br i1 %.not101119207, label %._crit_edge131, label %.preheader108.lr.ph.thread

.preheader108.lr.ph:                              ; preds = %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !149 ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.preheader108.lr.ph.split, label %.thread

.preheader108.lr.ph.thread:                       ; preds = %.thread206
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !149 ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.preheader108.lr.ph.split, label %.preheader107.lr.ph

.preheader108.lr.ph.split:                        ; preds = %.preheader108.lr.ph.thread, %.preheader108.lr.ph
  %i.dj = phi i32 [ %i.dh, %.preheader108.lr.ph.thread ], [ %i.de, %.preheader108.lr.ph ] ; 6 uses
  %i.dk = phi i32 [ %i.db, %.preheader108.lr.ph.thread ], [ %i.cz, %.preheader108.lr.ph ] ; 3 uses
  %i.dl = phi i32 [ %i.dc, %.preheader108.lr.ph.thread ], [ %i.da, %.preheader108.lr.ph ] ; 3 uses
  %i.dm = load ptr, ptr %i.am, align 8, !tbaa !101 ; 8 uses
  %i.dn = sext i32 %i.dk to i64                   ; 3 uses
  %i.do = add i32 %i.dl, 1
  %i.dp = add nsw i32 %i.dj, -1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = getelementptr i8, ptr %i.dm, i64 %i.dr
  %scevgep212 = getelementptr i8, ptr %i.ds, i64 8
  %i.dt = shl nsw i64 %i.dn, 3
  %i.du = getelementptr i8, ptr %0, i64 %i.dt
  %scevgep214 = getelementptr i8, ptr %i.du, i64 488
  %i.dv = sub i32 %i.dl, %i.dk
  %i.dw = zext i32 %i.dv to i64
  %i.dx = add nsw i64 %i.dn, %i.dw
  %i.dy = shl nsw i64 %i.dx, 3
  %i.dz = getelementptr i8, ptr %0, i64 %i.dy
  %scevgep215 = getelementptr i8, ptr %i.dz, i64 496
  %i.ea = add nsw i32 %i.dj, -1
  %i.eb = zext nneg i32 %i.dj to i64              ; 2 uses
  %min.iters.check217 = icmp samesign ult i32 %i.dj, 4
  %n.vec219 = and i64 %i.eb, 2147483644           ; 3 uses
  %cmp.n224 = icmp eq i64 %n.vec219, %i.eb
  br label %.preheader108

.preheader108:                                    ; preds = %.preheader108.lr.ph.split, %._crit_edge117
  %indvars.iv158 = phi i64 [ %i.dn, %.preheader108.lr.ph.split ], [ %indvars.iv.next159, %._crit_edge117 ] ; 2 uses
  %.085121 = phi i32 [ 0, %.preheader108.lr.ph.split ], [ %i.ef, %._crit_edge117 ] ; 5 uses
  %2 = add i32 %i.dj, %.085121
  %i.ec = add i32 %i.ea, %.085121
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv158 ; 6 uses
  %i.ee = sext i32 %.085121 to i64                ; 4 uses
  %i.ef = add i32 %i.dj, %.085121                 ; 2 uses
  br i1 %min.iters.check217, label %scalar.ph216.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %.preheader108
  %i.eg = sext i32 %.085121 to i64
  %i.eh = shl nsw i64 %i.eg, 3                    ; 2 uses
  %scevgep213 = getelementptr i8, ptr %scevgep212, i64 %i.eh
  %scevgep = getelementptr i8, ptr %i.dm, i64 %i.eh
  %bound0 = icmp ult ptr %scevgep, %scevgep215
  %bound1 = icmp ult ptr %scevgep214, %scevgep213
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph216.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck211
  %i.ei = add nsw i64 %n.vec219, %i.ee
  %i.ej = load double, ptr %i.ed, align 8, !tbaa !24, !alias.scope !364
  %i.ek = fdiv double 1.000000e+00, %i.ej
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ek, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep270 = getelementptr [8 x i8], ptr %i.dm, i64 %i.ee
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next222, %vector.body220 ] ; 2 uses
  %gep271 = getelementptr [8 x i8], ptr %invariant.gep270, i64 %index221 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %gep271, i64 16
  store <2 x double> %broadcast.splat, ptr %gep271, align 8, !tbaa !24, !alias.scope !367, !noalias !364
  store <2 x double> %broadcast.splat, ptr %i.el, align 8, !tbaa !24, !alias.scope !367, !noalias !364
  %index.next222 = add nuw i64 %index221, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next222, %n.vec219
  br i1 %i.em, label %middle.block223, label %vector.body220, !llvm.loop !369

middle.block223:                                  ; preds = %vector.body220
  br i1 %cmp.n224, label %._crit_edge117, label %scalar.ph216.preheader

scalar.ph216.preheader:                           ; preds = %vector.memcheck211, %.preheader108, %middle.block223
  %indvars.iv153.ph = phi i64 [ %i.ee, %vector.memcheck211 ], [ %i.ee, %.preheader108 ], [ %i.ei, %middle.block223 ] ; 3 uses
  %i.en = trunc i64 %indvars.iv153.ph to i32      ; 2 uses
  %i.eo = sub i32 %2, %i.en
  %i.ep = sub i32 %i.ec, %i.en
  %xtraiter261 = and i32 %i.eo, 3                 ; 2 uses
  %lcmp.mod262.not = icmp eq i32 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %scalar.ph216.prol.loopexit, label %scalar.ph216.prol

scalar.ph216.prol:                                ; preds = %scalar.ph216.preheader, %scalar.ph216.prol
  %indvars.iv153.prol = phi i64 [ %indvars.iv.next154.prol, %scalar.ph216.prol ], [ %indvars.iv153.ph, %scalar.ph216.preheader ] ; 2 uses
  %prol.iter263 = phi i32 [ %prol.iter263.next, %scalar.ph216.prol ], [ 0, %scalar.ph216.preheader ]
  %i.eq = load double, ptr %i.ed, align 8, !tbaa !24
  %i.er = fdiv double 1.000000e+00, %i.eq
  %i.es = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %indvars.iv153.prol
  store double %i.er, ptr %i.es, align 8, !tbaa !24
  %indvars.iv.next154.prol = add nsw i64 %indvars.iv153.prol, 1 ; 2 uses
  %prol.iter263.next = add i32 %prol.iter263, 1   ; 2 uses
  %prol.iter263.cmp.not = icmp eq i32 %prol.iter263.next, %xtraiter261
  br i1 %prol.iter263.cmp.not, label %scalar.ph216.prol.loopexit, label %scalar.ph216.prol, !llvm.loop !370

scalar.ph216.prol.loopexit:                       ; preds = %scalar.ph216.prol, %scalar.ph216.preheader
  %indvars.iv153.unr = phi i64 [ %indvars.iv153.ph, %scalar.ph216.preheader ], [ %indvars.iv.next154.prol, %scalar.ph216.prol ]
  %i.et = icmp ult i32 %i.ep, 3
  br i1 %i.et, label %._crit_edge117, label %scalar.ph216

scalar.ph216:                                     ; preds = %scalar.ph216.prol.loopexit, %scalar.ph216
  %indvars.iv153 = phi i64 [ %indvars.iv.next154.3, %scalar.ph216 ], [ %indvars.iv153.unr, %scalar.ph216.prol.loopexit ] ; 5 uses
  %i.eu = load double, ptr %i.ed, align 8, !tbaa !24
  %i.ev = fdiv double 1.000000e+00, %i.eu
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %indvars.iv153
  store double %i.ev, ptr %i.ew, align 8, !tbaa !24
  %i.ex = load double, ptr %i.ed, align 8, !tbaa !24
  %i.ey = fdiv double 1.000000e+00, %i.ex
  %i.ez = getelementptr [8 x i8], ptr %i.dm, i64 %indvars.iv153
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  store double %i.ey, ptr %i.fa, align 8, !tbaa !24
  %i.fb = load double, ptr %i.ed, align 8, !tbaa !24
  %i.fc = fdiv double 1.000000e+00, %i.fb
  %i.fd = getelementptr [8 x i8], ptr %i.dm, i64 %indvars.iv153
  %i.fe = getelementptr i8, ptr %i.fd, i64 16
  store double %i.fc, ptr %i.fe, align 8, !tbaa !24
  %i.ff = load double, ptr %i.ed, align 8, !tbaa !24
  %i.fg = fdiv double 1.000000e+00, %i.ff
  %i.fh = getelementptr [8 x i8], ptr %i.dm, i64 %indvars.iv153
  %i.fi = getelementptr i8, ptr %i.fh, i64 24
  store double %i.fg, ptr %i.fi, align 8, !tbaa !24
  %indvars.iv.next154.3 = add nsw i64 %indvars.iv153, 4 ; 2 uses
  %lftr.wideiv156.3 = trunc i64 %indvars.iv.next154.3 to i32
  %exitcond157.not.3 = icmp eq i32 %i.ef, %lftr.wideiv156.3
  br i1 %exitcond157.not.3, label %._crit_edge117, label %scalar.ph216, !llvm.loop !371

._crit_edge117:                                   ; preds = %scalar.ph216.prol.loopexit, %scalar.ph216, %middle.block223
  %indvars.iv.next159 = add nsw i64 %indvars.iv158, 1 ; 2 uses
  %lftr.wideiv161 = trunc i64 %indvars.iv.next159 to i32
  %exitcond162.not = icmp eq i32 %i.do, %lftr.wideiv161
  br i1 %exitcond162.not, label %._crit_edge122.split, label %.preheader108

._crit_edge122.split:                             ; preds = %._crit_edge117
  br i1 %.not99, label %.thread, label %.preheader107.lr.ph

.preheader107.lr.ph:                              ; preds = %._crit_edge122.split, %.preheader108.lr.ph.thread
  %i.fj = phi i32 [ %i.db, %.preheader108.lr.ph.thread ], [ %i.dk, %._crit_edge122.split ]
  %i.fk = phi i32 [ %i.dc, %.preheader108.lr.ph.thread ], [ %i.dl, %._crit_edge122.split ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !149 ; 3 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 840
  br i1 %i.fn, label %.preheader107.lr.ph.split.us, label %._crit_edge131

.preheader107.lr.ph.split.us:                     ; preds = %.preheader107.lr.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !102 ; 7 uses
  %i.fr = ptrtoaddr ptr %i.fq to i64
  %i.fs = sext i32 %i.fj to i64
  %i.ft = add i32 %i.fk, 1
  %wide.trip.count170 = zext nneg i32 %i.fm to i64 ; 5 uses
  %min.iters.check229 = icmp ult i32 %i.fm, 4
  %n.vec231 = and i64 %wide.trip.count170, 2147483644 ; 4 uses
  %cmp.n238 = icmp eq i64 %n.vec231, %wide.trip.count170
  %xtraiter264 = and i64 %wide.trip.count170, 3   ; 2 uses
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  br label %.preheader107.us

.preheader107.us:                                 ; preds = %._crit_edge126.us, %.preheader107.lr.ph.split.us
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %._crit_edge126.us ], [ %i.fs, %.preheader107.lr.ph.split.us ] ; 2 uses
  %.287130.us = phi i64 [ %indvars.iv.next166.lcssa, %._crit_edge126.us ], [ 0, %.preheader107.lr.ph.split.us ] ; 5 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %indvars.iv172
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !158 ; 7 uses
  br i1 %min.iters.check229, label %scalar.ph228.preheader, label %vector.memcheck226

vector.memcheck226:                               ; preds = %.preheader107.us
  %i.fw = ptrtoaddr ptr %i.fv to i64
  %i.fx = shl i64 %.287130.us, 3
  %i.fy = add i64 %i.fx, %i.fr
  %i.fz = sub i64 %i.fw, %i.fy
  %diff.check227 = icmp ugt i64 %i.fz, -32
  br i1 %diff.check227, label %scalar.ph228.preheader, label %vector.ph230

vector.ph230:                                     ; preds = %vector.memcheck226
  %i.ga = add i64 %.287130.us, %n.vec231          ; 2 uses
  %i.gb = getelementptr [8 x i8], ptr %i.fq, i64 %.287130.us
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next236, %vector.body232 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %index233 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load234 = load <2 x ptr>, ptr %i.gc, align 8, !tbaa !58
  %wide.load235 = load <2 x ptr>, ptr %i.gd, align 8, !tbaa !58
  %i.ge = getelementptr [8 x i8], ptr %i.gb, i64 %index233 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <2 x ptr> %wide.load234, ptr %i.ge, align 8, !tbaa !58
  store <2 x ptr> %wide.load235, ptr %i.gf, align 8, !tbaa !58
  %index.next236 = add nuw i64 %index233, 4       ; 2 uses
  %i.gg = icmp eq i64 %index.next236, %n.vec231
  br i1 %i.gg, label %middle.block237, label %vector.body232, !llvm.loop !372

middle.block237:                                  ; preds = %vector.body232
  br i1 %cmp.n238, label %._crit_edge126.us, label %scalar.ph228.preheader

scalar.ph228.preheader:                           ; preds = %vector.memcheck226, %.preheader107.us, %middle.block237
  %indvars.iv165.ph = phi i64 [ %.287130.us, %vector.memcheck226 ], [ %.287130.us, %.preheader107.us ], [ %i.ga, %middle.block237 ] ; 2 uses
  %indvars.iv163.ph = phi i64 [ 0, %vector.memcheck226 ], [ 0, %.preheader107.us ], [ %n.vec231, %middle.block237 ] ; 3 uses
  br i1 %lcmp.mod265.not, label %scalar.ph228.prol.loopexit, label %scalar.ph228.prol

scalar.ph228.prol:                                ; preds = %scalar.ph228.preheader, %scalar.ph228.prol
  %indvars.iv165.prol = phi i64 [ %indvars.iv.next166.prol, %scalar.ph228.prol ], [ %indvars.iv165.ph, %scalar.ph228.preheader ] ; 2 uses
  %indvars.iv163.prol = phi i64 [ %indvars.iv.next164.prol, %scalar.ph228.prol ], [ %indvars.iv163.ph, %scalar.ph228.preheader ] ; 2 uses
  %prol.iter266 = phi i64 [ %prol.iter266.next, %scalar.ph228.prol ], [ 0, %scalar.ph228.preheader ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv163.prol
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !58
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %indvars.iv165.prol
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !58
  %indvars.iv.next166.prol = add nsw i64 %indvars.iv165.prol, 1 ; 3 uses
  %indvars.iv.next164.prol = add nuw nsw i64 %indvars.iv163.prol, 1 ; 2 uses
  %prol.iter266.next = add i64 %prol.iter266, 1   ; 2 uses
  %prol.iter266.cmp.not = icmp eq i64 %prol.iter266.next, %xtraiter264
  br i1 %prol.iter266.cmp.not, label %scalar.ph228.prol.loopexit, label %scalar.ph228.prol, !llvm.loop !373

scalar.ph228.prol.loopexit:                       ; preds = %scalar.ph228.prol, %scalar.ph228.preheader
  %indvars.iv.next166.lcssa257.unr = phi i64 [ poison, %scalar.ph228.preheader ], [ %indvars.iv.next166.prol, %scalar.ph228.prol ]
  %indvars.iv165.unr = phi i64 [ %indvars.iv165.ph, %scalar.ph228.preheader ], [ %indvars.iv.next166.prol, %scalar.ph228.prol ]
  %indvars.iv163.unr = phi i64 [ %indvars.iv163.ph, %scalar.ph228.preheader ], [ %indvars.iv.next164.prol, %scalar.ph228.prol ]
  %i.gk = sub nsw i64 %indvars.iv163.ph, %wide.trip.count170
  %i.gl = icmp ugt i64 %i.gk, -4
  br i1 %i.gl, label %._crit_edge126.us, label %scalar.ph228

scalar.ph228:                                     ; preds = %scalar.ph228.prol.loopexit, %scalar.ph228
  %indvars.iv165 = phi i64 [ %indvars.iv.next166.3, %scalar.ph228 ], [ %indvars.iv165.unr, %scalar.ph228.prol.loopexit ] ; 5 uses
  %indvars.iv163 = phi i64 [ %indvars.iv.next164.3, %scalar.ph228 ], [ %indvars.iv163.unr, %scalar.ph228.prol.loopexit ] ; 5 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv163
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !58
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %indvars.iv165
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !58
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv163
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !58
  %i.gs = getelementptr [8 x i8], ptr %i.fq, i64 %indvars.iv165
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  store ptr %i.gr, ptr %i.gt, align 8, !tbaa !58
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv163
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !58
  %i.gx = getelementptr [8 x i8], ptr %i.fq, i64 %indvars.iv165
  %i.gy = getelementptr i8, ptr %i.gx, i64 16
  store ptr %i.gw, ptr %i.gy, align 8, !tbaa !58
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv163
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !58
  %i.hc = getelementptr [8 x i8], ptr %i.fq, i64 %indvars.iv165
  %i.hd = getelementptr i8, ptr %i.hc, i64 24
  store ptr %i.hb, ptr %i.hd, align 8, !tbaa !58
  %indvars.iv.next166.3 = add nsw i64 %indvars.iv165, 4 ; 2 uses
  %indvars.iv.next164.3 = add nuw nsw i64 %indvars.iv163, 4 ; 2 uses
  %exitcond171.not.3 = icmp eq i64 %indvars.iv.next164.3, %wide.trip.count170
  br i1 %exitcond171.not.3, label %._crit_edge126.us, label %scalar.ph228, !llvm.loop !374

._crit_edge126.us:                                ; preds = %scalar.ph228.prol.loopexit, %scalar.ph228, %middle.block237
  %indvars.iv.next166.lcssa = phi i64 [ %i.ga, %middle.block237 ], [ %indvars.iv.next166.lcssa257.unr, %scalar.ph228.prol.loopexit ], [ %indvars.iv.next166.3, %scalar.ph228 ] ; 2 uses
  %indvars.iv.next173 = add nsw i64 %indvars.iv172, 1 ; 2 uses
  %lftr.wideiv175 = trunc i64 %indvars.iv.next173 to i32
  %exitcond176.not = icmp eq i32 %i.ft, %lftr.wideiv175
  br i1 %exitcond176.not, label %._crit_edge131.loopexit, label %.preheader107.us

._crit_edge131.loopexit:                          ; preds = %._crit_edge126.us
  %i.he = trunc nsw i64 %indvars.iv.next166.lcssa to i32
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %.thread206, %.preheader107.lr.ph, %._crit_edge131.loopexit
  %.287.lcssa = phi i32 [ 0, %.thread206 ], [ %i.he, %._crit_edge131.loopexit ], [ 0, %.preheader107.lr.ph ]
  %i.hf = load ptr, ptr %i.am, align 8, !tbaa !101
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !102 ; 2 uses
  %i.hi = tail call i32 @N_VScaleVectorArray(i32 noundef %.287.lcssa, ptr noundef %i.hf, ptr noundef %i.hh, ptr noundef %i.hh) #14 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.preheader108.lr.ph, %bb.g, %bb.f, %._crit_edge131, %._crit_edge122.split
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !194
  %.not104 = icmp eq i32 %i.hk, 0
  br i1 %.not104, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
end_hunk_0
