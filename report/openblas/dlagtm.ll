Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlagtm?download=true
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dlagtm_:bb.a
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
  %scevgep806 = getelementptr i8, ptr %5, i64 %i.db
  %scevgep808 = getelementptr i8, ptr %6, i64 %i.db
  %i.dc = shufflevector <2 x ptr> %i.cw, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dd = add nsw i64 %wide.trip.count474, -2     ; 3 uses
  %min.iters.check830 = icmp ult i64 %i.dd, 12
  %i.de = insertelement <4 x ptr> %i.dc, ptr %scevgep801, i64 2 ; 2 uses
  %i.df = insertelement <4 x ptr> %i.de, ptr %scevgep808, i64 3
  %i.dg = icmp ult <4 x ptr> %i.da, %i.df
  %i.dh = shufflevector <4 x ptr> %i.de, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.di = insertelement <2 x ptr> %i.dh, ptr %scevgep806, i64 1
  %i.dj = shufflevector <2 x ptr> %i.di, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.dk = icmp ult <4 x ptr> %i.cp, %i.dj
  %i.dl = or i32 %i.d, %i.g
  %i.dm = and <4 x i1> %i.dg, %i.dk
  %i.dn = bitcast <4 x i1> %i.dm to i4
  %i.do = icmp ne i4 %i.dn, 0
  %i.dp = icmp slt i32 %i.dl, 0
  %op.rdx1017 = or i1 %i.do, %i.dp
  %n.vec832 = and i64 %i.dd, -4                   ; 3 uses
  %i.dq = or disjoint i64 %n.vec832, 2
  %cmp.n844 = icmp eq i64 %i.dd, %n.vec832
  %i.dr = add nsw i64 %wide.trip.count474, -1
  br label %.lr.ph412.split

iter.check891:                                    ; preds = %.lr.ph412
  %i.ds = sext i32 %i.d to i64                    ; 5 uses
  %i.dt = sext i32 %i.g to i64                    ; 5 uses
  %i.du = zext nneg i32 %i.bl to i64              ; 5 uses
  %min.iters.check861 = icmp ult i32 %i.bl, 4
  br i1 %min.iters.check861, label %.lr.ph412.split.us.preheader, label %vector.scevcheck846

vector.scevcheck846:                              ; preds = %iter.check891
  %ident.check847 = icmp ne i32 %i.g, 1
  %ident.check848 = icmp ne i32 %i.d, 1
  %i.dv = or i1 %ident.check847, %ident.check848
  br i1 %i.dv, label %.lr.ph412.split.us.preheader, label %vector.memcheck862

vector.memcheck862:                               ; preds = %vector.scevcheck846
  %i.dw = shl nuw nsw i64 %wide.trip.count484, 3
  %i.dx = add nsw i64 %i.dw, -8                   ; 2 uses
  %i.dy = getelementptr i8, ptr %10, i64 %i.dx    ; 2 uses
  %i.dz = getelementptr i8, ptr %5, i64 8
  %i.ea = getelementptr i8, ptr %7, i64 %i.dx
  %bound0863 = icmp ult ptr %10, %i.dz
  %bound1864 = icmp ult ptr %5, %i.dy
  %found.conflict865 = and i1 %bound0863, %bound1864
  %bound0866 = icmp ult ptr %10, %i.ea
  %bound1867 = icmp ult ptr %7, %i.dy
  %found.conflict868 = and i1 %bound0866, %bound1867
  %conflict.rdx869 = or i1 %found.conflict865, %found.conflict868
  br i1 %conflict.rdx869, label %.lr.ph412.split.us.preheader, label %vector.main.loop.iter.check870

vector.main.loop.iter.check870:                   ; preds = %vector.memcheck862
  %min.iters.check871 = icmp ult i32 %i.bl, 16
  br i1 %min.iters.check871, label %vec.epilog.ph895, label %vector.ph872

vector.ph872:                                     ; preds = %vector.main.loop.iter.check870
  %i.eb = and i64 %i.du, 12
  %n.vec873 = and i64 %i.du, 2147483632           ; 4 uses
  %i.ec = or disjoint i64 %n.vec873, 1
  %i.ed = load double, ptr %5, align 8, !tbaa !84, !alias.scope !90
  %broadcast.splatinsert884 = insertelement <4 x double> poison, double %i.ed, i64 0
  %broadcast.splat885 = shufflevector <4 x double> %broadcast.splatinsert884, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body874

vector.body874:                                   ; preds = %vector.ph872, %vector.body874
  %index875 = phi i64 [ 0, %vector.ph872 ], [ %index.next886, %vector.body874 ] ; 2 uses
  %i.ee = or disjoint i64 %index875, 1            ; 2 uses
  %i.ef = getelementptr [8 x i8], ptr %i.f, i64 %i.ee ; 4 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %i.eh = getelementptr i8, ptr %i.ef, i64 40
  %i.ei = getelementptr i8, ptr %i.ef, i64 72
  %i.ej = getelementptr i8, ptr %i.ef, i64 104
  %wide.load876 = load <4 x double>, ptr %i.eg, align 8, !tbaa !84, !alias.scope !91
  %wide.load877 = load <4 x double>, ptr %i.eh, align 8, !tbaa !84, !alias.scope !91
  %wide.load878 = load <4 x double>, ptr %i.ei, align 8, !tbaa !84, !alias.scope !91
  %wide.load879 = load <4 x double>, ptr %i.ej, align 8, !tbaa !84, !alias.scope !91
  %i.ek = getelementptr [8 x i8], ptr %i.i, i64 %i.ee ; 4 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 8      ; 2 uses
  %i.em = getelementptr i8, ptr %i.ek, i64 40     ; 2 uses
  %i.en = getelementptr i8, ptr %i.ek, i64 72     ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ek, i64 104    ; 2 uses
  %wide.load880 = load <4 x double>, ptr %i.el, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %wide.load881 = load <4 x double>, ptr %i.em, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %wide.load882 = load <4 x double>, ptr %i.en, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %wide.load883 = load <4 x double>, ptr %i.eo, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %i.ep = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat885, <4 x double> %wide.load876, <4 x double> %wide.load880)
  %i.eq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat885, <4 x double> %wide.load877, <4 x double> %wide.load881)
  %i.er = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat885, <4 x double> %wide.load878, <4 x double> %wide.load882)
  %i.es = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat885, <4 x double> %wide.load879, <4 x double> %wide.load883)
  store <4 x double> %i.ep, ptr %i.el, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  store <4 x double> %i.eq, ptr %i.em, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  store <4 x double> %i.er, ptr %i.en, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  store <4 x double> %i.es, ptr %i.eo, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %index.next886 = add nuw i64 %index875, 16      ; 2 uses
  %i.et = icmp eq i64 %index.next886, %n.vec873
  br i1 %i.et, label %middle.block887, label %vector.body874, !llvm.loop !18

middle.block887:                                  ; preds = %vector.body874
  %cmp.n888 = icmp eq i64 %n.vec873, %i.du
  br i1 %cmp.n888, label %.loopexit371, label %vec.epilog.iter.check893

vec.epilog.iter.check893:                         ; preds = %middle.block887
  %min.epilog.iters.check894 = icmp eq i64 %i.eb, 0
  br i1 %min.epilog.iters.check894, label %.lr.ph412.split.us.preheader, label %vec.epilog.ph895, !prof !88

vec.epilog.ph895:                                 ; preds = %vector.main.loop.iter.check870, %vec.epilog.iter.check893
  %vec.epilog.resume.val889 = phi i64 [ %n.vec873, %vec.epilog.iter.check893 ], [ 0, %vector.main.loop.iter.check870 ]
  %n.vec896 = and i64 %i.du, 2147483644           ; 3 uses
  %i.eu = or disjoint i64 %n.vec896, 1
  %i.ev = load double, ptr %5, align 8, !tbaa !84, !alias.scope !90
  %broadcast.splatinsert901 = insertelement <4 x double> poison, double %i.ev, i64 0
  %broadcast.splat902 = shufflevector <4 x double> %broadcast.splatinsert901, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body897

vec.epilog.vector.body897:                        ; preds = %vec.epilog.vector.body897, %vec.epilog.ph895
  %index898 = phi i64 [ %vec.epilog.resume.val889, %vec.epilog.ph895 ], [ %index.next903, %vec.epilog.vector.body897 ] ; 2 uses
  %i.ew = or disjoint i64 %index898, 1            ; 2 uses
  %i.ex = getelementptr [8 x i8], ptr %i.f, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 8
  %wide.load899 = load <4 x double>, ptr %i.ey, align 8, !tbaa !84, !alias.scope !91
  %i.ez = getelementptr [8 x i8], ptr %i.i, i64 %i.ew
  %i.fa = getelementptr i8, ptr %i.ez, i64 8      ; 2 uses
  %wide.load900 = load <4 x double>, ptr %i.fa, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %i.fb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat902, <4 x double> %wide.load899, <4 x double> %wide.load900)
  store <4 x double> %i.fb, ptr %i.fa, align 8, !tbaa !84, !alias.scope !92, !noalias !93
  %index.next903 = add nuw i64 %index898, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next903, %n.vec896
  br i1 %i.fc, label %vec.epilog.middle.block904, label %vec.epilog.vector.body897, !llvm.loop !19

vec.epilog.middle.block904:                       ; preds = %vec.epilog.vector.body897
  %cmp.n905 = icmp eq i64 %n.vec896, %i.du
  br i1 %cmp.n905, label %.loopexit371, label %.lr.ph412.split.us.preheader

.lr.ph412.split.us.preheader:                     ; preds = %iter.check891, %vector.scevcheck846, %vector.memcheck862, %vec.epilog.iter.check893, %vec.epilog.middle.block904
  %indvars.iv481.ph = phi i64 [ 1, %iter.check891 ], [ 1, %vector.scevcheck846 ], [ 1, %vector.memcheck862 ], [ %i.ec, %vec.epilog.iter.check893 ], [ %i.eu, %vec.epilog.middle.block904 ] ; 4 uses
  %i.fd = sub i64 %wide.trip.count484, %indvars.iv481.ph
  %i.fe = zext nneg i32 %i.bl to i64
  %i.ff = sub i64 %i.fe, %indvars.iv481.ph
  %xtraiter1051 = and i64 %i.fd, 3                ; 2 uses
  %lcmp.mod1052.not = icmp eq i64 %xtraiter1051, 0
  br i1 %lcmp.mod1052.not, label %.lr.ph412.split.us.prol.loopexit, label %.lr.ph412.split.us.prol

.lr.ph412.split.us.prol:                          ; preds = %.lr.ph412.split.us.preheader, %.lr.ph412.split.us.prol
  %indvars.iv481.prol = phi i64 [ %indvars.iv.next482.prol, %.lr.ph412.split.us.prol ], [ %indvars.iv481.ph, %.lr.ph412.split.us.preheader ] ; 3 uses
  %prol.iter1053 = phi i64 [ %prol.iter1053.next, %.lr.ph412.split.us.prol ], [ 0, %.lr.ph412.split.us.preheader ]
  %i.fg = load double, ptr %5, align 8, !tbaa !84
  %i.fh = mul nsw i64 %indvars.iv481.prol, %i.ds
  %i.fi = getelementptr [8 x i8], ptr %i.f, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !84
  %i.fl = mul nsw i64 %indvars.iv481.prol, %i.dt
  %i.fm = getelementptr [8 x i8], ptr %i.i, i64 %i.fl
  %i.fn = getelementptr i8, ptr %i.fm, i64 8      ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !84
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.fk, double %i.fo)
  store double %i.fp, ptr %i.fn, align 8, !tbaa !84
  %indvars.iv.next482.prol = add nuw nsw i64 %indvars.iv481.prol, 1 ; 2 uses
  %prol.iter1053.next = add i64 %prol.iter1053, 1 ; 2 uses
  %prol.iter1053.cmp.not = icmp eq i64 %prol.iter1053.next, %xtraiter1051
  br i1 %prol.iter1053.cmp.not, label %.lr.ph412.split.us.prol.loopexit, label %.lr.ph412.split.us.prol, !llvm.loop !20

.lr.ph412.split.us.prol.loopexit:                 ; preds = %.lr.ph412.split.us.prol, %.lr.ph412.split.us.preheader
  %indvars.iv481.unr = phi i64 [ %indvars.iv481.ph, %.lr.ph412.split.us.preheader ], [ %indvars.iv.next482.prol, %.lr.ph412.split.us.prol ]
  %i.fq = icmp ult i64 %i.ff, 3
  br i1 %i.fq, label %.loopexit371, label %.lr.ph412.split.us

.lr.ph412.split.us:                               ; preds = %.lr.ph412.split.us.prol.loopexit, %.lr.ph412.split.us
  %indvars.iv481 = phi i64 [ %indvars.iv.next482.3, %.lr.ph412.split.us ], [ %indvars.iv481.unr, %.lr.ph412.split.us.prol.loopexit ] ; 6 uses
  %i.fr = load double, ptr %5, align 8, !tbaa !84
  %i.fs = mul nsw i64 %indvars.iv481, %i.ds
  %i.ft = getelementptr [8 x i8], ptr %i.f, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !84
  %i.fw = mul nsw i64 %indvars.iv481, %i.dt
  %i.fx = getelementptr [8 x i8], ptr %i.i, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 8      ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !84
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.fv, double %i.fz)
  store double %i.ga, ptr %i.fy, align 8, !tbaa !84
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1 ; 2 uses
  %i.gb = load double, ptr %5, align 8, !tbaa !84
  %i.gc = mul nsw i64 %indvars.iv.next482, %i.ds
  %i.gd = getelementptr [8 x i8], ptr %i.f, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 8
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !84
  %i.gg = mul nsw i64 %indvars.iv.next482, %i.dt
  %i.gh = getelementptr [8 x i8], ptr %i.i, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 8      ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !84
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.gf, double %i.gj)
  store double %i.gk, ptr %i.gi, align 8, !tbaa !84
  %indvars.iv.next482.1 = add nuw nsw i64 %indvars.iv481, 2 ; 2 uses
  %i.gl = load double, ptr %5, align 8, !tbaa !84
  %i.gm = mul nsw i64 %indvars.iv.next482.1, %i.ds
  %i.gn = getelementptr [8 x i8], ptr %i.f, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 8
  %i.gp = load double, ptr %i.go, align 8, !tbaa !84
  %i.gq = mul nsw i64 %indvars.iv.next482.1, %i.dt
  %i.gr = getelementptr [8 x i8], ptr %i.i, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 8      ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !84
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.gp, double %i.gt)
  store double %i.gu, ptr %i.gs, align 8, !tbaa !84
  %indvars.iv.next482.2 = add nuw nsw i64 %indvars.iv481, 3 ; 2 uses
  %i.gv = load double, ptr %5, align 8, !tbaa !84
  %i.gw = mul nsw i64 %indvars.iv.next482.2, %i.ds
  %i.gx = getelementptr [8 x i8], ptr %i.f, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 8
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !84
  %i.ha = mul nsw i64 %indvars.iv.next482.2, %i.dt
  %i.hb = getelementptr [8 x i8], ptr %i.i, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 8      ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !84
  %i.he = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.gz, double %i.hd)
  store double %i.he, ptr %i.hc, align 8, !tbaa !84
  %indvars.iv.next482.3 = add nuw nsw i64 %indvars.iv481, 4 ; 2 uses
  %exitcond485.not.3 = icmp eq i64 %indvars.iv.next482.3, %wide.trip.count484
  br i1 %exitcond485.not.3, label %.loopexit371, label %.lr.ph412.split.us, !llvm.loop !21

