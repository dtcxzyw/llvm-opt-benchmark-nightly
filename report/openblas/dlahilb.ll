Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlahilb?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dlahilb_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %7, align 4, !tbaa !24
  %i.r = icmp slt i32 %i.q, %i.j
  br i1 %i.r, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
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
  %broadcast.splatinsert = insertelement <4 x double> poison, double %.099.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aj
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  %n.vec178 = and i64 %i.aj, 2147483644           ; 3 uses
  %i.am = or disjoint i64 %n.vec178, 1
  %broadcast.splatinsert179 = insertelement <4 x double> poison, double %.099.lcssa, i64 0
  %broadcast.splat180 = shufflevector <4 x double> %broadcast.splatinsert179, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n188 = icmp eq i64 %n.vec178, %i.aj
  br label %iter.check

iter.check:                                       ; preds = %.preheader113.lr.ph, %._crit_edge127
  %indvars.iv145 = phi i64 [ 1, %.preheader113.lr.ph ], [ %indvars.iv.next146, %._crit_edge127 ] ; 5 uses
  %i.an = add nuw i64 %indvars.iv145, 4294967295
  %i.ao = mul nsw i64 %indvars.iv145, %i.ai
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.ao ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check175, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = trunc i64 %indvars.iv145 to i32
  %broadcast.splatinsert176 = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat177 = shufflevector <4 x i32> %broadcast.splatinsert176, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat177, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.aq = sitofp <4 x i32> %vec.ind to <4 x double>
  %i.ar = sitofp <4 x i32> %step.add to <4 x double>
  %i.as = sitofp <4 x i32> %step.add.2 to <4 x double>
  %i.at = sitofp <4 x i32> %step.add.3 to <4 x double>
  %i.au = fdiv <4 x double> %broadcast.splat, %i.aq
  %i.av = fdiv <4 x double> %broadcast.splat, %i.ar
  %i.aw = fdiv <4 x double> %broadcast.splat, %i.as
  %i.ax = fdiv <4 x double> %broadcast.splat, %i.at
  %i.ay = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 40
  %i.bb = getelementptr i8, ptr %i.ay, i64 72
  %i.bc = getelementptr i8, ptr %i.ay, i64 104
  store <4 x double> %i.au, ptr %i.az, align 8, !tbaa !27
  store <4 x double> %i.av, ptr %i.ba, align 8, !tbaa !27
  store <4 x double> %i.aw, ptr %i.bb, align 8, !tbaa !27
  store <4 x double> %i.ax, ptr %i.bc, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge127, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.al, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %i.be = add nuw i64 %indvars.iv145, 4294967295
  %i.bf = add i64 %bc.resume.val, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %broadcast.splatinsert181 = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat182 = shufflevector <4 x i32> %broadcast.splatinsert181, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction183 = add <4 x i32> %broadcast.splat182, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index184 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next186, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind185 = phi <4 x i32> [ %induction183, %vec.epilog.ph ], [ %vec.ind.next187, %vec.epilog.vector.body ] ; 2 uses
  %i.bh = sitofp <4 x i32> %vec.ind185 to <4 x double>
  %i.bi = fdiv <4 x double> %broadcast.splat180, %i.bh
  %i.bj = getelementptr [8 x i8], ptr %invariant.gep, i64 %index184
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  store <4 x double> %i.bi, ptr %i.bk, align 8, !tbaa !27
  %index.next186 = add nuw i64 %index184, 4       ; 2 uses
  %vec.ind.next187 = add <4 x i32> %vec.ind185, splat (i32 4)
  %i.bl = icmp eq i64 %index.next186, %n.vec178
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n188, label %._crit_edge127, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bm = add i64 %i.an, %indvars.iv
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = sitofp i32 %i.bn to double
  %i.bp = fdiv double %.099.lcssa, %i.bo
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  store double %i.bp, ptr %gep, align 8, !tbaa !27
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
  %i.bq = load i32, ptr %0, align 4, !tbaa !24    ; 13 uses
  %i.br = sitofp i32 %i.bq to double              ; 3 uses
  store double %i.br, ptr %8, align 8, !tbaa !27
  %.not108131 = icmp slt i32 %i.bq, 2
  br i1 %.not108131, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %._crit_edge130.split
  %i.bs = add nsw i32 %i.bq, -1                   ; 3 uses
  %i.bt = add nuw i32 %i.bq, 1                    ; 3 uses
  %wide.trip.count153 = zext i32 %i.bt to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count153, 1
  %i.bu = icmp eq i32 %i.bt, 3
  br i1 %i.bu, label %.epil.preheader, label %.lr.ph134.new

