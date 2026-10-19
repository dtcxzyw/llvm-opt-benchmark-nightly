Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlagtm?download=true
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dlagtm_:bb.a
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
  %lcmp.mod1065 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1065)
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
  br i1 %i.bn, label %iter.check912, label %.lr.ph412.split.preheader

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
  %scevgep815 = getelementptr i8, ptr %i.cf, i64 %i.cd
  %i.cg = getelementptr i8, ptr %4, i64 %i.cd
  %i.ch = shl nsw i64 %i.bv, 3
  %i.ci = shl nsw i64 %i.e, 3                     ; 2 uses
  %i.cj = getelementptr i8, ptr %7, i64 %i.ch
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ci
  %i.cl = insertelement <4 x ptr> poison, ptr %4, i64 0
  %i.cm = insertelement <4 x ptr> %i.cl, ptr %i.ck, i64 1
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %i.bz, i64 2 ; 2 uses
  %i.co = insertelement <4 x ptr> %i.cn, ptr %6, i64 3
  %i.cp = getelementptr i8, <4 x ptr> %i.co, <4 x i64> <i64 0, i64 8, i64 16, i64 8>
  %i.cq = mul i64 %i.cb, %i.bv
  %i.cr = getelementptr i8, ptr %7, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.ci
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cd
  %i.cu = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.cv = insertelement <2 x ptr> %i.cu, ptr %i.ct, i64 1
  %i.cw = getelementptr i8, <2 x ptr> %i.cv, <2 x i64> <i64 -16, i64 8>
  %i.cx = shufflevector <4 x ptr> %i.cn, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.cy = insertelement <2 x ptr> %i.cx, ptr %5, i64 1
  %i.cz = getelementptr i8, <2 x ptr> %i.cy, <2 x i64> <i64 16, i64 8>
  %i.da = shufflevector <2 x ptr> %i.cz, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.db = add nsw i64 %i.cd, -8                   ; 2 uses
  %scevgep820 = getelementptr i8, ptr %5, i64 %i.db
  %scevgep822 = getelementptr i8, ptr %6, i64 %i.db
  %i.dc = shufflevector <2 x ptr> %i.cw, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dd = add nsw i64 %wide.trip.count474, -2     ; 3 uses
  %min.iters.check844 = icmp ult i64 %i.dd, 12
  %i.de = insertelement <4 x ptr> %i.dc, ptr %scevgep815, i64 2 ; 2 uses
  %i.df = insertelement <4 x ptr> %i.de, ptr %scevgep822, i64 3
  %i.dg = icmp ult <4 x ptr> %i.da, %i.df
  %i.dh = shufflevector <4 x ptr> %i.de, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.di = insertelement <2 x ptr> %i.dh, ptr %scevgep820, i64 1
  %i.dj = shufflevector <2 x ptr> %i.di, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.dk = icmp ult <4 x ptr> %i.cp, %i.dj
  %12 = or i32 %i.d, %i.g
  %i.dl = and <4 x i1> %i.dg, %i.dk
  %i.dm = bitcast <4 x i1> %i.dl to i4
  %i.dn = icmp ne i4 %i.dm, 0
  %i.do = icmp slt i32 %12, 0
  %op.rdx1045 = or i1 %i.dn, %i.do
  %n.vec846 = and i64 %i.dd, -8                   ; 3 uses
  %i.dp = or disjoint i64 %n.vec846, 2
  %cmp.n865 = icmp eq i64 %i.dd, %n.vec846
  %i.dq = add nsw i64 %wide.trip.count474, -1
  br label %.lr.ph412.split

iter.check912:                                    ; preds = %.lr.ph412
  %i.dr = sext i32 %i.d to i64                    ; 5 uses
  %i.ds = sext i32 %i.g to i64                    ; 5 uses
  %i.dt = zext nneg i32 %i.bl to i64              ; 5 uses
  %min.iters.check882 = icmp ult i32 %i.bl, 4
  br i1 %min.iters.check882, label %.lr.ph412.split.us.preheader, label %vector.scevcheck867

vector.scevcheck867:                              ; preds = %iter.check912
  %ident.check868 = icmp ne i32 %i.g, 1
  %ident.check869 = icmp ne i32 %i.d, 1
  %i.du = or i1 %ident.check868, %ident.check869
  br i1 %i.du, label %.lr.ph412.split.us.preheader, label %vector.memcheck883

vector.memcheck883:                               ; preds = %vector.scevcheck867
  %i.dv = shl nuw nsw i64 %wide.trip.count484, 3
  %i.dw = add nsw i64 %i.dv, -8                   ; 2 uses
  %i.dx = getelementptr i8, ptr %10, i64 %i.dw    ; 2 uses
  %i.dy = getelementptr i8, ptr %5, i64 8
  %i.dz = getelementptr i8, ptr %7, i64 %i.dw
  %bound0884 = icmp ult ptr %10, %i.dy
  %bound1885 = icmp ult ptr %5, %i.dx
  %found.conflict886 = and i1 %bound0884, %bound1885
  %bound0887 = icmp ult ptr %10, %i.dz
  %bound1888 = icmp ult ptr %7, %i.dx
  %found.conflict889 = and i1 %bound0887, %bound1888
  %conflict.rdx890 = or i1 %found.conflict886, %found.conflict889
  br i1 %conflict.rdx890, label %.lr.ph412.split.us.preheader, label %vector.main.loop.iter.check891

vector.main.loop.iter.check891:                   ; preds = %vector.memcheck883
  %min.iters.check892 = icmp ult i32 %i.bl, 16
  br i1 %min.iters.check892, label %vec.epilog.ph916, label %vector.ph893

vector.ph893:                                     ; preds = %vector.main.loop.iter.check891
  %i.ea = and i64 %i.dt, 12
  %n.vec894 = and i64 %i.dt, 2147483632           ; 4 uses
  %i.eb = or disjoint i64 %n.vec894, 1
  %i.ec = load double, ptr %5, align 8, !tbaa !84, !alias.scope !90
  %broadcast.splatinsert905 = insertelement <4 x double> poison, double %i.ec, i64 0
  %broadcast.splat906 = shufflevector <4 x double> %broadcast.splatinsert905, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body895

vector.body895:                                   ; preds = %vector.ph893, %vector.body895
  %index896 = phi i64 [ 0, %vector.ph893 ], [ %index.next907, %vector.body895 ] ; 2 uses
  %i.ed = or disjoint i64 %index896, 1            ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.f, i64 %i.ed ; 4 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = getelementptr i8, ptr %i.ee, i64 40
  %i.eh = getelementptr i8, ptr %i.ee, i64 72
  %i.ei = getelementptr i8, ptr %i.ee, i64 104
  %wide.load897 = load <4 x double>, ptr %i.ef, align 8, !tbaa !84, !alias.scope !91
  %wide.load898 = load <4 x double>, ptr %i.eg, align 8, !tbaa !84, !alias.scope !91
  %wide.load899 = load <4 x double>, ptr %i.eh, align 8, !tbaa !84, !alias.scope !91
  %wide.load900 = load <4 x double>, ptr %i.ei, align 8, !tbaa !84, !alias.scope !91
  %i.ej = getelementptr [8 x i8], ptr %i.i, i64 %i.ed ; 4 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 8      ; 2 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 40     ; 2 uses
  %i.em = getelementptr i8, ptr %i.ej, i64 72     ; 2 uses
  %i.en = getelementptr i8, ptr %i.ej, i64 104    ; 2 uses
  %wide.load901 = load <4 x double>, ptr %i.ek, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %wide.load902 = load <4 x double>, ptr %i.el, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %wide.load903 = load <4 x double>, ptr %i.em, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %wide.load904 = load <4 x double>, ptr %i.en, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %i.eo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat906, <4 x double> %wide.load897, <4 x double> %wide.load901)
  %i.ep = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat906, <4 x double> %wide.load898, <4 x double> %wide.load902)
  %i.eq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat906, <4 x double> %wide.load899, <4 x double> %wide.load903)
  %i.er = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat906, <4 x double> %wide.load900, <4 x double> %wide.load904)
  store <4 x double> %i.eo, ptr %i.ek, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  store <4 x double> %i.ep, ptr %i.el, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  store <4 x double> %i.eq, ptr %i.em, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  store <4 x double> %i.er, ptr %i.en, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %index.next907 = add nuw i64 %index896, 16      ; 2 uses
  %i.es = icmp eq i64 %index.next907, %n.vec894
  br i1 %i.es, label %middle.block908, label %vector.body895, !llvm.loop !18

middle.block908:                                  ; preds = %vector.body895
  %cmp.n909 = icmp eq i64 %n.vec894, %i.dt
  br i1 %cmp.n909, label %.loopexit371, label %vec.epilog.iter.check914

vec.epilog.iter.check914:                         ; preds = %middle.block908
  %min.epilog.iters.check915 = icmp eq i64 %i.ea, 0
  br i1 %min.epilog.iters.check915, label %.lr.ph412.split.us.preheader, label %vec.epilog.ph916, !prof !88

vec.epilog.ph916:                                 ; preds = %vector.main.loop.iter.check891, %vec.epilog.iter.check914
  %vec.epilog.resume.val910 = phi i64 [ %n.vec894, %vec.epilog.iter.check914 ], [ 0, %vector.main.loop.iter.check891 ]
  %n.vec917 = and i64 %i.dt, 2147483644           ; 3 uses
  %i.et = or disjoint i64 %n.vec917, 1
  %i.eu = load double, ptr %5, align 8, !tbaa !84, !alias.scope !90
  %broadcast.splatinsert922 = insertelement <4 x double> poison, double %i.eu, i64 0
  %broadcast.splat923 = shufflevector <4 x double> %broadcast.splatinsert922, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body918

vec.epilog.vector.body918:                        ; preds = %vec.epilog.vector.body918, %vec.epilog.ph916
  %index919 = phi i64 [ %vec.epilog.resume.val910, %vec.epilog.ph916 ], [ %index.next924, %vec.epilog.vector.body918 ] ; 2 uses
  %i.ev = or disjoint i64 %index919, 1            ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %i.f, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 8
  %wide.load920 = load <4 x double>, ptr %i.ex, align 8, !tbaa !84, !alias.scope !91
  %i.ey = getelementptr [8 x i8], ptr %i.i, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 8      ; 2 uses
  %wide.load921 = load <4 x double>, ptr %i.ez, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %i.fa = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat923, <4 x double> %wide.load920, <4 x double> %wide.load921)
  store <4 x double> %i.fa, ptr %i.ez, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %index.next924 = add nuw i64 %index919, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next924, %n.vec917
  br i1 %i.fb, label %vec.epilog.middle.block925, label %vec.epilog.vector.body918, !llvm.loop !19

vec.epilog.middle.block925:                       ; preds = %vec.epilog.vector.body918
  %cmp.n926 = icmp eq i64 %n.vec917, %i.dt
  br i1 %cmp.n926, label %.loopexit371, label %.lr.ph412.split.us.preheader

.lr.ph412.split.us.preheader:                     ; preds = %iter.check912, %vector.scevcheck867, %vector.memcheck883, %vec.epilog.iter.check914, %vec.epilog.middle.block925
  %indvars.iv481.ph = phi i64 [ 1, %iter.check912 ], [ 1, %vector.scevcheck867 ], [ 1, %vector.memcheck883 ], [ %i.eb, %vec.epilog.iter.check914 ], [ %i.et, %vec.epilog.middle.block925 ] ; 4 uses
  %i.fc = sub i64 %wide.trip.count484, %indvars.iv481.ph
  %i.fd = zext nneg i32 %i.bl to i64
  %i.fe = sub i64 %i.fd, %indvars.iv481.ph
  %xtraiter1079 = and i64 %i.fc, 3                ; 2 uses
  %lcmp.mod1080.not = icmp eq i64 %xtraiter1079, 0
  br i1 %lcmp.mod1080.not, label %.lr.ph412.split.us.prol.loopexit, label %.lr.ph412.split.us.prol

.lr.ph412.split.us.prol:                          ; preds = %.lr.ph412.split.us.preheader, %.lr.ph412.split.us.prol
  %indvars.iv481.prol = phi i64 [ %indvars.iv.next482.prol, %.lr.ph412.split.us.prol ], [ %indvars.iv481.ph, %.lr.ph412.split.us.preheader ] ; 3 uses
  %prol.iter1081 = phi i64 [ %prol.iter1081.next, %.lr.ph412.split.us.prol ], [ 0, %.lr.ph412.split.us.preheader ]
  %i.ff = load double, ptr %5, align 8, !tbaa !84
  %i.fg = mul nsw i64 %indvars.iv481.prol, %i.dr
  %i.fh = getelementptr [8 x i8], ptr %i.f, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !84
  %i.fk = mul nsw i64 %indvars.iv481.prol, %i.ds
  %i.fl = getelementptr [8 x i8], ptr %i.i, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 8      ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !84
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.fj, double %i.fn)
  store double %i.fo, ptr %i.fm, align 8, !tbaa !84
  %indvars.iv.next482.prol = add nuw nsw i64 %indvars.iv481.prol, 1 ; 2 uses
  %prol.iter1081.next = add i64 %prol.iter1081, 1 ; 2 uses
  %prol.iter1081.cmp.not = icmp eq i64 %prol.iter1081.next, %xtraiter1079
  br i1 %prol.iter1081.cmp.not, label %.lr.ph412.split.us.prol.loopexit, label %.lr.ph412.split.us.prol, !llvm.loop !20

