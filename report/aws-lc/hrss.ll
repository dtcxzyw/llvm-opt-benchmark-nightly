Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/hrss?download=true
inline.NumInlined: 316
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 64
begin_hunk_0_@HRSS_generate_key:bb.a
  %i.hw = add <8 x i16> %i.hu, %i.hm
  %index.next226.1 = add nuw nsw i64 %index219, 32
  br label %vector.body218

scalar.ph216:                                     ; preds = %vector.body218
  %bin.rdx228 = add <8 x i16> %i.hm, %i.hl
  %i.hx = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx228)
  %vector.recur.extract229 = extractelement <8 x i16> %wide.load225, i64 7
  %i.hy = getelementptr inbounds nuw i8, ptr %i.n, i64 37314
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !24 ; 2 uses
  %i.ia = mul i16 %i.hz, %vector.recur.extract229
  %i.ib = add i16 %i.ia, %i.hx
  %i.ic = getelementptr inbounds nuw i8, ptr %i.n, i64 37316
  %i.id = load i16, ptr %i.ic, align 4, !tbaa !24 ; 2 uses
  %i.ie = mul i16 %i.id, %i.hz
  %i.if = add i16 %i.ie, %i.ib
  %i.ig = getelementptr inbounds nuw i8, ptr %i.n, i64 37318
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !24 ; 2 uses
  %i.ii = mul i16 %i.ih, %i.id
  %i.ij = add i16 %i.ii, %i.if
  %i.ik = getelementptr inbounds nuw i8, ptr %i.n, i64 37320
  %i.il = load i16, ptr %i.ik, align 8, !tbaa !24 ; 2 uses
  %i.im = mul i16 %i.il, %i.ih
  %i.in = add i16 %i.im, %i.ij
  %i.io = getelementptr inbounds nuw i8, ptr %i.n, i64 37322
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !24 ; 2 uses
  %i.iq = mul i16 %i.ip, %i.il
  %i.ir = add i16 %i.iq, %i.in
  %i.is = getelementptr inbounds nuw i8, ptr %i.n, i64 37324
  %i.it = load i16, ptr %i.is, align 4, !tbaa !24 ; 2 uses
  %i.iu = mul i16 %i.it, %i.ip
  %i.iv = add i16 %i.iu, %i.ir
  %i.iw = getelementptr inbounds nuw i8, ptr %i.n, i64 37326
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !24 ; 2 uses
  %i.iy = mul i16 %i.ix, %i.it
  %i.iz = add i16 %i.iy, %i.iv
  %i.ja = getelementptr inbounds nuw i8, ptr %i.n, i64 37328
  %i.jb = load i16, ptr %i.ja, align 8, !tbaa !24 ; 2 uses
  %i.jc = mul i16 %i.jb, %i.ix
  %i.jd = add i16 %i.jc, %i.iz
  %i.je = getelementptr inbounds nuw i8, ptr %i.n, i64 37330
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !24 ; 2 uses
  %i.jg = mul i16 %i.jf, %i.jb
  %i.jh = add i16 %i.jg, %i.jd
  %i.ji = getelementptr inbounds nuw i8, ptr %i.n, i64 37332
  %i.jj = load i16, ptr %i.ji, align 4, !tbaa !24 ; 2 uses
  %i.jk = mul i16 %i.jj, %i.jf
  %i.jl = add i16 %i.jk, %i.jh
  %i.jm = getelementptr inbounds nuw i8, ptr %i.n, i64 37334
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !24
  %i.jo = mul i16 %i.jn, %i.jj
  %i.jp = add i16 %i.jo, %i.jl
  %i.jq = ashr i16 %i.jp, 15
  %i.jr = or i16 %i.jq, 1                         ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %scalar.ph216
  %indvars.iv24.i58 = phi i64 [ 0, %scalar.ph216 ], [ %indvars.iv.next25.i59.2, %bb.h ] ; 5 uses
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv24.i58 ; 2 uses
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !24
  %i.ju = mul i16 %i.jt, %i.jr
  store i16 %i.ju, ptr %i.js, align 2, !tbaa !24
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv24.i58
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4 ; 2 uses
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !24
  %i.jy = mul i16 %i.jx, %i.jr
  store i16 %i.jy, ptr %i.jw, align 2, !tbaa !24
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv24.i58
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 2 uses
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !24
  %i.kc = mul i16 %i.kb, %i.jr
  store i16 %i.kc, ptr %i.ka, align 2, !tbaa !24
  %indvars.iv.next25.i59.2 = add nuw nsw i64 %indvars.iv24.i58, 6
  %i.kd = icmp samesign ult i64 %indvars.iv24.i58, 695
  br i1 %i.kd, label %bb.h, label %vector.body232, !llvm.loop !79

vector.body232:                                   ; preds = %bb.h, %vector.body232.1
  %index233 = phi i64 [ %index.next236.1, %vector.body232.1 ], [ 0, %bb.h ] ; 4 uses
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %index233 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %wide.load234 = load <8 x i16>, ptr %i.ke, align 2, !tbaa !24
  %wide.load235 = load <8 x i16>, ptr %i.kf, align 2, !tbaa !24
  %i.kg = mul <8 x i16> %wide.load234, splat (i16 3)
  %i.kh = mul <8 x i16> %wide.load235, splat (i16 3)
  store <8 x i16> %i.kg, ptr %i.ke, align 2, !tbaa !24
  store <8 x i16> %i.kh, ptr %i.kf, align 2, !tbaa !24
  %i.ki = icmp eq i64 %index233, 672
  br i1 %i.ki, label %vec.epilog.vector.body, label %vector.body232.1

vector.body232.1:                                 ; preds = %vector.body232
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %index233 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 48 ; 2 uses
  %wide.load234.1 = load <8 x i16>, ptr %i.kk, align 2, !tbaa !24
  %wide.load235.1 = load <8 x i16>, ptr %i.kl, align 2, !tbaa !24
  %i.km = mul <8 x i16> %wide.load234.1, splat (i16 3)
  %i.kn = mul <8 x i16> %wide.load235.1, splat (i16 3)
  store <8 x i16> %i.km, ptr %i.kk, align 2, !tbaa !24
  store <8 x i16> %i.kn, ptr %i.kl, align 2, !tbaa !24
  %index.next236.1 = add nuw nsw i64 %index233, 32
  br label %vector.body232

vec.epilog.vector.body:                           ; preds = %vector.body232
  %i.ko = getelementptr inbounds nuw i8, ptr %i.n, i64 37312 ; 2 uses
  %wide.load239 = load <4 x i16>, ptr %i.ko, align 8, !tbaa !24
  %i.kp = mul <4 x i16> %wide.load239, splat (i16 3)
  store <4 x i16> %i.kp, ptr %i.ko, align 8, !tbaa !24
  %i.kq = getelementptr inbounds nuw i8, ptr %i.n, i64 37320 ; 2 uses
  %wide.load239.1 = load <4 x i16>, ptr %i.kq, align 8, !tbaa !24
  %i.kr = mul <4 x i16> %wide.load239.1, splat (i16 3)
  store <4 x i16> %i.kr, ptr %i.kq, align 8, !tbaa !24
  %i.ks = getelementptr inbounds nuw i8, ptr %i.n, i64 37328 ; 2 uses
  %wide.load239.2 = load <4 x i16>, ptr %i.ks, align 8, !tbaa !24
  %i.kt = mul <4 x i16> %wide.load239.2, splat (i16 3)
  store <4 x i16> %i.kt, ptr %i.ks, align 8, !tbaa !24
  %i.ku = getelementptr inbounds nuw i8, ptr %i.n, i64 37336 ; 2 uses
  %i.kv = load i16, ptr %i.ku, align 8, !tbaa !24
  %i.kw = mul i16 %i.kv, 3                        ; 2 uses
  store i16 %i.kw, ptr %i.ku, align 8, !tbaa !24
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245.1, %vec.epilog.vector.body
  %index246 = phi i64 [ 0, %vec.epilog.vector.body ], [ %index.next251.1, %vector.body245.1 ] ; 4 uses
  %i.kx = sub nuw nsw i64 700, %index246
  %i.ky = getelementptr [2 x i8], ptr %i.fo, i64 %i.kx ; 4 uses
  %i.kz = getelementptr i8, ptr %i.ky, i64 -16
  %i.la = getelementptr i8, ptr %i.ky, i64 -32
  %wide.load247 = load <8 x i16>, ptr %i.kz, align 2, !tbaa !24
  %wide.load248 = load <8 x i16>, ptr %i.la, align 2, !tbaa !24
  %i.lb = getelementptr i8, ptr %i.ky, i64 -14    ; 2 uses
  %i.lc = getelementptr i8, ptr %i.ky, i64 -30    ; 2 uses
  %wide.load249 = load <8 x i16>, ptr %i.lb, align 2, !tbaa !24
  %wide.load250 = load <8 x i16>, ptr %i.lc, align 2, !tbaa !24
  %i.ld = sub <8 x i16> %wide.load247, %wide.load249
  %i.le = sub <8 x i16> %wide.load248, %wide.load250
  store <8 x i16> %i.ld, ptr %i.lb, align 2, !tbaa !24
  store <8 x i16> %i.le, ptr %i.lc, align 2, !tbaa !24
  %i.lf = icmp eq i64 %index246, 672
  br i1 %i.lf, label %vec.epilog.vector.body259, label %vector.body245.1

vector.body245.1:                                 ; preds = %vector.body245
  %i.lg = sub nuw nsw i64 684, %index246
  %i.lh = getelementptr [2 x i8], ptr %i.fo, i64 %i.lg ; 4 uses
  %i.li = getelementptr i8, ptr %i.lh, i64 -16
  %i.lj = getelementptr i8, ptr %i.lh, i64 -32
  %wide.load247.1 = load <8 x i16>, ptr %i.li, align 2, !tbaa !24
  %wide.load248.1 = load <8 x i16>, ptr %i.lj, align 2, !tbaa !24
  %i.lk = getelementptr i8, ptr %i.lh, i64 -14    ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lh, i64 -30    ; 2 uses
  %wide.load249.1 = load <8 x i16>, ptr %i.lk, align 2, !tbaa !24
  %wide.load250.1 = load <8 x i16>, ptr %i.ll, align 2, !tbaa !24
  %i.lm = sub <8 x i16> %wide.load247.1, %wide.load249.1
  %i.ln = sub <8 x i16> %wide.load248.1, %wide.load250.1
  store <8 x i16> %i.lm, ptr %i.lk, align 2, !tbaa !24
  store <8 x i16> %i.ln, ptr %i.ll, align 2, !tbaa !24
  %index.next251.1 = add nuw nsw i64 %index246, 32
  br label %vector.body245

vec.epilog.vector.body259:                        ; preds = %vector.body245
  %i.lo = getelementptr i8, ptr %i.n, i64 35952
  %wide.load261 = load <4 x i16>, ptr %i.lo, align 8, !tbaa !24
  %i.lp = getelementptr i8, ptr %i.n, i64 35954   ; 2 uses
  %wide.load262 = load <4 x i16>, ptr %i.lp, align 2, !tbaa !24
  %i.lq = sub <4 x i16> %wide.load261, %wide.load262
  store <4 x i16> %i.lq, ptr %i.lp, align 2, !tbaa !24
  %i.lr = getelementptr i8, ptr %i.n, i64 35944
  %wide.load261.1 = load <4 x i16>, ptr %i.lr, align 8, !tbaa !24
  %i.ls = getelementptr i8, ptr %i.n, i64 35946   ; 2 uses
  %wide.load262.1 = load <4 x i16>, ptr %i.ls, align 2, !tbaa !24
  %i.lt = sub <4 x i16> %wide.load261.1, %wide.load262.1
  store <4 x i16> %i.lt, ptr %i.ls, align 2, !tbaa !24
  %i.lu = getelementptr i8, ptr %i.n, i64 35936
  %wide.load261.2 = load <4 x i16>, ptr %i.lu, align 8, !tbaa !24
  %i.lv = getelementptr i8, ptr %i.n, i64 35938   ; 2 uses
  %wide.load262.2 = load <4 x i16>, ptr %i.lv, align 2, !tbaa !24
  %i.lw = sub <4 x i16> %wide.load261.2, %wide.load262.2
  store <4 x i16> %i.lw, ptr %i.lv, align 2, !tbaa !24
  %i.lx = load i16, ptr %i.fo, align 16, !tbaa !24
  %i.ly = sub i16 %i.kw, %i.lx
  store i16 %i.ly, ptr %i.fo, align 16, !tbaa !24
  %i.lz = getelementptr inbounds nuw i8, ptr %i.n, i64 37344 ; 11 uses
  %i.ma = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.mb = and i32 %i.ma, 32
  %.not.i62 = icmp eq i32 %i.mb, 0
  br i1 %.not.i62, label %bb.j, label %bb.i

bb.i:                                             ; preds = %vec.epilog.vector.body259
  tail call void @poly_Rq_mul(ptr noundef nonnull %i.lz, ptr noundef nonnull %i.s, ptr noundef nonnull %i.fo, ptr noundef nonnull %i.n) #10
  %i.mc = getelementptr inbounds nuw i8, ptr %i.n, i64 38746
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.mc, i8 0, i64 6, i1 false)
  br label %iter.check277

bb.j:                                             ; preds = %vec.epilog.vector.body259
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %25, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.s, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %26, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.fo, i64 1408, i1 false)
  %i.md = getelementptr inbounds nuw i8, ptr %i.n, i64 2816
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.n, ptr noundef %i.md, ptr noundef %25, ptr noundef %26, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %27, i8 0, i64 1408, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.020.i.i = phi i64 [ 0, %bb.j ], [ %i.mq, %bb.k ] ; 3 uses
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.020.i.i ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 1392
  %i.mg = load <16 x i8>, ptr %i.mf, align 16, !tbaa !22
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 1408
  %i.mi = load <16 x i8>, ptr %i.mh, align 16, !tbaa !22
  %i.mj = load <8 x i16>, ptr %i.me, align 16, !tbaa !22
  %i.mk = shufflevector <16 x i8> %i.mg, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.ml = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.mi, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.mm = or <16 x i8> %i.ml, %i.mk
  %i.mn = bitcast <16 x i8> %i.mm to <8 x i16>
  %i.mo = add <8 x i16> %i.mj, %i.mn
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %27, i64 %.020.i.i
  store <8 x i16> %i.mo, ptr %i.mp, align 16, !tbaa !22
  %i.mq = add nuw nsw i64 %.020.i.i, 1            ; 2 uses
  %exitcond.not.i.i63 = icmp eq i64 %i.mq, 88
  br i1 %exitcond.not.i.i63, label %poly_mul_vec.exit.i, label %bb.k, !llvm.loop !1

poly_mul_vec.exit.i:                              ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %i.lz, ptr noundef nonnull readonly align 16 dereferenceable(1408) %27, i64 1402, i1 false)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.n, i64 38746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.mr, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #10
  br label %iter.check277

