Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlahilb?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dlahilb_:bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -6, %bb.d ], [ -4, %bb.c ], [ -8, %bb.e ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 6, %bb.d ], [ 4, %bb.c ], [ 8, %bb.e ]
  store i32 %.sink, ptr %9, align 4, !tbaa !24
  store i32 %.neg, ptr %i.a, align 4, !tbaa !24
  %i.s = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #4 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.t = icmp samesign ugt i32 %i.j, 6
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %9, align 4, !tbaa !24
  %.pre = load i32, ptr %0, align 4, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi i32 [ %.pre, %bb.g ], [ %i.j, %bb.f ] ; 6 uses
  %i.v = shl i32 %i.u, 1                          ; 2 uses
  %.not.not117 = icmp sgt i32 %i.v, 2
  br i1 %.not.not117, label %.lr.ph121, label %._crit_edge122

.lr.ph121:                                        ; preds = %bb.h, %._crit_edge.1
  %.099119 = phi i32 [ %i.ae, %._crit_edge.1 ], [ 1, %bb.h ] ; 2 uses
  %.0101118 = phi i32 [ %i.af, %._crit_edge.1 ], [ 2, %bb.h ] ; 6 uses
  %i.w = srem i32 %.099119, %.0101118             ; 2 uses
  %.not112114 = icmp eq i32 %i.w, 0
  br i1 %.not112114, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph121, %.lr.ph
  %.0116 = phi i32 [ %.098115, %.lr.ph ], [ %.0101118, %.lr.ph121 ]
  %.098115 = phi i32 [ %i.x, %.lr.ph ], [ %i.w, %.lr.ph121 ] ; 3 uses
  %i.x = srem i32 %.0116, %.098115                ; 2 uses
  %.not112 = icmp eq i32 %i.x, 0
  br i1 %.not112, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph121
  %.0.lcssa = phi i32 [ %.0101118, %.lr.ph121 ], [ %.098115, %.lr.ph ]
  %i.y = sdiv i32 %.099119, %.0.lcssa
  %i.z = mul nsw i32 %i.y, %.0101118              ; 2 uses
  %i.aa = or disjoint i32 %.0101118, 1            ; 4 uses
  %i.ab = srem i32 %i.z, %i.aa                    ; 2 uses
  %.not112114.1 = icmp eq i32 %i.ab, 0
  br i1 %.not112114.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %.0116.1 = phi i32 [ %.098115.1, %.lr.ph.1 ], [ %i.aa, %._crit_edge ]
  %.098115.1 = phi i32 [ %i.ac, %.lr.ph.1 ], [ %i.ab, %._crit_edge ] ; 3 uses
  %i.ac = srem i32 %.0116.1, %.098115.1           ; 2 uses
  %.not112.1 = icmp eq i32 %i.ac, 0
  br i1 %.not112.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !8

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %.0.lcssa.1 = phi i32 [ %i.aa, %._crit_edge ], [ %.098115.1, %.lr.ph.1 ]
  %i.ad = sdiv i32 %i.z, %.0.lcssa.1
  %i.ae = mul nsw i32 %i.ad, %i.aa                ; 2 uses
  %i.af = add nuw nsw i32 %.0101118, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.af, %i.v
  br i1 %exitcond.not.1, label %._crit_edge122.loopexit, label %.lr.ph121, !llvm.loop !9

._crit_edge122.loopexit:                          ; preds = %._crit_edge.1
  %i.ag = sitofp i32 %i.ae to double
  br label %._crit_edge122

._crit_edge122:                                   ; preds = %._crit_edge122.loopexit, %bb.h
  %.099.lcssa = phi double [ 1.000000e+00, %bb.h ], [ %i.ag, %._crit_edge122.loopexit ] ; 4 uses
  %.not107128 = icmp slt i32 %i.u, 1
  br i1 %.not107128, label %._crit_edge130.split, label %.preheader113.lr.ph

