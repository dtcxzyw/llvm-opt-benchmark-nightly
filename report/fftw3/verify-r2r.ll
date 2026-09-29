Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/verify-r2r?download=true
inline.NumInlined: 111
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 79
begin_hunk_0_@r2r_apply:bb.a
  %.idx530.5 = shl nuw nsw i64 %indvars.iv.next.i.4, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %.idx530.5
  %i.by = load double, ptr %i.bx, align 8, !tbaa !35
  %i.bz = mul nsw i64 %indvars.iv.next.i.4, %i.t
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.bz
  store double %i.by, ptr %i.ca, align 8, !tbaa !35
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %.idx530.6 = shl nuw nsw i64 %indvars.iv.next.i.5, 4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %.idx530.6
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !35
  %i.cd = mul nsw i64 %indvars.iv.next.i.5, %i.t
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.cd
  store double %i.cc, ptr %i.ce, align 8, !tbaa !35
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %.idx530.7 = shl nuw nsw i64 %indvars.iv.next.i.6, 4
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %.idx530.7
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !35
  %i.ch = mul nsw i64 %indvars.iv.next.i.6, %i.t
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ch
  store double %i.cg, ptr %i.ci, align 8, !tbaa !35
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %cpyr1.exit, label %.lr.ph.i, !llvm.loop !191

bb.c:                                             ; preds = %bb.a
  %i.cj = icmp sgt i32 %i.g, -2
  br i1 %i.cj, label %.lr.ph.preheader.i195, label %cpyr1.exit

.lr.ph.preheader.i195:                            ; preds = %bb.c
  %i.ck = sdiv i32 %i.g, 2                        ; 4 uses
  %i.cl = add nuw nsw i32 %i.ck, 1
  %i.cm = sext i32 %i.i to i64                    ; 9 uses
  %wide.trip.count.i196 = zext i32 %i.cl to i64   ; 4 uses
  %min.iters.check751.a = icmp ugt i32 %i.ck, 15
  %ident.check743.not = icmp eq i32 %i.i, 1
  %or.cond799 = select i1 %min.iters.check751.a, i1 %ident.check743.not, i1 false
  br i1 %or.cond799, label %vector.memcheck744, label %.lr.ph.i197.preheader

vector.memcheck744:                               ; preds = %.lr.ph.preheader.i195
  %i.cn = zext i32 %i.ck to i64                   ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = getelementptr i8, ptr %i.m, i64 %i.co
  %scevgep745 = getelementptr i8, ptr %i.cp, i64 8
  %i.cq = shl nuw nsw i64 %i.cn, 4
  %i.cr = getelementptr i8, ptr %1, i64 %i.cq
  %scevgep746 = getelementptr i8, ptr %i.cr, i64 8
  %bound0747 = icmp ult ptr %i.m, %scevgep746
  %bound1748 = icmp ult ptr %1, %scevgep745
  %found.conflict749 = and i1 %bound0747, %bound1748
  br i1 %found.conflict749, label %.lr.ph.i197.preheader, label %vector.ph752

vector.ph752:                                     ; preds = %vector.memcheck744
  %i.cs = and i64 %wide.trip.count.i196, 3        ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  %i.cu = select i1 %i.ct, i64 4, i64 %i.cs
  %n.vec753 = sub nsw i64 %wide.trip.count.i196, %i.cu ; 2 uses
  br label %vector.body754

vector.body754:                                   ; preds = %vector.body754, %vector.ph752
  %index755 = phi i64 [ 0, %vector.ph752 ], [ %index.next756, %vector.body754 ] ; 6 uses
  %i.cv = shl nuw nsw i64 %index755, 4
  %i.cw = shl i64 %index755, 4
  %i.cx = shl i64 %index755, 4
  %i.cy = shl i64 %index755, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.cy
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load double, ptr %i.cz, align 8, !tbaa !35, !alias.scope !296
  %i.dh = load double, ptr %i.db, align 8, !tbaa !35, !alias.scope !296
  %i.di = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dh, i64 1
  %i.dk = load double, ptr %i.dd, align 8, !tbaa !35, !alias.scope !296
  %i.dl = load double, ptr %i.df, align 8, !tbaa !35, !alias.scope !296
  %i.dm = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.dl, i64 1
  %i.do = getelementptr inbounds [8 x i8], ptr %i.m, i64 %index755 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <2 x double> %i.dj, ptr %i.do, align 8, !tbaa !35, !alias.scope !297, !noalias !296
  store <2 x double> %i.dn, ptr %i.dp, align 8, !tbaa !35, !alias.scope !297, !noalias !296
  %index.next756 = add nuw i64 %index755, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next756, %n.vec753
  br i1 %i.dq, label %.lr.ph.i197.preheader, label %vector.body754, !llvm.loop !195