.lr.ph412.split:                                  ; preds = %.lr.ph412.split.preheader, %.loopexit372
  %indvars.iv476 = phi i64 [ 1, %.lr.ph412.split.preheader ], [ %indvars.iv.next477, %.loopexit372 ] ; 3 uses
  %i.hf = mul nsw i64 %indvars.iv476, %i.bu       ; 3 uses
  %i.hg = getelementptr [8 x i8], ptr %i.i, i64 %i.hf
  %i.hh = getelementptr i8, ptr %i.hg, i64 8      ; 2 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !84
  %i.hj = load double, ptr %5, align 8, !tbaa !84
  %i.hk = mul nsw i64 %indvars.iv476, %i.bv       ; 6 uses
  %i.hl = getelementptr [8 x i8], ptr %i.f, i64 %i.hk ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 8
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !84
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.hn, double %i.hi)
  %i.hp = load double, ptr %6, align 8, !tbaa !84
  %i.hq = getelementptr i8, ptr %i.hl, i64 16
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !84
  %i.hs = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.hr, double %i.ho)
  store double %i.hs, ptr %i.hh, align 8, !tbaa !84
  %gep558 = getelementptr [8 x i8], ptr %invariant.gep557, i64 %i.hf ; 2 uses
  %i.ht = load double, ptr %gep558, align 8, !tbaa !84
  %i.hu = load double, ptr %i.bq, align 8, !tbaa !84
  %gep560 = getelementptr [8 x i8], ptr %invariant.gep559, i64 %i.hk
  %i.hv = load double, ptr %gep560, align 8, !tbaa !84
  %i.hw = tail call double @llvm.fmuladd.f64(double %i.hu, double %i.hv, double %i.ht)
  %i.hx = load double, ptr %i.bs, align 8, !tbaa !84
  %gep562 = getelementptr [8 x i8], ptr %invariant.gep561, i64 %i.hk
  %i.hy = load double, ptr %gep562, align 8, !tbaa !84
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.hy, double %i.hw)
  store double %i.hz, ptr %gep558, align 8, !tbaa !84
  br i1 %.not369.not405, label %.lr.ph408.preheader, label %.loopexit372

.lr.ph408.preheader:                              ; preds = %.lr.ph412.split
  %invariant.gep549 = getelementptr [8 x i8], ptr %i.i, i64 %i.hf ; 4 uses
  %invariant.gep551 = getelementptr [8 x i8], ptr %i.f, i64 %i.hk ; 4 uses
  %invariant.gep553 = getelementptr [8 x i8], ptr %i.f, i64 %i.hk ; 4 uses
  %invariant.gep555 = getelementptr [8 x i8], ptr %i.f, i64 %i.hk ; 4 uses
  %brmerge = select i1 %min.iters.check830, i1 true, i1 %op.rdx1017
  br i1 %brmerge, label %.lr.ph408.preheader1028, label %vector.body833

vector.body833:                                   ; preds = %.lr.ph408.preheader, %vector.body833
  %index834 = phi i64 [ %index.next842, %vector.body833 ], [ 0, %.lr.ph408.preheader ] ; 5 uses
  %i.ia = or disjoint i64 %index834, 2            ; 4 uses
  %i.ib = getelementptr [8 x i8], ptr %invariant.gep549, i64 %i.ia ; 2 uses
  %wide.load835 = load <4 x double>, ptr %i.ib, align 8, !tbaa !84, !alias.scope !94, !noalias !95
  %i.ic = getelementptr [8 x i8], ptr %4, i64 %index834
  %wide.load836 = load <4 x double>, ptr %i.ic, align 8, !tbaa !84, !alias.scope !96
  %i.id = getelementptr [8 x i8], ptr %invariant.gep551, i64 %index834
  %i.ie = getelementptr i8, ptr %i.id, i64 8
  %wide.load837 = load <4 x double>, ptr %i.ie, align 8, !tbaa !84, !alias.scope !97
  %i.if = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load836, <4 x double> %wide.load837, <4 x double> %wide.load835)
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ia
  %wide.load838 = load <4 x double>, ptr %i.ig, align 8, !tbaa !84, !alias.scope !98
  %i.ih = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.ia
  %wide.load839 = load <4 x double>, ptr %i.ih, align 8, !tbaa !84, !alias.scope !97
  %i.ii = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load838, <4 x double> %wide.load839, <4 x double> %i.if)
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ia
  %wide.load840 = load <4 x double>, ptr %i.ij, align 8, !tbaa !84, !alias.scope !99
  %i.ik = getelementptr [8 x i8], ptr %invariant.gep555, i64 %index834
  %i.il = getelementptr i8, ptr %i.ik, i64 24
  %wide.load841 = load <4 x double>, ptr %i.il, align 8, !tbaa !84, !alias.scope !97
  %i.im = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load840, <4 x double> %wide.load841, <4 x double> %i.ii)
  store <4 x double> %i.im, ptr %i.ib, align 8, !tbaa !84, !alias.scope !94, !noalias !95
  %index.next842 = add nuw i64 %index834, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next842, %n.vec832
  br i1 %i.in, label %middle.block843, label %vector.body833, !llvm.loop !28

middle.block843:                                  ; preds = %vector.body833
  br i1 %cmp.n844, label %.loopexit372, label %.lr.ph408.preheader1028

.lr.ph408.preheader1028:                          ; preds = %.lr.ph408.preheader, %middle.block843
  %indvars.iv471.ph = phi i64 [ %i.dq, %middle.block843 ], [ 2, %.lr.ph408.preheader ] ; 9 uses
  %i.io = sub nsw i64 %wide.trip.count474, %indvars.iv471.ph
  %xtraiter1048 = and i64 %i.io, 1
  %lcmp.mod1049.not = icmp eq i64 %xtraiter1048, 0
  br i1 %lcmp.mod1049.not, label %.lr.ph408.prol.loopexit, label %.lr.ph408.prol

.lr.ph408.prol:                                   ; preds = %.lr.ph408.preheader1028
  %gep550.prol = getelementptr [8 x i8], ptr %invariant.gep549, i64 %indvars.iv471.ph ; 2 uses
  %i.ip = load double, ptr %gep550.prol, align 8, !tbaa !84
  %i.iq = add nsw i64 %indvars.iv471.ph, -1       ; 2 uses
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.iq
  %i.is = load double, ptr %i.ir, align 8, !tbaa !84
  %gep552.prol = getelementptr [8 x i8], ptr %invariant.gep551, i64 %i.iq
  %i.it = load double, ptr %gep552.prol, align 8, !tbaa !84
  %i.iu = tail call double @llvm.fmuladd.f64(double %i.is, double %i.it, double %i.ip)
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv471.ph
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !84
  %gep554.prol = getelementptr [8 x i8], ptr %invariant.gep553, i64 %indvars.iv471.ph
  %i.ix = load double, ptr %gep554.prol, align 8, !tbaa !84
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.iw, double %i.ix, double %i.iu)
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv471.ph
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !84
  %indvars.iv.next472.prol = add nuw nsw i64 %indvars.iv471.ph, 1 ; 2 uses
  %gep556.prol = getelementptr [8 x i8], ptr %invariant.gep555, i64 %indvars.iv.next472.prol
  %i.jb = load double, ptr %gep556.prol, align 8, !tbaa !84
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.ja, double %i.jb, double %i.iy)
  store double %i.jc, ptr %gep550.prol, align 8, !tbaa !84
  br label %.lr.ph408.prol.loopexit

.lr.ph408.prol.loopexit:                          ; preds = %.lr.ph408.prol, %.lr.ph408.preheader1028
  %indvars.iv471.unr = phi i64 [ %indvars.iv471.ph, %.lr.ph408.preheader1028 ], [ %indvars.iv.next472.prol, %.lr.ph408.prol ]
  %i.jd = icmp eq i64 %indvars.iv471.ph, %i.dr
  br i1 %i.jd, label %.loopexit372, label %.lr.ph408

.lr.ph408:                                        ; preds = %.lr.ph408.prol.loopexit, %.lr.ph408
  %indvars.iv471 = phi i64 [ %indvars.iv.next472.1, %.lr.ph408 ], [ %indvars.iv471.unr, %.lr.ph408.prol.loopexit ] ; 11 uses
  %gep550 = getelementptr [8 x i8], ptr %invariant.gep549, i64 %indvars.iv471 ; 2 uses
  %i.je = load double, ptr %gep550, align 8, !tbaa !84
  %i.jf = add nsw i64 %indvars.iv471, -1          ; 2 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.jf
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !84
  %gep552 = getelementptr [8 x i8], ptr %invariant.gep551, i64 %i.jf
  %i.ji = load double, ptr %gep552, align 8, !tbaa !84
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.jh, double %i.ji, double %i.je)
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv471
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !84
  %gep554 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %indvars.iv471
  %i.jm = load double, ptr %gep554, align 8, !tbaa !84
  %i.jn = tail call double @llvm.fmuladd.f64(double %i.jl, double %i.jm, double %i.jj)
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv471
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !84
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 3 uses
  %gep556 = getelementptr [8 x i8], ptr %invariant.gep555, i64 %indvars.iv.next472
  %i.jq = load double, ptr %gep556, align 8, !tbaa !84
  %i.jr = tail call double @llvm.fmuladd.f64(double %i.jp, double %i.jq, double %i.jn)
  store double %i.jr, ptr %gep550, align 8, !tbaa !84
  %gep550.1 = getelementptr [8 x i8], ptr %invariant.gep549, i64 %indvars.iv.next472 ; 2 uses
  %i.js = load double, ptr %gep550.1, align 8, !tbaa !84
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv471
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !84
  %gep552.1 = getelementptr [8 x i8], ptr %invariant.gep551, i64 %indvars.iv471
  %i.jv = load double, ptr %gep552.1, align 8, !tbaa !84
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.ju, double %i.jv, double %i.js)
  %i.jx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv471
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !84
  %gep554.1 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %indvars.iv.next472
  %i.jz = load double, ptr %gep554.1, align 8, !tbaa !84
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.jy, double %i.jz, double %i.jw)
  %i.kb = getelementptr [8 x i8], ptr %6, i64 %indvars.iv471
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !84
  %indvars.iv.next472.1 = add nuw nsw i64 %indvars.iv471, 2 ; 3 uses
  %gep556.1 = getelementptr [8 x i8], ptr %invariant.gep555, i64 %indvars.iv.next472.1
  %i.kd = load double, ptr %gep556.1, align 8, !tbaa !84
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.kd, double %i.ka)
  store double %i.ke, ptr %gep550.1, align 8, !tbaa !84
  %exitcond475.not.1 = icmp eq i64 %indvars.iv.next472.1, %wide.trip.count474
  br i1 %exitcond475.not.1, label %.loopexit372, label %.lr.ph408, !llvm.loop !29

.loopexit372:                                     ; preds = %.lr.ph408.prol.loopexit, %.lr.ph408, %middle.block843, %.lr.ph412.split
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %exitcond480.not = icmp eq i64 %indvars.iv.next477, %wide.trip.count484
  br i1 %exitcond480.not, label %.loopexit371, label %.lr.ph412.split, !llvm.loop !30

bb.h:                                             ; preds = %bb.f
  br i1 %.not366417, label %.loopexit371, label %.lr.ph420

.lr.ph420:                                        ; preds = %bb.h
  %i.kf = load i32, ptr %1, align 4, !tbaa !82    ; 5 uses
  %i.kg = icmp eq i32 %i.kf, 1
  %i.kh = add nsw i32 %i.kf, -1
  %i.ki = sext i32 %i.kh to i64                   ; 2 uses
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ki
  %i.kk = sext i32 %i.kf to i64                   ; 3 uses
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kk
  %.not367.not413 = icmp sgt i32 %i.kf, 2
  %i.km = add nuw i32 %i.bl, 1
  %wide.trip.count499 = zext i32 %i.km to i64     ; 5 uses
  br i1 %i.kg, label %iter.check999, label %.lr.ph420.split.preheader

.lr.ph420.split.preheader:                        ; preds = %.lr.ph420
  %i.kn = sext i32 %i.g to i64                    ; 3 uses
  %i.ko = sext i32 %i.d to i64                    ; 3 uses
  %invariant.gep571 = getelementptr [8 x i8], ptr %i.i, i64 %i.kk
  %invariant.gep573 = getelementptr [8 x i8], ptr %i.f, i64 %i.ki
  %invariant.gep575 = getelementptr [8 x i8], ptr %i.f, i64 %i.kk
  %wide.trip.count489 = zext i32 %i.kf to i64     ; 5 uses
  %i.kp = shl nsw i64 %i.kn, 3
  %i.kq = shl nsw i64 %i.h, 3                     ; 2 uses
  %i.kr = getelementptr i8, ptr %10, i64 %i.kp
  %i.ks = getelementptr i8, ptr %i.kr, i64 %i.kq
  %i.kt = shl nuw nsw i64 %wide.trip.count499, 3
  %i.ku = add nsw i64 %i.kt, -8                   ; 2 uses
  %i.kv = mul i64 %i.ku, %i.kn
  %i.kw = shl nuw nsw i64 %wide.trip.count489, 3  ; 4 uses
  %i.kx = getelementptr i8, ptr %10, i64 %i.kv
  %i.ky = getelementptr i8, ptr %i.kx, i64 %i.kq
  %scevgep909 = getelementptr i8, ptr %i.ky, i64 %i.kw
  %i.kz = getelementptr i8, ptr %6, i64 %i.kw
  %i.la = shl nsw i64 %i.ko, 3
  %i.lb = shl nsw i64 %i.e, 3                     ; 2 uses
  %i.lc = getelementptr i8, ptr %7, i64 %i.la
  %i.ld = getelementptr i8, ptr %i.lc, i64 %i.lb
  %i.le = insertelement <4 x ptr> poison, ptr %6, i64 0
  %i.lf = insertelement <4 x ptr> %i.le, ptr %i.ld, i64 1
  %i.lg = insertelement <4 x ptr> %i.lf, ptr %i.ks, i64 2 ; 2 uses
  %i.lh = insertelement <4 x ptr> %i.lg, ptr %4, i64 3
  %i.li = getelementptr i8, <4 x ptr> %i.lh, <4 x i64> <i64 0, i64 8, i64 16, i64 8>
  %i.lj = mul i64 %i.ku, %i.ko
  %i.lk = getelementptr i8, ptr %7, i64 %i.lj
  %i.ll = getelementptr i8, ptr %i.lk, i64 %i.lb
  %i.lm = getelementptr i8, ptr %i.ll, i64 %i.kw
  %i.ln = insertelement <2 x ptr> poison, ptr %i.kz, i64 0
  %i.lo = insertelement <2 x ptr> %i.ln, ptr %i.lm, i64 1
  %i.lp = getelementptr i8, <2 x ptr> %i.lo, <2 x i64> <i64 -16, i64 8>
  %i.lq = shufflevector <4 x ptr> %i.lg, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.lr = insertelement <2 x ptr> %i.lq, ptr %5, i64 1
  %i.ls = getelementptr i8, <2 x ptr> %i.lr, <2 x i64> <i64 16, i64 8>
  %i.lt = shufflevector <2 x ptr> %i.ls, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.lu = add nsw i64 %i.kw, -8                   ; 2 uses
  %scevgep914 = getelementptr i8, ptr %5, i64 %i.lu
  %scevgep916 = getelementptr i8, ptr %4, i64 %i.lu
  %i.lv = shufflevector <2 x ptr> %i.lp, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lw = add nsw i64 %wide.trip.count489, -2     ; 3 uses
  %min.iters.check938 = icmp ult i64 %i.lw, 12
  %i.lx = insertelement <4 x ptr> %i.lv, ptr %scevgep909, i64 2 ; 2 uses
  %i.ly = insertelement <4 x ptr> %i.lx, ptr %scevgep916, i64 3
  %i.lz = icmp ult <4 x ptr> %i.lt, %i.ly
  %i.ma = shufflevector <4 x ptr> %i.lx, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.mb = insertelement <2 x ptr> %i.ma, ptr %scevgep914, i64 1
  %i.mc = shufflevector <2 x ptr> %i.mb, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.md = icmp ult <4 x ptr> %i.li, %i.mc
  %i.me = or i32 %i.d, %i.g
  %i.mf = and <4 x i1> %i.lz, %i.md
  %i.mg = bitcast <4 x i1> %i.mf to i4
  %i.mh = icmp ne i4 %i.mg, 0
  %i.mi = icmp slt i32 %i.me, 0
  %op.rdx1015 = or i1 %i.mh, %i.mi
  %n.vec940 = and i64 %i.lw, -4                   ; 3 uses
  %i.mj = or disjoint i64 %n.vec940, 2
  %cmp.n952 = icmp eq i64 %i.lw, %n.vec940
  %i.mk = add nsw i64 %wide.trip.count489, -1
  br label %.lr.ph420.split

iter.check999:                                    ; preds = %.lr.ph420
  %i.ml = sext i32 %i.d to i64                    ; 5 uses
  %i.mm = sext i32 %i.g to i64                    ; 5 uses
  %i.mn = zext nneg i32 %i.bl to i64              ; 5 uses
  %min.iters.check969 = icmp ult i32 %i.bl, 4
  br i1 %min.iters.check969, label %.lr.ph420.split.us.preheader, label %vector.scevcheck954