iter.check277:                                    ; preds = %bb.i, %poly_mul_vec.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #10
  %i.ms = add i64 %i.m, %i.k
  %i.mt = sub i64 %i.a, %i.ms
  %i.mu = add i64 %i.mt, -37376
  %diff.check = icmp ult i64 %i.mu, -31           ; 2 uses
  br i1 %diff.check, label %vector.body270, label %vec.epilog.scalar.ph278.prol.preheader

vec.epilog.scalar.ph278.prol.preheader:           ; preds = %iter.check277, %vec.epilog.vector.body281
  %indvars.iv.i64.ph = phi i64 [ 0, %iter.check277 ], [ 700, %vec.epilog.vector.body281 ]
  br label %vec.epilog.scalar.ph278.prol

vec.epilog.scalar.ph278.prol:                     ; preds = %vec.epilog.scalar.ph278.prol, %vec.epilog.scalar.ph278.prol.preheader
  %indvars.iv.i64.prol = phi i64 [ %indvars.iv.next.i65.prol, %vec.epilog.scalar.ph278.prol ], [ %indvars.iv.i64.ph, %vec.epilog.scalar.ph278.prol.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph278.prol ], [ 0, %vec.epilog.scalar.ph278.prol.preheader ] ; 2 uses
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %indvars.iv.i64.prol
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !24
  %i.mx = sub i16 0, %i.mw
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %indvars.iv.i64.prol
  store i16 %i.mx, ptr %i.my, align 2, !tbaa !24
  %indvars.iv.next.i65.prol = add nuw nsw i64 %indvars.iv.i64.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter, 0
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph278.prol.loopexit, label %vec.epilog.scalar.ph278.prol, !llvm.loop !85

vec.epilog.scalar.ph278.prol.loopexit:            ; preds = %vec.epilog.scalar.ph278.prol
  br i1 %diff.check, label %.loopexit, label %vec.epilog.scalar.ph278

vector.body270:                                   ; preds = %iter.check277, %vector.body270.1
  %index271 = phi i64 [ %index.next274.1, %vector.body270.1 ], [ 0, %iter.check277 ] ; 5 uses
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %index271 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %wide.load272 = load <8 x i16>, ptr %i.mz, align 2, !tbaa !24
  %wide.load273 = load <8 x i16>, ptr %i.na, align 2, !tbaa !24
  %i.nb = sub <8 x i16> zeroinitializer, %wide.load272
  %i.nc = sub <8 x i16> zeroinitializer, %wide.load273
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %index271 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store <8 x i16> %i.nb, ptr %i.nd, align 16, !tbaa !24
  store <8 x i16> %i.nc, ptr %i.ne, align 16, !tbaa !24
  %i.nf = icmp eq i64 %index271, 672
  br i1 %i.nf, label %vec.epilog.vector.body281, label %vector.body270.1

vector.body270.1:                                 ; preds = %vector.body270
  %index.next274 = or disjoint i64 %index271, 16  ; 2 uses
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %index.next274 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %wide.load272.1 = load <8 x i16>, ptr %i.ng, align 2, !tbaa !24
  %wide.load273.1 = load <8 x i16>, ptr %i.nh, align 2, !tbaa !24
  %i.ni = sub <8 x i16> zeroinitializer, %wide.load272.1
  %i.nj = sub <8 x i16> zeroinitializer, %wide.load273.1
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %index.next274 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store <8 x i16> %i.ni, ptr %i.nk, align 16, !tbaa !24
  store <8 x i16> %i.nj, ptr %i.nl, align 16, !tbaa !24
  %index.next274.1 = add nuw nsw i64 %index271, 32
  br label %vector.body270

vec.epilog.vector.body281:                        ; preds = %vector.body270
  %i.nm = getelementptr inbounds nuw i8, ptr %i.n, i64 38720
  %wide.load283 = load <4 x i16>, ptr %i.nm, align 16, !tbaa !24
  %i.nn = sub <4 x i16> zeroinitializer, %wide.load283
  %i.no = getelementptr inbounds nuw i8, ptr %23, i64 1376
  store <4 x i16> %i.nn, ptr %i.no, align 16, !tbaa !24
  %i.np = getelementptr inbounds nuw i8, ptr %i.n, i64 38728
  %wide.load283.1 = load <4 x i16>, ptr %i.np, align 8, !tbaa !24
  %i.nq = sub <4 x i16> zeroinitializer, %wide.load283.1
  %i.nr = getelementptr inbounds nuw i8, ptr %23, i64 1384
  store <4 x i16> %i.nq, ptr %i.nr, align 8, !tbaa !24
  %i.ns = getelementptr inbounds nuw i8, ptr %i.n, i64 38736
  %wide.load283.2 = load <4 x i16>, ptr %i.ns, align 16, !tbaa !24
  %i.nt = sub <4 x i16> zeroinitializer, %wide.load283.2
  %i.nu = getelementptr inbounds nuw i8, ptr %23, i64 1392
  store <4 x i16> %i.nt, ptr %i.nu, align 16, !tbaa !24
  br label %vec.epilog.scalar.ph278.prol.preheader

.loopexit:                                        ; preds = %vec.epilog.scalar.ph278, %vec.epilog.scalar.ph278.prol.loopexit
  %i.nv = getelementptr inbounds nuw i8, ptr %23, i64 1402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.nv, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %21, i8 0, i64 88, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %.loopexit
  %indvars.iv.i.i.i = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next.i.i.i.1, %bb.q ] ; 4 uses
  %.01522.i.i.i = phi i64 [ 0, %.loopexit ], [ %.1.i.i.i.1, %bb.q ]
  %.01621.i.i.i = phi i32 [ 0, %.loopexit ], [ %.117.i.i.i.1, %bb.q ]
  %.01820.i.i.i = phi ptr [ %22, %.loopexit ], [ %.119.i.i.i.1, %bb.q ] ; 3 uses
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %indvars.iv.i.i.i
  %i.nx = load i16, ptr %i.nw, align 2, !tbaa !24
  %i.ny = zext i16 %i.nx to i64
  %i.nz = call i64 @llvm.fshl.i64(i64 %i.ny, i64 %.01522.i.i.i, i64 63) ; 2 uses
  %i.oa = add i32 %.01621.i.i.i, 1                ; 2 uses
  %i.ob = icmp eq i32 %i.oa, 64
  br i1 %i.ob, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.nz, ptr %.01820.i.i.i, align 8, !tbaa !17
  %i.oc = getelementptr inbounds nuw i8, ptr %.01820.i.i.i, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.119.i.i.i = phi ptr [ %i.oc, %bb.m ], [ %.01820.i.i.i, %bb.l ] ; 4 uses
  %.117.i.i.i = phi i32 [ 0, %bb.m ], [ %i.oa, %bb.l ] ; 2 uses
  %.1.i.i.i = phi i64 [ 0, %bb.m ], [ %i.nz, %bb.l ] ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, 700
  br i1 %exitcond.not.i.i.i, label %poly2_from_poly.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %indvars.iv.i.i.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 2
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !24
  %i.og = zext i16 %i.of to i64
  %i.oh = call i64 @llvm.fshl.i64(i64 %i.og, i64 %.1.i.i.i, i64 63) ; 2 uses
  %i.oi = add i32 %.117.i.i.i, 1                  ; 2 uses
  %i.oj = icmp eq i32 %i.oi, 64
  br i1 %i.oj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.oh, ptr %.119.i.i.i, align 8, !tbaa !17
  %i.ok = getelementptr inbounds nuw i8, ptr %.119.i.i.i, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.119.i.i.i.1 = phi ptr [ %i.ok, %bb.p ], [ %.119.i.i.i, %bb.o ]
  %.117.i.i.i.1 = phi i32 [ 0, %bb.p ], [ %i.oi, %bb.o ]
  %.1.i.i.i.1 = phi i64 [ 0, %bb.p ], [ %i.oh, %bb.o ]
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2
  br label %bb.l

poly2_from_poly.exit.i.i:                         ; preds = %bb.n
  %i.ol = zext i32 %.117.i.i.i to i64
  %i.om = sub nsw i64 64, %i.ol
  %i.on = lshr i64 %.1.i.i.i, %i.om
  store i64 %i.on, ptr %.119.i.i.i, align 8, !tbaa !17
  %i.oo = getelementptr inbounds nuw i8, ptr %22, i64 80 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 16, !tbaa !17 ; 2 uses
  %i.oq = shl i64 %i.op, 3
  %i.or = ashr i64 %i.oq, 63                      ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ot = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ov = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.ox = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.oz = getelementptr inbounds nuw i8, ptr %22, i64 64 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.pb = xor i64 %i.or, %i.op
  %i.pc = load <2 x i64>, ptr %22, align 16, !tbaa !17
  %i.pd = insertelement <2 x i64> poison, i64 %i.or, i64 0
  %i.pe = shufflevector <2 x i64> %i.pd, <2 x i64> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.pf = xor <2 x i64> %i.pe, %i.pc
  %i.pg = call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pf) ; 2 uses
  %i.ph = load <2 x i64>, ptr %i.ot, align 16, !tbaa !17
  %i.pi = xor <2 x i64> %i.ph, %i.pe
  %i.pj = call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pi) ; 2 uses
  %i.pk = load <2 x i64>, ptr %i.ov, align 16, !tbaa !17
  %i.pl = xor <2 x i64> %i.pk, %i.pe
  %i.pm = call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pl) ; 2 uses
  %i.pn = load <2 x i64>, ptr %i.ox, align 16, !tbaa !17
  %i.po = xor <2 x i64> %i.pn, %i.pe
  %i.pp = call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.po) ; 2 uses
  %i.pq = load <2 x i64>, ptr %i.oz, align 16, !tbaa !17
  %i.pr = xor <2 x i64> %i.pq, %i.pe
  %i.ps = call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pr) ; 2 uses
  %i.pt = call noundef i64 @llvm.bitreverse.i64(i64 %i.pb)
  %i.pu = extractelement <2 x i64> %i.ps, i64 1   ; 2 uses
