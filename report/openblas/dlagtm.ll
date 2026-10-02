Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlagtm?download=true
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dlagtm_:bb.a
  %scevgep.3 = getelementptr i8, ptr %i.w, i64 %i.ac
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.3, i8 0, i64 %i.v, i1 false), !tbaa !84
  %indvar.next.3 = or disjoint i64 %indvar, 4
  %i.ad = mul i64 %i.t, %indvar.next.3
  %scevgep.4 = getelementptr i8, ptr %i.w, i64 %i.ad
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.4, i8 0, i64 %i.v, i1 false), !tbaa !84
  %indvar.next.4 = or disjoint i64 %indvar, 5
  %i.ae = mul i64 %i.t, %indvar.next.4
  %scevgep.5 = getelementptr i8, ptr %i.w, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.5, i8 0, i64 %i.v, i1 false), !tbaa !84
  %indvar.next.5 = or disjoint i64 %indvar, 6
  %i.af = mul i64 %i.t, %indvar.next.5
  %scevgep.6 = getelementptr i8, ptr %i.w, i64 %i.af
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.6, i8 0, i64 %i.v, i1 false), !tbaa !84
  %indvar.next.6 = or disjoint i64 %indvar, 7
  %i.ag = mul i64 %i.t, %indvar.next.6
  %scevgep.7 = getelementptr i8, ptr %i.w, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.7, i8 0, i64 %i.v, i1 false), !tbaa !84
  %indvar.next.7 = add nuw nsw i64 %indvar, 8     ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit378.loopexit.unr-lcssa, label %.preheader, !llvm.loop !8

bb.d:                                             ; preds = %bb.b
  %i.ah = fcmp oeq double %i.l, -1.000000e+00
  br i1 %i.ah, label %bb.e, label %.loopexit378

bb.e:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %2, align 4, !tbaa !82    ; 2 uses
  %.not383 = icmp slt i32 %i.ai, 1
  %.not358381 = icmp slt i32 %i.j, 1
  %or.cond421 = or i1 %.not383, %.not358381
  br i1 %or.cond421, label %.loopexit378, label %.preheader379.preheader

.preheader379.preheader:                          ; preds = %bb.e
  %i.aj = add nuw i32 %i.j, 1
  %i.ak = sext i32 %i.g to i64
  %i.al = add nuw i32 %i.ai, 1
  %wide.trip.count434 = zext i32 %i.al to i64
  %wide.trip.count = zext i32 %i.aj to i64
  %i.am = zext nneg i32 %i.j to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %i.j, 4
  %min.iters.check585 = icmp ult i32 %i.j, 16
  %i.an = and i64 %i.am, 12
  %n.vec = and i64 %i.am, 2147483632              ; 4 uses
  %i.ao = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.am
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  %n.vec589 = and i64 %i.am, 2147483644           ; 3 uses
  %i.ap = or disjoint i64 %n.vec589, 1
  %cmp.n593 = icmp eq i64 %n.vec589, %i.am
  br label %iter.check

iter.check:                                       ; preds = %.preheader379.preheader, %._crit_edge
  %indvars.iv431 = phi i64 [ 1, %.preheader379.preheader ], [ %indvars.iv.next432, %._crit_edge ] ; 2 uses
  %i.aq = mul nsw i64 %indvars.iv431, %i.ak
  %invariant.gep = getelementptr [8 x i8], ptr %i.i, i64 %i.aq ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check585, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 40     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 72     ; 2 uses
  %i.av = getelementptr i8, ptr %i.ar, i64 104    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.as, align 8, !tbaa !84
  %wide.load586 = load <4 x double>, ptr %i.at, align 8, !tbaa !84
  %wide.load587 = load <4 x double>, ptr %i.au, align 8, !tbaa !84
  %wide.load588 = load <4 x double>, ptr %i.av, align 8, !tbaa !84
  %i.aw = fneg <4 x double> %wide.load
  %i.ax = fneg <4 x double> %wide.load586
  %i.ay = fneg <4 x double> %wide.load587
  %i.az = fneg <4 x double> %wide.load588
  store <4 x double> %i.aw, ptr %i.as, align 8, !tbaa !84
  store <4 x double> %i.ax, ptr %i.at, align 8, !tbaa !84
  store <4 x double> %i.ay, ptr %i.au, align 8, !tbaa !84
  store <4 x double> %i.az, ptr %i.av, align 8, !tbaa !84
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index590 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next592, %vec.epilog.vector.body ] ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %invariant.gep, i64 %index590
  %i.bc = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  %wide.load591 = load <4 x double>, ptr %i.bc, align 8, !tbaa !84
  %i.bd = fneg <4 x double> %wide.load591
  store <4 x double> %i.bd, ptr %i.bc, align 8, !tbaa !84
  %index.next592 = add nuw i64 %index590, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next592, %n.vec589
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n593, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.bf = load double, ptr %gep, align 8, !tbaa !84
  %i.bg = fneg double %i.bf
  store double %i.bg, ptr %gep, align 8, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 2 uses
  %exitcond435.not = icmp eq i64 %indvars.iv.next432, %wide.trip.count434
  br i1 %exitcond435.not, label %.loopexit378, label %iter.check, !llvm.loop !12

.loopexit378.loopexit.unr-lcssa:                  ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit378, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit378.loopexit.unr-lcssa, %.preheader.preheader
  %indvar.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next.7, %.loopexit378.loopexit.unr-lcssa ]
  %lcmp.mod1037 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1037)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader.epil.preheader ], [ %indvar.next.epil, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.bh = mul i64 %i.t, %indvar.epil
  %scevgep.epil = getelementptr i8, ptr %i.w, i64 %i.bh
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.v, i1 false), !tbaa !84
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit378, label %.preheader.epil, !llvm.loop !13

.loopexit378:                                     ; preds = %._crit_edge, %.loopexit378.loopexit.unr-lcssa, %.preheader.epil, %bb.e, %bb.c, %bb.d
  %i.bi = load double, ptr %3, align 8, !tbaa !84 ; 2 uses
  %i.bj = fcmp oeq double %i.bi, 1.000000e+00
  br i1 %i.bj, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.loopexit378
  %i.bk = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %.not365 = icmp eq i32 %i.bk, 0
  %i.bl = load i32, ptr %2, align 4, !tbaa !82    ; 11 uses
  %.not366417 = icmp slt i32 %i.bl, 1             ; 2 uses
  br i1 %.not365, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not366417, label %.loopexit371, label %.lr.ph412

.lr.ph412:                                        ; preds = %bb.g
  %i.bm = load i32, ptr %1, align 4, !tbaa !82    ; 5 uses
  %i.bn = icmp eq i32 %i.bm, 1
  %i.bo = add nsw i32 %i.bm, -1
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = sext i32 %i.bm to i64                   ; 3 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.br
  %.not369.not405 = icmp sgt i32 %i.bm, 2
  %i.bt = add nuw i32 %i.bl, 1
  %wide.trip.count484 = zext i32 %i.bt to i64     ; 5 uses
  br i1 %i.bn, label %iter.check891, label %.lr.ph412.split.preheader

.lr.ph412.split.preheader:                        ; preds = %.lr.ph412
  %i.bu = sext i32 %i.g to i64                    ; 3 uses
  %i.bv = sext i32 %i.d to i64                    ; 3 uses
  %invariant.gep557 = getelementptr [8 x i8], ptr %i.i, i64 %i.br
  %invariant.gep559 = getelementptr [8 x i8], ptr %i.f, i64 %i.bp
  %invariant.gep561 = getelementptr [8 x i8], ptr %i.f, i64 %i.br
  %wide.trip.count474 = zext i32 %i.bm to i64     ; 5 uses
  %i.bw = shl nsw i64 %i.bu, 3
  %i.bx = shl nsw i64 %i.h, 3                     ; 2 uses
  %i.by = getelementptr i8, ptr %10, i64 %i.bw
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bx
  %i.ca = shl nuw nsw i64 %wide.trip.count484, 3
  %i.cb = add nsw i64 %i.ca, -8                   ; 2 uses
  %i.cc = mul i64 %i.cb, %i.bu
  %i.cd = shl nuw nsw i64 %wide.trip.count474, 3  ; 4 uses
  %i.ce = getelementptr i8, ptr %10, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.bx
  %scevgep801 = getelementptr i8, ptr %i.cf, i64 %i.cd
  %i.cg = getelementptr i8, ptr %4, i64 %i.cd
  %i.ch = shl nsw i64 %i.bv, 3
  %i.ci = shl nsw i64 %i.e, 3                     ; 2 uses
  %i.cj = getelementptr i8, ptr %7, i64 %i.ch
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ci
  %scevgep803 = getelementptr i8, ptr %i.ck, i64 8
  %i.cl = mul i64 %i.cb, %i.bv
  %i.cm = getelementptr i8, ptr %7, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.ci
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cd
  %i.cp = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.cq = insertelement <2 x ptr> %i.cp, ptr %i.co, i64 1
  %i.cr = getelementptr i8, <2 x ptr> %i.cq, <2 x i64> <i64 -16, i64 8>
  %12 = insertelement <2 x ptr> poison, ptr %i.bz, i64 0
  %i.cs = insertelement <2 x ptr> %12, ptr %5, i64 1
  %i.ct = getelementptr i8, <2 x ptr> %i.cs, <2 x i64> <i64 16, i64 8> ; 2 uses
  %i.cu = shufflevector <2 x ptr> %i.ct, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.cv = add nsw i64 %i.cd, -8                   ; 2 uses
  %scevgep806 = getelementptr i8, ptr %5, i64 %i.cv
  %scevgep807 = getelementptr i8, ptr %6, i64 8
  %scevgep808 = getelementptr i8, ptr %6, i64 %i.cv
  %13 = insertelement <4 x ptr> poison, ptr %4, i64 0
  %14 = insertelement <4 x ptr> %13, ptr %scevgep803, i64 1
  %15 = insertelement <4 x ptr> %14, ptr %scevgep807, i64 3
  %16 = shufflevector <2 x ptr> %i.ct, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <4 x ptr> %15, <4 x ptr> %16, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.cw = shufflevector <2 x ptr> %i.cr, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = add nsw i64 %wide.trip.count474, -2     ; 3 uses
  %min.iters.check830 = icmp ult i64 %i.cx, 12
  %i.cy = insertelement <4 x ptr> %i.cw, ptr %scevgep801, i64 2 ; 2 uses
  %i.cz = insertelement <4 x ptr> %i.cy, ptr %scevgep808, i64 3
  %i.da = icmp ult <4 x ptr> %i.cu, %i.cz
  %i.db = shufflevector <4 x ptr> %i.cy, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.dc = insertelement <2 x ptr> %i.db, ptr %scevgep806, i64 1
  %i.dd = shufflevector <2 x ptr> %i.dc, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.de = icmp ult <4 x ptr> %17, %i.dd
  %i.df = or i32 %i.d, %i.g
  %i.dg = and <4 x i1> %i.da, %i.de
  %i.dh = bitcast <4 x i1> %i.dg to i4
  %i.di = icmp ne i4 %i.dh, 0
  %i.dj = icmp slt i32 %i.df, 0
  %op.rdx1017 = or i1 %i.di, %i.dj
  %n.vec832 = and i64 %i.cx, -4                   ; 3 uses
  %i.dk = or disjoint i64 %n.vec832, 2
  %cmp.n844 = icmp eq i64 %i.cx, %n.vec832
  %i.dl = add nsw i64 %wide.trip.count474, -1
  br label %.lr.ph412.split

iter.check891:                                    ; preds = %.lr.ph412
  %i.dm = sext i32 %i.d to i64                    ; 5 uses
  %i.dn = sext i32 %i.g to i64                    ; 5 uses
  %i.do = zext nneg i32 %i.bl to i64              ; 5 uses
  %min.iters.check861 = icmp ult i32 %i.bl, 4
  br i1 %min.iters.check861, label %.lr.ph412.split.us.preheader, label %vector.scevcheck846

vector.scevcheck846:                              ; preds = %iter.check891
  %ident.check847 = icmp ne i32 %i.g, 1
  %ident.check848 = icmp ne i32 %i.d, 1
  %i.dp = or i1 %ident.check847, %ident.check848
  br i1 %i.dp, label %.lr.ph412.split.us.preheader, label %vector.memcheck862

vector.memcheck862:                               ; preds = %vector.scevcheck846
  %i.dq = shl nuw nsw i64 %wide.trip.count484, 3
  %i.dr = add nsw i64 %i.dq, -8                   ; 2 uses
  %i.ds = getelementptr i8, ptr %10, i64 %i.dr    ; 2 uses
  %i.dt = getelementptr i8, ptr %5, i64 8
  %i.du = getelementptr i8, ptr %7, i64 %i.dr
  %bound0863 = icmp ult ptr %10, %i.dt
  %bound1864 = icmp ult ptr %5, %i.ds
  %found.conflict865 = and i1 %bound0863, %bound1864
  %bound0866 = icmp ult ptr %10, %i.du
  %bound1867 = icmp ult ptr %7, %i.ds
  %found.conflict868 = and i1 %bound0866, %bound1867
  %conflict.rdx869 = or i1 %found.conflict865, %found.conflict868
  br i1 %conflict.rdx869, label %.lr.ph412.split.us.preheader, label %vector.main.loop.iter.check870

vector.main.loop.iter.check870:                   ; preds = %vector.memcheck862
  %min.iters.check871 = icmp ult i32 %i.bl, 16
  br i1 %min.iters.check871, label %vec.epilog.ph895, label %vector.ph872

vector.ph872:                                     ; preds = %vector.main.loop.iter.check870
  %i.dv = and i64 %i.do, 12
  %n.vec873 = and i64 %i.do, 2147483632           ; 4 uses
  %i.dw = or disjoint i64 %n.vec873, 1
  %i.dx = load double, ptr %5, align 8, !tbaa !84, !alias.scope !90
  %broadcast.splatinsert884 = insertelement <4 x double> poison, double %i.dx, i64 0
  %broadcast.splat885 = shufflevector <4 x double> %broadcast.splatinsert884, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body874