vector.scevcheck954:                              ; preds = %iter.check999
  %ident.check955 = icmp ne i32 %i.g, 1
  %ident.check956 = icmp ne i32 %i.d, 1
  %i.mo = or i1 %ident.check955, %ident.check956
  br i1 %i.mo, label %.lr.ph420.split.us.preheader, label %vector.memcheck970

vector.memcheck970:                               ; preds = %vector.scevcheck954
  %i.mp = shl nuw nsw i64 %wide.trip.count499, 3
  %i.mq = add nsw i64 %i.mp, -8                   ; 2 uses
  %i.mr = getelementptr i8, ptr %10, i64 %i.mq    ; 2 uses
  %i.ms = getelementptr i8, ptr %5, i64 8
  %i.mt = getelementptr i8, ptr %7, i64 %i.mq
  %bound0971 = icmp ult ptr %10, %i.ms
  %bound1972 = icmp ult ptr %5, %i.mr
  %found.conflict973 = and i1 %bound0971, %bound1972
  %bound0974 = icmp ult ptr %10, %i.mt
  %bound1975 = icmp ult ptr %7, %i.mr
  %found.conflict976 = and i1 %bound0974, %bound1975
  %conflict.rdx977 = or i1 %found.conflict973, %found.conflict976
  br i1 %conflict.rdx977, label %.lr.ph420.split.us.preheader, label %vector.main.loop.iter.check978

vector.main.loop.iter.check978:                   ; preds = %vector.memcheck970
  %min.iters.check979 = icmp ult i32 %i.bl, 16
  br i1 %min.iters.check979, label %vec.epilog.ph1003, label %vector.ph980

vector.ph980:                                     ; preds = %vector.main.loop.iter.check978
  %i.mu = and i64 %i.mn, 12
  %n.vec981 = and i64 %i.mn, 2147483632           ; 4 uses
  %i.mv = or disjoint i64 %n.vec981, 1
  %i.mw = load double, ptr %5, align 8, !tbaa !84, !alias.scope !100
  %broadcast.splatinsert992 = insertelement <4 x double> poison, double %i.mw, i64 0
  %broadcast.splat993 = shufflevector <4 x double> %broadcast.splatinsert992, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body982

vector.body982:                                   ; preds = %vector.ph980, %vector.body982
  %index983 = phi i64 [ 0, %vector.ph980 ], [ %index.next994, %vector.body982 ] ; 2 uses
  %i.mx = or disjoint i64 %index983, 1            ; 2 uses
  %i.my = getelementptr [8 x i8], ptr %i.f, i64 %i.mx ; 4 uses
  %i.mz = getelementptr i8, ptr %i.my, i64 8
  %i.na = getelementptr i8, ptr %i.my, i64 40
  %i.nb = getelementptr i8, ptr %i.my, i64 72
  %i.nc = getelementptr i8, ptr %i.my, i64 104
  %wide.load984 = load <4 x double>, ptr %i.mz, align 8, !tbaa !84, !alias.scope !101
  %wide.load985 = load <4 x double>, ptr %i.na, align 8, !tbaa !84, !alias.scope !101
  %wide.load986 = load <4 x double>, ptr %i.nb, align 8, !tbaa !84, !alias.scope !101
  %wide.load987 = load <4 x double>, ptr %i.nc, align 8, !tbaa !84, !alias.scope !101
  %i.nd = getelementptr [8 x i8], ptr %i.i, i64 %i.mx ; 4 uses
  %i.ne = getelementptr i8, ptr %i.nd, i64 8      ; 2 uses
  %i.nf = getelementptr i8, ptr %i.nd, i64 40     ; 2 uses
  %i.ng = getelementptr i8, ptr %i.nd, i64 72     ; 2 uses
  %i.nh = getelementptr i8, ptr %i.nd, i64 104    ; 2 uses
  %wide.load988 = load <4 x double>, ptr %i.ne, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %wide.load989 = load <4 x double>, ptr %i.nf, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %wide.load990 = load <4 x double>, ptr %i.ng, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %wide.load991 = load <4 x double>, ptr %i.nh, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %i.ni = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat993, <4 x double> %wide.load984, <4 x double> %wide.load988)
  %i.nj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat993, <4 x double> %wide.load985, <4 x double> %wide.load989)
  %i.nk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat993, <4 x double> %wide.load986, <4 x double> %wide.load990)
  %i.nl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat993, <4 x double> %wide.load987, <4 x double> %wide.load991)
  store <4 x double> %i.ni, ptr %i.ne, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  store <4 x double> %i.nj, ptr %i.nf, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  store <4 x double> %i.nk, ptr %i.ng, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  store <4 x double> %i.nl, ptr %i.nh, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %index.next994 = add nuw i64 %index983, 16      ; 2 uses
  %i.nm = icmp eq i64 %index.next994, %n.vec981
  br i1 %i.nm, label %middle.block995, label %vector.body982, !llvm.loop !35

middle.block995:                                  ; preds = %vector.body982
  %cmp.n996 = icmp eq i64 %n.vec981, %i.mn
  br i1 %cmp.n996, label %.loopexit371, label %vec.epilog.iter.check1001

vec.epilog.iter.check1001:                        ; preds = %middle.block995
  %min.epilog.iters.check1002 = icmp eq i64 %i.mu, 0
  br i1 %min.epilog.iters.check1002, label %.lr.ph420.split.us.preheader, label %vec.epilog.ph1003, !prof !88

vec.epilog.ph1003:                                ; preds = %vector.main.loop.iter.check978, %vec.epilog.iter.check1001
  %vec.epilog.resume.val997 = phi i64 [ %n.vec981, %vec.epilog.iter.check1001 ], [ 0, %vector.main.loop.iter.check978 ]
  %n.vec1004 = and i64 %i.mn, 2147483644          ; 3 uses
  %i.nn = or disjoint i64 %n.vec1004, 1
  %i.no = load double, ptr %5, align 8, !tbaa !84, !alias.scope !100
  %broadcast.splatinsert1009 = insertelement <4 x double> poison, double %i.no, i64 0
  %broadcast.splat1010 = shufflevector <4 x double> %broadcast.splatinsert1009, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1005

vec.epilog.vector.body1005:                       ; preds = %vec.epilog.vector.body1005, %vec.epilog.ph1003
  %index1006 = phi i64 [ %vec.epilog.resume.val997, %vec.epilog.ph1003 ], [ %index.next1011, %vec.epilog.vector.body1005 ] ; 2 uses
  %i.np = or disjoint i64 %index1006, 1           ; 2 uses
  %i.nq = getelementptr [8 x i8], ptr %i.f, i64 %i.np
  %i.nr = getelementptr i8, ptr %i.nq, i64 8
  %wide.load1007 = load <4 x double>, ptr %i.nr, align 8, !tbaa !84, !alias.scope !101
  %i.ns = getelementptr [8 x i8], ptr %i.i, i64 %i.np
  %i.nt = getelementptr i8, ptr %i.ns, i64 8      ; 2 uses
  %wide.load1008 = load <4 x double>, ptr %i.nt, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %i.nu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1010, <4 x double> %wide.load1007, <4 x double> %wide.load1008)
  store <4 x double> %i.nu, ptr %i.nt, align 8, !tbaa !84, !alias.scope !102, !noalias !103
  %index.next1011 = add nuw i64 %index1006, 4     ; 2 uses
  %i.nv = icmp eq i64 %index.next1011, %n.vec1004
  br i1 %i.nv, label %vec.epilog.middle.block1012, label %vec.epilog.vector.body1005, !llvm.loop !36

vec.epilog.middle.block1012:                      ; preds = %vec.epilog.vector.body1005
  %cmp.n1013 = icmp eq i64 %n.vec1004, %i.mn
  br i1 %cmp.n1013, label %.loopexit371, label %.lr.ph420.split.us.preheader

.lr.ph420.split.us.preheader:                     ; preds = %iter.check999, %vector.scevcheck954, %vector.memcheck970, %vec.epilog.iter.check1001, %vec.epilog.middle.block1012
  %indvars.iv496.ph = phi i64 [ 1, %iter.check999 ], [ 1, %vector.scevcheck954 ], [ 1, %vector.memcheck970 ], [ %i.mv, %vec.epilog.iter.check1001 ], [ %i.nn, %vec.epilog.middle.block1012 ] ; 4 uses
  %i.nw = sub i64 %wide.trip.count499, %indvars.iv496.ph
  %i.nx = zext nneg i32 %i.bl to i64
  %i.ny = sub i64 %i.nx, %indvars.iv496.ph
  %xtraiter1057 = and i64 %i.nw, 3                ; 2 uses
  %lcmp.mod1058.not = icmp eq i64 %xtraiter1057, 0
  br i1 %lcmp.mod1058.not, label %.lr.ph420.split.us.prol.loopexit, label %.lr.ph420.split.us.prol

.lr.ph420.split.us.prol:                          ; preds = %.lr.ph420.split.us.preheader, %.lr.ph420.split.us.prol
  %indvars.iv496.prol = phi i64 [ %indvars.iv.next497.prol, %.lr.ph420.split.us.prol ], [ %indvars.iv496.ph, %.lr.ph420.split.us.preheader ] ; 3 uses
  %prol.iter1059 = phi i64 [ %prol.iter1059.next, %.lr.ph420.split.us.prol ], [ 0, %.lr.ph420.split.us.preheader ]
  %i.nz = load double, ptr %5, align 8, !tbaa !84
  %i.oa = mul nsw i64 %indvars.iv496.prol, %i.ml
  %i.ob = getelementptr [8 x i8], ptr %i.f, i64 %i.oa
  %i.oc = getelementptr i8, ptr %i.ob, i64 8
  %i.od = load double, ptr %i.oc, align 8, !tbaa !84
  %i.oe = mul nsw i64 %indvars.iv496.prol, %i.mm
  %i.of = getelementptr [8 x i8], ptr %i.i, i64 %i.oe
  %i.og = getelementptr i8, ptr %i.of, i64 8      ; 2 uses
  %i.oh = load double, ptr %i.og, align 8, !tbaa !84
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.nz, double %i.od, double %i.oh)
  store double %i.oi, ptr %i.og, align 8, !tbaa !84
  %indvars.iv.next497.prol = add nuw nsw i64 %indvars.iv496.prol, 1 ; 2 uses
  %prol.iter1059.next = add i64 %prol.iter1059, 1 ; 2 uses
  %prol.iter1059.cmp.not = icmp eq i64 %prol.iter1059.next, %xtraiter1057
  br i1 %prol.iter1059.cmp.not, label %.lr.ph420.split.us.prol.loopexit, label %.lr.ph420.split.us.prol, !llvm.loop !37

.lr.ph420.split.us.prol.loopexit:                 ; preds = %.lr.ph420.split.us.prol, %.lr.ph420.split.us.preheader
  %indvars.iv496.unr = phi i64 [ %indvars.iv496.ph, %.lr.ph420.split.us.preheader ], [ %indvars.iv.next497.prol, %.lr.ph420.split.us.prol ]
  %i.oj = icmp ult i64 %i.ny, 3
  br i1 %i.oj, label %.loopexit371, label %.lr.ph420.split.us

.lr.ph420.split.us:                               ; preds = %.lr.ph420.split.us.prol.loopexit, %.lr.ph420.split.us
  %indvars.iv496 = phi i64 [ %indvars.iv.next497.3, %.lr.ph420.split.us ], [ %indvars.iv496.unr, %.lr.ph420.split.us.prol.loopexit ] ; 6 uses
  %i.ok = load double, ptr %5, align 8, !tbaa !84
  %i.ol = mul nsw i64 %indvars.iv496, %i.ml
  %i.om = getelementptr [8 x i8], ptr %i.f, i64 %i.ol
  %i.on = getelementptr i8, ptr %i.om, i64 8
  %i.oo = load double, ptr %i.on, align 8, !tbaa !84
  %i.op = mul nsw i64 %indvars.iv496, %i.mm
  %i.oq = getelementptr [8 x i8], ptr %i.i, i64 %i.op
  %i.or = getelementptr i8, ptr %i.oq, i64 8      ; 2 uses
  %i.os = load double, ptr %i.or, align 8, !tbaa !84
  %i.ot = tail call double @llvm.fmuladd.f64(double %i.ok, double %i.oo, double %i.os)
  store double %i.ot, ptr %i.or, align 8, !tbaa !84
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %i.ou = load double, ptr %5, align 8, !tbaa !84
  %i.ov = mul nsw i64 %indvars.iv.next497, %i.ml
  %i.ow = getelementptr [8 x i8], ptr %i.f, i64 %i.ov
  %i.ox = getelementptr i8, ptr %i.ow, i64 8
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !84
  %i.oz = mul nsw i64 %indvars.iv.next497, %i.mm
  %i.pa = getelementptr [8 x i8], ptr %i.i, i64 %i.oz
  %i.pb = getelementptr i8, ptr %i.pa, i64 8      ; 2 uses
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !84
  %i.pd = tail call double @llvm.fmuladd.f64(double %i.ou, double %i.oy, double %i.pc)
  store double %i.pd, ptr %i.pb, align 8, !tbaa !84
  %indvars.iv.next497.1 = add nuw nsw i64 %indvars.iv496, 2 ; 2 uses
  %i.pe = load double, ptr %5, align 8, !tbaa !84
  %i.pf = mul nsw i64 %indvars.iv.next497.1, %i.ml
  %i.pg = getelementptr [8 x i8], ptr %i.f, i64 %i.pf
  %i.ph = getelementptr i8, ptr %i.pg, i64 8
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !84
  %i.pj = mul nsw i64 %indvars.iv.next497.1, %i.mm
  %i.pk = getelementptr [8 x i8], ptr %i.i, i64 %i.pj
  %i.pl = getelementptr i8, ptr %i.pk, i64 8      ; 2 uses
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !84
  %i.pn = tail call double @llvm.fmuladd.f64(double %i.pe, double %i.pi, double %i.pm)
  store double %i.pn, ptr %i.pl, align 8, !tbaa !84
  %indvars.iv.next497.2 = add nuw nsw i64 %indvars.iv496, 3 ; 2 uses
  %i.po = load double, ptr %5, align 8, !tbaa !84
  %i.pp = mul nsw i64 %indvars.iv.next497.2, %i.ml
  %i.pq = getelementptr [8 x i8], ptr %i.f, i64 %i.pp
  %i.pr = getelementptr i8, ptr %i.pq, i64 8
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !84
  %i.pt = mul nsw i64 %indvars.iv.next497.2, %i.mm
  %i.pu = getelementptr [8 x i8], ptr %i.i, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 8      ; 2 uses
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !84
  %i.px = tail call double @llvm.fmuladd.f64(double %i.po, double %i.ps, double %i.pw)
  store double %i.px, ptr %i.pv, align 8, !tbaa !84
  %indvars.iv.next497.3 = add nuw nsw i64 %indvars.iv496, 4 ; 2 uses
  %exitcond500.not.3 = icmp eq i64 %indvars.iv.next497.3, %wide.trip.count499
  br i1 %exitcond500.not.3, label %.loopexit371, label %.lr.ph420.split.us, !llvm.loop !38

.lr.ph420.split:                                  ; preds = %.lr.ph420.split.preheader, %.loopexit
  %indvars.iv491 = phi i64 [ 1, %.lr.ph420.split.preheader ], [ %indvars.iv.next492, %.loopexit ] ; 3 uses
  %i.py = mul nsw i64 %indvars.iv491, %i.kn       ; 3 uses
  %i.pz = getelementptr [8 x i8], ptr %i.i, i64 %i.py
  %i.qa = getelementptr i8, ptr %i.pz, i64 8      ; 2 uses
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !84
  %i.qc = load double, ptr %5, align 8, !tbaa !84
  %i.qd = mul nsw i64 %indvars.iv491, %i.ko       ; 6 uses
  %i.qe = getelementptr [8 x i8], ptr %i.f, i64 %i.qd ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qe, i64 8
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !84
  %i.qh = tail call double @llvm.fmuladd.f64(double %i.qc, double %i.qg, double %i.qb)
  %i.qi = load double, ptr %4, align 8, !tbaa !84
  %i.qj = getelementptr i8, ptr %i.qe, i64 16
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !84
  %i.ql = tail call double @llvm.fmuladd.f64(double %i.qi, double %i.qk, double %i.qh)
  store double %i.ql, ptr %i.qa, align 8, !tbaa !84
  %gep572 = getelementptr [8 x i8], ptr %invariant.gep571, i64 %i.py ; 2 uses
  %i.qm = load double, ptr %gep572, align 8, !tbaa !84
  %i.qn = load double, ptr %i.kj, align 8, !tbaa !84
  %gep574 = getelementptr [8 x i8], ptr %invariant.gep573, i64 %i.qd
  %i.qo = load double, ptr %gep574, align 8, !tbaa !84
  %i.qp = tail call double @llvm.fmuladd.f64(double %i.qn, double %i.qo, double %i.qm)
  %i.qq = load double, ptr %i.kl, align 8, !tbaa !84
  %gep576 = getelementptr [8 x i8], ptr %invariant.gep575, i64 %i.qd
  %i.qr = load double, ptr %gep576, align 8, !tbaa !84
  %i.qs = tail call double @llvm.fmuladd.f64(double %i.qq, double %i.qr, double %i.qp)
  store double %i.qs, ptr %gep572, align 8, !tbaa !84
  br i1 %.not367.not413, label %.lr.ph416.preheader, label %.loopexit