.preheader113.lr.ph:                              ; preds = %._crit_edge122
  %i.ah = add nuw i32 %i.u, 1
  %i.ai = sext i32 %i.d to i64
  %wide.trip.count148 = zext i32 %i.ah to i64     ; 2 uses
  %i.aj = zext nneg i32 %i.u to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %i.u, 4
  %min.iters.check175 = icmp ult i32 %i.u, 16
  %i.ak = and i64 %i.aj, 12
  %n.vec = and i64 %i.aj, 2147483632              ; 4 uses
  %i.al = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert176 = insertelement <4 x double> poison, double %.099.lcssa, i64 0
  %broadcast.splat177 = shufflevector <4 x double> %broadcast.splatinsert176, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aj
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  %n.vec178 = and i64 %i.aj, 2147483644           ; 3 uses
  %i.am = or disjoint i64 %n.vec178, 1
  %broadcast.splatinsert181 = insertelement <4 x double> poison, double %.099.lcssa, i64 0
  %broadcast.splat182 = shufflevector <4 x double> %broadcast.splatinsert181, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n189 = icmp eq i64 %n.vec178, %i.aj
  br label %iter.check

iter.check:                                       ; preds = %.preheader113.lr.ph, %._crit_edge127
  %indvars.iv145 = phi i64 [ 1, %.preheader113.lr.ph ], [ %indvars.iv.next146, %._crit_edge127 ] ; 3 uses
  %i.an = add nuw i64 %indvars.iv145, 4294967295  ; 3 uses
  %i.ao = mul nsw i64 %indvars.iv145, %i.ai
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.ao ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check175, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <4 x i64> splat (i64 4), %broadcast.splat
  %invariant.op248 = add <4 x i64> splat (i64 8), %broadcast.splat
  %invariant.op250 = add <4 x i64> splat (i64 12), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.ap = add <4 x i64> %broadcast.splat, %vec.ind
  %.reass = add <4 x i64> %vec.ind, %invariant.op
  %.reass249 = add <4 x i64> %vec.ind, %invariant.op248
  %.reass251 = add <4 x i64> %vec.ind, %invariant.op250
  %i.aq = trunc <4 x i64> %i.ap to <4 x i32>
  %i.ar = trunc <4 x i64> %.reass to <4 x i32>
  %i.as = trunc <4 x i64> %.reass249 to <4 x i32>
  %i.at = trunc <4 x i64> %.reass251 to <4 x i32>
  %i.au = sitofp <4 x i32> %i.aq to <4 x double>
  %i.av = sitofp <4 x i32> %i.ar to <4 x double>
  %i.aw = sitofp <4 x i32> %i.as to <4 x double>
  %i.ax = sitofp <4 x i32> %i.at to <4 x double>
  %i.ay = fdiv <4 x double> %broadcast.splat177, %i.au
  %i.az = fdiv <4 x double> %broadcast.splat177, %i.av
  %i.ba = fdiv <4 x double> %broadcast.splat177, %i.aw
  %i.bb = fdiv <4 x double> %broadcast.splat177, %i.ax
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = getelementptr i8, ptr %i.bc, i64 40
  %i.bf = getelementptr i8, ptr %i.bc, i64 72
  %i.bg = getelementptr i8, ptr %i.bc, i64 104
  store <4 x double> %i.ay, ptr %i.bd, align 8, !tbaa !27
  store <4 x double> %i.az, ptr %i.be, align 8, !tbaa !27
  store <4 x double> %i.ba, ptr %i.bf, align 8, !tbaa !27
  store <4 x double> %i.bb, ptr %i.bg, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 16)
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge127, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.al, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %broadcast.splatinsert179 = insertelement <4 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat180 = shufflevector <4 x i64> %broadcast.splatinsert179, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert183 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat184 = shufflevector <4 x i64> %broadcast.splatinsert183, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat184, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index185 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next187, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind186 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next188, %vec.epilog.vector.body ] ; 2 uses
  %i.bi = add <4 x i64> %broadcast.splat180, %vec.ind186
  %i.bj = trunc <4 x i64> %i.bi to <4 x i32>
  %i.bk = sitofp <4 x i32> %i.bj to <4 x double>
  %i.bl = fdiv <4 x double> %broadcast.splat182, %i.bk
  %i.bm = getelementptr [8 x i8], ptr %invariant.gep, i64 %index185
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  store <4 x double> %i.bl, ptr %i.bn, align 8, !tbaa !27
  %index.next187 = add nuw i64 %index185, 4       ; 2 uses
  %vec.ind.next188 = add nuw nsw <4 x i64> %vec.ind186, splat (i64 4)
  %i.bo = icmp eq i64 %index.next187, %n.vec178
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n189, label %._crit_edge127, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bp = add i64 %i.an, %indvars.iv
  %i.bq = trunc i64 %i.bp to i32
  %i.br = sitofp i32 %i.bq to double
  %i.bs = fdiv double %.099.lcssa, %i.br
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  store double %i.bs, ptr %gep, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next, %wide.trip.count148
  br i1 %exitcond144.not, label %._crit_edge127, label %vec.epilog.scalar.ph, !llvm.loop !12

