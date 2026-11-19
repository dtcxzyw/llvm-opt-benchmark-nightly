Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgelqt3?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dgelqt3_:bb.a
  %or.cond369 = or i1 %i.al, %diff.check
  %min.iters.check289 = icmp ult i32 %i.m, 32
  %i.an = and i64 %i.ai, 12
  %n.vec = and i64 %i.ai, 1073741808              ; 4 uses
  %i.ao = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ai
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  %n.vec293 = and i64 %i.ai, 1073741820           ; 3 uses
  %i.ap = or disjoint i64 %n.vec293, 1
  %cmp.n297 = icmp eq i64 %n.vec293, %i.ai
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv243 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next244, %._crit_edge ] ; 2 uses
  %i.aq = add nuw nsw i64 %indvars.iv243, %i.ai   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.i, i64 %i.aq ; 11 uses
  %invariant.gep277 = getelementptr [8 x i8], ptr %i.l, i64 %i.aq ; 11 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %or.cond369
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check289, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ar = or disjoint i64 %index, 1               ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ar ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 32
  %i.au = getelementptr i8, ptr %i.as, i64 64
  %i.av = getelementptr i8, ptr %i.as, i64 96
  %wide.load = load <4 x double>, ptr %i.as, align 8, !tbaa !30
  %wide.load290 = load <4 x double>, ptr %i.at, align 8, !tbaa !30
  %wide.load291 = load <4 x double>, ptr %i.au, align 8, !tbaa !30
  %wide.load292 = load <4 x double>, ptr %i.av, align 8, !tbaa !30
  %i.aw = getelementptr [8 x i8], ptr %invariant.gep277, i64 %i.ar ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 32
  %i.ay = getelementptr i8, ptr %i.aw, i64 64
  %i.az = getelementptr i8, ptr %i.aw, i64 96
  store <4 x double> %wide.load, ptr %i.aw, align 8, !tbaa !30
  store <4 x double> %wide.load290, ptr %i.ax, align 8, !tbaa !30
  store <4 x double> %wide.load291, ptr %i.ay, align 8, !tbaa !30
  store <4 x double> %wide.load292, ptr %i.az, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index294 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next296, %vec.epilog.vector.body ] ; 2 uses
  %i.bb = or disjoint i64 %index294, 1            ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bb
  %wide.load295 = load <4 x double>, ptr %i.bc, align 8, !tbaa !30
  %i.bd = getelementptr [8 x i8], ptr %invariant.gep277, i64 %i.bb
  store <4 x double> %wide.load295, ptr %i.bd, align 8, !tbaa !30
  %index.next296 = add nuw i64 %index294, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next296, %n.vec293
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n297, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.ap, %vec.epilog.middle.block ], [ 1, %iter.check ], [ %i.ao, %vec.epilog.iter.check ] ; 4 uses
  %i.bf = sub nsw i64 %i.ak, %indvars.iv.ph
  %i.bg = sub nsw i64 %i.ai, %indvars.iv.ph
  %xtraiter = and i64 %i.bf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bh = mul nsw i64 %indvars.iv.prol, %i.ag
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bh
  %i.bi = load double, ptr %gep.prol, align 8, !tbaa !30
  %i.bj = mul nsw i64 %indvars.iv.prol, %i.ah
  %gep278.prol = getelementptr [8 x i8], ptr %invariant.gep277, i64 %i.bj
  store double %i.bi, ptr %gep278.prol, align 8, !tbaa !30
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !10

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bk = icmp ult i64 %i.bg, 7
  br i1 %i.bk, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.bl = mul nsw i64 %indvars.iv, %i.ag
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bl
  %i.bm = load double, ptr %gep, align 8, !tbaa !30
  %i.bn = mul nsw i64 %indvars.iv, %i.ah
  %gep278 = getelementptr [8 x i8], ptr %invariant.gep277, i64 %i.bn
  store double %i.bm, ptr %gep278, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = mul nsw i64 %indvars.iv.next, %i.ag
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bo
  %i.bp = load double, ptr %gep.1, align 8, !tbaa !30
  %i.bq = mul nsw i64 %indvars.iv.next, %i.ah
  %gep278.1 = getelementptr [8 x i8], ptr %invariant.gep277, i64 %i.bq
  store double %i.bp, ptr %gep278.1, align 8, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.br = mul nsw i64 %indvars.iv.next.1, %i.ag
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.br
  %i.bs = load double, ptr %gep.2, align 8, !tbaa !30
  %i.bt = mul nsw i64 %indvars.iv.next.1, %i.ah
  %gep278.2 = getelementptr [8 x i8], ptr %invariant.gep277, i64 %i.bt
  store double %i.bs, ptr %gep278.2, align 8, !tbaa !30
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bu = mul nsw i64 %indvars.iv.next.2, %i.ag
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bu
  %i.bv = load double, ptr %gep.3, align 8, !tbaa !30
  %i.bw = mul nsw i64 %indvars.iv.next.2, %i.ah
  %gep278.3 = getelementptr [8 x i8], ptr %invariant.gep277, i64 %i.bw
  store double %i.bv, ptr %gep278.3, align 8, !tbaa !30
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bx = mul nsw i64 %indvars.iv.next.3, %i.ag
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bx
  %i.by = load double, ptr %gep.4, align 8, !tbaa !30
  %i.bz = mul nsw i64 %indvars.iv.next.3, %i.ah
  %gep278.4 = getelementptr [8 x i8], ptr %invariant.gep277, i64 %i.bz
  store double %i.by, ptr %gep278.4, align 8, !tbaa !30
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.ca = mul nsw i64 %indvars.iv.next.4, %i.ag
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ca
  %i.cb = load double, ptr %gep.5, align 8, !tbaa !30
  %i.cc = mul nsw i64 %indvars.iv.next.4, %i.ah
  %gep278.5 = getelementptr [8 x i8], ptr %invariant.gep277, i64 %i.cc
  store double %i.cb, ptr %gep278.5, align 8, !tbaa !30
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.cd = mul nsw i64 %indvars.iv.next.5, %i.ag
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cd
  %i.ce = load double, ptr %gep.6, align 8, !tbaa !30
  %i.cf = mul nsw i64 %indvars.iv.next.5, %i.ah
  %gep278.6 = getelementptr [8 x i8], ptr %invariant.gep277, i64 %i.cf
  store double %i.ce, ptr %gep278.6, align 8, !tbaa !30
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.cg = mul nsw i64 %indvars.iv.next.6, %i.ag
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cg
  %i.ch = load double, ptr %gep.7, align 8, !tbaa !30
  %i.ci = mul nsw i64 %indvars.iv.next.6, %i.ah
  %gep278.7 = getelementptr [8 x i8], ptr %invariant.gep277, i64 %i.ci
  store double %i.ch, ptr %gep278.7, align 8, !tbaa !30
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %._crit_edge221.split, label %iter.check, !llvm.loop !12

