Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aes?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@av_aes_init:bb.a
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = load i8, ptr %i.a, align 16, !tbaa !13
  %i.ao = xor i8 %i.an, %i.am                     ; 2 uses
  store i8 %i.ao, ptr %i.a, align 16, !tbaa !13
  %i.ap = load i8, ptr %i.r, align 2, !tbaa !13
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = load i8, ptr %i.t, align 1, !tbaa !13
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = load i8, ptr %i.n, align 4, !tbaa !13
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr @rcon, i64 %indvars.iv173
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bd = load <2 x i8>, ptr %i.s, align 1, !tbaa !13
  %i.be = insertelement <2 x i8> poison, i8 %i.as, i64 0
  %i.bf = insertelement <2 x i8> %i.be, i8 %i.aw, i64 1
  %i.bg = xor <2 x i8> %i.bd, %i.bf               ; 3 uses
  %i.bh = xor i8 %i.ao, %i.bb                     ; 2 uses
  %i.bi = extractelement <2 x i8> %i.bg, i64 0
  store i8 %i.bi, ptr %i.s, align 1, !tbaa !13
  %i.bj = extractelement <2 x i8> %i.bg, i64 1
  store i8 %i.bj, ptr %i.u, align 2, !tbaa !13
  store i8 %i.bh, ptr %i.a, align 16, !tbaa !13
  %i.bk = load <4 x i8>, ptr %i.v, align 1, !tbaa !13
  %i.bl = insertelement <4 x i8> poison, i8 %i.bc, i64 0
  %i.bm = insertelement <4 x i8> %i.bl, i8 %i.bh, i64 1
  %i.bn = shufflevector <2 x i8> %i.bg, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x i8> %i.bm, <4 x i8> %i.bn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bp = xor <4 x i8> %i.bk, %i.bo               ; 2 uses
  store <4 x i8> %i.bp, ptr %i.v, align 1, !tbaa !13
  %i.bq = load <16 x i8>, ptr %i.ab, align 2
  %i.br = load <2 x i8>, ptr %i.aa, align 4, !tbaa !13
  %i.bs = load <4 x i8>, ptr %i.z, align 1, !tbaa !13
  %i.bt = shufflevector <2 x i8> %i.br, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bu = shufflevector <4 x i8> %i.bp, <4 x i8> %i.bt, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.bv = shufflevector <16 x i8> %i.bq, <16 x i8> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.bw = shufflevector <4 x i8> %i.bu, <4 x i8> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bx = xor <4 x i8> %i.bs, %i.bw               ; 2 uses
  store <4 x i8> %i.bx, ptr %i.z, align 1, !tbaa !13
  %i.by = load <4 x i8>, ptr %i.ac, align 1, !tbaa !13
  %i.bz = xor <4 x i8> %i.by, %i.bx               ; 4 uses
  store <4 x i8> %i.bz, ptr %i.ac, align 1, !tbaa !13
  %i.ca = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.cb = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.cc = xor i8 %i.cb, %i.ca                     ; 2 uses
  store i8 %i.cc, ptr %i.ae, align 1, !tbaa !13
  %i.cd = extractelement <4 x i8> %i.bz, i64 1
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = extractelement <4 x i8> %i.bz, i64 2
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = extractelement <4 x i8> %i.bz, i64 3
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = zext i8 %i.cc to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %i.cs = load <4 x i8>, ptr %i.o, align 16, !tbaa !13
  %i.ct = insertelement <4 x i8> poison, i8 %i.cg, i64 0
  %i.cu = insertelement <4 x i8> %i.ct, i8 %i.ck, i64 1
  %i.cv = insertelement <4 x i8> %i.cu, i8 %i.co, i64 2
  %i.cw = insertelement <4 x i8> %i.cv, i8 %i.cr, i64 3
  %i.cx = xor <4 x i8> %i.cs, %i.cw
  store <4 x i8> %i.cx, ptr %i.o, align 16, !tbaa !13
  %i.cy = load <4 x i8>, ptr %i.ag, align 16, !tbaa !13
  %i.cz = load <4 x i8>, ptr %i.af, align 4, !tbaa !13
  %i.da = xor <4 x i8> %i.cz, %i.cy               ; 2 uses
  store <4 x i8> %i.da, ptr %i.af, align 4, !tbaa !13
  %i.db = load <4 x i8>, ptr %i.ah, align 8, !tbaa !13
  %i.dc = xor <4 x i8> %i.db, %i.da               ; 2 uses
  store <4 x i8> %i.dc, ptr %i.ah, align 8, !tbaa !13
  %i.dd = load <4 x i8>, ptr %i.ai, align 4, !tbaa !13
  %i.de = xor <4 x i8> %i.dd, %i.dc
  store <4 x i8> %i.de, ptr %i.ai, align 4, !tbaa !13
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv175
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr nonnull align 16 %i.a, i64 %i.i, i1 false)
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, %i.i ; 2 uses
  %i.dg = icmp samesign ult i64 %indvars.iv.next176, %i.p
  br i1 %i.dg, label %.peel.next163, label %._crit_edge91, !llvm.loop !16