.lr.ph416.preheader:                              ; preds = %.lr.ph420.split
  %invariant.gep563 = getelementptr [8 x i8], ptr %i.i, i64 %i.py ; 4 uses
  %invariant.gep565 = getelementptr [8 x i8], ptr %i.f, i64 %i.qd ; 4 uses
  %invariant.gep567 = getelementptr [8 x i8], ptr %i.f, i64 %i.qd ; 4 uses
  %invariant.gep569 = getelementptr [8 x i8], ptr %i.f, i64 %i.qd ; 4 uses
  %brmerge1060 = select i1 %min.iters.check938, i1 true, i1 %op.rdx1015
  br i1 %brmerge1060, label %.lr.ph416.preheader1025, label %vector.body941

vector.body941:                                   ; preds = %.lr.ph416.preheader, %vector.body941
  %index942 = phi i64 [ %index.next950, %vector.body941 ], [ 0, %.lr.ph416.preheader ] ; 5 uses
  %i.qt = or disjoint i64 %index942, 2            ; 4 uses
  %i.qu = getelementptr [8 x i8], ptr %invariant.gep563, i64 %i.qt ; 2 uses
  %wide.load943 = load <4 x double>, ptr %i.qu, align 8, !tbaa !84, !alias.scope !104, !noalias !105
  %i.qv = getelementptr [8 x i8], ptr %6, i64 %index942
  %wide.load944 = load <4 x double>, ptr %i.qv, align 8, !tbaa !84, !alias.scope !106
  %i.qw = getelementptr [8 x i8], ptr %invariant.gep565, i64 %index942
  %i.qx = getelementptr i8, ptr %i.qw, i64 8
  %wide.load945 = load <4 x double>, ptr %i.qx, align 8, !tbaa !84, !alias.scope !107
  %i.qy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load944, <4 x double> %wide.load945, <4 x double> %wide.load943)
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.qt
  %wide.load946 = load <4 x double>, ptr %i.qz, align 8, !tbaa !84, !alias.scope !108
  %i.ra = getelementptr [8 x i8], ptr %invariant.gep567, i64 %i.qt
  %wide.load947 = load <4 x double>, ptr %i.ra, align 8, !tbaa !84, !alias.scope !107
  %i.rb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load946, <4 x double> %wide.load947, <4 x double> %i.qy)
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.qt
  %wide.load948 = load <4 x double>, ptr %i.rc, align 8, !tbaa !84, !alias.scope !109
  %i.rd = getelementptr [8 x i8], ptr %invariant.gep569, i64 %index942
  %i.re = getelementptr i8, ptr %i.rd, i64 24
  %wide.load949 = load <4 x double>, ptr %i.re, align 8, !tbaa !84, !alias.scope !107
  %i.rf = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load948, <4 x double> %wide.load949, <4 x double> %i.rb)
  store <4 x double> %i.rf, ptr %i.qu, align 8, !tbaa !84, !alias.scope !104, !noalias !105
  %index.next950 = add nuw i64 %index942, 4       ; 2 uses
  %i.rg = icmp eq i64 %index.next950, %n.vec940
  br i1 %i.rg, label %middle.block951, label %vector.body941, !llvm.loop !45

middle.block951:                                  ; preds = %vector.body941
  br i1 %cmp.n952, label %.loopexit, label %.lr.ph416.preheader1025

.lr.ph416.preheader1025:                          ; preds = %.lr.ph416.preheader, %middle.block951
  %indvars.iv486.ph = phi i64 [ %i.mj, %middle.block951 ], [ 2, %.lr.ph416.preheader ] ; 9 uses
  %i.rh = sub nsw i64 %wide.trip.count489, %indvars.iv486.ph
  %xtraiter1054 = and i64 %i.rh, 1
  %lcmp.mod1055.not = icmp eq i64 %xtraiter1054, 0
  br i1 %lcmp.mod1055.not, label %.lr.ph416.prol.loopexit, label %.lr.ph416.prol

.lr.ph416.prol:                                   ; preds = %.lr.ph416.preheader1025
  %gep564.prol = getelementptr [8 x i8], ptr %invariant.gep563, i64 %indvars.iv486.ph ; 2 uses
  %i.ri = load double, ptr %gep564.prol, align 8, !tbaa !84
  %i.rj = add nsw i64 %indvars.iv486.ph, -1       ; 2 uses
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.rj
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !84
  %gep566.prol = getelementptr [8 x i8], ptr %invariant.gep565, i64 %i.rj
  %i.rm = load double, ptr %gep566.prol, align 8, !tbaa !84
  %i.rn = tail call double @llvm.fmuladd.f64(double %i.rl, double %i.rm, double %i.ri)
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv486.ph
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !84
  %gep568.prol = getelementptr [8 x i8], ptr %invariant.gep567, i64 %indvars.iv486.ph
  %i.rq = load double, ptr %gep568.prol, align 8, !tbaa !84
  %i.rr = tail call double @llvm.fmuladd.f64(double %i.rp, double %i.rq, double %i.rn)
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv486.ph
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !84
  %indvars.iv.next487.prol = add nuw nsw i64 %indvars.iv486.ph, 1 ; 2 uses
  %gep570.prol = getelementptr [8 x i8], ptr %invariant.gep569, i64 %indvars.iv.next487.prol
  %i.ru = load double, ptr %gep570.prol, align 8, !tbaa !84
  %i.rv = tail call double @llvm.fmuladd.f64(double %i.rt, double %i.ru, double %i.rr)
  store double %i.rv, ptr %gep564.prol, align 8, !tbaa !84
  br label %.lr.ph416.prol.loopexit

.lr.ph416.prol.loopexit:                          ; preds = %.lr.ph416.prol, %.lr.ph416.preheader1025
  %indvars.iv486.unr = phi i64 [ %indvars.iv486.ph, %.lr.ph416.preheader1025 ], [ %indvars.iv.next487.prol, %.lr.ph416.prol ]
  %i.rw = icmp eq i64 %indvars.iv486.ph, %i.mk
  br i1 %i.rw, label %.loopexit, label %.lr.ph416

.lr.ph416:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416
  %indvars.iv486 = phi i64 [ %indvars.iv.next487.1, %.lr.ph416 ], [ %indvars.iv486.unr, %.lr.ph416.prol.loopexit ] ; 11 uses
  %gep564 = getelementptr [8 x i8], ptr %invariant.gep563, i64 %indvars.iv486 ; 2 uses
  %i.rx = load double, ptr %gep564, align 8, !tbaa !84
  %i.ry = add nsw i64 %indvars.iv486, -1          ; 2 uses
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ry
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !84
  %gep566 = getelementptr [8 x i8], ptr %invariant.gep565, i64 %i.ry
  %i.sb = load double, ptr %gep566, align 8, !tbaa !84
  %i.sc = tail call double @llvm.fmuladd.f64(double %i.sa, double %i.sb, double %i.rx)
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv486
  %i.se = load double, ptr %i.sd, align 8, !tbaa !84
  %gep568 = getelementptr [8 x i8], ptr %invariant.gep567, i64 %indvars.iv486
  %i.sf = load double, ptr %gep568, align 8, !tbaa !84
  %i.sg = tail call double @llvm.fmuladd.f64(double %i.se, double %i.sf, double %i.sc)
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv486
  %i.si = load double, ptr %i.sh, align 8, !tbaa !84
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 3 uses
  %gep570 = getelementptr [8 x i8], ptr %invariant.gep569, i64 %indvars.iv.next487
  %i.sj = load double, ptr %gep570, align 8, !tbaa !84
  %i.sk = tail call double @llvm.fmuladd.f64(double %i.si, double %i.sj, double %i.sg)
  store double %i.sk, ptr %gep564, align 8, !tbaa !84
  %gep564.1 = getelementptr [8 x i8], ptr %invariant.gep563, i64 %indvars.iv.next487 ; 2 uses
  %i.sl = load double, ptr %gep564.1, align 8, !tbaa !84
  %i.sm = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv486
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !84
  %gep566.1 = getelementptr [8 x i8], ptr %invariant.gep565, i64 %indvars.iv486
  %i.so = load double, ptr %gep566.1, align 8, !tbaa !84
  %i.sp = tail call double @llvm.fmuladd.f64(double %i.sn, double %i.so, double %i.sl)
  %i.sq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv486
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !84
  %gep568.1 = getelementptr [8 x i8], ptr %invariant.gep567, i64 %indvars.iv.next487
  %i.ss = load double, ptr %gep568.1, align 8, !tbaa !84
  %i.st = tail call double @llvm.fmuladd.f64(double %i.sr, double %i.ss, double %i.sp)
  %i.su = getelementptr [8 x i8], ptr %4, i64 %indvars.iv486
  %i.sv = load double, ptr %i.su, align 8, !tbaa !84
  %indvars.iv.next487.1 = add nuw nsw i64 %indvars.iv486, 2 ; 3 uses
  %gep570.1 = getelementptr [8 x i8], ptr %invariant.gep569, i64 %indvars.iv.next487.1
  %i.sw = load double, ptr %gep570.1, align 8, !tbaa !84
  %i.sx = tail call double @llvm.fmuladd.f64(double %i.sv, double %i.sw, double %i.st)
  store double %i.sx, ptr %gep564.1, align 8, !tbaa !84
  %exitcond490.not.1 = icmp eq i64 %indvars.iv.next487.1, %wide.trip.count489
  br i1 %exitcond490.not.1, label %.loopexit, label %.lr.ph416, !llvm.loop !46

.loopexit:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416, %middle.block951, %.lr.ph420.split
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond495.not = icmp eq i64 %indvars.iv.next492, %wide.trip.count499
  br i1 %exitcond495.not, label %.loopexit371, label %.lr.ph420.split, !llvm.loop !47

bb.i:                                             ; preds = %.loopexit378
  %i.sy = fcmp oeq double %i.bi, -1.000000e+00
  br i1 %i.sy, label %bb.j, label %.loopexit371

bb.j:                                             ; preds = %bb.i
  %i.sz = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %.not360 = icmp eq i32 %i.sz, 0
  %i.ta = load i32, ptr %2, align 4, !tbaa !82    ; 11 uses
  %.not361401 = icmp slt i32 %i.ta, 1             ; 2 uses
  br i1 %.not360, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not361401, label %.loopexit371, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.k
  %i.tb = load i32, ptr %1, align 4, !tbaa !82    ; 5 uses
  %i.tc = icmp eq i32 %i.tb, 1
  %i.td = add nsw i32 %i.tb, -1
  %i.te = sext i32 %i.td to i64                   ; 2 uses
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.te
  %i.tg = sext i32 %i.tb to i64                   ; 3 uses
  %i.th = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.tg
  %.not364.not390 = icmp sgt i32 %i.tb, 2
  %i.ti = add nuw i32 %i.ta, 1
  %wide.trip.count454 = zext i32 %i.ti to i64     ; 5 uses
  br i1 %i.tc, label %iter.check675, label %.lr.ph396.split.preheader

.lr.ph396.split.preheader:                        ; preds = %.lr.ph396
  %i.tj = sext i32 %i.g to i64                    ; 3 uses
  %i.tk = sext i32 %i.d to i64                    ; 3 uses
  %invariant.gep529 = getelementptr [8 x i8], ptr %i.i, i64 %i.tg
  %invariant.gep531 = getelementptr [8 x i8], ptr %i.f, i64 %i.te
  %invariant.gep533 = getelementptr [8 x i8], ptr %i.f, i64 %i.tg
  %wide.trip.count444 = zext i32 %i.tb to i64     ; 5 uses
  %i.tl = shl nsw i64 %i.tj, 3
  %i.tm = shl nsw i64 %i.h, 3                     ; 2 uses
  %i.tn = getelementptr i8, ptr %10, i64 %i.tl
  %i.to = getelementptr i8, ptr %i.tn, i64 %i.tm
  %i.tp = shl nuw nsw i64 %wide.trip.count454, 3
  %i.tq = add nsw i64 %i.tp, -8                   ; 2 uses
  %i.tr = mul i64 %i.tq, %i.tj
  %i.ts = shl nuw nsw i64 %wide.trip.count444, 3  ; 4 uses
  %i.tt = getelementptr i8, ptr %10, i64 %i.tr
  %i.tu = getelementptr i8, ptr %i.tt, i64 %i.tm
  %scevgep596 = getelementptr i8, ptr %i.tu, i64 %i.ts
  %i.tv = getelementptr i8, ptr %4, i64 %i.ts
  %i.tw = shl nsw i64 %i.tk, 3
  %i.tx = shl nsw i64 %i.e, 3                     ; 2 uses
  %i.ty = getelementptr i8, ptr %7, i64 %i.tw
  %i.tz = getelementptr i8, ptr %i.ty, i64 %i.tx
  %i.ua = insertelement <4 x ptr> poison, ptr %4, i64 0
  %i.ub = insertelement <4 x ptr> %i.ua, ptr %i.tz, i64 1
  %i.uc = insertelement <4 x ptr> %i.ub, ptr %i.to, i64 2 ; 2 uses
  %i.ud = insertelement <4 x ptr> %i.uc, ptr %6, i64 3
  %i.ue = getelementptr i8, <4 x ptr> %i.ud, <4 x i64> <i64 0, i64 8, i64 16, i64 8>
  %i.uf = mul i64 %i.tq, %i.tk
  %i.ug = getelementptr i8, ptr %7, i64 %i.uf
  %i.uh = getelementptr i8, ptr %i.ug, i64 %i.tx
  %i.ui = getelementptr i8, ptr %i.uh, i64 %i.ts
  %i.uj = insertelement <2 x ptr> poison, ptr %i.tv, i64 0
  %i.uk = insertelement <2 x ptr> %i.uj, ptr %i.ui, i64 1
  %i.ul = getelementptr i8, <2 x ptr> %i.uk, <2 x i64> <i64 -16, i64 8>
  %i.um = shufflevector <4 x ptr> %i.uc, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.un = insertelement <2 x ptr> %i.um, ptr %5, i64 1
  %i.uo = getelementptr i8, <2 x ptr> %i.un, <2 x i64> <i64 16, i64 8>
  %i.up = shufflevector <2 x ptr> %i.uo, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.uq = add nsw i64 %i.ts, -8                   ; 2 uses
  %scevgep601 = getelementptr i8, ptr %5, i64 %i.uq
  %scevgep603 = getelementptr i8, ptr %6, i64 %i.uq
  %i.ur = shufflevector <2 x ptr> %i.ul, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.us = add nsw i64 %wide.trip.count444, -2     ; 3 uses
  %min.iters.check619 = icmp ult i64 %i.us, 8
  %i.ut = insertelement <4 x ptr> %i.ur, ptr %scevgep596, i64 2 ; 2 uses
  %i.uu = insertelement <4 x ptr> %i.ut, ptr %scevgep603, i64 3
  %i.uv = icmp ult <4 x ptr> %i.up, %i.uu
  %i.uw = shufflevector <4 x ptr> %i.ut, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.ux = insertelement <2 x ptr> %i.uw, ptr %scevgep601, i64 1
  %i.uy = shufflevector <2 x ptr> %i.ux, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.uz = icmp ult <4 x ptr> %i.ue, %i.uy
  %i.va = or i32 %i.d, %i.g
  %i.vb = and <4 x i1> %i.uv, %i.uz
  %i.vc = bitcast <4 x i1> %i.vb to i4
  %i.vd = icmp ne i4 %i.vc, 0
  %i.ve = icmp slt i32 %i.va, 0
  %op.rdx1021 = or i1 %i.vd, %i.ve
  %n.vec621 = and i64 %i.us, -4                   ; 3 uses
  %i.vf = or disjoint i64 %n.vec621, 2
  %cmp.n633 = icmp eq i64 %i.us, %n.vec621
  %i.vg = add nsw i64 %wide.trip.count444, -1
  br label %.lr.ph396.split