.lr.ph412.split.us.prol.loopexit:                 ; preds = %.lr.ph412.split.us.prol, %.lr.ph412.split.us.preheader
  %indvars.iv481.unr = phi i64 [ %indvars.iv481.ph, %.lr.ph412.split.us.preheader ], [ %indvars.iv.next482.prol, %.lr.ph412.split.us.prol ]
  %i.fp = icmp ult i64 %i.fe, 3
  br i1 %i.fp, label %.loopexit371, label %.lr.ph412.split.us

.lr.ph412.split.us:                               ; preds = %.lr.ph412.split.us.prol.loopexit, %.lr.ph412.split.us
  %indvars.iv481 = phi i64 [ %indvars.iv.next482.3, %.lr.ph412.split.us ], [ %indvars.iv481.unr, %.lr.ph412.split.us.prol.loopexit ] ; 6 uses
  %i.fq = load double, ptr %5, align 8, !tbaa !84
  %i.fr = mul nsw i64 %indvars.iv481, %i.dr
  %i.fs = getelementptr [8 x i8], ptr %i.f, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 8
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !84
  %i.fv = mul nsw i64 %indvars.iv481, %i.ds
  %i.fw = getelementptr [8 x i8], ptr %i.i, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 8      ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !84
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.fu, double %i.fy)
  store double %i.fz, ptr %i.fx, align 8, !tbaa !84
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1 ; 2 uses
  %i.ga = load double, ptr %5, align 8, !tbaa !84
  %i.gb = mul nsw i64 %indvars.iv.next482, %i.dr
  %i.gc = getelementptr [8 x i8], ptr %i.f, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !84
  %i.gf = mul nsw i64 %indvars.iv.next482, %i.ds
  %i.gg = getelementptr [8 x i8], ptr %i.i, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 8      ; 2 uses
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !84
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.ge, double %i.gi)
  store double %i.gj, ptr %i.gh, align 8, !tbaa !84
  %indvars.iv.next482.1 = add nuw nsw i64 %indvars.iv481, 2 ; 2 uses
  %i.gk = load double, ptr %5, align 8, !tbaa !84
  %i.gl = mul nsw i64 %indvars.iv.next482.1, %i.dr
  %i.gm = getelementptr [8 x i8], ptr %i.f, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 8
  %i.go = load double, ptr %i.gn, align 8, !tbaa !84
  %i.gp = mul nsw i64 %indvars.iv.next482.1, %i.ds
  %i.gq = getelementptr [8 x i8], ptr %i.i, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.gq, i64 8      ; 2 uses
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !84
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.go, double %i.gs)
  store double %i.gt, ptr %i.gr, align 8, !tbaa !84
  %indvars.iv.next482.2 = add nuw nsw i64 %indvars.iv481, 3 ; 2 uses
  %i.gu = load double, ptr %5, align 8, !tbaa !84
  %i.gv = mul nsw i64 %indvars.iv.next482.2, %i.dr
  %i.gw = getelementptr [8 x i8], ptr %i.f, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !84
  %i.gz = mul nsw i64 %indvars.iv.next482.2, %i.ds
  %i.ha = getelementptr [8 x i8], ptr %i.i, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 8      ; 2 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !84
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.gy, double %i.hc)
  store double %i.hd, ptr %i.hb, align 8, !tbaa !84
end_hunk_0
begin_hunk_1_@dlagtm_:bb.a
.lr.ph408.preheader:                              ; preds = %.lr.ph412.split
  %invariant.gep549 = getelementptr [8 x i8], ptr %i.i, i64 %i.he ; 4 uses
  %invariant.gep551 = getelementptr [8 x i8], ptr %i.f, i64 %i.hj ; 4 uses
  %invariant.gep553 = getelementptr [8 x i8], ptr %i.f, i64 %i.hj ; 4 uses
  %invariant.gep555 = getelementptr [8 x i8], ptr %i.f, i64 %i.hj ; 4 uses
  %brmerge = select i1 %min.iters.check844, i1 true, i1 %op.rdx1045
  br i1 %brmerge, label %.lr.ph408.preheader1056, label %vector.body847

vector.body847:                                   ; preds = %.lr.ph408.preheader, %vector.body847
  %index848 = phi i64 [ %index.next863, %vector.body847 ], [ 0, %.lr.ph408.preheader ] ; 5 uses
  %i.hz = or disjoint i64 %index848, 2            ; 4 uses
  %i.ia = getelementptr [8 x i8], ptr %invariant.gep549, i64 %i.hz ; 3 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 32     ; 2 uses
  %wide.load849.a = load <4 x double>, ptr %i.ia, align 8, !tbaa !84, !alias.scope !94, !noalias !95
  %wide.load850.a = load <4 x double>, ptr %i.ib, align 8, !tbaa !84, !alias.scope !94, !noalias !95
  %i.ic = getelementptr [8 x i8], ptr %4, i64 %index848 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %wide.load851.a = load <4 x double>, ptr %i.ic, align 8, !tbaa !84, !alias.scope !96
  %wide.load852.a = load <4 x double>, ptr %i.id, align 8, !tbaa !84, !alias.scope !96
  %i.ie = getelementptr [8 x i8], ptr %invariant.gep551, i64 %index848 ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 8
  %i.ig = getelementptr i8, ptr %i.ie, i64 40
  %wide.load853.a = load <4 x double>, ptr %i.if, align 8, !tbaa !84, !alias.scope !97
  %wide.load854 = load <4 x double>, ptr %i.ig, align 8, !tbaa !84, !alias.scope !97
  %i.ih = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load851.a, <4 x double> %wide.load853.a, <4 x double> %wide.load849.a)
  %i.ii = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load852.a, <4 x double> %wide.load854, <4 x double> %wide.load850.a)
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hz ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %wide.load855 = load <4 x double>, ptr %i.ij, align 8, !tbaa !84, !alias.scope !98
  %wide.load856 = load <4 x double>, ptr %i.ik, align 8, !tbaa !84, !alias.scope !98
  %i.il = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.hz ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 32
  %wide.load857 = load <4 x double>, ptr %i.il, align 8, !tbaa !84, !alias.scope !97
  %wide.load858 = load <4 x double>, ptr %i.im, align 8, !tbaa !84, !alias.scope !97
  %i.in = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load855, <4 x double> %wide.load857, <4 x double> %i.ih)
  %i.io = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load856, <4 x double> %wide.load858, <4 x double> %i.ii)
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hz ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %wide.load859 = load <4 x double>, ptr %i.ip, align 8, !tbaa !84, !alias.scope !99
  %wide.load860 = load <4 x double>, ptr %i.iq, align 8, !tbaa !84, !alias.scope !99
  %i.ir = getelementptr [8 x i8], ptr %invariant.gep555, i64 %index848 ; 2 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 24
  %i.it = getelementptr i8, ptr %i.ir, i64 56
  %wide.load861 = load <4 x double>, ptr %i.is, align 8, !tbaa !84, !alias.scope !97
  %wide.load862 = load <4 x double>, ptr %i.it, align 8, !tbaa !84, !alias.scope !97
  %i.iu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load859, <4 x double> %wide.load861, <4 x double> %i.in)
  %i.iv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load860, <4 x double> %wide.load862, <4 x double> %i.io)
  store <4 x double> %i.iu, ptr %i.ia, align 8, !tbaa !84, !alias.scope !94, !noalias !95
  store <4 x double> %i.iv, ptr %i.ib, align 8, !tbaa !84, !alias.scope !94, !noalias !95
  %index.next863 = add nuw i64 %index848, 8       ; 2 uses
  %i.iw = icmp eq i64 %index.next863, %n.vec846
  br i1 %i.iw, label %middle.block864, label %vector.body847, !llvm.loop !28

middle.block864:                                  ; preds = %vector.body847
  br i1 %cmp.n865, label %.loopexit372, label %.lr.ph408.preheader1056

.lr.ph408.preheader1056:                          ; preds = %.lr.ph408.preheader, %middle.block864
  %indvars.iv471.ph = phi i64 [ %i.dp, %middle.block864 ], [ 2, %.lr.ph408.preheader ] ; 9 uses
  %i.ix = sub nsw i64 %wide.trip.count474, %indvars.iv471.ph
  %xtraiter1076 = and i64 %i.ix, 1
  %lcmp.mod1077.not = icmp eq i64 %xtraiter1076, 0
  br i1 %lcmp.mod1077.not, label %.lr.ph408.prol.loopexit, label %.lr.ph408.prol

.lr.ph408.prol:                                   ; preds = %.lr.ph408.preheader1056
  %gep550.prol = getelementptr [8 x i8], ptr %invariant.gep549, i64 %indvars.iv471.ph ; 2 uses
  %i.iy = load double, ptr %gep550.prol, align 8, !tbaa !84
  %i.iz = add nsw i64 %indvars.iv471.ph, -1       ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.iz
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !84
  %gep552.prol = getelementptr [8 x i8], ptr %invariant.gep551, i64 %i.iz
  %i.jc = load double, ptr %gep552.prol, align 8, !tbaa !84
  %i.jd = tail call double @llvm.fmuladd.f64(double %i.jb, double %i.jc, double %i.iy)
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv471.ph
  %i.jf = load double, ptr %i.je, align 8, !tbaa !84
  %gep554.prol = getelementptr [8 x i8], ptr %invariant.gep553, i64 %indvars.iv471.ph
  %i.jg = load double, ptr %gep554.prol, align 8, !tbaa !84
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jf, double %i.jg, double %i.jd)
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv471.ph
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !84
  %indvars.iv.next472.prol = add nuw nsw i64 %indvars.iv471.ph, 1 ; 2 uses
  %gep556.prol = getelementptr [8 x i8], ptr %invariant.gep555, i64 %indvars.iv.next472.prol
  %i.jk = load double, ptr %gep556.prol, align 8, !tbaa !84
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.jk, double %i.jh)
  store double %i.jl, ptr %gep550.prol, align 8, !tbaa !84
  br label %.lr.ph408.prol.loopexit

.lr.ph408.prol.loopexit:                          ; preds = %.lr.ph408.prol, %.lr.ph408.preheader1056
  %indvars.iv471.unr = phi i64 [ %indvars.iv471.ph, %.lr.ph408.preheader1056 ], [ %indvars.iv.next472.prol, %.lr.ph408.prol ]
  %i.jm = icmp eq i64 %indvars.iv471.ph, %i.dq
  br i1 %i.jm, label %.loopexit372, label %.lr.ph408

.lr.ph408:                                        ; preds = %.lr.ph408.prol.loopexit, %.lr.ph408
  %indvars.iv471 = phi i64 [ %indvars.iv.next472.1, %.lr.ph408 ], [ %indvars.iv471.unr, %.lr.ph408.prol.loopexit ] ; 11 uses
  %gep550 = getelementptr [8 x i8], ptr %invariant.gep549, i64 %indvars.iv471 ; 2 uses
  %i.jn = load double, ptr %gep550, align 8, !tbaa !84
  %i.jo = add nsw i64 %indvars.iv471, -1          ; 2 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.jo
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !84
  %gep552 = getelementptr [8 x i8], ptr %invariant.gep551, i64 %i.jo
  %i.jr = load double, ptr %gep552, align 8, !tbaa !84
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jq, double %i.jr, double %i.jn)
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv471
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !84
  %gep554 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %indvars.iv471
  %i.jv = load double, ptr %gep554, align 8, !tbaa !84
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.ju, double %i.jv, double %i.js)
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv471
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !84
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 3 uses
  %gep556 = getelementptr [8 x i8], ptr %invariant.gep555, i64 %indvars.iv.next472
  %i.jz = load double, ptr %gep556, align 8, !tbaa !84
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.jy, double %i.jz, double %i.jw)
  store double %i.ka, ptr %gep550, align 8, !tbaa !84
  %gep550.1 = getelementptr [8 x i8], ptr %invariant.gep549, i64 %indvars.iv.next472 ; 2 uses
  %i.kb = load double, ptr %gep550.1, align 8, !tbaa !84
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv471
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !84
  %gep552.1 = getelementptr [8 x i8], ptr %invariant.gep551, i64 %indvars.iv471
  %i.ke = load double, ptr %gep552.1, align 8, !tbaa !84
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.kd, double %i.ke, double %i.kb)
  %i.kg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv471
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !84
  %gep554.1 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %indvars.iv.next472
  %i.ki = load double, ptr %gep554.1, align 8, !tbaa !84
  %i.kj = tail call double @llvm.fmuladd.f64(double %i.kh, double %i.ki, double %i.kf)
  %i.kk = getelementptr [8 x i8], ptr %6, i64 %indvars.iv471
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !84
  %indvars.iv.next472.1 = add nuw nsw i64 %indvars.iv471, 2 ; 3 uses
  %gep556.1 = getelementptr [8 x i8], ptr %invariant.gep555, i64 %indvars.iv.next472.1
  %i.km = load double, ptr %gep556.1, align 8, !tbaa !84
  %i.kn = tail call double @llvm.fmuladd.f64(double %i.kl, double %i.km, double %i.kj)
  store double %i.kn, ptr %gep550.1, align 8, !tbaa !84
  %exitcond475.not.1 = icmp eq i64 %indvars.iv.next472.1, %wide.trip.count474
  br i1 %exitcond475.not.1, label %.loopexit372, label %.lr.ph408, !llvm.loop !29

.loopexit372:                                     ; preds = %.lr.ph408.prol.loopexit, %.lr.ph408, %middle.block864, %.lr.ph412.split
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %exitcond480.not = icmp eq i64 %indvars.iv.next477, %wide.trip.count484
  br i1 %exitcond480.not, label %.loopexit371, label %.lr.ph412.split, !llvm.loop !30

bb.h:                                             ; preds = %bb.f
  br i1 %.not366417, label %.loopexit371, label %.lr.ph420