._crit_edge221.split:                             ; preds = %._crit_edge, %bb.g
  %i.cj = add nsw i32 %., %i.j
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ck ; 5 uses
  call void @dtrmm_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b7, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %i.cl, ptr noundef nonnull %5) #4
  %i.cm = load i32, ptr %1, align 4, !tbaa !28
  %i.cn = load i32, ptr %i.e, align 4, !tbaa !28
  %i.co = sub nsw i32 %i.cm, %i.cn
  store i32 %i.co, ptr %i.c, align 4, !tbaa !28
  %i.cp = mul nsw i32 %., %i.g                    ; 2 uses
  %i.cq = add nsw i32 %i.cp, %.
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cr ; 4 uses
  %i.ct = sext i32 %i.cp to i64
  %i.cu = getelementptr [8 x i8], ptr %i.i, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 8      ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b7, ptr noundef %i.cs, ptr noundef nonnull %3, ptr noundef %i.cv, ptr noundef nonnull %3, ptr noundef nonnull @c_b7, ptr noundef %i.cl, ptr noundef nonnull %5) #4
  call void @dtrmm_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b7, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.cl, ptr noundef nonnull %5) #4
  %i.cw = load i32, ptr %1, align 4, !tbaa !28
  %i.cx = load i32, ptr %i.e, align 4, !tbaa !28
  %i.cy = sub nsw i32 %i.cw, %i.cx
  store i32 %i.cy, ptr %i.c, align 4, !tbaa !28
  call void @dgemm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b19, ptr noundef %i.cl, ptr noundef nonnull %5, ptr noundef %i.cv, ptr noundef nonnull %3, ptr noundef nonnull @c_b7, ptr noundef %i.cs, ptr noundef nonnull %3) #4
  call void @dtrmm_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b7, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %i.cl, ptr noundef nonnull %5) #4
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !28  ; 2 uses
  %.not206227 = icmp slt i32 %i.cz, 1
  %.pre = load i32, ptr %i.e, align 4, !tbaa !28  ; 7 uses
  %.not209222 = icmp slt i32 %.pre, 1
  %or.cond287 = select i1 %.not206227, i1 true, i1 %.not209222
  br i1 %or.cond287, label %._crit_edge231.split, label %.lr.ph225.preheader