iter.check675:                                    ; preds = %.lr.ph396
  %i.vh = sext i32 %i.d to i64                    ; 5 uses
  %i.vi = sext i32 %i.g to i64                    ; 5 uses
  %i.vj = zext nneg i32 %i.ta to i64              ; 5 uses
  %min.iters.check647 = icmp ult i32 %i.ta, 4
  br i1 %min.iters.check647, label %.lr.ph396.split.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check675
  %ident.check = icmp ne i32 %i.g, 1
  %ident.check634 = icmp ne i32 %i.d, 1
  %i.vk = or i1 %ident.check, %ident.check634
  br i1 %i.vk, label %.lr.ph396.split.us.preheader, label %vector.memcheck648

vector.memcheck648:                               ; preds = %vector.scevcheck
  %i.vl = shl nuw nsw i64 %wide.trip.count454, 3
  %i.vm = add nsw i64 %i.vl, -8                   ; 2 uses
  %i.vn = getelementptr i8, ptr %10, i64 %i.vm    ; 2 uses
  %i.vo = getelementptr i8, ptr %5, i64 8
  %i.vp = getelementptr i8, ptr %7, i64 %i.vm
  %bound0649 = icmp ult ptr %10, %i.vo
  %bound1650 = icmp ult ptr %5, %i.vn
  %found.conflict651 = and i1 %bound0649, %bound1650
  %bound0652 = icmp ult ptr %10, %i.vp
  %bound1653 = icmp ult ptr %7, %i.vn
  %found.conflict654 = and i1 %bound0652, %bound1653
  %conflict.rdx655 = or i1 %found.conflict651, %found.conflict654
  br i1 %conflict.rdx655, label %.lr.ph396.split.us.preheader, label %vector.main.loop.iter.check656

vector.main.loop.iter.check656:                   ; preds = %vector.memcheck648
  %min.iters.check657 = icmp ult i32 %i.ta, 16
  br i1 %min.iters.check657, label %vec.epilog.ph679, label %vector.ph658

vector.ph658:                                     ; preds = %vector.main.loop.iter.check656
  %i.vq = and i64 %i.vj, 12
  %n.vec659 = and i64 %i.vj, 2147483632           ; 4 uses
  %i.vr = or disjoint i64 %n.vec659, 1
  %i.vs = load double, ptr %5, align 8, !tbaa !84, !alias.scope !110
  %.scalar = fneg double %i.vs
  %i.vt = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.vu = shufflevector <4 x double> %i.vt, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body660

vector.body660:                                   ; preds = %vector.ph658, %vector.body660
  %index661 = phi i64 [ 0, %vector.ph658 ], [ %index.next670, %vector.body660 ] ; 2 uses
  %i.vv = or disjoint i64 %index661, 1            ; 2 uses
  %i.vw = getelementptr [8 x i8], ptr %i.f, i64 %i.vv ; 4 uses
  %i.vx = getelementptr i8, ptr %i.vw, i64 8
  %i.vy = getelementptr i8, ptr %i.vw, i64 40
  %i.vz = getelementptr i8, ptr %i.vw, i64 72
  %i.wa = getelementptr i8, ptr %i.vw, i64 104
  %wide.load662 = load <4 x double>, ptr %i.vx, align 8, !tbaa !84, !alias.scope !111
  %wide.load663 = load <4 x double>, ptr %i.vy, align 8, !tbaa !84, !alias.scope !111
  %wide.load664 = load <4 x double>, ptr %i.vz, align 8, !tbaa !84, !alias.scope !111
  %wide.load665 = load <4 x double>, ptr %i.wa, align 8, !tbaa !84, !alias.scope !111
  %i.wb = getelementptr [8 x i8], ptr %i.i, i64 %i.vv ; 4 uses
  %i.wc = getelementptr i8, ptr %i.wb, i64 8      ; 2 uses
  %i.wd = getelementptr i8, ptr %i.wb, i64 40     ; 2 uses
  %i.we = getelementptr i8, ptr %i.wb, i64 72     ; 2 uses
  %i.wf = getelementptr i8, ptr %i.wb, i64 104    ; 2 uses
  %wide.load666 = load <4 x double>, ptr %i.wc, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %wide.load667 = load <4 x double>, ptr %i.wd, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %wide.load668 = load <4 x double>, ptr %i.we, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %wide.load669 = load <4 x double>, ptr %i.wf, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %i.wg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vu, <4 x double> %wide.load662, <4 x double> %wide.load666)
  %i.wh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vu, <4 x double> %wide.load663, <4 x double> %wide.load667)
  %i.wi = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vu, <4 x double> %wide.load664, <4 x double> %wide.load668)
  %i.wj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vu, <4 x double> %wide.load665, <4 x double> %wide.load669)
  store <4 x double> %i.wg, ptr %i.wc, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  store <4 x double> %i.wh, ptr %i.wd, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  store <4 x double> %i.wi, ptr %i.we, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  store <4 x double> %i.wj, ptr %i.wf, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %index.next670 = add nuw i64 %index661, 16      ; 2 uses
  %i.wk = icmp eq i64 %index.next670, %n.vec659
  br i1 %i.wk, label %middle.block671, label %vector.body660, !llvm.loop !52

middle.block671:                                  ; preds = %vector.body660
  %cmp.n672 = icmp eq i64 %n.vec659, %i.vj
  br i1 %cmp.n672, label %.loopexit371, label %vec.epilog.iter.check677

vec.epilog.iter.check677:                         ; preds = %middle.block671
  %min.epilog.iters.check678 = icmp eq i64 %i.vq, 0
  br i1 %min.epilog.iters.check678, label %.lr.ph396.split.us.preheader, label %vec.epilog.ph679, !prof !88

vec.epilog.ph679:                                 ; preds = %vector.main.loop.iter.check656, %vec.epilog.iter.check677
  %vec.epilog.resume.val673 = phi i64 [ %n.vec659, %vec.epilog.iter.check677 ], [ 0, %vector.main.loop.iter.check656 ]
  %n.vec680 = and i64 %i.vj, 2147483644           ; 3 uses
  %i.wl = or disjoint i64 %n.vec680, 1
  %i.wm = load double, ptr %5, align 8, !tbaa !84, !alias.scope !110
  %.scalar1022 = fneg double %i.wm
  %i.wn = insertelement <4 x double> poison, double %.scalar1022, i64 0
  %i.wo = shufflevector <4 x double> %i.wn, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body683

vec.epilog.vector.body683:                        ; preds = %vec.epilog.vector.body683, %vec.epilog.ph679
  %index684 = phi i64 [ %vec.epilog.resume.val673, %vec.epilog.ph679 ], [ %index.next687, %vec.epilog.vector.body683 ] ; 2 uses
  %i.wp = or disjoint i64 %index684, 1            ; 2 uses
  %i.wq = getelementptr [8 x i8], ptr %i.f, i64 %i.wp
  %i.wr = getelementptr i8, ptr %i.wq, i64 8
  %wide.load685 = load <4 x double>, ptr %i.wr, align 8, !tbaa !84, !alias.scope !111
  %i.ws = getelementptr [8 x i8], ptr %i.i, i64 %i.wp
  %i.wt = getelementptr i8, ptr %i.ws, i64 8      ; 2 uses
  %wide.load686 = load <4 x double>, ptr %i.wt, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %i.wu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.wo, <4 x double> %wide.load685, <4 x double> %wide.load686)
  store <4 x double> %i.wu, ptr %i.wt, align 8, !tbaa !84, !alias.scope !112, !noalias !113
  %index.next687 = add nuw i64 %index684, 4       ; 2 uses
  %i.wv = icmp eq i64 %index.next687, %n.vec680
  br i1 %i.wv, label %vec.epilog.middle.block688, label %vec.epilog.vector.body683, !llvm.loop !53

vec.epilog.middle.block688:                       ; preds = %vec.epilog.vector.body683
  %cmp.n689 = icmp eq i64 %n.vec680, %i.vj
  br i1 %cmp.n689, label %.loopexit371, label %.lr.ph396.split.us.preheader

.lr.ph396.split.us.preheader:                     ; preds = %iter.check675, %vector.scevcheck, %vector.memcheck648, %vec.epilog.iter.check677, %vec.epilog.middle.block688
  %indvars.iv451.ph = phi i64 [ 1, %iter.check675 ], [ 1, %vector.scevcheck ], [ 1, %vector.memcheck648 ], [ %i.vr, %vec.epilog.iter.check677 ], [ %i.wl, %vec.epilog.middle.block688 ] ; 4 uses
  %i.ww = sub i64 %wide.trip.count454, %indvars.iv451.ph
  %i.wx = zext nneg i32 %i.ta to i64
  %i.wy = sub i64 %i.wx, %indvars.iv451.ph
  %xtraiter1040 = and i64 %i.ww, 3                ; 2 uses
  %lcmp.mod1041.not = icmp eq i64 %xtraiter1040, 0
  br i1 %lcmp.mod1041.not, label %.lr.ph396.split.us.prol.loopexit, label %.lr.ph396.split.us.prol

.lr.ph396.split.us.prol:                          ; preds = %.lr.ph396.split.us.preheader, %.lr.ph396.split.us.prol
  %indvars.iv451.prol = phi i64 [ %indvars.iv.next452.prol, %.lr.ph396.split.us.prol ], [ %indvars.iv451.ph, %.lr.ph396.split.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph396.split.us.prol ], [ 0, %.lr.ph396.split.us.preheader ]
  %i.wz = load double, ptr %5, align 8, !tbaa !84
  %i.xa = mul nsw i64 %indvars.iv451.prol, %i.vh
  %i.xb = getelementptr [8 x i8], ptr %i.f, i64 %i.xa
  %i.xc = getelementptr i8, ptr %i.xb, i64 8
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !84
  %i.xe = mul nsw i64 %indvars.iv451.prol, %i.vi
  %i.xf = getelementptr [8 x i8], ptr %i.i, i64 %i.xe
  %i.xg = getelementptr i8, ptr %i.xf, i64 8      ; 2 uses
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !84
  %i.xi = fneg double %i.wz
  %i.xj = tail call double @llvm.fmuladd.f64(double %i.xi, double %i.xd, double %i.xh)
  store double %i.xj, ptr %i.xg, align 8, !tbaa !84
  %indvars.iv.next452.prol = add nuw nsw i64 %indvars.iv451.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1040
  br i1 %prol.iter.cmp.not, label %.lr.ph396.split.us.prol.loopexit, label %.lr.ph396.split.us.prol, !llvm.loop !54

.lr.ph396.split.us.prol.loopexit:                 ; preds = %.lr.ph396.split.us.prol, %.lr.ph396.split.us.preheader
  %indvars.iv451.unr = phi i64 [ %indvars.iv451.ph, %.lr.ph396.split.us.preheader ], [ %indvars.iv.next452.prol, %.lr.ph396.split.us.prol ]
  %i.xk = icmp ult i64 %i.wy, 3
  br i1 %i.xk, label %.loopexit371, label %.lr.ph396.split.us

.lr.ph396.split.us:                               ; preds = %.lr.ph396.split.us.prol.loopexit, %.lr.ph396.split.us
  %indvars.iv451 = phi i64 [ %indvars.iv.next452.3, %.lr.ph396.split.us ], [ %indvars.iv451.unr, %.lr.ph396.split.us.prol.loopexit ] ; 6 uses
  %i.xl = load double, ptr %5, align 8, !tbaa !84
  %i.xm = mul nsw i64 %indvars.iv451, %i.vh
  %i.xn = getelementptr [8 x i8], ptr %i.f, i64 %i.xm
  %i.xo = getelementptr i8, ptr %i.xn, i64 8
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !84
  %i.xq = mul nsw i64 %indvars.iv451, %i.vi
  %i.xr = getelementptr [8 x i8], ptr %i.i, i64 %i.xq
  %i.xs = getelementptr i8, ptr %i.xr, i64 8      ; 2 uses
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !84
  %i.xu = fneg double %i.xl
  %i.xv = tail call double @llvm.fmuladd.f64(double %i.xu, double %i.xp, double %i.xt)
  store double %i.xv, ptr %i.xs, align 8, !tbaa !84
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %i.xw = load double, ptr %5, align 8, !tbaa !84
  %i.xx = mul nsw i64 %indvars.iv.next452, %i.vh
  %i.xy = getelementptr [8 x i8], ptr %i.f, i64 %i.xx
  %i.xz = getelementptr i8, ptr %i.xy, i64 8
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !84
  %i.yb = mul nsw i64 %indvars.iv.next452, %i.vi
  %i.yc = getelementptr [8 x i8], ptr %i.i, i64 %i.yb
  %i.yd = getelementptr i8, ptr %i.yc, i64 8      ; 2 uses
  %i.ye = load double, ptr %i.yd, align 8, !tbaa !84
  %i.yf = fneg double %i.xw
  %i.yg = tail call double @llvm.fmuladd.f64(double %i.yf, double %i.ya, double %i.ye)
  store double %i.yg, ptr %i.yd, align 8, !tbaa !84
  %indvars.iv.next452.1 = add nuw nsw i64 %indvars.iv451, 2 ; 2 uses
  %i.yh = load double, ptr %5, align 8, !tbaa !84
  %i.yi = mul nsw i64 %indvars.iv.next452.1, %i.vh
  %i.yj = getelementptr [8 x i8], ptr %i.f, i64 %i.yi
  %i.yk = getelementptr i8, ptr %i.yj, i64 8
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !84
  %i.ym = mul nsw i64 %indvars.iv.next452.1, %i.vi
  %i.yn = getelementptr [8 x i8], ptr %i.i, i64 %i.ym
  %i.yo = getelementptr i8, ptr %i.yn, i64 8      ; 2 uses
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !84
  %i.yq = fneg double %i.yh
  %i.yr = tail call double @llvm.fmuladd.f64(double %i.yq, double %i.yl, double %i.yp)
  store double %i.yr, ptr %i.yo, align 8, !tbaa !84
  %indvars.iv.next452.2 = add nuw nsw i64 %indvars.iv451, 3 ; 2 uses
  %i.ys = load double, ptr %5, align 8, !tbaa !84
  %i.yt = mul nsw i64 %indvars.iv.next452.2, %i.vh
  %i.yu = getelementptr [8 x i8], ptr %i.f, i64 %i.yt
  %i.yv = getelementptr i8, ptr %i.yu, i64 8
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !84
  %i.yx = mul nsw i64 %indvars.iv.next452.2, %i.vi
  %i.yy = getelementptr [8 x i8], ptr %i.i, i64 %i.yx
  %i.yz = getelementptr i8, ptr %i.yy, i64 8      ; 2 uses
  %i.za = load double, ptr %i.yz, align 8, !tbaa !84
  %i.zb = fneg double %i.ys
  %i.zc = tail call double @llvm.fmuladd.f64(double %i.zb, double %i.yw, double %i.za)
  store double %i.zc, ptr %i.yz, align 8, !tbaa !84
  %indvars.iv.next452.3 = add nuw nsw i64 %indvars.iv451, 4 ; 2 uses
  %exitcond455.not.3 = icmp eq i64 %indvars.iv.next452.3, %wide.trip.count454
  br i1 %exitcond455.not.3, label %.loopexit371, label %.lr.ph396.split.us, !llvm.loop !55