.lr.ph420:                                        ; preds = %bb.h
  %i.ko = load i32, ptr %1, align 4, !tbaa !82    ; 5 uses
  %i.kp = icmp eq i32 %i.ko, 1
  %i.kq = add nsw i32 %i.ko, -1
  %i.kr = sext i32 %i.kq to i64                   ; 2 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.kr
  %i.kt = sext i32 %i.ko to i64                   ; 3 uses
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kt
  %.not367.not413 = icmp sgt i32 %i.ko, 2
  %i.kv = add nuw i32 %i.bl, 1
  %wide.trip.count499 = zext i32 %i.kv to i64     ; 5 uses
  br i1 %i.kp, label %iter.check1027, label %.lr.ph420.split.preheader

.lr.ph420.split.preheader:                        ; preds = %.lr.ph420
  %i.kw = sext i32 %i.g to i64                    ; 3 uses
  %i.kx = sext i32 %i.d to i64                    ; 3 uses
  %invariant.gep571 = getelementptr [8 x i8], ptr %i.i, i64 %i.kt
  %invariant.gep573 = getelementptr [8 x i8], ptr %i.f, i64 %i.kr
  %invariant.gep575 = getelementptr [8 x i8], ptr %i.f, i64 %i.kt
  %wide.trip.count489 = zext i32 %i.ko to i64     ; 5 uses
  %i.ky = shl nsw i64 %i.kw, 3
  %i.kz = shl nsw i64 %i.h, 3                     ; 2 uses
  %i.la = getelementptr i8, ptr %10, i64 %i.ky
  %i.lb = getelementptr i8, ptr %i.la, i64 %i.kz
  %i.lc = shl nuw nsw i64 %wide.trip.count499, 3
  %i.ld = add nsw i64 %i.lc, -8                   ; 2 uses
  %i.le = mul i64 %i.ld, %i.kw
  %i.lf = shl nuw nsw i64 %wide.trip.count489, 3  ; 4 uses
  %i.lg = getelementptr i8, ptr %10, i64 %i.le
  %i.lh = getelementptr i8, ptr %i.lg, i64 %i.kz
  %scevgep930 = getelementptr i8, ptr %i.lh, i64 %i.lf
  %i.li = getelementptr i8, ptr %6, i64 %i.lf
  %i.lj = shl nsw i64 %i.kx, 3
  %i.lk = shl nsw i64 %i.e, 3                     ; 2 uses
  %i.ll = getelementptr i8, ptr %7, i64 %i.lj
  %i.lm = getelementptr i8, ptr %i.ll, i64 %i.lk
  %i.ln = insertelement <4 x ptr> poison, ptr %6, i64 0
  %i.lo = insertelement <4 x ptr> %i.ln, ptr %i.lm, i64 1
  %i.lp = insertelement <4 x ptr> %i.lo, ptr %i.lb, i64 2 ; 2 uses
  %i.lq = insertelement <4 x ptr> %i.lp, ptr %4, i64 3
  %i.lr = getelementptr i8, <4 x ptr> %i.lq, <4 x i64> <i64 0, i64 8, i64 16, i64 8>
  %i.ls = mul i64 %i.ld, %i.kx
  %i.lt = getelementptr i8, ptr %7, i64 %i.ls
  %i.lu = getelementptr i8, ptr %i.lt, i64 %i.lk
  %i.lv = getelementptr i8, ptr %i.lu, i64 %i.lf
  %i.lw = insertelement <2 x ptr> poison, ptr %i.li, i64 0
  %i.lx = insertelement <2 x ptr> %i.lw, ptr %i.lv, i64 1
  %i.ly = getelementptr i8, <2 x ptr> %i.lx, <2 x i64> <i64 -16, i64 8>
  %i.lz = shufflevector <4 x ptr> %i.lp, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.ma = insertelement <2 x ptr> %i.lz, ptr %5, i64 1
  %i.mb = getelementptr i8, <2 x ptr> %i.ma, <2 x i64> <i64 16, i64 8>
  %i.mc = shufflevector <2 x ptr> %i.mb, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.md = add nsw i64 %i.lf, -8                   ; 2 uses
  %scevgep935 = getelementptr i8, ptr %5, i64 %i.md
  %scevgep937 = getelementptr i8, ptr %4, i64 %i.md
  %i.me = shufflevector <2 x ptr> %i.ly, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mf = add nsw i64 %wide.trip.count489, -2     ; 3 uses
  %min.iters.check959 = icmp ult i64 %i.mf, 12
  %i.mg = insertelement <4 x ptr> %i.me, ptr %scevgep930, i64 2 ; 2 uses
  %i.mh = insertelement <4 x ptr> %i.mg, ptr %scevgep937, i64 3
  %i.mi = icmp ult <4 x ptr> %i.mc, %i.mh
  %i.mj = shufflevector <4 x ptr> %i.mg, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.mk = insertelement <2 x ptr> %i.mj, ptr %scevgep935, i64 1
  %i.ml = shufflevector <2 x ptr> %i.mk, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.mm = icmp ult <4 x ptr> %i.lr, %i.ml
  %13 = or i32 %i.d, %i.g
  %i.mn = and <4 x i1> %i.mi, %i.mm
  %i.mo = bitcast <4 x i1> %i.mn to i4
  %i.mp = icmp ne i4 %i.mo, 0
  %i.mq = icmp slt i32 %13, 0
  %op.rdx1043 = or i1 %i.mp, %i.mq
  %n.vec961 = and i64 %i.mf, -8                   ; 3 uses
  %i.mr = or disjoint i64 %n.vec961, 2
  %cmp.n980 = icmp eq i64 %i.mf, %n.vec961
  %i.ms = add nsw i64 %wide.trip.count489, -1
  br label %.lr.ph420.split

iter.check1027:                                   ; preds = %.lr.ph420
  %i.mt = sext i32 %i.d to i64                    ; 5 uses
  %i.mu = sext i32 %i.g to i64                    ; 5 uses
  %i.mv = zext nneg i32 %i.bl to i64              ; 5 uses
  %min.iters.check997 = icmp ult i32 %i.bl, 4
  br i1 %min.iters.check997, label %.lr.ph420.split.us.preheader, label %vector.scevcheck982

vector.scevcheck982:                              ; preds = %iter.check1027
  %ident.check983 = icmp ne i32 %i.g, 1
  %ident.check984 = icmp ne i32 %i.d, 1
  %i.mw = or i1 %ident.check983, %ident.check984
  br i1 %i.mw, label %.lr.ph420.split.us.preheader, label %vector.memcheck998

vector.memcheck998:                               ; preds = %vector.scevcheck982
  %i.mx = shl nuw nsw i64 %wide.trip.count499, 3
  %i.my = add nsw i64 %i.mx, -8                   ; 2 uses
  %i.mz = getelementptr i8, ptr %10, i64 %i.my    ; 2 uses
  %i.na = getelementptr i8, ptr %5, i64 8
  %i.nb = getelementptr i8, ptr %7, i64 %i.my
  %bound0999 = icmp ult ptr %10, %i.na
  %bound11000 = icmp ult ptr %5, %i.mz
  %found.conflict1001 = and i1 %bound0999, %bound11000
  %bound01002 = icmp ult ptr %10, %i.nb
  %bound11003 = icmp ult ptr %7, %i.mz
  %found.conflict1004 = and i1 %bound01002, %bound11003
  %conflict.rdx1005 = or i1 %found.conflict1001, %found.conflict1004
  br i1 %conflict.rdx1005, label %.lr.ph420.split.us.preheader, label %vector.main.loop.iter.check1006

vector.main.loop.iter.check1006:                  ; preds = %vector.memcheck998
  %min.iters.check1007 = icmp ult i32 %i.bl, 16
  br i1 %min.iters.check1007, label %vec.epilog.ph1031, label %vector.ph1008

vector.ph1008:                                    ; preds = %vector.main.loop.iter.check1006
  %i.nc = and i64 %i.mv, 12
  %n.vec1009 = and i64 %i.mv, 2147483632          ; 4 uses
  %i.nd = or disjoint i64 %n.vec1009, 1
  %i.ne = load double, ptr %5, align 8, !tbaa !84, !alias.scope !100
  %broadcast.splatinsert1020 = insertelement <4 x double> poison, double %i.ne, i64 0
  %broadcast.splat1021 = shufflevector <4 x double> %broadcast.splatinsert1020, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.ph1008, %vector.body1010
  %index1011 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1022, %vector.body1010 ] ; 2 uses
  %i.nf = or disjoint i64 %index1011, 1           ; 2 uses
  %i.ng = getelementptr [8 x i8], ptr %i.f, i64 %i.nf ; 4 uses
  %i.nh = getelementptr i8, ptr %i.ng, i64 8
  %i.ni = getelementptr i8, ptr %i.ng, i64 40
  %i.nj = getelementptr i8, ptr %i.ng, i64 72
  %i.nk = getelementptr i8, ptr %i.ng, i64 104
  %wide.load1012 = load <4 x double>, ptr %i.nh, align 8, !tbaa !84, !alias.scope !101
  %wide.load1013 = load <4 x double>, ptr %i.ni, align 8, !tbaa !84, !alias.scope !101
  %wide.load1014 = load <4 x double>, ptr %i.nj, align 8, !tbaa !84, !alias.scope !101
  %wide.load1015 = load <4 x double>, ptr %i.nk, align 8, !tbaa !84, !alias.scope !101
  %i.nl = getelementptr [8 x i8], ptr %i.i, i64 %i.nf ; 4 uses
  %i.nm = getelementptr i8, ptr %i.nl, i64 8      ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nl, i64 40     ; 2 uses
  %i.no = getelementptr i8, ptr %i.nl, i64 72     ; 2 uses
  %i.np = getelementptr i8, ptr %i.nl, i64 104    ; 2 uses
  %wide.load1016 = load <4 x double>, ptr %i.nm, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %wide.load1017 = load <4 x double>, ptr %i.nn, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %wide.load1018 = load <4 x double>, ptr %i.no, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %wide.load1019 = load <4 x double>, ptr %i.np, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %i.nq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1021, <4 x double> %wide.load1012, <4 x double> %wide.load1016)
  %i.nr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1021, <4 x double> %wide.load1013, <4 x double> %wide.load1017)
  %i.ns = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1021, <4 x double> %wide.load1014, <4 x double> %wide.load1018)
  %i.nt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1021, <4 x double> %wide.load1015, <4 x double> %wide.load1019)
  store <4 x double> %i.nq, ptr %i.nm, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  store <4 x double> %i.nr, ptr %i.nn, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  store <4 x double> %i.ns, ptr %i.no, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  store <4 x double> %i.nt, ptr %i.np, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %index.next1022 = add nuw i64 %index1011, 16    ; 2 uses
  %i.nu = icmp eq i64 %index.next1022, %n.vec1009
  br i1 %i.nu, label %middle.block1023, label %vector.body1010, !llvm.loop !35

middle.block1023:                                 ; preds = %vector.body1010
  %cmp.n1024 = icmp eq i64 %n.vec1009, %i.mv
  br i1 %cmp.n1024, label %.loopexit371, label %vec.epilog.iter.check1029

vec.epilog.iter.check1029:                        ; preds = %middle.block1023
  %min.epilog.iters.check1030 = icmp eq i64 %i.nc, 0
  br i1 %min.epilog.iters.check1030, label %.lr.ph420.split.us.preheader, label %vec.epilog.ph1031, !prof !88

vec.epilog.ph1031:                                ; preds = %vector.main.loop.iter.check1006, %vec.epilog.iter.check1029
  %vec.epilog.resume.val1025 = phi i64 [ %n.vec1009, %vec.epilog.iter.check1029 ], [ 0, %vector.main.loop.iter.check1006 ]
  %n.vec1032 = and i64 %i.mv, 2147483644          ; 3 uses
  %i.nv = or disjoint i64 %n.vec1032, 1
  %i.nw = load double, ptr %5, align 8, !tbaa !84, !alias.scope !100
  %broadcast.splatinsert1037 = insertelement <4 x double> poison, double %i.nw, i64 0
  %broadcast.splat1038 = shufflevector <4 x double> %broadcast.splatinsert1037, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1033

vec.epilog.vector.body1033:                       ; preds = %vec.epilog.vector.body1033, %vec.epilog.ph1031
  %index1034 = phi i64 [ %vec.epilog.resume.val1025, %vec.epilog.ph1031 ], [ %index.next1039, %vec.epilog.vector.body1033 ] ; 2 uses
  %i.nx = or disjoint i64 %index1034, 1           ; 2 uses
  %i.ny = getelementptr [8 x i8], ptr %i.f, i64 %i.nx
  %i.nz = getelementptr i8, ptr %i.ny, i64 8
  %wide.load1035 = load <4 x double>, ptr %i.nz, align 8, !tbaa !84, !alias.scope !101
  %i.oa = getelementptr [8 x i8], ptr %i.i, i64 %i.nx
  %i.ob = getelementptr i8, ptr %i.oa, i64 8      ; 2 uses
  %wide.load1036 = load <4 x double>, ptr %i.ob, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %i.oc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1038, <4 x double> %wide.load1035, <4 x double> %wide.load1036)
  store <4 x double> %i.oc, ptr %i.ob, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %index.next1039 = add nuw i64 %index1034, 4     ; 2 uses
  %i.od = icmp eq i64 %index.next1039, %n.vec1032
  br i1 %i.od, label %vec.epilog.middle.block1040, label %vec.epilog.vector.body1033, !llvm.loop !36