.lr.ph225.preheader:                              ; preds = %._crit_edge221.split
  %i.da = sext i32 %i.j to i64                    ; 5 uses
  %i.db = sext i32 %i.g to i64                    ; 5 uses
  %i.dc = add nuw i32 %.pre, 1
  %i.dd = zext nneg i32 %.pre to i64              ; 3 uses
  %i.de = add nuw i32 %i.cz, 1
  %wide.trip.count256 = zext i32 %i.de to i64     ; 2 uses
  %wide.trip.count251 = zext i32 %i.dc to i64     ; 3 uses
  %i.df = shl nuw nsw i64 %i.dd, 3                ; 2 uses
  %7 = add nuw nsw i64 %i.dd, %wide.trip.count256
  %i.dg = add nuw nsw i64 %7, %wide.trip.count251
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = add nsw i64 %i.dh, -24                  ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.di
  %scevgep305 = getelementptr i8, ptr %4, i64 %i.df
  %scevgep306 = getelementptr i8, ptr %2, i64 %i.di
  %scevgep307 = getelementptr i8, ptr %2, i64 %i.df
  %i.dj = zext nneg i32 %.pre to i64
  %i.dk = zext nneg i32 %.pre to i64              ; 2 uses
  %min.iters.check308 = icmp ult i32 %.pre, 8
  %ident.check299 = icmp ne i32 %i.j, 1
  %ident.check300 = icmp ne i32 %i.g, 1
  %i.dl = or i1 %ident.check299, %ident.check300
  %bound0 = icmp ult ptr %scevgep307, %scevgep
  %bound1 = icmp ult ptr %scevgep305, %scevgep306
  %found.conflict = and i1 %bound0, %bound1
  %n.vec311 = and i64 %i.dk, 2147483640           ; 3 uses
  %i.dm = or disjoint i64 %n.vec311, 1
  %cmp.n320 = icmp eq i64 %n.vec311, %i.dk
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %._crit_edge226
  %indvars.iv253 = phi i64 [ 1, %.lr.ph225.preheader ], [ %indvars.iv.next254, %._crit_edge226 ] ; 2 uses
  %i.dn = add nuw nsw i64 %indvars.iv253, %i.dd   ; 2 uses
  %invariant.gep279 = getelementptr [8 x i8], ptr %i.l, i64 %i.dn ; 6 uses
  %invariant.gep281 = getelementptr [8 x i8], ptr %i.i, i64 %i.dn ; 6 uses
  %brmerge376 = select i1 %min.iters.check308, i1 true, i1 %i.dl
  %brmerge377 = select i1 %brmerge376, i1 true, i1 %found.conflict
  br i1 %brmerge377, label %scalar.ph.preheader, label %vector.body312