.preheader84.us:                                  ; preds = %.preheader84.us.preheader, %._crit_edge.split.us.us
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %._crit_edge.split.us.us ], [ %i.i, %.preheader84.us.preheader ] ; 2 uses
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %._crit_edge.split.us.us ], [ 0, %.preheader84.us.preheader ] ; 2 uses
  %i.dh = load i8, ptr %i.q, align 1, !tbaa !13
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13
  %i.dl = load i8, ptr %i.a, align 16, !tbaa !13
  %i.dm = xor i8 %i.dl, %i.dk                     ; 2 uses
  store i8 %i.dm, ptr %i.a, align 16, !tbaa !13
  %i.dn = load i8, ptr %i.r, align 2, !tbaa !13
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13
  %i.dr = load i8, ptr %i.s, align 1, !tbaa !13
  %i.ds = xor i8 %i.dr, %i.dq
  store i8 %i.ds, ptr %i.s, align 1, !tbaa !13
  %i.dt = load i8, ptr %i.t, align 1, !tbaa !13
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !13
  %i.dx = load i8, ptr %i.u, align 2, !tbaa !13
  %i.dy = xor i8 %i.dx, %i.dw
  store i8 %i.dy, ptr %i.u, align 2, !tbaa !13
  %i.dz = load i8, ptr %i.n, align 4, !tbaa !13
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !13
  %i.ed = load i8, ptr %i.v, align 1, !tbaa !13
  %i.ee = xor i8 %i.ed, %i.ec
  store i8 %i.ee, ptr %i.v, align 1, !tbaa !13
  %i.ef = getelementptr inbounds nuw i8, ptr @rcon, i64 %indvars.iv121
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !13
  %i.eh = xor i8 %i.dm, %i.eg
  store i8 %i.eh, ptr %i.a, align 16, !tbaa !13
  br i1 %i.y, label %.preheader82.us.us.epil.preheader, label %.preheader82.us.us

.preheader82.us.us:                               ; preds = %.preheader84.us, %.preheader82.us.us
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.3, %.preheader82.us.us ], [ 1, %.preheader84.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader82.us.us ], [ 0, %.preheader84.us ]
  %i.ei = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118 ; 3 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 -4
  %i.ek = load <4 x i8>, ptr %i.ej, align 4, !tbaa !13
  %i.el = load <4 x i8>, ptr %i.ei, align 4, !tbaa !13
  %i.em = xor <4 x i8> %i.el, %i.ek               ; 2 uses
  store <4 x i8> %i.em, ptr %i.ei, align 4, !tbaa !13
  %i.en = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118
  %i.eo = getelementptr i8, ptr %i.en, i64 4      ; 2 uses
  %i.ep = load <4 x i8>, ptr %i.eo, align 4, !tbaa !13
  %i.eq = xor <4 x i8> %i.ep, %i.em
  store <4 x i8> %i.eq, ptr %i.eo, align 4, !tbaa !13
  %i.er = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118 ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 8      ; 2 uses
  %i.et = getelementptr i8, ptr %i.er, i64 4
  %i.eu = load <4 x i8>, ptr %i.et, align 4, !tbaa !13
  %i.ev = load <4 x i8>, ptr %i.es, align 4, !tbaa !13
  %i.ew = xor <4 x i8> %i.ev, %i.eu
  store <4 x i8> %i.ew, ptr %i.es, align 4, !tbaa !13
  %i.ex = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118 ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 12     ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ex, i64 8
  %i.fa = load <4 x i8>, ptr %i.ez, align 4, !tbaa !13
  %i.fb = load <4 x i8>, ptr %i.ey, align 4, !tbaa !13
  %i.fc = xor <4 x i8> %i.fb, %i.fa
  store <4 x i8> %i.fc, ptr %i.ey, align 4, !tbaa !13
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.split.us.us.unr-lcssa, label %.preheader82.us.us, !llvm.loop !17

._crit_edge.split.us.us.unr-lcssa:                ; preds = %.preheader82.us.us
  br i1 %lcmp.mod.not, label %._crit_edge.split.us.us, label %.preheader82.us.us.epil.preheader

