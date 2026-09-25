Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/amrnbdec?download=true
inline.NumInlined: 22
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@amrnb_decode_frame:bb.a
  %i.er = shl i32 %.01318.i.i.epil.init, 1
  %i.es = lshr i32 %i.eq, 3
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !31
  %i.ew = zext i8 %i.ev to i32
  %i.ex = and i32 %i.eq, 7
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = and i32 %i.ey, 1
  %i.fa = or disjoint i32 %i.ez, %i.er
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.eo, %.unr-lcssa ], [ %i.fa, %.epil.preheader ]
  %i.fb = zext i8 %i.dj to i64
  %i.fc = getelementptr i8, ptr %.021.i.i, i64 %i.fb
  %scevgep23.i.i = getelementptr i8, ptr %i.fc, i64 2 ; 2 uses
  %i.fd = trunc i32 %.lcssa to i16
  %i.fe = lshr i8 %i.dn, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.ff
  store i16 %i.fd, ptr %i.fg, align 2, !tbaa !43
  %i.fh = load i8, ptr %scevgep23.i.i, align 1, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i, label %.loopexit206, label %.lr.ph.i.i, !llvm.loop !60

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.fi = getelementptr inbounds nuw i8, ptr %i.co, i64 116
  store i32 15, ptr %i.fi, align 4, !tbaa !48
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %bb.bb

.loopexit162:                                     ; preds = %bb.d
  %i.fj = getelementptr inbounds nuw i8, ptr %i.co, i64 116
  store i32 8, ptr %i.fj, align 4, !tbaa !48
  call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.5) #7
  br label %bb.bb

