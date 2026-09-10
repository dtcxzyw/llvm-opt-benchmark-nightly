Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 496
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !134
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 504
  %i.al = load float, ptr %i.ak, align 8, !tbaa !134
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 508
  %i.an = load float, ptr %i.am, align 4, !tbaa !134
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 512
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !134
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !181
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !181
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !181
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 312 ; 5 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !182
  %i.ay = icmp sgt i32 %i.ax, 1                   ; 3 uses
  br i1 %i.ay, label %.lr.ph.preheader.i, label %.loopexit116.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !183
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !184
  %i.bd = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !186 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i
  store i32 0, ptr %i.bf, align 4, !tbaa !105
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = load i32, ptr %i.aw, align 8, !tbaa !182
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next.i, %i.bh
  br i1 %i.bi, label %.lr.ph.i, label %.loopexit116.i, !llvm.loop !254

.loopexit116.i:                                   ; preds = %.lr.ph.i, %.lr.ph
  %.0113.i = phi ptr [ null, %.lr.ph ], [ %i.ba, %.lr.ph.i ]
  %.0.i = phi ptr [ null, %.lr.ph ], [ %i.be, %.lr.ph.i ] ; 12 uses
  %i.bj = icmp slt i32 %i.s, %i.v                 ; 2 uses
  br i1 %i.bj, label %.lr.ph119.i, label %._crit_edge.i

.lr.ph119.i:                                      ; preds = %.loopexit116.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !187
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !188
  %i.bp = sitofp i32 %i.z to float
  %i.bq = sitofp i32 %i.ab to float
  %i.br = sitofp i32 %i.ad to float
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 384
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !133
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 408
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !133
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 312
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !181
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 336
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !181
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 360
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !181
  %i.cc = sext i32 %i.s to i64
  %wide.trip.count.i = sext i32 %i.v to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph119.i
  %indvars.iv132.i = phi i64 [ %i.cc, %.lr.ph119.i ], [ %indvars.iv.next133.i, %bb.e ] ; 5 uses
  %i.cd = load i64, ptr %i.bk, align 8
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds [12 x i8], ptr %i.ce, i64 %indvars.iv132.i ; 3 uses
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %indvars.iv132.i ; 3 uses
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %indvars.iv132.i ; 3 uses
  %i.ci = load float, ptr %i.cf, align 4, !tbaa !134
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !134 ; 2 uses
  %i.cl = fmul float %i.ah, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.ci, float %i.af, float %i.cl)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.co = load float, ptr %i.cn, align 4, !tbaa !134 ; 3 uses
  %i.cp = call float @llvm.fmuladd.f32(float %i.co, float %i.al, float %i.cm)
  %i.cq = fadd float %i.cp, 2.000000e+00
  %i.cr = fmul float %i.cq, %i.bp                 ; 2 uses
  %i.cs = fmul float %i.an, %i.co
  %i.ct = call float @llvm.fmuladd.f32(float %i.ck, float %i.aj, float %i.cs)
  %i.cu = fadd float %i.ct, 2.000000e+00
  %i.cv = fmul float %i.cu, %i.bq                 ; 2 uses
  %i.cw = call float @llvm.fmuladd.f32(float %i.co, float %i.ap, float 2.000000e+00)
  %i.cx = fmul float %i.cw, %i.br                 ; 2 uses
  %i.cy = fptosi float %i.cr to i32               ; 2 uses
  %i.cz = fptosi float %i.cv to i32               ; 2 uses
  %i.da = fptosi float %i.cx to i32               ; 2 uses
  %i.db = sitofp i32 %i.cy to float
  %i.dc = fsub float %i.cr, %i.db
  %i.dd = sext i32 %i.cy to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !134
  %i.dg = fadd float %i.df, %i.dc
  store float %i.dg, ptr %i.ch, align 4, !tbaa !134
  %i.dh = sitofp i32 %i.cz to float
  %i.di = fsub float %i.cv, %i.dh
  %i.dj = sext i32 %i.cz to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !134
  %i.dm = fadd float %i.dl, %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store float %i.dm, ptr %i.dn, align 4, !tbaa !134
  %i.do = sitofp i32 %i.da to float
  %i.dp = fsub float %i.cx, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store float %i.dp, ptr %i.dq, align 4, !tbaa !134
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dd
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !105 ; 2 uses
  store i32 %i.ds, ptr %i.cg, align 4, !tbaa !105
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dj
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !105 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !105
  %i.dw = sext i32 %i.da to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !105 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !105
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ea = sext i32 %i.ds to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !105
  %i.ed = sext i32 %i.du to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !105
  %i.eg = add nsw i32 %i.ef, %i.ec
  %i.eh = sext i32 %i.dy to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !105
  %i.ek = add nsw i32 %i.eg, %i.ej                ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %.0113.i, i64 %indvars.iv132.i
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !105
  %i.em = sext i32 %i.ek to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !105
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !105
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next133.i = add nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !255