vector.body874:                                   ; preds = %vector.ph872, %vector.body874
  %index875 = phi i64 [ 0, %vector.ph872 ], [ %index.next886, %vector.body874 ] ; 2 uses
  %i.dy = or disjoint i64 %index875, 1            ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %i.f, i64 %i.dy ; 4 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = getelementptr i8, ptr %i.dz, i64 40
  %i.ec = getelementptr i8, ptr %i.dz, i64 72
  %i.ed = getelementptr i8, ptr %i.dz, i64 104
  %wide.load876 = load <4 x double>, ptr %i.ea, align 8, !tbaa !84, !alias.scope !91
  %wide.load877 = load <4 x double>, ptr %i.eb, align 8, !tbaa !84, !alias.scope !91
  %wide.load878 = load <4 x double>, ptr %i.ec, align 8, !tbaa !84, !alias.scope !91
  %wide.load879 = load <4 x double>, ptr %i.ed, align 8, !tbaa !84, !alias.scope !91
  %i.ee = getelementptr [8 x i8], ptr %i.i, i64 %i.dy ; 4 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8      ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ee, i64 40     ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ee, i64 72     ; 2 uses
  %i.ei = getelementptr i8, ptr %i.ee, i64 104    ; 2 uses
  %wide.load880 = load <4 x double>, ptr %i.ef, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %wide.load881 = load <4 x double>, ptr %i.eg, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %wide.load882 = load <4 x double>, ptr %i.eh, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %wide.load883 = load <4 x double>, ptr %i.ei, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %i.ej = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat885, <4 x double> %wide.load876, <4 x double> %wide.load880)
  %i.ek = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat885, <4 x double> %wide.load877, <4 x double> %wide.load881)
  %i.el = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat885, <4 x double> %wide.load878, <4 x double> %wide.load882)
  %i.em = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat885, <4 x double> %wide.load879, <4 x double> %wide.load883)
  store <4 x double> %i.ej, ptr %i.ef, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  store <4 x double> %i.ek, ptr %i.eg, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  store <4 x double> %i.el, ptr %i.eh, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  store <4 x double> %i.em, ptr %i.ei, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %index.next886 = add nuw i64 %index875, 16      ; 2 uses
  %i.en = icmp eq i64 %index.next886, %n.vec873
  br i1 %i.en, label %middle.block887, label %vector.body874, !llvm.loop !18

middle.block887:                                  ; preds = %vector.body874
  %cmp.n888 = icmp eq i64 %n.vec873, %i.do
  br i1 %cmp.n888, label %.loopexit371, label %vec.epilog.iter.check893

vec.epilog.iter.check893:                         ; preds = %middle.block887
  %min.epilog.iters.check894 = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check894, label %.lr.ph412.split.us.preheader, label %vec.epilog.ph895, !prof !88

vec.epilog.ph895:                                 ; preds = %vector.main.loop.iter.check870, %vec.epilog.iter.check893
  %vec.epilog.resume.val889 = phi i64 [ %n.vec873, %vec.epilog.iter.check893 ], [ 0, %vector.main.loop.iter.check870 ]
  %n.vec896 = and i64 %i.do, 2147483644           ; 3 uses
  %i.eo = or disjoint i64 %n.vec896, 1
  %i.ep = load double, ptr %5, align 8, !tbaa !84, !alias.scope !90
  %broadcast.splatinsert901 = insertelement <4 x double> poison, double %i.ep, i64 0
  %broadcast.splat902 = shufflevector <4 x double> %broadcast.splatinsert901, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body897

vec.epilog.vector.body897:                        ; preds = %vec.epilog.vector.body897, %vec.epilog.ph895
  %index898 = phi i64 [ %vec.epilog.resume.val889, %vec.epilog.ph895 ], [ %index.next903, %vec.epilog.vector.body897 ] ; 2 uses
  %i.eq = or disjoint i64 %index898, 1            ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %i.f, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 8
  %wide.load899 = load <4 x double>, ptr %i.es, align 8, !tbaa !84, !alias.scope !91
  %i.et = getelementptr [8 x i8], ptr %i.i, i64 %i.eq
  %i.eu = getelementptr i8, ptr %i.et, i64 8      ; 2 uses
  %wide.load900 = load <4 x double>, ptr %i.eu, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %i.ev = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat902, <4 x double> %wide.load899, <4 x double> %wide.load900)
  store <4 x double> %i.ev, ptr %i.eu, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %index.next903 = add nuw i64 %index898, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next903, %n.vec896
  br i1 %i.ew, label %vec.epilog.middle.block904, label %vec.epilog.vector.body897, !llvm.loop !19

vec.epilog.middle.block904:                       ; preds = %vec.epilog.vector.body897
  %cmp.n905 = icmp eq i64 %n.vec896, %i.do
  br i1 %cmp.n905, label %.loopexit371, label %.lr.ph412.split.us.preheader

.lr.ph412.split.us.preheader:                     ; preds = %iter.check891, %vector.scevcheck846, %vector.memcheck862, %vec.epilog.iter.check893, %vec.epilog.middle.block904
  %indvars.iv481.ph = phi i64 [ 1, %iter.check891 ], [ 1, %vector.scevcheck846 ], [ 1, %vector.memcheck862 ], [ %i.dw, %vec.epilog.iter.check893 ], [ %i.eo, %vec.epilog.middle.block904 ] ; 4 uses
  %i.ex = sub i64 %wide.trip.count484, %indvars.iv481.ph
  %i.ey = zext nneg i32 %i.bl to i64
  %i.ez = sub i64 %i.ey, %indvars.iv481.ph
  %xtraiter1051 = and i64 %i.ex, 3                ; 2 uses
  %lcmp.mod1052.not = icmp eq i64 %xtraiter1051, 0
  br i1 %lcmp.mod1052.not, label %.lr.ph412.split.us.prol.loopexit, label %.lr.ph412.split.us.prol

.lr.ph412.split.us.prol:                          ; preds = %.lr.ph412.split.us.preheader, %.lr.ph412.split.us.prol
  %indvars.iv481.prol = phi i64 [ %indvars.iv.next482.prol, %.lr.ph412.split.us.prol ], [ %indvars.iv481.ph, %.lr.ph412.split.us.preheader ] ; 3 uses
  %prol.iter1053 = phi i64 [ %prol.iter1053.next, %.lr.ph412.split.us.prol ], [ 0, %.lr.ph412.split.us.preheader ]
  %i.fa = load double, ptr %5, align 8, !tbaa !84
  %i.fb = mul nsw i64 %indvars.iv481.prol, %i.dm
  %i.fc = getelementptr [8 x i8], ptr %i.f, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !84
  %i.ff = mul nsw i64 %indvars.iv481.prol, %i.dn
  %i.fg = getelementptr [8 x i8], ptr %i.i, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 8      ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !84
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.fe, double %i.fi)
  store double %i.fj, ptr %i.fh, align 8, !tbaa !84
  %indvars.iv.next482.prol = add nuw nsw i64 %indvars.iv481.prol, 1 ; 2 uses
  %prol.iter1053.next = add i64 %prol.iter1053, 1 ; 2 uses
  %prol.iter1053.cmp.not = icmp eq i64 %prol.iter1053.next, %xtraiter1051
  br i1 %prol.iter1053.cmp.not, label %.lr.ph412.split.us.prol.loopexit, label %.lr.ph412.split.us.prol, !llvm.loop !20

.lr.ph412.split.us.prol.loopexit:                 ; preds = %.lr.ph412.split.us.prol, %.lr.ph412.split.us.preheader
  %indvars.iv481.unr = phi i64 [ %indvars.iv481.ph, %.lr.ph412.split.us.preheader ], [ %indvars.iv.next482.prol, %.lr.ph412.split.us.prol ]
  %i.fk = icmp ult i64 %i.ez, 3
  br i1 %i.fk, label %.loopexit371, label %.lr.ph412.split.us

.lr.ph412.split.us:                               ; preds = %.lr.ph412.split.us.prol.loopexit, %.lr.ph412.split.us
  %indvars.iv481 = phi i64 [ %indvars.iv.next482.3, %.lr.ph412.split.us ], [ %indvars.iv481.unr, %.lr.ph412.split.us.prol.loopexit ] ; 6 uses
  %i.fl = load double, ptr %5, align 8, !tbaa !84
  %i.fm = mul nsw i64 %indvars.iv481, %i.dm
  %i.fn = getelementptr [8 x i8], ptr %i.f, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !84
  %i.fq = mul nsw i64 %indvars.iv481, %i.dn
  %i.fr = getelementptr [8 x i8], ptr %i.i, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 8      ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !84
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fp, double %i.ft)
  store double %i.fu, ptr %i.fs, align 8, !tbaa !84
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1 ; 2 uses
  %i.fv = load double, ptr %5, align 8, !tbaa !84
  %i.fw = mul nsw i64 %indvars.iv.next482, %i.dm
  %i.fx = getelementptr [8 x i8], ptr %i.f, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 8
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !84
  %i.ga = mul nsw i64 %indvars.iv.next482, %i.dn
  %i.gb = getelementptr [8 x i8], ptr %i.i, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 8      ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !84
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fz, double %i.gd)
  store double %i.ge, ptr %i.gc, align 8, !tbaa !84
  %indvars.iv.next482.1 = add nuw nsw i64 %indvars.iv481, 2 ; 2 uses
  %i.gf = load double, ptr %5, align 8, !tbaa !84
  %i.gg = mul nsw i64 %indvars.iv.next482.1, %i.dm
  %i.gh = getelementptr [8 x i8], ptr %i.f, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !84
  %i.gk = mul nsw i64 %indvars.iv.next482.1, %i.dn
  %i.gl = getelementptr [8 x i8], ptr %i.i, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gl, i64 8      ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !84
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.gj, double %i.gn)
  store double %i.go, ptr %i.gm, align 8, !tbaa !84
  %indvars.iv.next482.2 = add nuw nsw i64 %indvars.iv481, 3 ; 2 uses
  %i.gp = load double, ptr %5, align 8, !tbaa !84
  %i.gq = mul nsw i64 %indvars.iv.next482.2, %i.dm
  %i.gr = getelementptr [8 x i8], ptr %i.f, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !84
  %i.gu = mul nsw i64 %indvars.iv.next482.2, %i.dn
  %i.gv = getelementptr [8 x i8], ptr %i.i, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 8      ; 2 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !84
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gp, double %i.gt, double %i.gx)
  store double %i.gy, ptr %i.gw, align 8, !tbaa !84
  %indvars.iv.next482.3 = add nuw nsw i64 %indvars.iv481, 4 ; 2 uses
  %exitcond485.not.3 = icmp eq i64 %indvars.iv.next482.3, %wide.trip.count484
  br i1 %exitcond485.not.3, label %.loopexit371, label %.lr.ph412.split.us, !llvm.loop !21

.lr.ph412.split:                                  ; preds = %.lr.ph412.split.preheader, %.loopexit372
  %indvars.iv476 = phi i64 [ 1, %.lr.ph412.split.preheader ], [ %indvars.iv.next477, %.loopexit372 ] ; 3 uses
  %i.gz = mul nsw i64 %indvars.iv476, %i.bu       ; 3 uses
  %i.ha = getelementptr [8 x i8], ptr %i.i, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 8      ; 2 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !84
  %i.hd = load double, ptr %5, align 8, !tbaa !84
  %i.he = mul nsw i64 %indvars.iv476, %i.bv       ; 6 uses
  %i.hf = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 8
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !84
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.hh, double %i.hc)
  %i.hj = load double, ptr %6, align 8, !tbaa !84
  %i.hk = getelementptr i8, ptr %i.hf, i64 16
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !84
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.hl, double %i.hi)
  store double %i.hm, ptr %i.hb, align 8, !tbaa !84
  %gep558 = getelementptr [8 x i8], ptr %invariant.gep557, i64 %i.gz ; 2 uses
  %i.hn = load double, ptr %gep558, align 8, !tbaa !84
  %i.ho = load double, ptr %i.bq, align 8, !tbaa !84
  %gep560 = getelementptr [8 x i8], ptr %invariant.gep559, i64 %i.he
  %i.hp = load double, ptr %gep560, align 8, !tbaa !84
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.hp, double %i.hn)
  %i.hr = load double, ptr %i.bs, align 8, !tbaa !84
  %gep562 = getelementptr [8 x i8], ptr %invariant.gep561, i64 %i.he
  %i.hs = load double, ptr %gep562, align 8, !tbaa !84
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.hr, double %i.hs, double %i.hq)
  store double %i.ht, ptr %gep558, align 8, !tbaa !84
  br i1 %.not369.not405, label %.lr.ph408.preheader, label %.loopexit372

.lr.ph408.preheader:                              ; preds = %.lr.ph412.split
  %invariant.gep549 = getelementptr [8 x i8], ptr %i.i, i64 %i.gz ; 4 uses
  %invariant.gep551 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 4 uses
  %invariant.gep553 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 4 uses
  %invariant.gep555 = getelementptr [8 x i8], ptr %i.f, i64 %i.he ; 4 uses
  %brmerge = select i1 %min.iters.check830, i1 true, i1 %op.rdx1017
  br i1 %brmerge, label %.lr.ph408.preheader1028, label %vector.body833

vector.body833:                                   ; preds = %.lr.ph408.preheader, %vector.body833
  %index834 = phi i64 [ %index.next842, %vector.body833 ], [ 0, %.lr.ph408.preheader ] ; 5 uses
  %i.hu = or disjoint i64 %index834, 2            ; 4 uses
  %i.hv = getelementptr [8 x i8], ptr %invariant.gep549, i64 %i.hu ; 2 uses
  %wide.load835 = load <4 x double>, ptr %i.hv, align 8, !tbaa !84, !alias.scope !94, !noalias !95
  %i.hw = getelementptr [8 x i8], ptr %4, i64 %index834
  %wide.load836 = load <4 x double>, ptr %i.hw, align 8, !tbaa !84, !alias.scope !96
  %i.hx = getelementptr [8 x i8], ptr %invariant.gep551, i64 %index834
  %i.hy = getelementptr i8, ptr %i.hx, i64 8
  %wide.load837 = load <4 x double>, ptr %i.hy, align 8, !tbaa !84, !alias.scope !97
  %i.hz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load836, <4 x double> %wide.load837, <4 x double> %wide.load835)
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hu
  %wide.load838 = load <4 x double>, ptr %i.ia, align 8, !tbaa !84, !alias.scope !98
  %i.ib = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.hu
  %wide.load839 = load <4 x double>, ptr %i.ib, align 8, !tbaa !84, !alias.scope !97
  %i.ic = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load838, <4 x double> %wide.load839, <4 x double> %i.hz)
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hu
  %wide.load840 = load <4 x double>, ptr %i.id, align 8, !tbaa !84, !alias.scope !99
  %i.ie = getelementptr [8 x i8], ptr %invariant.gep555, i64 %index834
  %i.if = getelementptr i8, ptr %i.ie, i64 24
  %wide.load841 = load <4 x double>, ptr %i.if, align 8, !tbaa !84, !alias.scope !97
  %i.ig = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load840, <4 x double> %wide.load841, <4 x double> %i.ic)
  store <4 x double> %i.ig, ptr %i.hv, align 8, !tbaa !84, !alias.scope !94, !noalias !95
  %index.next842 = add nuw i64 %index834, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next842, %n.vec832
  br i1 %i.ih, label %middle.block843, label %vector.body833, !llvm.loop !28

middle.block843:                                  ; preds = %vector.body833
  br i1 %cmp.n844, label %.loopexit372, label %.lr.ph408.preheader1028

.lr.ph408.preheader1028:                          ; preds = %.lr.ph408.preheader, %middle.block843
  %indvars.iv471.ph = phi i64 [ %i.dk, %middle.block843 ], [ 2, %.lr.ph408.preheader ] ; 9 uses
  %i.ii = sub nsw i64 %wide.trip.count474, %indvars.iv471.ph
  %xtraiter1048 = and i64 %i.ii, 1
  %lcmp.mod1049.not = icmp eq i64 %xtraiter1048, 0
  br i1 %lcmp.mod1049.not, label %.lr.ph408.prol.loopexit, label %.lr.ph408.prol