.lr.ph.i197.preheader:                            ; preds = %vector.body754, %vector.memcheck744, %.lr.ph.preheader.i195
  %indvars.iv.i198.ph = phi i64 [ 0, %vector.memcheck744 ], [ 0, %.lr.ph.preheader.i195 ], [ %n.vec753, %vector.body754 ] ; 4 uses
  %i.dr = sub nsw i64 %wide.trip.count.i196, %indvars.iv.i198.ph
  %i.ds = zext i32 %i.ck to i64
  %i.dt = sub nsw i64 %i.ds, %indvars.iv.i198.ph
  %xtraiter842 = and i64 %i.dr, 7                 ; 2 uses
  %lcmp.mod843.not = icmp eq i64 %xtraiter842, 0
  br i1 %lcmp.mod843.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol

.lr.ph.i197.prol:                                 ; preds = %.lr.ph.i197.preheader, %.lr.ph.i197.prol
  %indvars.iv.i198.prol = phi i64 [ %indvars.iv.next.i199.prol, %.lr.ph.i197.prol ], [ %indvars.iv.i198.ph, %.lr.ph.i197.preheader ] ; 3 uses
  %prol.iter844 = phi i64 [ %prol.iter844.next, %.lr.ph.i197.prol ], [ 0, %.lr.ph.i197.preheader ]
  %.idx528.prol = shl nuw nsw i64 %indvars.iv.i198.prol, 4
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.prol
  %i.dv = load double, ptr %i.du, align 8, !tbaa !35
  %i.dw = mul nsw i64 %indvars.iv.i198.prol, %i.cm
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.dw
  store double %i.dv, ptr %i.dx, align 8, !tbaa !35
  %indvars.iv.next.i199.prol = add nuw nsw i64 %indvars.iv.i198.prol, 1 ; 2 uses
  %prol.iter844.next = add i64 %prol.iter844, 1   ; 2 uses
  %prol.iter844.cmp.not = icmp eq i64 %prol.iter844.next, %xtraiter842
  br i1 %prol.iter844.cmp.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol, !llvm.loop !196

