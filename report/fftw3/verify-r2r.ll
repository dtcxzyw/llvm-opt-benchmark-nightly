Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/verify-r2r?download=true
inline.NumInlined: 111
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 79
begin_hunk_0_@r2r_apply:bb.a
  store double %i.bk, ptr %i.bm, align 8, !tbaa !35
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %.idx530.2 = shl nuw nsw i64 %indvars.iv.next.i.1, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %.idx530.2
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !35
  %i.bp = mul nsw i64 %indvars.iv.next.i.1, %i.t
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.bp
  store double %i.bo, ptr %i.bq, align 8, !tbaa !35
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %.idx530.3 = shl nuw nsw i64 %indvars.iv.next.i.2, 4
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %.idx530.3
  %i.bs = load double, ptr %i.br, align 8, !tbaa !35
  %i.bt = mul nsw i64 %indvars.iv.next.i.2, %i.t
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.bt
  store double %i.bs, ptr %i.bu, align 8, !tbaa !35
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %.idx530.4 = shl nuw nsw i64 %indvars.iv.next.i.3, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %.idx530.4
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !35
  %i.bx = mul nsw i64 %indvars.iv.next.i.3, %i.t
  %i.by = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.bx
  store double %i.bw, ptr %i.by, align 8, !tbaa !35
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %.idx530.5 = shl nuw nsw i64 %indvars.iv.next.i.4, 4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx530.5
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !35
  %i.cb = mul nsw i64 %indvars.iv.next.i.4, %i.t
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.cb
  store double %i.ca, ptr %i.cc, align 8, !tbaa !35
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %.idx530.6 = shl nuw nsw i64 %indvars.iv.next.i.5, 4
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.idx530.6
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !35
  %i.cf = mul nsw i64 %indvars.iv.next.i.5, %i.t
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.cf
  store double %i.ce, ptr %i.cg, align 8, !tbaa !35
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %.idx530.7 = shl nuw nsw i64 %indvars.iv.next.i.6, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %.idx530.7
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !35
  %i.cj = mul nsw i64 %indvars.iv.next.i.6, %i.t
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.cj
  store double %i.ci, ptr %i.ck, align 8, !tbaa !35
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %cpyr1.exit, label %.lr.ph.i, !llvm.loop !191

bb.c:                                             ; preds = %bb.a
  %i.cl = icmp sgt i32 %i.g, -2
  br i1 %i.cl, label %.lr.ph.preheader.i195, label %cpyr1.exit

.lr.ph.preheader.i195:                            ; preds = %bb.c
  %i.cm = sdiv i32 %i.g, 2                        ; 4 uses
  %i.cn = add nuw nsw i32 %i.cm, 1
  %i.co = sext i32 %i.i to i64                    ; 9 uses
  %wide.trip.count.i196 = zext i32 %i.cn to i64   ; 4 uses
  %min.iters.check771 = icmp ugt i32 %i.cm, 15
  %ident.check764.not = icmp eq i32 %i.i, 1
  %or.cond829 = select i1 %min.iters.check771, i1 %ident.check764.not, i1 false
  br i1 %or.cond829, label %vector.memcheck772, label %.lr.ph.i197.preheader

vector.memcheck772:                               ; preds = %.lr.ph.preheader.i195
  %i.cp = zext i32 %i.cm to i64                   ; 2 uses
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = getelementptr i8, ptr %i.m, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %i.ct = shl nuw nsw i64 %i.cp, 4
  %i.cu = getelementptr i8, ptr %1, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %bound0773 = icmp ult ptr %i.m, %i.cv
  %bound1774 = icmp ult ptr %1, %i.cs
  %found.conflict775 = and i1 %bound0773, %bound1774
  br i1 %found.conflict775, label %.lr.ph.i197.preheader, label %vector.ph776

vector.ph776:                                     ; preds = %vector.memcheck772
  %i.cw = and i64 %wide.trip.count.i196, 3        ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  %i.cy = select i1 %i.cx, i64 4, i64 %i.cw
  %n.vec777 = sub nsw i64 %wide.trip.count.i196, %i.cy ; 2 uses
  br label %vector.body778