.lr.ph134.new:                                    ; preds = %.lr.ph134
  %i.bv = and i64 %wide.trip.count153, 4294967294
  %i.bw = add nsw i64 %i.bv, -4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph134.new
  %i.bx = phi double [ %i.br, %.lr.ph134.new ], [ %i.cy, %bb.i ]
  %indvars.iv150 = phi i64 [ 2, %.lr.ph134.new ], [ %indvars.iv.next151.1, %bb.i ] ; 8 uses
  %niter = phi i64 [ 0, %.lr.ph134.new ], [ %niter.next.1, %bb.i ] ; 2 uses
  %i.by = add nsw i64 %indvars.iv150, -1          ; 2 uses
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = sitofp i32 %i.bz to double              ; 2 uses
  %i.cb = fdiv double %i.bx, %i.ca
  %i.cc = trunc i64 %i.by to i32
  %i.cd = sub i32 %i.cc, %i.bq
  %i.ce = sitofp i32 %i.cd to double
  %i.cf = fmul double %i.cb, %i.ce
  %i.cg = fdiv double %i.cf, %i.ca
  %i.ch = trunc nuw nsw i64 %indvars.iv150 to i32
  %i.ci = add i32 %i.bs, %i.ch
  %i.cj = sitofp i32 %i.ci to double
  %i.ck = fmul double %i.cg, %i.cj                ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv150
  store double %i.ck, ptr %i.cl, align 8, !tbaa !27
  %i.cm = trunc nuw nsw i64 %indvars.iv150 to i32
  %i.cn = sitofp i32 %i.cm to double              ; 2 uses
  %i.co = fdiv double %i.ck, %i.cn
  %i.cp = trunc i64 %indvars.iv150 to i32
  %i.cq = sub i32 %i.cp, %i.bq
  %i.cr = sitofp i32 %i.cq to double
  %i.cs = fmul double %i.co, %i.cr
  %i.ct = fdiv double %i.cs, %i.cn
  %i.cu = trunc i64 %indvars.iv150 to i32
  %i.cv = or disjoint i32 %i.cu, 1
  %i.cw = add i32 %i.bs, %i.cv
  %i.cx = sitofp i32 %i.cw to double
  %i.cy = fmul double %i.ct, %i.cx                ; 3 uses
  %i.cz = getelementptr [8 x i8], ptr %8, i64 %indvars.iv150
  store double %i.cy, ptr %i.cz, align 8, !tbaa !27
  %indvars.iv.next151.1 = add nuw nsw i64 %indvars.iv150, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.bw
  br i1 %niter.ncmp.1, label %._crit_edge135.loopexit.unr-lcssa, label %bb.i, !llvm.loop !14