vec.epilog.middle.block1040:                      ; preds = %vec.epilog.vector.body1033
  %cmp.n1041 = icmp eq i64 %n.vec1032, %i.mv
  br i1 %cmp.n1041, label %.loopexit371, label %.lr.ph420.split.us.preheader

.lr.ph420.split.us.preheader:                     ; preds = %iter.check1027, %vector.scevcheck982, %vector.memcheck998, %vec.epilog.iter.check1029, %vec.epilog.middle.block1040
  %indvars.iv496.ph = phi i64 [ 1, %iter.check1027 ], [ 1, %vector.scevcheck982 ], [ 1, %vector.memcheck998 ], [ %i.nd, %vec.epilog.iter.check1029 ], [ %i.nv, %vec.epilog.middle.block1040 ] ; 4 uses
  %i.oe = sub i64 %wide.trip.count499, %indvars.iv496.ph
  %i.of = zext nneg i32 %i.bl to i64
  %i.og = sub i64 %i.of, %indvars.iv496.ph
  %xtraiter1085 = and i64 %i.oe, 3                ; 2 uses
  %lcmp.mod1086.not = icmp eq i64 %xtraiter1085, 0
  br i1 %lcmp.mod1086.not, label %.lr.ph420.split.us.prol.loopexit, label %.lr.ph420.split.us.prol

.lr.ph420.split.us.prol:                          ; preds = %.lr.ph420.split.us.preheader, %.lr.ph420.split.us.prol
  %indvars.iv496.prol = phi i64 [ %indvars.iv.next497.prol, %.lr.ph420.split.us.prol ], [ %indvars.iv496.ph, %.lr.ph420.split.us.preheader ] ; 3 uses
  %prol.iter1087 = phi i64 [ %prol.iter1087.next, %.lr.ph420.split.us.prol ], [ 0, %.lr.ph420.split.us.preheader ]
  %i.oh = load double, ptr %5, align 8, !tbaa !84
  %i.oi = mul nsw i64 %indvars.iv496.prol, %i.mt
  %i.oj = getelementptr [8 x i8], ptr %i.f, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 8
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !84
  %i.om = mul nsw i64 %indvars.iv496.prol, %i.mu
  %i.on = getelementptr [8 x i8], ptr %i.i, i64 %i.om
  %i.oo = getelementptr i8, ptr %i.on, i64 8      ; 2 uses
  %i.op = load double, ptr %i.oo, align 8, !tbaa !84
  %i.oq = tail call double @llvm.fmuladd.f64(double %i.oh, double %i.ol, double %i.op)
  store double %i.oq, ptr %i.oo, align 8, !tbaa !84
  %indvars.iv.next497.prol = add nuw nsw i64 %indvars.iv496.prol, 1 ; 2 uses
  %prol.iter1087.next = add i64 %prol.iter1087, 1 ; 2 uses
  %prol.iter1087.cmp.not = icmp eq i64 %prol.iter1087.next, %xtraiter1085
  br i1 %prol.iter1087.cmp.not, label %.lr.ph420.split.us.prol.loopexit, label %.lr.ph420.split.us.prol, !llvm.loop !37

.lr.ph420.split.us.prol.loopexit:                 ; preds = %.lr.ph420.split.us.prol, %.lr.ph420.split.us.preheader
  %indvars.iv496.unr = phi i64 [ %indvars.iv496.ph, %.lr.ph420.split.us.preheader ], [ %indvars.iv.next497.prol, %.lr.ph420.split.us.prol ]
  %i.or = icmp ult i64 %i.og, 3
  br i1 %i.or, label %.loopexit371, label %.lr.ph420.split.us

.lr.ph420.split.us:                               ; preds = %.lr.ph420.split.us.prol.loopexit, %.lr.ph420.split.us
  %indvars.iv496 = phi i64 [ %indvars.iv.next497.3, %.lr.ph420.split.us ], [ %indvars.iv496.unr, %.lr.ph420.split.us.prol.loopexit ] ; 6 uses
  %i.os = load double, ptr %5, align 8, !tbaa !84
  %i.ot = mul nsw i64 %indvars.iv496, %i.mt
  %i.ou = getelementptr [8 x i8], ptr %i.f, i64 %i.ot
  %i.ov = getelementptr i8, ptr %i.ou, i64 8
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !84
  %i.ox = mul nsw i64 %indvars.iv496, %i.mu
  %i.oy = getelementptr [8 x i8], ptr %i.i, i64 %i.ox
  %i.oz = getelementptr i8, ptr %i.oy, i64 8      ; 2 uses
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !84
  %i.pb = tail call double @llvm.fmuladd.f64(double %i.os, double %i.ow, double %i.pa)
  store double %i.pb, ptr %i.oz, align 8, !tbaa !84
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %i.pc = load double, ptr %5, align 8, !tbaa !84
  %i.pd = mul nsw i64 %indvars.iv.next497, %i.mt
  %i.pe = getelementptr [8 x i8], ptr %i.f, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.pe, i64 8
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !84
  %i.ph = mul nsw i64 %indvars.iv.next497, %i.mu
  %i.pi = getelementptr [8 x i8], ptr %i.i, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 8      ; 2 uses
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !84
  %i.pl = tail call double @llvm.fmuladd.f64(double %i.pc, double %i.pg, double %i.pk)
  store double %i.pl, ptr %i.pj, align 8, !tbaa !84
  %indvars.iv.next497.1 = add nuw nsw i64 %indvars.iv496, 2 ; 2 uses
  %i.pm = load double, ptr %5, align 8, !tbaa !84
  %i.pn = mul nsw i64 %indvars.iv.next497.1, %i.mt
  %i.po = getelementptr [8 x i8], ptr %i.f, i64 %i.pn
  %i.pp = getelementptr i8, ptr %i.po, i64 8
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !84
  %i.pr = mul nsw i64 %indvars.iv.next497.1, %i.mu
  %i.ps = getelementptr [8 x i8], ptr %i.i, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.ps, i64 8      ; 2 uses
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !84
  %i.pv = tail call double @llvm.fmuladd.f64(double %i.pm, double %i.pq, double %i.pu)
  store double %i.pv, ptr %i.pt, align 8, !tbaa !84
  %indvars.iv.next497.2 = add nuw nsw i64 %indvars.iv496, 3 ; 2 uses
  %i.pw = load double, ptr %5, align 8, !tbaa !84
  %i.px = mul nsw i64 %indvars.iv.next497.2, %i.mt
  %i.py = getelementptr [8 x i8], ptr %i.f, i64 %i.px
  %i.pz = getelementptr i8, ptr %i.py, i64 8
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !84
  %i.qb = mul nsw i64 %indvars.iv.next497.2, %i.mu
  %i.qc = getelementptr [8 x i8], ptr %i.i, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.qc, i64 8      ; 2 uses
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !84
  %i.qf = tail call double @llvm.fmuladd.f64(double %i.pw, double %i.qa, double %i.qe)
  store double %i.qf, ptr %i.qd, align 8, !tbaa !84
end_hunk_1
begin_hunk_2_@dlagtm_:bb.a
  %i.rg = getelementptr [8 x i8], ptr %invariant.gep565, i64 %index963 ; 2 uses
  %i.rh = getelementptr i8, ptr %i.rg, i64 8
  %i.ri = getelementptr i8, ptr %i.rg, i64 40
  %wide.load968 = load <4 x double>, ptr %i.rh, align 8, !tbaa !84, !alias.scope !107
  %wide.load969 = load <4 x double>, ptr %i.ri, align 8, !tbaa !84, !alias.scope !107
  %i.rj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load966, <4 x double> %wide.load968, <4 x double> %wide.load964.a)
  %i.rk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load967, <4 x double> %wide.load969, <4 x double> %wide.load965.a)
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.rb ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  %wide.load970 = load <4 x double>, ptr %i.rl, align 8, !tbaa !84, !alias.scope !108
  %wide.load971 = load <4 x double>, ptr %i.rm, align 8, !tbaa !84, !alias.scope !108
  %i.rn = getelementptr [8 x i8], ptr %invariant.gep567, i64 %i.rb ; 2 uses
  %i.ro = getelementptr i8, ptr %i.rn, i64 32
  %wide.load972 = load <4 x double>, ptr %i.rn, align 8, !tbaa !84, !alias.scope !107
  %wide.load973 = load <4 x double>, ptr %i.ro, align 8, !tbaa !84, !alias.scope !107
  %i.rp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load970, <4 x double> %wide.load972, <4 x double> %i.rj)
  %i.rq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load971, <4 x double> %wide.load973, <4 x double> %i.rk)
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.rb ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  %wide.load974 = load <4 x double>, ptr %i.rr, align 8, !tbaa !84, !alias.scope !109
  %wide.load975 = load <4 x double>, ptr %i.rs, align 8, !tbaa !84, !alias.scope !109
  %i.rt = getelementptr [8 x i8], ptr %invariant.gep569, i64 %index963 ; 2 uses
  %i.ru = getelementptr i8, ptr %i.rt, i64 24
  %i.rv = getelementptr i8, ptr %i.rt, i64 56
  %wide.load976 = load <4 x double>, ptr %i.ru, align 8, !tbaa !84, !alias.scope !107
  %wide.load977 = load <4 x double>, ptr %i.rv, align 8, !tbaa !84, !alias.scope !107
  %i.rw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load974, <4 x double> %wide.load976, <4 x double> %i.rp)
  %i.rx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load975, <4 x double> %wide.load977, <4 x double> %i.rq)
  store <4 x double> %i.rw, ptr %i.rc, align 8, !tbaa !84, !alias.scope !104, !noalias !105
  store <4 x double> %i.rx, ptr %i.rd, align 8, !tbaa !84, !alias.scope !104, !noalias !105
  %index.next978 = add nuw i64 %index963, 8       ; 2 uses
  %i.ry = icmp eq i64 %index.next978, %n.vec961
  br i1 %i.ry, label %middle.block979, label %vector.body962, !llvm.loop !45

middle.block979:                                  ; preds = %vector.body962
  br i1 %cmp.n980, label %.loopexit, label %.lr.ph416.preheader1053

.lr.ph416.preheader1053:                          ; preds = %.lr.ph416.preheader, %middle.block979
  %indvars.iv486.ph = phi i64 [ %i.mr, %middle.block979 ], [ 2, %.lr.ph416.preheader ] ; 9 uses
  %i.rz = sub nsw i64 %wide.trip.count489, %indvars.iv486.ph
  %xtraiter1082 = and i64 %i.rz, 1
  %lcmp.mod1083.not = icmp eq i64 %xtraiter1082, 0
  br i1 %lcmp.mod1083.not, label %.lr.ph416.prol.loopexit, label %.lr.ph416.prol

.lr.ph416.prol:                                   ; preds = %.lr.ph416.preheader1053
  %gep564.prol = getelementptr [8 x i8], ptr %invariant.gep563, i64 %indvars.iv486.ph ; 2 uses
  %i.sa = load double, ptr %gep564.prol, align 8, !tbaa !84
  %i.sb = add nsw i64 %indvars.iv486.ph, -1       ; 2 uses
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.sb
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !84
  %gep566.prol = getelementptr [8 x i8], ptr %invariant.gep565, i64 %i.sb
  %i.se = load double, ptr %gep566.prol, align 8, !tbaa !84
  %i.sf = tail call double @llvm.fmuladd.f64(double %i.sd, double %i.se, double %i.sa)
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv486.ph
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !84
  %gep568.prol = getelementptr [8 x i8], ptr %invariant.gep567, i64 %indvars.iv486.ph
  %i.si = load double, ptr %gep568.prol, align 8, !tbaa !84
  %i.sj = tail call double @llvm.fmuladd.f64(double %i.sh, double %i.si, double %i.sf)
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv486.ph
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !84
  %indvars.iv.next487.prol = add nuw nsw i64 %indvars.iv486.ph, 1 ; 2 uses
  %gep570.prol = getelementptr [8 x i8], ptr %invariant.gep569, i64 %indvars.iv.next487.prol
  %i.sm = load double, ptr %gep570.prol, align 8, !tbaa !84
  %i.sn = tail call double @llvm.fmuladd.f64(double %i.sl, double %i.sm, double %i.sj)
  store double %i.sn, ptr %gep564.prol, align 8, !tbaa !84
  br label %.lr.ph416.prol.loopexit

.lr.ph416.prol.loopexit:                          ; preds = %.lr.ph416.prol, %.lr.ph416.preheader1053
  %indvars.iv486.unr = phi i64 [ %indvars.iv486.ph, %.lr.ph416.preheader1053 ], [ %indvars.iv.next487.prol, %.lr.ph416.prol ]
  %i.so = icmp eq i64 %indvars.iv486.ph, %i.ms
  br i1 %i.so, label %.loopexit, label %.lr.ph416