vector.body778:                                   ; preds = %vector.body778, %vector.ph776
  %index779 = phi i64 [ 0, %vector.ph776 ], [ %index.next780, %vector.body778 ] ; 6 uses
  %i.cz = shl nuw nsw i64 %index779, 4
  %i.da = shl i64 %index779, 4
  %i.db = shl i64 %index779, 4
  %i.dc = shl i64 %index779, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.da
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dc
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load double, ptr %i.dd, align 8, !tbaa !35, !alias.scope !296
  %i.dl = load double, ptr %i.df, align 8, !tbaa !35, !alias.scope !296
  %i.dm = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.dl, i64 1
  %i.do = load double, ptr %i.dh, align 8, !tbaa !35, !alias.scope !296
  %i.dp = load double, ptr %i.dj, align 8, !tbaa !35, !alias.scope !296
  %i.dq = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.dp, i64 1
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.m, i64 %index779 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x double> %i.dn, ptr %i.ds, align 8, !tbaa !35, !alias.scope !297, !noalias !296
  store <2 x double> %i.dr, ptr %i.dt, align 8, !tbaa !35, !alias.scope !297, !noalias !296
  %index.next780 = add nuw i64 %index779, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next780, %n.vec777
  br i1 %i.du, label %.lr.ph.i197.preheader, label %vector.body778, !llvm.loop !195

.lr.ph.i197.preheader:                            ; preds = %vector.body778, %vector.memcheck772, %.lr.ph.preheader.i195
  %indvars.iv.i198.ph = phi i64 [ 0, %vector.memcheck772 ], [ 0, %.lr.ph.preheader.i195 ], [ %n.vec777, %vector.body778 ] ; 4 uses
  %i.dv = sub nsw i64 %wide.trip.count.i196, %indvars.iv.i198.ph
  %i.dw = zext i32 %i.cm to i64
  %i.dx = sub nsw i64 %i.dw, %indvars.iv.i198.ph
  %xtraiter872 = and i64 %i.dv, 7                 ; 2 uses
  %lcmp.mod873.not = icmp eq i64 %xtraiter872, 0
  br i1 %lcmp.mod873.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol

.lr.ph.i197.prol:                                 ; preds = %.lr.ph.i197.preheader, %.lr.ph.i197.prol
  %indvars.iv.i198.prol = phi i64 [ %indvars.iv.next.i199.prol, %.lr.ph.i197.prol ], [ %indvars.iv.i198.ph, %.lr.ph.i197.preheader ] ; 3 uses
  %prol.iter874 = phi i64 [ %prol.iter874.next, %.lr.ph.i197.prol ], [ 0, %.lr.ph.i197.preheader ]
  %.idx528.prol = shl nuw nsw i64 %indvars.iv.i198.prol, 4
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.prol
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !35
  %i.ea = mul nsw i64 %indvars.iv.i198.prol, %i.co
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ea
  store double %i.dz, ptr %i.eb, align 8, !tbaa !35
  %indvars.iv.next.i199.prol = add nuw nsw i64 %indvars.iv.i198.prol, 1 ; 2 uses
  %prol.iter874.next = add i64 %prol.iter874, 1   ; 2 uses
  %prol.iter874.cmp.not = icmp eq i64 %prol.iter874.next, %xtraiter872
  br i1 %prol.iter874.cmp.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol, !llvm.loop !196