.lr.ph408.prol:                                   ; preds = %.lr.ph408.preheader1028
  %gep550.prol = getelementptr [8 x i8], ptr %invariant.gep549, i64 %indvars.iv471.ph ; 2 uses
  %i.ij = load double, ptr %gep550.prol, align 8, !tbaa !84
  %i.ik = add nsw i64 %indvars.iv471.ph, -1       ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ik
  %i.im = load double, ptr %i.il, align 8, !tbaa !84
  %gep552.prol = getelementptr [8 x i8], ptr %invariant.gep551, i64 %i.ik
  %i.in = load double, ptr %gep552.prol, align 8, !tbaa !84
  %i.io = tail call double @llvm.fmuladd.f64(double %i.im, double %i.in, double %i.ij)
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv471.ph
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !84
  %gep554.prol = getelementptr [8 x i8], ptr %invariant.gep553, i64 %indvars.iv471.ph
  %i.ir = load double, ptr %gep554.prol, align 8, !tbaa !84
  %i.is = tail call double @llvm.fmuladd.f64(double %i.iq, double %i.ir, double %i.io)
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv471.ph
  %i.iu = load double, ptr %i.it, align 8, !tbaa !84
  %indvars.iv.next472.prol = add nuw nsw i64 %indvars.iv471.ph, 1 ; 2 uses
  %gep556.prol = getelementptr [8 x i8], ptr %invariant.gep555, i64 %indvars.iv.next472.prol
  %i.iv = load double, ptr %gep556.prol, align 8, !tbaa !84
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.iv, double %i.is)
  store double %i.iw, ptr %gep550.prol, align 8, !tbaa !84
  br label %.lr.ph408.prol.loopexit

.lr.ph408.prol.loopexit:                          ; preds = %.lr.ph408.prol, %.lr.ph408.preheader1028
  %indvars.iv471.unr = phi i64 [ %indvars.iv471.ph, %.lr.ph408.preheader1028 ], [ %indvars.iv.next472.prol, %.lr.ph408.prol ]
  %i.ix = icmp eq i64 %indvars.iv471.ph, %i.dl
  br i1 %i.ix, label %.loopexit372, label %.lr.ph408

.lr.ph408:                                        ; preds = %.lr.ph408.prol.loopexit, %.lr.ph408
  %indvars.iv471 = phi i64 [ %indvars.iv.next472.1, %.lr.ph408 ], [ %indvars.iv471.unr, %.lr.ph408.prol.loopexit ] ; 11 uses
  %gep550 = getelementptr [8 x i8], ptr %invariant.gep549, i64 %indvars.iv471 ; 2 uses
  %i.iy = load double, ptr %gep550, align 8, !tbaa !84
  %i.iz = add nsw i64 %indvars.iv471, -1          ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.iz
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !84
  %gep552 = getelementptr [8 x i8], ptr %invariant.gep551, i64 %i.iz
  %i.jc = load double, ptr %gep552, align 8, !tbaa !84
  %i.jd = tail call double @llvm.fmuladd.f64(double %i.jb, double %i.jc, double %i.iy)
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv471
  %i.jf = load double, ptr %i.je, align 8, !tbaa !84
  %gep554 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %indvars.iv471
  %i.jg = load double, ptr %gep554, align 8, !tbaa !84
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jf, double %i.jg, double %i.jd)
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv471
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !84
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 3 uses
  %gep556 = getelementptr [8 x i8], ptr %invariant.gep555, i64 %indvars.iv.next472
  %i.jk = load double, ptr %gep556, align 8, !tbaa !84
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.jk, double %i.jh)
  store double %i.jl, ptr %gep550, align 8, !tbaa !84
  %gep550.1 = getelementptr [8 x i8], ptr %invariant.gep549, i64 %indvars.iv.next472 ; 2 uses
  %i.jm = load double, ptr %gep550.1, align 8, !tbaa !84
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv471
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !84
  %gep552.1 = getelementptr [8 x i8], ptr %invariant.gep551, i64 %indvars.iv471
  %i.jp = load double, ptr %gep552.1, align 8, !tbaa !84
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.jo, double %i.jp, double %i.jm)
  %i.jr = getelementptr [8 x i8], ptr %5, i64 %indvars.iv471
  %i.js = load double, ptr %i.jr, align 8, !tbaa !84
  %gep554.1 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %indvars.iv.next472
  %i.jt = load double, ptr %gep554.1, align 8, !tbaa !84
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.js, double %i.jt, double %i.jq)
  %i.jv = getelementptr [8 x i8], ptr %6, i64 %indvars.iv471
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !84
  %indvars.iv.next472.1 = add nuw nsw i64 %indvars.iv471, 2 ; 3 uses
  %gep556.1 = getelementptr [8 x i8], ptr %invariant.gep555, i64 %indvars.iv.next472.1
  %i.jx = load double, ptr %gep556.1, align 8, !tbaa !84
  %i.jy = tail call double @llvm.fmuladd.f64(double %i.jw, double %i.jx, double %i.ju)
  store double %i.jy, ptr %gep550.1, align 8, !tbaa !84
  %exitcond475.not.1 = icmp eq i64 %indvars.iv.next472.1, %wide.trip.count474
  br i1 %exitcond475.not.1, label %.loopexit372, label %.lr.ph408, !llvm.loop !29

.loopexit372:                                     ; preds = %.lr.ph408.prol.loopexit, %.lr.ph408, %middle.block843, %.lr.ph412.split
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %exitcond480.not = icmp eq i64 %indvars.iv.next477, %wide.trip.count484
  br i1 %exitcond480.not, label %.loopexit371, label %.lr.ph412.split, !llvm.loop !30

bb.h:                                             ; preds = %bb.f
  br i1 %.not366417, label %.loopexit371, label %.lr.ph420

.lr.ph420:                                        ; preds = %bb.h
  %i.jz = load i32, ptr %1, align 4, !tbaa !82    ; 5 uses
  %i.ka = icmp eq i32 %i.jz, 1
  %i.kb = add nsw i32 %i.jz, -1
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.kc
  %i.ke = sext i32 %i.jz to i64                   ; 3 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ke
  %.not367.not413 = icmp sgt i32 %i.jz, 2
  %i.kg = add nuw i32 %i.bl, 1
  %wide.trip.count499 = zext i32 %i.kg to i64     ; 5 uses
  br i1 %i.ka, label %iter.check999, label %.lr.ph420.split.preheader

.lr.ph420.split.preheader:                        ; preds = %.lr.ph420
  %i.kh = sext i32 %i.g to i64                    ; 3 uses
  %i.ki = sext i32 %i.d to i64                    ; 3 uses
  %invariant.gep571 = getelementptr [8 x i8], ptr %i.i, i64 %i.ke
  %invariant.gep573 = getelementptr [8 x i8], ptr %i.f, i64 %i.kc
  %invariant.gep575 = getelementptr [8 x i8], ptr %i.f, i64 %i.ke
  %wide.trip.count489 = zext i32 %i.jz to i64     ; 5 uses
  %i.kj = shl nsw i64 %i.kh, 3
  %i.kk = shl nsw i64 %i.h, 3                     ; 2 uses
  %i.kl = getelementptr i8, ptr %10, i64 %i.kj
  %i.km = getelementptr i8, ptr %i.kl, i64 %i.kk
  %i.kn = shl nuw nsw i64 %wide.trip.count499, 3
  %i.ko = add nsw i64 %i.kn, -8                   ; 2 uses
  %i.kp = mul i64 %i.ko, %i.kh
  %i.kq = shl nuw nsw i64 %wide.trip.count489, 3  ; 4 uses
  %i.kr = getelementptr i8, ptr %10, i64 %i.kp
  %i.ks = getelementptr i8, ptr %i.kr, i64 %i.kk
  %scevgep909 = getelementptr i8, ptr %i.ks, i64 %i.kq
  %i.kt = getelementptr i8, ptr %6, i64 %i.kq
  %i.ku = shl nsw i64 %i.ki, 3
  %i.kv = shl nsw i64 %i.e, 3                     ; 2 uses
  %i.kw = getelementptr i8, ptr %7, i64 %i.ku
  %i.kx = getelementptr i8, ptr %i.kw, i64 %i.kv
  %scevgep911 = getelementptr i8, ptr %i.kx, i64 8
  %i.ky = mul i64 %i.ko, %i.ki
  %i.kz = getelementptr i8, ptr %7, i64 %i.ky
  %i.la = getelementptr i8, ptr %i.kz, i64 %i.kv
  %i.lb = getelementptr i8, ptr %i.la, i64 %i.kq
  %i.lc = insertelement <2 x ptr> poison, ptr %i.kt, i64 0
  %i.ld = insertelement <2 x ptr> %i.lc, ptr %i.lb, i64 1
  %i.le = getelementptr i8, <2 x ptr> %i.ld, <2 x i64> <i64 -16, i64 8>
  %18 = insertelement <2 x ptr> poison, ptr %i.km, i64 0
  %i.lf = insertelement <2 x ptr> %18, ptr %5, i64 1
  %i.lg = getelementptr i8, <2 x ptr> %i.lf, <2 x i64> <i64 16, i64 8> ; 2 uses
  %i.lh = shufflevector <2 x ptr> %i.lg, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.li = add nsw i64 %i.kq, -8                   ; 2 uses
  %scevgep914 = getelementptr i8, ptr %5, i64 %i.li
  %scevgep915 = getelementptr i8, ptr %4, i64 8
  %scevgep916 = getelementptr i8, ptr %4, i64 %i.li
  %19 = insertelement <4 x ptr> poison, ptr %6, i64 0
  %20 = insertelement <4 x ptr> %19, ptr %scevgep911, i64 1
  %21 = insertelement <4 x ptr> %20, ptr %scevgep915, i64 3
  %22 = shufflevector <2 x ptr> %i.lg, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <4 x ptr> %21, <4 x ptr> %22, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.lj = shufflevector <2 x ptr> %i.le, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lk = add nsw i64 %wide.trip.count489, -2     ; 3 uses
  %min.iters.check938 = icmp ult i64 %i.lk, 12
  %i.ll = insertelement <4 x ptr> %i.lj, ptr %scevgep909, i64 2 ; 2 uses
  %i.lm = insertelement <4 x ptr> %i.ll, ptr %scevgep916, i64 3
  %i.ln = icmp ult <4 x ptr> %i.lh, %i.lm
  %i.lo = shufflevector <4 x ptr> %i.ll, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.lp = insertelement <2 x ptr> %i.lo, ptr %scevgep914, i64 1
  %i.lq = shufflevector <2 x ptr> %i.lp, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.lr = icmp ult <4 x ptr> %23, %i.lq
  %i.ls = or i32 %i.d, %i.g
  %i.lt = and <4 x i1> %i.ln, %i.lr
  %i.lu = bitcast <4 x i1> %i.lt to i4
  %i.lv = icmp ne i4 %i.lu, 0
  %i.lw = icmp slt i32 %i.ls, 0
  %op.rdx1015 = or i1 %i.lv, %i.lw
  %n.vec940 = and i64 %i.lk, -4                   ; 3 uses
  %i.lx = or disjoint i64 %n.vec940, 2
  %cmp.n952 = icmp eq i64 %i.lk, %n.vec940
  %i.ly = add nsw i64 %wide.trip.count489, -1
  br label %.lr.ph420.split

iter.check999:                                    ; preds = %.lr.ph420
  %i.lz = sext i32 %i.d to i64                    ; 5 uses
  %i.ma = sext i32 %i.g to i64                    ; 5 uses
  %i.mb = zext nneg i32 %i.bl to i64              ; 5 uses
  %min.iters.check969 = icmp ult i32 %i.bl, 4
  br i1 %min.iters.check969, label %.lr.ph420.split.us.preheader, label %vector.scevcheck954

vector.scevcheck954:                              ; preds = %iter.check999
  %ident.check955 = icmp ne i32 %i.g, 1
  %ident.check956 = icmp ne i32 %i.d, 1
  %i.mc = or i1 %ident.check955, %ident.check956
  br i1 %i.mc, label %.lr.ph420.split.us.preheader, label %vector.memcheck970

vector.memcheck970:                               ; preds = %vector.scevcheck954
  %i.md = shl nuw nsw i64 %wide.trip.count499, 3
  %i.me = add nsw i64 %i.md, -8                   ; 2 uses
  %i.mf = getelementptr i8, ptr %10, i64 %i.me    ; 2 uses
  %i.mg = getelementptr i8, ptr %5, i64 8
  %i.mh = getelementptr i8, ptr %7, i64 %i.me
  %bound0971 = icmp ult ptr %10, %i.mg
  %bound1972 = icmp ult ptr %5, %i.mf
  %found.conflict973 = and i1 %bound0971, %bound1972
  %bound0974 = icmp ult ptr %10, %i.mh
  %bound1975 = icmp ult ptr %7, %i.mf
  %found.conflict976 = and i1 %bound0974, %bound1975
  %conflict.rdx977 = or i1 %found.conflict973, %found.conflict976
  br i1 %conflict.rdx977, label %.lr.ph420.split.us.preheader, label %vector.main.loop.iter.check978

vector.main.loop.iter.check978:                   ; preds = %vector.memcheck970
  %min.iters.check979 = icmp ult i32 %i.bl, 16
  br i1 %min.iters.check979, label %vec.epilog.ph1003, label %vector.ph980

vector.ph980:                                     ; preds = %vector.main.loop.iter.check978
  %i.mi = and i64 %i.mb, 12
  %n.vec981 = and i64 %i.mb, 2147483632           ; 4 uses
  %i.mj = or disjoint i64 %n.vec981, 1
  %i.mk = load double, ptr %5, align 8, !tbaa !84, !alias.scope !100
  %broadcast.splatinsert992 = insertelement <4 x double> poison, double %i.mk, i64 0
  %broadcast.splat993 = shufflevector <4 x double> %broadcast.splatinsert992, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body982

vector.body982:                                   ; preds = %vector.ph980, %vector.body982
  %index983 = phi i64 [ 0, %vector.ph980 ], [ %index.next994, %vector.body982 ] ; 2 uses
  %i.ml = or disjoint i64 %index983, 1            ; 2 uses
  %i.mm = getelementptr [8 x i8], ptr %i.f, i64 %i.ml ; 4 uses
  %i.mn = getelementptr i8, ptr %i.mm, i64 8
  %i.mo = getelementptr i8, ptr %i.mm, i64 40
  %i.mp = getelementptr i8, ptr %i.mm, i64 72
  %i.mq = getelementptr i8, ptr %i.mm, i64 104
  %wide.load984 = load <4 x double>, ptr %i.mn, align 8, !tbaa !84, !alias.scope !101
  %wide.load985 = load <4 x double>, ptr %i.mo, align 8, !tbaa !84, !alias.scope !101
  %wide.load986 = load <4 x double>, ptr %i.mp, align 8, !tbaa !84, !alias.scope !101
  %wide.load987 = load <4 x double>, ptr %i.mq, align 8, !tbaa !84, !alias.scope !101
  %i.mr = getelementptr [8 x i8], ptr %i.i, i64 %i.ml ; 4 uses
  %i.ms = getelementptr i8, ptr %i.mr, i64 8      ; 2 uses
  %i.mt = getelementptr i8, ptr %i.mr, i64 40     ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mr, i64 72     ; 2 uses
  %i.mv = getelementptr i8, ptr %i.mr, i64 104    ; 2 uses
  %wide.load988 = load <4 x double>, ptr %i.ms, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %wide.load989 = load <4 x double>, ptr %i.mt, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %wide.load990 = load <4 x double>, ptr %i.mu, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %wide.load991 = load <4 x double>, ptr %i.mv, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %i.mw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat993, <4 x double> %wide.load984, <4 x double> %wide.load988)
  %i.mx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat993, <4 x double> %wide.load985, <4 x double> %wide.load989)
  %i.my = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat993, <4 x double> %wide.load986, <4 x double> %wide.load990)
  %i.mz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat993, <4 x double> %wide.load987, <4 x double> %wide.load991)
  store <4 x double> %i.mw, ptr %i.ms, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  store <4 x double> %i.mx, ptr %i.mt, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  store <4 x double> %i.my, ptr %i.mu, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  store <4 x double> %i.mz, ptr %i.mv, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %index.next994 = add nuw i64 %index983, 16      ; 2 uses
  %i.na = icmp eq i64 %index.next994, %n.vec981
  br i1 %i.na, label %middle.block995, label %vector.body982, !llvm.loop !35