.lr.ph416:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416
  %indvars.iv486 = phi i64 [ %indvars.iv.next487.1, %.lr.ph416 ], [ %indvars.iv486.unr, %.lr.ph416.prol.loopexit ] ; 11 uses
  %gep564 = getelementptr [8 x i8], ptr %invariant.gep563, i64 %indvars.iv486 ; 2 uses
  %i.sp = load double, ptr %gep564, align 8, !tbaa !84
  %i.sq = add nsw i64 %indvars.iv486, -1          ; 2 uses
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.sq
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !84
  %gep566 = getelementptr [8 x i8], ptr %invariant.gep565, i64 %i.sq
  %i.st = load double, ptr %gep566, align 8, !tbaa !84
  %i.su = tail call double @llvm.fmuladd.f64(double %i.ss, double %i.st, double %i.sp)
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv486
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !84
  %gep568 = getelementptr [8 x i8], ptr %invariant.gep567, i64 %indvars.iv486
  %i.sx = load double, ptr %gep568, align 8, !tbaa !84
  %i.sy = tail call double @llvm.fmuladd.f64(double %i.sw, double %i.sx, double %i.su)
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv486
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !84
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 3 uses
  %gep570 = getelementptr [8 x i8], ptr %invariant.gep569, i64 %indvars.iv.next487
  %i.tb = load double, ptr %gep570, align 8, !tbaa !84
  %i.tc = tail call double @llvm.fmuladd.f64(double %i.ta, double %i.tb, double %i.sy)
  store double %i.tc, ptr %gep564, align 8, !tbaa !84
  %gep564.1 = getelementptr [8 x i8], ptr %invariant.gep563, i64 %indvars.iv.next487 ; 2 uses
  %i.td = load double, ptr %gep564.1, align 8, !tbaa !84
  %i.te = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv486
  %i.tf = load double, ptr %i.te, align 8, !tbaa !84
  %gep566.1 = getelementptr [8 x i8], ptr %invariant.gep565, i64 %indvars.iv486
  %i.tg = load double, ptr %gep566.1, align 8, !tbaa !84
  %i.th = tail call double @llvm.fmuladd.f64(double %i.tf, double %i.tg, double %i.td)
  %i.ti = getelementptr [8 x i8], ptr %5, i64 %indvars.iv486
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !84
  %gep568.1 = getelementptr [8 x i8], ptr %invariant.gep567, i64 %indvars.iv.next487
  %i.tk = load double, ptr %gep568.1, align 8, !tbaa !84
  %i.tl = tail call double @llvm.fmuladd.f64(double %i.tj, double %i.tk, double %i.th)
  %i.tm = getelementptr [8 x i8], ptr %4, i64 %indvars.iv486
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !84
  %indvars.iv.next487.1 = add nuw nsw i64 %indvars.iv486, 2 ; 3 uses
  %gep570.1 = getelementptr [8 x i8], ptr %invariant.gep569, i64 %indvars.iv.next487.1
  %i.to = load double, ptr %gep570.1, align 8, !tbaa !84
  %i.tp = tail call double @llvm.fmuladd.f64(double %i.tn, double %i.to, double %i.tl)
  store double %i.tp, ptr %gep564.1, align 8, !tbaa !84
  %exitcond490.not.1 = icmp eq i64 %indvars.iv.next487.1, %wide.trip.count489
  br i1 %exitcond490.not.1, label %.loopexit, label %.lr.ph416, !llvm.loop !46

.loopexit:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416, %middle.block979, %.lr.ph420.split
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond495.not = icmp eq i64 %indvars.iv.next492, %wide.trip.count499
  br i1 %exitcond495.not, label %.loopexit371, label %.lr.ph420.split, !llvm.loop !47

bb.i:                                             ; preds = %.loopexit378
  %i.tq = fcmp oeq double %i.bi, -1.000000e+00
  br i1 %i.tq, label %bb.j, label %.loopexit371

bb.j:                                             ; preds = %bb.i
  %i.tr = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %.not360 = icmp eq i32 %i.tr, 0
  %i.ts = load i32, ptr %2, align 4, !tbaa !82    ; 11 uses
  %.not361401 = icmp slt i32 %i.ts, 1             ; 2 uses
  br i1 %.not360, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not361401, label %.loopexit371, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.k
  %i.tt = load i32, ptr %1, align 4, !tbaa !82    ; 5 uses
  %i.tu = icmp eq i32 %i.tt, 1
  %i.tv = add nsw i32 %i.tt, -1
  %i.tw = sext i32 %i.tv to i64                   ; 2 uses
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.tw
  %i.ty = sext i32 %i.tt to i64                   ; 3 uses
  %i.tz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ty
  %.not364.not390 = icmp sgt i32 %i.tt, 2
  %i.ua = add nuw i32 %i.ts, 1
  %wide.trip.count454 = zext i32 %i.ua to i64     ; 5 uses
  br i1 %i.tu, label %iter.check682, label %.lr.ph396.split.preheader

.lr.ph396.split.preheader:                        ; preds = %.lr.ph396
  %i.ub = sext i32 %i.g to i64                    ; 3 uses
  %i.uc = sext i32 %i.d to i64                    ; 3 uses
  %invariant.gep529 = getelementptr [8 x i8], ptr %i.i, i64 %i.ty
  %invariant.gep531 = getelementptr [8 x i8], ptr %i.f, i64 %i.tw
  %invariant.gep533 = getelementptr [8 x i8], ptr %i.f, i64 %i.ty
  %wide.trip.count444 = zext i32 %i.tt to i64     ; 5 uses
  %i.ud = shl nsw i64 %i.ub, 3
  %i.ue = shl nsw i64 %i.h, 3                     ; 2 uses
  %i.uf = getelementptr i8, ptr %10, i64 %i.ud
  %i.ug = getelementptr i8, ptr %i.uf, i64 %i.ue
  %i.uh = shl nuw nsw i64 %wide.trip.count454, 3
  %i.ui = add nsw i64 %i.uh, -8                   ; 2 uses
  %i.uj = mul i64 %i.ui, %i.ub
  %i.uk = shl nuw nsw i64 %wide.trip.count444, 3  ; 4 uses
  %i.ul = getelementptr i8, ptr %10, i64 %i.uj
  %i.um = getelementptr i8, ptr %i.ul, i64 %i.ue
  %scevgep596 = getelementptr i8, ptr %i.um, i64 %i.uk
  %i.un = getelementptr i8, ptr %4, i64 %i.uk
  %i.uo = shl nsw i64 %i.uc, 3
  %i.up = shl nsw i64 %i.e, 3                     ; 2 uses
  %i.uq = getelementptr i8, ptr %7, i64 %i.uo
  %i.ur = getelementptr i8, ptr %i.uq, i64 %i.up
  %i.us = insertelement <4 x ptr> poison, ptr %4, i64 0
  %i.ut = insertelement <4 x ptr> %i.us, ptr %i.ur, i64 1
  %i.uu = insertelement <4 x ptr> %i.ut, ptr %i.ug, i64 2 ; 2 uses
  %i.uv = insertelement <4 x ptr> %i.uu, ptr %6, i64 3
  %i.uw = getelementptr i8, <4 x ptr> %i.uv, <4 x i64> <i64 0, i64 8, i64 16, i64 8>
  %i.ux = mul i64 %i.ui, %i.uc
  %i.uy = getelementptr i8, ptr %7, i64 %i.ux
  %i.uz = getelementptr i8, ptr %i.uy, i64 %i.up
  %i.va = getelementptr i8, ptr %i.uz, i64 %i.uk
  %i.vb = insertelement <2 x ptr> poison, ptr %i.un, i64 0
  %i.vc = insertelement <2 x ptr> %i.vb, ptr %i.va, i64 1
  %i.vd = getelementptr i8, <2 x ptr> %i.vc, <2 x i64> <i64 -16, i64 8>
  %i.ve = shufflevector <4 x ptr> %i.uu, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.vf = insertelement <2 x ptr> %i.ve, ptr %5, i64 1
  %i.vg = getelementptr i8, <2 x ptr> %i.vf, <2 x i64> <i64 16, i64 8>
  %i.vh = shufflevector <2 x ptr> %i.vg, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.vi = add nsw i64 %i.uk, -8                   ; 2 uses
  %scevgep601 = getelementptr i8, ptr %5, i64 %i.vi
  %scevgep603 = getelementptr i8, ptr %6, i64 %i.vi
  %i.vj = shufflevector <2 x ptr> %i.vd, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vk = add nsw i64 %wide.trip.count444, -2     ; 3 uses
  %min.iters.check619 = icmp ult i64 %i.vk, 8
  %i.vl = insertelement <4 x ptr> %i.vj, ptr %scevgep596, i64 2 ; 2 uses
  %i.vm = insertelement <4 x ptr> %i.vl, ptr %scevgep603, i64 3
  %i.vn = icmp ult <4 x ptr> %i.vh, %i.vm
  %i.vo = shufflevector <4 x ptr> %i.vl, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.vp = insertelement <2 x ptr> %i.vo, ptr %scevgep601, i64 1
  %i.vq = shufflevector <2 x ptr> %i.vp, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.vr = icmp ult <4 x ptr> %i.uw, %i.vq
  %14 = or i32 %i.d, %i.g
  %i.vs = and <4 x i1> %i.vn, %i.vr
  %i.vt = bitcast <4 x i1> %i.vs to i4
  %i.vu = icmp ne i4 %i.vt, 0
  %i.vv = icmp slt i32 %14, 0
  %op.rdx1049 = or i1 %i.vu, %i.vv
  %n.vec621 = and i64 %i.vk, -8                   ; 3 uses
  %i.vw = or disjoint i64 %n.vec621, 2
  %cmp.n640 = icmp eq i64 %i.vk, %n.vec621
  %i.vx = add nsw i64 %wide.trip.count444, -1
  br label %.lr.ph396.split

iter.check682:                                    ; preds = %.lr.ph396
  %i.vy = sext i32 %i.d to i64                    ; 5 uses
  %i.vz = sext i32 %i.g to i64                    ; 5 uses
  %i.wa = zext nneg i32 %i.ts to i64              ; 5 uses
  %min.iters.check654 = icmp ult i32 %i.ts, 4
  br i1 %min.iters.check654, label %.lr.ph396.split.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check682
  %ident.check = icmp ne i32 %i.g, 1
  %ident.check641 = icmp ne i32 %i.d, 1
  %i.wb = or i1 %ident.check, %ident.check641
  br i1 %i.wb, label %.lr.ph396.split.us.preheader, label %vector.memcheck655

vector.memcheck655:                               ; preds = %vector.scevcheck
  %i.wc = shl nuw nsw i64 %wide.trip.count454, 3
  %i.wd = add nsw i64 %i.wc, -8                   ; 2 uses
  %i.we = getelementptr i8, ptr %10, i64 %i.wd    ; 2 uses
  %i.wf = getelementptr i8, ptr %5, i64 8
  %i.wg = getelementptr i8, ptr %7, i64 %i.wd
  %bound0656.a = icmp ult ptr %10, %i.wf
  %bound1657.a = icmp ult ptr %5, %i.we
  %found.conflict658.a = and i1 %bound0656.a, %bound1657.a
  %bound0659 = icmp ult ptr %10, %i.wg
  %bound1660 = icmp ult ptr %7, %i.we
  %found.conflict661 = and i1 %bound0659, %bound1660
  %conflict.rdx662 = or i1 %found.conflict658.a, %found.conflict661
  br i1 %conflict.rdx662, label %.lr.ph396.split.us.preheader, label %vector.main.loop.iter.check663

vector.main.loop.iter.check663:                   ; preds = %vector.memcheck655
  %min.iters.check664 = icmp ult i32 %i.ts, 16
  br i1 %min.iters.check664, label %vec.epilog.ph686, label %vector.ph665

vector.ph665:                                     ; preds = %vector.main.loop.iter.check663
  %i.wh = and i64 %i.wa, 12
  %n.vec666 = and i64 %i.wa, 2147483632           ; 4 uses
  %i.wi = or disjoint i64 %n.vec666, 1
  %i.wj = load double, ptr %5, align 8, !tbaa !84, !alias.scope !110
  %.scalar = fneg double %i.wj
  %i.wk = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.wl = shufflevector <4 x double> %i.wk, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body667

vector.body667:                                   ; preds = %vector.ph665, %vector.body667
  %index668 = phi i64 [ 0, %vector.ph665 ], [ %index.next677, %vector.body667 ] ; 2 uses
  %i.wm = or disjoint i64 %index668, 1            ; 2 uses
  %i.wn = getelementptr [8 x i8], ptr %i.f, i64 %i.wm ; 4 uses
  %i.wo = getelementptr i8, ptr %i.wn, i64 8
  %i.wp = getelementptr i8, ptr %i.wn, i64 40
  %i.wq = getelementptr i8, ptr %i.wn, i64 72
  %i.wr = getelementptr i8, ptr %i.wn, i64 104
  %wide.load669.a = load <4 x double>, ptr %i.wo, align 8, !tbaa !84, !alias.scope !111
  %wide.load670.a = load <4 x double>, ptr %i.wp, align 8, !tbaa !84, !alias.scope !111
  %wide.load671.a = load <4 x double>, ptr %i.wq, align 8, !tbaa !84, !alias.scope !111
  %wide.load672.a = load <4 x double>, ptr %i.wr, align 8, !tbaa !84, !alias.scope !111
  %i.ws = getelementptr [8 x i8], ptr %i.i, i64 %i.wm ; 4 uses
  %i.wt = getelementptr i8, ptr %i.ws, i64 8      ; 2 uses
  %i.wu = getelementptr i8, ptr %i.ws, i64 40     ; 2 uses
  %i.wv = getelementptr i8, ptr %i.ws, i64 72     ; 2 uses
  %i.ww = getelementptr i8, ptr %i.ws, i64 104    ; 2 uses
  %wide.load673.a = load <4 x double>, ptr %i.wt, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %wide.load674 = load <4 x double>, ptr %i.wu, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %wide.load675 = load <4 x double>, ptr %i.wv, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %wide.load676 = load <4 x double>, ptr %i.ww, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %i.wx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.wl, <4 x double> %wide.load669.a, <4 x double> %wide.load673.a)
  %i.wy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.wl, <4 x double> %wide.load670.a, <4 x double> %wide.load674)
  %i.wz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.wl, <4 x double> %wide.load671.a, <4 x double> %wide.load675)
  %i.xa = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.wl, <4 x double> %wide.load672.a, <4 x double> %wide.load676)
  store <4 x double> %i.wx, ptr %i.wt, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  store <4 x double> %i.wy, ptr %i.wu, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  store <4 x double> %i.wz, ptr %i.wv, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  store <4 x double> %i.xa, ptr %i.ww, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %index.next677 = add nuw i64 %index668, 16      ; 2 uses
  %i.xb = icmp eq i64 %index.next677, %n.vec666
  br i1 %i.xb, label %middle.block678, label %vector.body667, !llvm.loop !52