.preheader82.us.us.epil.preheader:                ; preds = %._crit_edge.split.us.us.unr-lcssa, %.preheader84.us
  %indvars.iv118.epil.init = phi i64 [ 1, %.preheader84.us ], [ %indvars.iv.next119.3, %._crit_edge.split.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod202)
  br label %.preheader82.us.us.epil

.preheader82.us.us.epil:                          ; preds = %.preheader82.us.us.epil, %.preheader82.us.us.epil.preheader
  %indvars.iv118.epil = phi i64 [ %indvars.iv.next119.epil, %.preheader82.us.us.epil ], [ %indvars.iv118.epil.init, %.preheader82.us.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader82.us.us.epil ], [ 0, %.preheader82.us.us.epil.preheader ]
  %i.fd = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118.epil ; 3 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 -4
  %i.ff = load <4 x i8>, ptr %i.fe, align 4, !tbaa !13
  %i.fg = load <4 x i8>, ptr %i.fd, align 4, !tbaa !13
  %i.fh = xor <4 x i8> %i.fg, %i.ff
  store <4 x i8> %i.fh, ptr %i.fd, align 4, !tbaa !13
  %indvars.iv.next119.epil = add nuw nsw i64 %indvars.iv118.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.us.us, label %.preheader82.us.us.epil, !llvm.loop !18

._crit_edge.split.us.us:                          ; preds = %.preheader82.us.us.epil, %._crit_edge.split.us.us.unr-lcssa
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv123
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fi, ptr nonnull align 16 %i.a, i64 %i.i, i1 false)
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, %i.i ; 2 uses
  %i.fj = icmp samesign ult i64 %indvars.iv.next124, %i.p
  br i1 %i.fj, label %.preheader84.us, label %._crit_edge91, !llvm.loop !16

._crit_edge91:                                    ; preds = %._crit_edge.split.us.us, %.peel.next163
  br i1 %.not, label %.lr.ph101.preheader, label %.preheader78

.preheader78:                                     ; preds = %._crit_edge91
  %i.fk = icmp sgt i32 %i.b, -5
  br i1 %i.fk, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader78
  %wide.trip.count183 = zext i32 %i.c to i64
  br label %.lr.ph