.lr.ph396.split:                                  ; preds = %.lr.ph396.split.preheader, %.loopexit376
  %indvars.iv446 = phi i64 [ 1, %.lr.ph396.split.preheader ], [ %indvars.iv.next447, %.loopexit376 ] ; 3 uses
  %i.zd = mul nsw i64 %indvars.iv446, %i.tj       ; 3 uses
  %i.ze = getelementptr [8 x i8], ptr %i.i, i64 %i.zd
  %i.zf = getelementptr i8, ptr %i.ze, i64 8      ; 2 uses
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !84
  %i.zh = load double, ptr %5, align 8, !tbaa !84
  %i.zi = mul nsw i64 %indvars.iv446, %i.tk       ; 6 uses
  %i.zj = getelementptr [8 x i8], ptr %i.f, i64 %i.zi ; 2 uses
  %i.zk = getelementptr i8, ptr %i.zj, i64 8
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !84
  %i.zm = fneg double %i.zh
  %i.zn = tail call double @llvm.fmuladd.f64(double %i.zm, double %i.zl, double %i.zg)
  %i.zo = load double, ptr %6, align 8, !tbaa !84
  %i.zp = getelementptr i8, ptr %i.zj, i64 16
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !84
  %i.zr = fneg double %i.zo
  %i.zs = tail call double @llvm.fmuladd.f64(double %i.zr, double %i.zq, double %i.zn)
  store double %i.zs, ptr %i.zf, align 8, !tbaa !84
  %gep530 = getelementptr [8 x i8], ptr %invariant.gep529, i64 %i.zd ; 2 uses
  %i.zt = load double, ptr %gep530, align 8, !tbaa !84
  %i.zu = load double, ptr %i.tf, align 8, !tbaa !84
  %gep532 = getelementptr [8 x i8], ptr %invariant.gep531, i64 %i.zi
  %i.zv = load double, ptr %gep532, align 8, !tbaa !84
  %i.zw = fneg double %i.zu
  %i.zx = tail call double @llvm.fmuladd.f64(double %i.zw, double %i.zv, double %i.zt)
  %i.zy = load double, ptr %i.th, align 8, !tbaa !84
  %gep534 = getelementptr [8 x i8], ptr %invariant.gep533, i64 %i.zi
  %i.zz = load double, ptr %gep534, align 8, !tbaa !84
  %i.aaa = fneg double %i.zy
  %i.aab = tail call double @llvm.fmuladd.f64(double %i.aaa, double %i.zz, double %i.zx)
  store double %i.aab, ptr %gep530, align 8, !tbaa !84
  br i1 %.not364.not390, label %.lr.ph.preheader, label %.loopexit376

.lr.ph.preheader:                                 ; preds = %.lr.ph396.split
  %invariant.gep521 = getelementptr [8 x i8], ptr %i.i, i64 %i.zd ; 4 uses
  %invariant.gep523 = getelementptr [8 x i8], ptr %i.f, i64 %i.zi ; 4 uses
  %invariant.gep525 = getelementptr [8 x i8], ptr %i.f, i64 %i.zi ; 4 uses
  %invariant.gep527 = getelementptr [8 x i8], ptr %i.f, i64 %i.zi ; 4 uses
  %brmerge1061 = select i1 %min.iters.check619, i1 true, i1 %op.rdx1021
  br i1 %brmerge1061, label %.lr.ph.preheader1034, label %vector.body622

vector.body622:                                   ; preds = %.lr.ph.preheader, %vector.body622
  %index623 = phi i64 [ %index.next631, %vector.body622 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.aac = or disjoint i64 %index623, 2           ; 4 uses
  %i.aad = getelementptr [8 x i8], ptr %invariant.gep521, i64 %i.aac ; 2 uses
  %wide.load624.a = load <4 x double>, ptr %i.aad, align 8, !tbaa !84, !alias.scope !114, !noalias !115
  %i.aae = getelementptr [8 x i8], ptr %4, i64 %index623
  %wide.load625 = load <4 x double>, ptr %i.aae, align 8, !tbaa !84, !alias.scope !116
  %i.aaf = getelementptr [8 x i8], ptr %invariant.gep523, i64 %index623
  %i.aag = getelementptr i8, ptr %i.aaf, i64 8
  %wide.load626.a = load <4 x double>, ptr %i.aag, align 8, !tbaa !84, !alias.scope !117
  %i.aah = fneg <4 x double> %wide.load625
  %i.aai = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aah, <4 x double> %wide.load626.a, <4 x double> %wide.load624.a)
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aac
  %wide.load627 = load <4 x double>, ptr %i.aaj, align 8, !tbaa !84, !alias.scope !118
  %i.aak = getelementptr [8 x i8], ptr %invariant.gep525, i64 %i.aac
  %wide.load628.a = load <4 x double>, ptr %i.aak, align 8, !tbaa !84, !alias.scope !117
  %i.aal = fneg <4 x double> %wide.load627
  %i.aam = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aal, <4 x double> %wide.load628.a, <4 x double> %i.aai)
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aac
  %wide.load629 = load <4 x double>, ptr %i.aan, align 8, !tbaa !84, !alias.scope !119
  %i.aao = getelementptr [8 x i8], ptr %invariant.gep527, i64 %index623
  %i.aap = getelementptr i8, ptr %i.aao, i64 24
  %wide.load630.a = load <4 x double>, ptr %i.aap, align 8, !tbaa !84, !alias.scope !117
  %i.aaq = fneg <4 x double> %wide.load629
  %i.aar = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aaq, <4 x double> %wide.load630.a, <4 x double> %i.aam)
  store <4 x double> %i.aar, ptr %i.aad, align 8, !tbaa !84, !alias.scope !114, !noalias !115
  %index.next631 = add nuw i64 %index623, 4       ; 2 uses
  %i.aas = icmp eq i64 %index.next631, %n.vec621
  br i1 %i.aas, label %middle.block632, label %vector.body622, !llvm.loop !62

middle.block632:                                  ; preds = %vector.body622
  br i1 %cmp.n633, label %.loopexit376, label %.lr.ph.preheader1034

.lr.ph.preheader1034:                             ; preds = %.lr.ph.preheader, %middle.block632
  %indvars.iv441.ph = phi i64 [ %i.vf, %middle.block632 ], [ 2, %.lr.ph.preheader ] ; 9 uses
  %i.aat = sub nsw i64 %wide.trip.count444, %indvars.iv441.ph
  %xtraiter1038 = and i64 %i.aat, 1
  %lcmp.mod1039.not = icmp eq i64 %xtraiter1038, 0
  br i1 %lcmp.mod1039.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1034
  %gep522.prol = getelementptr [8 x i8], ptr %invariant.gep521, i64 %indvars.iv441.ph ; 2 uses
  %i.aau = load double, ptr %gep522.prol, align 8, !tbaa !84
  %i.aav = add nsw i64 %indvars.iv441.ph, -1      ; 2 uses
  %i.aaw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aav
  %i.aax = load double, ptr %i.aaw, align 8, !tbaa !84
  %gep524.prol = getelementptr [8 x i8], ptr %invariant.gep523, i64 %i.aav
  %i.aay = load double, ptr %gep524.prol, align 8, !tbaa !84
  %i.aaz = fneg double %i.aax
  %i.aba = tail call double @llvm.fmuladd.f64(double %i.aaz, double %i.aay, double %i.aau)
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv441.ph
  %i.abc = load double, ptr %i.abb, align 8, !tbaa !84
  %gep526.prol = getelementptr [8 x i8], ptr %invariant.gep525, i64 %indvars.iv441.ph
  %i.abd = load double, ptr %gep526.prol, align 8, !tbaa !84
  %i.abe = fneg double %i.abc
  %i.abf = tail call double @llvm.fmuladd.f64(double %i.abe, double %i.abd, double %i.aba)
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv441.ph
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !84
  %indvars.iv.next442.prol = add nuw nsw i64 %indvars.iv441.ph, 1 ; 2 uses
  %gep528.prol = getelementptr [8 x i8], ptr %invariant.gep527, i64 %indvars.iv.next442.prol
  %i.abi = load double, ptr %gep528.prol, align 8, !tbaa !84
  %i.abj = fneg double %i.abh
  %i.abk = tail call double @llvm.fmuladd.f64(double %i.abj, double %i.abi, double %i.abf)
  store double %i.abk, ptr %gep522.prol, align 8, !tbaa !84
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1034
  %indvars.iv441.unr = phi i64 [ %indvars.iv441.ph, %.lr.ph.preheader1034 ], [ %indvars.iv.next442.prol, %.lr.ph.prol ]
  %i.abl = icmp eq i64 %indvars.iv441.ph, %i.vg
  br i1 %i.abl, label %.loopexit376, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv441 = phi i64 [ %indvars.iv.next442.1, %.lr.ph ], [ %indvars.iv441.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %gep522 = getelementptr [8 x i8], ptr %invariant.gep521, i64 %indvars.iv441 ; 2 uses
  %i.abm = load double, ptr %gep522, align 8, !tbaa !84
  %i.abn = add nsw i64 %indvars.iv441, -1         ; 2 uses
  %i.abo = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.abn
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !84
  %gep524 = getelementptr [8 x i8], ptr %invariant.gep523, i64 %i.abn
  %i.abq = load double, ptr %gep524, align 8, !tbaa !84
  %i.abr = fneg double %i.abp
  %i.abs = tail call double @llvm.fmuladd.f64(double %i.abr, double %i.abq, double %i.abm)
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv441
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !84
  %gep526 = getelementptr [8 x i8], ptr %invariant.gep525, i64 %indvars.iv441
  %i.abv = load double, ptr %gep526, align 8, !tbaa !84
  %i.abw = fneg double %i.abu
  %i.abx = tail call double @llvm.fmuladd.f64(double %i.abw, double %i.abv, double %i.abs)
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv441
  %i.abz = load double, ptr %i.aby, align 8, !tbaa !84
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %gep528 = getelementptr [8 x i8], ptr %invariant.gep527, i64 %indvars.iv.next442
  %i.aca = load double, ptr %gep528, align 8, !tbaa !84
  %i.acb = fneg double %i.abz
  %i.acc = tail call double @llvm.fmuladd.f64(double %i.acb, double %i.aca, double %i.abx)
  store double %i.acc, ptr %gep522, align 8, !tbaa !84
  %gep522.1 = getelementptr [8 x i8], ptr %invariant.gep521, i64 %indvars.iv.next442 ; 2 uses
  %i.acd = load double, ptr %gep522.1, align 8, !tbaa !84
  %i.ace = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv441
  %i.acf = load double, ptr %i.ace, align 8, !tbaa !84
  %gep524.1 = getelementptr [8 x i8], ptr %invariant.gep523, i64 %indvars.iv441
  %i.acg = load double, ptr %gep524.1, align 8, !tbaa !84
  %i.ach = fneg double %i.acf
  %i.aci = tail call double @llvm.fmuladd.f64(double %i.ach, double %i.acg, double %i.acd)
  %i.acj = getelementptr [8 x i8], ptr %5, i64 %indvars.iv441
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !84
  %gep526.1 = getelementptr [8 x i8], ptr %invariant.gep525, i64 %indvars.iv.next442
  %i.acl = load double, ptr %gep526.1, align 8, !tbaa !84
  %i.acm = fneg double %i.ack
  %i.acn = tail call double @llvm.fmuladd.f64(double %i.acm, double %i.acl, double %i.aci)
  %i.aco = getelementptr [8 x i8], ptr %6, i64 %indvars.iv441
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !84
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 3 uses
  %gep528.1 = getelementptr [8 x i8], ptr %invariant.gep527, i64 %indvars.iv.next442.1
  %i.acq = load double, ptr %gep528.1, align 8, !tbaa !84
  %i.acr = fneg double %i.acp
  %i.acs = tail call double @llvm.fmuladd.f64(double %i.acr, double %i.acq, double %i.acn)
  store double %i.acs, ptr %gep522.1, align 8, !tbaa !84
  %exitcond445.not.1 = icmp eq i64 %indvars.iv.next442.1, %wide.trip.count444
  br i1 %exitcond445.not.1, label %.loopexit376, label %.lr.ph, !llvm.loop !63

.loopexit376:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block632, %.lr.ph396.split
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %exitcond450.not = icmp eq i64 %indvars.iv.next447, %wide.trip.count454
  br i1 %exitcond450.not, label %.loopexit371, label %.lr.ph396.split, !llvm.loop !64

bb.l:                                             ; preds = %bb.j
  br i1 %.not361401, label %.loopexit371, label %.lr.ph404

.lr.ph404:                                        ; preds = %bb.l
  %i.act = load i32, ptr %1, align 4, !tbaa !82   ; 5 uses
  %i.acu = icmp eq i32 %i.act, 1
  %i.acv = add nsw i32 %i.act, -1
  %i.acw = sext i32 %i.acv to i64                 ; 2 uses
  %i.acx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.acw
  %i.acy = sext i32 %i.act to i64                 ; 3 uses
  %i.acz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.acy
  %.not362.not397 = icmp sgt i32 %i.act, 2
  %i.ada = add nuw i32 %i.ta, 1
  %wide.trip.count469 = zext i32 %i.ada to i64    ; 5 uses
  br i1 %i.acu, label %iter.check783, label %.lr.ph404.split.preheader

.lr.ph404.split.preheader:                        ; preds = %.lr.ph404
  %i.adb = sext i32 %i.g to i64                   ; 3 uses
  %i.adc = sext i32 %i.d to i64                   ; 3 uses
  %invariant.gep543 = getelementptr [8 x i8], ptr %i.i, i64 %i.acy
  %invariant.gep545 = getelementptr [8 x i8], ptr %i.f, i64 %i.acw
  %invariant.gep547 = getelementptr [8 x i8], ptr %i.f, i64 %i.acy
  %wide.trip.count459 = zext i32 %i.act to i64    ; 5 uses
  %i.add = shl nsw i64 %i.adb, 3
  %i.ade = shl nsw i64 %i.h, 3                    ; 2 uses
  %i.adf = getelementptr i8, ptr %10, i64 %i.add
  %i.adg = getelementptr i8, ptr %i.adf, i64 %i.ade
  %i.adh = shl nuw nsw i64 %wide.trip.count469, 3
  %i.adi = add nsw i64 %i.adh, -8                 ; 2 uses
  %i.adj = mul i64 %i.adi, %i.adb
  %i.adk = shl nuw nsw i64 %wide.trip.count459, 3 ; 4 uses
  %i.adl = getelementptr i8, ptr %10, i64 %i.adj
  %i.adm = getelementptr i8, ptr %i.adl, i64 %i.ade
  %scevgep693 = getelementptr i8, ptr %i.adm, i64 %i.adk
  %i.adn = getelementptr i8, ptr %6, i64 %i.adk
  %i.ado = shl nsw i64 %i.adc, 3
  %i.adp = shl nsw i64 %i.e, 3                    ; 2 uses
  %i.adq = getelementptr i8, ptr %7, i64 %i.ado
  %i.adr = getelementptr i8, ptr %i.adq, i64 %i.adp
  %i.ads = insertelement <4 x ptr> poison, ptr %6, i64 0
  %i.adt = insertelement <4 x ptr> %i.ads, ptr %i.adr, i64 1
  %i.adu = insertelement <4 x ptr> %i.adt, ptr %i.adg, i64 2 ; 2 uses
  %i.adv = insertelement <4 x ptr> %i.adu, ptr %4, i64 3
  %i.adw = getelementptr i8, <4 x ptr> %i.adv, <4 x i64> <i64 0, i64 8, i64 16, i64 8>
  %i.adx = mul i64 %i.adi, %i.adc
  %i.ady = getelementptr i8, ptr %7, i64 %i.adx
  %i.adz = getelementptr i8, ptr %i.ady, i64 %i.adp
  %i.aea = getelementptr i8, ptr %i.adz, i64 %i.adk
  %i.aeb = insertelement <2 x ptr> poison, ptr %i.adn, i64 0
  %i.aec = insertelement <2 x ptr> %i.aeb, ptr %i.aea, i64 1
  %i.aed = getelementptr i8, <2 x ptr> %i.aec, <2 x i64> <i64 -16, i64 8>
  %i.aee = shufflevector <4 x ptr> %i.adu, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.aef = insertelement <2 x ptr> %i.aee, ptr %5, i64 1
  %i.aeg = getelementptr i8, <2 x ptr> %i.aef, <2 x i64> <i64 16, i64 8>
  %i.aeh = shufflevector <2 x ptr> %i.aeg, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.aei = add nsw i64 %i.adk, -8                 ; 2 uses
  %scevgep698 = getelementptr i8, ptr %5, i64 %i.aei
  %scevgep700 = getelementptr i8, ptr %4, i64 %i.aei
  %i.aej = shufflevector <2 x ptr> %i.aed, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aek = add nsw i64 %wide.trip.count459, -2    ; 3 uses
  %min.iters.check722 = icmp ult i64 %i.aek, 8
  %i.ael = insertelement <4 x ptr> %i.aej, ptr %scevgep693, i64 2 ; 2 uses
  %i.aem = insertelement <4 x ptr> %i.ael, ptr %scevgep700, i64 3
  %i.aen = icmp ult <4 x ptr> %i.aeh, %i.aem
  %i.aeo = shufflevector <4 x ptr> %i.ael, <4 x ptr> poison, <2 x i32> <i32 2, i32 poison>
  %i.aep = insertelement <2 x ptr> %i.aeo, ptr %scevgep698, i64 1
  %i.aeq = shufflevector <2 x ptr> %i.aep, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.aer = icmp ult <4 x ptr> %i.adw, %i.aeq
  %i.aes = or i32 %i.d, %i.g
  %i.aet = and <4 x i1> %i.aen, %i.aer
  %i.aeu = bitcast <4 x i1> %i.aet to i4
  %i.aev = icmp ne i4 %i.aeu, 0
  %i.aew = icmp slt i32 %i.aes, 0
  %op.rdx1019 = or i1 %i.aev, %i.aew
  %n.vec724 = and i64 %i.aek, -4                  ; 3 uses
  %i.aex = or disjoint i64 %n.vec724, 2
  %cmp.n736 = icmp eq i64 %i.aek, %n.vec724
  %i.aey = add nsw i64 %wide.trip.count459, -1
  br label %.lr.ph404.split

iter.check783:                                    ; preds = %.lr.ph404
  %i.aez = sext i32 %i.d to i64                   ; 5 uses
  %i.afa = sext i32 %i.g to i64                   ; 5 uses
  %i.afb = zext nneg i32 %i.ta to i64             ; 5 uses
  %min.iters.check753 = icmp ult i32 %i.ta, 4
  br i1 %min.iters.check753, label %.lr.ph404.split.us.preheader, label %vector.scevcheck738

vector.scevcheck738:                              ; preds = %iter.check783
  %ident.check739 = icmp ne i32 %i.g, 1
  %ident.check740 = icmp ne i32 %i.d, 1
  %i.afc = or i1 %ident.check739, %ident.check740
  br i1 %i.afc, label %.lr.ph404.split.us.preheader, label %vector.memcheck754

vector.memcheck754:                               ; preds = %vector.scevcheck738
  %i.afd = shl nuw nsw i64 %wide.trip.count469, 3
  %i.afe = add nsw i64 %i.afd, -8                 ; 2 uses
  %i.aff = getelementptr i8, ptr %10, i64 %i.afe  ; 2 uses
  %i.afg = getelementptr i8, ptr %5, i64 8
  %i.afh = getelementptr i8, ptr %7, i64 %i.afe
  %bound0755 = icmp ult ptr %10, %i.afg
  %bound1756 = icmp ult ptr %5, %i.aff
  %found.conflict757 = and i1 %bound0755, %bound1756
  %bound0758 = icmp ult ptr %10, %i.afh
  %bound1759 = icmp ult ptr %7, %i.aff
  %found.conflict760 = and i1 %bound0758, %bound1759
  %conflict.rdx761 = or i1 %found.conflict757, %found.conflict760
  br i1 %conflict.rdx761, label %.lr.ph404.split.us.preheader, label %vector.main.loop.iter.check762

vector.main.loop.iter.check762:                   ; preds = %vector.memcheck754
  %min.iters.check763 = icmp ult i32 %i.ta, 16
  br i1 %min.iters.check763, label %vec.epilog.ph787, label %vector.ph764

vector.ph764:                                     ; preds = %vector.main.loop.iter.check762
  %i.afi = and i64 %i.afb, 12
  %n.vec765 = and i64 %i.afb, 2147483632          ; 4 uses
  %i.afj = or disjoint i64 %n.vec765, 1
  %i.afk = load double, ptr %5, align 8, !tbaa !84, !alias.scope !120
  %.scalar1023 = fneg double %i.afk
  %i.afl = insertelement <4 x double> poison, double %.scalar1023, i64 0
  %i.afm = shufflevector <4 x double> %i.afl, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body768

vector.body768:                                   ; preds = %vector.ph764, %vector.body768
  %index769 = phi i64 [ 0, %vector.ph764 ], [ %index.next778, %vector.body768 ] ; 2 uses
  %i.afn = or disjoint i64 %index769, 1           ; 2 uses
  %i.afo = getelementptr [8 x i8], ptr %i.f, i64 %i.afn ; 4 uses
  %i.afp = getelementptr i8, ptr %i.afo, i64 8
  %i.afq = getelementptr i8, ptr %i.afo, i64 40
  %i.afr = getelementptr i8, ptr %i.afo, i64 72
  %i.afs = getelementptr i8, ptr %i.afo, i64 104
  %wide.load770 = load <4 x double>, ptr %i.afp, align 8, !tbaa !84, !alias.scope !121
  %wide.load771 = load <4 x double>, ptr %i.afq, align 8, !tbaa !84, !alias.scope !121
  %wide.load772 = load <4 x double>, ptr %i.afr, align 8, !tbaa !84, !alias.scope !121
  %wide.load773 = load <4 x double>, ptr %i.afs, align 8, !tbaa !84, !alias.scope !121
  %i.aft = getelementptr [8 x i8], ptr %i.i, i64 %i.afn ; 4 uses
  %i.afu = getelementptr i8, ptr %i.aft, i64 8    ; 2 uses
  %i.afv = getelementptr i8, ptr %i.aft, i64 40   ; 2 uses
  %i.afw = getelementptr i8, ptr %i.aft, i64 72   ; 2 uses
  %i.afx = getelementptr i8, ptr %i.aft, i64 104  ; 2 uses
  %wide.load774 = load <4 x double>, ptr %i.afu, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %wide.load775 = load <4 x double>, ptr %i.afv, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %wide.load776 = load <4 x double>, ptr %i.afw, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %wide.load777 = load <4 x double>, ptr %i.afx, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %i.afy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.afm, <4 x double> %wide.load770, <4 x double> %wide.load774)
  %i.afz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.afm, <4 x double> %wide.load771, <4 x double> %wide.load775)
  %i.aga = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.afm, <4 x double> %wide.load772, <4 x double> %wide.load776)
  %i.agb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.afm, <4 x double> %wide.load773, <4 x double> %wide.load777)
  store <4 x double> %i.afy, ptr %i.afu, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  store <4 x double> %i.afz, ptr %i.afv, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  store <4 x double> %i.aga, ptr %i.afw, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  store <4 x double> %i.agb, ptr %i.afx, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %index.next778 = add nuw i64 %index769, 16      ; 2 uses
  %i.agc = icmp eq i64 %index.next778, %n.vec765
  br i1 %i.agc, label %middle.block779, label %vector.body768, !llvm.loop !69