._crit_edge127:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %._crit_edge130.split, label %iter.check, !llvm.loop !13

._crit_edge130.split:                             ; preds = %._crit_edge127, %._crit_edge122
  store double %.099.lcssa, ptr %i.b, align 8, !tbaa !27
  call void @dlaset_(ptr noundef nonnull @.str.1, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @c_b4, ptr noundef nonnull %i.b, ptr noundef %6, ptr noundef nonnull %7) #4
  %i.bt = load i32, ptr %0, align 4, !tbaa !24    ; 13 uses
  %i.bu = sitofp i32 %i.bt to double
  store double %i.bu, ptr %8, align 8, !tbaa !27
  %.not108131 = icmp slt i32 %i.bt, 2
  br i1 %.not108131, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %._crit_edge130.split
  %i.bv = add nsw i32 %i.bt, -1                   ; 3 uses
  %i.bw = add nuw i32 %i.bt, 1                    ; 3 uses
  %wide.trip.count153 = zext i32 %i.bw to i64     ; 2 uses
  %load_initial = load double, ptr %8, align 8    ; 2 uses
  %xtraiter = and i64 %wide.trip.count153, 1
  %i.bx = icmp eq i32 %i.bw, 3
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph134.new

.lr.ph134.new:                                    ; preds = %.lr.ph134
  %i.by = and i64 %wide.trip.count153, 4294967294
  %i.bz = add nsw i64 %i.by, -4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph134.new
  %i.ca = phi double [ %load_initial, %.lr.ph134.new ], [ %i.db, %bb.i ]
  %indvars.iv150 = phi i64 [ 2, %.lr.ph134.new ], [ %indvars.iv.next151.1, %bb.i ] ; 8 uses
  %niter = phi i64 [ 0, %.lr.ph134.new ], [ %niter.next.1, %bb.i ] ; 2 uses
  %i.cb = add nsw i64 %indvars.iv150, -1          ; 2 uses
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = sitofp i32 %i.cc to double              ; 2 uses
  %i.ce = fdiv double %i.ca, %i.cd
  %i.cf = trunc i64 %i.cb to i32
  %i.cg = sub i32 %i.cf, %i.bt
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = fmul double %i.ce, %i.ch
  %i.cj = fdiv double %i.ci, %i.cd
  %i.ck = trunc nuw nsw i64 %indvars.iv150 to i32
  %i.cl = add i32 %i.bv, %i.ck
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = fmul double %i.cj, %i.cm                ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv150
  store double %i.cn, ptr %i.co, align 8, !tbaa !27
  %i.cp = trunc nuw nsw i64 %indvars.iv150 to i32
  %i.cq = sitofp i32 %i.cp to double              ; 2 uses
  %i.cr = fdiv double %i.cn, %i.cq
  %i.cs = trunc i64 %indvars.iv150 to i32
  %i.ct = sub i32 %i.cs, %i.bt
  %i.cu = sitofp i32 %i.ct to double
  %i.cv = fmul double %i.cr, %i.cu
  %i.cw = fdiv double %i.cv, %i.cq
  %i.cx = trunc i64 %indvars.iv150 to i32
  %i.cy = or disjoint i32 %i.cx, 1
  %i.cz = add i32 %i.bv, %i.cy
  %i.da = sitofp i32 %i.cz to double
  %i.db = fmul double %i.cw, %i.da                ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %8, i64 %indvars.iv150
  store double %i.db, ptr %i.dc, align 8, !tbaa !27
  %indvars.iv.next151.1 = add nuw nsw i64 %indvars.iv150, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.bz
  br i1 %niter.ncmp.1, label %._crit_edge135.loopexit.unr-lcssa, label %bb.i, !llvm.loop !14