.lr.ph.i197.prol.loopexit:                        ; preds = %.lr.ph.i197.prol, %.lr.ph.i197.preheader
  %indvars.iv.i198.unr = phi i64 [ %indvars.iv.i198.ph, %.lr.ph.i197.preheader ], [ %indvars.iv.next.i199.prol, %.lr.ph.i197.prol ]
  %i.ec = icmp ult i64 %i.dx, 7
  br i1 %i.ec, label %cpyr1.exit201, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %.lr.ph.i197.prol.loopexit, %.lr.ph.i197
  %indvars.iv.i198 = phi i64 [ %indvars.iv.next.i199.7, %.lr.ph.i197 ], [ %indvars.iv.i198.unr, %.lr.ph.i197.prol.loopexit ] ; 10 uses
  %.idx528 = shl nuw nsw i64 %indvars.iv.i198, 4
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !35
  %i.ef = mul nsw i64 %indvars.iv.i198, %i.co
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ef
  store double %i.ee, ptr %i.eg, align 8, !tbaa !35
  %indvars.iv.next.i199 = add nuw nsw i64 %indvars.iv.i198, 1 ; 2 uses
  %.idx528.1 = shl nuw nsw i64 %indvars.iv.next.i199, 4
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.1
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !35
  %i.ej = mul nsw i64 %indvars.iv.next.i199, %i.co
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ej
  store double %i.ei, ptr %i.ek, align 8, !tbaa !35
  %indvars.iv.next.i199.1 = add nuw nsw i64 %indvars.iv.i198, 2 ; 2 uses
  %.idx528.2 = shl nuw nsw i64 %indvars.iv.next.i199.1, 4
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.2
  %i.em = load double, ptr %i.el, align 8, !tbaa !35
  %i.en = mul nsw i64 %indvars.iv.next.i199.1, %i.co
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.en
  store double %i.em, ptr %i.eo, align 8, !tbaa !35
  %indvars.iv.next.i199.2 = add nuw nsw i64 %indvars.iv.i198, 3 ; 2 uses
  %.idx528.3 = shl nuw nsw i64 %indvars.iv.next.i199.2, 4
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.3
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !35
  %i.er = mul nsw i64 %indvars.iv.next.i199.2, %i.co
  %i.es = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.er
  store double %i.eq, ptr %i.es, align 8, !tbaa !35
  %indvars.iv.next.i199.3 = add nuw nsw i64 %indvars.iv.i198, 4 ; 2 uses
  %.idx528.4 = shl nuw nsw i64 %indvars.iv.next.i199.3, 4
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.4
  %i.eu = load double, ptr %i.et, align 8, !tbaa !35
  %i.ev = mul nsw i64 %indvars.iv.next.i199.3, %i.co
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ev
  store double %i.eu, ptr %i.ew, align 8, !tbaa !35
  %indvars.iv.next.i199.4 = add nuw nsw i64 %indvars.iv.i198, 5 ; 2 uses
  %.idx528.5 = shl nuw nsw i64 %indvars.iv.next.i199.4, 4
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.5
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !35
  %i.ez = mul nsw i64 %indvars.iv.next.i199.4, %i.co
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ez
  store double %i.ey, ptr %i.fa, align 8, !tbaa !35
  %indvars.iv.next.i199.5 = add nuw nsw i64 %indvars.iv.i198, 6 ; 2 uses
  %.idx528.6 = shl nuw nsw i64 %indvars.iv.next.i199.5, 4
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.6
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !35
  %i.fd = mul nsw i64 %indvars.iv.next.i199.5, %i.co
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fd
  store double %i.fc, ptr %i.fe, align 8, !tbaa !35
  %indvars.iv.next.i199.6 = add nuw nsw i64 %indvars.iv.i198, 7 ; 2 uses
  %.idx528.7 = shl nuw nsw i64 %indvars.iv.next.i199.6, 4
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 %.idx528.7
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !35
  %i.fh = mul nsw i64 %indvars.iv.next.i199.6, %i.co
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fh
  store double %i.fg, ptr %i.fi, align 8, !tbaa !35
  %indvars.iv.next.i199.7 = add nuw nsw i64 %indvars.iv.i198, 8 ; 2 uses
  %exitcond.not.i200.7 = icmp eq i64 %indvars.iv.next.i199.7, %wide.trip.count.i196
  br i1 %exitcond.not.i200.7, label %cpyr1.exit201, label %.lr.ph.i197, !llvm.loop !197

cpyr1.exit201:                                    ; preds = %.lr.ph.i197, %.lr.ph.i197.prol.loopexit
  %i.fj = add i32 %i.g, -1                        ; 2 uses
  %3 = sext i32 %i.fj to i64                      ; 3 uses
  %i.fk = getelementptr inbounds [16 x i8], ptr %1, i64 %3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 9 uses
  %i.fm = mul nsw i32 %i.i, %i.fj
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fn ; 6 uses
  %i.fp = icmp sgt i32 %i.g, 2
  br i1 %i.fp, label %.lr.ph.preheader.i202, label %cpyr1.exit

