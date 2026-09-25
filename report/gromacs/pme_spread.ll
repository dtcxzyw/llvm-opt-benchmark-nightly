Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 504
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !134
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 508
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !134
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  %i.at = load float, ptr %i.as, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !181
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !181
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 312 ; 5 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !182
  %i.bc = icmp sgt i32 %i.bb, 1                   ; 3 uses
  br i1 %i.bc, label %.lr.ph.preheader.i, label %.loopexit116.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !183
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !184
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !186 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  store i32 0, ptr %i.bj, align 4, !tbaa !105
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bk = load i32, ptr %i.ba, align 8, !tbaa !182
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next.i, %i.bl
  br i1 %i.bm, label %.lr.ph.i, label %.loopexit116.i, !llvm.loop !254

.loopexit116.i:                                   ; preds = %.lr.ph.i, %.lr.ph
  %.0113.i = phi ptr [ null, %.lr.ph ], [ %i.be, %.lr.ph.i ]
  %.0.i = phi ptr [ null, %.lr.ph ], [ %i.bi, %.lr.ph.i ] ; 12 uses
  %i.bn = extractelement <2 x i32> %i.z, i64 0    ; 3 uses
  %i.bo = extractelement <2 x i32> %i.z, i64 1    ; 3 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo               ; 2 uses
  br i1 %i.bp, label %.lr.ph119.i, label %._crit_edge.i

.lr.ph119.i:                                      ; preds = %.loopexit116.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !187
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !188
  %i.bv = sitofp i32 %i.ad to float
  %i.bw = sitofp i32 %i.af to float
  %i.bx = sitofp i32 %i.ah to float
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 384
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !133
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aa, i64 408
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !133
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 312
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !181
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 336
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !181
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aa, i64 360
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !181
  %i.ci = sext i32 %i.bn to i64
  %wide.trip.count.i = sext i32 %i.bo to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph119.i
  %indvars.iv132.i = phi i64 [ %i.ci, %.lr.ph119.i ], [ %indvars.iv.next133.i, %bb.e ] ; 5 uses
  %i.cj = load i64, ptr %i.bq, align 8
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr inbounds [12 x i8], ptr %i.ck, i64 %indvars.iv132.i ; 3 uses
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %indvars.iv132.i ; 3 uses
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %indvars.iv132.i ; 3 uses
  %i.co = load float, ptr %i.cl, align 4, !tbaa !134
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !134 ; 2 uses
  %i.cr = fmul float %i.al, %i.cq
  %i.cs = call float @llvm.fmuladd.f32(float %i.co, float %i.aj, float %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !134 ; 3 uses
  %i.cv = call float @llvm.fmuladd.f32(float %i.cu, float %i.ap, float %i.cs)
  %i.cw = fadd float %i.cv, 2.000000e+00
  %i.cx = fmul float %i.cw, %i.bv                 ; 2 uses
  %i.cy = fmul float %i.ar, %i.cu
  %i.cz = call float @llvm.fmuladd.f32(float %i.cq, float %i.an, float %i.cy)
  %i.da = fadd float %i.cz, 2.000000e+00
  %i.db = fmul float %i.da, %i.bw                 ; 2 uses
  %i.dc = call float @llvm.fmuladd.f32(float %i.cu, float %i.at, float 2.000000e+00)
  %i.dd = fmul float %i.dc, %i.bx                 ; 2 uses
  %i.de = fptosi float %i.cx to i32               ; 2 uses
  %i.df = fptosi float %i.db to i32               ; 2 uses
  %i.dg = fptosi float %i.dd to i32               ; 2 uses
  %i.dh = sitofp i32 %i.de to float
  %i.di = fsub float %i.cx, %i.dh
  %i.dj = sext i32 %i.de to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !134
  %i.dm = fadd float %i.dl, %i.di
  store float %i.dm, ptr %i.cn, align 4, !tbaa !134
  %i.dn = sitofp i32 %i.df to float
  %i.do = fsub float %i.db, %i.dn
  %i.dp = sext i32 %i.df to i64                   ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !134
  %i.ds = fadd float %i.dr, %i.do
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store float %i.ds, ptr %i.dt, align 4, !tbaa !134
  %i.du = sitofp i32 %i.dg to float
  %i.dv = fsub float %i.dd, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store float %i.dv, ptr %i.dw, align 4, !tbaa !134
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dj
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !105 ; 2 uses
  store i32 %i.dy, ptr %i.cm, align 4, !tbaa !105
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dp
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !105 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !105
  %i.ec = sext i32 %i.dg to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !105 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !105
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.eg = sext i32 %i.dy to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !105
  %i.ej = sext i32 %i.ea to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !105
  %i.em = add nsw i32 %i.el, %i.ei
  %i.en = sext i32 %i.ee to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !105
  %i.eq = add nsw i32 %i.em, %i.ep                ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %.0113.i, i64 %indvars.iv132.i
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !105
  %i.es = sext i32 %i.eq to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !105
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !105
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next133.i = add nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !255

._crit_edge.i:                                    ; preds = %bb.e, %.loopexit116.i
  br i1 %i.bc, label %.preheader.i, label %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.ew = load i32, ptr %i.ba, align 8, !tbaa !182 ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 1
  br i1 %i.ex, label %.lr.ph121.i.preheader, label %.preheader.._crit_edge122_crit_edge.i

.lr.ph121.i.preheader:                            ; preds = %.preheader.i
  %load_initial = load i32, ptr %.0.i, align 4
  br label %.lr.ph121.i

.preheader.._crit_edge122_crit_edge.i:            ; preds = %.preheader.i
  %.pre.i = sext i32 %i.ew to i64
  br label %._crit_edge122.i

.lr.ph121.i:                                      ; preds = %.lr.ph121.i.preheader, %.lr.ph121.i
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph121.i.preheader ], [ %i.fa, %.lr.ph121.i ]
  %indvars.iv135.i = phi i64 [ 1, %.lr.ph121.i.preheader ], [ %indvars.iv.next136.i, %.lr.ph121.i ] ; 2 uses
  %i.ey = getelementptr [4 x i8], ptr %.0.i, i64 %indvars.iv135.i ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !105
  %i.fa = add nsw i32 %i.ez, %store_forwarded     ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !105
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %i.fb = load i32, ptr %i.ba, align 8, !tbaa !182
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = icmp slt i64 %indvars.iv.next136.i, %i.fc
  br i1 %i.fd, label %.lr.ph121.i, label %._crit_edge122.i, !llvm.loop !256