._crit_edge135.loopexit.unr-lcssa:                ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge135, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge135.loopexit.unr-lcssa, %.lr.ph134
  %.epil.init = phi double [ %load_initial, %.lr.ph134 ], [ %i.db, %._crit_edge135.loopexit.unr-lcssa ]
  %indvars.iv150.epil.init = phi i64 [ 2, %.lr.ph134 ], [ %indvars.iv.next151.1, %._crit_edge135.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod244 = trunc i32 %i.bw to i1
  call void @llvm.assume(i1 %lcmp.mod244)
  %i.dd = add nsw i64 %indvars.iv150.epil.init, -1 ; 2 uses
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = sitofp i32 %i.de to double              ; 2 uses
  %i.dg = fdiv double %.epil.init, %i.df
  %i.dh = trunc i64 %i.dd to i32
  %i.di = sub i32 %i.dh, %i.bt
  %i.dj = sitofp i32 %i.di to double
  %i.dk = fmul double %i.dg, %i.dj
  %i.dl = fdiv double %i.dk, %i.df
  %i.dm = trunc nuw nsw i64 %indvars.iv150.epil.init to i32
  %i.dn = add i32 %i.bv, %i.dm
  %i.do = sitofp i32 %i.dn to double
  %i.dp = fmul double %i.dl, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv150.epil.init
  store double %i.dp, ptr %i.dq, align 8, !tbaa !27
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %.epil.preheader, %._crit_edge135.loopexit.unr-lcssa, %._crit_edge130.split
  %i.dr = load i32, ptr %1, align 4, !tbaa !24    ; 2 uses
  %.not109140 = icmp slt i32 %i.dr, 1
  %.not110136 = icmp slt i32 %i.bt, 1
  %or.cond142 = or i1 %.not109140, %.not110136
  br i1 %or.cond142, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge135
  %i.ds = add nuw i32 %i.bt, 1
  %i.dt = sext i32 %i.g to i64                    ; 3 uses
  %i.du = add nuw i32 %i.dr, 1
  %wide.trip.count163 = zext i32 %i.du to i64     ; 2 uses
  %wide.trip.count158 = zext i32 %i.ds to i64     ; 3 uses
  %i.dv = shl nsw i64 %i.dt, 3
  %i.dw = shl nsw i64 %i.h, 3                     ; 2 uses
  %i.dx = getelementptr i8, ptr %4, i64 %i.dv
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dw
  %scevgep = getelementptr i8, ptr %i.dy, i64 8   ; 2 uses
  %i.dz = shl nuw nsw i64 %wide.trip.count163, 3
  %i.ea = add nsw i64 %i.dz, -8                   ; 2 uses
  %i.eb = mul i64 %i.ea, %i.dt
  %i.ec = shl nuw nsw i64 %wide.trip.count158, 3  ; 2 uses
  %i.ed = getelementptr i8, ptr %4, i64 %i.eb
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.dw
  %scevgep191.a = getelementptr i8, ptr %i.ee, i64 %i.ec ; 2 uses
  %scevgep192.a = getelementptr i8, ptr %8, i64 %i.ea
  %i.ef = getelementptr i8, ptr %8, i64 %i.ec
  %scevgep193 = getelementptr i8, ptr %i.ef, i64 -8
  %i.eg = zext nneg i32 %i.bt to i64              ; 5 uses
  %i.eh = zext nneg i32 %i.bt to i64
  %min.iters.check198 = icmp ult i32 %i.bt, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep192.a
  %bound1 = icmp ult ptr %8, %scevgep191.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0194 = icmp ult ptr %scevgep, %scevgep193
  %bound1195 = icmp ult ptr %8, %scevgep191.a
  %found.conflict196 = and i1 %bound0194, %bound1195
  %stride.check197 = icmp slt i32 %i.g, 0
  %i.ei = or i1 %found.conflict196, %stride.check197
  %conflict.rdx = or i1 %found.conflict, %i.ei
  %min.iters.check200 = icmp ult i32 %i.bt, 16
  %i.ej = and i64 %i.eg, 12
  %n.vec202 = and i64 %i.eg, 2147483632           ; 4 uses
  %i.ek = or disjoint i64 %n.vec202, 1            ; 2 uses
  %cmp.n219 = icmp eq i64 %n.vec202, %i.eg
  %min.epilog.iters.check225 = icmp eq i64 %i.ej, 0
  %n.vec227 = and i64 %i.eg, 2147483644           ; 3 uses
  %i.el = or disjoint i64 %n.vec227, 1
  %cmp.n242 = icmp eq i64 %n.vec227, %i.eg
  br label %iter.check222

iter.check222:                                    ; preds = %.preheader.preheader, %._crit_edge139
  %indvars.iv160 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next161, %._crit_edge139 ] ; 4 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv160 ; 7 uses
  %i.en = add nuw i64 %indvars.iv160, 4294967295  ; 7 uses
  %i.eo = mul nsw i64 %indvars.iv160, %i.dt
  %invariant.gep173 = getelementptr [8 x i8], ptr %i.i, i64 %i.eo ; 7 uses
  %brmerge = select i1 %min.iters.check198, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph223.preheader, label %vector.main.loop.iter.check199