.lr.ph.preheader.i202:                            ; preds = %cpyr1.exit201
  %i.fq = add nuw nsw i32 %i.g, 1
  %i.fr = lshr i32 %i.fq, 1
  %i.fs = add nsw i32 %i.fr, -1                   ; 2 uses
  %i.ft = sub nsw i32 0, %i.i
  %i.fu = sext i32 %i.ft to i64                   ; 6 uses
  %wide.trip.count.i203 = zext i32 %i.fs to i64   ; 7 uses
  %min.iters.check793 = icmp ugt i32 %i.fs, 17
  %ident.check784.not = icmp eq i32 %i.i, 1
  %or.cond830 = select i1 %min.iters.check793, i1 %ident.check784.not, i1 false
  br i1 %or.cond830, label %vector.memcheck794, label %.lr.ph.i204.preheader

vector.memcheck794:                               ; preds = %.lr.ph.preheader.i202
  %i.fv = shl nsw i64 %3, 3
  %i.fw = shl nuw nsw i64 %wide.trip.count.i203, 3
  %i.fx = add nsw i64 %i.fv, 8                    ; 2 uses
  %i.fy = sub nsw i64 %i.fx, %i.fw
  %i.fz = getelementptr i8, ptr %i.m, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.m, i64 %i.fx
  %i.gb = shl nsw i64 %3, 4                       ; 2 uses
  %i.gc = shl nuw nsw i64 %wide.trip.count.i203, 4
  %i.gd = add nsw i64 %i.gb, 24
  %i.ge = sub nsw i64 %i.gd, %i.gc
  %i.gf = getelementptr i8, ptr %1, i64 %i.ge
  %i.gg = getelementptr i8, ptr %1, i64 %i.gb
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  %bound0795 = icmp ult ptr %i.fz, %i.gh
  %bound1796 = icmp ult ptr %i.gf, %i.ga
  %found.conflict797 = and i1 %bound0795, %bound1796
  br i1 %found.conflict797, label %.lr.ph.i204.preheader, label %vector.ph798

vector.ph798:                                     ; preds = %vector.memcheck794
  %n.vec799 = and i64 %wide.trip.count.i203, 2147483644 ; 3 uses
  br label %vector.body800

vector.body800:                                   ; preds = %vector.body800, %vector.ph798
  %index801 = phi i64 [ 0, %vector.ph798 ], [ %index.next803, %vector.body800 ] ; 6 uses
  %.neg = xor i64 %index801, -1
  %i.gi = mul nsw i64 %index801, -16
  %i.gj = shl nsw i64 %.neg, 4
  %i.gk = shl i64 %index801, 4
  %i.gl = sub nuw nsw i64 -32, %i.gk
  %i.gm = shl i64 %index801, 4
  %i.gn = sub nuw nsw i64 -48, %i.gm
  %i.go = getelementptr inbounds i8, ptr %i.fl, i64 %i.gi
  %i.gp = getelementptr inbounds i8, ptr %i.fl, i64 %i.gj
  %i.gq = getelementptr inbounds i8, ptr %i.fl, i64 %i.gl
  %i.gr = getelementptr inbounds i8, ptr %i.fl, i64 %i.gn
  %i.gs = load double, ptr %i.go, align 8, !tbaa !35, !alias.scope !298
  %i.gt = load double, ptr %i.gp, align 8, !tbaa !35, !alias.scope !298
  %i.gu = insertelement <2 x double> poison, double %i.gt, i64 0
  %reverse = insertelement <2 x double> %i.gu, double %i.gs, i64 1
  %i.gv = load double, ptr %i.gq, align 8, !tbaa !35, !alias.scope !298
  %i.gw = load double, ptr %i.gr, align 8, !tbaa !35, !alias.scope !298
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %reverse802 = insertelement <2 x double> %i.gx, double %i.gv, i64 1
  %i.gy = mul nsw i64 %index801, %i.fu
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.gy ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -8
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 -24
  store <2 x double> %reverse, ptr %i.ha, align 8, !tbaa !35, !alias.scope !299, !noalias !298
  store <2 x double> %reverse802, ptr %i.hb, align 8, !tbaa !35, !alias.scope !299, !noalias !298
  %index.next803 = add nuw i64 %index801, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next803, %n.vec799
  br i1 %i.hc, label %middle.block804, label %vector.body800, !llvm.loop !201