middle.block678:                                  ; preds = %vector.body667
  %cmp.n679 = icmp eq i64 %n.vec666, %i.wa
  br i1 %cmp.n679, label %.loopexit371, label %vec.epilog.iter.check684

vec.epilog.iter.check684:                         ; preds = %middle.block678
  %min.epilog.iters.check685 = icmp eq i64 %i.wh, 0
  br i1 %min.epilog.iters.check685, label %.lr.ph396.split.us.preheader, label %vec.epilog.ph686, !prof !88

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check663, %vec.epilog.iter.check684
  %vec.epilog.resume.val680 = phi i64 [ %n.vec666, %vec.epilog.iter.check684 ], [ 0, %vector.main.loop.iter.check663 ]
  %n.vec687 = and i64 %i.wa, 2147483644           ; 3 uses
  %i.xc = or disjoint i64 %n.vec687, 1
  %i.xd = load double, ptr %5, align 8, !tbaa !84, !alias.scope !110
  %.scalar1050 = fneg double %i.xd
  %i.xe = insertelement <4 x double> poison, double %.scalar1050, i64 0
  %i.xf = shufflevector <4 x double> %i.xe, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body690

vec.epilog.vector.body690:                        ; preds = %vec.epilog.vector.body690, %vec.epilog.ph686
  %index691 = phi i64 [ %vec.epilog.resume.val680, %vec.epilog.ph686 ], [ %index.next694, %vec.epilog.vector.body690 ] ; 2 uses
  %i.xg = or disjoint i64 %index691, 1            ; 2 uses
  %i.xh = getelementptr [8 x i8], ptr %i.f, i64 %i.xg
  %i.xi = getelementptr i8, ptr %i.xh, i64 8
  %wide.load692 = load <4 x double>, ptr %i.xi, align 8, !tbaa !84, !alias.scope !111
  %i.xj = getelementptr [8 x i8], ptr %i.i, i64 %i.xg
  %i.xk = getelementptr i8, ptr %i.xj, i64 8      ; 2 uses
  %wide.load693 = load <4 x double>, ptr %i.xk, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %i.xl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.xf, <4 x double> %wide.load692, <4 x double> %wide.load693)
  store <4 x double> %i.xl, ptr %i.xk, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %index.next694 = add nuw i64 %index691, 4       ; 2 uses
  %i.xm = icmp eq i64 %index.next694, %n.vec687
  br i1 %i.xm, label %vec.epilog.middle.block695, label %vec.epilog.vector.body690, !llvm.loop !53

vec.epilog.middle.block695:                       ; preds = %vec.epilog.vector.body690
  %cmp.n696 = icmp eq i64 %n.vec687, %i.wa
  br i1 %cmp.n696, label %.loopexit371, label %.lr.ph396.split.us.preheader

.lr.ph396.split.us.preheader:                     ; preds = %iter.check682, %vector.scevcheck, %vector.memcheck655, %vec.epilog.iter.check684, %vec.epilog.middle.block695
  %indvars.iv451.ph = phi i64 [ 1, %iter.check682 ], [ 1, %vector.scevcheck ], [ 1, %vector.memcheck655 ], [ %i.wi, %vec.epilog.iter.check684 ], [ %i.xc, %vec.epilog.middle.block695 ] ; 4 uses
  %i.xn = sub i64 %wide.trip.count454, %indvars.iv451.ph
  %i.xo = zext nneg i32 %i.ts to i64
  %i.xp = sub i64 %i.xo, %indvars.iv451.ph
  %xtraiter1068 = and i64 %i.xn, 3                ; 2 uses
  %lcmp.mod1069.not = icmp eq i64 %xtraiter1068, 0
  br i1 %lcmp.mod1069.not, label %.lr.ph396.split.us.prol.loopexit, label %.lr.ph396.split.us.prol

.lr.ph396.split.us.prol:                          ; preds = %.lr.ph396.split.us.preheader, %.lr.ph396.split.us.prol
  %indvars.iv451.prol = phi i64 [ %indvars.iv.next452.prol, %.lr.ph396.split.us.prol ], [ %indvars.iv451.ph, %.lr.ph396.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph396.split.us.prol ], [ 0, %.lr.ph396.split.us.preheader ]
  %i.xq = load double, ptr %5, align 8, !tbaa !84
  %i.xr = mul nsw i64 %indvars.iv451.prol, %i.vy
  %i.xs = getelementptr [8 x i8], ptr %i.f, i64 %i.xr
  %i.xt = getelementptr i8, ptr %i.xs, i64 8
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !84
  %i.xv = mul nsw i64 %indvars.iv451.prol, %i.vz
  %i.xw = getelementptr [8 x i8], ptr %i.i, i64 %i.xv
  %i.xx = getelementptr i8, ptr %i.xw, i64 8      ; 2 uses
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !84
  %i.xz = fneg double %i.xq
  %i.ya = tail call double @llvm.fmuladd.f64(double %i.xz, double %i.xu, double %i.xy)
  store double %i.ya, ptr %i.xx, align 8, !tbaa !84
  %indvars.iv.next452.prol = add nuw nsw i64 %indvars.iv451.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1068
  br i1 %prol.iter.cmp.not, label %.lr.ph396.split.us.prol.loopexit, label %.lr.ph396.split.us.prol, !llvm.loop !54

.lr.ph396.split.us.prol.loopexit:                 ; preds = %.lr.ph396.split.us.prol, %.lr.ph396.split.us.preheader
  %indvars.iv451.unr = phi i64 [ %indvars.iv451.ph, %.lr.ph396.split.us.preheader ], [ %indvars.iv.next452.prol, %.lr.ph396.split.us.prol ]
  %i.yb = icmp ult i64 %i.xp, 3
  br i1 %i.yb, label %.loopexit371, label %.lr.ph396.split.us

.lr.ph396.split.us:                               ; preds = %.lr.ph396.split.us.prol.loopexit, %.lr.ph396.split.us
  %indvars.iv451 = phi i64 [ %indvars.iv.next452.3, %.lr.ph396.split.us ], [ %indvars.iv451.unr, %.lr.ph396.split.us.prol.loopexit ] ; 6 uses
  %i.yc = load double, ptr %5, align 8, !tbaa !84
  %i.yd = mul nsw i64 %indvars.iv451, %i.vy
  %i.ye = getelementptr [8 x i8], ptr %i.f, i64 %i.yd
  %i.yf = getelementptr i8, ptr %i.ye, i64 8
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !84
  %i.yh = mul nsw i64 %indvars.iv451, %i.vz
  %i.yi = getelementptr [8 x i8], ptr %i.i, i64 %i.yh
  %i.yj = getelementptr i8, ptr %i.yi, i64 8      ; 2 uses
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !84
  %i.yl = fneg double %i.yc
  %i.ym = tail call double @llvm.fmuladd.f64(double %i.yl, double %i.yg, double %i.yk)
  store double %i.ym, ptr %i.yj, align 8, !tbaa !84
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %i.yn = load double, ptr %5, align 8, !tbaa !84
  %i.yo = mul nsw i64 %indvars.iv.next452, %i.vy
  %i.yp = getelementptr [8 x i8], ptr %i.f, i64 %i.yo
  %i.yq = getelementptr i8, ptr %i.yp, i64 8
  %i.yr = load double, ptr %i.yq, align 8, !tbaa !84
  %i.ys = mul nsw i64 %indvars.iv.next452, %i.vz
  %i.yt = getelementptr [8 x i8], ptr %i.i, i64 %i.ys
  %i.yu = getelementptr i8, ptr %i.yt, i64 8      ; 2 uses
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !84
  %i.yw = fneg double %i.yn
  %i.yx = tail call double @llvm.fmuladd.f64(double %i.yw, double %i.yr, double %i.yv)
  store double %i.yx, ptr %i.yu, align 8, !tbaa !84
  %indvars.iv.next452.1 = add nuw nsw i64 %indvars.iv451, 2 ; 2 uses
  %i.yy = load double, ptr %5, align 8, !tbaa !84
  %i.yz = mul nsw i64 %indvars.iv.next452.1, %i.vy
  %i.za = getelementptr [8 x i8], ptr %i.f, i64 %i.yz
  %i.zb = getelementptr i8, ptr %i.za, i64 8
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !84
  %i.zd = mul nsw i64 %indvars.iv.next452.1, %i.vz
  %i.ze = getelementptr [8 x i8], ptr %i.i, i64 %i.zd
  %i.zf = getelementptr i8, ptr %i.ze, i64 8      ; 2 uses
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !84
  %i.zh = fneg double %i.yy
  %i.zi = tail call double @llvm.fmuladd.f64(double %i.zh, double %i.zc, double %i.zg)
  store double %i.zi, ptr %i.zf, align 8, !tbaa !84
  %indvars.iv.next452.2 = add nuw nsw i64 %indvars.iv451, 3 ; 2 uses
  %i.zj = load double, ptr %5, align 8, !tbaa !84
  %i.zk = mul nsw i64 %indvars.iv.next452.2, %i.vy
  %i.zl = getelementptr [8 x i8], ptr %i.f, i64 %i.zk
  %i.zm = getelementptr i8, ptr %i.zl, i64 8
  %i.zn = load double, ptr %i.zm, align 8, !tbaa !84
end_hunk_2
begin_hunk_3_@dlagtm_:bb.a
  %wide.load629.a = load <4 x double>, ptr %i.aba, align 8, !tbaa !84, !alias.scope !117
  %i.abb = fneg <4 x double> %wide.load626.a
  %i.abc = fneg <4 x double> %wide.load627.a
  %i.abd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.abb, <4 x double> %wide.load628.a, <4 x double> %wide.load624.a)
  %i.abe = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.abc, <4 x double> %wide.load629.a, <4 x double> %wide.load625.a)
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aat ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 32
  %wide.load630.a = load <4 x double>, ptr %i.abf, align 8, !tbaa !84, !alias.scope !118
  %wide.load631.a = load <4 x double>, ptr %i.abg, align 8, !tbaa !84, !alias.scope !118
  %i.abh = getelementptr [8 x i8], ptr %invariant.gep525, i64 %i.aat ; 2 uses
  %i.abi = getelementptr i8, ptr %i.abh, i64 32
  %wide.load632.a = load <4 x double>, ptr %i.abh, align 8, !tbaa !84, !alias.scope !117
  %wide.load633.a = load <4 x double>, ptr %i.abi, align 8, !tbaa !84, !alias.scope !117
  %i.abj = fneg <4 x double> %wide.load630.a
  %i.abk = fneg <4 x double> %wide.load631.a
  %i.abl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.abj, <4 x double> %wide.load632.a, <4 x double> %i.abd)
  %i.abm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.abk, <4 x double> %wide.load633.a, <4 x double> %i.abe)
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aat ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 32
  %wide.load634.a = load <4 x double>, ptr %i.abn, align 8, !tbaa !84, !alias.scope !119
  %wide.load635 = load <4 x double>, ptr %i.abo, align 8, !tbaa !84, !alias.scope !119
  %i.abp = getelementptr [8 x i8], ptr %invariant.gep527, i64 %index623 ; 2 uses
  %i.abq = getelementptr i8, ptr %i.abp, i64 24
  %i.abr = getelementptr i8, ptr %i.abp, i64 56
  %wide.load636 = load <4 x double>, ptr %i.abq, align 8, !tbaa !84, !alias.scope !117
  %wide.load637 = load <4 x double>, ptr %i.abr, align 8, !tbaa !84, !alias.scope !117
  %i.abs = fneg <4 x double> %wide.load634.a
  %i.abt = fneg <4 x double> %wide.load635
  %i.abu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.abs, <4 x double> %wide.load636, <4 x double> %i.abl)
  %i.abv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.abt, <4 x double> %wide.load637, <4 x double> %i.abm)
  store <4 x double> %i.abu, ptr %i.aau, align 8, !tbaa !84, !alias.scope !114, !noalias !115
  store <4 x double> %i.abv, ptr %i.aav, align 8, !tbaa !84, !alias.scope !114, !noalias !115
  %index.next638 = add nuw i64 %index623, 8       ; 2 uses
  %i.abw = icmp eq i64 %index.next638, %n.vec621
  br i1 %i.abw, label %middle.block639, label %vector.body622, !llvm.loop !62

middle.block639:                                  ; preds = %vector.body622
  br i1 %cmp.n640, label %.loopexit376, label %.lr.ph.preheader1062