._crit_edge135.loopexit.unr-lcssa:                ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge135, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge135.loopexit.unr-lcssa, %.lr.ph134
  %.epil.init = phi double [ %i.br, %.lr.ph134 ], [ %i.cy, %._crit_edge135.loopexit.unr-lcssa ]
  %indvars.iv150.epil.init = phi i64 [ 2, %.lr.ph134 ], [ %indvars.iv.next151.1, %._crit_edge135.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod247 = trunc i32 %i.bt to i1
  call void @llvm.assume(i1 %lcmp.mod247)
  %i.da = add nsw i64 %indvars.iv150.epil.init, -1 ; 2 uses
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = sitofp i32 %i.db to double              ; 2 uses
  %i.dd = fdiv double %.epil.init, %i.dc
  %i.de = trunc i64 %i.da to i32
  %i.df = sub i32 %i.de, %i.bq
  %i.dg = sitofp i32 %i.df to double
  %i.dh = fmul double %i.dd, %i.dg
  %i.di = fdiv double %i.dh, %i.dc
  %i.dj = trunc nuw nsw i64 %indvars.iv150.epil.init to i32
  %i.dk = add i32 %i.bs, %i.dj
  %i.dl = sitofp i32 %i.dk to double
  %i.dm = fmul double %i.di, %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv150.epil.init
  store double %i.dm, ptr %i.dn, align 8, !tbaa !27
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %.epil.preheader, %._crit_edge135.loopexit.unr-lcssa, %._crit_edge130.split
  %i.do = load i32, ptr %1, align 4, !tbaa !24    ; 2 uses
  %.not109140 = icmp slt i32 %i.do, 1
  %.not110136 = icmp slt i32 %i.bq, 1
  %or.cond142 = or i1 %.not109140, %.not110136
  br i1 %or.cond142, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge135
  %i.dp = add nuw i32 %i.bq, 1
  %i.dq = sext i32 %i.g to i64                    ; 3 uses
  %i.dr = add nuw i32 %i.do, 1
  %wide.trip.count163 = zext i32 %i.dr to i64     ; 2 uses
  %wide.trip.count158 = zext i32 %i.dp to i64     ; 3 uses
  %i.ds = shl nsw i64 %i.dq, 3
  %i.dt = shl nuw nsw i64 %wide.trip.count158, 3  ; 2 uses
  %i.du = getelementptr i8, ptr %8, i64 %i.dt
  %scevgep = getelementptr i8, ptr %i.du, i64 -8
  %i.dv = shl nuw nsw i64 %wide.trip.count163, 3
  %i.dw = add nsw i64 %i.dv, -8                   ; 2 uses
  %scevgep196.a = getelementptr i8, ptr %8, i64 %i.dw
  %i.dx = mul i64 %i.dw, %i.dq
  %i.dy = shl nsw i64 %i.h, 3                     ; 2 uses
  %i.dz = getelementptr i8, ptr %4, i64 %i.dx
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dy
  %scevgep197.a = getelementptr i8, ptr %i.ea, i64 %i.dt
  %i.eb = getelementptr i8, ptr %4, i64 %i.ds
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.dy
  %scevgep198 = getelementptr i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ed = zext nneg i32 %i.bq to i64              ; 5 uses
  %i.ee = zext nneg i32 %i.bq to i64
  %min.iters.check199 = icmp ult i32 %i.bq, 4
  %bound0 = icmp ult ptr %scevgep198, %scevgep196.a
  %bound1 = icmp ult ptr %8, %scevgep197.a
  %stride.check = icmp slt i32 %i.g, 0
  %bound0200 = icmp ult ptr %scevgep198, %scevgep
  %found.conflict246 = or i1 %bound0, %bound0200
  %i.ef = and i1 %found.conflict246, %bound1
  %conflict.rdx = or i1 %i.ef, %stride.check
  %min.iters.check203 = icmp ult i32 %i.bq, 16
  %i.eg = and i64 %i.ed, 12
  %n.vec205 = and i64 %i.ed, 2147483632           ; 4 uses
  %i.eh = or disjoint i64 %n.vec205, 1            ; 2 uses
  %cmp.n223 = icmp eq i64 %n.vec205, %i.ed
  %min.epilog.iters.check227 = icmp eq i64 %i.eg, 0
  %n.vec231 = and i64 %i.ed, 2147483644           ; 3 uses
  %i.ei = or disjoint i64 %n.vec231, 1
  %cmp.n244 = icmp eq i64 %n.vec231, %i.ed
  br label %iter.check224

iter.check224:                                    ; preds = %.preheader.preheader, %._crit_edge139
  %indvars.iv160 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next161, %._crit_edge139 ] ; 6 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv160 ; 7 uses
  %i.ek = add nuw i64 %indvars.iv160, 4294967295  ; 5 uses
  %i.el = mul nsw i64 %indvars.iv160, %i.dq
  %invariant.gep173 = getelementptr [8 x i8], ptr %i.i, i64 %i.el ; 7 uses
  %brmerge = select i1 %min.iters.check199, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph226.preheader, label %vector.main.loop.iter.check202

vector.main.loop.iter.check202:                   ; preds = %iter.check224
  br i1 %min.iters.check203, label %vec.epilog.ph228, label %vector.ph204

vector.ph204:                                     ; preds = %vector.main.loop.iter.check202
  %i.em = load double, ptr %i.ej, align 8, !tbaa !27, !alias.scope !31
  %broadcast.splatinsert218 = insertelement <4 x double> poison, double %i.em, i64 0
  %broadcast.splat219 = shufflevector <4 x double> %broadcast.splatinsert218, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.en = trunc i64 %indvars.iv160 to i32
  %broadcast.splatinsert206 = insertelement <4 x i32> poison, i32 %i.en, i64 0
  %broadcast.splat207 = shufflevector <4 x i32> %broadcast.splatinsert206, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction208 = add <4 x i32> %broadcast.splat207, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body209