middle.block779:                                  ; preds = %vector.body768
  %cmp.n780 = icmp eq i64 %n.vec765, %i.afb
  br i1 %cmp.n780, label %.loopexit371, label %vec.epilog.iter.check785

vec.epilog.iter.check785:                         ; preds = %middle.block779
  %min.epilog.iters.check786 = icmp eq i64 %i.afi, 0
  br i1 %min.epilog.iters.check786, label %.lr.ph404.split.us.preheader, label %vec.epilog.ph787, !prof !88

vec.epilog.ph787:                                 ; preds = %vector.main.loop.iter.check762, %vec.epilog.iter.check785
  %vec.epilog.resume.val781 = phi i64 [ %n.vec765, %vec.epilog.iter.check785 ], [ 0, %vector.main.loop.iter.check762 ]
  %n.vec788 = and i64 %i.afb, 2147483644          ; 3 uses
  %i.agd = or disjoint i64 %n.vec788, 1
  %i.age = load double, ptr %5, align 8, !tbaa !84, !alias.scope !120
  %.scalar1024 = fneg double %i.age
  %i.agf = insertelement <4 x double> poison, double %.scalar1024, i64 0
  %i.agg = shufflevector <4 x double> %i.agf, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body791

vec.epilog.vector.body791:                        ; preds = %vec.epilog.vector.body791, %vec.epilog.ph787
  %index792 = phi i64 [ %vec.epilog.resume.val781, %vec.epilog.ph787 ], [ %index.next795, %vec.epilog.vector.body791 ] ; 2 uses
  %i.agh = or disjoint i64 %index792, 1           ; 2 uses
  %i.agi = getelementptr [8 x i8], ptr %i.f, i64 %i.agh
  %i.agj = getelementptr i8, ptr %i.agi, i64 8
  %wide.load793 = load <4 x double>, ptr %i.agj, align 8, !tbaa !84, !alias.scope !121
  %i.agk = getelementptr [8 x i8], ptr %i.i, i64 %i.agh
  %i.agl = getelementptr i8, ptr %i.agk, i64 8    ; 2 uses
  %wide.load794 = load <4 x double>, ptr %i.agl, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %i.agm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agg, <4 x double> %wide.load793, <4 x double> %wide.load794)
  store <4 x double> %i.agm, ptr %i.agl, align 8, !tbaa !84, !alias.scope !122, !noalias !123
  %index.next795 = add nuw i64 %index792, 4       ; 2 uses
  %i.agn = icmp eq i64 %index.next795, %n.vec788
  br i1 %i.agn, label %vec.epilog.middle.block796, label %vec.epilog.vector.body791, !llvm.loop !70

vec.epilog.middle.block796:                       ; preds = %vec.epilog.vector.body791
  %cmp.n797 = icmp eq i64 %n.vec788, %i.afb
  br i1 %cmp.n797, label %.loopexit371, label %.lr.ph404.split.us.preheader

.lr.ph404.split.us.preheader:                     ; preds = %iter.check783, %vector.scevcheck738, %vector.memcheck754, %vec.epilog.iter.check785, %vec.epilog.middle.block796
  %indvars.iv466.ph = phi i64 [ 1, %iter.check783 ], [ 1, %vector.scevcheck738 ], [ 1, %vector.memcheck754 ], [ %i.afj, %vec.epilog.iter.check785 ], [ %i.agd, %vec.epilog.middle.block796 ] ; 4 uses
  %i.ago = sub i64 %wide.trip.count469, %indvars.iv466.ph
  %i.agp = zext nneg i32 %i.ta to i64
  %i.agq = sub i64 %i.agp, %indvars.iv466.ph
  %xtraiter1045 = and i64 %i.ago, 3               ; 2 uses
  %lcmp.mod1046.not = icmp eq i64 %xtraiter1045, 0
  br i1 %lcmp.mod1046.not, label %.lr.ph404.split.us.prol.loopexit, label %.lr.ph404.split.us.prol

.lr.ph404.split.us.prol:                          ; preds = %.lr.ph404.split.us.preheader, %.lr.ph404.split.us.prol
  %indvars.iv466.prol = phi i64 [ %indvars.iv.next467.prol, %.lr.ph404.split.us.prol ], [ %indvars.iv466.ph, %.lr.ph404.split.us.preheader ] ; 3 uses
  %prol.iter1047 = phi i64 [ %prol.iter1047.next, %.lr.ph404.split.us.prol ], [ 0, %.lr.ph404.split.us.preheader ]
  %i.agr = load double, ptr %5, align 8, !tbaa !84
  %i.ags = mul nsw i64 %indvars.iv466.prol, %i.aez
  %i.agt = getelementptr [8 x i8], ptr %i.f, i64 %i.ags
  %i.agu = getelementptr i8, ptr %i.agt, i64 8
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !84
  %i.agw = mul nsw i64 %indvars.iv466.prol, %i.afa
  %i.agx = getelementptr [8 x i8], ptr %i.i, i64 %i.agw
  %i.agy = getelementptr i8, ptr %i.agx, i64 8    ; 2 uses
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !84
  %i.aha = fneg double %i.agr
  %i.ahb = tail call double @llvm.fmuladd.f64(double %i.aha, double %i.agv, double %i.agz)
  store double %i.ahb, ptr %i.agy, align 8, !tbaa !84
  %indvars.iv.next467.prol = add nuw nsw i64 %indvars.iv466.prol, 1 ; 2 uses
  %prol.iter1047.next = add i64 %prol.iter1047, 1 ; 2 uses
  %prol.iter1047.cmp.not = icmp eq i64 %prol.iter1047.next, %xtraiter1045
  br i1 %prol.iter1047.cmp.not, label %.lr.ph404.split.us.prol.loopexit, label %.lr.ph404.split.us.prol, !llvm.loop !71

.lr.ph404.split.us.prol.loopexit:                 ; preds = %.lr.ph404.split.us.prol, %.lr.ph404.split.us.preheader
  %indvars.iv466.unr = phi i64 [ %indvars.iv466.ph, %.lr.ph404.split.us.preheader ], [ %indvars.iv.next467.prol, %.lr.ph404.split.us.prol ]
  %i.ahc = icmp ult i64 %i.agq, 3
  br i1 %i.ahc, label %.loopexit371, label %.lr.ph404.split.us

.lr.ph404.split.us:                               ; preds = %.lr.ph404.split.us.prol.loopexit, %.lr.ph404.split.us
  %indvars.iv466 = phi i64 [ %indvars.iv.next467.3, %.lr.ph404.split.us ], [ %indvars.iv466.unr, %.lr.ph404.split.us.prol.loopexit ] ; 6 uses
  %i.ahd = load double, ptr %5, align 8, !tbaa !84
  %i.ahe = mul nsw i64 %indvars.iv466, %i.aez
  %i.ahf = getelementptr [8 x i8], ptr %i.f, i64 %i.ahe
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 8
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !84
  %i.ahi = mul nsw i64 %indvars.iv466, %i.afa
  %i.ahj = getelementptr [8 x i8], ptr %i.i, i64 %i.ahi
  %i.ahk = getelementptr i8, ptr %i.ahj, i64 8    ; 2 uses
  %i.ahl = load double, ptr %i.ahk, align 8, !tbaa !84
  %i.ahm = fneg double %i.ahd
  %i.ahn = tail call double @llvm.fmuladd.f64(double %i.ahm, double %i.ahh, double %i.ahl)
  store double %i.ahn, ptr %i.ahk, align 8, !tbaa !84
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %i.aho = load double, ptr %5, align 8, !tbaa !84
  %i.ahp = mul nsw i64 %indvars.iv.next467, %i.aez
  %i.ahq = getelementptr [8 x i8], ptr %i.f, i64 %i.ahp
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 8
  %i.ahs = load double, ptr %i.ahr, align 8, !tbaa !84
  %i.aht = mul nsw i64 %indvars.iv.next467, %i.afa
  %i.ahu = getelementptr [8 x i8], ptr %i.i, i64 %i.aht
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 8    ; 2 uses
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !84
  %i.ahx = fneg double %i.aho
  %i.ahy = tail call double @llvm.fmuladd.f64(double %i.ahx, double %i.ahs, double %i.ahw)
  store double %i.ahy, ptr %i.ahv, align 8, !tbaa !84
  %indvars.iv.next467.1 = add nuw nsw i64 %indvars.iv466, 2 ; 2 uses
  %i.ahz = load double, ptr %5, align 8, !tbaa !84
  %i.aia = mul nsw i64 %indvars.iv.next467.1, %i.aez
  %i.aib = getelementptr [8 x i8], ptr %i.f, i64 %i.aia
  %i.aic = getelementptr i8, ptr %i.aib, i64 8
  %i.aid = load double, ptr %i.aic, align 8, !tbaa !84
  %i.aie = mul nsw i64 %indvars.iv.next467.1, %i.afa
  %i.aif = getelementptr [8 x i8], ptr %i.i, i64 %i.aie
  %i.aig = getelementptr i8, ptr %i.aif, i64 8    ; 2 uses
  %i.aih = load double, ptr %i.aig, align 8, !tbaa !84
  %i.aii = fneg double %i.ahz
  %i.aij = tail call double @llvm.fmuladd.f64(double %i.aii, double %i.aid, double %i.aih)
  store double %i.aij, ptr %i.aig, align 8, !tbaa !84
  %indvars.iv.next467.2 = add nuw nsw i64 %indvars.iv466, 3 ; 2 uses
  %i.aik = load double, ptr %5, align 8, !tbaa !84
  %i.ail = mul nsw i64 %indvars.iv.next467.2, %i.aez
  %i.aim = getelementptr [8 x i8], ptr %i.f, i64 %i.ail
  %i.ain = getelementptr i8, ptr %i.aim, i64 8
  %i.aio = load double, ptr %i.ain, align 8, !tbaa !84
  %i.aip = mul nsw i64 %indvars.iv.next467.2, %i.afa
  %i.aiq = getelementptr [8 x i8], ptr %i.i, i64 %i.aip
  %i.air = getelementptr i8, ptr %i.aiq, i64 8    ; 2 uses
  %i.ais = load double, ptr %i.air, align 8, !tbaa !84
  %i.ait = fneg double %i.aik
  %i.aiu = tail call double @llvm.fmuladd.f64(double %i.ait, double %i.aio, double %i.ais)
  store double %i.aiu, ptr %i.air, align 8, !tbaa !84
  %indvars.iv.next467.3 = add nuw nsw i64 %indvars.iv466, 4 ; 2 uses
  %exitcond470.not.3 = icmp eq i64 %indvars.iv.next467.3, %wide.trip.count469
  br i1 %exitcond470.not.3, label %.loopexit371, label %.lr.ph404.split.us, !llvm.loop !72