end_hunk_0
begin_hunk_1_@HRSS_generate_key:bb.a
  %i.sr = phi i64 [ %.promoted98.i.i, %poly2_from_poly.exit.i.i ], [ %i.xy, %bb.y ] ; 2 uses
  %i.ss = phi i64 [ %.promoted100.i.i, %poly2_from_poly.exit.i.i ], [ %i.yb, %bb.y ] ; 2 uses
  %i.st = phi i64 [ %.promoted102.i.i, %poly2_from_poly.exit.i.i ], [ %i.ye, %bb.y ] ; 2 uses
  %i.su = phi i64 [ %.promoted104.i.i, %poly2_from_poly.exit.i.i ], [ %i.yh, %bb.y ] ; 2 uses
  %i.sv = phi i64 [ %.promoted106.i.i, %poly2_from_poly.exit.i.i ], [ %i.yk, %bb.y ] ; 2 uses
  %i.sw = phi i64 [ %.promoted108.i.i, %poly2_from_poly.exit.i.i ], [ %i.yn, %bb.y ] ; 2 uses
  %i.sx = phi i64 [ %.promoted110.i.i, %poly2_from_poly.exit.i.i ], [ %i.yq, %bb.y ]
  %i.sy = phi i64 [ %i.pv, %poly2_from_poly.exit.i.i ], [ %i.xj, %bb.y ] ; 3 uses
  %i.sz = phi i64 [ %i.px, %poly2_from_poly.exit.i.i ], [ %i.xi, %bb.y ] ; 2 uses
  %i.ta = phi i64 [ %i.pz, %poly2_from_poly.exit.i.i ], [ %i.xh, %bb.y ] ; 2 uses
  %i.tb = phi i64 [ %i.qb, %poly2_from_poly.exit.i.i ], [ %i.xg, %bb.y ] ; 2 uses
  %i.tc = phi i64 [ %i.qd, %poly2_from_poly.exit.i.i ], [ %i.xf, %bb.y ] ; 2 uses
  %i.td = phi i64 [ %i.qf, %poly2_from_poly.exit.i.i ], [ %i.xe, %bb.y ] ; 2 uses
  %i.te = phi i64 [ %i.qh, %poly2_from_poly.exit.i.i ], [ %i.xd, %bb.y ] ; 2 uses
  %i.tf = phi i64 [ %i.qj, %poly2_from_poly.exit.i.i ], [ %i.xc, %bb.y ] ; 2 uses
  %i.tg = phi i64 [ %i.ql, %poly2_from_poly.exit.i.i ], [ %i.xb, %bb.y ] ; 2 uses
  %i.th = phi i64 [ %i.qn, %poly2_from_poly.exit.i.i ], [ %i.xa, %bb.y ] ; 2 uses
  %i.ti = phi i64 [ %i.qo, %poly2_from_poly.exit.i.i ], [ %i.wz, %bb.y ] ; 2 uses
  %i.tj = shl i64 %i.sn, 1                        ; 2 uses
  %i.tk = call i64 @llvm.fshl.i64(i64 %i.so, i64 %i.sn, i64 1) ; 2 uses
  %i.tl = call i64 @llvm.fshl.i64(i64 %i.sp, i64 %i.so, i64 1) ; 2 uses
  %i.tm = call i64 @llvm.fshl.i64(i64 %i.sq, i64 %i.sp, i64 1) ; 2 uses
  %i.tn = call i64 @llvm.fshl.i64(i64 %i.sr, i64 %i.sq, i64 1) ; 2 uses
  %i.to = call i64 @llvm.fshl.i64(i64 %i.ss, i64 %i.sr, i64 1) ; 2 uses
  %i.tp = call i64 @llvm.fshl.i64(i64 %i.st, i64 %i.ss, i64 1) ; 2 uses
  %i.tq = call i64 @llvm.fshl.i64(i64 %i.su, i64 %i.st, i64 1) ; 2 uses
  %i.tr = call i64 @llvm.fshl.i64(i64 %i.sv, i64 %i.su, i64 1) ; 2 uses
  %i.ts = call i64 @llvm.fshl.i64(i64 %i.sw, i64 %i.sv, i64 1) ; 2 uses
  %i.tt = call i64 @llvm.fshl.i64(i64 %i.sx, i64 %i.sw, i64 1) ; 2 uses
  %i.tu = and i64 %i.sy, 1                        ; 2 uses
  %i.tv = sub nsw i64 0, %i.tu
  %i.tw = icmp slt i32 %.0157.i.i, 1
  %i.tx = select i1 %i.tw, i64 0, i64 %i.tv       ; 24 uses
  %i.ty = and i64 %i.tu, %.sroa.0.0145.i.i
  %i.tz = sub nsw i64 0, %i.ty                    ; 22 uses
  %i.ua = sub nsw i32 0, %.0157.i.i
  %i.ub = zext i32 %i.ua to i64
  %i.uc = zext i32 %.0157.i.i to i64
  %i.ud = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.tx) #11, !srcloc !21
  %i.ue = and i64 %i.ud, %i.ub
  %i.uf = xor i64 %i.tx, -1
  %i.ug = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.uf) #11, !srcloc !21
  %i.uh = and i64 %i.ug, %i.uc
  %i.ui = or i64 %i.uh, %i.ue
  %i.uj = trunc nuw i64 %i.ui to i32
  %i.uk = add nsw i32 %i.uj, 1
  %i.ul = xor i64 %i.sy, %.sroa.0.0145.i.i
  %i.um = and i64 %i.tx, %i.ul                    ; 2 uses
  %i.un = xor i64 %i.um, %.sroa.0.0145.i.i        ; 2 uses
  %i.uo = xor i64 %i.sz, %.sroa.7.0146.i.i
  %i.up = and i64 %i.uo, %i.tx                    ; 2 uses
  %i.uq = xor i64 %i.up, %.sroa.7.0146.i.i        ; 2 uses
  %i.ur = xor i64 %i.ta, %.sroa.10.0147.i.i
  %i.us = and i64 %i.ur, %i.tx                    ; 2 uses
  %i.ut = xor i64 %i.us, %.sroa.10.0147.i.i       ; 2 uses
  %i.uu = xor i64 %i.tb, %.sroa.13.0148.i.i
  %i.uv = and i64 %i.uu, %i.tx                    ; 2 uses
  %i.uw = xor i64 %i.uv, %.sroa.13.0148.i.i       ; 2 uses
  %i.ux = xor i64 %i.tc, %.sroa.16.0149.i.i
  %i.uy = and i64 %i.ux, %i.tx                    ; 2 uses
  %i.uz = xor i64 %i.uy, %.sroa.16.0149.i.i       ; 2 uses
  %i.va = xor i64 %i.td, %.sroa.19.0150.i.i
  %i.vb = and i64 %i.va, %i.tx                    ; 2 uses
  %i.vc = xor i64 %i.vb, %.sroa.19.0150.i.i       ; 2 uses
  %i.vd = xor i64 %i.te, %.sroa.22.0151.i.i
  %i.ve = and i64 %i.vd, %i.tx                    ; 2 uses
  %i.vf = xor i64 %i.ve, %.sroa.22.0151.i.i       ; 2 uses
  %i.vg = xor i64 %i.tf, %.sroa.25.0152.i.i
  %i.vh = and i64 %i.vg, %i.tx                    ; 2 uses
  %i.vi = xor i64 %i.vh, %.sroa.25.0152.i.i       ; 2 uses
  %i.vj = xor i64 %i.tg, %.sroa.28.0153.i.i
  %i.vk = and i64 %i.vj, %i.tx                    ; 2 uses
  %i.vl = xor i64 %i.vk, %.sroa.28.0153.i.i       ; 2 uses
  %i.vm = xor i64 %i.th, %.sroa.31.0154.i.i
  %i.vn = and i64 %i.vm, %i.tx                    ; 2 uses
  %i.vo = xor i64 %i.vn, %.sroa.31.0154.i.i       ; 2 uses
  %i.vp = xor i64 %i.ti, %.sroa.34.0155.i.i
  %i.vq = and i64 %i.vp, %i.tx                    ; 2 uses
  %i.vr = xor i64 %i.vq, %.sroa.34.0155.i.i       ; 2 uses
  %i.vs = and i64 %i.un, %i.tz
  %i.vt = xor i64 %i.sy, %i.vs
  %i.vu = xor i64 %i.vt, %i.um
  %i.vv = and i64 %i.uq, %i.tz
  %i.vw = xor i64 %i.sz, %i.vv
  %i.vx = xor i64 %i.vw, %i.up                    ; 2 uses
  %i.vy = and i64 %i.ut, %i.tz
  %i.vz = xor i64 %i.ta, %i.vy
  %i.wa = xor i64 %i.vz, %i.us                    ; 2 uses
  %i.wb = and i64 %i.uw, %i.tz
  %i.wc = xor i64 %i.tb, %i.wb
  %i.wd = xor i64 %i.wc, %i.uv                    ; 2 uses
  %i.we = and i64 %i.uz, %i.tz
  %i.wf = xor i64 %i.tc, %i.we
  %i.wg = xor i64 %i.wf, %i.uy                    ; 2 uses
  %i.wh = and i64 %i.vc, %i.tz
  %i.wi = xor i64 %i.td, %i.wh
  %i.wj = xor i64 %i.wi, %i.vb                    ; 2 uses
  %i.wk = and i64 %i.vf, %i.tz
  %i.wl = xor i64 %i.te, %i.wk
  %i.wm = xor i64 %i.wl, %i.ve                    ; 2 uses
  %i.wn = and i64 %i.vi, %i.tz
  %i.wo = xor i64 %i.tf, %i.wn
  %i.wp = xor i64 %i.wo, %i.vh                    ; 2 uses
  %i.wq = and i64 %i.vl, %i.tz
  %i.wr = xor i64 %i.tg, %i.wq
  %i.ws = xor i64 %i.wr, %i.vk                    ; 2 uses
  %i.wt = and i64 %i.vo, %i.tz
  %i.wu = xor i64 %i.th, %i.wt
  %i.wv = xor i64 %i.wu, %i.vn                    ; 2 uses
  %i.ww = and i64 %i.vr, %i.tz
  %i.wx = xor i64 %i.ti, %i.ww
  %i.wy = xor i64 %i.wx, %i.vq                    ; 2 uses
  %i.wz = lshr i64 %i.wy, 1                       ; 2 uses
  %i.xa = call i64 @llvm.fshl.i64(i64 %i.wy, i64 %i.wv, i64 63) ; 2 uses
  %i.xb = call i64 @llvm.fshl.i64(i64 %i.wv, i64 %i.ws, i64 63) ; 2 uses
  %i.xc = call i64 @llvm.fshl.i64(i64 %i.ws, i64 %i.wp, i64 63) ; 2 uses
  %i.xd = call i64 @llvm.fshl.i64(i64 %i.wp, i64 %i.wm, i64 63) ; 2 uses
  %i.xe = call i64 @llvm.fshl.i64(i64 %i.wm, i64 %i.wj, i64 63) ; 2 uses
  %i.xf = call i64 @llvm.fshl.i64(i64 %i.wj, i64 %i.wg, i64 63) ; 2 uses
  %i.xg = call i64 @llvm.fshl.i64(i64 %i.wg, i64 %i.wd, i64 63) ; 2 uses
  %i.xh = call i64 @llvm.fshl.i64(i64 %i.wd, i64 %i.wa, i64 63) ; 2 uses
  %i.xi = call i64 @llvm.fshl.i64(i64 %i.wa, i64 %i.vx, i64 63) ; 2 uses
  %i.xj = call i64 @llvm.fshl.i64(i64 %i.vx, i64 %i.vu, i64 63)
  %i.xk = xor i64 %i.tj, %.sroa.047.0134.i.i
  %i.xl = and i64 %i.tx, %i.xk                    ; 2 uses
  %i.xm = xor i64 %i.xl, %i.tj                    ; 3 uses
  %i.xn = xor i64 %i.tk, %.sroa.9.0135.i.i
  %i.xo = and i64 %i.tx, %i.xn                    ; 2 uses
  %i.xp = xor i64 %i.xo, %i.tk                    ; 3 uses
  %i.xq = xor i64 %i.tl, %.sroa.14.0136.i.i
  %i.xr = and i64 %i.tx, %i.xq                    ; 2 uses
  %i.xs = xor i64 %i.xr, %i.tl                    ; 3 uses
  %i.xt = xor i64 %i.tm, %.sroa.1954.0137.i.i
  %i.xu = and i64 %i.tx, %i.xt                    ; 2 uses
  %i.xv = xor i64 %i.xu, %i.tm                    ; 3 uses
  %i.xw = xor i64 %i.tn, %.sroa.24.0138.i.i
  %i.xx = and i64 %i.tx, %i.xw                    ; 2 uses
  %i.xy = xor i64 %i.xx, %i.tn                    ; 3 uses
  %i.xz = xor i64 %i.to, %.sroa.29.0139.i.i
  %i.ya = and i64 %i.tx, %i.xz                    ; 2 uses
  %i.yb = xor i64 %i.ya, %i.to                    ; 3 uses
  %i.yc = xor i64 %i.tp, %.sroa.3461.0140.i.i
  %i.yd = and i64 %i.tx, %i.yc                    ; 2 uses
  %i.ye = xor i64 %i.yd, %i.tp                    ; 3 uses
  %i.yf = xor i64 %i.tq, %.sroa.39.0141.i.i
  %i.yg = and i64 %i.tx, %i.yf                    ; 2 uses
  %i.yh = xor i64 %i.yg, %i.tq                    ; 3 uses
  %i.yi = xor i64 %i.tr, %.sroa.44.0142.i.i
  %i.yj = and i64 %i.tx, %i.yi                    ; 2 uses
  %i.yk = xor i64 %i.yj, %i.tr                    ; 3 uses
  %i.yl = xor i64 %i.ts, %.sroa.49.0143.i.i
  %i.ym = and i64 %i.tx, %i.yl                    ; 2 uses
  %i.yn = xor i64 %i.ym, %i.ts                    ; 3 uses
  %i.yo = xor i64 %i.tt, %.sroa.54.0144.i.i
  %i.yp = and i64 %i.tx, %i.yo                    ; 2 uses
  %i.yq = xor i64 %i.yp, %i.tt                    ; 3 uses
  %i.yr = and i64 %i.xm, %i.tz
  %i.ys = xor i64 %.sroa.047.0134.i.i, %i.yr
  %i.yt = xor i64 %i.ys, %i.xl
  %i.yu = and i64 %i.xp, %i.tz
  %i.yv = xor i64 %.sroa.9.0135.i.i, %i.yu
  %i.yw = xor i64 %i.yv, %i.xo
  %i.yx = and i64 %i.xs, %i.tz
  %i.yy = xor i64 %.sroa.14.0136.i.i, %i.yx
  %i.yz = xor i64 %i.yy, %i.xr
  %i.za = and i64 %i.xv, %i.tz
  %i.zb = xor i64 %.sroa.1954.0137.i.i, %i.za
  %i.zc = xor i64 %i.zb, %i.xu
  %i.zd = and i64 %i.xy, %i.tz
  %i.ze = xor i64 %.sroa.24.0138.i.i, %i.zd
  %i.zf = xor i64 %i.ze, %i.xx
  %i.zg = and i64 %i.yb, %i.tz
  %i.zh = xor i64 %.sroa.29.0139.i.i, %i.zg
  %i.zi = xor i64 %i.zh, %i.ya
  %i.zj = and i64 %i.ye, %i.tz
  %i.zk = xor i64 %.sroa.3461.0140.i.i, %i.zj
  %i.zl = xor i64 %i.zk, %i.yd
  %i.zm = and i64 %i.yh, %i.tz
  %i.zn = xor i64 %.sroa.39.0141.i.i, %i.zm
  %i.zo = xor i64 %i.zn, %i.yg
  %i.zp = and i64 %i.yk, %i.tz
  %i.zq = xor i64 %.sroa.44.0142.i.i, %i.zp
  %i.zr = xor i64 %i.zq, %i.yj
  %i.zs = and i64 %i.yn, %i.tz
  %i.zt = xor i64 %.sroa.49.0143.i.i, %i.zs
  %i.zu = xor i64 %i.zt, %i.ym
  %i.zv = and i64 %i.yq, %i.tz
  %i.zw = xor i64 %.sroa.54.0144.i.i, %i.zv
  %i.zx = xor i64 %i.zw, %i.yp
  %i.zy = add nuw nsw i64 %.018156.i.i, 1         ; 2 uses
  %exitcond.not.i.i67 = icmp eq i64 %i.zy, 1399
  br i1 %exitcond.not.i.i67, label %bb.r, label %bb.y, !llvm.loop !86

poly_invert_mod2.exit.i:                          ; preds = %bb.u
  %i.zz = getelementptr inbounds nuw i8, ptr %i.n, i64 40154 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.zz, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #10
  %i.aaa = getelementptr inbounds nuw i8, ptr %24, i64 1402 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.n, i64 2816 ; 6 uses
  br label %bb.z

vec.epilog.scalar.ph278:                          ; preds = %vec.epilog.scalar.ph278.prol.loopexit, %vec.epilog.scalar.ph278
  %indvars.iv.i64 = phi i64 [ %indvars.iv.next.i65.3, %vec.epilog.scalar.ph278 ], [ %indvars.iv.next.i65.prol, %vec.epilog.scalar.ph278.prol.loopexit ] ; 6 uses
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %indvars.iv.i64
  %i.aad = load i16, ptr %i.aac, align 2, !tbaa !24
  %i.aae = sub i16 0, %i.aad
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %indvars.iv.i64
  store i16 %i.aae, ptr %i.aaf, align 2, !tbaa !24
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %indvars.iv.next.i65
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !24
  %i.aai = sub i16 0, %i.aah
  %i.aaj = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %indvars.iv.next.i65
  store i16 %i.aai, ptr %i.aaj, align 2, !tbaa !24
  %indvars.iv.next.i65.1 = add nuw nsw i64 %indvars.iv.i64, 2 ; 2 uses
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %indvars.iv.next.i65.1
  %i.aal = load i16, ptr %i.aak, align 2, !tbaa !24
  %i.aam = sub i16 0, %i.aal
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %indvars.iv.next.i65.1
  store i16 %i.aam, ptr %i.aan, align 2, !tbaa !24
  %indvars.iv.next.i65.2 = add nuw nsw i64 %indvars.iv.i64, 3 ; 2 uses
  %i.aao = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %indvars.iv.next.i65.2
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !24
  %i.aaq = sub i16 0, %i.aap
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %indvars.iv.next.i65.2
  store i16 %i.aaq, ptr %i.aar, align 2, !tbaa !24
  %indvars.iv.next.i65.3 = add nuw nsw i64 %indvars.iv.i64, 4 ; 2 uses
  %exitcond.not.i66.3 = icmp eq i64 %indvars.iv.next.i65.3, 701
  br i1 %exitcond.not.i66.3, label %.loopexit, label %vec.epilog.scalar.ph278, !llvm.loop !87

bb.z:                                             ; preds = %poly_mul.exit21.i, %poly_invert_mod2.exit.i
  %.043.i = phi i32 [ 0, %poly_invert_mod2.exit.i ], [ %i.aby, %poly_mul.exit21.i ]
  %i.aas = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.aat = and i32 %i.aas, 32
  %.not.i.i = icmp eq i32 %i.aat, 0
  br i1 %.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @poly_Rq_mul(ptr noundef nonnull %24, ptr noundef nonnull %23, ptr noundef nonnull %i.qz, ptr noundef nonnull %i.n) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.aaa, i8 0, i64 6, i1 false)
  br label %poly_mul.exit.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %18, ptr noundef nonnull readonly align 16 dereferenceable(1408) %23, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %19, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.qz, i64 1408, i1 false)
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.n, ptr noundef %i.aab, ptr noundef %18, ptr noundef %19, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %20, i8 0, i64 1408, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.020.i.i.i = phi i64 [ 0, %bb.ab ], [ %i.abg, %bb.ac ] ; 3 uses
  %i.aau = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.020.i.i.i ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 1392
  %i.aaw = load <16 x i8>, ptr %i.aav, align 16, !tbaa !22
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aau, i64 1408
  %i.aay = load <16 x i8>, ptr %i.aax, align 16, !tbaa !22
  %i.aaz = load <8 x i16>, ptr %i.aau, align 16, !tbaa !22
  %i.aba = shufflevector <16 x i8> %i.aaw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.abb = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.aay, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.abc = or <16 x i8> %i.abb, %i.aba
  %i.abd = bitcast <16 x i8> %i.abc to <8 x i16>
  %i.abe = add <8 x i16> %i.aaz, %i.abd
  %i.abf = getelementptr inbounds nuw [16 x i8], ptr %20, i64 %.020.i.i.i
  store <8 x i16> %i.abe, ptr %i.abf, align 16, !tbaa !22
  %i.abg = add nuw nsw i64 %.020.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i16.i = icmp eq i64 %i.abg, 88
  br i1 %exitcond.not.i.i16.i, label %poly_mul_vec.exit.i.i, label %bb.ac, !llvm.loop !1