middle.block804:                                  ; preds = %vector.body800
  %cmp.n = icmp eq i64 %n.vec799, %wide.trip.count.i203
  br i1 %cmp.n, label %cpyr1.exit, label %.lr.ph.i204.preheader

.lr.ph.i204.preheader:                            ; preds = %vector.memcheck794, %.lr.ph.preheader.i202, %middle.block804
  %indvars.iv.i205.ph = phi i64 [ 0, %vector.memcheck794 ], [ 0, %.lr.ph.preheader.i202 ], [ %n.vec799, %middle.block804 ] ; 3 uses
  %xtraiter875 = and i64 %wide.trip.count.i203, 3 ; 2 uses
  %lcmp.mod876.not = icmp eq i64 %xtraiter875, 0
  br i1 %lcmp.mod876.not, label %.lr.ph.i204.prol.loopexit, label %.lr.ph.i204.prol

.lr.ph.i204.prol:                                 ; preds = %.lr.ph.i204.preheader, %.lr.ph.i204.prol
  %indvars.iv.i205.prol = phi i64 [ %indvars.iv.next.i206.prol, %.lr.ph.i204.prol ], [ %indvars.iv.i205.ph, %.lr.ph.i204.preheader ] ; 3 uses
  %prol.iter877 = phi i64 [ %prol.iter877.next, %.lr.ph.i204.prol ], [ 0, %.lr.ph.i204.preheader ]
  %.idx529.prol = mul nsw i64 %indvars.iv.i205.prol, -16
  %i.hd = getelementptr inbounds i8, ptr %i.fl, i64 %.idx529.prol
  %i.he = load double, ptr %i.hd, align 8, !tbaa !35
  %i.hf = mul nsw i64 %indvars.iv.i205.prol, %i.fu
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.hf
  store double %i.he, ptr %i.hg, align 8, !tbaa !35
  %indvars.iv.next.i206.prol = add nuw nsw i64 %indvars.iv.i205.prol, 1 ; 2 uses
  %prol.iter877.next = add i64 %prol.iter877, 1   ; 2 uses
  %prol.iter877.cmp.not = icmp eq i64 %prol.iter877.next, %xtraiter875
  br i1 %prol.iter877.cmp.not, label %.lr.ph.i204.prol.loopexit, label %.lr.ph.i204.prol, !llvm.loop !202