vector.body312:                                   ; preds = %.lr.ph225, %vector.body312
  %index313 = phi i64 [ %index.next318, %vector.body312 ], [ 0, %.lr.ph225 ] ; 2 uses
  %i.do = or disjoint i64 %index313, 1            ; 2 uses
  %i.dp = getelementptr [8 x i8], ptr %invariant.gep279, i64 %i.do ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 32     ; 2 uses
  %wide.load314 = load <4 x double>, ptr %i.dp, align 8, !tbaa !30, !alias.scope !36
  %wide.load315 = load <4 x double>, ptr %i.dq, align 8, !tbaa !30, !alias.scope !36
  %i.dr = getelementptr [8 x i8], ptr %invariant.gep281, i64 %i.do ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 32     ; 2 uses
  %wide.load316 = load <4 x double>, ptr %i.dr, align 8, !tbaa !30, !alias.scope !37, !noalias !36
  %wide.load317 = load <4 x double>, ptr %i.ds, align 8, !tbaa !30, !alias.scope !37, !noalias !36
  %i.dt = fsub <4 x double> %wide.load316, %wide.load314
  %i.du = fsub <4 x double> %wide.load317, %wide.load315
  store <4 x double> %i.dt, ptr %i.dr, align 8, !tbaa !30, !alias.scope !37, !noalias !36
  store <4 x double> %i.du, ptr %i.ds, align 8, !tbaa !30, !alias.scope !37, !noalias !36
  store <4 x double> zeroinitializer, ptr %i.dp, align 8, !tbaa !30, !alias.scope !36
  store <4 x double> zeroinitializer, ptr %i.dq, align 8, !tbaa !30, !alias.scope !36
  %index.next318 = add nuw i64 %index313, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next318, %n.vec311
  br i1 %i.dv, label %middle.block319, label %vector.body312, !llvm.loop !16