.lr.ph.i197.prol.loopexit:                        ; preds = %.lr.ph.i197.prol, %.lr.ph.i197.preheader
  %indvars.iv.i198.unr = phi i64 [ %indvars.iv.i198.ph, %.lr.ph.i197.preheader ], [ %indvars.iv.next.i199.prol, %.lr.ph.i197.prol ]
  %i.dy = icmp ult i64 %i.dt, 7
  br i1 %i.dy, label %cpyr1.exit201, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %.lr.ph.i197.prol.loopexit, %.lr.ph.i197
  %indvars.iv.i198 = phi i64 [ %indvars.iv.next.i199.7, %.lr.ph.i197 ], [ %indvars.iv.i198.unr, %.lr.ph.i197.prol.loopexit ] ; 10 uses
  %.idx528 = shl nuw nsw i64 %indvars.iv.i198, 4
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !35
  %i.eb = mul nsw i64 %indvars.iv.i198, %i.cm
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.eb
  store double %i.ea, ptr %i.ec, align 8, !tbaa !35
  %indvars.iv.next.i199 = add nuw nsw i64 %indvars.iv.i198, 1 ; 2 uses
  %.idx528.1 = shl nuw nsw i64 %indvars.iv.next.i199, 4
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.1
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !35
  %i.ef = mul nsw i64 %indvars.iv.next.i199, %i.cm
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ef
  store double %i.ee, ptr %i.eg, align 8, !tbaa !35
  %indvars.iv.next.i199.1 = add nuw nsw i64 %indvars.iv.i198, 2 ; 2 uses
  %.idx528.2 = shl nuw nsw i64 %indvars.iv.next.i199.1, 4
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.2
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !35
  %i.ej = mul nsw i64 %indvars.iv.next.i199.1, %i.cm
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ej
  store double %i.ei, ptr %i.ek, align 8, !tbaa !35
  %indvars.iv.next.i199.2 = add nuw nsw i64 %indvars.iv.i198, 3 ; 2 uses
  %.idx528.3 = shl nuw nsw i64 %indvars.iv.next.i199.2, 4
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.3
  %i.em = load double, ptr %i.el, align 8, !tbaa !35
  %i.en = mul nsw i64 %indvars.iv.next.i199.2, %i.cm
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.en
  store double %i.em, ptr %i.eo, align 8, !tbaa !35
  %indvars.iv.next.i199.3 = add nuw nsw i64 %indvars.iv.i198, 4 ; 2 uses
  %.idx528.4 = shl nuw nsw i64 %indvars.iv.next.i199.3, 4
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.4
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !35
  %i.er = mul nsw i64 %indvars.iv.next.i199.3, %i.cm
  %i.es = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.er
  store double %i.eq, ptr %i.es, align 8, !tbaa !35
  %indvars.iv.next.i199.4 = add nuw nsw i64 %indvars.iv.i198, 5 ; 2 uses
  %.idx528.5 = shl nuw nsw i64 %indvars.iv.next.i199.4, 4
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.5
  %i.eu = load double, ptr %i.et, align 8, !tbaa !35
  %i.ev = mul nsw i64 %indvars.iv.next.i199.4, %i.cm
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ev
  store double %i.eu, ptr %i.ew, align 8, !tbaa !35
  %indvars.iv.next.i199.5 = add nuw nsw i64 %indvars.iv.i198, 6 ; 2 uses
  %.idx528.6 = shl nuw nsw i64 %indvars.iv.next.i199.5, 4
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.6
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !35
  %i.ez = mul nsw i64 %indvars.iv.next.i199.5, %i.cm
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ez
  store double %i.ey, ptr %i.fa, align 8, !tbaa !35
  %indvars.iv.next.i199.6 = add nuw nsw i64 %indvars.iv.i198, 7 ; 2 uses
  %.idx528.7 = shl nuw nsw i64 %indvars.iv.next.i199.6, 4
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.7
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !35
  %i.fd = mul nsw i64 %indvars.iv.next.i199.6, %i.cm
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fd
  store double %i.fc, ptr %i.fe, align 8, !tbaa !35
  %indvars.iv.next.i199.7 = add nuw nsw i64 %indvars.iv.i198, 8 ; 2 uses
  %exitcond.not.i200.7 = icmp eq i64 %indvars.iv.next.i199.7, %wide.trip.count.i196
  br i1 %exitcond.not.i200.7, label %cpyr1.exit201, label %.lr.ph.i197, !llvm.loop !197

cpyr1.exit201:                                    ; preds = %.lr.ph.i197, %.lr.ph.i197.prol.loopexit
  %i.ff = add i32 %i.g, -1                        ; 2 uses
  %i.fg = sext i32 %i.ff to i64                   ; 3 uses
  %i.fh = getelementptr inbounds [16 x i8], ptr %1, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 9 uses
  %i.fj = mul nsw i32 %i.i, %i.ff
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fk ; 6 uses
  %i.fm = icmp sgt i32 %i.g, 2
  br i1 %i.fm, label %.lr.ph.preheader.i202, label %cpyr1.exit

.lr.ph.preheader.i202:                            ; preds = %cpyr1.exit201
  %i.fn = add nuw nsw i32 %i.g, 1
  %i.fo = lshr i32 %i.fn, 1
  %i.fp = add nsw i32 %i.fo, -1                   ; 2 uses
  %i.fq = sub nsw i32 0, %i.i
  %i.fr = sext i32 %i.fq to i64                   ; 6 uses
  %wide.trip.count.i203 = zext i32 %i.fp to i64   ; 7 uses
  %min.iters.check770 = icmp ugt i32 %i.fp, 17
  %ident.check760.not = icmp eq i32 %i.i, 1
  %or.cond800 = select i1 %min.iters.check770, i1 %ident.check760.not, i1 false
  br i1 %or.cond800, label %vector.memcheck761, label %.lr.ph.i204.preheader

