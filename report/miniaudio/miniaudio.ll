Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 280
begin_hunk_0_@ma_dr_wav_read_pcm_frames_f32:bb.a
  store <4 x float> %i.bz, ptr %i.ca, align 4, !tbaa !349
  %index.next212 = add nuw i64 %index208, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next212, %n.vec206
  br i1 %i.cb, label %middle.block213, label %vector.body207, !llvm.loop !2206

middle.block213:                                  ; preds = %vector.body207
  %cmp.n214 = icmp eq i64 %i.au, %n.vec206
  br i1 %cmp.n214, label %.loopexit.i, label %.lr.ph.i40.i.i.preheader244

.lr.ph.i40.i.i.preheader244:                      ; preds = %.lr.ph.i40.i.i.preheader, %middle.block213
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i40.i.i.preheader ], [ %n.vec206, %middle.block213 ]
  %.0811.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i40.i.i.preheader ], [ %i.bs, %middle.block213 ]
  br label %.lr.ph.i40.i.i

.lr.ph.i40.i.i:                                   ; preds = %.lr.ph.i40.i.i.preheader244, %.lr.ph.i40.i.i
  %.012.i.i.i = phi i64 [ %i.ch, %.lr.ph.i40.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i40.i.i.preheader244 ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i ], [ %.0811.i.i.i.ph, %.lr.ph.i40.i.i.preheader244 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.012.i.i.i
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !122
  %i.ce = sitofp i16 %i.cd to float
  %i.cf = fmul nnan float %i.ce, f0x38000000
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  store float %i.cf, ptr %.0811.i.i.i, align 4, !tbaa !349
  %i.ch = add nuw nsw i64 %.012.i.i.i, 1          ; 2 uses
  %exitcond.not.i41.i.i = icmp eq i64 %i.ch, %i.au
  br i1 %exitcond.not.i41.i.i, label %.loopexit.i, label %.lr.ph.i40.i.i, !llvm.loop !2207

bb.p:                                             ; preds = %bb.m
  %.not48.i.i = icmp eq i64 %i.au, 0
  br i1 %.not48.i.i, label %.loopexit.i, label %.lr.ph.i42.i.i.preheader

.lr.ph.i42.i.i.preheader:                         ; preds = %bb.p
  %min.iters.check218 = icmp ult i64 %i.au, 4
  br i1 %min.iters.check218, label %.lr.ph.i42.i.i.preheader246, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph.i42.i.i.preheader
  %n.vec220 = and i64 %i.au, -4                   ; 4 uses
  %i.ci = shl i64 %n.vec220, 2
  %i.cj = getelementptr i8, ptr %.03152.i, i64 %i.ci
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next224, %vector.body221 ] ; 6 uses
  %i.ck = shl i64 %index222, 2
  %next.gep223 = getelementptr i8, ptr %.03152.i, i64 %i.ck
  %i.cl = mul i64 %index222, 3
  %i.cm = mul i64 %index222, 3
  %i.cn = mul i64 %index222, 3
  %i.co = mul i64 %index222, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cl ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cm ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %i.cs = getelementptr i8, ptr %i.e, i64 %i.cn   ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 6
  %i.cu = getelementptr i8, ptr %i.e, i64 %i.co   ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 9
  %i.cw = load i16, ptr %i.cp, align 4
  %i.cx = load i16, ptr %i.cr, align 1
  %i.cy = load i16, ptr %i.ct, align 2
  %i.cz = load i16, ptr %i.cv, align 1
  %i.da = insertelement <4 x i16> poison, i16 %i.cw, i64 0
  %i.db = insertelement <4 x i16> %i.da, i16 %i.cx, i64 1
  %i.dc = insertelement <4 x i16> %i.db, i16 %i.cy, i64 2
  %i.dd = insertelement <4 x i16> %i.dc, i16 %i.cz, i64 3
  %i.de = zext <4 x i16> %i.dd to <4 x i32>
  %i.df = shl nuw nsw <4 x i32> %i.de, splat (i32 8)
  %i.dg = getelementptr i8, ptr %i.cp, i64 2
  %i.dh = getelementptr i8, ptr %i.cq, i64 5
  %i.di = getelementptr i8, ptr %i.cs, i64 8
  %i.dj = getelementptr i8, ptr %i.cu, i64 11
  %i.dk = load i8, ptr %i.dg, align 2, !tbaa !119
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !119
  %i.dm = load i8, ptr %i.di, align 4, !tbaa !119
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !119
  %i.do = insertelement <4 x i8> poison, i8 %i.dk, i64 0
  %i.dp = insertelement <4 x i8> %i.do, i8 %i.dl, i64 1
  %i.dq = insertelement <4 x i8> %i.dp, i8 %i.dm, i64 2
  %i.dr = insertelement <4 x i8> %i.dq, i8 %i.dn, i64 3
  %i.ds = zext <4 x i8> %i.dr to <4 x i32>
  %i.dt = shl nuw <4 x i32> %i.ds, splat (i32 24)
  %i.du = or disjoint <4 x i32> %i.dt, %i.df
  %i.dv = ashr exact <4 x i32> %i.du, splat (i32 8)
  %i.dw = sitofp <4 x i32> %i.dv to <4 x float>
  %i.dx = fmul nnan <4 x float> %i.dw, splat (float f0x34000000)
  store <4 x float> %i.dx, ptr %next.gep223, align 4, !tbaa !349
  %index.next224 = add nuw i64 %index222, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next224, %n.vec220
  br i1 %i.dy, label %middle.block225, label %vector.body221, !llvm.loop !2208

middle.block225:                                  ; preds = %vector.body221
  %cmp.n226 = icmp eq i64 %i.au, %n.vec220
  br i1 %cmp.n226, label %.loopexit.i, label %.lr.ph.i42.i.i.preheader246

.lr.ph.i42.i.i.preheader246:                      ; preds = %.lr.ph.i42.i.i.preheader, %middle.block225
  %.020.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i42.i.i.preheader ], [ %i.cj, %middle.block225 ]
  %.01619.i.i.i.ph = phi i64 [ 0, %.lr.ph.i42.i.i.preheader ], [ %n.vec220, %middle.block225 ]
  br label %.lr.ph.i42.i.i

.lr.ph.i42.i.i:                                   ; preds = %.lr.ph.i42.i.i.preheader246, %.lr.ph.i42.i.i
  %.020.i.i.i = phi ptr [ %i.em, %.lr.ph.i42.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i42.i.i.preheader246 ] ; 2 uses
  %.01619.i.i.i = phi i64 [ %i.en, %.lr.ph.i42.i.i ], [ %.01619.i.i.i.ph, %.lr.ph.i42.i.i.preheader246 ] ; 2 uses
  %i.dz = mul i64 %.01619.i.i.i, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dz ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 1
  %i.ec = zext i16 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 8
  %i.ee = getelementptr i8, ptr %i.ea, i64 2
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !119
  %i.eg = zext i8 %i.ef to i32
  %i.eh = shl nuw i32 %i.eg, 24
  %i.ei = or disjoint i32 %i.eh, %i.ed
  %i.ej = ashr exact i32 %i.ei, 8
  %i.ek = sitofp i32 %i.ej to float
  %i.el = fmul nnan float %i.ek, f0x34000000
  %i.em = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  store float %i.el, ptr %.020.i.i.i, align 4, !tbaa !349
  %i.en = add nuw i64 %.01619.i.i.i, 1            ; 2 uses
  %exitcond.not.i43.i.i = icmp eq i64 %i.en, %i.au
  br i1 %exitcond.not.i43.i.i, label %.loopexit.i, label %.lr.ph.i42.i.i, !llvm.loop !2209

bb.q:                                             ; preds = %bb.m
  %.not.i41.i = icmp eq i64 %i.au, 0
  br i1 %.not.i41.i, label %.loopexit.i, label %.lr.ph.i44.i.i.preheader