middle.block995:                                  ; preds = %vector.body982
  %cmp.n996 = icmp eq i64 %n.vec981, %i.mb
  br i1 %cmp.n996, label %.loopexit371, label %vec.epilog.iter.check1001

vec.epilog.iter.check1001:                        ; preds = %middle.block995
  %min.epilog.iters.check1002 = icmp eq i64 %i.mi, 0
  br i1 %min.epilog.iters.check1002, label %.lr.ph420.split.us.preheader, label %vec.epilog.ph1003, !prof !88

vec.epilog.ph1003:                                ; preds = %vector.main.loop.iter.check978, %vec.epilog.iter.check1001
  %vec.epilog.resume.val997 = phi i64 [ %n.vec981, %vec.epilog.iter.check1001 ], [ 0, %vector.main.loop.iter.check978 ]
  %n.vec1004 = and i64 %i.mb, 2147483644          ; 3 uses
  %i.nb = or disjoint i64 %n.vec1004, 1
  %i.nc = load double, ptr %5, align 8, !tbaa !84, !alias.scope !100
  %broadcast.splatinsert1009 = insertelement <4 x double> poison, double %i.nc, i64 0
  %broadcast.splat1010 = shufflevector <4 x double> %broadcast.splatinsert1009, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1005

vec.epilog.vector.body1005:                       ; preds = %vec.epilog.vector.body1005, %vec.epilog.ph1003
  %index1006 = phi i64 [ %vec.epilog.resume.val997, %vec.epilog.ph1003 ], [ %index.next1011, %vec.epilog.vector.body1005 ] ; 2 uses
  %i.nd = or disjoint i64 %index1006, 1           ; 2 uses
  %i.ne = getelementptr [8 x i8], ptr %i.f, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ne, i64 8
  %wide.load1007 = load <4 x double>, ptr %i.nf, align 8, !tbaa !84, !alias.scope !101
  %i.ng = getelementptr [8 x i8], ptr %i.i, i64 %i.nd
  %i.nh = getelementptr i8, ptr %i.ng, i64 8      ; 2 uses
  %wide.load1008 = load <4 x double>, ptr %i.nh, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %i.ni = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1010, <4 x double> %wide.load1007, <4 x double> %wide.load1008)
  store <4 x double> %i.ni, ptr %i.nh, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %index.next1011 = add nuw i64 %index1006, 4     ; 2 uses
  %i.nj = icmp eq i64 %index.next1011, %n.vec1004
  br i1 %i.nj, label %vec.epilog.middle.block1012, label %vec.epilog.vector.body1005, !llvm.loop !36

vec.epilog.middle.block1012:                      ; preds = %vec.epilog.vector.body1005
  %cmp.n1013 = icmp eq i64 %n.vec1004, %i.mb
  br i1 %cmp.n1013, label %.loopexit371, label %.lr.ph420.split.us.preheader

.lr.ph420.split.us.preheader:                     ; preds = %iter.check999, %vector.scevcheck954, %vector.memcheck970, %vec.epilog.iter.check1001, %vec.epilog.middle.block1012
  %indvars.iv496.ph = phi i64 [ 1, %iter.check999 ], [ 1, %vector.scevcheck954 ], [ 1, %vector.memcheck970 ], [ %i.mj, %vec.epilog.iter.check1001 ], [ %i.nb, %vec.epilog.middle.block1012 ] ; 4 uses
  %i.nk = sub i64 %wide.trip.count499, %indvars.iv496.ph
  %i.nl = zext nneg i32 %i.bl to i64
  %i.nm = sub i64 %i.nl, %indvars.iv496.ph
  %xtraiter1057 = and i64 %i.nk, 3                ; 2 uses
  %lcmp.mod1058.not = icmp eq i64 %xtraiter1057, 0
  br i1 %lcmp.mod1058.not, label %.lr.ph420.split.us.prol.loopexit, label %.lr.ph420.split.us.prol

.lr.ph420.split.us.prol:                          ; preds = %.lr.ph420.split.us.preheader, %.lr.ph420.split.us.prol
  %indvars.iv496.prol = phi i64 [ %indvars.iv.next497.prol, %.lr.ph420.split.us.prol ], [ %indvars.iv496.ph, %.lr.ph420.split.us.preheader ] ; 3 uses
  %prol.iter1059 = phi i64 [ %prol.iter1059.next, %.lr.ph420.split.us.prol ], [ 0, %.lr.ph420.split.us.preheader ]
  %i.nn = load double, ptr %5, align 8, !tbaa !84
  %i.no = mul nsw i64 %indvars.iv496.prol, %i.lz
  %i.np = getelementptr [8 x i8], ptr %i.f, i64 %i.no
  %i.nq = getelementptr i8, ptr %i.np, i64 8
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !84
  %i.ns = mul nsw i64 %indvars.iv496.prol, %i.ma
  %i.nt = getelementptr [8 x i8], ptr %i.i, i64 %i.ns
  %i.nu = getelementptr i8, ptr %i.nt, i64 8      ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !84
  %i.nw = tail call double @llvm.fmuladd.f64(double %i.nn, double %i.nr, double %i.nv)
  store double %i.nw, ptr %i.nu, align 8, !tbaa !84
  %indvars.iv.next497.prol = add nuw nsw i64 %indvars.iv496.prol, 1 ; 2 uses
  %prol.iter1059.next = add i64 %prol.iter1059, 1 ; 2 uses
  %prol.iter1059.cmp.not = icmp eq i64 %prol.iter1059.next, %xtraiter1057
  br i1 %prol.iter1059.cmp.not, label %.lr.ph420.split.us.prol.loopexit, label %.lr.ph420.split.us.prol, !llvm.loop !37

.lr.ph420.split.us.prol.loopexit:                 ; preds = %.lr.ph420.split.us.prol, %.lr.ph420.split.us.preheader
  %indvars.iv496.unr = phi i64 [ %indvars.iv496.ph, %.lr.ph420.split.us.preheader ], [ %indvars.iv.next497.prol, %.lr.ph420.split.us.prol ]
  %i.nx = icmp ult i64 %i.nm, 3
  br i1 %i.nx, label %.loopexit371, label %.lr.ph420.split.us

.lr.ph420.split.us:                               ; preds = %.lr.ph420.split.us.prol.loopexit, %.lr.ph420.split.us
  %indvars.iv496 = phi i64 [ %indvars.iv.next497.3, %.lr.ph420.split.us ], [ %indvars.iv496.unr, %.lr.ph420.split.us.prol.loopexit ] ; 6 uses
  %i.ny = load double, ptr %5, align 8, !tbaa !84
  %i.nz = mul nsw i64 %indvars.iv496, %i.lz
  %i.oa = getelementptr [8 x i8], ptr %i.f, i64 %i.nz
  %i.ob = getelementptr i8, ptr %i.oa, i64 8
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !84
  %i.od = mul nsw i64 %indvars.iv496, %i.ma
  %i.oe = getelementptr [8 x i8], ptr %i.i, i64 %i.od
  %i.of = getelementptr i8, ptr %i.oe, i64 8      ; 2 uses
  %i.og = load double, ptr %i.of, align 8, !tbaa !84
  %i.oh = tail call double @llvm.fmuladd.f64(double %i.ny, double %i.oc, double %i.og)
  store double %i.oh, ptr %i.of, align 8, !tbaa !84
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %i.oi = load double, ptr %5, align 8, !tbaa !84
  %i.oj = mul nsw i64 %indvars.iv.next497, %i.lz
  %i.ok = getelementptr [8 x i8], ptr %i.f, i64 %i.oj
  %i.ol = getelementptr i8, ptr %i.ok, i64 8
  %i.om = load double, ptr %i.ol, align 8, !tbaa !84
  %i.on = mul nsw i64 %indvars.iv.next497, %i.ma
  %i.oo = getelementptr [8 x i8], ptr %i.i, i64 %i.on
  %i.op = getelementptr i8, ptr %i.oo, i64 8      ; 2 uses
  %i.oq = load double, ptr %i.op, align 8, !tbaa !84
  %i.or = tail call double @llvm.fmuladd.f64(double %i.oi, double %i.om, double %i.oq)
  store double %i.or, ptr %i.op, align 8, !tbaa !84
  %indvars.iv.next497.1 = add nuw nsw i64 %indvars.iv496, 2 ; 2 uses
  %i.os = load double, ptr %5, align 8, !tbaa !84
  %i.ot = mul nsw i64 %indvars.iv.next497.1, %i.lz
  %i.ou = getelementptr [8 x i8], ptr %i.f, i64 %i.ot
  %i.ov = getelementptr i8, ptr %i.ou, i64 8
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !84
  %i.ox = mul nsw i64 %indvars.iv.next497.1, %i.ma
  %i.oy = getelementptr [8 x i8], ptr %i.i, i64 %i.ox
  %i.oz = getelementptr i8, ptr %i.oy, i64 8      ; 2 uses
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !84
  %i.pb = tail call double @llvm.fmuladd.f64(double %i.os, double %i.ow, double %i.pa)
  store double %i.pb, ptr %i.oz, align 8, !tbaa !84
  %indvars.iv.next497.2 = add nuw nsw i64 %indvars.iv496, 3 ; 2 uses
  %i.pc = load double, ptr %5, align 8, !tbaa !84
  %i.pd = mul nsw i64 %indvars.iv.next497.2, %i.lz
  %i.pe = getelementptr [8 x i8], ptr %i.f, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.pe, i64 8
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !84
  %i.ph = mul nsw i64 %indvars.iv.next497.2, %i.ma
  %i.pi = getelementptr [8 x i8], ptr %i.i, i64 %i.ph
end_hunk_0
begin_hunk_1_@dlagtm_:bb.a
  %i.pm = mul nsw i64 %indvars.iv491, %i.kh       ; 3 uses
  %i.pn = getelementptr [8 x i8], ptr %i.i, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 8      ; 2 uses
  %i.pp = load double, ptr %i.po, align 8, !tbaa !84
  %i.pq = load double, ptr %5, align 8, !tbaa !84
  %i.pr = mul nsw i64 %indvars.iv491, %i.ki       ; 6 uses
  %i.ps = getelementptr [8 x i8], ptr %i.f, i64 %i.pr ; 2 uses
  %i.pt = getelementptr i8, ptr %i.ps, i64 8
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !84
  %i.pv = tail call double @llvm.fmuladd.f64(double %i.pq, double %i.pu, double %i.pp)
  %i.pw = load double, ptr %4, align 8, !tbaa !84
  %i.px = getelementptr i8, ptr %i.ps, i64 16
  %i.py = load double, ptr %i.px, align 8, !tbaa !84
  %i.pz = tail call double @llvm.fmuladd.f64(double %i.pw, double %i.py, double %i.pv)
  store double %i.pz, ptr %i.po, align 8, !tbaa !84
  %gep572 = getelementptr [8 x i8], ptr %invariant.gep571, i64 %i.pm ; 2 uses
  %i.qa = load double, ptr %gep572, align 8, !tbaa !84
  %i.qb = load double, ptr %i.kd, align 8, !tbaa !84
  %gep574 = getelementptr [8 x i8], ptr %invariant.gep573, i64 %i.pr
  %i.qc = load double, ptr %gep574, align 8, !tbaa !84
  %i.qd = tail call double @llvm.fmuladd.f64(double %i.qb, double %i.qc, double %i.qa)
  %i.qe = load double, ptr %i.kf, align 8, !tbaa !84
  %gep576 = getelementptr [8 x i8], ptr %invariant.gep575, i64 %i.pr
  %i.qf = load double, ptr %gep576, align 8, !tbaa !84
  %i.qg = tail call double @llvm.fmuladd.f64(double %i.qe, double %i.qf, double %i.qd)
  store double %i.qg, ptr %gep572, align 8, !tbaa !84
  br i1 %.not367.not413, label %.lr.ph416.preheader, label %.loopexit

.lr.ph416.preheader:                              ; preds = %.lr.ph420.split
  %invariant.gep563 = getelementptr [8 x i8], ptr %i.i, i64 %i.pm ; 4 uses
  %invariant.gep565 = getelementptr [8 x i8], ptr %i.f, i64 %i.pr ; 4 uses
  %invariant.gep567 = getelementptr [8 x i8], ptr %i.f, i64 %i.pr ; 4 uses
  %invariant.gep569 = getelementptr [8 x i8], ptr %i.f, i64 %i.pr ; 4 uses
  %brmerge1060 = select i1 %min.iters.check938, i1 true, i1 %op.rdx1015
  br i1 %brmerge1060, label %.lr.ph416.preheader1025, label %vector.body941

vector.body941:                                   ; preds = %.lr.ph416.preheader, %vector.body941
  %index942 = phi i64 [ %index.next950, %vector.body941 ], [ 0, %.lr.ph416.preheader ] ; 5 uses
  %i.qh = or disjoint i64 %index942, 2            ; 4 uses
  %i.qi = getelementptr [8 x i8], ptr %invariant.gep563, i64 %i.qh ; 2 uses
  %wide.load943 = load <4 x double>, ptr %i.qi, align 8, !tbaa !84, !alias.scope !104, !noalias !105
  %i.qj = getelementptr [8 x i8], ptr %6, i64 %index942
  %wide.load944 = load <4 x double>, ptr %i.qj, align 8, !tbaa !84, !alias.scope !106
  %i.qk = getelementptr [8 x i8], ptr %invariant.gep565, i64 %index942
  %i.ql = getelementptr i8, ptr %i.qk, i64 8
  %wide.load945 = load <4 x double>, ptr %i.ql, align 8, !tbaa !84, !alias.scope !107
  %i.qm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load944, <4 x double> %wide.load945, <4 x double> %wide.load943)
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.qh
  %wide.load946 = load <4 x double>, ptr %i.qn, align 8, !tbaa !84, !alias.scope !108
  %i.qo = getelementptr [8 x i8], ptr %invariant.gep567, i64 %i.qh
  %wide.load947 = load <4 x double>, ptr %i.qo, align 8, !tbaa !84, !alias.scope !107
  %i.qp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load946, <4 x double> %wide.load947, <4 x double> %i.qm)
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.qh
  %wide.load948 = load <4 x double>, ptr %i.qq, align 8, !tbaa !84, !alias.scope !109
  %i.qr = getelementptr [8 x i8], ptr %invariant.gep569, i64 %index942
  %i.qs = getelementptr i8, ptr %i.qr, i64 24
  %wide.load949 = load <4 x double>, ptr %i.qs, align 8, !tbaa !84, !alias.scope !107
  %i.qt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load948, <4 x double> %wide.load949, <4 x double> %i.qp)
  store <4 x double> %i.qt, ptr %i.qi, align 8, !tbaa !84, !alias.scope !104, !noalias !105
  %index.next950 = add nuw i64 %index942, 4       ; 2 uses
  %i.qu = icmp eq i64 %index.next950, %n.vec940
  br i1 %i.qu, label %middle.block951, label %vector.body941, !llvm.loop !45