vector.memcheck761:                               ; preds = %.lr.ph.preheader.i202
  %i.fs = shl nsw i64 %i.fg, 3
  %i.ft = shl nuw nsw i64 %wide.trip.count.i203, 3
  %3 = add nsw i64 %i.fs, 8                       ; 2 uses
  %4 = sub nsw i64 %3, %i.ft
  %i.fu = getelementptr i8, ptr %i.m, i64 %4
  %scevgep763 = getelementptr i8, ptr %i.m, i64 %3
  %i.fv = shl nsw i64 %i.fg, 4                    ; 2 uses
  %5 = shl nuw nsw i64 %wide.trip.count.i203, 4
  %6 = add nsw i64 %i.fv, 24
  %i.fw = sub nsw i64 %6, %5
  %scevgep764 = getelementptr i8, ptr %1, i64 %i.fw
  %i.fx = getelementptr i8, ptr %1, i64 %i.fv
  %scevgep765 = getelementptr i8, ptr %i.fx, i64 16
  %bound0766 = icmp ult ptr %i.fu, %scevgep765
  %bound1767 = icmp ult ptr %scevgep764, %scevgep763
  %found.conflict768 = and i1 %bound0766, %bound1767
  br i1 %found.conflict768, label %.lr.ph.i204.preheader, label %vector.ph771

vector.ph771:                                     ; preds = %vector.memcheck761
  %n.vec772 = and i64 %wide.trip.count.i203, 2147483644 ; 3 uses
  br label %vector.body773

vector.body773:                                   ; preds = %vector.body773, %vector.ph771
  %index774 = phi i64 [ 0, %vector.ph771 ], [ %index.next776, %vector.body773 ] ; 6 uses
  %.neg = xor i64 %index774, -1
  %i.fy = mul nsw i64 %index774, -16
  %i.fz = shl nsw i64 %.neg, 4
  %i.ga = shl i64 %index774, 4
  %i.gb = sub nuw nsw i64 -32, %i.ga
  %i.gc = shl i64 %index774, 4
  %i.gd = sub nuw nsw i64 -48, %i.gc
  %i.ge = getelementptr inbounds i8, ptr %i.fi, i64 %i.fy
  %i.gf = getelementptr inbounds i8, ptr %i.fi, i64 %i.fz
  %i.gg = getelementptr inbounds i8, ptr %i.fi, i64 %i.gb
  %i.gh = getelementptr inbounds i8, ptr %i.fi, i64 %i.gd
  %i.gi = load double, ptr %i.ge, align 8, !tbaa !35, !alias.scope !298
  %i.gj = load double, ptr %i.gf, align 8, !tbaa !35, !alias.scope !298
  %i.gk = insertelement <2 x double> poison, double %i.gj, i64 0
  %reverse = insertelement <2 x double> %i.gk, double %i.gi, i64 1
  %i.gl = load double, ptr %i.gg, align 8, !tbaa !35, !alias.scope !298
  %i.gm = load double, ptr %i.gh, align 8, !tbaa !35, !alias.scope !298
  %i.gn = insertelement <2 x double> poison, double %i.gm, i64 0
  %reverse775 = insertelement <2 x double> %i.gn, double %i.gl, i64 1
  %i.go = mul nsw i64 %index774, %i.fr
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -8
  %i.gr = getelementptr inbounds i8, ptr %i.gp, i64 -24
  store <2 x double> %reverse, ptr %i.gq, align 8, !tbaa !35, !alias.scope !299, !noalias !298
  store <2 x double> %reverse775, ptr %i.gr, align 8, !tbaa !35, !alias.scope !299, !noalias !298
  %index.next776 = add nuw i64 %index774, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next776, %n.vec772
  br i1 %i.gs, label %middle.block777, label %vector.body773, !llvm.loop !201