.loopexit206:                                     ; preds = %bb.g, %bb.e
  %i.fk = getelementptr inbounds nuw i8, ptr %i.co, i64 116 ; 7 uses
  store i32 %i.cv, ptr %i.fk, align 4, !tbaa !48
  %i.fl = add nuw nsw i32 %i.de, 1                ; 2 uses
  %i.fm = icmp eq i32 %i.cv, 7
  br i1 %i.fm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.fn = load i16, ptr %i.co, align 4, !tbaa !43
  %i.fo = zext i16 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_1, i64 %i.fo
  store ptr %i.fp, ptr %i.k, align 16, !tbaa !49
  %i.fq = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !43
  %i.fs = zext i16 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_2, i64 %i.fs
  store ptr %i.ft, ptr %i.aa, align 8, !tbaa !49
  %i.fu = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 4, !tbaa !43 ; 2 uses
  %i.fw = lshr i16 %i.fv, 1
  %i.fx = zext nneg i16 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_3, i64 %i.fx
  store ptr %i.fy, ptr %i.ab, align 16, !tbaa !49
  %i.fz = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !43
  %i.gb = zext i16 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_4, i64 %i.gb
  store ptr %i.gc, ptr %i.ac, align 8, !tbaa !49
  %i.gd = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ge = load i16, ptr %i.gd, align 4, !tbaa !43
  %i.gf = zext i16 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_5, i64 %i.gf
  store ptr %i.gg, ptr %i.ad, align 16, !tbaa !49
  %i.gh = getelementptr inbounds nuw i8, ptr %i.co, i64 120
  %i.gi = load <4 x i16>, ptr %i.gh, align 4, !tbaa !43
  %i.gj = sitofp <4 x i16> %i.gi to <4 x double>
  %i.gk = fmul nnan nsz <4 x double> %i.gj, splat (double f0x3FCF400000000000)
  %i.gl = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gk, <4 x double> splat (double 6.500000e-01), <4 x double> <double f0x40751E4180000000, double f0x407FB147A0000000, double f0x408A17B020000000, double f0x40937C47A0000000>)
  %i.gm = fptrunc <4 x double> %i.gl to <4 x float>
  store <4 x float> %i.gm, ptr %i.j, align 16, !tbaa !44
  %i.gn = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %i.go = load <4 x i16>, ptr %i.gn, align 4, !tbaa !43
  %i.gp = sitofp <4 x i16> %i.go to <4 x double>
  %i.gq = fmul nnan nsz <4 x double> %i.gp, splat (double f0x3FCF400000000000)
  %i.gr = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gq, <4 x double> splat (double 6.500000e-01), <4 x double> <double 1.646000e+03, double f0x409EFBA3E0000000, double f0x40A2CFEB80000000, double f0x40A5280520000000>)
  %i.gs = fptrunc <4 x double> %i.gr to <4 x float>
  store <4 x float> %i.gs, ptr %i.ae, align 16, !tbaa !44
  %i.gt = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %i.gu = load <2 x i16>, ptr %i.gt, align 4, !tbaa !43
  %i.gv = sitofp <2 x i16> %i.gu to <2 x double>
  %i.gw = fmul nnan nsz <2 x double> %i.gv, splat (double f0x3FCF400000000000)
  %i.gx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> splat (double 6.500000e-01), <2 x double> <double 3.104000e+03, double f0x40AA21F0A0000000>)
  %i.gy = fptrunc <2 x double> %i.gx to <2 x float>
  store <2 x float> %i.gy, ptr %i.af, align 16, !tbaa !44
  %i.gz = getelementptr inbounds nuw i8, ptr %i.co, i64 144
  %i.ha = getelementptr inbounds nuw i8, ptr %i.co, i64 224 ; 2 uses
  %i.hb = and i16 %i.fv, 1
  %i.hc = zext nneg i16 %i.hb to i32
  call fastcc void @lsf2lsp_for_mode12k2(ptr noundef nonnull %i.co, ptr noundef nonnull %i.ha, ptr noundef %i.j, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.hc, i32 noundef 0)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.co, i64 384 ; 2 uses
  %i.he = load i16, ptr %i.fu, align 4, !tbaa !43
  %i.hf = and i16 %i.he, 1
  %i.hg = zext nneg i16 %i.hf to i32
  call fastcc void @lsf2lsp_for_mode12k2(ptr noundef nonnull %i.co, ptr noundef nonnull %i.hd, ptr noundef %i.j, ptr noundef %i.k, i32 noundef 2, i32 noundef %i.hg, i32 noundef 1)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.co, i64 464
  %i.hi = load <2 x double>, ptr %i.hh, align 8, !tbaa !41
  %i.hj = load <2 x double>, ptr %i.ha, align 8, !tbaa !41 ; 2 uses
  %i.hk = fmul nsz <2 x double> %i.hj, splat (double 5.000000e-01)
  %i.hl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> splat (double 5.000000e-01), <2 x double> %i.hk)
  store <2 x double> %i.hl, ptr %i.gz, align 8, !tbaa !41
  %i.hm = getelementptr inbounds nuw i8, ptr %i.co, i64 480
  %i.hn = getelementptr inbounds nuw i8, ptr %i.co, i64 240
  %i.ho = getelementptr inbounds nuw i8, ptr %i.co, i64 160
  %i.hp = load <2 x double>, ptr %i.hm, align 8, !tbaa !41
  %i.hq = load <2 x double>, ptr %i.hn, align 8, !tbaa !41 ; 2 uses
  %i.hr = fmul nsz <2 x double> %i.hq, splat (double 5.000000e-01)
  %i.hs = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> splat (double 5.000000e-01), <2 x double> %i.hr)
  store <2 x double> %i.hs, ptr %i.ho, align 8, !tbaa !41
  %i.ht = getelementptr inbounds nuw i8, ptr %i.co, i64 496
  %i.hu = getelementptr inbounds nuw i8, ptr %i.co, i64 256
  %i.hv = getelementptr inbounds nuw i8, ptr %i.co, i64 176
  %i.hw = load <2 x double>, ptr %i.ht, align 8, !tbaa !41
  %i.hx = load <2 x double>, ptr %i.hu, align 8, !tbaa !41 ; 2 uses
  %i.hy = fmul nsz <2 x double> %i.hx, splat (double 5.000000e-01)
  %i.hz = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> splat (double 5.000000e-01), <2 x double> %i.hy)
  store <2 x double> %i.hz, ptr %i.hv, align 8, !tbaa !41
  %i.ia = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  %i.ib = getelementptr inbounds nuw i8, ptr %i.co, i64 272
  %i.ic = getelementptr inbounds nuw i8, ptr %i.co, i64 192
  %i.id = load <2 x double>, ptr %i.ia, align 8, !tbaa !41
  %i.ie = load <2 x double>, ptr %i.ib, align 8, !tbaa !41 ; 2 uses
  %i.if = fmul nsz <2 x double> %i.ie, splat (double 5.000000e-01)
  %i.ig = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> splat (double 5.000000e-01), <2 x double> %i.if)
  store <2 x double> %i.ig, ptr %i.ic, align 8, !tbaa !41
  %i.ih = getelementptr inbounds nuw i8, ptr %i.co, i64 528
  %i.ii = getelementptr inbounds nuw i8, ptr %i.co, i64 288
  %i.ij = getelementptr inbounds nuw i8, ptr %i.co, i64 208
  %i.ik = load <2 x double>, ptr %i.ih, align 8, !tbaa !41
  %i.il = load <2 x double>, ptr %i.ii, align 8, !tbaa !41 ; 2 uses
  %i.im = fmul nsz <2 x double> %i.il, splat (double 5.000000e-01)
  %i.in = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> splat (double 5.000000e-01), <2 x double> %i.im)
  store <2 x double> %i.in, ptr %i.ij, align 8, !tbaa !41
  %i.io = getelementptr inbounds nuw i8, ptr %i.co, i64 304
  %i.ip = load <2 x double>, ptr %i.hd, align 8, !tbaa !41
  %i.iq = fmul nsz <2 x double> %i.ip, splat (double 5.000000e-01)
  %i.ir = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> splat (double 5.000000e-01), <2 x double> %i.iq)
  store <2 x double> %i.ir, ptr %i.io, align 8, !tbaa !41
  %i.is = getelementptr inbounds nuw i8, ptr %i.co, i64 400
  %i.it = getelementptr inbounds nuw i8, ptr %i.co, i64 320
  %i.iu = load <2 x double>, ptr %i.is, align 8, !tbaa !41
  %i.iv = fmul nsz <2 x double> %i.iu, splat (double 5.000000e-01)
  %i.iw = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> splat (double 5.000000e-01), <2 x double> %i.iv)
  store <2 x double> %i.iw, ptr %i.it, align 8, !tbaa !41
  %i.ix = getelementptr inbounds nuw i8, ptr %i.co, i64 416
  %i.iy = getelementptr inbounds nuw i8, ptr %i.co, i64 336
  %i.iz = load <2 x double>, ptr %i.ix, align 8, !tbaa !41
  %i.ja = fmul nsz <2 x double> %i.iz, splat (double 5.000000e-01)
  %i.jb = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ja)
  store <2 x double> %i.jb, ptr %i.iy, align 8, !tbaa !41
  %i.jc = getelementptr inbounds nuw i8, ptr %i.co, i64 432
  %i.jd = getelementptr inbounds nuw i8, ptr %i.co, i64 352
  %i.je = load <2 x double>, ptr %i.jc, align 8, !tbaa !41
  %i.jf = fmul nsz <2 x double> %i.je, splat (double 5.000000e-01)
  %i.jg = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> splat (double 5.000000e-01), <2 x double> %i.jf)
  store <2 x double> %i.jg, ptr %i.jd, align 8, !tbaa !41
  %i.jh = getelementptr inbounds nuw i8, ptr %i.co, i64 448
  %i.ji = getelementptr inbounds nuw i8, ptr %i.co, i64 368
  %i.jj = load <2 x double>, ptr %i.jh, align 8, !tbaa !41
  %i.jk = fmul nsz <2 x double> %i.jj, splat (double 5.000000e-01)
  %i.jl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> splat (double 5.000000e-01), <2 x double> %i.jk)
  store <2 x double> %i.jl, ptr %i.ji, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  br label %.preheader