poly_mul_vec.exit.i.i:                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %24, ptr noundef nonnull readonly align 16 dereferenceable(1408) %20, i64 1402, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.aaa, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  br label %poly_mul.exit.i

poly_mul.exit.i:                                  ; preds = %poly_mul_vec.exit.i.i, %bb.aa
  %i.abh = load i16, ptr %24, align 16, !tbaa !24
  %i.abi = add i16 %i.abh, 2
  store i16 %i.abi, ptr %24, align 16, !tbaa !24
  %i.abj = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.abk = and i32 %i.abj, 32
  %.not.i17.i = icmp eq i32 %i.abk, 0
  br i1 %.not.i17.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %poly_mul.exit.i
  call void @poly_Rq_mul(ptr noundef nonnull %i.qz, ptr noundef nonnull %i.qz, ptr noundef nonnull %24, ptr noundef nonnull %i.n) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.zz, i8 0, i64 6, i1 false)
  br label %poly_mul.exit21.i

bb.ae:                                            ; preds = %poly_mul.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %15, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.qz, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %16, ptr noundef nonnull readonly align 16 dereferenceable(1408) %24, i64 1408, i1 false)
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.n, ptr noundef %i.aab, ptr noundef %15, ptr noundef %16, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %17, i8 0, i64 1408, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.020.i.i18.i = phi i64 [ 0, %bb.ae ], [ %i.abx, %bb.af ] ; 3 uses
  %i.abl = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.020.i.i18.i ; 3 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 1392
  %i.abn = load <16 x i8>, ptr %i.abm, align 16, !tbaa !22
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 1408
  %i.abp = load <16 x i8>, ptr %i.abo, align 16, !tbaa !22
  %i.abq = load <8 x i16>, ptr %i.abl, align 16, !tbaa !22
  %i.abr = shufflevector <16 x i8> %i.abn, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.abs = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.abp, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.abt = or <16 x i8> %i.abs, %i.abr
  %i.abu = bitcast <16 x i8> %i.abt to <8 x i16>
  %i.abv = add <8 x i16> %i.abq, %i.abu
  %i.abw = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %.020.i.i18.i
  store <8 x i16> %i.abv, ptr %i.abw, align 16, !tbaa !22
  %i.abx = add nuw nsw i64 %.020.i.i18.i, 1       ; 2 uses
  %exitcond.not.i.i19.i = icmp eq i64 %i.abx, 88
  br i1 %exitcond.not.i.i19.i, label %poly_mul_vec.exit.i20.i, label %bb.af, !llvm.loop !1

poly_mul_vec.exit.i20.i:                          ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %i.qz, ptr noundef nonnull readonly align 16 dereferenceable(1408) %17, i64 1402, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.zz, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  br label %poly_mul.exit21.i

poly_mul.exit21.i:                                ; preds = %poly_mul_vec.exit.i20.i, %bb.ad
  %i.aby = add nuw nsw i32 %.043.i, 1             ; 2 uses
  %exitcond65.not.i = icmp eq i32 %i.aby, 4
  br i1 %exitcond65.not.i, label %poly_invert.exit, label %bb.z, !llvm.loop !88

poly_invert.exit:                                 ; preds = %poly_mul.exit21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #10
  %i.abz = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.aca = and i32 %i.abz, 32
  %.not.i68 = icmp eq i32 %i.aca, 0
  br i1 %.not.i68, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %poly_invert.exit
  call void @poly_Rq_mul(ptr noundef %i.e, ptr noundef nonnull %i.qz, ptr noundef nonnull %i.fo, ptr noundef nonnull %i.n) #10
  %i.acb = getelementptr inbounds nuw i8, ptr %i.e, i64 1402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.acb, i8 0, i64 6, i1 false)
  br label %poly_mul.exit72

bb.ah:                                            ; preds = %poly_invert.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %12, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.qz, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %13, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.fo, i64 1408, i1 false)
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.n, ptr noundef %i.aab, ptr noundef %12, ptr noundef %13, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %14, i8 0, i64 1408, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.020.i.i69 = phi i64 [ 0, %bb.ah ], [ %i.aco, %bb.ai ] ; 3 uses
  %i.acc = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.020.i.i69 ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 1392
  %i.ace = load <16 x i8>, ptr %i.acd, align 16, !tbaa !22
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acc, i64 1408
  %i.acg = load <16 x i8>, ptr %i.acf, align 16, !tbaa !22
  %i.ach = load <8 x i16>, ptr %i.acc, align 16, !tbaa !22
  %i.aci = shufflevector <16 x i8> %i.ace, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.acj = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.acg, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.ack = or <16 x i8> %i.acj, %i.aci
  %i.acl = bitcast <16 x i8> %i.ack to <8 x i16>
  %i.acm = add <8 x i16> %i.ach, %i.acl
  %i.acn = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %.020.i.i69
  store <8 x i16> %i.acm, ptr %i.acn, align 16, !tbaa !22
  %i.aco = add nuw nsw i64 %.020.i.i69, 1         ; 2 uses
  %exitcond.not.i.i70 = icmp eq i64 %i.aco, 88
  br i1 %exitcond.not.i.i70, label %poly_mul_vec.exit.i71, label %bb.ai, !llvm.loop !1

poly_mul_vec.exit.i71:                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1408) %i.e, ptr noundef nonnull readonly align 16 dereferenceable(1408) %14, i64 1402, i1 false)
  %i.acp = getelementptr inbounds nuw i8, ptr %i.e, i64 1402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.acp, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %poly_mul.exit72

poly_mul.exit72:                                  ; preds = %bb.ag, %poly_mul_vec.exit.i71
  %i.acq = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.acr = and i32 %i.acq, 32
  %.not.i73 = icmp eq i32 %i.acr, 0
  br i1 %.not.i73, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %poly_mul.exit72
  call void @poly_Rq_mul(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef nonnull %i.fo, ptr noundef nonnull %i.n) #10
  %i.acs = getelementptr inbounds nuw i8, ptr %i.e, i64 1402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.acs, i8 0, i64 6, i1 false)
  br label %vector.body290.preheader

bb.ak:                                            ; preds = %poly_mul.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %9, ptr noundef nonnull readonly align 1 dereferenceable(1408) %i.e, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %10, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.fo, i64 1408, i1 false)
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.n, ptr noundef %i.aab, ptr noundef %9, ptr noundef %10, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %11, i8 0, i64 1408, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.020.i.i74 = phi i64 [ 0, %bb.ak ], [ %i.adf, %bb.al ] ; 3 uses
  %i.act = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.020.i.i74 ; 3 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 1392
  %i.acv = load <16 x i8>, ptr %i.acu, align 16, !tbaa !22
  %i.acw = getelementptr inbounds nuw i8, ptr %i.act, i64 1408
  %i.acx = load <16 x i8>, ptr %i.acw, align 16, !tbaa !22
  %i.acy = load <8 x i16>, ptr %i.act, align 16, !tbaa !22
  %i.acz = shufflevector <16 x i8> %i.acv, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.ada = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.acx, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.adb = or <16 x i8> %i.ada, %i.acz
  %i.adc = bitcast <16 x i8> %i.adb to <8 x i16>
  %i.add = add <8 x i16> %i.acy, %i.adc
  %i.ade = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.020.i.i74
  store <8 x i16> %i.add, ptr %i.ade, align 16, !tbaa !22
  %i.adf = add nuw nsw i64 %.020.i.i74, 1         ; 2 uses
  %exitcond.not.i.i75 = icmp eq i64 %i.adf, 88
  br i1 %exitcond.not.i.i75, label %poly_mul_vec.exit.i76, label %bb.al, !llvm.loop !1

poly_mul_vec.exit.i76:                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1408) %i.e, ptr noundef nonnull readonly align 16 dereferenceable(1408) %11, i64 1402, i1 false)
  %i.adg = getelementptr inbounds nuw i8, ptr %i.e, i64 1402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.adg, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %vector.body290.preheader

vector.body290.preheader:                         ; preds = %bb.aj, %poly_mul_vec.exit.i76
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290.1, %vector.body290.preheader
  %index291 = phi i64 [ 0, %vector.body290.preheader ], [ %index.next294.1, %vector.body290.1 ] ; 4 uses
  %i.adh = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index291 ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 16 ; 2 uses
  %wide.load292 = load <8 x i16>, ptr %i.adh, align 2, !tbaa !24
  %wide.load293 = load <8 x i16>, ptr %i.adi, align 2, !tbaa !24
  %i.adj = and <8 x i16> %wide.load292, splat (i16 8191)
  %i.adk = and <8 x i16> %wide.load293, splat (i16 8191)
  store <8 x i16> %i.adj, ptr %i.adh, align 2, !tbaa !24
  store <8 x i16> %i.adk, ptr %i.adi, align 2, !tbaa !24
  %i.adl = icmp eq i64 %index291, 672
  br i1 %i.adl, label %vec.epilog.vector.body301, label %vector.body290.1

vector.body290.1:                                 ; preds = %vector.body290
  %i.adm = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index291 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 32 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adm, i64 48 ; 2 uses
  %wide.load292.1 = load <8 x i16>, ptr %i.adn, align 2, !tbaa !24
  %wide.load293.1 = load <8 x i16>, ptr %i.ado, align 2, !tbaa !24
  %i.adp = and <8 x i16> %wide.load292.1, splat (i16 8191)
  %i.adq = and <8 x i16> %wide.load293.1, splat (i16 8191)
  store <8 x i16> %i.adp, ptr %i.adn, align 2, !tbaa !24
  store <8 x i16> %i.adq, ptr %i.ado, align 2, !tbaa !24
  %index.next294.1 = add nuw nsw i64 %index291, 32
  br label %vector.body290

vec.epilog.vector.body301:                        ; preds = %vector.body290
  %i.adr = getelementptr inbounds nuw i8, ptr %i.e, i64 1376 ; 2 uses
  %wide.load303 = load <4 x i16>, ptr %i.adr, align 2, !tbaa !24
  %i.ads = and <4 x i16> %wide.load303, splat (i16 8191)
  store <4 x i16> %i.ads, ptr %i.adr, align 2, !tbaa !24
  %i.adt = getelementptr inbounds nuw i8, ptr %i.e, i64 1384 ; 2 uses
  %wide.load303.1 = load <4 x i16>, ptr %i.adt, align 2, !tbaa !24
  %i.adu = and <4 x i16> %wide.load303.1, splat (i16 8191)
  store <4 x i16> %i.adu, ptr %i.adt, align 2, !tbaa !24
  %i.adv = getelementptr inbounds nuw i8, ptr %i.e, i64 1392 ; 2 uses
  %wide.load303.2 = load <4 x i16>, ptr %i.adv, align 2, !tbaa !24
  %i.adw = and <4 x i16> %wide.load303.2, splat (i16 8191)
  store <4 x i16> %i.adw, ptr %i.adv, align 2, !tbaa !24
  %i.adx = getelementptr inbounds nuw i8, ptr %i.e, i64 1400 ; 2 uses
  %i.ady = load i16, ptr %i.adx, align 2, !tbaa !24
  %i.adz = and i16 %i.ady, 8191
  store i16 %i.adz, ptr %i.adx, align 2, !tbaa !24
  %i.aea = getelementptr inbounds nuw i8, ptr %i.i, i64 352 ; 8 uses
  %i.aeb = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.aec = and i32 %i.aeb, 32
  %.not.i81 = icmp eq i32 %i.aec, 0
  br i1 %.not.i81, label %bb.an, label %bb.am

bb.am:                                            ; preds = %vec.epilog.vector.body301
  call void @poly_Rq_mul(ptr noundef nonnull %i.aea, ptr noundef nonnull %i.qz, ptr noundef nonnull %i.s, ptr noundef nonnull %i.n) #10
  %i.aed = getelementptr inbounds nuw i8, ptr %i.i, i64 1754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aed, i8 0, i64 6, i1 false)
  br label %poly_mul.exit85

bb.an:                                            ; preds = %vec.epilog.vector.body301
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %6, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.qz, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %7, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.s, i64 1408, i1 false)
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.n, ptr noundef %i.aab, ptr noundef %6, ptr noundef %7, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %8, i8 0, i64 1408, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.020.i.i82 = phi i64 [ 0, %bb.an ], [ %i.aeq, %bb.ao ] ; 3 uses
  %i.aee = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.020.i.i82 ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 1392
  %i.aeg = load <16 x i8>, ptr %i.aef, align 16, !tbaa !22
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aee, i64 1408
  %i.aei = load <16 x i8>, ptr %i.aeh, align 16, !tbaa !22
  %i.aej = load <8 x i16>, ptr %i.aee, align 16, !tbaa !22
  %i.aek = shufflevector <16 x i8> %i.aeg, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.ael = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.aei, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.aem = or <16 x i8> %i.ael, %i.aek
  %i.aen = bitcast <16 x i8> %i.aem to <8 x i16>
  %i.aeo = add <8 x i16> %i.aej, %i.aen
  %i.aep = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.020.i.i82
  store <8 x i16> %i.aeo, ptr %i.aep, align 16, !tbaa !22
  %i.aeq = add nuw nsw i64 %.020.i.i82, 1         ; 2 uses
  %exitcond.not.i.i83 = icmp eq i64 %i.aeq, 88
  br i1 %exitcond.not.i.i83, label %poly_mul_vec.exit.i84, label %bb.ao, !llvm.loop !1

poly_mul_vec.exit.i84:                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1408) %i.aea, ptr noundef nonnull readonly align 16 dereferenceable(1408) %8, i64 1402, i1 false)
  %i.aer = getelementptr inbounds nuw i8, ptr %i.i, i64 1754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aer, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %poly_mul.exit85

poly_mul.exit85:                                  ; preds = %bb.am, %poly_mul_vec.exit.i84
  %i.aes = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.aet = and i32 %i.aes, 32
  %.not.i86 = icmp eq i32 %i.aet, 0
  br i1 %.not.i86, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %poly_mul.exit85
  call void @poly_Rq_mul(ptr noundef nonnull %i.aea, ptr noundef nonnull %i.aea, ptr noundef nonnull %i.s, ptr noundef nonnull %i.n) #10
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.i, i64 1754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aeu, i8 0, i64 6, i1 false)
  br label %vector.body310.preheader