.lr.ph404.split:                                  ; preds = %.lr.ph404.split.preheader, %.loopexit374
  %indvars.iv461 = phi i64 [ 1, %.lr.ph404.split.preheader ], [ %indvars.iv.next462, %.loopexit374 ] ; 3 uses
  %i.aiv = mul nsw i64 %indvars.iv461, %i.adb     ; 3 uses
  %i.aiw = getelementptr [8 x i8], ptr %i.i, i64 %i.aiv
  %i.aix = getelementptr i8, ptr %i.aiw, i64 8    ; 2 uses
  %i.aiy = load double, ptr %i.aix, align 8, !tbaa !84
  %i.aiz = load double, ptr %5, align 8, !tbaa !84
  %i.aja = mul nsw i64 %indvars.iv461, %i.adc     ; 6 uses
  %i.ajb = getelementptr [8 x i8], ptr %i.f, i64 %i.aja ; 2 uses
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 8
  %i.ajd = load double, ptr %i.ajc, align 8, !tbaa !84
  %i.aje = fneg double %i.aiz
  %i.ajf = tail call double @llvm.fmuladd.f64(double %i.aje, double %i.ajd, double %i.aiy)
  %i.ajg = load double, ptr %4, align 8, !tbaa !84
  %i.ajh = getelementptr i8, ptr %i.ajb, i64 16
  %i.aji = load double, ptr %i.ajh, align 8, !tbaa !84
  %i.ajj = fneg double %i.ajg
  %i.ajk = tail call double @llvm.fmuladd.f64(double %i.ajj, double %i.aji, double %i.ajf)
  store double %i.ajk, ptr %i.aix, align 8, !tbaa !84
  %gep544 = getelementptr [8 x i8], ptr %invariant.gep543, i64 %i.aiv ; 2 uses
  %i.ajl = load double, ptr %gep544, align 8, !tbaa !84
  %i.ajm = load double, ptr %i.acx, align 8, !tbaa !84
  %gep546 = getelementptr [8 x i8], ptr %invariant.gep545, i64 %i.aja
  %i.ajn = load double, ptr %gep546, align 8, !tbaa !84
  %i.ajo = fneg double %i.ajm
  %i.ajp = tail call double @llvm.fmuladd.f64(double %i.ajo, double %i.ajn, double %i.ajl)
  %i.ajq = load double, ptr %i.acz, align 8, !tbaa !84
  %gep548 = getelementptr [8 x i8], ptr %invariant.gep547, i64 %i.aja
  %i.ajr = load double, ptr %gep548, align 8, !tbaa !84
  %i.ajs = fneg double %i.ajq
  %i.ajt = tail call double @llvm.fmuladd.f64(double %i.ajs, double %i.ajr, double %i.ajp)
  store double %i.ajt, ptr %gep544, align 8, !tbaa !84
  br i1 %.not362.not397, label %.lr.ph400.preheader, label %.loopexit374

.lr.ph400.preheader:                              ; preds = %.lr.ph404.split
  %invariant.gep535 = getelementptr [8 x i8], ptr %i.i, i64 %i.aiv ; 4 uses
  %invariant.gep537 = getelementptr [8 x i8], ptr %i.f, i64 %i.aja ; 4 uses
  %invariant.gep539 = getelementptr [8 x i8], ptr %i.f, i64 %i.aja ; 4 uses
  %invariant.gep541 = getelementptr [8 x i8], ptr %i.f, i64 %i.aja ; 4 uses
  %brmerge1062 = select i1 %min.iters.check722, i1 true, i1 %op.rdx1019
  br i1 %brmerge1062, label %.lr.ph400.preheader1031, label %vector.body725

vector.body725:                                   ; preds = %.lr.ph400.preheader, %vector.body725
  %index726 = phi i64 [ %index.next734, %vector.body725 ], [ 0, %.lr.ph400.preheader ] ; 5 uses
  %i.aju = or disjoint i64 %index726, 2           ; 4 uses
  %i.ajv = getelementptr [8 x i8], ptr %invariant.gep535, i64 %i.aju ; 2 uses
  %wide.load727 = load <4 x double>, ptr %i.ajv, align 8, !tbaa !84, !alias.scope !124, !noalias !125
  %i.ajw = getelementptr [8 x i8], ptr %6, i64 %index726
  %wide.load728 = load <4 x double>, ptr %i.ajw, align 8, !tbaa !84, !alias.scope !126
  %i.ajx = getelementptr [8 x i8], ptr %invariant.gep537, i64 %index726
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 8
  %wide.load729 = load <4 x double>, ptr %i.ajy, align 8, !tbaa !84, !alias.scope !127
  %i.ajz = fneg <4 x double> %wide.load728
  %i.aka = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ajz, <4 x double> %wide.load729, <4 x double> %wide.load727)
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aju
  %wide.load730 = load <4 x double>, ptr %i.akb, align 8, !tbaa !84, !alias.scope !128
  %i.akc = getelementptr [8 x i8], ptr %invariant.gep539, i64 %i.aju
  %wide.load731 = load <4 x double>, ptr %i.akc, align 8, !tbaa !84, !alias.scope !127
  %i.akd = fneg <4 x double> %wide.load730
  %i.ake = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.akd, <4 x double> %wide.load731, <4 x double> %i.aka)
  %i.akf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aju
  %wide.load732 = load <4 x double>, ptr %i.akf, align 8, !tbaa !84, !alias.scope !129
  %i.akg = getelementptr [8 x i8], ptr %invariant.gep541, i64 %index726
  %i.akh = getelementptr i8, ptr %i.akg, i64 24
  %wide.load733 = load <4 x double>, ptr %i.akh, align 8, !tbaa !84, !alias.scope !127
  %i.aki = fneg <4 x double> %wide.load732
  %i.akj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aki, <4 x double> %wide.load733, <4 x double> %i.ake)
  store <4 x double> %i.akj, ptr %i.ajv, align 8, !tbaa !84, !alias.scope !124, !noalias !125
  %index.next734 = add nuw i64 %index726, 4       ; 2 uses
  %i.akk = icmp eq i64 %index.next734, %n.vec724
  br i1 %i.akk, label %middle.block735, label %vector.body725, !llvm.loop !79

middle.block735:                                  ; preds = %vector.body725
  br i1 %cmp.n736, label %.loopexit374, label %.lr.ph400.preheader1031

.lr.ph400.preheader1031:                          ; preds = %.lr.ph400.preheader, %middle.block735
  %indvars.iv456.ph = phi i64 [ %i.aex, %middle.block735 ], [ 2, %.lr.ph400.preheader ] ; 9 uses
  %i.akl = sub nsw i64 %wide.trip.count459, %indvars.iv456.ph
  %xtraiter1042 = and i64 %i.akl, 1
  %lcmp.mod1043.not = icmp eq i64 %xtraiter1042, 0
  br i1 %lcmp.mod1043.not, label %.lr.ph400.prol.loopexit, label %.lr.ph400.prol

.lr.ph400.prol:                                   ; preds = %.lr.ph400.preheader1031
  %gep536.prol = getelementptr [8 x i8], ptr %invariant.gep535, i64 %indvars.iv456.ph ; 2 uses
  %i.akm = load double, ptr %gep536.prol, align 8, !tbaa !84
  %i.akn = add nsw i64 %indvars.iv456.ph, -1      ; 2 uses
  %i.ako = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.akn
  %i.akp = load double, ptr %i.ako, align 8, !tbaa !84
  %gep538.prol = getelementptr [8 x i8], ptr %invariant.gep537, i64 %i.akn
  %i.akq = load double, ptr %gep538.prol, align 8, !tbaa !84
  %i.akr = fneg double %i.akp
  %i.aks = tail call double @llvm.fmuladd.f64(double %i.akr, double %i.akq, double %i.akm)
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv456.ph
  %i.aku = load double, ptr %i.akt, align 8, !tbaa !84
  %gep540.prol = getelementptr [8 x i8], ptr %invariant.gep539, i64 %indvars.iv456.ph
  %i.akv = load double, ptr %gep540.prol, align 8, !tbaa !84
  %i.akw = fneg double %i.aku
  %i.akx = tail call double @llvm.fmuladd.f64(double %i.akw, double %i.akv, double %i.aks)
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv456.ph
  %i.akz = load double, ptr %i.aky, align 8, !tbaa !84
  %indvars.iv.next457.prol = add nuw nsw i64 %indvars.iv456.ph, 1 ; 2 uses
  %gep542.prol = getelementptr [8 x i8], ptr %invariant.gep541, i64 %indvars.iv.next457.prol
  %i.ala = load double, ptr %gep542.prol, align 8, !tbaa !84
  %i.alb = fneg double %i.akz
  %i.alc = tail call double @llvm.fmuladd.f64(double %i.alb, double %i.ala, double %i.akx)
  store double %i.alc, ptr %gep536.prol, align 8, !tbaa !84
  br label %.lr.ph400.prol.loopexit

.lr.ph400.prol.loopexit:                          ; preds = %.lr.ph400.prol, %.lr.ph400.preheader1031
  %indvars.iv456.unr = phi i64 [ %indvars.iv456.ph, %.lr.ph400.preheader1031 ], [ %indvars.iv.next457.prol, %.lr.ph400.prol ]
  %i.ald = icmp eq i64 %indvars.iv456.ph, %i.aey
  br i1 %i.ald, label %.loopexit374, label %.lr.ph400

.lr.ph400:                                        ; preds = %.lr.ph400.prol.loopexit, %.lr.ph400
  %indvars.iv456 = phi i64 [ %indvars.iv.next457.1, %.lr.ph400 ], [ %indvars.iv456.unr, %.lr.ph400.prol.loopexit ] ; 11 uses
  %gep536 = getelementptr [8 x i8], ptr %invariant.gep535, i64 %indvars.iv456 ; 2 uses
  %i.ale = load double, ptr %gep536, align 8, !tbaa !84
  %i.alf = add nsw i64 %indvars.iv456, -1         ; 2 uses
  %i.alg = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.alf
  %i.alh = load double, ptr %i.alg, align 8, !tbaa !84
  %gep538 = getelementptr [8 x i8], ptr %invariant.gep537, i64 %i.alf
  %i.ali = load double, ptr %gep538, align 8, !tbaa !84
  %i.alj = fneg double %i.alh
  %i.alk = tail call double @llvm.fmuladd.f64(double %i.alj, double %i.ali, double %i.ale)
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv456
  %i.alm = load double, ptr %i.all, align 8, !tbaa !84
  %gep540 = getelementptr [8 x i8], ptr %invariant.gep539, i64 %indvars.iv456
  %i.aln = load double, ptr %gep540, align 8, !tbaa !84
  %i.alo = fneg double %i.alm
  %i.alp = tail call double @llvm.fmuladd.f64(double %i.alo, double %i.aln, double %i.alk)
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv456
  %i.alr = load double, ptr %i.alq, align 8, !tbaa !84
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 3 uses
  %gep542 = getelementptr [8 x i8], ptr %invariant.gep541, i64 %indvars.iv.next457
  %i.als = load double, ptr %gep542, align 8, !tbaa !84
  %i.alt = fneg double %i.alr
  %i.alu = tail call double @llvm.fmuladd.f64(double %i.alt, double %i.als, double %i.alp)
  store double %i.alu, ptr %gep536, align 8, !tbaa !84
  %gep536.1 = getelementptr [8 x i8], ptr %invariant.gep535, i64 %indvars.iv.next457 ; 2 uses
  %i.alv = load double, ptr %gep536.1, align 8, !tbaa !84
  %i.alw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv456
  %i.alx = load double, ptr %i.alw, align 8, !tbaa !84
  %gep538.1 = getelementptr [8 x i8], ptr %invariant.gep537, i64 %indvars.iv456
  %i.aly = load double, ptr %gep538.1, align 8, !tbaa !84
  %i.alz = fneg double %i.alx
  %i.ama = tail call double @llvm.fmuladd.f64(double %i.alz, double %i.aly, double %i.alv)
  %i.amb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv456
  %i.amc = load double, ptr %i.amb, align 8, !tbaa !84
  %gep540.1 = getelementptr [8 x i8], ptr %invariant.gep539, i64 %indvars.iv.next457
  %i.amd = load double, ptr %gep540.1, align 8, !tbaa !84
  %i.ame = fneg double %i.amc
  %i.amf = tail call double @llvm.fmuladd.f64(double %i.ame, double %i.amd, double %i.ama)
  %i.amg = getelementptr [8 x i8], ptr %4, i64 %indvars.iv456
  %i.amh = load double, ptr %i.amg, align 8, !tbaa !84
  %indvars.iv.next457.1 = add nuw nsw i64 %indvars.iv456, 2 ; 3 uses
  %gep542.1 = getelementptr [8 x i8], ptr %invariant.gep541, i64 %indvars.iv.next457.1
  %i.ami = load double, ptr %gep542.1, align 8, !tbaa !84
  %i.amj = fneg double %i.amh
  %i.amk = tail call double @llvm.fmuladd.f64(double %i.amj, double %i.ami, double %i.amf)
  store double %i.amk, ptr %gep536.1, align 8, !tbaa !84
  %exitcond460.not.1 = icmp eq i64 %indvars.iv.next457.1, %wide.trip.count459
  br i1 %exitcond460.not.1, label %.loopexit374, label %.lr.ph400, !llvm.loop !80

.loopexit374:                                     ; preds = %.lr.ph400.prol.loopexit, %.lr.ph400, %middle.block735, %.lr.ph404.split
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %exitcond465.not = icmp eq i64 %indvars.iv.next462, %wide.trip.count469
  br i1 %exitcond465.not, label %.loopexit371, label %.lr.ph404.split, !llvm.loop !81

.loopexit371:                                     ; preds = %.loopexit376, %.lr.ph396.split.us.prol.loopexit, %.lr.ph396.split.us, %.loopexit374, %.lr.ph404.split.us.prol.loopexit, %.lr.ph404.split.us, %.loopexit372, %.lr.ph412.split.us.prol.loopexit, %.lr.ph412.split.us, %.loopexit, %.lr.ph420.split.us.prol.loopexit, %.lr.ph420.split.us, %middle.block671, %vec.epilog.middle.block688, %middle.block779, %vec.epilog.middle.block796, %middle.block887, %vec.epilog.middle.block904, %middle.block995, %vec.epilog.middle.block1012, %bb.k, %bb.l, %bb.g, %bb.h, %bb.i, %bb.a
  ret void
}

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !85}
!9 = distinct !{!9, !85, !86, !87}
!10 = distinct !{!10, !85, !86, !87}
!11 = distinct !{!11, !85, !87, !86}
!12 = distinct !{!12, !85}
!13 = distinct !{!13, !89}
!14 = distinct !{!14, i1 false, !"LVerDomain"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !85, !86, !87}
!19 = distinct !{!19, !85, !86, !87}
!20 = distinct !{!20, !89}
!21 = distinct !{!21, !85, !86}
!22 = distinct !{!22, i1 false, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !85, !86, !87}
!29 = distinct !{!29, !85, !86}
!30 = distinct !{!30, !85}
!31 = distinct !{!31, i1 false, !"LVerDomain"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !85, !86, !87}
!36 = distinct !{!36, !85, !86, !87}
!37 = distinct !{!37, !89}
!38 = distinct !{!38, !85, !86}
!39 = distinct !{!39, i1 false, !"LVerDomain"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !39}
!44 = distinct !{!44, !39}
!45 = distinct !{!45, !85, !86, !87}
!46 = distinct !{!46, !85, !86}
!47 = distinct !{!47, !85}
!48 = distinct !{!48, i1 false, !"LVerDomain"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !48}
!52 = distinct !{!52, !85, !86, !87}
!53 = distinct !{!53, !85, !86, !87}
!54 = distinct !{!54, !89}
!55 = distinct !{!55, !85, !86}
!56 = distinct !{!56, i1 false, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !56}
!61 = distinct !{!61, !56}
!62 = distinct !{!62, !85, !86, !87}
!63 = distinct !{!63, !85, !86}
!64 = distinct !{!64, !85}
!65 = distinct !{!65, i1 false, !"LVerDomain"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !65}
!69 = distinct !{!69, !85, !86, !87}
!70 = distinct !{!70, !85, !86, !87}
!71 = distinct !{!71, !89}
end_hunk_0