.lr.ph.i44.i.i.preheader:                         ; preds = %bb.q
  %min.iters.check230 = icmp ult i64 %i.au, 4
  br i1 %min.iters.check230, label %.lr.ph.i44.i.i.preheader248, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph.i44.i.i.preheader
  %n.vec232 = and i64 %i.au, -4                   ; 4 uses
  %i.eo = shl i64 %n.vec232, 2
  %i.ep = getelementptr i8, ptr %.03152.i, i64 %i.eo
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next237, %vector.body233 ] ; 3 uses
  %i.eq = shl i64 %index234, 2
  %next.gep235 = getelementptr i8, ptr %.03152.i, i64 %i.eq
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index234
  %wide.load236 = load <4 x i32>, ptr %i.er, align 16, !tbaa !118
  %i.es = sitofp <4 x i32> %wide.load236 to <4 x double>
  %i.et = fmul nnan <4 x double> %i.es, splat (double f0x3E00000000000000)
  %i.eu = fptrunc <4 x double> %i.et to <4 x float>
  store <4 x float> %i.eu, ptr %next.gep235, align 4, !tbaa !349
  %index.next237 = add nuw i64 %index234, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.ev, label %middle.block238, label %vector.body233, !llvm.loop !2210

middle.block238:                                  ; preds = %vector.body233
  %cmp.n239 = icmp eq i64 %i.au, %n.vec232
  br i1 %cmp.n239, label %.loopexit.i, label %.lr.ph.i44.i.i.preheader248

.lr.ph.i44.i.i.preheader248:                      ; preds = %.lr.ph.i44.i.i.preheader, %middle.block238
  %.012.i45.i.i.ph = phi i64 [ 0, %.lr.ph.i44.i.i.preheader ], [ %n.vec232, %middle.block238 ]
  %.0811.i46.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i44.i.i.preheader ], [ %i.ep, %middle.block238 ]
  br label %.lr.ph.i44.i.i

.lr.ph.i44.i.i:                                   ; preds = %.lr.ph.i44.i.i.preheader248, %.lr.ph.i44.i.i
  %.012.i45.i.i = phi i64 [ %i.fc, %.lr.ph.i44.i.i ], [ %.012.i45.i.i.ph, %.lr.ph.i44.i.i.preheader248 ] ; 2 uses
  %.0811.i46.i.i = phi ptr [ %i.fb, %.lr.ph.i44.i.i ], [ %.0811.i46.i.i.ph, %.lr.ph.i44.i.i.preheader248 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.012.i45.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !118
  %i.ey = sitofp i32 %i.ex to double
  %i.ez = fmul nnan double %i.ey, f0x3E00000000000000
  %i.fa = fptrunc double %i.ez to float
  %i.fb = getelementptr inbounds nuw i8, ptr %.0811.i46.i.i, i64 4
  store float %i.fa, ptr %.0811.i46.i.i, align 4, !tbaa !349
  %i.fc = add nuw nsw i64 %.012.i45.i.i, 1        ; 2 uses
  %exitcond.not.i47.i.i = icmp eq i64 %i.fc, %i.au
  br i1 %exitcond.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i44.i.i, !llvm.loop !2211

bb.r:                                             ; preds = %bb.m
  br i1 %i.al, label %bb.s, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.r
  %.not61.i.i = icmp eq i64 %i.au, 0
  br i1 %.not61.i.i, label %.loopexit.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %bb.r
  %i.fd = shl i64 %i.au, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03152.i, i8 0, i64 %i.fd, i1 false)
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.epilog-lcssa
  %.03660.i.i = phi i32 [ %i.gv, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.03759.i.i = phi ptr [ %i.gu, %.epilog-lcssa ], [ %.03152.i, %.preheader.i.i ] ; 2 uses
  %.03858.i.i = phi ptr [ %i.gq, %.epilog-lcssa ], [ %i.e, %.preheader.i.i ] ; 6 uses
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %.03456.i.i = phi i32 [ %i.gi, %.lr.ph.i.i.new ], [ %i.an, %.lr.ph.i.i ] ; 5 uses
  %.03555.i.i = phi i64 [ %i.gh, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %niter270 = phi i64 [ %niter270.next.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !119
  %i.fg = zext i8 %i.ff to i64
  %i.fh = zext nneg i32 %.03456.i.i to i64
  %i.fi = shl i64 %i.fg, %i.fh
  %i.fj = or i64 %i.fi, %.03555.i.i
  %i.fk = add i32 %.03456.i.i, 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !119
  %i.fo = zext i8 %i.fn to i64
  %i.fp = zext nneg i32 %i.fk to i64
  %i.fq = shl i64 %i.fo, %i.fp
  %i.fr = or i64 %i.fq, %i.fj
  %i.fs = add i32 %.03456.i.i, 16
  %i.ft = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !119
  %i.fw = zext i8 %i.fv to i64
  %i.fx = zext nneg i32 %i.fs to i64
  %i.fy = shl i64 %i.fw, %i.fx
  %i.fz = or i64 %i.fy, %i.fr
  %i.ga = add i32 %.03456.i.i, 24
  %i.gb = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 3
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !119
  %i.ge = zext i8 %i.gd to i64
  %i.gf = zext nneg i32 %i.ga to i64
  %i.gg = shl i64 %i.ge, %i.gf
  %i.gh = or i64 %i.gg, %i.fz                     ; 3 uses
  %i.gi = add i32 %.03456.i.i, 32                 ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter270.next.3 = add i64 %niter270, 4         ; 2 uses
  %niter270.ncmp.3 = icmp eq i64 %niter270.next.3, %unroll_iter269
  br i1 %niter270.ncmp.3, label %.unr-lcssa, label %.lr.ph.i.i.new, !llvm.loop !2212

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.new
  br i1 %lcmp.mod266.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03456.i.i.epil.init = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.gi, %.unr-lcssa ]
  %.03555.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gh, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod268)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.t ] ; 2 uses
  %.03456.i.i.epil = phi i32 [ %.03456.i.i.epil.init, %.epil.preheader ], [ %i.gp, %bb.t ] ; 2 uses
  %.03555.i.i.epil = phi i64 [ %.03555.i.i.epil.init, %.epil.preheader ], [ %i.go, %bb.t ]
  %epil.iter265 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter265.next, %bb.t ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.epil
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !119
  %i.gl = zext i8 %i.gk to i64
  %i.gm = zext nneg i32 %.03456.i.i.epil to i64
  %i.gn = shl i64 %i.gl, %i.gm
  %i.go = or i64 %i.gn, %.03555.i.i.epil          ; 2 uses
  %i.gp = add i32 %.03456.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter265.next = add i64 %epil.iter265, 1   ; 2 uses
  %epil.iter265.cmp.not = icmp eq i64 %epil.iter265.next, %xtraiter264
  br i1 %epil.iter265.cmp.not, label %.epilog-lcssa, label %bb.t, !llvm.loop !2213