middle.block951:                                  ; preds = %vector.body941
  br i1 %cmp.n952, label %.loopexit, label %.lr.ph416.preheader1025

.lr.ph416.preheader1025:                          ; preds = %.lr.ph416.preheader, %middle.block951
  %indvars.iv486.ph = phi i64 [ %i.lx, %middle.block951 ], [ 2, %.lr.ph416.preheader ] ; 9 uses
  %i.qv = sub nsw i64 %wide.trip.count489, %indvars.iv486.ph
  %xtraiter1054 = and i64 %i.qv, 1
  %lcmp.mod1055.not = icmp eq i64 %xtraiter1054, 0
  br i1 %lcmp.mod1055.not, label %.lr.ph416.prol.loopexit, label %.lr.ph416.prol

.lr.ph416.prol:                                   ; preds = %.lr.ph416.preheader1025
  %gep564.prol = getelementptr [8 x i8], ptr %invariant.gep563, i64 %indvars.iv486.ph ; 2 uses
  %i.qw = load double, ptr %gep564.prol, align 8, !tbaa !84
  %i.qx = add nsw i64 %indvars.iv486.ph, -1       ; 2 uses
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.qx
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !84
  %gep566.prol = getelementptr [8 x i8], ptr %invariant.gep565, i64 %i.qx
  %i.ra = load double, ptr %gep566.prol, align 8, !tbaa !84
  %i.rb = tail call double @llvm.fmuladd.f64(double %i.qz, double %i.ra, double %i.qw)
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv486.ph
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !84
  %gep568.prol = getelementptr [8 x i8], ptr %invariant.gep567, i64 %indvars.iv486.ph
  %i.re = load double, ptr %gep568.prol, align 8, !tbaa !84
  %i.rf = tail call double @llvm.fmuladd.f64(double %i.rd, double %i.re, double %i.rb)
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv486.ph
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !84
  %indvars.iv.next487.prol = add nuw nsw i64 %indvars.iv486.ph, 1 ; 2 uses
  %gep570.prol = getelementptr [8 x i8], ptr %invariant.gep569, i64 %indvars.iv.next487.prol
  %i.ri = load double, ptr %gep570.prol, align 8, !tbaa !84
  %i.rj = tail call double @llvm.fmuladd.f64(double %i.rh, double %i.ri, double %i.rf)
  store double %i.rj, ptr %gep564.prol, align 8, !tbaa !84
  br label %.lr.ph416.prol.loopexit

.lr.ph416.prol.loopexit:                          ; preds = %.lr.ph416.prol, %.lr.ph416.preheader1025
  %indvars.iv486.unr = phi i64 [ %indvars.iv486.ph, %.lr.ph416.preheader1025 ], [ %indvars.iv.next487.prol, %.lr.ph416.prol ]
  %i.rk = icmp eq i64 %indvars.iv486.ph, %i.ly
  br i1 %i.rk, label %.loopexit, label %.lr.ph416

.lr.ph416:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416
  %indvars.iv486 = phi i64 [ %indvars.iv.next487.1, %.lr.ph416 ], [ %indvars.iv486.unr, %.lr.ph416.prol.loopexit ] ; 11 uses
  %gep564 = getelementptr [8 x i8], ptr %invariant.gep563, i64 %indvars.iv486 ; 2 uses
  %i.rl = load double, ptr %gep564, align 8, !tbaa !84
  %i.rm = add nsw i64 %indvars.iv486, -1          ; 2 uses
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.rm
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !84
  %gep566 = getelementptr [8 x i8], ptr %invariant.gep565, i64 %i.rm
  %i.rp = load double, ptr %gep566, align 8, !tbaa !84
  %i.rq = tail call double @llvm.fmuladd.f64(double %i.ro, double %i.rp, double %i.rl)
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv486
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !84
  %gep568 = getelementptr [8 x i8], ptr %invariant.gep567, i64 %indvars.iv486
  %i.rt = load double, ptr %gep568, align 8, !tbaa !84
  %i.ru = tail call double @llvm.fmuladd.f64(double %i.rs, double %i.rt, double %i.rq)
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv486
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !84
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 3 uses
  %gep570 = getelementptr [8 x i8], ptr %invariant.gep569, i64 %indvars.iv.next487
  %i.rx = load double, ptr %gep570, align 8, !tbaa !84
  %i.ry = tail call double @llvm.fmuladd.f64(double %i.rw, double %i.rx, double %i.ru)
  store double %i.ry, ptr %gep564, align 8, !tbaa !84
  %gep564.1 = getelementptr [8 x i8], ptr %invariant.gep563, i64 %indvars.iv.next487 ; 2 uses
  %i.rz = load double, ptr %gep564.1, align 8, !tbaa !84
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv486
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !84
  %gep566.1 = getelementptr [8 x i8], ptr %invariant.gep565, i64 %indvars.iv486
  %i.sc = load double, ptr %gep566.1, align 8, !tbaa !84
  %i.sd = tail call double @llvm.fmuladd.f64(double %i.sb, double %i.sc, double %i.rz)
  %i.se = getelementptr [8 x i8], ptr %5, i64 %indvars.iv486
  %i.sf = load double, ptr %i.se, align 8, !tbaa !84
  %gep568.1 = getelementptr [8 x i8], ptr %invariant.gep567, i64 %indvars.iv.next487
  %i.sg = load double, ptr %gep568.1, align 8, !tbaa !84
  %i.sh = tail call double @llvm.fmuladd.f64(double %i.sf, double %i.sg, double %i.sd)
  %i.si = getelementptr [8 x i8], ptr %4, i64 %indvars.iv486
  %i.sj = load double, ptr %i.si, align 8, !tbaa !84
  %indvars.iv.next487.1 = add nuw nsw i64 %indvars.iv486, 2 ; 3 uses
  %gep570.1 = getelementptr [8 x i8], ptr %invariant.gep569, i64 %indvars.iv.next487.1
  %i.sk = load double, ptr %gep570.1, align 8, !tbaa !84
  %i.sl = tail call double @llvm.fmuladd.f64(double %i.sj, double %i.sk, double %i.sh)
  store double %i.sl, ptr %gep564.1, align 8, !tbaa !84
  %exitcond490.not.1 = icmp eq i64 %indvars.iv.next487.1, %wide.trip.count489
  br i1 %exitcond490.not.1, label %.loopexit, label %.lr.ph416, !llvm.loop !46

.loopexit:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416, %middle.block951, %.lr.ph420.split
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond495.not = icmp eq i64 %indvars.iv.next492, %wide.trip.count499
  br i1 %exitcond495.not, label %.loopexit371, label %.lr.ph420.split, !llvm.loop !47

bb.i:                                             ; preds = %.loopexit378
  %i.sm = fcmp oeq double %i.bi, -1.000000e+00
  br i1 %i.sm, label %bb.j, label %.loopexit371

bb.j:                                             ; preds = %bb.i
  %i.sn = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %.not360 = icmp eq i32 %i.sn, 0
  %i.so = load i32, ptr %2, align 4, !tbaa !82    ; 11 uses
  %.not361401 = icmp slt i32 %i.so, 1             ; 2 uses
  br i1 %.not360, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not361401, label %.loopexit371, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.k
  %i.sp = load i32, ptr %1, align 4, !tbaa !82    ; 5 uses
  %i.sq = icmp eq i32 %i.sp, 1
  %i.sr = add nsw i32 %i.sp, -1
  %i.ss = sext i32 %i.sr to i64                   ; 2 uses
  %i.st = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ss
  %i.su = sext i32 %i.sp to i64                   ; 3 uses
  %i.sv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.su
  %.not364.not390 = icmp sgt i32 %i.sp, 2
  %i.sw = add nuw i32 %i.so, 1
  %wide.trip.count454 = zext i32 %i.sw to i64     ; 5 uses
  br i1 %i.sq, label %iter.check675, label %.lr.ph396.split.preheader

.lr.ph396.split.preheader:                        ; preds = %.lr.ph396
  %i.sx = sext i32 %i.g to i64                    ; 3 uses
  %i.sy = sext i32 %i.d to i64                    ; 3 uses
  %invariant.gep529 = getelementptr [8 x i8], ptr %i.i, i64 %i.su
  %invariant.gep531 = getelementptr [8 x i8], ptr %i.f, i64 %i.ss
  %invariant.gep533 = getelementptr [8 x i8], ptr %i.f, i64 %i.su
  %wide.trip.count444 = zext i32 %i.sp to i64     ; 5 uses
  %i.sz = shl nsw i64 %i.sx, 3
  %i.ta = shl nsw i64 %i.h, 3                     ; 2 uses
  %i.tb = getelementptr i8, ptr %10, i64 %i.sz
  %i.tc = getelementptr i8, ptr %i.tb, i64 %i.ta
  %i.td = shl nuw nsw i64 %wide.trip.count454, 3
  %i.te = add nsw i64 %i.td, -8                   ; 2 uses
  %i.tf = mul i64 %i.te, %i.sx
  %i.tg = shl nuw nsw i64 %wide.trip.count444, 3  ; 4 uses
  %i.th = getelementptr i8, ptr %10, i64 %i.tf
  %i.ti = getelementptr i8, ptr %i.th, i64 %i.ta
  %scevgep596 = getelementptr i8, ptr %i.ti, i64 %i.tg
  %i.tj = getelementptr i8, ptr %4, i64 %i.tg
  %i.tk = shl nsw i64 %i.sy, 3
  %i.tl = shl nsw i64 %i.e, 3                     ; 2 uses
  %i.tm = getelementptr i8, ptr %7, i64 %i.tk
  %i.tn = getelementptr i8, ptr %i.tm, i64 %i.tl
  %scevgep598 = getelementptr i8, ptr %i.tn, i64 8
  %i.to = mul i64 %i.te, %i.sy
  %i.tp = getelementptr i8, ptr %7, i64 %i.to
  %i.tq = getelementptr i8, ptr %i.tp, i64 %i.tl
  %i.tr = getelementptr i8, ptr %i.tq, i64 %i.tg
  %i.ts = insertelement <2 x ptr> poison, ptr %i.tj, i64 0
  %i.tt = insertelement <2 x ptr> %i.ts, ptr %i.tr, i64 1
  %i.tu = getelementptr i8, <2 x ptr> %i.tt, <2 x i64> <i64 -16, i64 8>
  %24 = insertelement <2 x ptr> poison, ptr %i.tc, i64 0
  %i.tv = insertelement <2 x ptr> %24, ptr %5, i64 1
  %i.tw = getelementptr i8, <2 x ptr> %i.tv, <2 x i64> <i64 16, i64 8> ; 2 uses
  %i.tx = shufflevector <2 x ptr> %i.tw, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ty = add nsw i64 %i.tg, -8                   ; 2 uses
  %scevgep601 = getelementptr i8, ptr %5, i64 %i.ty
  %scevgep602 = getelementptr i8, ptr %6, i64 8
  %scevgep603 = getelementptr i8, ptr %6, i64 %i.ty
  %25 = insertelement <4 x ptr> poison, ptr %4, i64 0
  %26 = insertelement <4 x ptr> %25, ptr %scevgep598, i64 1
  %27 = insertelement <4 x ptr> %26, ptr %scevgep602, i64 3
  %28 = shufflevector <2 x ptr> %i.tw, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %29 = shufflevector <4 x ptr> %27, <4 x ptr> %28, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.tz = shufflevector <2 x ptr> %i.tu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ua = add nsw i64 %wide.trip.count444, -2     ; 3 uses
  %min.iters.check619 = icmp ult i64 %i.ua, 8
  %i.ub = insertelement <4 x ptr> %i.tz, ptr %scevgep596, i64 2 ; 2 uses
  %i.uc = insertelement <4 x ptr> %i.ub, ptr %scevgep603, i64 3
  %i.ud = icmp ult <4 x ptr> %i.tx, %i.uc
  %i.ue = shufflevector <4 x ptr> %i.ub, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.uf = insertelement <2 x ptr> %i.ue, ptr %scevgep601, i64 1
  %i.ug = shufflevector <2 x ptr> %i.uf, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.uh = icmp ult <4 x ptr> %29, %i.ug
  %i.ui = or i32 %i.d, %i.g
  %i.uj = and <4 x i1> %i.ud, %i.uh
  %i.uk = bitcast <4 x i1> %i.uj to i4
  %i.ul = icmp ne i4 %i.uk, 0
  %i.um = icmp slt i32 %i.ui, 0
  %op.rdx1021 = or i1 %i.ul, %i.um
  %n.vec621 = and i64 %i.ua, -4                   ; 3 uses
  %i.un = or disjoint i64 %n.vec621, 2
  %cmp.n633 = icmp eq i64 %i.ua, %n.vec621
  %i.uo = add nsw i64 %wide.trip.count444, -1
  br label %.lr.ph396.split

iter.check675:                                    ; preds = %.lr.ph396
  %i.up = sext i32 %i.d to i64                    ; 5 uses
  %i.uq = sext i32 %i.g to i64                    ; 5 uses
  %i.ur = zext nneg i32 %i.so to i64              ; 5 uses
  %min.iters.check647 = icmp ult i32 %i.so, 4
  br i1 %min.iters.check647, label %.lr.ph396.split.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check675
  %ident.check = icmp ne i32 %i.g, 1
  %ident.check634 = icmp ne i32 %i.d, 1
  %i.us = or i1 %ident.check, %ident.check634
  br i1 %i.us, label %.lr.ph396.split.us.preheader, label %vector.memcheck648

vector.memcheck648:                               ; preds = %vector.scevcheck
  %i.ut = shl nuw nsw i64 %wide.trip.count454, 3
  %i.uu = add nsw i64 %i.ut, -8                   ; 2 uses
  %i.uv = getelementptr i8, ptr %10, i64 %i.uu    ; 2 uses
  %i.uw = getelementptr i8, ptr %5, i64 8
  %i.ux = getelementptr i8, ptr %7, i64 %i.uu
  %bound0649 = icmp ult ptr %10, %i.uw
  %bound1650 = icmp ult ptr %5, %i.uv
  %found.conflict651 = and i1 %bound0649, %bound1650
  %bound0652 = icmp ult ptr %10, %i.ux
  %bound1653 = icmp ult ptr %7, %i.uv
  %found.conflict654 = and i1 %bound0652, %bound1653
  %conflict.rdx655 = or i1 %found.conflict651, %found.conflict654
  br i1 %conflict.rdx655, label %.lr.ph396.split.us.preheader, label %vector.main.loop.iter.check656

