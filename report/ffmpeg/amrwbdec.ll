Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/amrwbdec?download=true
inline.NumInlined: 56
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 53
begin_hunk_0_@amrwb_decode_frame:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 176 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 208 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 224 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 240 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ca
  %indvars.iv279 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next280, %bb.ca ] ; 7 uses
  %.0179253 = phi i32 [ %i.n, %.lr.ph ], [ %.1180, %bb.ca ] ; 3 uses
  %.0181252 = phi ptr [ %i.l, %.lr.ph ], [ %.1182, %bb.ca ] ; 4 uses
  %i.cs = mul nuw nsw i64 %indvars.iv279, 4696
  %i.ct = getelementptr i8, ptr %i.j, i64 %i.cs
  %scevgep380 = getelementptr i8, ptr %i.ct, i64 2984 ; 2 uses
  %i.cu = mul nuw nsw i64 %indvars.iv279, 4696
  %i.cv = getelementptr i8, ptr %i.j, i64 %i.cu
  %scevgep362 = getelementptr i8, ptr %i.cv, i64 3028
  %i.cw = mul nuw nsw i64 %indvars.iv279, 4696
  %i.cx = getelementptr i8, ptr %i.j, i64 %i.cw
  %scevgep333 = getelementptr i8, ptr %i.cx, i64 2728
  %i.cy = getelementptr inbounds nuw [4696 x i8], ptr %i.j, i64 %indvars.iv279 ; 170 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.cz = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv279
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !100 ; 3 uses
  %i.dc = load i8, ptr %.0181252, align 1, !tbaa !31
  %i.dd = lshr i8 %i.dc, 3
  %i.de = and i8 %i.dd, 15                        ; 2 uses
  %i.df = zext nneg i8 %i.de to i32               ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 112 ; 10 uses
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !101
  %i.dh = load i8, ptr %.0181252, align 1, !tbaa !31
  %i.di = lshr i8 %i.dh, 2
  %.lobit.i = and i8 %i.di, 1                     ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 116 ; 2 uses
  store i8 %.lobit.i, ptr %i.dj, align 4, !tbaa !102
  %i.dk = zext nneg i8 %i.de to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr @cf_sizes_wb, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !103
  %i.dn = zext i16 %i.dm to i32
  %i.do = add nuw nsw i32 %i.dn, 7
  %i.dp = lshr i32 %i.do, 3                       ; 2 uses
  %i.dq = add nuw nsw i32 %i.dp, 1                ; 2 uses
  %.not = icmp eq i8 %.lobit.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #10
  %.pre = load i32, ptr %i.dg, align 8, !tbaa !101
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.dr = phi i32 [ %.pre, %bb.c ], [ %i.df, %bb.b ] ; 6 uses
  %i.ds = icmp eq i32 %i.dr, 15
  br i1 %i.ds, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dt = load i8, ptr %i.dj, align 4, !tbaa !102
  %.not189 = icmp eq i8 %i.dt, 0
  br i1 %.not189, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.du = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv279
  %i.dw = load i32, ptr %i.o, align 8, !tbaa !98
  %i.dx = call i32 @av_samples_set_silence(ptr noundef %i.dv, i32 noundef 0, i32 noundef %i.dw, i32 noundef 1, i32 noundef 3) #10 ; 0 uses
  br label %bb.ca

bb.g:                                             ; preds = %bb.e
  %i.dy = icmp ugt i32 %i.dr, 9
  br i1 %i.dy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.dr) #10
  br label %.thread226

bb.i:                                             ; preds = %bb.g
  %.not190 = icmp sgt i32 %.0179253, %i.dp
  br i1 %.not190, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %.0179253) #10
  store i32 0, ptr %2, align 4, !tbaa !30
  br label %.thread226

bb.k:                                             ; preds = %bb.i
  %i.dz = icmp eq i32 %i.dr, 9
  br i1 %i.dz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #10
  br label %.thread226