._crit_edge.i:                                    ; preds = %bb.e, %.loopexit116.i
  br i1 %i.ay, label %.preheader.i, label %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.eq = load i32, ptr %i.aw, align 8, !tbaa !182 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 1
  br i1 %i.er, label %.lr.ph121.i.preheader, label %.preheader.._crit_edge122_crit_edge.i

.lr.ph121.i.preheader:                            ; preds = %.preheader.i
  %load_initial = load i32, ptr %.0.i, align 4
  br label %.lr.ph121.i

.preheader.._crit_edge122_crit_edge.i:            ; preds = %.preheader.i
  %.pre.i = sext i32 %i.eq to i64
  br label %._crit_edge122.i

.lr.ph121.i:                                      ; preds = %.lr.ph121.i.preheader, %.lr.ph121.i
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph121.i.preheader ], [ %i.eu, %.lr.ph121.i ]
  %indvars.iv135.i = phi i64 [ 1, %.lr.ph121.i.preheader ], [ %indvars.iv.next136.i, %.lr.ph121.i ] ; 2 uses
  %i.es = getelementptr [4 x i8], ptr %.0.i, i64 %indvars.iv135.i ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !105
  %i.eu = add nsw i32 %i.et, %store_forwarded     ; 2 uses
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !105
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %i.ev = load i32, ptr %i.aw, align 8, !tbaa !182
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %i.ex = icmp slt i64 %indvars.iv.next136.i, %i.ew
  br i1 %i.ex, label %.lr.ph121.i, label %._crit_edge122.i, !llvm.loop !256

._crit_edge122.i:                                 ; preds = %.lr.ph121.i, %.preheader.._crit_edge122_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.preheader.._crit_edge122_crit_edge.i ], [ %i.ew, %.lr.ph121.i ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !184
  %i.fa = getelementptr inbounds nuw [56 x i8], ptr %i.ez, i64 %indvars.iv
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 2 uses
  %i.fc = getelementptr [4 x i8], ptr %.0.i, i64 %.pre-phi.i
  %i.fd = getelementptr i8, ptr %i.fc, i64 -4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !105
  %i.ff = sext i32 %i.fe to i64
  invoke void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i64 noundef %i.ff)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %._crit_edge122.i
  %i.fg = load i32, ptr %i.aw, align 8, !tbaa !182 ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 1
  br i1 %i.fh, label %.lr.ph125.preheader.i, label %._crit_edge126.i

.lr.ph125.preheader.i:                            ; preds = %.noexc
  %6 = zext nneg i32 %i.fg to i64
  %scevgep = getelementptr i8, ptr %.0.i, i64 4
  %i.fi = shl nuw nsw i64 %6, 2
  %i.fj = add nsw i64 %i.fi, -4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep, ptr nonnull align 4 %.0.i, i64 %i.fj, i1 false), !tbaa !105
  br label %._crit_edge126.i

._crit_edge126.i:                                 ; preds = %.lr.ph125.preheader.i, %.noexc
  store i32 0, ptr %.0.i, align 4, !tbaa !105
  br i1 %i.bj, label %.lr.ph129.i, label %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit

.lr.ph129.i:                                      ; preds = %._crit_edge126.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !183 ; 5 uses
  %i.fm = load ptr, ptr %i.fb, align 8, !tbaa !183 ; 5 uses
  %i.fn = sext i32 %i.s to i64                    ; 4 uses
  %wide.trip.count145.i = sext i32 %i.v to i64    ; 3 uses
  %i.fo = sub nsw i64 %wide.trip.count145.i, %i.fn
  %xtraiter = and i64 %i.fo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph129.i, %.prol.preheader
  %indvars.iv142.i.prol = phi i64 [ %indvars.iv.next143.i.prol, %.prol.preheader ], [ %i.fn, %.lr.ph129.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph129.i ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv142.i.prol
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !105
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.fr ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !105 ; 2 uses
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !105
  %i.fv = sext i32 %i.ft to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fv
  %i.fx = trunc nsw i64 %indvars.iv142.i.prol to i32
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !105
  %indvars.iv.next143.i.prol = add nsw i64 %indvars.iv142.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !257

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph129.i
  %indvars.iv142.i.unr = phi i64 [ %i.fn, %.lr.ph129.i ], [ %indvars.iv.next143.i.prol, %.prol.preheader ]
  %i.fy = sub nsw i64 %i.fn, %wide.trip.count145.i
  %i.fz = icmp ugt i64 %i.fy, -4
  br i1 %i.fz, label %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit, label %.lr.ph129.i.new

.lr.ph129.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph129.i.new
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.3, %.lr.ph129.i.new ], [ %indvars.iv142.i.unr, %.prol.loopexit ] ; 6 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv142.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !105
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !105 ; 2 uses
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !105
  %i.gg = sext i32 %i.ge to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.gg
  %i.gi = trunc nsw i64 %indvars.iv142.i to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !105
  %indvars.iv.next143.i = add nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next143.i
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !105
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !105 ; 2 uses
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !105
  %i.gp = sext i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.gp
  %i.gr = trunc nsw i64 %indvars.iv.next143.i to i32
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !105
  %indvars.iv.next143.i.1 = add nsw i64 %indvars.iv142.i, 2 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next143.i.1
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !105
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !105 ; 2 uses
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !105
  %i.gy = sext i32 %i.gw to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.gy
  %i.ha = trunc nsw i64 %indvars.iv.next143.i.1 to i32
  store i32 %i.ha, ptr %i.gz, align 4, !tbaa !105
  %indvars.iv.next143.i.2 = add nsw i64 %indvars.iv142.i, 3 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next143.i.2
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !105
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !105 ; 2 uses
  %i.hg = add nsw i32 %i.hf, 1
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !105
  %i.hh = sext i32 %i.hf to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.hh
  %i.hj = trunc nsw i64 %indvars.iv.next143.i.2 to i32
  store i32 %i.hj, ptr %i.hi, align 4, !tbaa !105
  %indvars.iv.next143.i.3 = add nsw i64 %indvars.iv142.i, 4 ; 2 uses
  %exitcond146.not.i.3 = icmp eq i64 %indvars.iv.next143.i.3, %wide.trip.count145.i
  br i1 %exitcond146.not.i.3, label %_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit, label %.lr.ph129.i.new, !llvm.loop !258

_ZL22calc_interpolation_idxPK9gmx_pme_tP11PmeAtomCommiRK10pmegrids_tii.exit: ; preds = %.prol.loopexit, %.lr.ph129.i.new, %._crit_edge.i, %._crit_edge126.i
  %i.hk = load i32, ptr %i.b, align 4, !tbaa !105
  %i.hl = sext i32 %i.hk to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hl
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

bb.f:                                             ; preds = %._crit_edge122.i
  %i.hm = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0      ; 2 uses
  %i.ho = extractvalue { ptr, i32 } %i.hm, 1
  %i.hp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #3
  %i.hq = icmp eq i32 %i.ho, %i.hp
  br i1 %i.hq, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.hr = call ptr @__cxa_begin_catch(ptr %i.hn) #3
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.hr) #16
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
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #17
  unreachable

bb.k:                                             ; preds = %bb.f
  call void @__clang_call_terminate(ptr %i.hn) #17
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
  %i.d = alloca [12 x float], align 16            ; 94 uses
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