.lr.ph.i204.prol.loopexit:                        ; preds = %.lr.ph.i204.prol, %.lr.ph.i204.preheader
  %indvars.iv.i205.unr = phi i64 [ %indvars.iv.i205.ph, %.lr.ph.i204.preheader ], [ %indvars.iv.next.i206.prol, %.lr.ph.i204.prol ]
  %i.hh = sub nsw i64 %indvars.iv.i205.ph, %wide.trip.count.i203
  %i.hi = icmp ugt i64 %i.hh, -4
  br i1 %i.hi, label %cpyr1.exit, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.lr.ph.i204.prol.loopexit, %.lr.ph.i204
  %indvars.iv.i205 = phi i64 [ %indvars.iv.next.i206.3, %.lr.ph.i204 ], [ %indvars.iv.i205.unr, %.lr.ph.i204.prol.loopexit ] ; 6 uses
  %.idx529 = mul nsw i64 %indvars.iv.i205, -16
  %i.hj = getelementptr inbounds i8, ptr %i.fl, i64 %.idx529
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !35
  %i.hl = mul nsw i64 %indvars.iv.i205, %i.fu
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.hl
  store double %i.hk, ptr %i.hm, align 8, !tbaa !35
  %indvars.iv.next.i206 = add nuw nsw i64 %indvars.iv.i205, 1 ; 2 uses
  %.idx529.1 = mul nsw i64 %indvars.iv.next.i206, -16
  %i.hn = getelementptr inbounds i8, ptr %i.fl, i64 %.idx529.1
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !35
  %i.hp = mul nsw i64 %indvars.iv.next.i206, %i.fu
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.hp
  store double %i.ho, ptr %i.hq, align 8, !tbaa !35
  %indvars.iv.next.i206.1 = add nuw nsw i64 %indvars.iv.i205, 2 ; 2 uses
  %.idx529.2 = mul nsw i64 %indvars.iv.next.i206.1, -16
  %i.hr = getelementptr inbounds i8, ptr %i.fl, i64 %.idx529.2
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !35
  %i.ht = mul nsw i64 %indvars.iv.next.i206.1, %i.fu
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.ht
  store double %i.hs, ptr %i.hu, align 8, !tbaa !35
  %indvars.iv.next.i206.2 = add nuw nsw i64 %indvars.iv.i205, 3 ; 2 uses
  %.idx529.3 = mul nsw i64 %indvars.iv.next.i206.2, -16
  %i.hv = getelementptr inbounds i8, ptr %i.fl, i64 %.idx529.3
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !35
  %i.hx = mul nsw i64 %indvars.iv.next.i206.2, %i.fu
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.hx
  store double %i.hw, ptr %i.hy, align 8, !tbaa !35
  %indvars.iv.next.i206.3 = add nuw nsw i64 %indvars.iv.i205, 4 ; 2 uses
  %exitcond.not.i207.3 = icmp eq i64 %indvars.iv.next.i206.3, %wide.trip.count.i203
  br i1 %exitcond.not.i207.3, label %cpyr1.exit, label %.lr.ph.i204, !llvm.loop !203

bb.d:                                             ; preds = %bb.a
  %i.hz = icmp sgt i32 %i.g, 0
  br i1 %i.hz, label %.lr.ph.preheader.i209, label %cpyr1.exit

.lr.ph.preheader.i209:                            ; preds = %bb.d
  %i.ia = sext i32 %i.i to i64                    ; 9 uses
  %wide.trip.count.i210 = zext nneg i32 %i.g to i64 ; 7 uses
  %min.iters.check751 = icmp ugt i32 %i.g, 14
  %ident.check744.not = icmp eq i32 %i.i, 1
  %or.cond831 = select i1 %min.iters.check751, i1 %ident.check744.not, i1 false
  br i1 %or.cond831, label %vector.memcheck752, label %.lr.ph.i211.preheader

vector.memcheck752:                               ; preds = %.lr.ph.preheader.i209
  %i.ib = shl nuw nsw i64 %wide.trip.count.i210, 3
  %i.ic = getelementptr i8, ptr %i.m, i64 %i.ib
  %i.id = shl nuw nsw i64 %wide.trip.count.i210, 4
  %i.ie = getelementptr i8, ptr %1, i64 %i.id
  %i.if = getelementptr i8, ptr %i.ie, i64 -8
  %bound0753 = icmp ult ptr %i.m, %i.if
  %bound1754 = icmp ult ptr %1, %i.ic
  %found.conflict755 = and i1 %bound0753, %bound1754
  br i1 %found.conflict755, label %.lr.ph.i211.preheader, label %vector.ph756

vector.ph756:                                     ; preds = %vector.memcheck752
  %i.ig = and i64 %wide.trip.count.i210, 3        ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 0
  %i.ii = select i1 %i.ih, i64 4, i64 %i.ig
  %n.vec757 = sub nsw i64 %wide.trip.count.i210, %i.ii ; 2 uses
  br label %vector.body758