bb.m:                                             ; preds = %bb.k
  %i.ea = getelementptr inbounds nuw i8, ptr %.0181252, i64 1 ; 3 uses
  %i.eb = zext nneg i32 %i.dr to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr @amr_bit_orderings_by_mode, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cy, i8 0, i64 112, i1 false)
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !103 ; 2 uses
  %.not20.i = icmp eq i16 %i.ee, 0
  br i1 %.not20.i, label %ff_amr_bit_reorder.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.o
  %i.ef = phi i16 [ %i.fy, %bb.o ], [ %i.ee, %bb.m ] ; 3 uses
  %.021.i = phi ptr [ %scevgep23.i, %bb.o ], [ %i.ed, %bb.m ] ; 3 uses
  %i.eg = zext i16 %i.ef to i32                   ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.021.i, i64 2
  %i.ei = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 2 uses
  %i.ej = load i16, ptr %i.eh, align 2, !tbaa !103
  %xtraiter = and i32 %i.eg, 1
  %i.ek = icmp eq i16 %i.ef, 1
  br i1 %i.ek, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.eg, 65534
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.new
  %.119.i = phi ptr [ %i.ei, %.lr.ph.i.new ], [ %i.eu, %bb.n ] ; 3 uses
  %.01318.i = phi i16 [ 0, %.lr.ph.i.new ], [ %i.fi, %bb.n ]
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.n ]
  %i.el = getelementptr inbounds nuw i8, ptr %.119.i, i64 2
  %i.em = load i16, ptr %.119.i, align 2, !tbaa !103 ; 2 uses
  %i.en = lshr i16 %i.em, 3
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !31
  %i.er = zext i8 %i.eq to i16
  %i.es = and i16 %i.em, 7
  %i.et = lshr i16 %i.er, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %.119.i, i64 4 ; 2 uses
  %i.ev = load i16, ptr %i.el, align 2, !tbaa !103 ; 2 uses
  %i.ew = shl i16 %.01318.i, 2
  %i.ex = shl nuw nsw i16 %i.et, 1
  %i.ey = and i16 %i.ex, 2
  %i.ez = or disjoint i16 %i.ew, %i.ey
  %i.fa = lshr i16 %i.ev, 3
  %i.fb = zext nneg i16 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !31
  %i.fe = zext i8 %i.fd to i16
  %i.ff = and i16 %i.ev, 7
  %i.fg = lshr i16 %i.fe, %i.ff
  %i.fh = and i16 %i.fg, 1
  %i.fi = or disjoint i16 %i.fh, %i.ez            ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.n, !llvm.loop !51

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.o, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i
  %.119.i.epil.init = phi ptr [ %i.ei, %.lr.ph.i ], [ %i.eu, %.unr-lcssa ]
  %.01318.i.epil.init = phi i16 [ 0, %.lr.ph.i ], [ %i.fi, %.unr-lcssa ]
  %lcmp.mod444 = trunc i16 %i.ef to i1
  call void @llvm.assume(i1 %lcmp.mod444)
  %i.fj = load i16, ptr %.119.i.epil.init, align 2, !tbaa !103 ; 2 uses
  %i.fk = shl i16 %.01318.i.epil.init, 1
  %i.fl = lshr i16 %i.fj, 3
  %i.fm = zext nneg i16 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !31
  %i.fp = zext i8 %i.fo to i16
  %i.fq = and i16 %i.fj, 7
  %i.fr = lshr i16 %i.fp, %i.fq
  %i.fs = and i16 %i.fr, 1
  %i.ft = or disjoint i16 %i.fs, %i.fk
  br label %bb.o

bb.o:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i16 [ %i.fi, %.unr-lcssa ], [ %i.ft, %.epil.preheader ]
  %scevgep.i = getelementptr i8, ptr %.021.i, i64 6
  %4 = add nsw i32 %i.eg, -1
  %i.fu = zext nneg i32 %4 to i64
  %5 = shl nuw nsw i64 %i.fu, 1
  %scevgep23.i = getelementptr i8, ptr %scevgep.i, i64 %5 ; 2 uses
  %i.fv = lshr i16 %i.ej, 1
  %i.fw = zext nneg i16 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.fw
  store i16 %.lcssa, ptr %i.fx, align 2, !tbaa !103
  %i.fy = load i16, ptr %scevgep23.i, align 2, !tbaa !103 ; 2 uses
  %.not.i = icmp eq i16 %i.fy, 0
  br i1 %.not.i, label %ff_amr_bit_reorder.exit, label %.lr.ph.i, !llvm.loop !52