vector.main.loop.iter.check199:                   ; preds = %iter.check222
  br i1 %min.iters.check200, label %vec.epilog.ph226, label %vector.ph201

vector.ph201:                                     ; preds = %vector.main.loop.iter.check199
  %i.ep = load double, ptr %i.em, align 8, !tbaa !27, !alias.scope !31
  %broadcast.splatinsert214 = insertelement <4 x double> poison, double %i.ep, i64 0
  %broadcast.splat215 = shufflevector <4 x double> %broadcast.splatinsert214, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert203 = insertelement <4 x i64> poison, i64 %i.en, i64 0
  %broadcast.splat204 = shufflevector <4 x i64> %broadcast.splatinsert203, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op252 = add <4 x i64> splat (i64 4), %broadcast.splat204
  %invariant.op254 = add <4 x i64> splat (i64 8), %broadcast.splat204
  %invariant.op256 = add <4 x i64> splat (i64 12), %broadcast.splat204
  br label %vector.body205

vector.body205:                                   ; preds = %vector.ph201, %vector.body205
  %index206 = phi i64 [ 0, %vector.ph201 ], [ %index.next216, %vector.body205 ] ; 3 uses
  %vec.ind207 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph201 ], [ %vec.ind.next217, %vector.body205 ] ; 5 uses
  %i.eq = getelementptr [8 x i8], ptr %8, i64 %index206 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  %wide.load = load <4 x double>, ptr %i.eq, align 8, !tbaa !27, !alias.scope !32
  %wide.load211.a = load <4 x double>, ptr %i.er, align 8, !tbaa !27, !alias.scope !32
  %wide.load212.a = load <4 x double>, ptr %i.es, align 8, !tbaa !27, !alias.scope !32
  %wide.load213 = load <4 x double>, ptr %i.et, align 8, !tbaa !27, !alias.scope !32
  %i.eu = fmul <4 x double> %wide.load, %broadcast.splat215
  %i.ev = fmul <4 x double> %wide.load211.a, %broadcast.splat215
  %i.ew = fmul <4 x double> %wide.load212.a, %broadcast.splat215
  %i.ex = fmul <4 x double> %wide.load213, %broadcast.splat215
  %i.ey = add <4 x i64> %broadcast.splat204, %vec.ind207
  %.reass253 = add <4 x i64> %vec.ind207, %invariant.op252
  %.reass255 = add <4 x i64> %vec.ind207, %invariant.op254
  %.reass257 = add <4 x i64> %vec.ind207, %invariant.op256
  %i.ez = trunc <4 x i64> %i.ey to <4 x i32>
  %i.fa = trunc <4 x i64> %.reass253 to <4 x i32>
  %i.fb = trunc <4 x i64> %.reass255 to <4 x i32>
  %i.fc = trunc <4 x i64> %.reass257 to <4 x i32>
  %i.fd = sitofp <4 x i32> %i.ez to <4 x double>
  %i.fe = sitofp <4 x i32> %i.fa to <4 x double>
  %i.ff = sitofp <4 x i32> %i.fb to <4 x double>
  %i.fg = sitofp <4 x i32> %i.fc to <4 x double>
  %i.fh = fdiv <4 x double> %i.eu, %i.fd
  %i.fi = fdiv <4 x double> %i.ev, %i.fe
  %i.fj = fdiv <4 x double> %i.ew, %i.ff
  %i.fk = fdiv <4 x double> %i.ex, %i.fg
  %i.fl = getelementptr [8 x i8], ptr %invariant.gep173, i64 %index206 ; 4 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 8
  %i.fn = getelementptr i8, ptr %i.fl, i64 40
  %i.fo = getelementptr i8, ptr %i.fl, i64 72
  %i.fp = getelementptr i8, ptr %i.fl, i64 104
  store <4 x double> %i.fh, ptr %i.fm, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  store <4 x double> %i.fi, ptr %i.fn, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  store <4 x double> %i.fj, ptr %i.fo, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  store <4 x double> %i.fk, ptr %i.fp, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  %index.next216 = add nuw i64 %index206, 16      ; 2 uses
  %vec.ind.next217 = add nuw nsw <4 x i64> %vec.ind207, splat (i64 16)
  %i.fq = icmp eq i64 %index.next216, %n.vec202
  br i1 %i.fq, label %middle.block218, label %vector.body205, !llvm.loop !19