vector.main.loop.iter.check656:                   ; preds = %vector.memcheck648
  %min.iters.check657 = icmp ult i32 %i.so, 16
  br i1 %min.iters.check657, label %vec.epilog.ph679, label %vector.ph658

vector.ph658:                                     ; preds = %vector.main.loop.iter.check656
  %i.uy = and i64 %i.ur, 12
  %n.vec659 = and i64 %i.ur, 2147483632           ; 4 uses
  %i.uz = or disjoint i64 %n.vec659, 1
  %i.va = load double, ptr %5, align 8, !tbaa !84, !alias.scope !110
  %.scalar = fneg double %i.va
  %i.vb = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.vc = shufflevector <4 x double> %i.vb, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body660

vector.body660:                                   ; preds = %vector.ph658, %vector.body660
  %index661 = phi i64 [ 0, %vector.ph658 ], [ %index.next670, %vector.body660 ] ; 2 uses
  %i.vd = or disjoint i64 %index661, 1            ; 2 uses
  %i.ve = getelementptr [8 x i8], ptr %i.f, i64 %i.vd ; 4 uses
  %i.vf = getelementptr i8, ptr %i.ve, i64 8
  %i.vg = getelementptr i8, ptr %i.ve, i64 40
  %i.vh = getelementptr i8, ptr %i.ve, i64 72
  %i.vi = getelementptr i8, ptr %i.ve, i64 104
  %wide.load662 = load <4 x double>, ptr %i.vf, align 8, !tbaa !84, !alias.scope !111
  %wide.load663 = load <4 x double>, ptr %i.vg, align 8, !tbaa !84, !alias.scope !111
  %wide.load664 = load <4 x double>, ptr %i.vh, align 8, !tbaa !84, !alias.scope !111
  %wide.load665 = load <4 x double>, ptr %i.vi, align 8, !tbaa !84, !alias.scope !111
  %i.vj = getelementptr [8 x i8], ptr %i.i, i64 %i.vd ; 4 uses
  %i.vk = getelementptr i8, ptr %i.vj, i64 8      ; 2 uses
  %i.vl = getelementptr i8, ptr %i.vj, i64 40     ; 2 uses
  %i.vm = getelementptr i8, ptr %i.vj, i64 72     ; 2 uses
  %i.vn = getelementptr i8, ptr %i.vj, i64 104    ; 2 uses
  %wide.load666 = load <4 x double>, ptr %i.vk, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %wide.load667 = load <4 x double>, ptr %i.vl, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %wide.load668 = load <4 x double>, ptr %i.vm, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %wide.load669 = load <4 x double>, ptr %i.vn, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %i.vo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vc, <4 x double> %wide.load662, <4 x double> %wide.load666)
  %i.vp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vc, <4 x double> %wide.load663, <4 x double> %wide.load667)
  %i.vq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vc, <4 x double> %wide.load664, <4 x double> %wide.load668)
  %i.vr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vc, <4 x double> %wide.load665, <4 x double> %wide.load669)
  store <4 x double> %i.vo, ptr %i.vk, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  store <4 x double> %i.vp, ptr %i.vl, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  store <4 x double> %i.vq, ptr %i.vm, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  store <4 x double> %i.vr, ptr %i.vn, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %index.next670 = add nuw i64 %index661, 16      ; 2 uses
  %i.vs = icmp eq i64 %index.next670, %n.vec659
  br i1 %i.vs, label %middle.block671, label %vector.body660, !llvm.loop !52

middle.block671:                                  ; preds = %vector.body660
  %cmp.n672 = icmp eq i64 %n.vec659, %i.ur
  br i1 %cmp.n672, label %.loopexit371, label %vec.epilog.iter.check677

vec.epilog.iter.check677:                         ; preds = %middle.block671
  %min.epilog.iters.check678 = icmp eq i64 %i.uy, 0
  br i1 %min.epilog.iters.check678, label %.lr.ph396.split.us.preheader, label %vec.epilog.ph679, !prof !88

vec.epilog.ph679:                                 ; preds = %vector.main.loop.iter.check656, %vec.epilog.iter.check677
  %vec.epilog.resume.val673 = phi i64 [ %n.vec659, %vec.epilog.iter.check677 ], [ 0, %vector.main.loop.iter.check656 ]
  %n.vec680 = and i64 %i.ur, 2147483644           ; 3 uses
  %i.vt = or disjoint i64 %n.vec680, 1
  %i.vu = load double, ptr %5, align 8, !tbaa !84, !alias.scope !110
  %.scalar1022 = fneg double %i.vu
  %i.vv = insertelement <4 x double> poison, double %.scalar1022, i64 0
  %i.vw = shufflevector <4 x double> %i.vv, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body683

vec.epilog.vector.body683:                        ; preds = %vec.epilog.vector.body683, %vec.epilog.ph679
  %index684 = phi i64 [ %vec.epilog.resume.val673, %vec.epilog.ph679 ], [ %index.next687, %vec.epilog.vector.body683 ] ; 2 uses
  %i.vx = or disjoint i64 %index684, 1            ; 2 uses
  %i.vy = getelementptr [8 x i8], ptr %i.f, i64 %i.vx
  %i.vz = getelementptr i8, ptr %i.vy, i64 8
  %wide.load685 = load <4 x double>, ptr %i.vz, align 8, !tbaa !84, !alias.scope !111
  %i.wa = getelementptr [8 x i8], ptr %i.i, i64 %i.vx
  %i.wb = getelementptr i8, ptr %i.wa, i64 8      ; 2 uses
  %wide.load686 = load <4 x double>, ptr %i.wb, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %i.wc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vw, <4 x double> %wide.load685, <4 x double> %wide.load686)
  store <4 x double> %i.wc, ptr %i.wb, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %index.next687 = add nuw i64 %index684, 4       ; 2 uses
  %i.wd = icmp eq i64 %index.next687, %n.vec680
  br i1 %i.wd, label %vec.epilog.middle.block688, label %vec.epilog.vector.body683, !llvm.loop !53

vec.epilog.middle.block688:                       ; preds = %vec.epilog.vector.body683
  %cmp.n689 = icmp eq i64 %n.vec680, %i.ur
  br i1 %cmp.n689, label %.loopexit371, label %.lr.ph396.split.us.preheader

.lr.ph396.split.us.preheader:                     ; preds = %iter.check675, %vector.scevcheck, %vector.memcheck648, %vec.epilog.iter.check677, %vec.epilog.middle.block688
  %indvars.iv451.ph = phi i64 [ 1, %iter.check675 ], [ 1, %vector.scevcheck ], [ 1, %vector.memcheck648 ], [ %i.uz, %vec.epilog.iter.check677 ], [ %i.vt, %vec.epilog.middle.block688 ] ; 4 uses
  %i.we = sub i64 %wide.trip.count454, %indvars.iv451.ph
  %i.wf = zext nneg i32 %i.so to i64
  %i.wg = sub i64 %i.wf, %indvars.iv451.ph
  %xtraiter1040 = and i64 %i.we, 3                ; 2 uses
  %lcmp.mod1041.not = icmp eq i64 %xtraiter1040, 0
  br i1 %lcmp.mod1041.not, label %.lr.ph396.split.us.prol.loopexit, label %.lr.ph396.split.us.prol

.lr.ph396.split.us.prol:                          ; preds = %.lr.ph396.split.us.preheader, %.lr.ph396.split.us.prol
  %indvars.iv451.prol = phi i64 [ %indvars.iv.next452.prol, %.lr.ph396.split.us.prol ], [ %indvars.iv451.ph, %.lr.ph396.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph396.split.us.prol ], [ 0, %.lr.ph396.split.us.preheader ]
  %i.wh = load double, ptr %5, align 8, !tbaa !84
  %i.wi = mul nsw i64 %indvars.iv451.prol, %i.up
  %i.wj = getelementptr [8 x i8], ptr %i.f, i64 %i.wi
  %i.wk = getelementptr i8, ptr %i.wj, i64 8
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !84
  %i.wm = mul nsw i64 %indvars.iv451.prol, %i.uq
  %i.wn = getelementptr [8 x i8], ptr %i.i, i64 %i.wm
  %i.wo = getelementptr i8, ptr %i.wn, i64 8      ; 2 uses
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !84
  %i.wq = fneg double %i.wh
  %i.wr = tail call double @llvm.fmuladd.f64(double %i.wq, double %i.wl, double %i.wp)
  store double %i.wr, ptr %i.wo, align 8, !tbaa !84
  %indvars.iv.next452.prol = add nuw nsw i64 %indvars.iv451.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1040
  br i1 %prol.iter.cmp.not, label %.lr.ph396.split.us.prol.loopexit, label %.lr.ph396.split.us.prol, !llvm.loop !54

.lr.ph396.split.us.prol.loopexit:                 ; preds = %.lr.ph396.split.us.prol, %.lr.ph396.split.us.preheader
  %indvars.iv451.unr = phi i64 [ %indvars.iv451.ph, %.lr.ph396.split.us.preheader ], [ %indvars.iv.next452.prol, %.lr.ph396.split.us.prol ]
  %i.ws = icmp ult i64 %i.wg, 3
  br i1 %i.ws, label %.loopexit371, label %.lr.ph396.split.us

.lr.ph396.split.us:                               ; preds = %.lr.ph396.split.us.prol.loopexit, %.lr.ph396.split.us
  %indvars.iv451 = phi i64 [ %indvars.iv.next452.3, %.lr.ph396.split.us ], [ %indvars.iv451.unr, %.lr.ph396.split.us.prol.loopexit ] ; 6 uses
  %i.wt = load double, ptr %5, align 8, !tbaa !84
  %i.wu = mul nsw i64 %indvars.iv451, %i.up
  %i.wv = getelementptr [8 x i8], ptr %i.f, i64 %i.wu
  %i.ww = getelementptr i8, ptr %i.wv, i64 8
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !84
  %i.wy = mul nsw i64 %indvars.iv451, %i.uq
  %i.wz = getelementptr [8 x i8], ptr %i.i, i64 %i.wy
  %i.xa = getelementptr i8, ptr %i.wz, i64 8      ; 2 uses
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !84
  %i.xc = fneg double %i.wt
  %i.xd = tail call double @llvm.fmuladd.f64(double %i.xc, double %i.wx, double %i.xb)
  store double %i.xd, ptr %i.xa, align 8, !tbaa !84
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %i.xe = load double, ptr %5, align 8, !tbaa !84
  %i.xf = mul nsw i64 %indvars.iv.next452, %i.up
  %i.xg = getelementptr [8 x i8], ptr %i.f, i64 %i.xf
  %i.xh = getelementptr i8, ptr %i.xg, i64 8
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !84
  %i.xj = mul nsw i64 %indvars.iv.next452, %i.uq
  %i.xk = getelementptr [8 x i8], ptr %i.i, i64 %i.xj
  %i.xl = getelementptr i8, ptr %i.xk, i64 8      ; 2 uses
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !84
  %i.xn = fneg double %i.xe
  %i.xo = tail call double @llvm.fmuladd.f64(double %i.xn, double %i.xi, double %i.xm)
  store double %i.xo, ptr %i.xl, align 8, !tbaa !84
  %indvars.iv.next452.1 = add nuw nsw i64 %indvars.iv451, 2 ; 2 uses
  %i.xp = load double, ptr %5, align 8, !tbaa !84
  %i.xq = mul nsw i64 %indvars.iv.next452.1, %i.up
  %i.xr = getelementptr [8 x i8], ptr %i.f, i64 %i.xq
  %i.xs = getelementptr i8, ptr %i.xr, i64 8
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !84
  %i.xu = mul nsw i64 %indvars.iv.next452.1, %i.uq
  %i.xv = getelementptr [8 x i8], ptr %i.i, i64 %i.xu
  %i.xw = getelementptr i8, ptr %i.xv, i64 8      ; 2 uses
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !84
  %i.xy = fneg double %i.xp
  %i.xz = tail call double @llvm.fmuladd.f64(double %i.xy, double %i.xt, double %i.xx)
  store double %i.xz, ptr %i.xw, align 8, !tbaa !84
  %indvars.iv.next452.2 = add nuw nsw i64 %indvars.iv451, 3 ; 2 uses
  %i.ya = load double, ptr %5, align 8, !tbaa !84
end_hunk_1
begin_hunk_2_@dlagtm_:bb.a
  %i.yq = mul nsw i64 %indvars.iv446, %i.sy       ; 6 uses
  %i.yr = getelementptr [8 x i8], ptr %i.f, i64 %i.yq ; 2 uses
  %i.ys = getelementptr i8, ptr %i.yr, i64 8
  %i.yt = load double, ptr %i.ys, align 8, !tbaa !84
  %i.yu = fneg double %i.yp
  %i.yv = tail call double @llvm.fmuladd.f64(double %i.yu, double %i.yt, double %i.yo)
  %i.yw = load double, ptr %6, align 8, !tbaa !84
  %i.yx = getelementptr i8, ptr %i.yr, i64 16
  %i.yy = load double, ptr %i.yx, align 8, !tbaa !84
  %i.yz = fneg double %i.yw
  %i.za = tail call double @llvm.fmuladd.f64(double %i.yz, double %i.yy, double %i.yv)
  store double %i.za, ptr %i.yn, align 8, !tbaa !84
  %gep530 = getelementptr [8 x i8], ptr %invariant.gep529, i64 %i.yl ; 2 uses
  %i.zb = load double, ptr %gep530, align 8, !tbaa !84
  %i.zc = load double, ptr %i.st, align 8, !tbaa !84
  %gep532 = getelementptr [8 x i8], ptr %invariant.gep531, i64 %i.yq
  %i.zd = load double, ptr %gep532, align 8, !tbaa !84
  %i.ze = fneg double %i.zc
  %i.zf = tail call double @llvm.fmuladd.f64(double %i.ze, double %i.zd, double %i.zb)
  %i.zg = load double, ptr %i.sv, align 8, !tbaa !84
  %gep534 = getelementptr [8 x i8], ptr %invariant.gep533, i64 %i.yq
  %i.zh = load double, ptr %gep534, align 8, !tbaa !84
  %i.zi = fneg double %i.zg
  %i.zj = tail call double @llvm.fmuladd.f64(double %i.zi, double %i.zh, double %i.zf)
  store double %i.zj, ptr %gep530, align 8, !tbaa !84
  br i1 %.not364.not390, label %.lr.ph.preheader, label %.loopexit376