.lr.ph.preheader1062:                             ; preds = %.lr.ph.preheader, %middle.block639
  %indvars.iv441.ph = phi i64 [ %i.vw, %middle.block639 ], [ 2, %.lr.ph.preheader ] ; 9 uses
  %i.abx = sub nsw i64 %wide.trip.count444, %indvars.iv441.ph
  %xtraiter1066 = and i64 %i.abx, 1
  %lcmp.mod1067.not = icmp eq i64 %xtraiter1066, 0
  br i1 %lcmp.mod1067.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1062
  %gep522.prol = getelementptr [8 x i8], ptr %invariant.gep521, i64 %indvars.iv441.ph ; 2 uses
  %i.aby = load double, ptr %gep522.prol, align 8, !tbaa !84
  %i.abz = add nsw i64 %indvars.iv441.ph, -1      ; 2 uses
  %i.aca = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.abz
  %i.acb = load double, ptr %i.aca, align 8, !tbaa !84
  %gep524.prol = getelementptr [8 x i8], ptr %invariant.gep523, i64 %i.abz
  %i.acc = load double, ptr %gep524.prol, align 8, !tbaa !84
  %i.acd = fneg double %i.acb
  %i.ace = tail call double @llvm.fmuladd.f64(double %i.acd, double %i.acc, double %i.aby)
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv441.ph
  %i.acg = load double, ptr %i.acf, align 8, !tbaa !84
  %gep526.prol = getelementptr [8 x i8], ptr %invariant.gep525, i64 %indvars.iv441.ph
  %i.ach = load double, ptr %gep526.prol, align 8, !tbaa !84
  %i.aci = fneg double %i.acg
  %i.acj = tail call double @llvm.fmuladd.f64(double %i.aci, double %i.ach, double %i.ace)
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv441.ph
  %i.acl = load double, ptr %i.ack, align 8, !tbaa !84
  %indvars.iv.next442.prol = add nuw nsw i64 %indvars.iv441.ph, 1 ; 2 uses
  %gep528.prol = getelementptr [8 x i8], ptr %invariant.gep527, i64 %indvars.iv.next442.prol
  %i.acm = load double, ptr %gep528.prol, align 8, !tbaa !84
  %i.acn = fneg double %i.acl
  %i.aco = tail call double @llvm.fmuladd.f64(double %i.acn, double %i.acm, double %i.acj)
  store double %i.aco, ptr %gep522.prol, align 8, !tbaa !84
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1062
  %indvars.iv441.unr = phi i64 [ %indvars.iv441.ph, %.lr.ph.preheader1062 ], [ %indvars.iv.next442.prol, %.lr.ph.prol ]
  %i.acp = icmp eq i64 %indvars.iv441.ph, %i.vx
  br i1 %i.acp, label %.loopexit376, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv441 = phi i64 [ %indvars.iv.next442.1, %.lr.ph ], [ %indvars.iv441.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %gep522 = getelementptr [8 x i8], ptr %invariant.gep521, i64 %indvars.iv441 ; 2 uses
  %i.acq = load double, ptr %gep522, align 8, !tbaa !84
  %i.acr = add nsw i64 %indvars.iv441, -1         ; 2 uses
  %i.acs = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.acr
  %i.act = load double, ptr %i.acs, align 8, !tbaa !84
  %gep524 = getelementptr [8 x i8], ptr %invariant.gep523, i64 %i.acr
  %i.acu = load double, ptr %gep524, align 8, !tbaa !84
  %i.acv = fneg double %i.act
  %i.acw = tail call double @llvm.fmuladd.f64(double %i.acv, double %i.acu, double %i.acq)
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv441
  %i.acy = load double, ptr %i.acx, align 8, !tbaa !84
  %gep526 = getelementptr [8 x i8], ptr %invariant.gep525, i64 %indvars.iv441
  %i.acz = load double, ptr %gep526, align 8, !tbaa !84
  %i.ada = fneg double %i.acy
  %i.adb = tail call double @llvm.fmuladd.f64(double %i.ada, double %i.acz, double %i.acw)
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv441
  %i.add = load double, ptr %i.adc, align 8, !tbaa !84
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %gep528 = getelementptr [8 x i8], ptr %invariant.gep527, i64 %indvars.iv.next442
  %i.ade = load double, ptr %gep528, align 8, !tbaa !84
  %i.adf = fneg double %i.add
  %i.adg = tail call double @llvm.fmuladd.f64(double %i.adf, double %i.ade, double %i.adb)
  store double %i.adg, ptr %gep522, align 8, !tbaa !84
  %gep522.1 = getelementptr [8 x i8], ptr %invariant.gep521, i64 %indvars.iv.next442 ; 2 uses
  %i.adh = load double, ptr %gep522.1, align 8, !tbaa !84
  %i.adi = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv441
  %i.adj = load double, ptr %i.adi, align 8, !tbaa !84
  %gep524.1 = getelementptr [8 x i8], ptr %invariant.gep523, i64 %indvars.iv441
  %i.adk = load double, ptr %gep524.1, align 8, !tbaa !84
  %i.adl = fneg double %i.adj
  %i.adm = tail call double @llvm.fmuladd.f64(double %i.adl, double %i.adk, double %i.adh)
  %i.adn = getelementptr [8 x i8], ptr %5, i64 %indvars.iv441
  %i.ado = load double, ptr %i.adn, align 8, !tbaa !84
  %gep526.1 = getelementptr [8 x i8], ptr %invariant.gep525, i64 %indvars.iv.next442
  %i.adp = load double, ptr %gep526.1, align 8, !tbaa !84
  %i.adq = fneg double %i.ado
  %i.adr = tail call double @llvm.fmuladd.f64(double %i.adq, double %i.adp, double %i.adm)
  %i.ads = getelementptr [8 x i8], ptr %6, i64 %indvars.iv441
  %i.adt = load double, ptr %i.ads, align 8, !tbaa !84
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 3 uses
  %gep528.1 = getelementptr [8 x i8], ptr %invariant.gep527, i64 %indvars.iv.next442.1
  %i.adu = load double, ptr %gep528.1, align 8, !tbaa !84
  %i.adv = fneg double %i.adt
  %i.adw = tail call double @llvm.fmuladd.f64(double %i.adv, double %i.adu, double %i.adr)
  store double %i.adw, ptr %gep522.1, align 8, !tbaa !84
  %exitcond445.not.1 = icmp eq i64 %indvars.iv.next442.1, %wide.trip.count444
  br i1 %exitcond445.not.1, label %.loopexit376, label %.lr.ph, !llvm.loop !63

.loopexit376:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block639, %.lr.ph396.split
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %exitcond450.not = icmp eq i64 %indvars.iv.next447, %wide.trip.count454
  br i1 %exitcond450.not, label %.loopexit371, label %.lr.ph396.split, !llvm.loop !64

bb.l:                                             ; preds = %bb.j
  br i1 %.not361401, label %.loopexit371, label %.lr.ph404

.lr.ph404:                                        ; preds = %bb.l
  %i.adx = load i32, ptr %1, align 4, !tbaa !82   ; 5 uses
  %i.ady = icmp eq i32 %i.adx, 1
  %i.adz = add nsw i32 %i.adx, -1
  %i.aea = sext i32 %i.adz to i64                 ; 2 uses
  %i.aeb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aea
  %i.aec = sext i32 %i.adx to i64                 ; 3 uses
  %i.aed = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.aec
  %.not362.not397 = icmp sgt i32 %i.adx, 2
  %i.aee = add nuw i32 %i.ts, 1
  %wide.trip.count469 = zext i32 %i.aee to i64    ; 5 uses
  br i1 %i.ady, label %iter.check797, label %.lr.ph404.split.preheader

.lr.ph404.split.preheader:                        ; preds = %.lr.ph404
  %i.aef = sext i32 %i.g to i64                   ; 3 uses
  %i.aeg = sext i32 %i.d to i64                   ; 3 uses
  %invariant.gep543 = getelementptr [8 x i8], ptr %i.i, i64 %i.aec
  %invariant.gep545 = getelementptr [8 x i8], ptr %i.f, i64 %i.aea
  %invariant.gep547 = getelementptr [8 x i8], ptr %i.f, i64 %i.aec
  %wide.trip.count459 = zext i32 %i.adx to i64    ; 5 uses
  %i.aeh = shl nsw i64 %i.aef, 3
  %i.aei = shl nsw i64 %i.h, 3                    ; 2 uses
  %i.aej = getelementptr i8, ptr %10, i64 %i.aeh
  %i.aek = getelementptr i8, ptr %i.aej, i64 %i.aei
  %i.ael = shl nuw nsw i64 %wide.trip.count469, 3
  %i.aem = add nsw i64 %i.ael, -8                 ; 2 uses
  %i.aen = mul i64 %i.aem, %i.aef
  %i.aeo = shl nuw nsw i64 %wide.trip.count459, 3 ; 4 uses
  %i.aep = getelementptr i8, ptr %10, i64 %i.aen
  %i.aeq = getelementptr i8, ptr %i.aep, i64 %i.aei
  %scevgep700 = getelementptr i8, ptr %i.aeq, i64 %i.aeo
  %i.aer = getelementptr i8, ptr %6, i64 %i.aeo
  %i.aes = shl nsw i64 %i.aeg, 3
  %i.aet = shl nsw i64 %i.e, 3                    ; 2 uses
  %i.aeu = getelementptr i8, ptr %7, i64 %i.aes
  %i.aev = getelementptr i8, ptr %i.aeu, i64 %i.aet
  %i.aew = insertelement <4 x ptr> poison, ptr %6, i64 0
  %i.aex = insertelement <4 x ptr> %i.aew, ptr %i.aev, i64 1
  %i.aey = insertelement <4 x ptr> %i.aex, ptr %i.aek, i64 2 ; 2 uses
  %i.aez = insertelement <4 x ptr> %i.aey, ptr %4, i64 3
  %i.afa = getelementptr i8, <4 x ptr> %i.aez, <4 x i64> <i64 0, i64 8, i64 16, i64 8>
  %i.afb = mul i64 %i.aem, %i.aeg
  %i.afc = getelementptr i8, ptr %7, i64 %i.afb
  %i.afd = getelementptr i8, ptr %i.afc, i64 %i.aet
  %i.afe = getelementptr i8, ptr %i.afd, i64 %i.aeo
  %i.aff = insertelement <2 x ptr> poison, ptr %i.aer, i64 0
  %i.afg = insertelement <2 x ptr> %i.aff, ptr %i.afe, i64 1
  %i.afh = getelementptr i8, <2 x ptr> %i.afg, <2 x i64> <i64 -16, i64 8>
  %i.afi = shufflevector <4 x ptr> %i.aey, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.afj = insertelement <2 x ptr> %i.afi, ptr %5, i64 1
  %i.afk = getelementptr i8, <2 x ptr> %i.afj, <2 x i64> <i64 16, i64 8>
  %i.afl = shufflevector <2 x ptr> %i.afk, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.afm = add nsw i64 %i.aeo, -8                 ; 2 uses
  %scevgep705 = getelementptr i8, ptr %5, i64 %i.afm
  %scevgep707 = getelementptr i8, ptr %4, i64 %i.afm
  %i.afn = shufflevector <2 x ptr> %i.afh, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.afo = add nsw i64 %wide.trip.count459, -2    ; 3 uses
  %min.iters.check729 = icmp ult i64 %i.afo, 8
  %i.afp = insertelement <4 x ptr> %i.afn, ptr %scevgep700, i64 2 ; 2 uses
  %i.afq = insertelement <4 x ptr> %i.afp, ptr %scevgep707, i64 3
  %i.afr = icmp ult <4 x ptr> %i.afl, %i.afq
  %i.afs = shufflevector <4 x ptr> %i.afp, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.aft = insertelement <2 x ptr> %i.afs, ptr %scevgep705, i64 1
  %i.afu = shufflevector <2 x ptr> %i.aft, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.afv = icmp ult <4 x ptr> %i.afa, %i.afu
  %15 = or i32 %i.d, %i.g
  %i.afw = and <4 x i1> %i.afr, %i.afv
  %i.afx = bitcast <4 x i1> %i.afw to i4
  %i.afy = icmp ne i4 %i.afx, 0
  %i.afz = icmp slt i32 %15, 0
  %op.rdx1047 = or i1 %i.afy, %i.afz
  %n.vec731 = and i64 %i.afo, -8                  ; 3 uses
  %i.aga = or disjoint i64 %n.vec731, 2
  %cmp.n750 = icmp eq i64 %i.afo, %n.vec731
  %i.agb = add nsw i64 %wide.trip.count459, -1
  br label %.lr.ph404.split

iter.check797:                                    ; preds = %.lr.ph404
  %i.agc = sext i32 %i.d to i64                   ; 5 uses
  %i.agd = sext i32 %i.g to i64                   ; 5 uses
  %i.age = zext nneg i32 %i.ts to i64             ; 5 uses
  %min.iters.check767 = icmp ult i32 %i.ts, 4
  br i1 %min.iters.check767, label %.lr.ph404.split.us.preheader, label %vector.scevcheck752

vector.scevcheck752:                              ; preds = %iter.check797
  %ident.check753 = icmp ne i32 %i.g, 1
  %ident.check754 = icmp ne i32 %i.d, 1
  %i.agf = or i1 %ident.check753, %ident.check754
  br i1 %i.agf, label %.lr.ph404.split.us.preheader, label %vector.memcheck768

vector.memcheck768:                               ; preds = %vector.scevcheck752
  %i.agg = shl nuw nsw i64 %wide.trip.count469, 3
  %i.agh = add nsw i64 %i.agg, -8                 ; 2 uses
  %i.agi = getelementptr i8, ptr %10, i64 %i.agh  ; 2 uses
  %i.agj = getelementptr i8, ptr %5, i64 8
  %i.agk = getelementptr i8, ptr %7, i64 %i.agh
  %bound0769 = icmp ult ptr %10, %i.agj
  %bound1770 = icmp ult ptr %5, %i.agi
  %found.conflict771 = and i1 %bound0769, %bound1770
  %bound0772 = icmp ult ptr %10, %i.agk
  %bound1773 = icmp ult ptr %7, %i.agi
  %found.conflict774 = and i1 %bound0772, %bound1773
  %conflict.rdx775 = or i1 %found.conflict771, %found.conflict774
  br i1 %conflict.rdx775, label %.lr.ph404.split.us.preheader, label %vector.main.loop.iter.check776

vector.main.loop.iter.check776:                   ; preds = %vector.memcheck768
  %min.iters.check777 = icmp ult i32 %i.ts, 16
  br i1 %min.iters.check777, label %vec.epilog.ph801, label %vector.ph778

vector.ph778:                                     ; preds = %vector.main.loop.iter.check776
  %i.agl = and i64 %i.age, 12
  %n.vec779 = and i64 %i.age, 2147483632          ; 4 uses
  %i.agm = or disjoint i64 %n.vec779, 1
  %i.agn = load double, ptr %5, align 8, !tbaa !84, !alias.scope !120
  %.scalar1051 = fneg double %i.agn
  %i.ago = insertelement <4 x double> poison, double %.scalar1051, i64 0
  %i.agp = shufflevector <4 x double> %i.ago, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body782

vector.body782:                                   ; preds = %vector.ph778, %vector.body782
  %index783 = phi i64 [ 0, %vector.ph778 ], [ %index.next792, %vector.body782 ] ; 2 uses
  %i.agq = or disjoint i64 %index783, 1           ; 2 uses
  %i.agr = getelementptr [8 x i8], ptr %i.f, i64 %i.agq ; 4 uses
  %i.ags = getelementptr i8, ptr %i.agr, i64 8
  %i.agt = getelementptr i8, ptr %i.agr, i64 40
  %i.agu = getelementptr i8, ptr %i.agr, i64 72
  %i.agv = getelementptr i8, ptr %i.agr, i64 104
  %wide.load784.a = load <4 x double>, ptr %i.ags, align 8, !tbaa !84, !alias.scope !121
  %wide.load785.a = load <4 x double>, ptr %i.agt, align 8, !tbaa !84, !alias.scope !121
  %wide.load786 = load <4 x double>, ptr %i.agu, align 8, !tbaa !84, !alias.scope !121
  %wide.load787 = load <4 x double>, ptr %i.agv, align 8, !tbaa !84, !alias.scope !121
  %i.agw = getelementptr [8 x i8], ptr %i.i, i64 %i.agq ; 4 uses
  %i.agx = getelementptr i8, ptr %i.agw, i64 8    ; 2 uses
  %i.agy = getelementptr i8, ptr %i.agw, i64 40   ; 2 uses
  %i.agz = getelementptr i8, ptr %i.agw, i64 72   ; 2 uses
  %i.aha = getelementptr i8, ptr %i.agw, i64 104  ; 2 uses
  %wide.load788 = load <4 x double>, ptr %i.agx, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %wide.load789 = load <4 x double>, ptr %i.agy, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %wide.load790 = load <4 x double>, ptr %i.agz, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %wide.load791 = load <4 x double>, ptr %i.aha, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %i.ahb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agp, <4 x double> %wide.load784.a, <4 x double> %wide.load788)
  %i.ahc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agp, <4 x double> %wide.load785.a, <4 x double> %wide.load789)
  %i.ahd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agp, <4 x double> %wide.load786, <4 x double> %wide.load790)
  %i.ahe = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agp, <4 x double> %wide.load787, <4 x double> %wide.load791)
  store <4 x double> %i.ahb, ptr %i.agx, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  store <4 x double> %i.ahc, ptr %i.agy, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  store <4 x double> %i.ahd, ptr %i.agz, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  store <4 x double> %i.ahe, ptr %i.aha, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %index.next792 = add nuw i64 %index783, 16      ; 2 uses
  %i.ahf = icmp eq i64 %index.next792, %n.vec779
  br i1 %i.ahf, label %middle.block793, label %vector.body782, !llvm.loop !69