middle.block218:                                  ; preds = %vector.body205
  br i1 %cmp.n219, label %._crit_edge139, label %vec.epilog.iter.check224

vec.epilog.iter.check224:                         ; preds = %middle.block218
  br i1 %min.epilog.iters.check225, label %vec.epilog.scalar.ph223.preheader, label %vec.epilog.ph226, !prof !30

vec.epilog.ph226:                                 ; preds = %vector.main.loop.iter.check199, %vec.epilog.iter.check224
  %vec.epilog.resume.val220 = phi i64 [ %n.vec202, %vec.epilog.iter.check224 ], [ 0, %vector.main.loop.iter.check199 ]
  %bc.resume.val221 = phi i64 [ %i.ek, %vec.epilog.iter.check224 ], [ 1, %vector.main.loop.iter.check199 ]
  %i.fr = load double, ptr %i.em, align 8, !tbaa !27, !alias.scope !31
  %broadcast.splatinsert237 = insertelement <4 x double> poison, double %i.fr, i64 0
  %broadcast.splat238 = shufflevector <4 x double> %broadcast.splatinsert237, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert228 = insertelement <4 x i64> poison, i64 %i.en, i64 0
  %broadcast.splat229 = shufflevector <4 x i64> %broadcast.splatinsert228, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert230 = insertelement <4 x i64> poison, i64 %bc.resume.val221, i64 0
  %broadcast.splat231 = shufflevector <4 x i64> %broadcast.splatinsert230, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction232 = add nuw nsw <4 x i64> %broadcast.splat231, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body233