bb.aq:                                            ; preds = %poly_mul.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %3, ptr noundef nonnull readonly align 1 dereferenceable(1408) %i.aea, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %4, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.s, i64 1408, i1 false)
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.n, ptr noundef %i.aab, ptr noundef %3, ptr noundef %4, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %5, i8 0, i64 1408, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %.020.i.i87 = phi i64 [ 0, %bb.aq ], [ %i.afh, %bb.ar ] ; 3 uses
  %i.aev = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.020.i.i87 ; 3 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 1392
  %i.aex = load <16 x i8>, ptr %i.aew, align 16, !tbaa !22
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aev, i64 1408
  %i.aez = load <16 x i8>, ptr %i.aey, align 16, !tbaa !22
  %i.afa = load <8 x i16>, ptr %i.aev, align 16, !tbaa !22
  %i.afb = shufflevector <16 x i8> %i.aex, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.afc = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.aez, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.afd = or <16 x i8> %i.afc, %i.afb
  %i.afe = bitcast <16 x i8> %i.afd to <8 x i16>
  %i.aff = add <8 x i16> %i.afa, %i.afe
  %i.afg = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.020.i.i87
  store <8 x i16> %i.aff, ptr %i.afg, align 16, !tbaa !22
  %i.afh = add nuw nsw i64 %.020.i.i87, 1         ; 2 uses
  %exitcond.not.i.i88 = icmp eq i64 %i.afh, 88
  br i1 %exitcond.not.i.i88, label %poly_mul_vec.exit.i89, label %bb.ar, !llvm.loop !1

poly_mul_vec.exit.i89:                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1408) %i.aea, ptr noundef nonnull readonly align 16 dereferenceable(1408) %5, i64 1402, i1 false)
  %i.afi = getelementptr inbounds nuw i8, ptr %i.i, i64 1754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.afi, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %vector.body310.preheader

vector.body310.preheader:                         ; preds = %bb.ap, %poly_mul_vec.exit.i89
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310.1, %vector.body310.preheader
  %index311 = phi i64 [ 0, %vector.body310.preheader ], [ %index.next314.1, %vector.body310.1 ] ; 4 uses
  %i.afj = getelementptr inbounds nuw [2 x i8], ptr %i.aea, i64 %index311 ; 3 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 16 ; 2 uses
  %wide.load312 = load <8 x i16>, ptr %i.afj, align 2, !tbaa !24
  %wide.load313 = load <8 x i16>, ptr %i.afk, align 2, !tbaa !24
  %i.afl = and <8 x i16> %wide.load312, splat (i16 8191)
  %i.afm = and <8 x i16> %wide.load313, splat (i16 8191)
  store <8 x i16> %i.afl, ptr %i.afj, align 2, !tbaa !24
  store <8 x i16> %i.afm, ptr %i.afk, align 2, !tbaa !24
  %i.afn = icmp eq i64 %index311, 672
  br i1 %i.afn, label %vec.epilog.vector.body321, label %vector.body310.1

vector.body310.1:                                 ; preds = %vector.body310
  %i.afo = getelementptr inbounds nuw [2 x i8], ptr %i.aea, i64 %index311 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 32 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 48 ; 2 uses
  %wide.load312.1 = load <8 x i16>, ptr %i.afp, align 2, !tbaa !24
  %wide.load313.1 = load <8 x i16>, ptr %i.afq, align 2, !tbaa !24
  %i.afr = and <8 x i16> %wide.load312.1, splat (i16 8191)
  %i.afs = and <8 x i16> %wide.load313.1, splat (i16 8191)
  store <8 x i16> %i.afr, ptr %i.afp, align 2, !tbaa !24
  store <8 x i16> %i.afs, ptr %i.afq, align 2, !tbaa !24
  %index.next314.1 = add nuw nsw i64 %index311, 32
  br label %vector.body310

vec.epilog.vector.body321:                        ; preds = %vector.body310
  %i.aft = getelementptr inbounds nuw i8, ptr %i.i, i64 1728 ; 2 uses
  %wide.load323 = load <4 x i16>, ptr %i.aft, align 2, !tbaa !24
  %i.afu = and <4 x i16> %wide.load323, splat (i16 8191)
  store <4 x i16> %i.afu, ptr %i.aft, align 2, !tbaa !24
  %i.afv = getelementptr inbounds nuw i8, ptr %i.i, i64 1736 ; 2 uses
  %wide.load323.1 = load <4 x i16>, ptr %i.afv, align 2, !tbaa !24
  %i.afw = and <4 x i16> %wide.load323.1, splat (i16 8191)
  store <4 x i16> %i.afw, ptr %i.afv, align 2, !tbaa !24
  %i.afx = getelementptr inbounds nuw i8, ptr %i.i, i64 1744 ; 2 uses
  %wide.load323.2 = load <4 x i16>, ptr %i.afx, align 2, !tbaa !24
  %i.afy = and <4 x i16> %wide.load323.2, splat (i16 8191)
  store <4 x i16> %i.afy, ptr %i.afx, align 2, !tbaa !24
  %i.afz = getelementptr inbounds nuw i8, ptr %i.i, i64 1752 ; 2 uses
  %i.aga = load i16, ptr %i.afz, align 2, !tbaa !24
  %i.agb = and i16 %i.aga, 8191
  store i16 %i.agb, ptr %i.afz, align 2, !tbaa !24
  call void @OPENSSL_free(ptr noundef nonnull %i.j) #10
  br label %bb.as

bb.as:                                            ; preds = %bb.b, %vec.epilog.vector.body321
  %.045 = phi i32 [ 1, %vec.epilog.vector.body321 ], [ 0, %bb.b ]
  ret i32 %.045
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @RAND_bytes(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @HRSS_encap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.poly_vec, align 16          ; 4 uses
  %5 = alloca %struct.poly_vec, align 16          ; 4 uses
  %6 = alloca %struct.poly_vec, align 16          ; 5 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = sub i64 0, %i.a
  %i.c = and i64 %i.b, 15
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 2 uses
  %i.e = tail call ptr @OPENSSL_malloc(i64 noundef 40591) #10 ; 6 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 0, %i.f
  %i.h = and i64 %i.g, 31                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 23 uses
  %.not55 = icmp eq ptr %i.e, null
  br i1 %.not55, label %bb.b, label %vector.memcheck

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1138) %0, i8 0, i64 1138, i1 false)
  %i.j = tail call i32 @RAND_bytes(ptr noundef %1, i64 noundef 32) #10
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #12
  unreachable

vector.memcheck:                                  ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 34528 ; 5 uses
  %i.m = getelementptr i8, ptr %i.e, i64 %i.h
  %i.n = getelementptr i8, ptr %i.m, i64 35928
  %i.o = getelementptr i8, ptr %3, i64 700
  %bound0 = icmp ult ptr %i.l, %i.o
  %bound1 = icmp ult ptr %3, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load = load <8 x i8>, ptr %i.p, align 1, !tbaa !22, !alias.scope !104 ; 2 uses
  %i.q = zext <8 x i8> %wide.load to <8 x i16>
  %i.r = zext <8 x i8> %wide.load to <8 x i32>
  %i.s = mul nuw nsw <8 x i32> %i.r, splat (i32 21845)
  %i.t = lshr <8 x i32> %i.s, splat (i32 16)
  %i.u = trunc nuw nsw <8 x i32> %i.t to <8 x i16>
  %i.v = mul nsw <8 x i16> %i.u, splat (i16 -3)
  %i.w = add nsw <8 x i16> %i.v, %i.q             ; 3 uses
  %i.x = ashr <8 x i16> %i.w, splat (i16 1)
  %i.y = and <8 x i16> %i.x, %i.w
  %i.z = add <8 x i16> %i.y, splat (i16 -1)
  %i.aa = and <8 x i16> %i.z, %i.w                ; 2 uses
  %i.ab = lshr <8 x i16> %i.aa, splat (i16 1)
  %i.ac = xor <8 x i16> %i.ab, splat (i16 1)
  %i.ad = add nsw <8 x i16> %i.ac, splat (i16 -1)
  %i.ae = or <8 x i16> %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index
  store <8 x i16> %i.ae, ptr %i.af, align 2, !tbaa !24, !alias.scope !105, !noalias !104
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, 696
  br i1 %i.ag, label %scalar.ph.preheader, label %vector.body, !llvm.loop !97

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck
  %.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 696, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010.i = phi i64 [ %i.az, %scalar.ph ], [ %.010.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %.010.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !22  ; 2 uses
  %i.aj = zext i8 %i.ai to i16
  %i.ak = zext i8 %i.ai to i32
  %i.al = mul nuw nsw i32 %i.ak, 21845
  %i.am = lshr i32 %i.al, 16
  %i.an = trunc nuw nsw i32 %i.am to i16
  %i.ao = mul nsw i16 %i.an, -3
  %i.ap = add nsw i16 %i.ao, %i.aj                ; 3 uses
  %i.aq = ashr i16 %i.ap, 1
  %i.ar = and i16 %i.aq, %i.ap
  %i.as = add i16 %i.ar, -1
  %i.at = and i16 %i.as, %i.ap                    ; 2 uses
  %i.au = lshr i16 %i.at, 1
  %i.av = xor i16 %i.au, 1
  %i.aw = add nsw i16 %i.av, -1
  %i.ax = or i16 %i.aw, %i.at
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.010.i
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !24
  %i.az = add nuw nsw i64 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, 700
  br i1 %exitcond.not.i, label %poly_short_sample.exit, label %scalar.ph, !llvm.loop !98

poly_short_sample.exit:                           ; preds = %scalar.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 35928
  store i64 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 35936 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 700 ; 3 uses
  %i.bd = getelementptr i8, ptr %i.e, i64 %i.h
  %i.be = getelementptr i8, ptr %i.bd, i64 37336
  %i.bf = getelementptr i8, ptr %3, i64 1400
  %bound066 = icmp ult ptr %i.bb, %i.bf
  %bound167 = icmp ult ptr %i.bc, %i.be
  %found.conflict68 = and i1 %bound066, %bound167
  br i1 %found.conflict68, label %scalar.ph64.preheader, label %vector.body70

vector.body70:                                    ; preds = %poly_short_sample.exit, %vector.body70
  %index71 = phi i64 [ %index.next73, %vector.body70 ], [ 0, %poly_short_sample.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index71
  %wide.load72 = load <8 x i8>, ptr %i.bg, align 1, !tbaa !22, !alias.scope !106 ; 2 uses
  %i.bh = zext <8 x i8> %wide.load72 to <8 x i16>
  %i.bi = zext <8 x i8> %wide.load72 to <8 x i32>
  %i.bj = mul nuw nsw <8 x i32> %i.bi, splat (i32 21845)
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 16)
  %i.bl = trunc nuw nsw <8 x i32> %i.bk to <8 x i16>
  %i.bm = mul nsw <8 x i16> %i.bl, splat (i16 -3)
  %i.bn = add nsw <8 x i16> %i.bm, %i.bh          ; 3 uses
  %i.bo = ashr <8 x i16> %i.bn, splat (i16 1)
  %i.bp = and <8 x i16> %i.bo, %i.bn
  %i.bq = add <8 x i16> %i.bp, splat (i16 -1)
  %i.br = and <8 x i16> %i.bq, %i.bn              ; 2 uses
  %i.bs = lshr <8 x i16> %i.br, splat (i16 1)
  %i.bt = xor <8 x i16> %i.bs, splat (i16 1)
  %i.bu = add nsw <8 x i16> %i.bt, splat (i16 -1)
  %i.bv = or <8 x i16> %i.bu, %i.br
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %index71
  store <8 x i16> %i.bv, ptr %i.bw, align 2, !tbaa !24, !alias.scope !107, !noalias !106
  %index.next73 = add nuw i64 %index71, 8         ; 2 uses
  %i.bx = icmp eq i64 %index.next73, 696
  br i1 %i.bx, label %scalar.ph64.preheader, label %vector.body70, !llvm.loop !102

scalar.ph64.preheader:                            ; preds = %vector.body70, %poly_short_sample.exit
  %.010.i38.ph = phi i64 [ 0, %poly_short_sample.exit ], [ 696, %vector.body70 ]
  br label %scalar.ph64

scalar.ph64:                                      ; preds = %scalar.ph64.preheader, %scalar.ph64
  %.010.i38 = phi i64 [ %i.cq, %scalar.ph64 ], [ %.010.i38.ph, %scalar.ph64.preheader ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.010.i38
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !22  ; 2 uses
  %i.ca = zext i8 %i.bz to i16
  %i.cb = zext i8 %i.bz to i32
  %i.cc = mul nuw nsw i32 %i.cb, 21845
  %i.cd = lshr i32 %i.cc, 16
  %i.ce = trunc nuw nsw i32 %i.cd to i16
  %i.cf = mul nsw i16 %i.ce, -3
  %i.cg = add nsw i16 %i.cf, %i.ca                ; 3 uses
  %i.ch = ashr i16 %i.cg, 1
  %i.ci = and i16 %i.ch, %i.cg
  %i.cj = add i16 %i.ci, -1
  %i.ck = and i16 %i.cj, %i.cg                    ; 2 uses
  %i.cl = lshr i16 %i.ck, 1
  %i.cm = xor i16 %i.cl, 1
  %i.cn = add nsw i16 %i.cm, -1
  %i.co = or i16 %i.cn, %i.ck
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.010.i38
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !24
  %i.cq = add nuw nsw i64 %.010.i38, 1            ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.cq, 700
  br i1 %exitcond.not.i39, label %poly_short_sample.exit40, label %scalar.ph64, !llvm.loop !103

poly_short_sample.exit40:                         ; preds = %scalar.ph64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 37336
  store i64 0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 37344 ; 3 uses
  tail call fastcc void @poly_lift(ptr noundef %i.cs, ptr noundef %i.l)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 38752 ; 5 uses
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.cv = and i32 %i.cu, 32
  %.not.i41 = icmp eq i32 %i.cv, 0
  br i1 %.not.i41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %poly_short_sample.exit40
  tail call void @poly_Rq_mul(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.bb, ptr noundef %i.d, ptr noundef nonnull %i.i) #10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 40154
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.cw, i8 0, i64 6, i1 false)
  br label %vector.body78.preheader

bb.e:                                             ; preds = %poly_short_sample.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %4, ptr noundef nonnull readonly align 8 dereferenceable(1408) %i.bb, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %5, ptr noundef nonnull readonly align 1 dereferenceable(1408) %i.d, i64 1408, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 2816
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.i, ptr noundef %i.cx, ptr noundef %4, ptr noundef %5, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %6, i8 0, i64 1408, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.020.i.i = phi i64 [ 0, %bb.e ], [ %i.dk, %bb.f ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.020.i.i ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1392
  %i.da = load <16 x i8>, ptr %i.cz, align 16, !tbaa !22
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 1408
  %i.dc = load <16 x i8>, ptr %i.db, align 16, !tbaa !22
  %i.dd = load <8 x i16>, ptr %i.cy, align 16, !tbaa !22
  %i.de = shufflevector <16 x i8> %i.da, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.df = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dc, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.dg = or <16 x i8> %i.df, %i.de
  %i.dh = bitcast <16 x i8> %i.dg to <8 x i16>
  %i.di = add <8 x i16> %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.020.i.i
  store <8 x i16> %i.di, ptr %i.dj, align 16, !tbaa !22
  %i.dk = add nuw nsw i64 %.020.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dk, 88
  br i1 %exitcond.not.i.i, label %poly_mul_vec.exit.i, label %bb.f, !llvm.loop !1

poly_mul_vec.exit.i:                              ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.ct, ptr noundef nonnull readonly align 16 dereferenceable(1408) %6, i64 1402, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 40154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.dl, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %vector.body78.preheader

vector.body78.preheader:                          ; preds = %bb.d, %poly_mul_vec.exit.i
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78.1, %vector.body78.preheader
  %index79 = phi i64 [ 0, %vector.body78.preheader ], [ %index.next84.1, %vector.body78.1 ] ; 5 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %index79 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load80 = load <8 x i16>, ptr %i.dm, align 2, !tbaa !24
  %wide.load81 = load <8 x i16>, ptr %i.dn, align 2, !tbaa !24
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %index79 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %wide.load82 = load <8 x i16>, ptr %i.do, align 2, !tbaa !24
  %wide.load83 = load <8 x i16>, ptr %i.dp, align 2, !tbaa !24
  %i.dq = add <8 x i16> %wide.load82, %wide.load80
  %i.dr = add <8 x i16> %wide.load83, %wide.load81
  store <8 x i16> %i.dq, ptr %i.do, align 2, !tbaa !24
  store <8 x i16> %i.dr, ptr %i.dp, align 2, !tbaa !24
  %i.ds = icmp eq i64 %index79, 672
  br i1 %i.ds, label %vec.epilog.vector.body, label %vector.body78.1

vector.body78.1:                                  ; preds = %vector.body78
  %index.next84 = or disjoint i64 %index79, 16    ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %index.next84 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load80.1 = load <8 x i16>, ptr %i.dt, align 2, !tbaa !24
  %wide.load81.1 = load <8 x i16>, ptr %i.du, align 2, !tbaa !24
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %index.next84 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load82.1 = load <8 x i16>, ptr %i.dv, align 2, !tbaa !24
  %wide.load83.1 = load <8 x i16>, ptr %i.dw, align 2, !tbaa !24
  %i.dx = add <8 x i16> %wide.load82.1, %wide.load80.1
  %i.dy = add <8 x i16> %wide.load83.1, %wide.load81.1
  store <8 x i16> %i.dx, ptr %i.dv, align 2, !tbaa !24
  store <8 x i16> %i.dy, ptr %i.dw, align 2, !tbaa !24
  %index.next84.1 = add nuw nsw i64 %index79, 32
  br label %vector.body78

vec.epilog.vector.body:                           ; preds = %vector.body78
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 38720
  %wide.load87 = load <4 x i16>, ptr %i.dz, align 8, !tbaa !24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 40128 ; 2 uses
  %wide.load88 = load <4 x i16>, ptr %i.ea, align 8, !tbaa !24
  %i.eb = add <4 x i16> %wide.load88, %wide.load87
  store <4 x i16> %i.eb, ptr %i.ea, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 38728
  %wide.load87.1 = load <4 x i16>, ptr %i.ec, align 8, !tbaa !24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 40136 ; 2 uses
  %wide.load88.1 = load <4 x i16>, ptr %i.ed, align 8, !tbaa !24
  %i.ee = add <4 x i16> %wide.load88.1, %wide.load87.1
  store <4 x i16> %i.ee, ptr %i.ed, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 38736
  %wide.load87.2 = load <4 x i16>, ptr %i.ef, align 8, !tbaa !24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 40144 ; 2 uses
  %wide.load88.2 = load <4 x i16>, ptr %i.eg, align 8, !tbaa !24
  %i.eh = add <4 x i16> %wide.load88.2, %wide.load87.2
  store <4 x i16> %i.eh, ptr %i.eg, align 8, !tbaa !24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.i, i64 38744
  %i.ej = load i16, ptr %i.ei, align 8, !tbaa !24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.i, i64 40152 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 8, !tbaa !24
  %i.em = add i16 %i.el, %i.ej
  store i16 %i.em, ptr %i.ek, align 8, !tbaa !24
  call fastcc void @poly_marshal(ptr noundef %0, ptr noundef nonnull %i.ct)
  %i.en = getelementptr inbounds nuw i8, ptr %i.i, i64 40272 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %vec.epilog.vector.body
  %.024.i = phi ptr [ %i.l, %vec.epilog.vector.body ], [ %i.fb, %bb.g ] ; 3 uses
  %.01523.i = phi i64 [ 0, %vec.epilog.vector.body ], [ %i.fc, %bb.g ] ; 2 uses
  %i.eo = load i16, ptr %.024.i, align 2, !tbaa !24
  %i.ep = and i16 %i.eo, 3                        ; 2 uses
  %i.eq = lshr i16 %i.ep, 1
  %i.er = xor i16 %i.eq, %i.ep
  %i.es = getelementptr inbounds nuw i8, ptr %.024.i, i64 2
  %i.et = load <4 x i16>, ptr %i.es, align 2, !tbaa !24
  %i.eu = and <4 x i16> %i.et, splat (i16 3)      ; 2 uses
  %i.ev = lshr <4 x i16> %i.eu, splat (i16 1)
  %i.ew = xor <4 x i16> %i.ev, %i.eu
  %i.ex = mul nuw nsw <4 x i16> %i.ew, <i16 3, i16 9, i16 27, i16 81>
  %i.ey = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ex)
  %op.rdx91 = add nuw nsw i16 %i.ey, %i.er
  %i.ez = trunc i16 %op.rdx91 to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 %.01523.i
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !22
  %i.fb = getelementptr inbounds nuw i8, ptr %.024.i, i64 10
  %i.fc = add nuw nsw i64 %.01523.i, 1            ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %i.fc, 140
  br i1 %exitcond.not.i42, label %poly_marshal_mod3.exit, label %bb.g, !llvm.loop !2

poly_marshal_mod3.exit:                           ; preds = %bb.g
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 40412 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %poly_marshal_mod3.exit
  %.024.i43 = phi ptr [ %i.bb, %poly_marshal_mod3.exit ], [ %i.fr, %bb.h ] ; 3 uses
  %.01523.i44 = phi i64 [ 0, %poly_marshal_mod3.exit ], [ %i.fs, %bb.h ] ; 2 uses
  %i.fe = load i16, ptr %.024.i43, align 2, !tbaa !24
  %i.ff = and i16 %i.fe, 3                        ; 2 uses
  %i.fg = lshr i16 %i.ff, 1
  %i.fh = xor i16 %i.fg, %i.ff
  %i.fi = getelementptr inbounds nuw i8, ptr %.024.i43, i64 2
  %i.fj = load <4 x i16>, ptr %i.fi, align 2, !tbaa !24
  %i.fk = and <4 x i16> %i.fj, splat (i16 3)      ; 2 uses
  %i.fl = lshr <4 x i16> %i.fk, splat (i16 1)
  %i.fm = xor <4 x i16> %i.fl, %i.fk
  %i.fn = mul nuw nsw <4 x i16> %i.fm, <i16 3, i16 9, i16 27, i16 81>
  %i.fo = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.fn)
  %op.rdx = add nuw nsw i16 %i.fo, %i.fh
  %i.fp = trunc i16 %op.rdx to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.01523.i44
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !22
  %i.fr = getelementptr inbounds nuw i8, ptr %.024.i43, i64 10
  %i.fs = add nuw nsw i64 %.01523.i44, 1          ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.fs, 140
  br i1 %exitcond.not.i53, label %poly_marshal_mod3.exit54, label %bb.h, !llvm.loop !2