middle.block793:                                  ; preds = %vector.body782
  %cmp.n794 = icmp eq i64 %n.vec779, %i.age
  br i1 %cmp.n794, label %.loopexit371, label %vec.epilog.iter.check799

vec.epilog.iter.check799:                         ; preds = %middle.block793
  %min.epilog.iters.check800 = icmp eq i64 %i.agl, 0
  br i1 %min.epilog.iters.check800, label %.lr.ph404.split.us.preheader, label %vec.epilog.ph801, !prof !88

vec.epilog.ph801:                                 ; preds = %vector.main.loop.iter.check776, %vec.epilog.iter.check799
  %vec.epilog.resume.val795 = phi i64 [ %n.vec779, %vec.epilog.iter.check799 ], [ 0, %vector.main.loop.iter.check776 ]
  %n.vec802 = and i64 %i.age, 2147483644          ; 3 uses
  %i.ahg = or disjoint i64 %n.vec802, 1
  %i.ahh = load double, ptr %5, align 8, !tbaa !84, !alias.scope !120
  %.scalar1052 = fneg double %i.ahh
  %i.ahi = insertelement <4 x double> poison, double %.scalar1052, i64 0
  %i.ahj = shufflevector <4 x double> %i.ahi, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body805

vec.epilog.vector.body805:                        ; preds = %vec.epilog.vector.body805, %vec.epilog.ph801
  %index806 = phi i64 [ %vec.epilog.resume.val795, %vec.epilog.ph801 ], [ %index.next809, %vec.epilog.vector.body805 ] ; 2 uses
  %i.ahk = or disjoint i64 %index806, 1           ; 2 uses
  %i.ahl = getelementptr [8 x i8], ptr %i.f, i64 %i.ahk
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 8
  %wide.load807 = load <4 x double>, ptr %i.ahm, align 8, !tbaa !84, !alias.scope !121
  %i.ahn = getelementptr [8 x i8], ptr %i.i, i64 %i.ahk
  %i.aho = getelementptr i8, ptr %i.ahn, i64 8    ; 2 uses
  %wide.load808 = load <4 x double>, ptr %i.aho, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %i.ahp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ahj, <4 x double> %wide.load807, <4 x double> %wide.load808)
  store <4 x double> %i.ahp, ptr %i.aho, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %index.next809 = add nuw i64 %index806, 4       ; 2 uses
  %i.ahq = icmp eq i64 %index.next809, %n.vec802
  br i1 %i.ahq, label %vec.epilog.middle.block810, label %vec.epilog.vector.body805, !llvm.loop !70

vec.epilog.middle.block810:                       ; preds = %vec.epilog.vector.body805
  %cmp.n811 = icmp eq i64 %n.vec802, %i.age
  br i1 %cmp.n811, label %.loopexit371, label %.lr.ph404.split.us.preheader

.lr.ph404.split.us.preheader:                     ; preds = %iter.check797, %vector.scevcheck752, %vector.memcheck768, %vec.epilog.iter.check799, %vec.epilog.middle.block810
  %indvars.iv466.ph = phi i64 [ 1, %iter.check797 ], [ 1, %vector.scevcheck752 ], [ 1, %vector.memcheck768 ], [ %i.agm, %vec.epilog.iter.check799 ], [ %i.ahg, %vec.epilog.middle.block810 ] ; 4 uses
  %i.ahr = sub i64 %wide.trip.count469, %indvars.iv466.ph
  %i.ahs = zext nneg i32 %i.ts to i64
  %i.aht = sub i64 %i.ahs, %indvars.iv466.ph
  %xtraiter1073 = and i64 %i.ahr, 3               ; 2 uses
  %lcmp.mod1074.not = icmp eq i64 %xtraiter1073, 0
  br i1 %lcmp.mod1074.not, label %.lr.ph404.split.us.prol.loopexit, label %.lr.ph404.split.us.prol

.lr.ph404.split.us.prol:                          ; preds = %.lr.ph404.split.us.preheader, %.lr.ph404.split.us.prol
  %indvars.iv466.prol = phi i64 [ %indvars.iv.next467.prol, %.lr.ph404.split.us.prol ], [ %indvars.iv466.ph, %.lr.ph404.split.us.preheader ] ; 3 uses
  %prol.iter1075 = phi i64 [ %prol.iter1075.next, %.lr.ph404.split.us.prol ], [ 0, %.lr.ph404.split.us.preheader ]
  %i.ahu = load double, ptr %5, align 8, !tbaa !84
  %i.ahv = mul nsw i64 %indvars.iv466.prol, %i.agc
  %i.ahw = getelementptr [8 x i8], ptr %i.f, i64 %i.ahv
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 8
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !84
  %i.ahz = mul nsw i64 %indvars.iv466.prol, %i.agd
  %i.aia = getelementptr [8 x i8], ptr %i.i, i64 %i.ahz
  %i.aib = getelementptr i8, ptr %i.aia, i64 8    ; 2 uses
  %i.aic = load double, ptr %i.aib, align 8, !tbaa !84
  %i.aid = fneg double %i.ahu
  %i.aie = tail call double @llvm.fmuladd.f64(double %i.aid, double %i.ahy, double %i.aic)
  store double %i.aie, ptr %i.aib, align 8, !tbaa !84
  %indvars.iv.next467.prol = add nuw nsw i64 %indvars.iv466.prol, 1 ; 2 uses
  %prol.iter1075.next = add i64 %prol.iter1075, 1 ; 2 uses
  %prol.iter1075.cmp.not = icmp eq i64 %prol.iter1075.next, %xtraiter1073
  br i1 %prol.iter1075.cmp.not, label %.lr.ph404.split.us.prol.loopexit, label %.lr.ph404.split.us.prol, !llvm.loop !71

.lr.ph404.split.us.prol.loopexit:                 ; preds = %.lr.ph404.split.us.prol, %.lr.ph404.split.us.preheader
  %indvars.iv466.unr = phi i64 [ %indvars.iv466.ph, %.lr.ph404.split.us.preheader ], [ %indvars.iv.next467.prol, %.lr.ph404.split.us.prol ]
  %i.aif = icmp ult i64 %i.aht, 3
  br i1 %i.aif, label %.loopexit371, label %.lr.ph404.split.us

.lr.ph404.split.us:                               ; preds = %.lr.ph404.split.us.prol.loopexit, %.lr.ph404.split.us
  %indvars.iv466 = phi i64 [ %indvars.iv.next467.3, %.lr.ph404.split.us ], [ %indvars.iv466.unr, %.lr.ph404.split.us.prol.loopexit ] ; 6 uses
  %i.aig = load double, ptr %5, align 8, !tbaa !84
  %i.aih = mul nsw i64 %indvars.iv466, %i.agc
  %i.aii = getelementptr [8 x i8], ptr %i.f, i64 %i.aih
  %i.aij = getelementptr i8, ptr %i.aii, i64 8
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !84
  %i.ail = mul nsw i64 %indvars.iv466, %i.agd
  %i.aim = getelementptr [8 x i8], ptr %i.i, i64 %i.ail
  %i.ain = getelementptr i8, ptr %i.aim, i64 8    ; 2 uses
  %i.aio = load double, ptr %i.ain, align 8, !tbaa !84
  %i.aip = fneg double %i.aig
  %i.aiq = tail call double @llvm.fmuladd.f64(double %i.aip, double %i.aik, double %i.aio)
  store double %i.aiq, ptr %i.ain, align 8, !tbaa !84
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %i.air = load double, ptr %5, align 8, !tbaa !84
  %i.ais = mul nsw i64 %indvars.iv.next467, %i.agc
  %i.ait = getelementptr [8 x i8], ptr %i.f, i64 %i.ais
  %i.aiu = getelementptr i8, ptr %i.ait, i64 8
  %i.aiv = load double, ptr %i.aiu, align 8, !tbaa !84
  %i.aiw = mul nsw i64 %indvars.iv.next467, %i.agd
  %i.aix = getelementptr [8 x i8], ptr %i.i, i64 %i.aiw
  %i.aiy = getelementptr i8, ptr %i.aix, i64 8    ; 2 uses
  %i.aiz = load double, ptr %i.aiy, align 8, !tbaa !84
  %i.aja = fneg double %i.air
  %i.ajb = tail call double @llvm.fmuladd.f64(double %i.aja, double %i.aiv, double %i.aiz)
  store double %i.ajb, ptr %i.aiy, align 8, !tbaa !84
  %indvars.iv.next467.1 = add nuw nsw i64 %indvars.iv466, 2 ; 2 uses
  %i.ajc = load double, ptr %5, align 8, !tbaa !84
  %i.ajd = mul nsw i64 %indvars.iv.next467.1, %i.agc
  %i.aje = getelementptr [8 x i8], ptr %i.f, i64 %i.ajd
  %i.ajf = getelementptr i8, ptr %i.aje, i64 8
  %i.ajg = load double, ptr %i.ajf, align 8, !tbaa !84
  %i.ajh = mul nsw i64 %indvars.iv.next467.1, %i.agd
  %i.aji = getelementptr [8 x i8], ptr %i.i, i64 %i.ajh
  %i.ajj = getelementptr i8, ptr %i.aji, i64 8    ; 2 uses
  %i.ajk = load double, ptr %i.ajj, align 8, !tbaa !84
  %i.ajl = fneg double %i.ajc
  %i.ajm = tail call double @llvm.fmuladd.f64(double %i.ajl, double %i.ajg, double %i.ajk)
  store double %i.ajm, ptr %i.ajj, align 8, !tbaa !84
  %indvars.iv.next467.2 = add nuw nsw i64 %indvars.iv466, 3 ; 2 uses
  %i.ajn = load double, ptr %5, align 8, !tbaa !84
  %i.ajo = mul nsw i64 %indvars.iv.next467.2, %i.agc
  %i.ajp = getelementptr [8 x i8], ptr %i.f, i64 %i.ajo
  %i.ajq = getelementptr i8, ptr %i.ajp, i64 8
  %i.ajr = load double, ptr %i.ajq, align 8, !tbaa !84
end_hunk_3