middle.block319:                                  ; preds = %vector.body312
  br i1 %cmp.n320, label %._crit_edge226, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph225, %middle.block319
  %indvars.iv248.ph = phi i64 [ 1, %.lr.ph225 ], [ %i.dm, %middle.block319 ] ; 4 uses
  %i.dw = sub nsw i64 %wide.trip.count251, %indvars.iv248.ph
  %i.dx = sub nsw i64 %i.dj, %indvars.iv248.ph
  %xtraiter370 = and i64 %i.dw, 3                 ; 2 uses
  %lcmp.mod371.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod371.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv248.prol = phi i64 [ %indvars.iv.next249.prol, %scalar.ph.prol ], [ %indvars.iv248.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter372 = phi i64 [ %prol.iter372.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dy = mul nsw i64 %indvars.iv248.prol, %i.da
  %gep280.prol = getelementptr [8 x i8], ptr %invariant.gep279, i64 %i.dy ; 2 uses
  %i.dz = load double, ptr %gep280.prol, align 8, !tbaa !30
  %i.ea = mul nsw i64 %indvars.iv248.prol, %i.db
  %gep282.prol = getelementptr [8 x i8], ptr %invariant.gep281, i64 %i.ea ; 2 uses
  %i.eb = load double, ptr %gep282.prol, align 8, !tbaa !30
  %i.ec = fsub double %i.eb, %i.dz
  store double %i.ec, ptr %gep282.prol, align 8, !tbaa !30
  store double 0.000000e+00, ptr %gep280.prol, align 8, !tbaa !30
  %indvars.iv.next249.prol = add nuw nsw i64 %indvars.iv248.prol, 1 ; 2 uses
  %prol.iter372.next = add i64 %prol.iter372, 1   ; 2 uses
  %prol.iter372.cmp.not = icmp eq i64 %prol.iter372.next, %xtraiter370
  br i1 %prol.iter372.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !17

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv248.unr = phi i64 [ %indvars.iv248.ph, %scalar.ph.preheader ], [ %indvars.iv.next249.prol, %scalar.ph.prol ]
  %i.ed = icmp ult i64 %i.dx, 3
  br i1 %i.ed, label %._crit_edge226, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv248 = phi i64 [ %indvars.iv.next249.3, %scalar.ph ], [ %indvars.iv248.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ee = mul nsw i64 %indvars.iv248, %i.da
  %gep280 = getelementptr [8 x i8], ptr %invariant.gep279, i64 %i.ee ; 2 uses
  %i.ef = load double, ptr %gep280, align 8, !tbaa !30
  %i.eg = mul nsw i64 %indvars.iv248, %i.db
  %gep282 = getelementptr [8 x i8], ptr %invariant.gep281, i64 %i.eg ; 2 uses
  %i.eh = load double, ptr %gep282, align 8, !tbaa !30
  %i.ei = fsub double %i.eh, %i.ef
  store double %i.ei, ptr %gep282, align 8, !tbaa !30
  store double 0.000000e+00, ptr %gep280, align 8, !tbaa !30
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.ej = mul nsw i64 %indvars.iv.next249, %i.da
  %gep280.1 = getelementptr [8 x i8], ptr %invariant.gep279, i64 %i.ej ; 2 uses
  %i.ek = load double, ptr %gep280.1, align 8, !tbaa !30
  %i.el = mul nsw i64 %indvars.iv.next249, %i.db
  %gep282.1 = getelementptr [8 x i8], ptr %invariant.gep281, i64 %i.el ; 2 uses
  %i.em = load double, ptr %gep282.1, align 8, !tbaa !30
  %i.en = fsub double %i.em, %i.ek
  store double %i.en, ptr %gep282.1, align 8, !tbaa !30
  store double 0.000000e+00, ptr %gep280.1, align 8, !tbaa !30
  %indvars.iv.next249.1 = add nuw nsw i64 %indvars.iv248, 2 ; 2 uses
  %i.eo = mul nsw i64 %indvars.iv.next249.1, %i.da
  %gep280.2 = getelementptr [8 x i8], ptr %invariant.gep279, i64 %i.eo ; 2 uses
  %i.ep = load double, ptr %gep280.2, align 8, !tbaa !30
  %i.eq = mul nsw i64 %indvars.iv.next249.1, %i.db
  %gep282.2 = getelementptr [8 x i8], ptr %invariant.gep281, i64 %i.eq ; 2 uses
  %i.er = load double, ptr %gep282.2, align 8, !tbaa !30
  %i.es = fsub double %i.er, %i.ep
  store double %i.es, ptr %gep282.2, align 8, !tbaa !30
  store double 0.000000e+00, ptr %gep280.2, align 8, !tbaa !30
  %indvars.iv.next249.2 = add nuw nsw i64 %indvars.iv248, 3 ; 2 uses
  %i.et = mul nsw i64 %indvars.iv.next249.2, %i.da
  %gep280.3 = getelementptr [8 x i8], ptr %invariant.gep279, i64 %i.et ; 2 uses
  %i.eu = load double, ptr %gep280.3, align 8, !tbaa !30
  %i.ev = mul nsw i64 %indvars.iv.next249.2, %i.db
  %gep282.3 = getelementptr [8 x i8], ptr %invariant.gep281, i64 %i.ev ; 2 uses
  %i.ew = load double, ptr %gep282.3, align 8, !tbaa !30
  %i.ex = fsub double %i.ew, %i.eu
  store double %i.ex, ptr %gep282.3, align 8, !tbaa !30
  store double 0.000000e+00, ptr %gep280.3, align 8, !tbaa !30
  %indvars.iv.next249.3 = add nuw nsw i64 %indvars.iv248, 4 ; 2 uses
  %exitcond252.not.3 = icmp eq i64 %indvars.iv.next249.3, %wide.trip.count251
  br i1 %exitcond252.not.3, label %._crit_edge226, label %scalar.ph, !llvm.loop !18

._crit_edge226:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block319
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count256
  br i1 %exitcond257.not, label %._crit_edge231.split, label %.lr.ph225, !llvm.loop !19

._crit_edge231.split:                             ; preds = %._crit_edge226, %._crit_edge221.split
  %i.ey = load i32, ptr %1, align 4, !tbaa !28
  %i.ez = sub nsw i32 %i.ey, %.pre
  store i32 %i.ez, ptr %i.c, align 4, !tbaa !28
  %i.fa = mul nsw i32 %., %i.j                    ; 2 uses
  %i.fb = add nsw i32 %i.fa, %.
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fc ; 2 uses
  call void @dgelqt3_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef %i.cs, ptr noundef nonnull %3, ptr noundef %i.fd, ptr noundef nonnull %5, ptr noundef nonnull %i.d)
  %i.fe = load i32, ptr %i.f, align 4, !tbaa !28  ; 3 uses
  store i32 %i.fe, ptr %i.c, align 4, !tbaa !28
  %.not207237 = icmp slt i32 %i.fe, 1
  br i1 %.not207237, label %._crit_edge241.split, label %.lr.ph240

.lr.ph240:                                        ; preds = %._crit_edge231.split
  %i.ff = load i32, ptr %i.e, align 4, !tbaa !28  ; 7 uses
  %.not208232 = icmp slt i32 %i.ff, 1
  br i1 %.not208232, label %._crit_edge241.split, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %.lr.ph240
  %i.fg = add nuw i32 %i.ff, 1
  %i.fh = zext nneg i32 %i.ff to i64              ; 3 uses
  %i.fi = sext i32 %i.g to i64                    ; 3 uses
  %i.fj = sext i32 %i.j to i64                    ; 3 uses
  %i.fk = add nuw i32 %i.fe, 1
  %wide.trip.count269 = zext i32 %i.fk to i64     ; 2 uses
  %wide.trip.count264 = zext i32 %i.fg to i64     ; 3 uses
  %i.fl = add nuw nsw i64 %i.fh, %wide.trip.count269
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = add nsw i64 %i.fm, -8                   ; 2 uses
  %i.fo = mul i64 %i.fn, %i.fi
  %i.fp = shl nsw i64 %i.h, 3
  %i.fq = shl nuw nsw i64 %wide.trip.count264, 3  ; 2 uses
  %i.fr = getelementptr i8, ptr %2, i64 %i.fo
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fp
  %scevgep331 = getelementptr i8, ptr %i.fs, i64 %i.fq
  %i.ft = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %i.fu = mul nsw i64 %i.ft, %i.fi
  %i.fv = add i64 %i.fu, %i.h
  %i.fw = shl i64 %i.fv, 3
  %i.fx = getelementptr i8, ptr %2, i64 %i.fw
  %scevgep332 = getelementptr i8, ptr %i.fx, i64 8
  %i.fy = mul i64 %i.fn, %i.fj
  %i.fz = shl nsw i64 %i.k, 3
  %i.ga = getelementptr i8, ptr %4, i64 %i.fy
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fz
  %scevgep333 = getelementptr i8, ptr %i.gb, i64 %i.fq
  %i.gc = mul nsw i64 %i.ft, %i.fj
  %i.gd = add i64 %i.gc, %i.k
  %i.ge = shl i64 %i.gd, 3
  %i.gf = getelementptr i8, ptr %4, i64 %i.ge
  %scevgep334 = getelementptr i8, ptr %i.gf, i64 8
  %i.gg = zext nneg i32 %i.ff to i64              ; 5 uses
  %i.gh = zext nneg i32 %i.ff to i64
  %min.iters.check336 = icmp ult i32 %i.ff, 4
  %bound0338 = icmp ult ptr %scevgep334, %scevgep331
  %bound1339 = icmp ult ptr %scevgep332, %scevgep333
  %found.conflict340 = and i1 %bound0338, %bound1339
  %i.gi = or i32 %i.g, %i.j
  %i.gj = icmp slt i32 %i.gi, 0
  %i.gk = or i1 %found.conflict340, %i.gj
  %min.iters.check343 = icmp ult i32 %i.ff, 16
  %i.gl = and i64 %i.gg, 12
  %n.vec345 = and i64 %i.gg, 2147483632           ; 4 uses
  %i.gm = or disjoint i64 %n.vec345, 1
  %cmp.n354 = icmp eq i64 %n.vec345, %i.gg
  %min.epilog.iters.check358 = icmp eq i64 %i.gl, 0
  %n.vec361 = and i64 %i.gg, 2147483644           ; 3 uses
  %i.gn = or disjoint i64 %n.vec361, 1
end_hunk_0