poly_marshal_mod3.exit54:                         ; preds = %bb.h
  %i.ft = getelementptr inbounds nuw i8, ptr %i.i, i64 40160 ; 6 uses
  %i.fu = call i32 @SHA256_Init(ptr noundef nonnull %i.ft) #10 ; 0 uses
  %i.fv = call i32 @SHA256_Update(ptr noundef nonnull %i.ft, ptr noundef nonnull @kSharedKey, i64 noundef 11) #10 ; 0 uses
  %i.fw = call i32 @SHA256_Update(ptr noundef nonnull %i.ft, ptr noundef nonnull %i.en, i64 noundef 140) #10 ; 0 uses
  %i.fx = call i32 @SHA256_Update(ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fd, i64 noundef 140) #10 ; 0 uses
  %i.fy = call i32 @SHA256_Update(ptr noundef nonnull %i.ft, ptr noundef %0, i64 noundef 1138) #10 ; 0 uses
  %i.fz = call i32 @SHA256_Final(ptr noundef %1, ptr noundef nonnull %i.ft) #10 ; 0 uses
  call void @OPENSSL_free(ptr noundef nonnull %i.e) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %poly_marshal_mod3.exit54
  %.036 = phi i32 [ 1, %poly_marshal_mod3.exit54 ], [ 0, %bb.b ]
  ret i32 %.036
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @poly_lift(ptr nofree noundef nonnull captures(none) initializes((0, 6)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #7 {
iter.check:
  %i.a = load i16, ptr %1, align 16, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !24
  %i.d = add i16 %i.c, %i.a                       ; 2 uses
  store i16 %i.d, ptr %0, align 16, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !24   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i16 %i.f, ptr %i.g, align 2, !tbaa !24
  %i.h = load i16, ptr %1, align 16, !tbaa !24
  %i.i = load i16, ptr %i.b, align 4, !tbaa !24
  %i.j = sub i16 %i.i, %i.h                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i16 %i.j, ptr %i.k, align 4, !tbaa !24
  br label %vector.body

vector.body:                                      ; preds = %iter.check, %vector.body
  %index = phi i64 [ 0, %iter.check ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %iter.check ], [ %i.dw, %vector.body ]
  %vec.phi77 = phi <8 x i16> [ zeroinitializer, %iter.check ], [ %i.dx, %vector.body ]
  %vec.phi78 = phi <8 x i16> [ zeroinitializer, %iter.check ], [ %i.fw, %vector.body ]
  %vec.phi79 = phi <8 x i16> [ zeroinitializer, %iter.check ], [ %i.fx, %vector.body ]
  %i.l = mul nuw i64 %index, 3                    ; 16 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 18
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 30
  %i.w = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 36
end_hunk_1
begin_hunk_2_@HRSS_decap:bb.a
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !22
  %i.bm = xor i8 %i.bl, 54
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 34541
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 1774
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !22
  %i.bq = xor i8 %i.bp, 54
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 34542
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 1775
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !22
  %i.bu = xor i8 %i.bt, 54
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 34543
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 1776
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !22
  %i.by = xor i8 %i.bx, 54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 34544 ; 3 uses
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 1777
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !22
  %i.cc = xor i8 %i.cb, 54
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 34545
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 1778
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !22
  %i.cg = xor i8 %i.cf, 54
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 34546
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 1779
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !22
  %i.ck = xor i8 %i.cj, 54
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 34547
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 1780
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !22
  %i.co = xor i8 %i.cn, 54
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 34548
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 1781
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !22
  %i.cs = xor i8 %i.cr, 54
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 34549
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 1782
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !22
  %i.cw = xor i8 %i.cv, 54
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 34550
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 1783
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !22
  %i.da = xor i8 %i.cz, 54
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 34551
  store i8 %i.da, ptr %i.db, align 1, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 1784
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !22
  %i.de = xor i8 %i.dd, 54
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 34552
  store i8 %i.de, ptr %i.df, align 1, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 1785
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !22
  %i.di = xor i8 %i.dh, 54
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 34553
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 1786
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !22
  %i.dm = xor i8 %i.dl, 54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 34554
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 1787
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !22
  %i.dq = xor i8 %i.dp, 54
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 34555
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !22
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 1788
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !22
  %i.du = xor i8 %i.dt, 54
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 34556
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 1789
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !22
  %i.dy = xor i8 %i.dx, 54
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 34557
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !22
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 1790
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !22
  %i.ec = xor i8 %i.eb, 54
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 34558
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !22
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 1791
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !22
  %i.eg = xor i8 %i.ef, 54
  %i.eh = getelementptr inbounds nuw i8, ptr %i.j, i64 34559
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !22
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 34560 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ei, i8 54, i64 32, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 34592 ; 14 uses
  %i.ek = tail call i32 @SHA256_Init(ptr noundef nonnull %i.ej) #10 ; 0 uses
  %i.el = tail call i32 @SHA256_Update(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.l, i64 noundef 64) #10 ; 0 uses
  %i.em = tail call i32 @SHA256_Update(ptr noundef nonnull %i.ej, ptr noundef %2, i64 noundef %3) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.en = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ej) #10 ; 0 uses
  %i.eo = load <16 x i8>, ptr %i.l, align 1, !tbaa !22
  %i.ep = xor <16 x i8> %i.eo, splat (i8 106)
  store <16 x i8> %i.ep, ptr %i.l, align 1, !tbaa !22
  %i.eq = load <16 x i8>, ptr %i.bz, align 1, !tbaa !22
  %i.er = xor <16 x i8> %i.eq, splat (i8 106)
  store <16 x i8> %i.er, ptr %i.bz, align 1, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ei, i8 92, i64 32, i1 false)
  %i.es = call i32 @SHA256_Init(ptr noundef nonnull %i.ej) #10 ; 0 uses
  %i.et = call i32 @SHA256_Update(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.l, i64 noundef 64) #10 ; 0 uses
  %i.eu = call i32 @SHA256_Update(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.a, i64 noundef 32) #10 ; 0 uses
  %i.ev = call i32 @SHA256_Final(ptr noundef %0, ptr noundef nonnull %i.ej) #10 ; 0 uses
  %.not97 = icmp eq i64 %3, 1138
  br i1 %.not97, label %bb.d, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.ew = tail call i32 @RAND_bytes(ptr noundef %0, i64 noundef 32) #10
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #12
  unreachable