.epilog-lcssa:                                    ; preds = %bb.t, %.unr-lcssa
  %.lcssa = phi i64 [ %i.gh, %.unr-lcssa ], [ %i.go, %bb.t ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %i.ak
  %i.gr = sitofp i64 %.lcssa to double
  %i.gs = fmul nnan double %i.gr, f0x3C00000000000000
  %i.gt = fptrunc double %i.gs to float
  %i.gu = getelementptr inbounds nuw i8, ptr %.03759.i.i, i64 4
  store float %i.gt, ptr %.03759.i.i, align 4, !tbaa !349
  %i.gv = add i32 %.03660.i.i, 1                  ; 2 uses
  %i.gw = zext i32 %i.gv to i64
  %i.gx = icmp ugt i64 %i.au, %i.gw
  br i1 %i.gx, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !2214

.loopexit.i:                                      ; preds = %.lr.ph.i44.i.i, %.lr.ph.i42.i.i, %.lr.ph.i40.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block238, %middle.block225, %middle.block213, %middle.block199, %bb.s, %.preheader.i.i, %bb.q, %bb.p, %bb.o, %bb.n
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.03152.i, i64 %i.au
  %i.gz = sub i64 %.03351.i, %i.aq                ; 2 uses
  %i.ha = add i64 %i.aq, %.03053.i                ; 2 uses
  %.not40.i = icmp eq i64 %i.gz, 0
  br i1 %.not40.i, label %ma_dr_wav_read_pcm_frames_f32__pcm.exit, label %bb.k

ma_dr_wav_read_pcm_frames_f32__pcm.exit:          ; preds = %bb.k, %bb.l, %.loopexit.i, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i, %bb.j
  %.035.i = phi i64 [ 0, %bb.j ], [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i ], [ %.03053.i, %bb.k ], [ %i.ha, %.loopexit.i ], [ %.03053.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  br label %bb.ax

bb.u:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i37, %bb.u
  %i.hb = phi i16 [ %i.k, %bb.u ], [ %i.hg, %.loopexit.i37 ]
  %.01932.i = phi i64 [ 0, %bb.u ], [ %i.ic, %.loopexit.i37 ] ; 2 uses
  %.02031.i = phi ptr [ %2, %bb.u ], [ %i.ia, %.loopexit.i37 ] ; 4 uses
  %.02230.i = phi i64 [ %.030, %bb.u ], [ %i.ib, %.loopexit.i37 ] ; 2 uses
  %i.hc = udiv i16 2048, %i.hb
  %i.hd = zext nneg i16 %i.hc to i64
  %.022..i = call i64 @llvm.umin.i64(i64 %.02230.i, i64 %i.hd)
  %i.he = call i64 @ma_dr_wav_read_pcm_frames_s16(ptr noundef nonnull %0, i64 noundef %.022..i, ptr noundef nonnull %i.d) ; 4 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hg = load i16, ptr %i.j, align 8, !tbaa !692 ; 2 uses
  %i.hh = zext i16 %i.hg to i64
  %i.hi = mul i64 %i.he, %i.hh                    ; 6 uses
  %.not35.i = icmp eq i64 %i.hi, 0
  br i1 %.not35.i, label %.loopexit.i37, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.w
  %min.iters.check176 = icmp ult i64 %i.hi, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i35.preheader250, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.i35.preheader
  %n.vec178 = and i64 %i.hi, -8                   ; 4 uses
  %i.hj = shl i64 %n.vec178, 2
  %i.hk = getelementptr i8, ptr %.02031.i, i64 %i.hj
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body179 ] ; 3 uses
  %i.hl = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %.02031.i, i64 %i.hl ; 2 uses
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index180 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %wide.load182 = load <4 x i16>, ptr %i.hm, align 16, !tbaa !122
  %wide.load183 = load <4 x i16>, ptr %i.hn, align 8, !tbaa !122
  %i.ho = sitofp <4 x i16> %wide.load182 to <4 x float>
  %i.hp = sitofp <4 x i16> %wide.load183 to <4 x float>
  %i.hq = fmul nnan <4 x float> %i.ho, splat (float f0x38000000)
  %i.hr = fmul nnan <4 x float> %i.hp, splat (float f0x38000000)
  %i.hs = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x float> %i.hq, ptr %next.gep181, align 4, !tbaa !349
  store <4 x float> %i.hr, ptr %i.hs, align 4, !tbaa !349
  %index.next184 = add nuw i64 %index180, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.ht, label %middle.block185, label %vector.body179, !llvm.loop !2215

middle.block185:                                  ; preds = %vector.body179
  %cmp.n186 = icmp eq i64 %i.hi, %n.vec178
  br i1 %cmp.n186, label %.loopexit.i37, label %.lr.ph.i.i35.preheader250

.lr.ph.i.i35.preheader250:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block185
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i35.preheader ], [ %n.vec178, %middle.block185 ]
  %.0811.i.i.ph = phi ptr [ %.02031.i, %.lr.ph.i.i35.preheader ], [ %i.hk, %middle.block185 ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader250, %.lr.ph.i.i35
  %.012.i.i = phi i64 [ %i.hz, %.lr.ph.i.i35 ], [ %.012.i.i.ph, %.lr.ph.i.i35.preheader250 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.hy, %.lr.ph.i.i35 ], [ %.0811.i.i.ph, %.lr.ph.i.i35.preheader250 ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !122
  %i.hw = sitofp i16 %i.hv to float
  %i.hx = fmul nnan float %i.hw, f0x38000000
  %i.hy = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  store float %i.hx, ptr %.0811.i.i, align 4, !tbaa !349
  %i.hz = add nuw nsw i64 %.012.i.i, 1            ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %i.hz, %i.hi
  br i1 %exitcond.not.i.i36, label %.loopexit.i37, label %.lr.ph.i.i35, !llvm.loop !2216

.loopexit.i37:                                    ; preds = %.lr.ph.i.i35, %middle.block185, %bb.w
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.02031.i, i64 %i.hi
  %i.ib = sub i64 %.02230.i, %i.he                ; 2 uses
  %i.ic = add i64 %i.he, %.01932.i                ; 2 uses
  %.not.i38 = icmp eq i64 %i.ib, 0
  br i1 %.not.i38, label %ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit, label %bb.v

ma_dr_wav_read_pcm_frames_f32__msadpcm_ima.exit:  ; preds = %bb.v, %.loopexit.i37
  %.019.lcssa.i = phi i64 [ %.01932.i, %bb.v ], [ %i.ic, %.loopexit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %bb.ax

bb.x:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !694 ; 2 uses
  %i.if = icmp eq i16 %i.ie, 32
  br i1 %i.if, label %bb.y, label %._crit_edge.i

bb.y:                                             ; preds = %bb.x
  %i.ig = tail call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %.030, ptr noundef nonnull %2)
  br label %ma_dr_wav_read_pcm_frames_f32__ieee.exit

._crit_edge.i:                                    ; preds = %bb.x
  %i.ih = zext i16 %i.ie to i32                   ; 2 uses
  %i.ii = and i32 %i.ih, 7
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !695
  %i.im = zext i16 %i.il to i32
  %i.in = mul nuw nsw i32 %i.im, %i.ih
  %i.io = lshr exact i32 %i.in, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41

bb.aa:                                            ; preds = %._crit_edge.i
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.iq = load i16, ptr %i.ip, align 8, !tbaa !696
  %i.ir = zext i16 %i.iq to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41

ma_dr_wav_get_bytes_per_pcm_frame.exit.i41:       ; preds = %bb.z, %bb.aa
  %.0.i.i39 = phi i32 [ %i.io, %bb.z ], [ %i.ir, %bb.aa ] ; 5 uses
  %.old.i42 = icmp eq i32 %.0.i.i39, 0
  br i1 %.old.i42, label %ma_dr_wav_read_pcm_frames_f32__ieee.exit, label %bb.ab

bb.ab:                                            ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41
  %i.is = zext i16 %i.k to i32                    ; 3 uses
  %i.it = udiv i32 %.0.i.i39, %i.is
  %i.iu = urem i32 %.0.i.i39, %i.is
  %.fr.i = freeze i32 %i.it                       ; 2 uses
  %i.iv = icmp samesign uge i32 %.0.i.i39, %i.is
  %.not.i43 = icmp eq i32 %i.iu, 0
  %or.cond279 = and i1 %i.iv, %.not.i43
  br i1 %or.cond279, label %.preheader.i44, label %ma_dr_wav_read_pcm_frames_f32__ieee.exit

.preheader.i44:                                   ; preds = %bb.ab
  %i.iw = udiv i32 4096, %.0.i.i39
  %i.ix = zext nneg i32 %i.iw to i64              ; 3 uses
  %i.iy = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us56.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i44, %.loopexit.us.i
end_hunk_0
begin_hunk_1_@ma_dr_wav_read_pcm_frames_s16:bb.a
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec155, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec163 = and i64 %i.av, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next166, %vec.epilog.vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 %index164
  %wide.load165 = load <4 x i8>, ptr %i.bm, align 4, !tbaa !119
  %i.bn = zext <4 x i8> %wide.load165 to <4 x i16>
  %i.bo = shl nuw <4 x i16> %i.bn, splat (i16 8)
  %i.bp = xor <4 x i16> %i.bo, splat (i16 -32768)
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index164
  store <4 x i16> %i.bp, ptr %i.bq, align 2, !tbaa !122
  %index.next166 = add nuw i64 %index164, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next166, %n.vec163
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2224

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n167 = icmp eq i64 %i.av, %n.vec163
  br i1 %cmp.n167, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec155, %vec.epilog.iter.check ], [ %n.vec163, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 %.09.i.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !119
  %i.bu = zext i8 %i.bt to i16
  %i.bv = shl nuw i16 %i.bu, 8
  %i.bw = xor i16 %i.bv, -32768
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.09.i.i.i
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !122
  %i.by = add nuw nsw i64 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.av
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !2225

bb.o:                                             ; preds = %bb.m
  %.not.i44.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i44.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.o
  %min.iters.check170 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check170, label %.lr.ph.i45.i.i.preheader192, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec172 = and i64 %i.av, -8                   ; 3 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next175, %vector.body173 ] ; 10 uses
  %i.bz = mul i64 %index174, 3
  %i.ca = mul i64 %index174, 3
  %i.cb = mul i64 %index174, 3
  %i.cc = mul i64 %index174, 3
  %i.cd = mul i64 %index174, 3
  %i.ce = mul i64 %index174, 3
  %i.cf = mul i64 %index174, 3
  %i.cg = mul i64 %index174, 3
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.bz
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ca
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.cb
  %i.ck = getelementptr i8, ptr %i.d, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.d, i64 %i.cd
  %i.cm = getelementptr i8, ptr %i.d, i64 %i.ce
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.co = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cp = getelementptr i8, ptr %i.ch, i64 1
  %i.cq = getelementptr i8, ptr %i.ci, i64 4
  %i.cr = getelementptr i8, ptr %i.cj, i64 7
  %i.cs = getelementptr i8, ptr %i.ck, i64 10
  %i.ct = getelementptr i8, ptr %i.cl, i64 13
  %i.cu = getelementptr i8, ptr %i.cm, i64 16
  %i.cv = getelementptr i8, ptr %i.cn, i64 19
  %i.cw = getelementptr i8, ptr %i.co, i64 22
  %i.cx = load i16, ptr %i.cp, align 1
  %i.cy = load i16, ptr %i.cq, align 4
  %i.cz = load i16, ptr %i.cr, align 1
  %i.da = load i16, ptr %i.cs, align 2
  %i.db = load i16, ptr %i.ct, align 1
  %i.dc = load i16, ptr %i.cu, align 8
  %i.dd = load i16, ptr %i.cv, align 1
  %i.de = load i16, ptr %i.cw, align 2
  %i.df = insertelement <8 x i16> poison, i16 %i.cx, i64 0
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 1
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 2
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 3
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.db, i64 4
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.dc, i64 5
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 6
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.de, i64 7
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index174
  store <8 x i16> %i.dm, ptr %i.dn, align 2, !tbaa !122
  %index.next175 = add nuw i64 %index174, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next175, %n.vec172
  br i1 %i.do, label %middle.block176, label %vector.body173, !llvm.loop !2226

middle.block176:                                  ; preds = %vector.body173
  %cmp.n177 = icmp eq i64 %i.av, %n.vec172
  br i1 %cmp.n177, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader192

.lr.ph.i45.i.i.preheader192:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block176
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec172, %middle.block176 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader192, %.lr.ph.i45.i.i
  %.012.i.i.i = phi i64 [ %i.du, %.lr.ph.i45.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i45.i.i.preheader192 ] ; 3 uses
  %i.dp = mul i64 %.012.i.i.i, 3
  %i.dq = getelementptr i8, ptr %i.d, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 1
  %i.ds = load i16, ptr %i.dr, align 1
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.012.i.i.i
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !122
  %i.du = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i46.i.i = icmp eq i64 %i.du, %i.av
  br i1 %exitcond.not.i46.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !2227

bb.p:                                             ; preds = %bb.m
  %.not.i47.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader

.lr.ph.i48.i.i.preheader:                         ; preds = %bb.p
  %min.iters.check180 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check180, label %.lr.ph.i48.i.i.preheader194, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph.i48.i.i.preheader
  %n.vec182 = and i64 %i.av, -8                   ; 3 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next187, %vector.body183 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index184 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load185 = load <4 x i32>, ptr %i.dv, align 16, !tbaa !118
  %wide.load186 = load <4 x i32>, ptr %i.dw, align 16, !tbaa !118
  %i.dx = lshr <4 x i32> %wide.load185, splat (i32 16)
  %i.dy = lshr <4 x i32> %wide.load186, splat (i32 16)
  %i.dz = trunc nuw <4 x i32> %i.dx to <4 x i16>
  %i.ea = trunc nuw <4 x i32> %i.dy to <4 x i16>
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index184 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store <4 x i16> %i.dz, ptr %i.eb, align 2, !tbaa !122
  store <4 x i16> %i.ea, ptr %i.ec, align 2, !tbaa !122
  %index.next187 = add nuw i64 %index184, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next187, %n.vec182
  br i1 %i.ed, label %middle.block188, label %vector.body183, !llvm.loop !2228

middle.block188:                                  ; preds = %vector.body183
  %cmp.n189 = icmp eq i64 %i.av, %n.vec182
  br i1 %cmp.n189, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader194

.lr.ph.i48.i.i.preheader194:                      ; preds = %.lr.ph.i48.i.i.preheader, %middle.block188
  %.08.i.i.i.ph = phi i64 [ 0, %.lr.ph.i48.i.i.preheader ], [ %n.vec182, %middle.block188 ]
  br label %.lr.ph.i48.i.i

.lr.ph.i48.i.i:                                   ; preds = %.lr.ph.i48.i.i.preheader194, %.lr.ph.i48.i.i
  %.08.i.i.i = phi i64 [ %i.ej, %.lr.ph.i48.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i48.i.i.preheader194 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.08.i.i.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !118
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = trunc nuw i32 %i.eg to i16
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.08.i.i.i
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !122
  %i.ej = add nuw nsw i64 %.08.i.i.i, 1           ; 2 uses
  %exitcond.not.i49.i.i = icmp eq i64 %i.ej, %i.av
  br i1 %exitcond.not.i49.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i, !llvm.loop !2229

bb.q:                                             ; preds = %bb.m
  br i1 %i.am, label %bb.r, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.q
  %.not64.i.i = icmp eq i64 %i.av, 0
  br i1 %.not64.i.i, label %.loopexit.i, label %.lr.ph63.i.i

bb.r:                                             ; preds = %bb.q
  %i.ek = shl i64 %i.av, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %.03860.i, i8 0, i64 %i.ek, i1 false)
  br label %.loopexit.i

.lr.ph63.i.i:                                     ; preds = %.preheader.i.i, %.epilog-lcssa
  %.162.i.i = phi i64 [ %i.gb, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.14161.i.i = phi ptr [ %i.ga, %.epilog-lcssa ], [ %.03860.i, %.preheader.i.i ] ; 2 uses
  %.04260.i.i = phi ptr [ %i.fx, %.epilog-lcssa ], [ %i.d, %.preheader.i.i ] ; 6 uses
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph63.i.i.new

.lr.ph63.i.i.new:                                 ; preds = %.lr.ph63.i.i, %.lr.ph63.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ] ; 5 uses
  %.03758.i.i = phi i32 [ %i.fp, %.lr.ph63.i.i.new ], [ %i.ao, %.lr.ph63.i.i ] ; 5 uses
  %.03857.i.i = phi i64 [ %i.fo, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ]
  %niter214 = phi i64 [ %niter214.next.3, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i
  %i.em = load i8, ptr %i.el, align 1, !tbaa !119
  %i.en = zext i8 %i.em to i64
  %i.eo = zext nneg i32 %.03758.i.i to i64
  %i.ep = shl i64 %i.en, %i.eo
  %i.eq = or i64 %i.ep, %.03857.i.i
  %i.er = add i32 %.03758.i.i, 8
  %i.es = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !119
  %i.ev = zext i8 %i.eu to i64
  %i.ew = zext nneg i32 %i.er to i64
  %i.ex = shl i64 %i.ev, %i.ew
  %i.ey = or i64 %i.ex, %i.eq
  %i.ez = add i32 %.03758.i.i, 16
  %i.fa = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !119
  %i.fd = zext i8 %i.fc to i64
  %i.fe = zext nneg i32 %i.ez to i64
  %i.ff = shl i64 %i.fd, %i.fe
  %i.fg = or i64 %i.ff, %i.ey
  %i.fh = add i32 %.03758.i.i, 24
  %i.fi = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 3
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !119
  %i.fl = zext i8 %i.fk to i64
  %i.fm = zext nneg i32 %i.fh to i64
  %i.fn = shl i64 %i.fl, %i.fm
  %i.fo = or i64 %i.fn, %i.fg                     ; 3 uses
  %i.fp = add i32 %.03758.i.i, 32                 ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter214.next.3 = add i64 %niter214, 4         ; 2 uses
  %niter214.ncmp.3 = icmp eq i64 %niter214.next.3, %unroll_iter213
  br i1 %niter214.ncmp.3, label %.unr-lcssa, label %.lr.ph63.i.i.new, !llvm.loop !2230

.unr-lcssa:                                       ; preds = %.lr.ph63.i.i.new
  br i1 %lcmp.mod210.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph63.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph63.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03758.i.i.epil.init = phi i32 [ %i.ao, %.lr.ph63.i.i ], [ %i.fp, %.unr-lcssa ]
  %.03857.i.i.epil.init = phi i64 [ 0, %.lr.ph63.i.i ], [ %i.fo, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod212)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.s ] ; 2 uses
  %.03758.i.i.epil = phi i32 [ %.03758.i.i.epil.init, %.epil.preheader ], [ %i.fw, %bb.s ] ; 2 uses
  %.03857.i.i.epil = phi i64 [ %.03857.i.i.epil.init, %.epil.preheader ], [ %i.fv, %bb.s ]
  %epil.iter209 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter209.next, %bb.s ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.epil
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !119
  %i.fs = zext i8 %i.fr to i64
  %i.ft = zext nneg i32 %.03758.i.i.epil to i64
  %i.fu = shl i64 %i.fs, %i.ft
  %i.fv = or i64 %i.fu, %.03857.i.i.epil          ; 2 uses
  %i.fw = add i32 %.03758.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter209.next = add i64 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i64 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %.epilog-lcssa, label %bb.s, !llvm.loop !2231

.epilog-lcssa:                                    ; preds = %bb.s, %.unr-lcssa
  %.lcssa = phi i64 [ %i.fo, %.unr-lcssa ], [ %i.fv, %bb.s ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %i.al
  %i.fy = lshr i64 %.lcssa, 48
  %i.fz = trunc nuw i64 %i.fy to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %.14161.i.i, i64 2
  store i16 %i.fz, ptr %.14161.i.i, align 2, !tbaa !122
  %i.gb = add nuw i64 %.162.i.i, 1                ; 2 uses
  %exitcond72.not.i.i = icmp eq i64 %i.gb, %i.av
  br i1 %exitcond72.not.i.i, label %.loopexit.i, label %.lr.ph63.i.i, !llvm.loop !2232

.loopexit.i:                                      ; preds = %.lr.ph.i48.i.i, %.lr.ph.i45.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block188, %middle.block176, %middle.block161, %vec.epilog.middle.block, %bb.r, %.preheader.i.i, %bb.p, %bb.o, %bb.n, %.lr.ph.i.preheader.i, %.preheader51.i.i
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %i.av
  %i.gd = sub i64 %.04059.i, %i.ar                ; 2 uses
  %i.ge = add i64 %i.ar, %.03761.i                ; 2 uses
  %.not48.i = icmp eq i64 %i.gd, 0
  br i1 %.not48.i, label %ma_dr_wav_read_pcm_frames_s16__pcm.exit, label %bb.k

ma_dr_wav_read_pcm_frames_s16__pcm.exit:          ; preds = %bb.k, %bb.l, %.loopexit.i, %.split.i, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i, %bb.j
  %.042.i = phi i64 [ %i.t, %.split.i ], [ 0, %bb.j ], [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i ], [ %.03761.i, %bb.k ], [ %i.ge, %.loopexit.i ], [ %.03761.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %bb.az

bb.t:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !694
  %i.gh = zext i16 %i.gg to i32                   ; 2 uses
  %i.gi = and i32 %i.gh, 7
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !695
  %i.gm = zext i16 %i.gl to i32
  %i.gn = mul nuw nsw i32 %i.gm, %i.gh
  %i.go = lshr exact i32 %i.gn, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i40

bb.v:                                             ; preds = %bb.t
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gq = load i16, ptr %i.gp, align 8, !tbaa !696
  %i.gr = zext i16 %i.gq to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i40

ma_dr_wav_get_bytes_per_pcm_frame.exit.i40:       ; preds = %bb.u, %bb.v
  %.0.i.i38 = phi i32 [ %i.go, %bb.u ], [ %i.gr, %bb.v ] ; 5 uses
  %.old.i41 = icmp eq i32 %.0.i.i38, 0
  br i1 %.old.i41, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.w

bb.w:                                             ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i40
  %i.gs = zext i16 %i.j to i32                    ; 3 uses
  %i.gt = udiv i32 %.0.i.i38, %i.gs
  %i.gu = urem i32 %.0.i.i38, %i.gs
  %.fr.i = freeze i32 %i.gt                       ; 2 uses
  %i.gv = icmp samesign uge i32 %.0.i.i38, %i.gs
  %.not.i42 = icmp eq i32 %i.gu, 0
  %or.cond221 = and i1 %i.gv, %.not.i42
  br i1 %or.cond221, label %.preheader.i43, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit

.preheader.i43:                                   ; preds = %bb.w
  %i.gw = udiv i32 4096, %.0.i.i38
  %i.gx = zext nneg i32 %i.gw to i64              ; 3 uses
  %i.gy = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us54.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i43, %.loopexit.us.i
  %.03353.us.i = phi i64 [ %i.ig, %.loopexit.us.i ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.us.i = phi ptr [ %i.ie, %.loopexit.us.i ], [ %2, %.preheader.i43 ] ; 3 uses
  %.03651.us.i = phi i64 [ %i.if, %.loopexit.us.i ], [ %.033, %.preheader.i43 ] ; 2 uses
  %.036..us.i = call i64 @llvm.umin.i64(i64 %.03651.us.i, i64 %i.gx)
  %i.gz = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.x

bb.x:                                             ; preds = %.preheader.split.us.i
  %i.hb = load i16, ptr %i.i, align 8, !tbaa !692
  %i.hc = zext i16 %i.hb to i64
  %i.hd = mul i64 %i.gz, %i.hc                    ; 7 uses
  %i.he = mul i64 %i.hd, %i.gy
  %i.hf = icmp ugt i64 %i.he, 4096
  br i1 %i.hf, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i.i.us.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.y
  %min.iters.check = icmp ult i64 %i.hd, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.us.i.preheader196, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.us.i.preheader
  %n.vec = and i64 %i.hd, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index
  %wide.load = load <4 x float>, ptr %i.hg, align 16, !tbaa !349 ; 3 uses
  %i.hh = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.hi = fcmp ogt <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.hj = select <4 x i1> %i.hi, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load
  %i.hk = fadd <4 x float> %i.hj, splat (float 1.000000e+00)
  %i.hl = fmul <4 x float> %i.hk, splat (float 3.276750e+04)
  %i.hm = fptosi <4 x float> %i.hl to <4 x i32>
  %i.hn = trunc <4 x i32> %i.hm to <4 x i16>
  %i.ho = xor <4 x i16> %i.hn, splat (i16 -32768)
  %predphi = select <4 x i1> %i.hh, <4 x i16> splat (i16 -32768), <4 x i16> %i.ho
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %index
  store <4 x i16> %predphi, ptr %i.hp, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hq = icmp eq i64 %index.next, %n.vec
  br i1 %i.hq, label %middle.block, label %vector.body, !llvm.loop !2233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hd, %n.vec
  br i1 %cmp.n, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader196

.lr.ph.i.i.us.i.preheader196:                     ; preds = %.lr.ph.i.i.us.i.preheader, %middle.block
  %.014.i.i.us.i.ph = phi i64 [ 0, %.lr.ph.i.i.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.preheader196, %bb.aa
  %.014.i.i.us.i = phi i64 [ %i.id, %bb.aa ], [ %.014.i.i.us.i.ph, %.lr.ph.i.i.us.i.preheader196 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.014.i.i.us.i
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !349 ; 3 uses
  %i.ht = fcmp olt float %i.hs, -1.000000e+00
  br i1 %i.ht, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.us.i
  %i.hu = fcmp ogt float %i.hs, 1.000000e+00
  %i.hv = select i1 %i.hu, float 1.000000e+00, float %i.hs
  %i.hw = fadd float %i.hv, 1.000000e+00
  %i.hx = fmul float %i.hw, 3.276750e+04
  %i.hy = fptosi float %i.hx to i32
  %i.hz = trunc i32 %i.hy to i16
  %i.ia = xor i16 %i.hz, -32768
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i.us.i
  %i.ib = phi i16 [ %i.ia, %bb.z ], [ -32768, %.lr.ph.i.i.us.i ]
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %.014.i.i.us.i
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !122
  %i.id = add nuw nsw i64 %.014.i.i.us.i, 1       ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.id, %i.hd
  br i1 %exitcond.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i, !llvm.loop !2234

.loopexit.us.i:                                   ; preds = %bb.aa, %middle.block, %bb.y
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %i.hd
  %i.if = sub i64 %.03651.us.i, %i.gz             ; 2 uses
  %i.ig = add i64 %i.gz, %.03353.us.i             ; 2 uses
  %.not44.us.i = icmp eq i64 %i.if, 0
  br i1 %.not44.us.i, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %.preheader.split.us.i

.preheader.split.us54.i:                          ; preds = %.preheader.i43, %.loopexit50.us.i
  %.03353.us55.i = phi i64 [ %i.jd, %.loopexit50.us.i ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.us56.i = phi ptr [ %i.jb, %.loopexit50.us.i ], [ %2, %.preheader.i43 ] ; 2 uses
  %.03651.us57.i = phi i64 [ %i.jc, %.loopexit50.us.i ], [ %.033, %.preheader.i43 ] ; 2 uses
  %.036..us58.i = call i64 @llvm.umin.i64(i64 %.03651.us57.i, i64 %i.gx)
  %i.ih = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..us58.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %ma_dr_wav_read_pcm_frames_s16__ieee.exit, label %bb.ab

end_hunk_1
begin_hunk_2_@ma_dr_wav_read_pcm_frames_s32:bb.a
  %.0811.i.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i.i.i.preheader ], [ %i.bm, %middle.block199 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader243, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader243 ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %.0811.i.i.i.ph, %.lr.ph.i.i.i.preheader243 ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 %.012.i.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !119
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw i32 %i.ca, 24
  %i.cc = xor i32 %i.cb, -2147483648
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  store i32 %i.cc, ptr %.0811.i.i.i, align 4, !tbaa !118
  %i.ce = add nuw nsw i64 %.012.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ce, %i.aw
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !2239

bb.p:                                             ; preds = %bb.n
  %.not51.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not51.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.p
  %min.iters.check204 = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check204, label %.lr.ph.i45.i.i.preheader245, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec206 = and i64 %i.aw, -8                   ; 4 uses
  %i.cf = shl i64 %n.vec206, 2
  %i.cg = getelementptr i8, ptr %.03657.i, i64 %i.cf
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next212, %vector.body207 ] ; 3 uses
  %i.ch = shl i64 %index208, 2
  %next.gep209 = getelementptr i8, ptr %.03657.i, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index208 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %wide.load210 = load <4 x i16>, ptr %i.ci, align 16, !tbaa !122
  %wide.load211 = load <4 x i16>, ptr %i.cj, align 8, !tbaa !122
  %i.ck = sext <4 x i16> %wide.load210 to <4 x i32>
  %i.cl = sext <4 x i16> %wide.load211 to <4 x i32>
  %i.cm = shl nsw <4 x i32> %i.ck, splat (i32 16)
  %i.cn = shl nsw <4 x i32> %i.cl, splat (i32 16)
  %i.co = getelementptr i8, ptr %next.gep209, i64 16
  store <4 x i32> %i.cm, ptr %next.gep209, align 4, !tbaa !118
  store <4 x i32> %i.cn, ptr %i.co, align 4, !tbaa !118
  %index.next212 = add nuw i64 %index208, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next212, %n.vec206
  br i1 %i.cp, label %middle.block213, label %vector.body207, !llvm.loop !2240

middle.block213:                                  ; preds = %vector.body207
  %cmp.n214 = icmp eq i64 %i.aw, %n.vec206
  br i1 %cmp.n214, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader245

.lr.ph.i45.i.i.preheader245:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block213
  %.012.i46.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec206, %middle.block213 ]
  %.0811.i47.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i45.i.i.preheader ], [ %i.cg, %middle.block213 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader245, %.lr.ph.i45.i.i
  %.012.i46.i.i = phi i64 [ %i.cv, %.lr.ph.i45.i.i ], [ %.012.i46.i.i.ph, %.lr.ph.i45.i.i.preheader245 ] ; 2 uses
  %.0811.i47.i.i = phi ptr [ %i.cu, %.lr.ph.i45.i.i ], [ %.0811.i47.i.i.ph, %.lr.ph.i45.i.i.preheader245 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.012.i46.i.i
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !122
  %i.cs = sext i16 %i.cr to i32
  %i.ct = shl nsw i32 %i.cs, 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i47.i.i, i64 4
  store i32 %i.ct, ptr %.0811.i47.i.i, align 4, !tbaa !118
  %i.cv = add nuw nsw i64 %.012.i46.i.i, 1        ; 2 uses
  %exitcond.not.i48.i.i = icmp eq i64 %i.cv, %i.aw
  br i1 %exitcond.not.i48.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !2241

bb.q:                                             ; preds = %bb.n
  %.not.i46.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i46.i, label %.loopexit.i, label %.lr.ph.i49.i.i.preheader

.lr.ph.i49.i.i.preheader:                         ; preds = %bb.q
  %min.iters.check218 = icmp ult i64 %i.aw, 4
  br i1 %min.iters.check218, label %.lr.ph.i49.i.i.preheader247, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph.i49.i.i.preheader
  %n.vec220 = and i64 %i.aw, -4                   ; 4 uses
  %i.cw = shl i64 %n.vec220, 2
  %i.cx = getelementptr i8, ptr %.03657.i, i64 %i.cw
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next224, %vector.body221 ] ; 6 uses
  %i.cy = shl i64 %index222, 2
  %next.gep223 = getelementptr i8, ptr %.03657.i, i64 %i.cy
  %i.cz = mul i64 %index222, 3
  %i.da = mul i64 %index222, 3
  %i.db = mul i64 %index222, 3
  %i.dc = mul i64 %index222, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cz ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.da ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  %i.dg = getelementptr i8, ptr %i.e, i64 %i.db   ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 6
  %i.di = getelementptr i8, ptr %i.e, i64 %i.dc   ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 9
  %i.dk = load i16, ptr %i.dd, align 4
  %i.dl = load i16, ptr %i.df, align 1
  %i.dm = load i16, ptr %i.dh, align 2
  %i.dn = load i16, ptr %i.dj, align 1
  %i.do = insertelement <4 x i16> poison, i16 %i.dk, i64 0
  %i.dp = insertelement <4 x i16> %i.do, i16 %i.dl, i64 1
  %i.dq = insertelement <4 x i16> %i.dp, i16 %i.dm, i64 2
  %i.dr = insertelement <4 x i16> %i.dq, i16 %i.dn, i64 3
  %i.ds = zext <4 x i16> %i.dr to <4 x i32>
  %i.dt = shl nuw nsw <4 x i32> %i.ds, splat (i32 8)
  %i.du = getelementptr i8, ptr %i.dd, i64 2
  %i.dv = getelementptr i8, ptr %i.de, i64 5
  %i.dw = getelementptr i8, ptr %i.dg, i64 8
  %i.dx = getelementptr i8, ptr %i.di, i64 11
  %i.dy = load i8, ptr %i.du, align 2, !tbaa !119
  %i.dz = load i8, ptr %i.dv, align 1, !tbaa !119
  %i.ea = load i8, ptr %i.dw, align 4, !tbaa !119
  %i.eb = load i8, ptr %i.dx, align 1, !tbaa !119
  %i.ec = insertelement <4 x i8> poison, i8 %i.dy, i64 0
  %i.ed = insertelement <4 x i8> %i.ec, i8 %i.dz, i64 1
  %i.ee = insertelement <4 x i8> %i.ed, i8 %i.ea, i64 2
  %i.ef = insertelement <4 x i8> %i.ee, i8 %i.eb, i64 3
  %i.eg = zext <4 x i8> %i.ef to <4 x i32>
  %i.eh = shl nuw <4 x i32> %i.eg, splat (i32 24)
  %i.ei = or disjoint <4 x i32> %i.eh, %i.dt
  store <4 x i32> %i.ei, ptr %next.gep223, align 4, !tbaa !118
  %index.next224 = add nuw i64 %index222, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next224, %n.vec220
  br i1 %i.ej, label %middle.block225, label %vector.body221, !llvm.loop !2242

middle.block225:                                  ; preds = %vector.body221
  %cmp.n226 = icmp eq i64 %i.aw, %n.vec220
  br i1 %cmp.n226, label %.loopexit.i, label %.lr.ph.i49.i.i.preheader247

.lr.ph.i49.i.i.preheader247:                      ; preds = %.lr.ph.i49.i.i.preheader, %middle.block225
  %.020.i.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i49.i.i.preheader ], [ %i.cx, %middle.block225 ]
  %.01619.i.i.i.ph = phi i64 [ 0, %.lr.ph.i49.i.i.preheader ], [ %n.vec220, %middle.block225 ]
  br label %.lr.ph.i49.i.i

.lr.ph.i49.i.i:                                   ; preds = %.lr.ph.i49.i.i.preheader247, %.lr.ph.i49.i.i
  %.020.i.i.i = phi ptr [ %i.eu, %.lr.ph.i49.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i49.i.i.preheader247 ] ; 2 uses
  %.01619.i.i.i = phi i64 [ %i.ev, %.lr.ph.i49.i.i ], [ %.01619.i.i.i.ph, %.lr.ph.i49.i.i.preheader247 ] ; 2 uses
  %i.ek = mul i64 %.01619.i.i.i, 3
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ek ; 2 uses
  %i.em = load i16, ptr %i.el, align 1
  %i.en = zext i16 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 8
  %i.ep = getelementptr i8, ptr %i.el, i64 2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !119
  %i.er = zext i8 %i.eq to i32
  %i.es = shl nuw i32 %i.er, 24
  %i.et = or disjoint i32 %i.es, %i.eo
  %i.eu = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  store i32 %i.et, ptr %.020.i.i.i, align 4, !tbaa !118
  %i.ev = add nuw i64 %.01619.i.i.i, 1            ; 2 uses
  %exitcond.not.i50.i.i = icmp eq i64 %i.ev, %i.aw
  br i1 %exitcond.not.i50.i.i, label %.loopexit.i, label %.lr.ph.i49.i.i, !llvm.loop !2243

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader249, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader249 ] ; 2 uses
  %.04058.i.i = phi ptr [ %i.ey, %.lr.ph.i.i ], [ %.04058.i.i.ph, %.lr.ph.i.i.preheader249 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !118
  %i.ey = getelementptr inbounds nuw i8, ptr %.04058.i.i, i64 4
  store i32 %i.ex, ptr %.04058.i.i, align 4, !tbaa !118
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ez = and i64 %indvars.iv.next.i.i, 4294967295
  %i.fa = icmp ugt i64 %i.aw, %i.ez
  br i1 %i.fa, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !2244

bb.r:                                             ; preds = %bb.n
  br i1 %i.an, label %bb.s, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.r
  %.not68.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not68.i.i, label %.loopexit.i, label %.lr.ph66.i.i

bb.s:                                             ; preds = %bb.r
  %i.fb = shl i64 %i.aw, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03657.i, i8 0, i64 %i.fb, i1 false)
  br label %.loopexit.i

.lr.ph66.i.i:                                     ; preds = %.preheader.i.i, %.epilog-lcssa
  %.165.i.i = phi i32 [ %i.gs, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.14164.i.i = phi ptr [ %i.gr, %.epilog-lcssa ], [ %.03657.i, %.preheader.i.i ] ; 2 uses
  %.04263.i.i = phi ptr [ %i.go, %.epilog-lcssa ], [ %i.e, %.preheader.i.i ] ; 6 uses
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph66.i.i.new

.lr.ph66.i.i.new:                                 ; preds = %.lr.ph66.i.i, %.lr.ph66.i.i.new
  %indvars.iv75.i.i = phi i64 [ %indvars.iv.next76.i.i.3, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ] ; 5 uses
  %.03761.i.i = phi i32 [ %i.gg, %.lr.ph66.i.i.new ], [ %i.ap, %.lr.ph66.i.i ] ; 5 uses
  %.03860.i.i = phi i64 [ %i.gf, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ]
  %niter271 = phi i64 [ %niter271.next.3, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !119
  %i.fe = zext i8 %i.fd to i64
  %i.ff = zext nneg i32 %.03761.i.i to i64
  %i.fg = shl i64 %i.fe, %i.ff
  %i.fh = or i64 %i.fg, %.03860.i.i
  %i.fi = add i32 %.03761.i.i, 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !119
  %i.fm = zext i8 %i.fl to i64
  %i.fn = zext nneg i32 %i.fi to i64
  %i.fo = shl i64 %i.fm, %i.fn
  %i.fp = or i64 %i.fo, %i.fh
  %i.fq = add i32 %.03761.i.i, 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !119
  %i.fu = zext i8 %i.ft to i64
  %i.fv = zext nneg i32 %i.fq to i64
  %i.fw = shl i64 %i.fu, %i.fv
  %i.fx = or i64 %i.fw, %i.fp
  %i.fy = add i32 %.03761.i.i, 24
  %i.fz = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !119
  %i.gc = zext i8 %i.gb to i64
  %i.gd = zext nneg i32 %i.fy to i64
  %i.ge = shl i64 %i.gc, %i.gd
  %i.gf = or i64 %i.ge, %i.fx                     ; 3 uses
  %i.gg = add i32 %.03761.i.i, 32                 ; 2 uses
  %indvars.iv.next76.i.i.3 = add nuw nsw i64 %indvars.iv75.i.i, 4 ; 2 uses
  %niter271.next.3 = add i64 %niter271, 4         ; 2 uses
  %niter271.ncmp.3 = icmp eq i64 %niter271.next.3, %unroll_iter270
  br i1 %niter271.ncmp.3, label %.unr-lcssa, label %.lr.ph66.i.i.new, !llvm.loop !2245

.unr-lcssa:                                       ; preds = %.lr.ph66.i.i.new
  br i1 %lcmp.mod267.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph66.i.i
  %indvars.iv75.i.i.epil.init = phi i64 [ 0, %.lr.ph66.i.i ], [ %indvars.iv.next76.i.i.3, %.unr-lcssa ]
  %.03761.i.i.epil.init = phi i32 [ %i.ap, %.lr.ph66.i.i ], [ %i.gg, %.unr-lcssa ]
  %.03860.i.i.epil.init = phi i64 [ 0, %.lr.ph66.i.i ], [ %i.gf, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod269)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv75.i.i.epil = phi i64 [ %indvars.iv75.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next76.i.i.epil, %bb.t ] ; 2 uses
  %.03761.i.i.epil = phi i32 [ %.03761.i.i.epil.init, %.epil.preheader ], [ %i.gn, %bb.t ] ; 2 uses
  %.03860.i.i.epil = phi i64 [ %.03860.i.i.epil.init, %.epil.preheader ], [ %i.gm, %bb.t ]
  %epil.iter266 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter266.next, %bb.t ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv75.i.i.epil
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !119
  %i.gj = zext i8 %i.gi to i64
  %i.gk = zext nneg i32 %.03761.i.i.epil to i64
  %i.gl = shl i64 %i.gj, %i.gk
  %i.gm = or i64 %i.gl, %.03860.i.i.epil          ; 2 uses
  %i.gn = add i32 %.03761.i.i.epil, 8
  %indvars.iv.next76.i.i.epil = add nuw nsw i64 %indvars.iv75.i.i.epil, 1
  %epil.iter266.next = add i64 %epil.iter266, 1   ; 2 uses
  %epil.iter266.cmp.not = icmp eq i64 %epil.iter266.next, %xtraiter265
  br i1 %epil.iter266.cmp.not, label %.epilog-lcssa, label %bb.t, !llvm.loop !2246

.epilog-lcssa:                                    ; preds = %bb.t, %.unr-lcssa
  %.lcssa = phi i64 [ %i.gf, %.unr-lcssa ], [ %i.gm, %bb.t ]
  %i.go = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %i.am
  %i.gp = lshr i64 %.lcssa, 32
  %i.gq = trunc nuw i64 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %.14164.i.i, i64 4
  store i32 %i.gq, ptr %.14164.i.i, align 4, !tbaa !118
  %i.gs = add i32 %.165.i.i, 1                    ; 2 uses
  %i.gt = zext i32 %i.gs to i64
  %i.gu = icmp ugt i64 %i.aw, %i.gt
  br i1 %i.gu, label %.lr.ph66.i.i, label %.loopexit.i, !llvm.loop !2247

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i49.i.i, %.lr.ph.i45.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block239, %middle.block225, %middle.block213, %middle.block199, %bb.s, %.preheader.i.i, %bb.q, %bb.p, %bb.o, %.preheader56.i.i
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.03657.i, i64 %i.aw
  %i.gw = sub i64 %.03856.i, %i.as                ; 2 uses
  %i.gx = add i64 %i.as, %.03558.i                ; 2 uses
  %.not45.i = icmp eq i64 %i.gw, 0
  br i1 %.not45.i, label %ma_dr_wav_read_pcm_frames_s32__pcm.exit, label %bb.l

ma_dr_wav_read_pcm_frames_s32__pcm.exit:          ; preds = %bb.l, %bb.m, %.loopexit.i, %bb.h, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i, %bb.k
  %.040.i = phi i64 [ %i.u, %bb.h ], [ 0, %bb.k ], [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit.i ], [ %.03558.i, %bb.l ], [ %i.gx, %.loopexit.i ], [ %.03558.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  br label %bb.ax

bb.u:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i37, %bb.u
  %i.gy = phi i16 [ %i.k, %bb.u ], [ %i.hd, %.loopexit.i37 ]
  %.01932.i = phi i64 [ 0, %bb.u ], [ %i.hz, %.loopexit.i37 ] ; 2 uses
  %.02031.i = phi ptr [ %2, %bb.u ], [ %i.hx, %.loopexit.i37 ] ; 4 uses
  %.02230.i = phi i64 [ %.030, %bb.u ], [ %i.hy, %.loopexit.i37 ] ; 2 uses
  %i.gz = udiv i16 2048, %i.gy
  %i.ha = zext nneg i16 %i.gz to i64
  %.022..i = call i64 @llvm.umin.i64(i64 %.02230.i, i64 %i.ha)
  %i.hb = call i64 @ma_dr_wav_read_pcm_frames_s16(ptr noundef nonnull %0, i64 noundef %.022..i, ptr noundef nonnull %i.d) ; 4 uses
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %ma_dr_wav_read_pcm_frames_s32__msadpcm_ima.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hd = load i16, ptr %i.j, align 8, !tbaa !692 ; 2 uses
  %i.he = zext i16 %i.hd to i64
  %i.hf = mul i64 %i.hb, %i.he                    ; 6 uses
  %.not35.i = icmp eq i64 %i.hf, 0
  br i1 %.not35.i, label %.loopexit.i37, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.w
  %min.iters.check176 = icmp ult i64 %i.hf, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i35.preheader251, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.i35.preheader
  %n.vec178 = and i64 %i.hf, -8                   ; 4 uses
  %i.hg = shl i64 %n.vec178, 2
  %i.hh = getelementptr i8, ptr %.02031.i, i64 %i.hg
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body179 ] ; 3 uses
  %i.hi = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %.02031.i, i64 %i.hi ; 2 uses
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index180 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %wide.load182 = load <4 x i16>, ptr %i.hj, align 16, !tbaa !122
  %wide.load183 = load <4 x i16>, ptr %i.hk, align 8, !tbaa !122
  %i.hl = sext <4 x i16> %wide.load182 to <4 x i32>
  %i.hm = sext <4 x i16> %wide.load183 to <4 x i32>
  %i.hn = shl nsw <4 x i32> %i.hl, splat (i32 16)
  %i.ho = shl nsw <4 x i32> %i.hm, splat (i32 16)
  %i.hp = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x i32> %i.hn, ptr %next.gep181, align 4, !tbaa !118
  store <4 x i32> %i.ho, ptr %i.hp, align 4, !tbaa !118
  %index.next184 = add nuw i64 %index180, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.hq, label %middle.block185, label %vector.body179, !llvm.loop !2248

middle.block185:                                  ; preds = %vector.body179
  %cmp.n186 = icmp eq i64 %i.hf, %n.vec178
  br i1 %cmp.n186, label %.loopexit.i37, label %.lr.ph.i.i35.preheader251

.lr.ph.i.i35.preheader251:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block185
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i35.preheader ], [ %n.vec178, %middle.block185 ]
  %.0811.i.i.ph = phi ptr [ %.02031.i, %.lr.ph.i.i35.preheader ], [ %i.hh, %middle.block185 ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader251, %.lr.ph.i.i35
  %.012.i.i = phi i64 [ %i.hw, %.lr.ph.i.i35 ], [ %.012.i.i.ph, %.lr.ph.i.i35.preheader251 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.hv, %.lr.ph.i.i35 ], [ %.0811.i.i.ph, %.lr.ph.i.i35.preheader251 ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !122
  %i.ht = sext i16 %i.hs to i32
  %i.hu = shl nsw i32 %i.ht, 16
  %i.hv = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  store i32 %i.hu, ptr %.0811.i.i, align 4, !tbaa !118
  %i.hw = add nuw nsw i64 %.012.i.i, 1            ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %i.hw, %i.hf
  br i1 %exitcond.not.i.i36, label %.loopexit.i37, label %.lr.ph.i.i35, !llvm.loop !2249

.loopexit.i37:                                    ; preds = %.lr.ph.i.i35, %middle.block185, %bb.w
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.02031.i, i64 %i.hf
  %i.hy = sub i64 %.02230.i, %i.hb                ; 2 uses
  %i.hz = add i64 %i.hb, %.01932.i                ; 2 uses
  %.not.i38 = icmp eq i64 %i.hy, 0
  br i1 %.not.i38, label %ma_dr_wav_read_pcm_frames_s32__msadpcm_ima.exit, label %bb.v

ma_dr_wav_read_pcm_frames_s32__msadpcm_ima.exit:  ; preds = %bb.v, %.loopexit.i37
  %.019.lcssa.i = phi i64 [ %.01932.i, %bb.v ], [ %i.hz, %.loopexit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %bb.ax

bb.x:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !694
  %i.ic = zext i16 %i.ib to i32                   ; 2 uses
  %i.id = and i32 %i.ic, 7
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !695
  %i.ih = zext i16 %i.ig to i32
  %i.ii = mul nuw nsw i32 %i.ih, %i.ic
  %i.ij = lshr exact i32 %i.ii, 3
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41

bb.z:                                             ; preds = %bb.x
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.il = load i16, ptr %i.ik, align 8, !tbaa !696
  %i.im = zext i16 %i.il to i32
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41

ma_dr_wav_get_bytes_per_pcm_frame.exit.i41:       ; preds = %bb.y, %bb.z
  %.0.i.i39 = phi i32 [ %i.ij, %bb.y ], [ %i.im, %bb.z ] ; 5 uses
  %.old.i42 = icmp eq i32 %.0.i.i39, 0
  br i1 %.old.i42, label %ma_dr_wav_read_pcm_frames_s32__ieee.exit, label %bb.aa

bb.aa:                                            ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit.i41
  %i.in = zext i16 %i.k to i32                    ; 3 uses
  %i.io = udiv i32 %.0.i.i39, %i.in
  %i.ip = urem i32 %.0.i.i39, %i.in
  %.fr.i = freeze i32 %i.io                       ; 2 uses
  %i.iq = icmp samesign uge i32 %.0.i.i39, %i.in
  %.not.i43 = icmp eq i32 %i.ip, 0
  %or.cond280 = and i1 %i.iq, %.not.i43
  br i1 %or.cond280, label %.preheader.i44, label %ma_dr_wav_read_pcm_frames_s32__ieee.exit

.preheader.i44:                                   ; preds = %bb.aa
  %i.ir = udiv i32 4096, %.0.i.i39
  %i.is = zext nneg i32 %i.ir to i64              ; 3 uses
  %i.it = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us51.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i44, %.loopexit.us.i
  %.03050.us.i = phi i64 [ %i.ju, %.loopexit.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03149.us.i = phi ptr [ %i.js, %.loopexit.us.i ], [ %2, %.preheader.i44 ] ; 4 uses
  %.03348.us.i = phi i64 [ %i.jt, %.loopexit.us.i ], [ %.030, %.preheader.i44 ] ; 2 uses
  %.033..us.i = call i64 @llvm.umin.i64(i64 %.03348.us.i, i64 %i.is)
  %i.iu = call i64 @ma_dr_wav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %ma_dr_wav_read_pcm_frames_s32__ieee.exit, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.us.i
end_hunk_2