vector.body758:                                   ; preds = %vector.body758, %vector.ph756
  %index759 = phi i64 [ 0, %vector.ph756 ], [ %index.next760, %vector.body758 ] ; 6 uses
  %i.ij = shl nuw nsw i64 %index759, 4
  %i.ik = shl i64 %index759, 4
  %i.il = shl i64 %index759, 4
  %i.im = shl i64 %index759, 4
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 %i.ij
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 %i.ik
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 %i.il
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 %i.im
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  %i.iu = load double, ptr %i.in, align 8, !tbaa !35, !alias.scope !300
  %i.iv = load double, ptr %i.ip, align 8, !tbaa !35, !alias.scope !300
  %i.iw = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.ix = insertelement <2 x double> %i.iw, double %i.iv, i64 1
  %i.iy = load double, ptr %i.ir, align 8, !tbaa !35, !alias.scope !300
  %i.iz = load double, ptr %i.it, align 8, !tbaa !35, !alias.scope !300
  %i.ja = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.jb = insertelement <2 x double> %i.ja, double %i.iz, i64 1
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.m, i64 %index759 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store <2 x double> %i.ix, ptr %i.jc, align 8, !tbaa !35, !alias.scope !301, !noalias !300
  store <2 x double> %i.jb, ptr %i.jd, align 8, !tbaa !35, !alias.scope !301, !noalias !300
  %index.next760 = add nuw i64 %index759, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next760, %n.vec757
  br i1 %i.je, label %.lr.ph.i211.preheader, label %vector.body758, !llvm.loop !207

.lr.ph.i211.preheader:                            ; preds = %vector.body758, %vector.memcheck752, %.lr.ph.preheader.i209
  %indvars.iv.i212.ph = phi i64 [ 0, %vector.memcheck752 ], [ 0, %.lr.ph.preheader.i209 ], [ %n.vec757, %vector.body758 ] ; 4 uses
  %i.jf = sub nsw i64 %wide.trip.count.i210, %indvars.iv.i212.ph
  %xtraiter869 = and i64 %i.jf, 7                 ; 2 uses
  %lcmp.mod870.not = icmp eq i64 %xtraiter869, 0
  br i1 %lcmp.mod870.not, label %.lr.ph.i211.prol.loopexit, label %.lr.ph.i211.prol

.lr.ph.i211.prol:                                 ; preds = %.lr.ph.i211.preheader, %.lr.ph.i211.prol
  %indvars.iv.i212.prol = phi i64 [ %indvars.iv.next.i213.prol, %.lr.ph.i211.prol ], [ %indvars.iv.i212.ph, %.lr.ph.i211.preheader ] ; 3 uses
  %prol.iter871 = phi i64 [ %prol.iter871.next, %.lr.ph.i211.prol ], [ 0, %.lr.ph.i211.preheader ]
  %.idx527.prol = shl nuw nsw i64 %indvars.iv.i212.prol, 4
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 %.idx527.prol
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !35
  %i.ji = mul nsw i64 %indvars.iv.i212.prol, %i.ia
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ji
  store double %i.jh, ptr %i.jj, align 8, !tbaa !35
  %indvars.iv.next.i213.prol = add nuw nsw i64 %indvars.iv.i212.prol, 1 ; 2 uses
  %prol.iter871.next = add i64 %prol.iter871, 1   ; 2 uses
  %prol.iter871.cmp.not = icmp eq i64 %prol.iter871.next, %xtraiter869
  br i1 %prol.iter871.cmp.not, label %.lr.ph.i211.prol.loopexit, label %.lr.ph.i211.prol, !llvm.loop !208

.lr.ph.i211.prol.loopexit:                        ; preds = %.lr.ph.i211.prol, %.lr.ph.i211.preheader
  %indvars.iv.i212.unr = phi i64 [ %indvars.iv.i212.ph, %.lr.ph.i211.preheader ], [ %indvars.iv.next.i213.prol, %.lr.ph.i211.prol ]
  %i.jk = sub nsw i64 %indvars.iv.i212.ph, %wide.trip.count.i210
  %i.jl = icmp ugt i64 %i.jk, -8
  br i1 %i.jl, label %cpyr1.exit, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %.lr.ph.i211.prol.loopexit, %.lr.ph.i211
  %indvars.iv.i212 = phi i64 [ %indvars.iv.next.i213.7, %.lr.ph.i211 ], [ %indvars.iv.i212.unr, %.lr.ph.i211.prol.loopexit ] ; 10 uses
  %.idx527 = shl nuw nsw i64 %indvars.iv.i212, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 %.idx527
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !35
  %i.jo = mul nsw i64 %indvars.iv.i212, %i.ia
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.jo
end_hunk_0