.lr.ph.preheader:                                 ; preds = %.lr.ph396.split
  %invariant.gep521 = getelementptr [8 x i8], ptr %i.i, i64 %i.yl ; 4 uses
  %invariant.gep523 = getelementptr [8 x i8], ptr %i.f, i64 %i.yq ; 4 uses
  %invariant.gep525 = getelementptr [8 x i8], ptr %i.f, i64 %i.yq ; 4 uses
  %invariant.gep527 = getelementptr [8 x i8], ptr %i.f, i64 %i.yq ; 4 uses
  %brmerge1061 = select i1 %min.iters.check619, i1 true, i1 %op.rdx1021
  br i1 %brmerge1061, label %.lr.ph.preheader1034, label %vector.body622

vector.body622:                                   ; preds = %.lr.ph.preheader, %vector.body622
  %index623 = phi i64 [ %index.next631, %vector.body622 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.zk = or disjoint i64 %index623, 2            ; 4 uses
  %i.zl = getelementptr [8 x i8], ptr %invariant.gep521, i64 %i.zk ; 2 uses
  %wide.load624 = load <4 x double>, ptr %i.zl, align 8, !tbaa !84, !alias.scope !114, !noalias !115
  %i.zm = getelementptr [8 x i8], ptr %4, i64 %index623
  %wide.load625 = load <4 x double>, ptr %i.zm, align 8, !tbaa !84, !alias.scope !116
  %i.zn = getelementptr [8 x i8], ptr %invariant.gep523, i64 %index623
  %i.zo = getelementptr i8, ptr %i.zn, i64 8
  %wide.load626 = load <4 x double>, ptr %i.zo, align 8, !tbaa !84, !alias.scope !117
  %i.zp = fneg <4 x double> %wide.load625
  %i.zq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.zp, <4 x double> %wide.load626, <4 x double> %wide.load624)
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.zk
  %wide.load627 = load <4 x double>, ptr %i.zr, align 8, !tbaa !84, !alias.scope !118
  %i.zs = getelementptr [8 x i8], ptr %invariant.gep525, i64 %i.zk
  %wide.load628 = load <4 x double>, ptr %i.zs, align 8, !tbaa !84, !alias.scope !117
  %i.zt = fneg <4 x double> %wide.load627
  %i.zu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.zt, <4 x double> %wide.load628, <4 x double> %i.zq)
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.zk
  %wide.load629 = load <4 x double>, ptr %i.zv, align 8, !tbaa !84, !alias.scope !119
  %i.zw = getelementptr [8 x i8], ptr %invariant.gep527, i64 %index623
  %i.zx = getelementptr i8, ptr %i.zw, i64 24
  %wide.load630 = load <4 x double>, ptr %i.zx, align 8, !tbaa !84, !alias.scope !117
  %i.zy = fneg <4 x double> %wide.load629
  %i.zz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.zy, <4 x double> %wide.load630, <4 x double> %i.zu)
  store <4 x double> %i.zz, ptr %i.zl, align 8, !tbaa !84, !alias.scope !114, !noalias !115
  %index.next631 = add nuw i64 %index623, 4       ; 2 uses
  %i.aaa = icmp eq i64 %index.next631, %n.vec621
  br i1 %i.aaa, label %middle.block632, label %vector.body622, !llvm.loop !62

middle.block632:                                  ; preds = %vector.body622
  br i1 %cmp.n633, label %.loopexit376, label %.lr.ph.preheader1034

.lr.ph.preheader1034:                             ; preds = %.lr.ph.preheader, %middle.block632
  %indvars.iv441.ph = phi i64 [ %i.un, %middle.block632 ], [ 2, %.lr.ph.preheader ] ; 9 uses
  %i.aab = sub nsw i64 %wide.trip.count444, %indvars.iv441.ph
  %xtraiter1038 = and i64 %i.aab, 1
  %lcmp.mod1039.not = icmp eq i64 %xtraiter1038, 0
  br i1 %lcmp.mod1039.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1034
  %gep522.prol = getelementptr [8 x i8], ptr %invariant.gep521, i64 %indvars.iv441.ph ; 2 uses
  %i.aac = load double, ptr %gep522.prol, align 8, !tbaa !84
  %i.aad = add nsw i64 %indvars.iv441.ph, -1      ; 2 uses
  %i.aae = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aad
  %i.aaf = load double, ptr %i.aae, align 8, !tbaa !84
  %gep524.prol = getelementptr [8 x i8], ptr %invariant.gep523, i64 %i.aad
  %i.aag = load double, ptr %gep524.prol, align 8, !tbaa !84
  %i.aah = fneg double %i.aaf
  %i.aai = tail call double @llvm.fmuladd.f64(double %i.aah, double %i.aag, double %i.aac)
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv441.ph
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !84
  %gep526.prol = getelementptr [8 x i8], ptr %invariant.gep525, i64 %indvars.iv441.ph
  %i.aal = load double, ptr %gep526.prol, align 8, !tbaa !84
  %i.aam = fneg double %i.aak
  %i.aan = tail call double @llvm.fmuladd.f64(double %i.aam, double %i.aal, double %i.aai)
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv441.ph
  %i.aap = load double, ptr %i.aao, align 8, !tbaa !84
  %indvars.iv.next442.prol = add nuw nsw i64 %indvars.iv441.ph, 1 ; 2 uses
  %gep528.prol = getelementptr [8 x i8], ptr %invariant.gep527, i64 %indvars.iv.next442.prol
  %i.aaq = load double, ptr %gep528.prol, align 8, !tbaa !84
  %i.aar = fneg double %i.aap
  %i.aas = tail call double @llvm.fmuladd.f64(double %i.aar, double %i.aaq, double %i.aan)
  store double %i.aas, ptr %gep522.prol, align 8, !tbaa !84
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1034
  %indvars.iv441.unr = phi i64 [ %indvars.iv441.ph, %.lr.ph.preheader1034 ], [ %indvars.iv.next442.prol, %.lr.ph.prol ]
  %i.aat = icmp eq i64 %indvars.iv441.ph, %i.uo
  br i1 %i.aat, label %.loopexit376, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv441 = phi i64 [ %indvars.iv.next442.1, %.lr.ph ], [ %indvars.iv441.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %gep522 = getelementptr [8 x i8], ptr %invariant.gep521, i64 %indvars.iv441 ; 2 uses
  %i.aau = load double, ptr %gep522, align 8, !tbaa !84
  %i.aav = add nsw i64 %indvars.iv441, -1         ; 2 uses
  %i.aaw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aav
  %i.aax = load double, ptr %i.aaw, align 8, !tbaa !84
  %gep524 = getelementptr [8 x i8], ptr %invariant.gep523, i64 %i.aav
  %i.aay = load double, ptr %gep524, align 8, !tbaa !84
  %i.aaz = fneg double %i.aax
  %i.aba = tail call double @llvm.fmuladd.f64(double %i.aaz, double %i.aay, double %i.aau)
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv441
  %i.abc = load double, ptr %i.abb, align 8, !tbaa !84
  %gep526 = getelementptr [8 x i8], ptr %invariant.gep525, i64 %indvars.iv441
  %i.abd = load double, ptr %gep526, align 8, !tbaa !84
  %i.abe = fneg double %i.abc
  %i.abf = tail call double @llvm.fmuladd.f64(double %i.abe, double %i.abd, double %i.aba)
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv441
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !84
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %gep528 = getelementptr [8 x i8], ptr %invariant.gep527, i64 %indvars.iv.next442
  %i.abi = load double, ptr %gep528, align 8, !tbaa !84
  %i.abj = fneg double %i.abh
  %i.abk = tail call double @llvm.fmuladd.f64(double %i.abj, double %i.abi, double %i.abf)
  store double %i.abk, ptr %gep522, align 8, !tbaa !84
  %gep522.1 = getelementptr [8 x i8], ptr %invariant.gep521, i64 %indvars.iv.next442 ; 2 uses
  %i.abl = load double, ptr %gep522.1, align 8, !tbaa !84
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv441
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !84
  %gep524.1 = getelementptr [8 x i8], ptr %invariant.gep523, i64 %indvars.iv441
  %i.abo = load double, ptr %gep524.1, align 8, !tbaa !84
  %i.abp = fneg double %i.abn
  %i.abq = tail call double @llvm.fmuladd.f64(double %i.abp, double %i.abo, double %i.abl)
  %i.abr = getelementptr [8 x i8], ptr %5, i64 %indvars.iv441
  %i.abs = load double, ptr %i.abr, align 8, !tbaa !84
  %gep526.1 = getelementptr [8 x i8], ptr %invariant.gep525, i64 %indvars.iv.next442
  %i.abt = load double, ptr %gep526.1, align 8, !tbaa !84
  %i.abu = fneg double %i.abs
  %i.abv = tail call double @llvm.fmuladd.f64(double %i.abu, double %i.abt, double %i.abq)
  %i.abw = getelementptr [8 x i8], ptr %6, i64 %indvars.iv441
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !84
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 3 uses
  %gep528.1 = getelementptr [8 x i8], ptr %invariant.gep527, i64 %indvars.iv.next442.1
  %i.aby = load double, ptr %gep528.1, align 8, !tbaa !84
  %i.abz = fneg double %i.abx
  %i.aca = tail call double @llvm.fmuladd.f64(double %i.abz, double %i.aby, double %i.abv)
  store double %i.aca, ptr %gep522.1, align 8, !tbaa !84
  %exitcond445.not.1 = icmp eq i64 %indvars.iv.next442.1, %wide.trip.count444
  br i1 %exitcond445.not.1, label %.loopexit376, label %.lr.ph, !llvm.loop !63

.loopexit376:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block632, %.lr.ph396.split
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %exitcond450.not = icmp eq i64 %indvars.iv.next447, %wide.trip.count454
  br i1 %exitcond450.not, label %.loopexit371, label %.lr.ph396.split, !llvm.loop !64

bb.l:                                             ; preds = %bb.j
  br i1 %.not361401, label %.loopexit371, label %.lr.ph404

.lr.ph404:                                        ; preds = %bb.l
  %i.acb = load i32, ptr %1, align 4, !tbaa !82   ; 5 uses
  %i.acc = icmp eq i32 %i.acb, 1
  %i.acd = add nsw i32 %i.acb, -1
  %i.ace = sext i32 %i.acd to i64                 ; 2 uses
  %i.acf = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ace
  %i.acg = sext i32 %i.acb to i64                 ; 3 uses
  %i.ach = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.acg
  %.not362.not397 = icmp sgt i32 %i.acb, 2
  %i.aci = add nuw i32 %i.so, 1
  %wide.trip.count469 = zext i32 %i.aci to i64    ; 5 uses
  br i1 %i.acc, label %iter.check783, label %.lr.ph404.split.preheader

.lr.ph404.split.preheader:                        ; preds = %.lr.ph404
  %i.acj = sext i32 %i.g to i64                   ; 3 uses
  %i.ack = sext i32 %i.d to i64                   ; 3 uses
  %invariant.gep543 = getelementptr [8 x i8], ptr %i.i, i64 %i.acg
  %invariant.gep545 = getelementptr [8 x i8], ptr %i.f, i64 %i.ace
  %invariant.gep547 = getelementptr [8 x i8], ptr %i.f, i64 %i.acg
  %wide.trip.count459 = zext i32 %i.acb to i64    ; 5 uses
  %i.acl = shl nsw i64 %i.acj, 3
  %i.acm = shl nsw i64 %i.h, 3                    ; 2 uses
  %i.acn = getelementptr i8, ptr %10, i64 %i.acl
  %i.aco = getelementptr i8, ptr %i.acn, i64 %i.acm
  %i.acp = shl nuw nsw i64 %wide.trip.count469, 3
  %i.acq = add nsw i64 %i.acp, -8                 ; 2 uses
  %i.acr = mul i64 %i.acq, %i.acj
  %i.acs = shl nuw nsw i64 %wide.trip.count459, 3 ; 4 uses
  %i.act = getelementptr i8, ptr %10, i64 %i.acr
  %i.acu = getelementptr i8, ptr %i.act, i64 %i.acm
  %scevgep693 = getelementptr i8, ptr %i.acu, i64 %i.acs
  %i.acv = getelementptr i8, ptr %6, i64 %i.acs
  %i.acw = shl nsw i64 %i.ack, 3
  %i.acx = shl nsw i64 %i.e, 3                    ; 2 uses
  %i.acy = getelementptr i8, ptr %7, i64 %i.acw
  %i.acz = getelementptr i8, ptr %i.acy, i64 %i.acx
  %scevgep695 = getelementptr i8, ptr %i.acz, i64 8
  %i.ada = mul i64 %i.acq, %i.ack
  %i.adb = getelementptr i8, ptr %7, i64 %i.ada
  %i.adc = getelementptr i8, ptr %i.adb, i64 %i.acx
  %i.add = getelementptr i8, ptr %i.adc, i64 %i.acs
  %i.ade = insertelement <2 x ptr> poison, ptr %i.acv, i64 0
  %i.adf = insertelement <2 x ptr> %i.ade, ptr %i.add, i64 1
  %i.adg = getelementptr i8, <2 x ptr> %i.adf, <2 x i64> <i64 -16, i64 8>
  %30 = insertelement <2 x ptr> poison, ptr %i.aco, i64 0
  %i.adh = insertelement <2 x ptr> %30, ptr %5, i64 1
  %i.adi = getelementptr i8, <2 x ptr> %i.adh, <2 x i64> <i64 16, i64 8> ; 2 uses
  %i.adj = shufflevector <2 x ptr> %i.adi, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.adk = add nsw i64 %i.acs, -8                 ; 2 uses
  %scevgep698 = getelementptr i8, ptr %5, i64 %i.adk
  %scevgep699 = getelementptr i8, ptr %4, i64 8
  %scevgep700 = getelementptr i8, ptr %4, i64 %i.adk
  %31 = insertelement <4 x ptr> poison, ptr %6, i64 0
  %32 = insertelement <4 x ptr> %31, ptr %scevgep695, i64 1
  %33 = insertelement <4 x ptr> %32, ptr %scevgep699, i64 3
  %34 = shufflevector <2 x ptr> %i.adi, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %35 = shufflevector <4 x ptr> %33, <4 x ptr> %34, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.adl = shufflevector <2 x ptr> %i.adg, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.adm = add nsw i64 %wide.trip.count459, -2    ; 3 uses
  %min.iters.check722 = icmp ult i64 %i.adm, 8
  %i.adn = insertelement <4 x ptr> %i.adl, ptr %scevgep693, i64 2 ; 2 uses
  %i.ado = insertelement <4 x ptr> %i.adn, ptr %scevgep700, i64 3
  %i.adp = icmp ult <4 x ptr> %i.adj, %i.ado
  %i.adq = shufflevector <4 x ptr> %i.adn, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.adr = insertelement <2 x ptr> %i.adq, ptr %scevgep698, i64 1
  %i.ads = shufflevector <2 x ptr> %i.adr, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.adt = icmp ult <4 x ptr> %35, %i.ads
  %i.adu = or i32 %i.d, %i.g
  %i.adv = and <4 x i1> %i.adp, %i.adt
  %i.adw = bitcast <4 x i1> %i.adv to i4
  %i.adx = icmp ne i4 %i.adw, 0
  %i.ady = icmp slt i32 %i.adu, 0
  %op.rdx1019 = or i1 %i.adx, %i.ady
  %n.vec724 = and i64 %i.adm, -4                  ; 3 uses
  %i.adz = or disjoint i64 %n.vec724, 2
  %cmp.n736 = icmp eq i64 %i.adm, %n.vec724
  %i.aea = add nsw i64 %wide.trip.count459, -1
  br label %.lr.ph404.split

iter.check783:                                    ; preds = %.lr.ph404
  %i.aeb = sext i32 %i.d to i64                   ; 5 uses
  %i.aec = sext i32 %i.g to i64                   ; 5 uses
  %i.aed = zext nneg i32 %i.so to i64             ; 5 uses
  %min.iters.check753 = icmp ult i32 %i.so, 4
  br i1 %min.iters.check753, label %.lr.ph404.split.us.preheader, label %vector.scevcheck738

vector.scevcheck738:                              ; preds = %iter.check783
  %ident.check739 = icmp ne i32 %i.g, 1
  %ident.check740 = icmp ne i32 %i.d, 1
  %i.aee = or i1 %ident.check739, %ident.check740
  br i1 %i.aee, label %.lr.ph404.split.us.preheader, label %vector.memcheck754

vector.memcheck754:                               ; preds = %vector.scevcheck738
  %i.aef = shl nuw nsw i64 %wide.trip.count469, 3
  %i.aeg = add nsw i64 %i.aef, -8                 ; 2 uses
  %i.aeh = getelementptr i8, ptr %10, i64 %i.aeg  ; 2 uses
  %i.aei = getelementptr i8, ptr %5, i64 8
  %i.aej = getelementptr i8, ptr %7, i64 %i.aeg
  %bound0755 = icmp ult ptr %10, %i.aei
  %bound1756 = icmp ult ptr %5, %i.aeh
  %found.conflict757 = and i1 %bound0755, %bound1756
  %bound0758 = icmp ult ptr %10, %i.aej
  %bound1759 = icmp ult ptr %7, %i.aeh
  %found.conflict760 = and i1 %bound0758, %bound1759
  %conflict.rdx761 = or i1 %found.conflict757, %found.conflict760
  br i1 %conflict.rdx761, label %.lr.ph404.split.us.preheader, label %vector.main.loop.iter.check762

vector.main.loop.iter.check762:                   ; preds = %vector.memcheck754
  %min.iters.check763 = icmp ult i32 %i.so, 16
  br i1 %min.iters.check763, label %vec.epilog.ph787, label %vector.ph764

vector.ph764:                                     ; preds = %vector.main.loop.iter.check762
  %i.aek = and i64 %i.aed, 12
  %n.vec765 = and i64 %i.aed, 2147483632          ; 4 uses
  %i.ael = or disjoint i64 %n.vec765, 1
  %i.aem = load double, ptr %5, align 8, !tbaa !84, !alias.scope !120
  %.scalar1023 = fneg double %i.aem
  %i.aen = insertelement <4 x double> poison, double %.scalar1023, i64 0
  %i.aeo = shufflevector <4 x double> %i.aen, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body768

vector.body768:                                   ; preds = %vector.ph764, %vector.body768
  %index769 = phi i64 [ 0, %vector.ph764 ], [ %index.next778, %vector.body768 ] ; 2 uses
  %i.aep = or disjoint i64 %index769, 1           ; 2 uses
  %i.aeq = getelementptr [8 x i8], ptr %i.f, i64 %i.aep ; 4 uses
  %i.aer = getelementptr i8, ptr %i.aeq, i64 8
  %i.aes = getelementptr i8, ptr %i.aeq, i64 40
  %i.aet = getelementptr i8, ptr %i.aeq, i64 72
  %i.aeu = getelementptr i8, ptr %i.aeq, i64 104
  %wide.load770 = load <4 x double>, ptr %i.aer, align 8, !tbaa !84, !alias.scope !121
  %wide.load771 = load <4 x double>, ptr %i.aes, align 8, !tbaa !84, !alias.scope !121
  %wide.load772 = load <4 x double>, ptr %i.aet, align 8, !tbaa !84, !alias.scope !121
  %wide.load773 = load <4 x double>, ptr %i.aeu, align 8, !tbaa !84, !alias.scope !121
  %i.aev = getelementptr [8 x i8], ptr %i.i, i64 %i.aep ; 4 uses
  %i.aew = getelementptr i8, ptr %i.aev, i64 8    ; 2 uses
  %i.aex = getelementptr i8, ptr %i.aev, i64 40   ; 2 uses
  %i.aey = getelementptr i8, ptr %i.aev, i64 72   ; 2 uses
  %i.aez = getelementptr i8, ptr %i.aev, i64 104  ; 2 uses
  %wide.load774 = load <4 x double>, ptr %i.aew, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %wide.load775 = load <4 x double>, ptr %i.aex, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %wide.load776 = load <4 x double>, ptr %i.aey, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %wide.load777 = load <4 x double>, ptr %i.aez, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %i.afa = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aeo, <4 x double> %wide.load770, <4 x double> %wide.load774)
  %i.afb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aeo, <4 x double> %wide.load771, <4 x double> %wide.load775)
  %i.afc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aeo, <4 x double> %wide.load772, <4 x double> %wide.load776)
  %i.afd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aeo, <4 x double> %wide.load773, <4 x double> %wide.load777)
  store <4 x double> %i.afa, ptr %i.aew, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  store <4 x double> %i.afb, ptr %i.aex, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  store <4 x double> %i.afc, ptr %i.aey, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  store <4 x double> %i.afd, ptr %i.aez, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %index.next778 = add nuw i64 %index769, 16      ; 2 uses
  %i.afe = icmp eq i64 %index.next778, %n.vec765
  br i1 %i.afe, label %middle.block779, label %vector.body768, !llvm.loop !69