bb.i:                                             ; preds = %.loopexit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.jm = icmp eq i32 %i.cv, 5
  %i.jn = select i1 %i.jm, ptr @lsf_3_1_MODE_7k95, ptr @lsf_3_1
  %i.jo = load i16, ptr %i.co, align 4, !tbaa !43
  %i.jp = zext i16 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [6 x i8], ptr %i.jn, i64 %i.jp ; 3 uses
  %.sroa.6.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %.sroa.6.0.copyload46.i = load i16, ptr %.sroa.6.0..sroa_idx45.i, align 2 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !43
  %i.jt = zext i16 %i.js to i32
  %i.ju = icmp samesign ult i32 %i.cv, 2          ; 2 uses
  %i.jv = zext i1 %i.ju to i32
  %i.jw = shl nuw nsw i32 %i.jt, %i.jv
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [6 x i8], ptr @lsf_3_2, i64 %i.jx ; 2 uses
  %.sroa.7.6.copyload.i = load i16, ptr %i.jy, align 2 ; 2 uses
  %.sroa.9.6..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 2 ; 2 uses
  %i.jz = select i1 %i.ju, ptr @lsf_3_3_MODE_5k15, ptr @lsf_3_3
  %i.ka = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.kb = load i16, ptr %i.ka, align 4, !tbaa !43
  %i.kc = zext i16 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8            ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.co, i64 120 ; 2 uses
  %i.kg = load <2 x i16>, ptr %i.jq, align 2
  %i.kh = shufflevector <2 x i16> %i.kg, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ki = insertelement <4 x i16> %i.kh, i16 %.sroa.6.0.copyload46.i, i64 2
  %i.kj = insertelement <4 x i16> %i.ki, i16 %.sroa.7.6.copyload.i, i64 3
  %i.kk = sitofp <4 x i16> %i.kj to <4 x float>
  %i.kl = load <4 x i16>, ptr %i.kf, align 4, !tbaa !43
  %i.km = sitofp <4 x i16> %i.kl to <4 x float>
  %i.kn = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.km, <4 x float> <float 2.916260e-01, float 3.286440e-01, float 3.836360e-01, float 4.056400e-01>, <4 x float> %i.kk)
  %i.ko = fpext <4 x float> %i.kn to <4 x double>
  %i.kp = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ko, <4 x double> splat (double f0x3F00000000000000), <4 x double> <double f0x3FA827FE56041894, double f0x3FB1C0010624DD2F, double f0x3FBD83FF5C28F5C3, double f0x3FC56FFC083126EA>)
  %i.kq = fptrunc <4 x double> %i.kp to <4 x float>
  store <4 x float> %i.kq, ptr %i.i, align 16, !tbaa !44
  %i.kr = getelementptr inbounds nuw i8, ptr %i.co, i64 128 ; 2 uses
  %.sroa.11.12.extract.trunc.i = trunc i64 %i.ke to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.co, i64 132
  %.sroa.11.14.extract.shift.i = lshr i64 %i.ke, 16
  %.sroa.11.14.extract.trunc.i = trunc i64 %.sroa.11.14.extract.shift.i to i16
  %i.kt = load <2 x i16>, ptr %.sroa.9.6..sroa_idx.i, align 2
  %i.ku = shufflevector <2 x i16> %i.kt, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kv = insertelement <4 x i16> %i.ku, i16 %.sroa.11.12.extract.trunc.i, i64 2
  %i.kw = insertelement <4 x i16> %i.kv, i16 %.sroa.11.14.extract.trunc.i, i64 3
  %i.kx = sitofp <4 x i16> %i.kw to <4 x float>
  %i.ky = load <4 x i16>, ptr %i.kr, align 4, !tbaa !43
  %i.kz = sitofp <4 x i16> %i.ky to <4 x float>
  %i.la = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kz, <4 x float> <float 4.388730e-01, float 3.555600e-01, float 3.231200e-01, float 2.980650e-01>, <4 x float> %i.kx)
  %i.lb = fpext <4 x float> %i.la to <4 x double>
  %i.lc = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lb, <4 x double> splat (double f0x3F00000000000000), <4 x double> <double f0x3FCB3C01A9FBE76D, double f0x3FD05F01BA5E3540, double f0x3FD39F7F7CED9169, double f0x3FD5EE828F5C28F6>)
  %i.ld = fptrunc <4 x double> %i.lc to <4 x float>
  store <4 x float> %i.ld, ptr %i.y, align 16, !tbaa !44
  %i.le = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %.sroa.11.18.extract.shift.i = lshr i64 %i.ke, 48
  %.sroa.11.16.extract.shift.i = lshr i64 %i.ke, 32
  %.sroa.11.18.extract.trunc.i = trunc nuw i64 %.sroa.11.18.extract.shift.i to i16
  %.sroa.11.16.extract.trunc.i = trunc i64 %.sroa.11.16.extract.shift.i to i16
  %5 = insertelement <2 x i16> poison, i16 %.sroa.11.16.extract.trunc.i, i64 0
  %6 = insertelement <2 x i16> %5, i16 %.sroa.11.18.extract.trunc.i, i64 1
  %i.lf = sitofp <2 x i16> %6 to <2 x float>
  %i.lg = load <2 x i16>, ptr %i.le, align 4, !tbaa !43
  %i.lh = sitofp <2 x i16> %i.lg to <2 x float>
  %i.li = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> <float 2.622380e-01, float 1.978760e-01>, <2 x float> %i.lf)
  %i.lj = fpext <2 x float> %i.li to <2 x double>
  %i.lk = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lj, <2 x double> splat (double f0x3F00000000000000), <2 x double> <double f0x3FD8EF00624DD2F2, double f0x3FDAC8FD916872B0>)
  %i.ll = fptrunc <2 x double> %i.lk to <2 x float>
  store <2 x float> %i.ll, ptr %i.z, align 16, !tbaa !44
  call void @ff_set_min_dist_lsf(ptr noundef nonnull %i.i, double noundef 6.256100e-03, i32 noundef 10) #7
  %i.lm = getelementptr inbounds nuw i8, ptr %i.co, i64 2360 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.co, i64 544
  %i.lo = getelementptr inbounds nuw i8, ptr %i.co, i64 664 ; 5 uses
  %i.lp = load ptr, ptr %i.lm, align 8, !tbaa !50
  call void %i.lp(ptr noundef nonnull %i.ln, ptr noundef nonnull %i.lo, ptr noundef nonnull %i.i, float noundef 7.500000e-01, float noundef 2.500000e-01, i32 noundef 10) #7, !inline_history !61
  %i.lq = load ptr, ptr %i.lm, align 8, !tbaa !50
  %i.lr = getelementptr inbounds nuw i8, ptr %i.co, i64 584
  call void %i.lq(ptr noundef nonnull %i.lr, ptr noundef nonnull %i.lo, ptr noundef nonnull %i.i, float noundef 5.000000e-01, float noundef 5.000000e-01, i32 noundef 10) #7, !inline_history !61
  %i.ls = load ptr, ptr %i.lm, align 8, !tbaa !50
  %i.lt = getelementptr inbounds nuw i8, ptr %i.co, i64 624
  call void %i.ls(ptr noundef nonnull %i.lt, ptr noundef nonnull %i.lo, ptr noundef nonnull %i.i, float noundef 2.500000e-01, float noundef 7.500000e-01, i32 noundef 10) #7, !inline_history !61
  %i.lu = load ptr, ptr %i.lm, align 8, !tbaa !50
  call void %i.lu(ptr noundef nonnull %i.lo, ptr noundef nonnull %i.lo, ptr noundef nonnull %i.i, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 10) #7, !inline_history !61
  %i.lv = load <2 x i16>, ptr %i.jq, align 2
  %i.lw = shufflevector <2 x i16> %i.lv, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lx = insertelement <4 x i16> %i.lw, i16 %.sroa.6.0.copyload46.i, i64 2
  %i.ly = insertelement <4 x i16> %i.lx, i16 %.sroa.7.6.copyload.i, i64 3
  store <4 x i16> %i.ly, ptr %i.kf, align 8
  %i.lz = load <2 x i16>, ptr %.sroa.9.6..sroa_idx.i, align 2
  store <2 x i16> %i.lz, ptr %i.kr, align 8
  store i64 %i.ke, ptr %i.ks, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.co, i64 384 ; 2 uses
  call void @ff_acelp_lsf2lspd(ptr noundef nonnull %i.ma, ptr noundef nonnull %i.i, i32 noundef 10) #7
  %i.mb = getelementptr inbounds nuw i8, ptr %i.co, i64 464
  %i.mc = getelementptr i8, ptr %i.co, i64 144
  %i.md = load <2 x double>, ptr %i.mb, align 8, !tbaa !41 ; 4 uses
  %i.me = load <2 x double>, ptr %i.ma, align 8, !tbaa !41
  %i.mf = fsub nsz <2 x double> %i.me, %i.md
  %i.mg = fmul nsz <2 x double> %i.mf, splat (double 2.500000e-01) ; 3 uses
  %i.mh = fadd nsz <2 x double> %i.md, %i.mg
  store <2 x double> %i.mh, ptr %i.mc, align 8, !tbaa !41
  %i.mi = getelementptr inbounds nuw i8, ptr %i.co, i64 480
  %i.mj = getelementptr inbounds nuw i8, ptr %i.co, i64 400
  %i.mk = getelementptr i8, ptr %i.co, i64 160
  %i.ml = load <2 x double>, ptr %i.mi, align 8, !tbaa !41 ; 4 uses
  %i.mm = load <2 x double>, ptr %i.mj, align 8, !tbaa !41
  %i.mn = fsub nsz <2 x double> %i.mm, %i.ml
  %i.mo = fmul nsz <2 x double> %i.mn, splat (double 2.500000e-01) ; 3 uses
  %i.mp = fadd nsz <2 x double> %i.ml, %i.mo
  store <2 x double> %i.mp, ptr %i.mk, align 8, !tbaa !41
  %i.mq = getelementptr inbounds nuw i8, ptr %i.co, i64 496
  %i.mr = getelementptr inbounds nuw i8, ptr %i.co, i64 416
  %i.ms = getelementptr i8, ptr %i.co, i64 176
  %i.mt = load <2 x double>, ptr %i.mq, align 8, !tbaa !41 ; 4 uses
  %i.mu = load <2 x double>, ptr %i.mr, align 8, !tbaa !41
  %i.mv = fsub nsz <2 x double> %i.mu, %i.mt
  %i.mw = fmul nsz <2 x double> %i.mv, splat (double 2.500000e-01) ; 3 uses
  %i.mx = fadd nsz <2 x double> %i.mt, %i.mw
  store <2 x double> %i.mx, ptr %i.ms, align 8, !tbaa !41
  %i.my = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  %i.mz = getelementptr inbounds nuw i8, ptr %i.co, i64 432
  %i.na = getelementptr i8, ptr %i.co, i64 192
  %i.nb = load <2 x double>, ptr %i.my, align 8, !tbaa !41 ; 4 uses
  %i.nc = load <2 x double>, ptr %i.mz, align 8, !tbaa !41
  %i.nd = fsub nsz <2 x double> %i.nc, %i.nb
  %i.ne = fmul nsz <2 x double> %i.nd, splat (double 2.500000e-01) ; 3 uses
  %i.nf = fadd nsz <2 x double> %i.nb, %i.ne
  store <2 x double> %i.nf, ptr %i.na, align 8, !tbaa !41
  %i.ng = getelementptr inbounds nuw i8, ptr %i.co, i64 528
  %i.nh = getelementptr inbounds nuw i8, ptr %i.co, i64 448
  %i.ni = getelementptr i8, ptr %i.co, i64 208
  %i.nj = load <2 x double>, ptr %i.ng, align 8, !tbaa !41 ; 4 uses
  %i.nk = load <2 x double>, ptr %i.nh, align 8, !tbaa !41
  %i.nl = fsub nsz <2 x double> %i.nk, %i.nj
  %i.nm = fmul nsz <2 x double> %i.nl, splat (double 2.500000e-01) ; 3 uses
  %i.nn = fadd nsz <2 x double> %i.nj, %i.nm
  store <2 x double> %i.nn, ptr %i.ni, align 8, !tbaa !41
  %i.no = getelementptr i8, ptr %i.co, i64 224
  %i.np = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> splat (double 2.000000e+00), <2 x double> %i.md)
  store <2 x double> %i.np, ptr %i.no, align 8, !tbaa !41
  %i.nq = getelementptr i8, ptr %i.co, i64 240
  %i.nr = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mo, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ml)
  store <2 x double> %i.nr, ptr %i.nq, align 8, !tbaa !41
  %i.ns = getelementptr i8, ptr %i.co, i64 256
  %i.nt = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> splat (double 2.000000e+00), <2 x double> %i.mt)
  store <2 x double> %i.nt, ptr %i.ns, align 8, !tbaa !41
  %i.nu = getelementptr i8, ptr %i.co, i64 272
  %i.nv = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> splat (double 2.000000e+00), <2 x double> %i.nb)
  store <2 x double> %i.nv, ptr %i.nu, align 8, !tbaa !41
  %i.nw = getelementptr i8, ptr %i.co, i64 288
  %i.nx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> splat (double 2.000000e+00), <2 x double> %i.nj)
  store <2 x double> %i.nx, ptr %i.nw, align 8, !tbaa !41
  %i.ny = getelementptr i8, ptr %i.co, i64 304
  %i.nz = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> splat (double 3.000000e+00), <2 x double> %i.md)
  store <2 x double> %i.nz, ptr %i.ny, align 8, !tbaa !41
  %i.oa = getelementptr i8, ptr %i.co, i64 320
  %i.ob = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mo, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ml)
  store <2 x double> %i.ob, ptr %i.oa, align 8, !tbaa !41
  %i.oc = getelementptr i8, ptr %i.co, i64 336
  %i.od = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> splat (double 3.000000e+00), <2 x double> %i.mt)
  store <2 x double> %i.od, ptr %i.oc, align 8, !tbaa !41
  %i.oe = getelementptr i8, ptr %i.co, i64 352
  %i.of = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> splat (double 3.000000e+00), <2 x double> %i.nb)
  store <2 x double> %i.of, ptr %i.oe, align 8, !tbaa !41
  %i.og = getelementptr i8, ptr %i.co, i64 368
  %i.oh = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> splat (double 3.000000e+00), <2 x double> %i.nj)
  store <2 x double> %i.oh, ptr %i.og, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  br label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.h
  %i.oi = getelementptr inbounds nuw i8, ptr %i.co, i64 144
  %i.oj = getelementptr inbounds nuw i8, ptr %i.co, i64 744 ; 2 uses
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.oi, ptr noundef nonnull %i.oj, i32 noundef 5) #7
  %i.ok = getelementptr inbounds nuw i8, ptr %i.co, i64 224
  %i.ol = getelementptr inbounds nuw i8, ptr %i.co, i64 784
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.ok, ptr noundef nonnull %i.ol, i32 noundef 5) #7
  %i.om = getelementptr inbounds nuw i8, ptr %i.co, i64 304
  %i.on = getelementptr inbounds nuw i8, ptr %i.co, i64 824
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.om, ptr noundef nonnull %i.on, i32 noundef 5) #7
  %i.oo = getelementptr inbounds nuw i8, ptr %i.co, i64 384
  %i.op = getelementptr inbounds nuw i8, ptr %i.co, i64 864
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.oo, ptr noundef nonnull %i.op, i32 noundef 5) #7
  %i.oq = getelementptr inbounds nuw i8, ptr %i.co, i64 10
  %i.or = getelementptr inbounds nuw i8, ptr %i.co, i64 904 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.co, i64 2344
  %i.ot = getelementptr inbounds nuw i8, ptr %i.co, i64 1688 ; 5 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.co, i64 1696
  %i.ov = getelementptr inbounds nuw i8, ptr %i.co, i64 2048 ; 43 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.co, i64 2072 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.co, i64 1856 ; 6 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.co, i64 2384 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.co, i64 2016
  %i.oz = getelementptr inbounds nuw i8, ptr %i.co, i64 2068 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.co, i64 544
  %i.pb = getelementptr inbounds nuw i8, ptr %i.co, i64 704 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.co, i64 712
  %i.pd = getelementptr inbounds nuw i8, ptr %i.co, i64 2076 ; 3 uses
  %.phi.trans.insert.i141 = getelementptr inbounds nuw i8, ptr %i.co, i64 2077 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.co, i64 2052 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.co, i64 2056 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.co, i64 2060
  %i.ph = getelementptr inbounds nuw i8, ptr %i.co, i64 2064
  %i.pi = getelementptr inbounds nuw i8, ptr %i.co, i64 2032 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.co, i64 2080 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.co, i64 2085 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.co, i64 2036
  %i.pm = getelementptr inbounds nuw i8, ptr %i.co, i64 2084 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.co, i64 2184 ; 5 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.co, i64 2088 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.co, i64 2368 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.co, i64 2376
  %i.pr = getelementptr inbounds nuw i8, ptr %i.co, i64 2128
  %i.ps = getelementptr inbounds nuw i8, ptr %i.co, i64 2132
  %i.pt = getelementptr inbounds nuw i8, ptr %i.co, i64 464
  %i.pu = getelementptr inbounds nuw i8, ptr %i.co, i64 384
  %i.pv = getelementptr inbounds nuw i8, ptr %i.co, i64 908
  %i.pw = getelementptr inbounds nuw i8, ptr %i.co, i64 1068
  %i.px = getelementptr inbounds nuw i8, ptr %i.co, i64 2144
  %i.py = getelementptr inbounds nuw i8, ptr %i.co, i64 2304
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.az
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.az ] ; 11 uses
  %i.pz = getelementptr inbounds nuw [26 x i8], ptr %i.oq, i64 %indvars.iv ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.qa = load i32, ptr %i.fk, align 4, !tbaa !48 ; 4 uses
  %i.qb = icmp eq i32 %i.qa, 7
  %i.qc = load i16, ptr %i.pz, align 2, !tbaa !81 ; 2 uses
  %i.qd = zext i16 %i.qc to i32                   ; 6 uses
  br i1 %i.qb, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.qe = and i64 %indvars.iv, 1
  %or.cond.i.i = icmp eq i64 %i.qe, 0
  br i1 %or.cond.i.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.qf = icmp ult i16 %i.qc, 463
  br i1 %i.qf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.qg = mul nuw nsw i32 %i.qd, 10923
  %i.qh = add nuw nsw i32 %i.qg, 1168761
  %i.qi = lshr i32 %i.qh, 16                      ; 2 uses
  %.neg18.i.i = mul nsw i32 %i.qi, -6
  %i.qj = add nuw nsw i32 %i.qd, 105
  %i.qk = add nsw i32 %i.qj, %.neg18.i.i          ; 2 uses
  store i32 %i.qk, ptr %i.h, align 4, !tbaa !30
  br label %decode_pitch_vector.exit

bb.n:                                             ; preds = %bb.l
  %i.ql = add nsw i32 %i.qd, -368
  store i32 0, ptr %i.h, align 4, !tbaa !30
  br label %decode_pitch_vector.exit

bb.o:                                             ; preds = %bb.k
  %i.qm = load i8, ptr %i.or, align 8, !tbaa !82  ; 2 uses
  %i.qn = zext i8 %i.qm to i32
  %i.qo = mul nuw nsw i32 %i.qd, 10923
end_hunk_0