.lr.ph101.preheader:                              ; preds = %._crit_edge91
  %i.fl = lshr i32 %i.j, 1
  %i.fm = sext i32 %i.c to i64
  %wide.trip.count188 = zext nneg i32 %i.fl to i64
  br label %.lr.ph101

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv180 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next181, %.lr.ph ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv180 ; 17 uses
  %.sroa.39.32.copyload = load i8, ptr %i.fn, align 16
  %.sroa.41.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %.sroa.41.32.copyload = load i8, ptr %.sroa.41.32..sroa_idx, align 1
  %.sroa.42.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %.sroa.42.32.copyload = load i8, ptr %.sroa.42.32..sroa_idx, align 2
  %.sroa.43.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3
  %.sroa.43.32.copyload = load i8, ptr %.sroa.43.32..sroa_idx, align 1
  %.sroa.44.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 2 uses
  %.sroa.44.32.copyload = load i8, ptr %.sroa.44.32..sroa_idx, align 4
  %.sroa.45.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5
  %.sroa.45.32.copyload = load i8, ptr %.sroa.45.32..sroa_idx, align 1
  %.sroa.46.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6
  %.sroa.46.32.copyload = load i8, ptr %.sroa.46.32..sroa_idx, align 2
  %.sroa.47.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 7
  %.sroa.47.32.copyload = load i8, ptr %.sroa.47.32..sroa_idx, align 1
  %.sroa.48.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %.sroa.48.32.copyload = load i8, ptr %.sroa.48.32..sroa_idx, align 8
  %.sroa.49.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 9
  %.sroa.49.32.copyload = load i8, ptr %.sroa.49.32..sroa_idx, align 1
  %.sroa.50.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 10
  %.sroa.50.32.copyload = load i8, ptr %.sroa.50.32..sroa_idx, align 2
  %.sroa.51.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 11
  %.sroa.51.32.copyload = load i8, ptr %.sroa.51.32..sroa_idx, align 1
  %.sroa.52.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 12 ; 2 uses
  %.sroa.52.32.copyload = load i8, ptr %.sroa.52.32..sroa_idx, align 4
  %.sroa.53.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 13
  %.sroa.53.32.copyload = load i8, ptr %.sroa.53.32..sroa_idx, align 1
  %.sroa.54.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 14
  %.sroa.54.32.copyload = load i8, ptr %.sroa.54.32..sroa_idx, align 2
  %.sroa.55.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 15
  %.sroa.55.32.copyload = load i8, ptr %.sroa.55.32..sroa_idx, align 1, !tbaa !13
  %i.fo = zext i8 %.sroa.39.32.copyload to i64
  %i.fp = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !13
  %i.fr = zext i8 %.sroa.44.32.copyload to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !13
  %i.fu = zext i8 %.sroa.48.32.copyload to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !13
  %i.fx = zext i8 %.sroa.52.32.copyload to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !13
  %i.ga = zext i8 %.sroa.47.32.copyload to i64
  %i.gb = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !13
  %i.gd = zext i8 %.sroa.51.32.copyload to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !13
  %i.gg = zext i8 %.sroa.55.32.copyload to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !13
  %i.gj = zext i8 %.sroa.43.32.copyload to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !13
  %i.gm = zext i8 %.sroa.50.32.copyload to i64
  %i.gn = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !13
  %i.gp = zext i8 %.sroa.42.32.copyload to i64
  %i.gq = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !13
  %i.gs = zext i8 %.sroa.54.32.copyload to i64
  %i.gt = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !13
  %i.gv = zext i8 %.sroa.46.32.copyload to i64
  %i.gw = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !13
  %i.gy = zext i8 %.sroa.53.32.copyload to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !13
  %i.hb = zext i8 %.sroa.49.32.copyload to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !13
  %i.he = zext i8 %.sroa.45.32.copyload to i64
  %i.hf = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !13
  %i.hh = zext i8 %.sroa.41.32.copyload to i64
  %i.hi = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !13
  %i.hk = zext i8 %i.fq to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @dec_multbl, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !15
  %i.hn = zext i8 %i.hj to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 1024), i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !15
  %i.hq = xor i32 %i.hp, %i.hm
  %i.hr = zext i8 %i.gr to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 2048), i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !15
  %i.hu = xor i32 %i.hq, %i.ht
  %i.hv = zext i8 %i.gl to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 3072), i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !15
  %i.hy = xor i32 %i.hu, %i.hx
  %i.hz = zext i8 %i.ft to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr @dec_multbl, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !15
  %i.ic = zext i8 %i.hg to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 1024), i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !15
  %i.if = xor i32 %i.ie, %i.ib
  %i.ig = zext i8 %i.gx to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 2048), i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !15
  %i.ij = xor i32 %i.if, %i.ii
  %i.ik = zext i8 %i.gc to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 3072), i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !15
  %i.in = xor i32 %i.ij, %i.im
  %i.io = zext i8 %i.fw to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr @dec_multbl, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !15
  %i.ir = zext i8 %i.hd to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 1024), i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !15
  %i.iu = xor i32 %i.it, %i.iq
  %i.iv = zext i8 %i.go to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 2048), i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !15
  %i.iy = xor i32 %i.iu, %i.ix
  %i.iz = zext i8 %i.gf to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 3072), i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !15
  %i.jc = xor i32 %i.iy, %i.jb
  %i.jd = zext i8 %i.fz to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr @dec_multbl, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !15
  %i.jg = zext i8 %i.ha to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 1024), i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !15
  %i.jj = xor i32 %i.ji, %i.jf
  %i.jk = zext i8 %i.gu to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 2048), i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !15
  %i.jn = xor i32 %i.jj, %i.jm
  %i.jo = zext i8 %i.gi to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 3072), i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !15
  %i.jr = xor i32 %i.jn, %i.jq
  store i32 %i.hy, ptr %i.fn, align 16
  store i32 %i.in, ptr %.sroa.44.32..sroa_idx, align 4
  store i32 %i.jc, ptr %.sroa.48.32..sroa_idx, align 8
  store i32 %i.jr, ptr %.sroa.52.32..sroa_idx, align 4, !tbaa !13
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %.loopexit, label %.lr.ph, !llvm.loop !19

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %.lr.ph101
  %indvars.iv185 = phi i64 [ 0, %.lr.ph101.preheader ], [ %indvars.iv.next186, %.lr.ph101 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.js = sub nsw i64 %i.fm, %indvars.iv185
  %i.jt = getelementptr inbounds [16 x i8], ptr %0, i64 %i.js ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(16) %i.jt, i64 16, i1 false), !tbaa.struct !22
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv185 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jt, ptr noundef nonnull align 16 dereferenceable(16) %i.ju, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ju, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count188
  br i1 %exitcond189.not, label %.loopexit, label %.lr.ph101, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph101, %.preheader78, %bb.a
  %.073 = phi i32 [ -22, %bb.a ], [ 0, %.lr.ph101 ], [ 0, %.preheader78 ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @aes_decrypt(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) #3 {
bb.a:
  %.not20 = icmp eq i32 %3, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %3, -1                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = sext i32 %5 to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.not19 = icmp eq ptr %4, null
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not19, label %.lr.ph.split.us, label %.lr.ph.split
end_hunk_0