vector.body209:                                   ; preds = %vector.ph204, %vector.body209
  %index210 = phi i64 [ 0, %vector.ph204 ], [ %index.next220, %vector.body209 ] ; 3 uses
  %vec.ind211 = phi <4 x i32> [ %induction208, %vector.ph204 ], [ %vec.ind.next221, %vector.body209 ] ; 5 uses
  %step.add212 = add <4 x i32> %vec.ind211, splat (i32 4)
  %step.add.2213 = add <4 x i32> %vec.ind211, splat (i32 8)
  %step.add.3214 = add <4 x i32> %vec.ind211, splat (i32 12)
  %i.eo = getelementptr [8 x i8], ptr %8, i64 %index210 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  %wide.load = load <4 x double>, ptr %i.eo, align 8, !tbaa !27, !alias.scope !32
  %wide.load215.a = load <4 x double>, ptr %i.ep, align 8, !tbaa !27, !alias.scope !32
  %wide.load216.a = load <4 x double>, ptr %i.eq, align 8, !tbaa !27, !alias.scope !32
  %wide.load217 = load <4 x double>, ptr %i.er, align 8, !tbaa !27, !alias.scope !32
  %i.es = fmul <4 x double> %wide.load, %broadcast.splat219
  %i.et = fmul <4 x double> %wide.load215.a, %broadcast.splat219
  %i.eu = fmul <4 x double> %wide.load216.a, %broadcast.splat219
  %i.ev = fmul <4 x double> %wide.load217, %broadcast.splat219
  %i.ew = sitofp <4 x i32> %vec.ind211 to <4 x double>
  %i.ex = sitofp <4 x i32> %step.add212 to <4 x double>
  %i.ey = sitofp <4 x i32> %step.add.2213 to <4 x double>
  %i.ez = sitofp <4 x i32> %step.add.3214 to <4 x double>
  %i.fa = fdiv <4 x double> %i.es, %i.ew
  %i.fb = fdiv <4 x double> %i.et, %i.ex
  %i.fc = fdiv <4 x double> %i.eu, %i.ey
  %i.fd = fdiv <4 x double> %i.ev, %i.ez
  %i.fe = getelementptr [8 x i8], ptr %invariant.gep173, i64 %index210 ; 4 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 8
  %i.fg = getelementptr i8, ptr %i.fe, i64 40
  %i.fh = getelementptr i8, ptr %i.fe, i64 72
  %i.fi = getelementptr i8, ptr %i.fe, i64 104
  store <4 x double> %i.fa, ptr %i.ff, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  store <4 x double> %i.fb, ptr %i.fg, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  store <4 x double> %i.fc, ptr %i.fh, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  store <4 x double> %i.fd, ptr %i.fi, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  %index.next220 = add nuw i64 %index210, 16      ; 2 uses
  %vec.ind.next221 = add <4 x i32> %vec.ind211, splat (i32 16)
  %i.fj = icmp eq i64 %index.next220, %n.vec205
  br i1 %i.fj, label %middle.block222, label %vector.body209, !llvm.loop !19

middle.block222:                                  ; preds = %vector.body209
  br i1 %cmp.n223, label %._crit_edge139, label %vec.epilog.iter.check225

vec.epilog.iter.check225:                         ; preds = %middle.block222
  br i1 %min.epilog.iters.check227, label %vec.epilog.scalar.ph226.preheader, label %vec.epilog.ph228, !prof !30

vec.epilog.ph228:                                 ; preds = %vector.main.loop.iter.check202, %vec.epilog.iter.check225
  %vec.epilog.resume.val229 = phi i64 [ %n.vec205, %vec.epilog.iter.check225 ], [ 0, %vector.main.loop.iter.check202 ]
  %bc.resume.val230 = phi i64 [ %i.eh, %vec.epilog.iter.check225 ], [ 1, %vector.main.loop.iter.check202 ]
  %i.fk = load double, ptr %i.ej, align 8, !tbaa !27, !alias.scope !31
  %broadcast.splatinsert239 = insertelement <4 x double> poison, double %i.fk, i64 0
  %broadcast.splat240 = shufflevector <4 x double> %broadcast.splatinsert239, <4 x double> poison, <4 x i32> zeroinitializer
  %i.fl = add nuw i64 %indvars.iv160, 4294967295
  %i.fm = add i64 %bc.resume.val230, %i.fl
  %i.fn = trunc i64 %i.fm to i32
  %broadcast.splatinsert232 = insertelement <4 x i32> poison, i32 %i.fn, i64 0
  %broadcast.splat233 = shufflevector <4 x i32> %broadcast.splatinsert232, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction234 = add <4 x i32> %broadcast.splat233, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body235