vec.epilog.vector.body233:                        ; preds = %vec.epilog.vector.body233, %vec.epilog.ph226
  %index234 = phi i64 [ %vec.epilog.resume.val220, %vec.epilog.ph226 ], [ %index.next239, %vec.epilog.vector.body233 ] ; 3 uses
  %vec.ind235 = phi <4 x i64> [ %induction232, %vec.epilog.ph226 ], [ %vec.ind.next240, %vec.epilog.vector.body233 ] ; 2 uses
  %i.fs = getelementptr [8 x i8], ptr %8, i64 %index234
  %wide.load236 = load <4 x double>, ptr %i.fs, align 8, !tbaa !27, !alias.scope !32
  %i.ft = fmul <4 x double> %wide.load236, %broadcast.splat238
  %i.fu = add <4 x i64> %broadcast.splat229, %vec.ind235
  %i.fv = trunc <4 x i64> %i.fu to <4 x i32>
  %i.fw = sitofp <4 x i32> %i.fv to <4 x double>
  %i.fx = fdiv <4 x double> %i.ft, %i.fw
  %i.fy = getelementptr [8 x i8], ptr %invariant.gep173, i64 %index234
  %i.fz = getelementptr i8, ptr %i.fy, i64 8
  store <4 x double> %i.fx, ptr %i.fz, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %vec.ind.next240 = add nuw nsw <4 x i64> %vec.ind235, splat (i64 4)
  %i.ga = icmp eq i64 %index.next239, %n.vec227
  br i1 %i.ga, label %vec.epilog.middle.block241, label %vec.epilog.vector.body233, !llvm.loop !20

vec.epilog.middle.block241:                       ; preds = %vec.epilog.vector.body233
  br i1 %cmp.n242, label %._crit_edge139, label %vec.epilog.scalar.ph223.preheader

vec.epilog.scalar.ph223.preheader:                ; preds = %iter.check222, %vec.epilog.iter.check224, %vec.epilog.middle.block241
  %indvars.iv155.ph = phi i64 [ 1, %iter.check222 ], [ %i.el, %vec.epilog.middle.block241 ], [ %i.ek, %vec.epilog.iter.check224 ] ; 4 uses
  %i.gb = sub nsw i64 %wide.trip.count158, %indvars.iv155.ph
  %i.gc = sub nsw i64 %i.eh, %indvars.iv155.ph
  %xtraiter245 = and i64 %i.gb, 3                 ; 2 uses
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %vec.epilog.scalar.ph223.prol.loopexit, label %vec.epilog.scalar.ph223.prol

vec.epilog.scalar.ph223.prol:                     ; preds = %vec.epilog.scalar.ph223.preheader, %vec.epilog.scalar.ph223.prol
  %indvars.iv155.prol = phi i64 [ %indvars.iv.next156.prol, %vec.epilog.scalar.ph223.prol ], [ %indvars.iv155.ph, %vec.epilog.scalar.ph223.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph223.prol ], [ 0, %vec.epilog.scalar.ph223.preheader ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv155.prol
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !27
  %i.gf = load double, ptr %i.em, align 8, !tbaa !27
  %i.gg = fmul double %i.ge, %i.gf
  %i.gh = add i64 %i.en, %indvars.iv155.prol
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = sitofp i32 %i.gi to double
  %i.gk = fdiv double %i.gg, %i.gj
  %gep174.prol = getelementptr [8 x i8], ptr %invariant.gep173, i64 %indvars.iv155.prol
  store double %i.gk, ptr %gep174.prol, align 8, !tbaa !27
end_hunk_0