middle.block777:                                  ; preds = %vector.body773
  %cmp.n = icmp eq i64 %n.vec772, %wide.trip.count.i203
  br i1 %cmp.n, label %cpyr1.exit, label %.lr.ph.i204.preheader

.lr.ph.i204.preheader:                            ; preds = %vector.memcheck761, %.lr.ph.preheader.i202, %middle.block777
  %indvars.iv.i205.ph = phi i64 [ 0, %vector.memcheck761 ], [ 0, %.lr.ph.preheader.i202 ], [ %n.vec772, %middle.block777 ] ; 3 uses
  %xtraiter845 = and i64 %wide.trip.count.i203, 3 ; 2 uses
  %lcmp.mod846.not = icmp eq i64 %xtraiter845, 0
  br i1 %lcmp.mod846.not, label %.lr.ph.i204.prol.loopexit, label %.lr.ph.i204.prol

.lr.ph.i204.prol:                                 ; preds = %.lr.ph.i204.preheader, %.lr.ph.i204.prol
  %indvars.iv.i205.prol = phi i64 [ %indvars.iv.next.i206.prol, %.lr.ph.i204.prol ], [ %indvars.iv.i205.ph, %.lr.ph.i204.preheader ] ; 3 uses
  %prol.iter847 = phi i64 [ %prol.iter847.next, %.lr.ph.i204.prol ], [ 0, %.lr.ph.i204.preheader ]
  %.idx529.prol = mul nsw i64 %indvars.iv.i205.prol, -16
  %i.gt = getelementptr inbounds i8, ptr %i.fi, i64 %.idx529.prol
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !35
  %i.gv = mul nsw i64 %indvars.iv.i205.prol, %i.fr
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.gv
  store double %i.gu, ptr %i.gw, align 8, !tbaa !35
  %indvars.iv.next.i206.prol = add nuw nsw i64 %indvars.iv.i205.prol, 1 ; 2 uses
  %prol.iter847.next = add i64 %prol.iter847, 1   ; 2 uses
  %prol.iter847.cmp.not = icmp eq i64 %prol.iter847.next, %xtraiter845
  br i1 %prol.iter847.cmp.not, label %.lr.ph.i204.prol.loopexit, label %.lr.ph.i204.prol, !llvm.loop !202

.lr.ph.i204.prol.loopexit:                        ; preds = %.lr.ph.i204.prol, %.lr.ph.i204.preheader
  %indvars.iv.i205.unr = phi i64 [ %indvars.iv.i205.ph, %.lr.ph.i204.preheader ], [ %indvars.iv.next.i206.prol, %.lr.ph.i204.prol ]
  %i.gx = sub nsw i64 %indvars.iv.i205.ph, %wide.trip.count.i203
  %i.gy = icmp ugt i64 %i.gx, -4
  br i1 %i.gy, label %cpyr1.exit, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.lr.ph.i204.prol.loopexit, %.lr.ph.i204
  %indvars.iv.i205 = phi i64 [ %indvars.iv.next.i206.3, %.lr.ph.i204 ], [ %indvars.iv.i205.unr, %.lr.ph.i204.prol.loopexit ] ; 6 uses
  %.idx529 = mul nsw i64 %indvars.iv.i205, -16
  %i.gz = getelementptr inbounds i8, ptr %i.fi, i64 %.idx529
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !35
  %i.hb = mul nsw i64 %indvars.iv.i205, %i.fr
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.hb
  store double %i.ha, ptr %i.hc, align 8, !tbaa !35
  %indvars.iv.next.i206 = add nuw nsw i64 %indvars.iv.i205, 1 ; 2 uses
  %.idx529.1 = mul nsw i64 %indvars.iv.next.i206, -16
  %i.hd = getelementptr inbounds i8, ptr %i.fi, i64 %.idx529.1
  %i.he = load double, ptr %i.hd, align 8, !tbaa !35
  %i.hf = mul nsw i64 %indvars.iv.next.i206, %i.fr
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.hf
  store double %i.he, ptr %i.hg, align 8, !tbaa !35
  %indvars.iv.next.i206.1 = add nuw nsw i64 %indvars.iv.i205, 2 ; 2 uses
  %.idx529.2 = mul nsw i64 %indvars.iv.next.i206.1, -16
  %i.hh = getelementptr inbounds i8, ptr %i.fi, i64 %.idx529.2
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !35
  %i.hj = mul nsw i64 %indvars.iv.next.i206.1, %i.fr
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.hj
  store double %i.hi, ptr %i.hk, align 8, !tbaa !35
  %indvars.iv.next.i206.2 = add nuw nsw i64 %indvars.iv.i205, 3 ; 2 uses
  %.idx529.3 = mul nsw i64 %indvars.iv.next.i206.2, -16
  %i.hl = getelementptr inbounds i8, ptr %i.fi, i64 %.idx529.3
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !35
  %i.hn = mul nsw i64 %indvars.iv.next.i206.2, %i.fr
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.hn
  store double %i.hm, ptr %i.ho, align 8, !tbaa !35
  %indvars.iv.next.i206.3 = add nuw nsw i64 %indvars.iv.i205, 4 ; 2 uses
  %exitcond.not.i207.3 = icmp eq i64 %indvars.iv.next.i206.3, %wide.trip.count.i203
  br i1 %exitcond.not.i207.3, label %cpyr1.exit, label %.lr.ph.i204, !llvm.loop !203