bb.d:                                             ; preds = %.preheader
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 34704 ; 6 uses
  %i.ez = call fastcc i32 @poly_unmarshal(ptr noundef nonnull %i.ey, ptr noundef %2)
  %.not98 = icmp eq i32 %i.ez, 0
  br i1 %.not98, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 36112 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !17
  %i.fd = xor i64 %i.fc, -1
  %i.fe = load i64, ptr %i.fb, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.02033.i = phi i32 [ 0, %bb.e ], [ %.1.i, %bb.h ]
  %.02132.i = phi i64 [ %i.fe, %bb.e ], [ %.122.i, %bb.h ] ; 2 uses
  %.02331.i = phi i64 [ %i.fd, %bb.e ], [ %.124.i, %bb.h ] ; 2 uses
  %.02530.i = phi ptr [ %i.fb, %bb.e ], [ %.126.i, %bb.h ] ; 2 uses
  %.02729.i = phi ptr [ %i.e, %bb.e ], [ %.128.i, %bb.h ] ; 2 uses
  %i.ff = and i64 %.02331.i, 1
  %i.fg = add nuw nsw i64 %i.ff, 65535
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %indvars.iv.i
  %i.fi = and i64 %.02132.i, 1
  %i.fj = or i64 %i.fg, %i.fi
  %i.fk = trunc i64 %i.fj to i16
  store i16 %i.fk, ptr %i.fh, align 2, !tbaa !24
  %i.fl = lshr i64 %.02331.i, 1
  %i.fm = lshr i64 %.02132.i, 1
  %i.fn = add i32 %.02033.i, 1                    ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 64
  br i1 %i.fo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fp = getelementptr inbounds nuw i8, ptr %.02729.i, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.02530.i, i64 8 ; 2 uses
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !17
  %i.fs = xor i64 %i.fr, -1
  %i.ft = load i64, ptr %i.fq, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.128.i = phi ptr [ %i.fp, %bb.g ], [ %.02729.i, %bb.f ]
  %.126.i = phi ptr [ %i.fq, %bb.g ], [ %.02530.i, %bb.f ]
  %.124.i = phi i64 [ %i.fs, %bb.g ], [ %i.fl, %bb.f ]
  %.122.i = phi i64 [ %i.ft, %bb.g ], [ %i.fm, %bb.f ]
  %.1.i = phi i32 [ 0, %bb.g ], [ %i.fn, %bb.f ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 701
  br i1 %exitcond.not.i, label %poly_from_poly3.exit, label %bb.f, !llvm.loop !112

poly_from_poly3.exit:                             ; preds = %bb.h
  %i.fu = getelementptr inbounds nuw i8, ptr %i.j, i64 37514
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.fu, i8 0, i64 6, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 37520 ; 3 uses
  %i.fw = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.fx = and i32 %i.fw, 32
  %.not.i99 = icmp eq i32 %i.fx, 0
  br i1 %.not.i99, label %bb.j, label %bb.i

bb.i:                                             ; preds = %poly_from_poly3.exit
  call void @poly_Rq_mul(ptr noundef nonnull %i.fv, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.j) #10
  %i.fy = getelementptr inbounds nuw i8, ptr %i.j, i64 38922
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.fy, i8 0, i64 6, i1 false)
  br label %poly_mul.exit

bb.j:                                             ; preds = %poly_from_poly3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %7, ptr noundef nonnull readonly align 1 dereferenceable(1408) %i.ey, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %8, ptr noundef nonnull readonly align 1 dereferenceable(1408) %i.fa, i64 1408, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.j, i64 2816
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.j, ptr noundef %i.fz, ptr noundef %7, ptr noundef %8, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %9, i8 0, i64 1408, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.020.i.i = phi i64 [ 0, %bb.j ], [ %i.gm, %bb.k ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.020.i.i ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1392
  %i.gc = load <16 x i8>, ptr %i.gb, align 16, !tbaa !22
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 1408
  %i.ge = load <16 x i8>, ptr %i.gd, align 16, !tbaa !22
  %i.gf = load <8 x i16>, ptr %i.ga, align 16, !tbaa !22
  %i.gg = shufflevector <16 x i8> %i.gc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.gh = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ge, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.gi = or <16 x i8> %i.gh, %i.gg
  %i.gj = bitcast <16 x i8> %i.gi to <8 x i16>
  %i.gk = add <8 x i16> %i.gf, %i.gj
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.020.i.i
  store <8 x i16> %i.gk, ptr %i.gl, align 16, !tbaa !22
  %i.gm = add nuw nsw i64 %.020.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gm, 88
  br i1 %exitcond.not.i.i, label %poly_mul_vec.exit.i, label %bb.k, !llvm.loop !1

poly_mul_vec.exit.i:                              ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1408) %i.fv, ptr noundef nonnull readonly align 16 dereferenceable(1408) %9, i64 1402, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.j, i64 38922
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.gn, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %poly_mul.exit

poly_mul.exit:                                    ; preds = %bb.i, %poly_mul_vec.exit.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.j, i64 38928 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.j, i64 39016
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %poly_mul.exit
  %indvars.iv.i100 = phi i64 [ 0, %poly_mul.exit ], [ %indvars.iv.next.i102, %bb.n ] ; 2 uses
  %.02942.i = phi i32 [ 0, %poly_mul.exit ], [ %.1.i101, %bb.n ]
  %.03041.i = phi i64 [ 0, %poly_mul.exit ], [ %.131.i, %bb.n ]
  %.03240.i = phi i64 [ 0, %poly_mul.exit ], [ %.133.i, %bb.n ]
  %.03439.i = phi ptr [ %i.gp, %poly_mul.exit ], [ %.135.i, %bb.n ] ; 3 uses
  %.03638.i = phi ptr [ %i.go, %poly_mul.exit ], [ %.137.i, %bb.n ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv.i100
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !24
  %i.gs = shl i16 %i.gr, 3
  %i.gt = ashr exact i16 %i.gs, 3                 ; 2 uses
  %i.gu = sext i16 %i.gt to i32
  %i.gv = mul nsw i32 %i.gu, 21845
  %i.gw = lshr i32 %i.gv, 16
  %i.gx = trunc nuw i32 %i.gw to i16
  %i.gy = mul i16 %i.gx, -3
  %i.gz = add i16 %i.gy, %i.gt                    ; 3 uses
  %i.ha = ashr i16 %i.gz, 1
  %i.hb = and i16 %i.ha, %i.gz
  %i.hc = add i16 %i.hb, -1
  %i.hd = and i16 %i.hc, %i.gz                    ; 2 uses
  %i.he = lshr i64 %.03240.i, 1
  %i.hf = and i16 %i.hd, 2
  %i.hg = zext nneg i16 %i.hf to i64
  %i.hh = shl nuw i64 %i.hg, 62                   ; 2 uses
  %i.hi = or disjoint i64 %i.hh, %i.he            ; 2 uses
  %i.hj = zext i16 %i.hd to i64
  %i.hk = call i64 @llvm.fshl.i64(i64 %i.hj, i64 %.03041.i, i64 63)
  %i.hl = or i64 %i.hh, %i.hk                     ; 2 uses
  %i.hm = add i32 %.02942.i, 1                    ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 64
  br i1 %i.hn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.hi, ptr %.03638.i, align 8, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %.03638.i, i64 8
  store i64 %i.hl, ptr %.03439.i, align 8, !tbaa !17
  %i.hp = getelementptr inbounds nuw i8, ptr %.03439.i, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.137.i = phi ptr [ %i.ho, %bb.m ], [ %.03638.i, %bb.l ] ; 2 uses
  %.135.i = phi ptr [ %i.hp, %bb.m ], [ %.03439.i, %bb.l ] ; 2 uses
  %.133.i = phi i64 [ 0, %bb.m ], [ %i.hi, %bb.l ] ; 2 uses
  %.131.i = phi i64 [ 0, %bb.m ], [ %i.hl, %bb.l ] ; 2 uses
  %.1.i101 = phi i32 [ 0, %bb.m ], [ %i.hm, %bb.l ] ; 2 uses
  %indvars.iv.next.i102 = add nuw nsw i64 %indvars.iv.i100, 1 ; 2 uses
  %exitcond.not.i103 = icmp eq i64 %indvars.iv.next.i102, 701
  br i1 %exitcond.not.i103, label %poly3_from_poly.exit, label %bb.l, !llvm.loop !0

poly3_from_poly.exit:                             ; preds = %bb.n
  %i.hq = zext i32 %.1.i101 to i64
  %i.hr = sub nsw i64 64, %i.hq                   ; 2 uses
  %i.hs = lshr i64 %.133.i, %i.hr
  %i.ht = lshr i64 %.131.i, %i.hr
  store i64 %i.hs, ptr %.137.i, align 8, !tbaa !17
  store i64 %i.ht, ptr %.135.i, align 8, !tbaa !17
  %i.hu = getelementptr inbounds nuw i8, ptr %i.j, i64 39104 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @HRSS_poly3_mul(ptr noundef nonnull %i.hu, ptr noundef nonnull %i.go, ptr noundef nonnull %i.hv)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.j, i64 39280 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.j, i64 39192 ; 2 uses
  %i.hy = load i64, ptr %i.hu, align 8, !tbaa !17
  %i.hz = xor i64 %i.hy, -1
  %i.ia = load i64, ptr %i.hx, align 8, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %poly3_from_poly.exit
  %indvars.iv.i104 = phi i64 [ 0, %poly3_from_poly.exit ], [ %indvars.iv.next.i115, %bb.q ] ; 2 uses
  %.02033.i105 = phi i32 [ 0, %poly3_from_poly.exit ], [ %.1.i114, %bb.q ]
  %.02132.i106 = phi i64 [ %i.ia, %poly3_from_poly.exit ], [ %.122.i113, %bb.q ] ; 2 uses
  %.02331.i107 = phi i64 [ %i.hz, %poly3_from_poly.exit ], [ %.124.i112, %bb.q ] ; 2 uses
  %.02530.i108 = phi ptr [ %i.hx, %poly3_from_poly.exit ], [ %.126.i111, %bb.q ] ; 2 uses
  %.02729.i109 = phi ptr [ %i.hu, %poly3_from_poly.exit ], [ %.128.i110, %bb.q ] ; 2 uses
  %i.ib = and i64 %.02331.i107, 1
  %i.ic = add nuw nsw i64 %i.ib, 65535
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.hw, i64 %indvars.iv.i104
  %i.ie = and i64 %.02132.i106, 1
  %i.if = or i64 %i.ic, %i.ie
  %i.ig = trunc i64 %i.if to i16
  store i16 %i.ig, ptr %i.id, align 2, !tbaa !24
  %i.ih = lshr i64 %.02331.i107, 1
  %i.ii = lshr i64 %.02132.i106, 1
  %i.ij = add i32 %.02033.i105, 1                 ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 64
  br i1 %i.ik, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.il = getelementptr inbounds nuw i8, ptr %.02729.i109, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.02530.i108, i64 8 ; 2 uses
  %i.in = load i64, ptr %i.il, align 8, !tbaa !17
  %i.io = xor i64 %i.in, -1
  %i.ip = load i64, ptr %i.im, align 8, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.128.i110 = phi ptr [ %i.il, %bb.p ], [ %.02729.i109, %bb.o ]
  %.126.i111 = phi ptr [ %i.im, %bb.p ], [ %.02530.i108, %bb.o ]
  %.124.i112 = phi i64 [ %i.io, %bb.p ], [ %i.ih, %bb.o ]
  %.122.i113 = phi i64 [ %i.ip, %bb.p ], [ %i.ii, %bb.o ]
  %.1.i114 = phi i32 [ 0, %bb.p ], [ %i.ij, %bb.o ]
  %indvars.iv.next.i115 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %indvars.iv.next.i115, 701
  br i1 %exitcond.not.i116, label %iter.check, label %bb.o, !llvm.loop !112

iter.check:                                       ; preds = %bb.q
  %i.iq = getelementptr inbounds nuw i8, ptr %i.j, i64 40682
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.iq, i8 0, i64 6, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.j, i64 40688 ; 3 uses
  call fastcc void @poly_lift(ptr noundef %i.ir, ptr noundef %i.hw)
  %i.is = getelementptr inbounds nuw i8, ptr %i.j, i64 42096 ; 12 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %iter.check
  %index = phi i64 [ 0, %iter.check ], [ %index.next.1, %vector.body.1 ] ; 6 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %index ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.load = load <8 x i16>, ptr %i.it, align 2, !tbaa !24
  %wide.load160 = load <8 x i16>, ptr %i.iu, align 2, !tbaa !24
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %index ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %wide.load161 = load <8 x i16>, ptr %i.iv, align 2, !tbaa !24
  %wide.load162 = load <8 x i16>, ptr %i.iw, align 2, !tbaa !24
  %i.ix = sub <8 x i16> %wide.load, %wide.load161
  %i.iy = sub <8 x i16> %wide.load160, %wide.load162
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %index ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store <8 x i16> %i.ix, ptr %i.iz, align 2, !tbaa !24
  store <8 x i16> %i.iy, ptr %i.ja, align 2, !tbaa !24
  %i.jb = icmp eq i64 %index, 672
  br i1 %i.jb, label %vec.epilog.vector.body, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %index.next = or disjoint i64 %index, 16        ; 3 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %index.next ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load.1 = load <8 x i16>, ptr %i.jc, align 2, !tbaa !24
  %wide.load160.1 = load <8 x i16>, ptr %i.jd, align 2, !tbaa !24
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %index.next ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load161.1 = load <8 x i16>, ptr %i.je, align 2, !tbaa !24
  %wide.load162.1 = load <8 x i16>, ptr %i.jf, align 2, !tbaa !24
  %i.jg = sub <8 x i16> %wide.load.1, %wide.load161.1
  %i.jh = sub <8 x i16> %wide.load160.1, %wide.load162.1
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %index.next ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store <8 x i16> %i.jg, ptr %i.ji, align 2, !tbaa !24
  store <8 x i16> %i.jh, ptr %i.jj, align 2, !tbaa !24
  %index.next.1 = add nuw nsw i64 %index, 32
  br label %vector.body

vec.epilog.vector.body:                           ; preds = %vector.body
  %i.jk = getelementptr inbounds nuw i8, ptr %i.j, i64 36080
  %wide.load164 = load <4 x i16>, ptr %i.jk, align 8, !tbaa !24
  %i.jl = getelementptr inbounds nuw i8, ptr %i.j, i64 42064
  %wide.load165 = load <4 x i16>, ptr %i.jl, align 8, !tbaa !24
  %i.jm = sub <4 x i16> %wide.load164, %wide.load165
  %i.jn = getelementptr inbounds nuw i8, ptr %i.j, i64 43472
  store <4 x i16> %i.jm, ptr %i.jn, align 8, !tbaa !24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.j, i64 36088
  %wide.load164.1 = load <4 x i16>, ptr %i.jo, align 8, !tbaa !24
  %i.jp = getelementptr inbounds nuw i8, ptr %i.j, i64 42072
  %wide.load165.1 = load <4 x i16>, ptr %i.jp, align 8, !tbaa !24
  %i.jq = sub <4 x i16> %wide.load164.1, %wide.load165.1
  %i.jr = getelementptr inbounds nuw i8, ptr %i.j, i64 43480
  store <4 x i16> %i.jq, ptr %i.jr, align 8, !tbaa !24
  %i.js = getelementptr inbounds nuw i8, ptr %i.j, i64 36096
  %wide.load164.2 = load <4 x i16>, ptr %i.js, align 8, !tbaa !24
  %i.jt = getelementptr inbounds nuw i8, ptr %i.j, i64 42080
  %wide.load165.2 = load <4 x i16>, ptr %i.jt, align 8, !tbaa !24
  %i.ju = sub <4 x i16> %wide.load164.2, %wide.load165.2
  %i.jv = getelementptr inbounds nuw i8, ptr %i.j, i64 43488
  store <4 x i16> %i.ju, ptr %i.jv, align 8, !tbaa !24
  %i.jw = getelementptr inbounds nuw i8, ptr %i.j, i64 36104
  %i.jx = load i16, ptr %i.jw, align 8, !tbaa !24
  %i.jy = getelementptr inbounds nuw i8, ptr %i.j, i64 42088
  %i.jz = load i16, ptr %i.jy, align 8, !tbaa !24
  %i.ka = sub i16 %i.jx, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.j, i64 43496
  store i16 %i.ka, ptr %i.kb, align 8, !tbaa !24
  %i.kc = getelementptr inbounds nuw i8, ptr %i.j, i64 43498 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.kc, i8 0, i64 6, i1 false)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.ke = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.kf = and i32 %i.ke, 32
  %.not.i118 = icmp eq i32 %i.kf, 0
  br i1 %.not.i118, label %bb.s, label %bb.r