vec.epilog.vector.body235:                        ; preds = %vec.epilog.vector.body235, %vec.epilog.ph228
  %index236 = phi i64 [ %vec.epilog.resume.val229, %vec.epilog.ph228 ], [ %index.next241, %vec.epilog.vector.body235 ] ; 3 uses
  %vec.ind237 = phi <4 x i32> [ %induction234, %vec.epilog.ph228 ], [ %vec.ind.next242, %vec.epilog.vector.body235 ] ; 2 uses
  %i.fo = getelementptr [8 x i8], ptr %8, i64 %index236
  %wide.load238 = load <4 x double>, ptr %i.fo, align 8, !tbaa !27, !alias.scope !32
  %i.fp = fmul <4 x double> %wide.load238, %broadcast.splat240
  %i.fq = sitofp <4 x i32> %vec.ind237 to <4 x double>
  %i.fr = fdiv <4 x double> %i.fp, %i.fq
  %i.fs = getelementptr [8 x i8], ptr %invariant.gep173, i64 %index236
  %i.ft = getelementptr i8, ptr %i.fs, i64 8
  store <4 x double> %i.fr, ptr %i.ft, align 8, !tbaa !27, !alias.scope !33, !noalias !34
  %index.next241 = add nuw i64 %index236, 4       ; 2 uses
  %vec.ind.next242 = add <4 x i32> %vec.ind237, splat (i32 4)
  %i.fu = icmp eq i64 %index.next241, %n.vec231
  br i1 %i.fu, label %vec.epilog.middle.block243, label %vec.epilog.vector.body235, !llvm.loop !20

vec.epilog.middle.block243:                       ; preds = %vec.epilog.vector.body235
  br i1 %cmp.n244, label %._crit_edge139, label %vec.epilog.scalar.ph226.preheader

vec.epilog.scalar.ph226.preheader:                ; preds = %iter.check224, %vec.epilog.iter.check225, %vec.epilog.middle.block243
  %indvars.iv155.ph = phi i64 [ 1, %iter.check224 ], [ %i.ei, %vec.epilog.middle.block243 ], [ %i.eh, %vec.epilog.iter.check225 ] ; 4 uses
  %i.fv = sub nsw i64 %wide.trip.count158, %indvars.iv155.ph
  %i.fw = sub nsw i64 %i.ee, %indvars.iv155.ph
  %xtraiter248 = and i64 %i.fv, 3                 ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %vec.epilog.scalar.ph226.prol.loopexit, label %vec.epilog.scalar.ph226.prol

vec.epilog.scalar.ph226.prol:                     ; preds = %vec.epilog.scalar.ph226.preheader, %vec.epilog.scalar.ph226.prol
  %indvars.iv155.prol = phi i64 [ %indvars.iv.next156.prol, %vec.epilog.scalar.ph226.prol ], [ %indvars.iv155.ph, %vec.epilog.scalar.ph226.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph226.prol ], [ 0, %vec.epilog.scalar.ph226.preheader ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv155.prol
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !27
  %i.fz = load double, ptr %i.ej, align 8, !tbaa !27
  %i.ga = fmul double %i.fy, %i.fz
  %i.gb = add i64 %i.ek, %indvars.iv155.prol
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = sitofp i32 %i.gc to double
  %i.ge = fdiv double %i.ga, %i.gd
  %gep174.prol = getelementptr [8 x i8], ptr %invariant.gep173, i64 %indvars.iv155.prol
  store double %i.ge, ptr %gep174.prol, align 8, !tbaa !27
  %indvars.iv.next156.prol = add nuw nsw i64 %indvars.iv155.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter248
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph226.prol.loopexit, label %vec.epilog.scalar.ph226.prol, !llvm.loop !21

vec.epilog.scalar.ph226.prol.loopexit:            ; preds = %vec.epilog.scalar.ph226.prol, %vec.epilog.scalar.ph226.preheader
  %indvars.iv155.unr = phi i64 [ %indvars.iv155.ph, %vec.epilog.scalar.ph226.preheader ], [ %indvars.iv.next156.prol, %vec.epilog.scalar.ph226.prol ]
  %i.gf = icmp ult i64 %i.fw, 3
  br i1 %i.gf, label %._crit_edge139, label %vec.epilog.scalar.ph226
end_hunk_0