bb.d:                                             ; preds = %bb.a
  %i.hp = icmp sgt i32 %i.g, 0
  br i1 %i.hp, label %.lr.ph.preheader.i209, label %cpyr1.exit

.lr.ph.preheader.i209:                            ; preds = %bb.d
  %i.hq = sext i32 %i.i to i64                    ; 9 uses
  %wide.trip.count.i210 = zext nneg i32 %i.g to i64 ; 7 uses
  %min.iters.check734 = icmp ugt i32 %i.g, 14
  %ident.check726.not = icmp eq i32 %i.i, 1
  %or.cond801 = select i1 %min.iters.check734, i1 %ident.check726.not, i1 false
  br i1 %or.cond801, label %vector.memcheck727, label %.lr.ph.i211.preheader

vector.memcheck727:                               ; preds = %.lr.ph.preheader.i209
  %i.hr = shl nuw nsw i64 %wide.trip.count.i210, 3
  %scevgep728 = getelementptr i8, ptr %i.m, i64 %i.hr
  %i.hs = shl nuw nsw i64 %wide.trip.count.i210, 4
  %i.ht = getelementptr i8, ptr %1, i64 %i.hs
  %scevgep729 = getelementptr i8, ptr %i.ht, i64 -8
  %bound0730 = icmp ult ptr %i.m, %scevgep729
  %bound1731 = icmp ult ptr %1, %scevgep728
  %found.conflict732 = and i1 %bound0730, %bound1731
  br i1 %found.conflict732, label %.lr.ph.i211.preheader, label %vector.ph735

vector.ph735:                                     ; preds = %vector.memcheck727
  %i.hu = and i64 %wide.trip.count.i210, 3        ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 0
  %i.hw = select i1 %i.hv, i64 4, i64 %i.hu
  %n.vec736 = sub nsw i64 %wide.trip.count.i210, %i.hw ; 2 uses
  br label %vector.body737

vector.body737:                                   ; preds = %vector.body737, %vector.ph735
  %index738 = phi i64 [ 0, %vector.ph735 ], [ %index.next739, %vector.body737 ] ; 6 uses
  %i.hx = shl nuw nsw i64 %index738, 4
  %i.hy = shl i64 %index738, 4
  %i.hz = shl i64 %index738, 4
  %i.ia = shl i64 %index738, 4
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 %i.hx
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %i.hy
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 %i.hz
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 %i.ia
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.ii = load double, ptr %i.ib, align 8, !tbaa !35, !alias.scope !300
  %i.ij = load double, ptr %i.id, align 8, !tbaa !35, !alias.scope !300
  %i.ik = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.il = insertelement <2 x double> %i.ik, double %i.ij, i64 1
  %i.im = load double, ptr %i.if, align 8, !tbaa !35, !alias.scope !300
  %i.in = load double, ptr %i.ih, align 8, !tbaa !35, !alias.scope !300
  %i.io = insertelement <2 x double> poison, double %i.im, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %i.in, i64 1
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %index738 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <2 x double> %i.il, ptr %i.iq, align 8, !tbaa !35, !alias.scope !301, !noalias !300
  store <2 x double> %i.ip, ptr %i.ir, align 8, !tbaa !35, !alias.scope !301, !noalias !300
  %index.next739 = add nuw i64 %index738, 4       ; 2 uses
  %i.is = icmp eq i64 %index.next739, %n.vec736
  br i1 %i.is, label %.lr.ph.i211.preheader, label %vector.body737, !llvm.loop !207