bb.r:                                             ; preds = %vec.epilog.vector.body
  call void @poly_Rq_mul(ptr noundef nonnull %i.is, ptr noundef nonnull %i.is, ptr noundef nonnull %i.kd, ptr noundef nonnull %i.j) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.kc, i8 0, i64 6, i1 false)
  br label %iter.check176

bb.s:                                             ; preds = %vec.epilog.vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %4, ptr noundef nonnull readonly align 8 dereferenceable(1408) %i.is, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %5, ptr noundef nonnull readonly align 8 dereferenceable(1408) %i.kd, i64 1408, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.j, i64 2816
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.j, ptr noundef %i.kg, ptr noundef %4, ptr noundef %5, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %6, i8 0, i64 1408, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.020.i.i119 = phi i64 [ 0, %bb.s ], [ %i.kt, %bb.t ] ; 3 uses
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.020.i.i119 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1392
  %i.kj = load <16 x i8>, ptr %i.ki, align 16, !tbaa !22
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 1408
  %i.kl = load <16 x i8>, ptr %i.kk, align 16, !tbaa !22
  %i.km = load <8 x i16>, ptr %i.kh, align 16, !tbaa !22
  %i.kn = shufflevector <16 x i8> %i.kj, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.ko = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.kl, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.kp = or <16 x i8> %i.ko, %i.kn
  %i.kq = bitcast <16 x i8> %i.kp to <8 x i16>
  %i.kr = add <8 x i16> %i.km, %i.kq
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.020.i.i119
  store <8 x i16> %i.kr, ptr %i.ks, align 16, !tbaa !22
  %i.kt = add nuw nsw i64 %.020.i.i119, 1         ; 2 uses
  %exitcond.not.i.i120 = icmp eq i64 %i.kt, 88
  br i1 %exitcond.not.i.i120, label %poly_mul_vec.exit.i121, label %bb.t, !llvm.loop !1

poly_mul_vec.exit.i121:                           ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.is, ptr noundef nonnull readonly align 16 dereferenceable(1408) %6, i64 1402, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.kc, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %iter.check176

iter.check176:                                    ; preds = %bb.r, %poly_mul_vec.exit.i121
  %i.ku = getelementptr inbounds nuw i8, ptr %i.j, i64 43496
  %i.kv = load i16, ptr %i.ku, align 8, !tbaa !24 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kv, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169.1, %iter.check176
  %index170 = phi i64 [ 0, %iter.check176 ], [ %index.next173.1, %vector.body169.1 ] ; 4 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %index170 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 2 uses
  %wide.load171 = load <8 x i16>, ptr %i.kw, align 2, !tbaa !24
  %wide.load172 = load <8 x i16>, ptr %i.kx, align 2, !tbaa !24
  %i.ky = sub <8 x i16> %wide.load171, %broadcast.splat
  %i.kz = sub <8 x i16> %wide.load172, %broadcast.splat
  store <8 x i16> %i.ky, ptr %i.kw, align 2, !tbaa !24
  store <8 x i16> %i.kz, ptr %i.kx, align 2, !tbaa !24
  %i.la = icmp eq i64 %index170, 672
  br i1 %i.la, label %vec.epilog.vector.body182, label %vector.body169.1

vector.body169.1:                                 ; preds = %vector.body169
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %index170 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 48 ; 2 uses
  %wide.load171.1 = load <8 x i16>, ptr %i.lc, align 2, !tbaa !24
  %wide.load172.1 = load <8 x i16>, ptr %i.ld, align 2, !tbaa !24
  %i.le = sub <8 x i16> %wide.load171.1, %broadcast.splat
  %i.lf = sub <8 x i16> %wide.load172.1, %broadcast.splat
  store <8 x i16> %i.le, ptr %i.lc, align 2, !tbaa !24
  store <8 x i16> %i.lf, ptr %i.ld, align 2, !tbaa !24
  %index.next173.1 = add nuw nsw i64 %index170, 32
  br label %vector.body169

vec.epilog.vector.body182:                        ; preds = %vector.body169
  %broadcast.splatinsert180 = insertelement <4 x i16> poison, i16 %i.kv, i64 0
  %broadcast.splat181 = shufflevector <4 x i16> %broadcast.splatinsert180, <4 x i16> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.j, i64 43472 ; 2 uses
  %wide.load184 = load <4 x i16>, ptr %i.lg, align 8, !tbaa !24
  %i.lh = sub <4 x i16> %wide.load184, %broadcast.splat181
  store <4 x i16> %i.lh, ptr %i.lg, align 8, !tbaa !24
  %i.li = getelementptr inbounds nuw i8, ptr %i.j, i64 43480 ; 2 uses
  %wide.load184.1 = load <4 x i16>, ptr %i.li, align 8, !tbaa !24
  %i.lj = sub <4 x i16> %wide.load184.1, %broadcast.splat181
  store <4 x i16> %i.lj, ptr %i.li, align 8, !tbaa !24
  %i.lk = getelementptr inbounds nuw i8, ptr %i.j, i64 43488 ; 2 uses
  %wide.load184.2 = load <4 x i16>, ptr %i.lk, align 8, !tbaa !24
  %i.ll = sub <4 x i16> %wide.load184.2, %broadcast.splat181
  store <4 x i16> %i.ll, ptr %i.lk, align 8, !tbaa !24
  %i.lm = getelementptr inbounds nuw i8, ptr %i.j, i64 43496 ; 2 uses
  %i.ln = load i16, ptr %i.lm, align 8, !tbaa !24
  %i.lo = sub i16 %i.ln, %i.kv
  store i16 %i.lo, ptr %i.lm, align 8, !tbaa !24
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190.1, %vec.epilog.vector.body182
  %index191 = phi i64 [ 0, %vec.epilog.vector.body182 ], [ %index.next194.1, %vector.body190.1 ] ; 4 uses
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %index191 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16 ; 2 uses
  %wide.load192 = load <8 x i16>, ptr %i.lp, align 2, !tbaa !24
  %wide.load193 = load <8 x i16>, ptr %i.lq, align 2, !tbaa !24
  %i.lr = and <8 x i16> %wide.load192, splat (i16 8191)
  %i.ls = and <8 x i16> %wide.load193, splat (i16 8191)
  store <8 x i16> %i.lr, ptr %i.lp, align 2, !tbaa !24
  store <8 x i16> %i.ls, ptr %i.lq, align 2, !tbaa !24
  %i.lt = icmp eq i64 %index191, 672
  br i1 %i.lt, label %vec.epilog.vector.body201, label %vector.body190.1

vector.body190.1:                                 ; preds = %vector.body190
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %index191 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 32 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 48 ; 2 uses
  %wide.load192.1 = load <8 x i16>, ptr %i.lv, align 2, !tbaa !24
  %wide.load193.1 = load <8 x i16>, ptr %i.lw, align 2, !tbaa !24
  %i.lx = and <8 x i16> %wide.load192.1, splat (i16 8191)
  %i.ly = and <8 x i16> %wide.load193.1, splat (i16 8191)
  store <8 x i16> %i.lx, ptr %i.lv, align 2, !tbaa !24
  store <8 x i16> %i.ly, ptr %i.lw, align 2, !tbaa !24
  %index.next194.1 = add nuw nsw i64 %index191, 32
  br label %vector.body190

vec.epilog.vector.body201:                        ; preds = %vector.body190
  %i.lz = getelementptr inbounds nuw i8, ptr %i.j, i64 43472 ; 2 uses
  %wide.load203 = load <4 x i16>, ptr %i.lz, align 8, !tbaa !24
  %i.ma = and <4 x i16> %wide.load203, splat (i16 8191)
  store <4 x i16> %i.ma, ptr %i.lz, align 8, !tbaa !24
  %i.mb = getelementptr inbounds nuw i8, ptr %i.j, i64 43480 ; 2 uses
  %wide.load203.1 = load <4 x i16>, ptr %i.mb, align 8, !tbaa !24
  %i.mc = and <4 x i16> %wide.load203.1, splat (i16 8191)
  store <4 x i16> %i.mc, ptr %i.mb, align 8, !tbaa !24
  %i.md = getelementptr inbounds nuw i8, ptr %i.j, i64 43488 ; 2 uses
  %wide.load203.2 = load <4 x i16>, ptr %i.md, align 8, !tbaa !24
  %i.me = and <4 x i16> %wide.load203.2, splat (i16 8191)
  store <4 x i16> %i.me, ptr %i.md, align 8, !tbaa !24
  %i.mf = getelementptr inbounds nuw i8, ptr %i.j, i64 43496 ; 2 uses
  %i.mg = load i16, ptr %i.mf, align 8, !tbaa !24
  %i.mh = and i16 %i.mg, 8191
  store i16 %i.mh, ptr %i.mf, align 8, !tbaa !24
  %i.mi = getelementptr inbounds nuw i8, ptr %i.j, i64 43504
  %i.mj = getelementptr inbounds nuw i8, ptr %i.j, i64 43592
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %vec.epilog.vector.body201
  %indvars.iv.i129 = phi i64 [ 0, %vec.epilog.vector.body201 ], [ %indvars.iv.next.i131, %bb.w ] ; 2 uses
  %.03853.i = phi i64 [ -1, %vec.epilog.vector.body201 ], [ %i.ms, %bb.w ]
  %.03952.i = phi i32 [ 0, %vec.epilog.vector.body201 ], [ %.1.i130, %bb.w ]
  %.04051.i = phi i64 [ 0, %vec.epilog.vector.body201 ], [ %.141.i, %bb.w ]
  %.04250.i = phi i64 [ 0, %vec.epilog.vector.body201 ], [ %.143.i, %bb.w ]
  %.04449.i = phi ptr [ %i.mj, %vec.epilog.vector.body201 ], [ %.145.i, %bb.w ] ; 3 uses
  %.04648.i = phi ptr [ %i.mi, %vec.epilog.vector.body201 ], [ %.147.i, %bb.w ] ; 3 uses
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %indvars.iv.i129
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !24 ; 3 uses
  %i.mm = and i16 %i.ml, 3                        ; 2 uses
  %i.mn = lshr i16 %i.mm, 1                       ; 2 uses
  %i.mo = xor i16 %i.mn, %i.mm                    ; 2 uses
  %i.mp = sub nsw i16 0, %i.mn
  %.masked.i = and i16 %i.mp, 8191
  %i.mq = or i16 %i.mo, %.masked.i
  %i.mr = icmp eq i16 %i.ml, %i.mq
  %i.ms = select i1 %i.mr, i64 %.03853.i, i64 0   ; 2 uses
  %i.mt = lshr i64 %.04250.i, 1
  %i.mu = and i16 %i.ml, 2
  %i.mv = zext nneg i16 %i.mu to i64
  %i.mw = shl nuw i64 %i.mv, 62                   ; 2 uses
  %i.mx = or disjoint i64 %i.mw, %i.mt            ; 2 uses
  %i.my = zext nneg i16 %i.mo to i64
  %i.mz = call i64 @llvm.fshl.i64(i64 %i.my, i64 %.04051.i, i64 63)
  %i.na = or i64 %i.mz, %i.mw                     ; 2 uses
  %i.nb = add i32 %.03952.i, 1                    ; 2 uses
  %i.nc = icmp eq i32 %i.nb, 64
  br i1 %i.nc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i64 %i.mx, ptr %.04648.i, align 8, !tbaa !17
  %i.nd = getelementptr inbounds nuw i8, ptr %.04648.i, i64 8
  store i64 %i.na, ptr %.04449.i, align 8, !tbaa !17
  %i.ne = getelementptr inbounds nuw i8, ptr %.04449.i, i64 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.147.i = phi ptr [ %i.nd, %bb.v ], [ %.04648.i, %bb.u ] ; 2 uses
  %.145.i = phi ptr [ %i.ne, %bb.v ], [ %.04449.i, %bb.u ] ; 2 uses
  %.143.i = phi i64 [ 0, %bb.v ], [ %i.mx, %bb.u ] ; 2 uses
  %.141.i = phi i64 [ 0, %bb.v ], [ %i.na, %bb.u ] ; 2 uses
  %.1.i130 = phi i32 [ 0, %bb.v ], [ %i.nb, %bb.u ] ; 2 uses
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i129, 1 ; 2 uses
  %exitcond.not.i132 = icmp eq i64 %indvars.iv.next.i131, 701
  br i1 %exitcond.not.i132, label %poly3_from_poly_checked.exit, label %bb.u, !llvm.loop !113

poly3_from_poly_checked.exit:                     ; preds = %bb.w
  %i.nf = zext i32 %.1.i130 to i64
  %i.ng = sub nsw i64 64, %i.nf                   ; 2 uses
  %i.nh = lshr i64 %.143.i, %i.ng
  %i.ni = lshr i64 %.141.i, %i.ng
  store i64 %i.nh, ptr %.147.i, align 8, !tbaa !17
  store i64 %i.ni, ptr %.145.i, align 8, !tbaa !17
  %i.nj = getelementptr inbounds nuw i8, ptr %i.j, i64 43680 ; 3 uses
  call fastcc void @poly_marshal(ptr noundef nonnull %i.nj, ptr noundef nonnull %i.ey)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.j, i64 44818 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %poly3_from_poly_checked.exit
  %.024.i = phi ptr [ %i.hw, %poly3_from_poly_checked.exit ], [ %i.ny, %bb.x ] ; 3 uses
  %.01523.i = phi i64 [ 0, %poly3_from_poly_checked.exit ], [ %i.nz, %bb.x ] ; 2 uses
  %i.nl = load i16, ptr %.024.i, align 2, !tbaa !24
  %i.nm = and i16 %i.nl, 3                        ; 2 uses
  %i.nn = lshr i16 %i.nm, 1
  %i.no = xor i16 %i.nn, %i.nm
  %i.np = getelementptr inbounds nuw i8, ptr %.024.i, i64 2
  %i.nq = load <4 x i16>, ptr %i.np, align 2, !tbaa !24
  %i.nr = and <4 x i16> %i.nq, splat (i16 3)      ; 2 uses
  %i.ns = lshr <4 x i16> %i.nr, splat (i16 1)
end_hunk_2