middle.block779:                                  ; preds = %vector.body768
  %cmp.n780 = icmp eq i64 %n.vec765, %i.aed
  br i1 %cmp.n780, label %.loopexit371, label %vec.epilog.iter.check785

vec.epilog.iter.check785:                         ; preds = %middle.block779
  %min.epilog.iters.check786 = icmp eq i64 %i.aek, 0
  br i1 %min.epilog.iters.check786, label %.lr.ph404.split.us.preheader, label %vec.epilog.ph787, !prof !88

vec.epilog.ph787:                                 ; preds = %vector.main.loop.iter.check762, %vec.epilog.iter.check785
  %vec.epilog.resume.val781 = phi i64 [ %n.vec765, %vec.epilog.iter.check785 ], [ 0, %vector.main.loop.iter.check762 ]
  %n.vec788 = and i64 %i.aed, 2147483644          ; 3 uses
  %i.aff = or disjoint i64 %n.vec788, 1
  %i.afg = load double, ptr %5, align 8, !tbaa !84, !alias.scope !120
  %.scalar1024 = fneg double %i.afg
  %i.afh = insertelement <4 x double> poison, double %.scalar1024, i64 0
  %i.afi = shufflevector <4 x double> %i.afh, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body791

vec.epilog.vector.body791:                        ; preds = %vec.epilog.vector.body791, %vec.epilog.ph787
  %index792 = phi i64 [ %vec.epilog.resume.val781, %vec.epilog.ph787 ], [ %index.next795, %vec.epilog.vector.body791 ] ; 2 uses
  %i.afj = or disjoint i64 %index792, 1           ; 2 uses
  %i.afk = getelementptr [8 x i8], ptr %i.f, i64 %i.afj
  %i.afl = getelementptr i8, ptr %i.afk, i64 8
  %wide.load793 = load <4 x double>, ptr %i.afl, align 8, !tbaa !84, !alias.scope !121
  %i.afm = getelementptr [8 x i8], ptr %i.i, i64 %i.afj
  %i.afn = getelementptr i8, ptr %i.afm, i64 8    ; 2 uses
  %wide.load794 = load <4 x double>, ptr %i.afn, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %i.afo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.afi, <4 x double> %wide.load793, <4 x double> %wide.load794)
  store <4 x double> %i.afo, ptr %i.afn, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %index.next795 = add nuw i64 %index792, 4       ; 2 uses
  %i.afp = icmp eq i64 %index.next795, %n.vec788
  br i1 %i.afp, label %vec.epilog.middle.block796, label %vec.epilog.vector.body791, !llvm.loop !70

vec.epilog.middle.block796:                       ; preds = %vec.epilog.vector.body791
  %cmp.n797 = icmp eq i64 %n.vec788, %i.aed
  br i1 %cmp.n797, label %.loopexit371, label %.lr.ph404.split.us.preheader

.lr.ph404.split.us.preheader:                     ; preds = %iter.check783, %vector.scevcheck738, %vector.memcheck754, %vec.epilog.iter.check785, %vec.epilog.middle.block796
  %indvars.iv466.ph = phi i64 [ 1, %iter.check783 ], [ 1, %vector.scevcheck738 ], [ 1, %vector.memcheck754 ], [ %i.ael, %vec.epilog.iter.check785 ], [ %i.aff, %vec.epilog.middle.block796 ] ; 4 uses
  %i.afq = sub i64 %wide.trip.count469, %indvars.iv466.ph
  %i.afr = zext nneg i32 %i.so to i64
  %i.afs = sub i64 %i.afr, %indvars.iv466.ph
  %xtraiter1045 = and i64 %i.afq, 3               ; 2 uses
  %lcmp.mod1046.not = icmp eq i64 %xtraiter1045, 0
  br i1 %lcmp.mod1046.not, label %.lr.ph404.split.us.prol.loopexit, label %.lr.ph404.split.us.prol

.lr.ph404.split.us.prol:                          ; preds = %.lr.ph404.split.us.preheader, %.lr.ph404.split.us.prol
  %indvars.iv466.prol = phi i64 [ %indvars.iv.next467.prol, %.lr.ph404.split.us.prol ], [ %indvars.iv466.ph, %.lr.ph404.split.us.preheader ] ; 3 uses
  %prol.iter1047 = phi i64 [ %prol.iter1047.next, %.lr.ph404.split.us.prol ], [ 0, %.lr.ph404.split.us.preheader ]
  %i.aft = load double, ptr %5, align 8, !tbaa !84
  %i.afu = mul nsw i64 %indvars.iv466.prol, %i.aeb
  %i.afv = getelementptr [8 x i8], ptr %i.f, i64 %i.afu
  %i.afw = getelementptr i8, ptr %i.afv, i64 8
  %i.afx = load double, ptr %i.afw, align 8, !tbaa !84
  %i.afy = mul nsw i64 %indvars.iv466.prol, %i.aec
  %i.afz = getelementptr [8 x i8], ptr %i.i, i64 %i.afy
  %i.aga = getelementptr i8, ptr %i.afz, i64 8    ; 2 uses
  %i.agb = load double, ptr %i.aga, align 8, !tbaa !84
  %i.agc = fneg double %i.aft
  %i.agd = tail call double @llvm.fmuladd.f64(double %i.agc, double %i.afx, double %i.agb)
  store double %i.agd, ptr %i.aga, align 8, !tbaa !84
  %indvars.iv.next467.prol = add nuw nsw i64 %indvars.iv466.prol, 1 ; 2 uses
  %prol.iter1047.next = add i64 %prol.iter1047, 1 ; 2 uses
  %prol.iter1047.cmp.not = icmp eq i64 %prol.iter1047.next, %xtraiter1045
  br i1 %prol.iter1047.cmp.not, label %.lr.ph404.split.us.prol.loopexit, label %.lr.ph404.split.us.prol, !llvm.loop !71

.lr.ph404.split.us.prol.loopexit:                 ; preds = %.lr.ph404.split.us.prol, %.lr.ph404.split.us.preheader
  %indvars.iv466.unr = phi i64 [ %indvars.iv466.ph, %.lr.ph404.split.us.preheader ], [ %indvars.iv.next467.prol, %.lr.ph404.split.us.prol ]
  %i.age = icmp ult i64 %i.afs, 3
  br i1 %i.age, label %.loopexit371, label %.lr.ph404.split.us

.lr.ph404.split.us:                               ; preds = %.lr.ph404.split.us.prol.loopexit, %.lr.ph404.split.us
  %indvars.iv466 = phi i64 [ %indvars.iv.next467.3, %.lr.ph404.split.us ], [ %indvars.iv466.unr, %.lr.ph404.split.us.prol.loopexit ] ; 6 uses
  %i.agf = load double, ptr %5, align 8, !tbaa !84
  %i.agg = mul nsw i64 %indvars.iv466, %i.aeb
  %i.agh = getelementptr [8 x i8], ptr %i.f, i64 %i.agg
  %i.agi = getelementptr i8, ptr %i.agh, i64 8
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !84
  %i.agk = mul nsw i64 %indvars.iv466, %i.aec
  %i.agl = getelementptr [8 x i8], ptr %i.i, i64 %i.agk
  %i.agm = getelementptr i8, ptr %i.agl, i64 8    ; 2 uses
  %i.agn = load double, ptr %i.agm, align 8, !tbaa !84
  %i.ago = fneg double %i.agf
  %i.agp = tail call double @llvm.fmuladd.f64(double %i.ago, double %i.agj, double %i.agn)
  store double %i.agp, ptr %i.agm, align 8, !tbaa !84
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %i.agq = load double, ptr %5, align 8, !tbaa !84
  %i.agr = mul nsw i64 %indvars.iv.next467, %i.aeb
  %i.ags = getelementptr [8 x i8], ptr %i.f, i64 %i.agr
  %i.agt = getelementptr i8, ptr %i.ags, i64 8
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !84
  %i.agv = mul nsw i64 %indvars.iv.next467, %i.aec
  %i.agw = getelementptr [8 x i8], ptr %i.i, i64 %i.agv
  %i.agx = getelementptr i8, ptr %i.agw, i64 8    ; 2 uses
  %i.agy = load double, ptr %i.agx, align 8, !tbaa !84
  %i.agz = fneg double %i.agq
  %i.aha = tail call double @llvm.fmuladd.f64(double %i.agz, double %i.agu, double %i.agy)
  store double %i.aha, ptr %i.agx, align 8, !tbaa !84
  %indvars.iv.next467.1 = add nuw nsw i64 %indvars.iv466, 2 ; 2 uses
  %i.ahb = load double, ptr %5, align 8, !tbaa !84
  %i.ahc = mul nsw i64 %indvars.iv.next467.1, %i.aeb
  %i.ahd = getelementptr [8 x i8], ptr %i.f, i64 %i.ahc
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 8
  %i.ahf = load double, ptr %i.ahe, align 8, !tbaa !84
  %i.ahg = mul nsw i64 %indvars.iv.next467.1, %i.aec
  %i.ahh = getelementptr [8 x i8], ptr %i.i, i64 %i.ahg
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 8    ; 2 uses
  %i.ahj = load double, ptr %i.ahi, align 8, !tbaa !84
  %i.ahk = fneg double %i.ahb
  %i.ahl = tail call double @llvm.fmuladd.f64(double %i.ahk, double %i.ahf, double %i.ahj)
  store double %i.ahl, ptr %i.ahi, align 8, !tbaa !84
  %indvars.iv.next467.2 = add nuw nsw i64 %indvars.iv466, 3 ; 2 uses
  %i.ahm = load double, ptr %5, align 8, !tbaa !84
end_hunk_2