.lr.ph.i211.preheader:                            ; preds = %vector.body737, %vector.memcheck727, %.lr.ph.preheader.i209
  %indvars.iv.i212.ph = phi i64 [ 0, %vector.memcheck727 ], [ 0, %.lr.ph.preheader.i209 ], [ %n.vec736, %vector.body737 ] ; 4 uses
  %i.it = sub nsw i64 %wide.trip.count.i210, %indvars.iv.i212.ph
  %xtraiter839 = and i64 %i.it, 7                 ; 2 uses
  %lcmp.mod840.not = icmp eq i64 %xtraiter839, 0
  br i1 %lcmp.mod840.not, label %.lr.ph.i211.prol.loopexit, label %.lr.ph.i211.prol

.lr.ph.i211.prol:                                 ; preds = %.lr.ph.i211.preheader, %.lr.ph.i211.prol
  %indvars.iv.i212.prol = phi i64 [ %indvars.iv.next.i213.prol, %.lr.ph.i211.prol ], [ %indvars.iv.i212.ph, %.lr.ph.i211.preheader ] ; 3 uses
  %prol.iter841 = phi i64 [ %prol.iter841.next, %.lr.ph.i211.prol ], [ 0, %.lr.ph.i211.preheader ]
  %.idx527.prol = shl nuw nsw i64 %indvars.iv.i212.prol, 4
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 %.idx527.prol
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !35
  %i.iw = mul nsw i64 %indvars.iv.i212.prol, %i.hq
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.iw
  store double %i.iv, ptr %i.ix, align 8, !tbaa !35
  %indvars.iv.next.i213.prol = add nuw nsw i64 %indvars.iv.i212.prol, 1 ; 2 uses
  %prol.iter841.next = add i64 %prol.iter841, 1   ; 2 uses
  %prol.iter841.cmp.not = icmp eq i64 %prol.iter841.next, %xtraiter839
  br i1 %prol.iter841.cmp.not, label %.lr.ph.i211.prol.loopexit, label %.lr.ph.i211.prol, !llvm.loop !208

.lr.ph.i211.prol.loopexit:                        ; preds = %.lr.ph.i211.prol, %.lr.ph.i211.preheader
  %indvars.iv.i212.unr = phi i64 [ %indvars.iv.i212.ph, %.lr.ph.i211.preheader ], [ %indvars.iv.next.i213.prol, %.lr.ph.i211.prol ]
  %i.iy = sub nsw i64 %indvars.iv.i212.ph, %wide.trip.count.i210
  %i.iz = icmp ugt i64 %i.iy, -8
  br i1 %i.iz, label %cpyr1.exit, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %.lr.ph.i211.prol.loopexit, %.lr.ph.i211
  %indvars.iv.i212 = phi i64 [ %indvars.iv.next.i213.7, %.lr.ph.i211 ], [ %indvars.iv.i212.unr, %.lr.ph.i211.prol.loopexit ] ; 10 uses
  %.idx527 = shl nuw nsw i64 %indvars.iv.i212, 4
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 %.idx527
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !35
  %i.jc = mul nsw i64 %indvars.iv.i212, %i.hq
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.jc
  store double %i.jb, ptr %i.jd, align 8, !tbaa !35
  %indvars.iv.next.i213 = add nuw nsw i64 %indvars.iv.i212, 1 ; 2 uses
  %.idx527.1 = shl nuw nsw i64 %indvars.iv.next.i213, 4
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 %.idx527.1
  %i.jf = load double, ptr %i.je, align 8, !tbaa !35
end_hunk_0