ff_amr_bit_reorder.exit:                          ; preds = %bb.o, %bb.m
  %i.fz = icmp eq i32 %i.dr, 0
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cy, i64 120 ; 2 uses
  %i.gc = load i16, ptr %i.ga, align 2, !tbaa !103
  %i.gd = zext i16 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [18 x i8], ptr @dico1_isf, i64 %i.gd ; 9 uses
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !103
  %i.gg = sitofp i16 %i.gf to float
  %i.gh = fmul nnan nsz float %i.gg, f0x38000000  ; 3 uses
  br i1 %i.fz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %ff_amr_bit_reorder.exit
  store float %i.gh, ptr %i.gb, align 8, !tbaa !43
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !103
  %i.gk = sitofp i16 %i.gj to float
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cy, i64 124
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gn = load <2 x i16>, ptr %i.gm, align 2, !tbaa !103
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cy, i64 140
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cy, i64 148
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !103
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.gv = load i16, ptr %i.gu, align 4, !tbaa !103
  %i.gw = zext i16 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [14 x i8], ptr @dico2_isf, i64 %i.gw ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cy, i64 156
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cy, i64 172
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !103
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cy, i64 180
  %i.he = getelementptr inbounds nuw i8, ptr %i.cy, i64 6
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !103
  %i.hg = zext i16 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [10 x i8], ptr @dico21_isf_36b, i64 %i.hg ; 2 uses
  %i.hi = insertelement <4 x float> poison, float %i.gh, i64 0
  %i.hj = insertelement <4 x float> %i.hi, float %i.gk, i64 1
  %i.hk = shufflevector <2 x i16> %i.gn, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hl = sitofp <4 x i16> %i.hk to <4 x float>
  %i.hm = shufflevector <4 x float> %i.hj, <4 x float> %i.hl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hn = fmul nnan nsz <4 x float> %i.hm, <float 1.000000e+00, float f0x38000000, float f0x38000000, float f0x38000000> ; 2 uses
  %i.ho = load <4 x i16>, ptr %i.hh, align 2, !tbaa !103
  %i.hp = sitofp <4 x i16> %i.ho to <4 x float>
  %i.hq = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> splat (float f0x38000000), <4 x float> %i.hn)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !103
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.hu = load i16, ptr %i.ht, align 8, !tbaa !103
  %i.hv = zext i16 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr @dico22_isf_36b, i64 %i.hv ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load i16, ptr %i.hx, align 4, !tbaa !103
  %i.hz = load <4 x i16>, ptr %i.go, align 2, !tbaa !103
  %i.ia = sitofp <4 x i16> %i.hz to <4 x float>
  %i.ib = fmul nnan nsz <4 x float> %i.ia, splat (float f0x38000000) ; 4 uses
  %i.ic = shufflevector <4 x float> %i.hn, <4 x float> %i.ib, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  store <4 x float> %i.ic, ptr %i.gl, align 4, !tbaa !43
  %i.id = shufflevector <4 x float> %i.ib, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.id, ptr %i.gp, align 4, !tbaa !43
  %i.ie = extractelement <4 x float> %i.ib, i64 3
  store float %i.ie, ptr %i.gq, align 4, !tbaa !43
  %i.if = load <2 x i16>, ptr %i.hw, align 8, !tbaa !103
  %i.ig = shufflevector <2 x i16> %i.if, <2 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ih = insertelement <4 x i16> %i.ig, i16 %i.hs, i64 0
  %i.ii = insertelement <4 x i16> %i.ih, i16 %i.hy, i64 3
  %i.ij = sitofp <4 x i16> %i.ii to <4 x float>
  %i.ik = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ij, <4 x float> splat (float f0x38000000), <4 x float> %i.ib)
  %i.il = getelementptr inbounds nuw i8, ptr %i.hw, i64 6
  %i.im = load i16, ptr %i.il, align 2, !tbaa !103
  %i.in = getelementptr inbounds nuw i8, ptr %i.cy, i64 10
  %i.io = load i16, ptr %i.in, align 2, !tbaa !103
  %i.ip = zext i16 %i.io to i64
  %i.iq = getelementptr inbounds nuw [14 x i8], ptr @dico23_isf_36b, i64 %i.ip ; 3 uses
  %i.ir = load <4 x i16>, ptr %i.gx, align 2, !tbaa !103
  %i.is = sitofp <4 x i16> %i.ir to <4 x float>
  %i.it = fmul nnan nsz <4 x float> %i.is, splat (float f0x38000000)
  %i.iu = load <4 x i16>, ptr %i.iq, align 2, !tbaa !103
  %i.iv = sitofp <4 x i16> %i.iu to <4 x float>
  %i.iw = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iv, <4 x float> splat (float f0x38000000), <4 x float> %i.it)
  store <4 x float> %i.iw, ptr %i.gy, align 4, !tbaa !43
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.iy = load <2 x i16>, ptr %i.gz, align 2, !tbaa !103
  %i.iz = sitofp <2 x i16> %i.iy to <2 x float>
  %i.ja = fmul nnan nsz <2 x float> %i.iz, splat (float f0x38000000)
  %i.jb = load <2 x i16>, ptr %i.ix, align 2, !tbaa !103
  %i.jc = sitofp <2 x i16> %i.jb to <2 x float>
  %i.jd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> splat (float f0x38000000), <2 x float> %i.ja)
  store <2 x float> %i.jd, ptr %i.ha, align 4, !tbaa !43
  %i.je = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !103
  %i.jg = insertelement <2 x i16> poison, i16 %i.gs, i64 0
  %i.jh = insertelement <2 x i16> %i.jg, i16 %i.hc, i64 1
  %i.ji = sitofp <2 x i16> %i.jh to <2 x float>
  %i.jj = fmul nnan nsz <2 x float> %i.ji, splat (float f0x38000000) ; 2 uses
  %i.jk = extractelement <2 x float> %i.jj, i64 0
  store float %i.jk, ptr %i.gt, align 8, !tbaa !43
  %i.jl = insertelement <2 x i16> poison, i16 %i.im, i64 0
  %i.jm = insertelement <2 x i16> %i.jl, i16 %i.jf, i64 1
  %i.jn = sitofp <2 x i16> %i.jm to <2 x float>
  %i.jo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jn, <2 x float> splat (float f0x38000000), <2 x float> %i.jj) ; 2 uses
  %i.jp = extractelement <2 x float> %i.jo, i64 1
  store float %i.jp, ptr %i.hd, align 4, !tbaa !43
  %i.jq = extractelement <2 x float> %i.jo, i64 0
  br label %bb.r