._crit_edge122.i:                                 ; preds = %.lr.ph121.i, %.preheader.._crit_edge122_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.preheader.._crit_edge122_crit_edge.i ], [ %i.fc, %.lr.ph121.i ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !184
  %i.fg = getelementptr inbounds nuw [56 x i8], ptr %i.ff, i64 %indvars.iv
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %.0.i, i64 %.pre-phi.i
  %i.fj = getelementptr i8, ptr %i.fi, i64 -4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !105
  %i.fl = sext i32 %i.fk to i64
  invoke void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, i64 noundef %i.fl)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %._crit_edge122.i
  %i.fm = load i32, ptr %i.ba, align 8, !tbaa !182 ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 1
  br i1 %i.fn, label %.lr.ph125.preheader.i, label %._crit_edge126.i

.lr.ph125.preheader.i:                            ; preds = %.noexc
  %scevgep24 = getelementptr i8, ptr %.0.i, i64 4
  %6 = zext nneg i32 %i.fm to i64
  %i.fo = shl nuw nsw i64 %6, 2
  %i.fp = add nsw i64 %i.fo, -4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep24, ptr nonnull align 4 %.0.i, i64 %i.fp, i1 false), !tbaa !105
  br label %._crit_edge126.i

._crit_edge126.i:                                 ; preds = %.lr.ph125.preheader.i, %.noexc
  store i32 0, ptr %.0.i, align 4, !tbaa !105
  br i1 %i.bp, label %.lr.ph129.i, label %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit

.lr.ph129.i:                                      ; preds = %._crit_edge126.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !183 ; 5 uses
  %i.fs = load ptr, ptr %i.fh, align 8, !tbaa !183 ; 5 uses
  %i.ft = sext i32 %i.bn to i64                   ; 4 uses
  %wide.trip.count145.i = sext i32 %i.bo to i64   ; 3 uses
  %i.fu = sub nsw i64 %wide.trip.count145.i, %i.ft
  %xtraiter = and i64 %i.fu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph129.i, %.prol.preheader
  %indvars.iv142.i.prol = phi i64 [ %indvars.iv.next143.i.prol, %.prol.preheader ], [ %i.ft, %.lr.ph129.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph129.i ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv142.i.prol
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !105
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !105 ; 2 uses
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !105
  %i.gb = sext i32 %i.fz to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gb
  %i.gd = trunc nsw i64 %indvars.iv142.i.prol to i32
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !105
  %indvars.iv.next143.i.prol = add nsw i64 %indvars.iv142.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !257

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph129.i
  %indvars.iv142.i.unr = phi i64 [ %i.ft, %.lr.ph129.i ], [ %indvars.iv.next143.i.prol, %.prol.preheader ]
  %i.ge = sub nsw i64 %i.ft, %wide.trip.count145.i
  %i.gf = icmp ugt i64 %i.ge, -4
  br i1 %i.gf, label %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit, label %.lr.ph129.i.new

.lr.ph129.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph129.i.new
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.3, %.lr.ph129.i.new ], [ %indvars.iv142.i.unr, %.prol.loopexit ] ; 6 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv142.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !105
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !105 ; 2 uses
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !105
  %i.gm = sext i32 %i.gk to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gm
  %i.go = trunc nsw i64 %indvars.iv142.i to i32
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !105
  %indvars.iv.next143.i = add nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.next143.i
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !105
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.gr ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !105 ; 2 uses
  %i.gu = add nsw i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !105
  %i.gv = sext i32 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gv
  %i.gx = trunc nsw i64 %indvars.iv.next143.i to i32
  store i32 %i.gx, ptr %i.gw, align 4, !tbaa !105
  %indvars.iv.next143.i.1 = add nsw i64 %indvars.iv142.i, 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.next143.i.1
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !105
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !105 ; 2 uses
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !105
  %i.he = sext i32 %i.hc to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.he
  %i.hg = trunc nsw i64 %indvars.iv.next143.i.1 to i32
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !105
  %indvars.iv.next143.i.2 = add nsw i64 %indvars.iv142.i, 3 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.next143.i.2
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !105
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.hj ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !105 ; 2 uses
  %i.hm = add nsw i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !105
  %i.hn = sext i32 %i.hl to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.hn
  %i.hp = trunc nsw i64 %indvars.iv.next143.i.2 to i32
  store i32 %i.hp, ptr %i.ho, align 4, !tbaa !105
  %indvars.iv.next143.i.3 = add nsw i64 %indvars.iv142.i, 4 ; 2 uses
  %exitcond146.not.i.3 = icmp eq i64 %indvars.iv.next143.i.3, %wide.trip.count145.i
  br i1 %exitcond146.not.i.3, label %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit, label %.lr.ph129.i.new, !llvm.loop !258

_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit: ; preds = %.prol.loopexit, %.lr.ph129.i.new, %._crit_edge.i, %._crit_edge126.i
  %i.hq = load i32, ptr %i.b, align 4, !tbaa !105
  %i.hr = sext i32 %i.hq to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hr
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

bb.f:                                             ; preds = %._crit_edge122.i
  %i.hs = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0      ; 2 uses
  %i.hu = extractvalue { ptr, i32 } %i.hs, 1
  %i.hv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #3
  %i.hw = icmp eq i32 %i.hu, %i.hv
  br i1 %i.hw, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.hx = call ptr @__cxa_begin_catch(ptr %i.ht) #3
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.hx) #16
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

._crit_edge:                                      ; preds = %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.j:                                             ; preds = %bb.g
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  call void @__clang_call_terminate(ptr %i.hz) #17
  unreachable

bb.k:                                             ; preds = %bb.f
  call void @__clang_call_terminate(ptr %i.ht) #17
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #3 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !190 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %6, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 3 uses
  %i.c = alloca [3 x i32], align 4                ; 5 uses
  %i.d = alloca [12 x float], align 16            ; 85 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = load i32, ptr %2, align 4, !tbaa !105    ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  store i32 0, ptr %i.e, align 4, !tbaa !105
end_hunk_0