bb.q:                                             ; preds = %ff_amr_bit_reorder.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !103
  %i.jt = sitofp i16 %i.js to float
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.jv = load <2 x i16>, ptr %i.ju, align 2, !tbaa !103
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.cy, i64 136
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !103
  %i.ka = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  %i.kb = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.kc = load i16, ptr %i.kb, align 4, !tbaa !103
  %i.kd = zext i16 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [14 x i8], ptr @dico2_isf, i64 %i.kd ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !103
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 6
  %i.ki = getelementptr inbounds nuw i8, ptr %i.cy, i64 168
  %i.kj = getelementptr inbounds nuw i8, ptr %i.cy, i64 6
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !103
  %i.kl = zext i16 %i.kk to i64
  %i.km = getelementptr inbounds nuw [6 x i8], ptr @dico21_isf, i64 %i.kl ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !103
  %i.kp = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.kq = load i16, ptr %i.kp, align 8, !tbaa !103
  %i.kr = zext i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [6 x i8], ptr @dico22_isf, i64 %i.kr ; 2 uses
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !103
  %i.ku = insertelement <4 x float> poison, float %i.gh, i64 0
  %i.kv = insertelement <4 x float> %i.ku, float %i.jt, i64 1
  %i.kw = shufflevector <2 x i16> %i.jv, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kx = sitofp <4 x i16> %i.kw to <4 x float>
  %i.ky = shufflevector <4 x float> %i.kv, <4 x float> %i.kx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kz = fmul nnan nsz <4 x float> %i.ky, <float 1.000000e+00, float f0x38000000, float f0x38000000, float f0x38000000>
  %i.la = load <2 x i16>, ptr %i.km, align 2, !tbaa !103
  %i.lb = shufflevector <2 x i16> %i.la, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lc = insertelement <4 x i16> %i.lb, i16 %i.ko, i64 2
  %i.ld = insertelement <4 x i16> %i.lc, i16 %i.kt, i64 3
  %i.le = sitofp <4 x i16> %i.ld to <4 x float>
  %i.lf = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.le, <4 x float> splat (float f0x38000000), <4 x float> %i.kz) ; 2 uses
  store <4 x float> %i.lf, ptr %i.gb, align 8, !tbaa !43
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.lh = getelementptr inbounds nuw i8, ptr %i.cy, i64 10
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !103
  %i.lj = zext i16 %i.li to i64
  %i.lk = getelementptr inbounds nuw [6 x i8], ptr @dico23_isf, i64 %i.lj ; 2 uses
  %i.ll = load <4 x i16>, ptr %i.jw, align 2, !tbaa !103
  %i.lm = sitofp <4 x i16> %i.ll to <4 x float>
  %i.ln = fmul nnan nsz <4 x float> %i.lm, splat (float f0x38000000)
  %i.lo = load <2 x i16>, ptr %i.lg, align 2, !tbaa !103
  %i.lp = load <2 x i16>, ptr %i.lk, align 2, !tbaa !103
  %i.lq = shufflevector <2 x i16> %i.lo, <2 x i16> %i.lp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lr = sitofp <4 x i16> %i.lq to <4 x float>
  %i.ls = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lr, <4 x float> splat (float f0x38000000), <4 x float> %i.ln) ; 2 uses
  store <4 x float> %i.ls, ptr %i.jx, align 8, !tbaa !43
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !103
  %i.lv = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.lw = load i16, ptr %i.lv, align 4, !tbaa !103
  %i.lx = zext i16 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [6 x i8], ptr @dico24_isf, i64 %i.lx ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !103
  %i.mb = load <2 x i16>, ptr %i.ke, align 2, !tbaa !103
  %i.mc = shufflevector <2 x i16> %i.mb, <2 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.md = insertelement <4 x i16> %i.mc, i16 %i.jz, i64 0
  %i.me = insertelement <4 x i16> %i.md, i16 %i.kg, i64 3
  %i.mf = sitofp <4 x i16> %i.me to <4 x float>
  %i.mg = fmul nnan nsz <4 x float> %i.mf, splat (float f0x38000000)
  %i.mh = load <2 x i16>, ptr %i.ly, align 2, !tbaa !103
  %i.mi = shufflevector <2 x i16> %i.mh, <2 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.mj = insertelement <4 x i16> %i.mi, i16 %i.lu, i64 0
  %i.mk = insertelement <4 x i16> %i.mj, i16 %i.ma, i64 3
  %i.ml = sitofp <4 x i16> %i.mk to <4 x float>
  %i.mm = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ml, <4 x float> splat (float f0x38000000), <4 x float> %i.mg) ; 2 uses
  store <4 x float> %i.mm, ptr %i.ka, align 8, !tbaa !43
  %i.mn = getelementptr inbounds nuw i8, ptr %i.cy, i64 14
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !103
  %i.mp = zext i16 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr @dico25_isf, i64 %i.mp
end_hunk_0
