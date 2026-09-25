Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/f_generic?download=true
inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@gf_deserialize:.lr.ph.preheader.1
  %i.kg = trunc nuw nsw i128 %i.kf to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !11
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.preheader.1
  %i.ki = tail call i64 @gf_hibit(ptr noundef nonnull %0)
  %i.kj = xor i64 %i.ki, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.1, %bb.a
  %i.kk = phi i64 [ %i.kj, %bb.a ], [ -1, %.lr.ph.preheader.1 ]
  %i.kl = add nsw i128 %i.ag, -72057594037927935
  %i.km = ashr i128 %i.kl, 64
  %i.kn = add nsw i128 %i.bo, %i.km
  %i.ko = add nsw i128 %i.kn, -72057594037927935
  %i.kp = ashr i128 %i.ko, 64
  %i.kq = add nsw i128 %i.cy, %i.kp
  %i.kr = add nsw i128 %i.kq, -72057594037927935
  %i.ks = ashr i128 %i.kr, 64
  %i.kt = add nsw i128 %i.ek, %i.ks
  %i.ku = add nsw i128 %i.kt, -72057594037927935
  %i.kv = ashr i128 %i.ku, 64
  %i.kw = add nsw i128 %i.fw, %i.kv
  %i.kx = add nsw i128 %i.kw, -72057594037927934
  %i.ky = ashr i128 %i.kx, 64
  %i.kz = add nsw i128 %i.hi, %i.ky
  %i.la = add nsw i128 %i.kz, -72057594037927935
  %i.lb = ashr i128 %i.la, 64
  %i.lc = add nsw i128 %i.iu, %i.lb
  %i.ld = add nsw i128 %i.lc, -72057594037927935
  %i.le = ashr i128 %i.ld, 64
  %i.lf = add nsw i128 %i.kf, %i.le
  %i.lg = add nsw i128 %i.lf, -72057594037927935
  %i.lh = and i128 %i.kf, 1329227995784915872831749466242416640
  %i.li = icmp ne i128 %i.lh, 0
  %.not41 = icmp ult i128 %i.lg, 18446744073709551616
  %i.lj = select i1 %.not41, i1 true, i1 %i.li
  %i.lk = select i1 %i.lj, i64 0, i64 %i.kk
  ret i64 %i.lk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @gf_sub(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
gf_sub_RAW.exit:
  %i.a = load i64, ptr %1, align 8, !tbaa !11
  %i.b = load i64, ptr %2, align 8, !tbaa !11
  %i.c = add i64 %i.a, 144115188075855870
  %i.d = sub i64 %i.c, %i.b                       ; 3 uses
  store i64 %i.d, ptr %0, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = add i64 %i.f, 144115188075855870
  %i.j = sub i64 %i.i, %i.h                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = add i64 %i.m, 144115188075855870
  %i.q = sub i64 %i.p, %i.o                       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11
  %i.w = add i64 %i.t, 144115188075855870
  %i.x = sub i64 %i.w, %i.v                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = add i64 %i.aa, 144115188075855868
  %i.ae = sub i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = add i64 %i.ah, 144115188075855870
  %i.al = sub i64 %i.ak, %i.aj                    ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11
  %i.ar = add i64 %i.ao, 144115188075855870
  %i.as = sub i64 %i.ar, %i.aq                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.as, ptr %i.at, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.ay = add i64 %i.av, 144115188075855870
  %i.az = sub i64 %i.ay, %i.ax                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = lshr i64 %i.az, 56                      ; 2 uses
  %i.bc = add i64 %i.ae, %i.bb                    ; 2 uses
  %i.bd = and i64 %i.az, 72057594037927935
  %i.be = lshr i64 %i.as, 56
  %i.bf = add nuw nsw i64 %i.be, %i.bd            ; 2 uses
  %i.bg = and i64 %i.as, 72057594037927935
  %i.bh = lshr i64 %i.al, 56
  %i.bi = add nuw nsw i64 %i.bh, %i.bg            ; 2 uses
  %i.bj = and i64 %i.al, 72057594037927935
  %i.bk = lshr i64 %i.bc, 56
  %i.bl = add nuw nsw i64 %i.bk, %i.bj            ; 2 uses
  %i.bm = and i64 %i.bc, 72057594037927935
  %i.bn = lshr i64 %i.x, 56
  %i.bo = add nuw nsw i64 %i.bn, %i.bm
  %i.bp = and i64 %i.x, 72057594037927935
  %i.bq = lshr i64 %i.q, 56
  %i.br = add nuw nsw i64 %i.bq, %i.bp            ; 2 uses
  %i.bs = and i64 %i.q, 72057594037927935
  %i.bt = lshr i64 %i.j, 56
  %i.bu = add nuw nsw i64 %i.bt, %i.bs            ; 2 uses
  %i.bv = and i64 %i.j, 72057594037927935
  %i.bw = lshr i64 %i.d, 56
  %i.bx = add nuw nsw i64 %i.bw, %i.bv            ; 2 uses
  %i.by = and i64 %i.d, 72057594037927935
  %i.bz = add nuw nsw i64 %i.by, %i.bb            ; 2 uses
  %i.ca = lshr i64 %i.bf, 56                      ; 2 uses
  %i.cb = add nuw nsw i64 %i.bo, %i.ca            ; 2 uses
  %i.cc = and i64 %i.bf, 72057594037927935
  %i.cd = lshr i64 %i.bi, 56
  %i.ce = add nuw nsw i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %i.ba, align 8, !tbaa !11
  %i.cf = and i64 %i.bi, 72057594037927935
  %i.cg = lshr i64 %i.bl, 56
  %i.ch = add nuw nsw i64 %i.cg, %i.cf
  store i64 %i.ch, ptr %i.at, align 8, !tbaa !11
  %i.ci = and i64 %i.bl, 72057594037927935
  %i.cj = lshr i64 %i.cb, 56
  %i.ck = add nuw nsw i64 %i.cj, %i.ci
  store i64 %i.ck, ptr %i.am, align 8, !tbaa !11
  %i.cl = and i64 %i.cb, 72057594037927935
  %i.cm = lshr i64 %i.br, 56
  %i.cn = add nuw nsw i64 %i.cm, %i.cl
  store i64 %i.cn, ptr %i.af, align 8, !tbaa !11
  %i.co = and i64 %i.br, 72057594037927935
  %i.cp = lshr i64 %i.bu, 56
  %i.cq = add nuw nsw i64 %i.cp, %i.co
  store i64 %i.cq, ptr %i.y, align 8, !tbaa !11
  %i.cr = and i64 %i.bu, 72057594037927935
  %i.cs = lshr i64 %i.bx, 56
  %i.ct = add nuw nsw i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %i.r, align 8, !tbaa !11
  %i.cu = and i64 %i.bx, 72057594037927935
  %i.cv = lshr i64 %i.bz, 56
  %i.cw = add nuw nsw i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.k, align 8, !tbaa !11
  %i.cx = and i64 %i.bz, 72057594037927935
  %i.cy = add nuw nsw i64 %i.cx, %i.ca
  store i64 %i.cy, ptr %0, align 16, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 -1, 1) i64 @gf_eq(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca [1 x %struct.gf_s], align 16        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = load i64, ptr %0, align 8, !tbaa !11
  %i.b = load i64, ptr %1, align 8, !tbaa !11
  %i.c = add i64 %i.a, 144115188075855870
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = add i64 %i.k, 144115188075855868
  %i.o = sub i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load <2 x i64>, ptr %i.q, align 8, !tbaa !11
  %i.x = load <2 x i64>, ptr %i.r, align 8, !tbaa !11
  %i.y = load <2 x i64>, ptr %i.t, align 8, !tbaa !11
  %i.z = add <2 x i64> %i.w, splat (i64 144115188075855870)
  %i.aa = load <2 x i64>, ptr %i.u, align 8, !tbaa !11
  %i.ab = add <2 x i64> %i.y, splat (i64 144115188075855870)
  %i.ac = sub <2 x i64> %i.ab, %i.aa              ; 2 uses
  %3 = extractelement <2 x i64> %i.ac, i64 1
  %4 = lshr i64 %3, 56                            ; 2 uses
  %5 = sub <2 x i64> %i.z, %i.x                   ; 3 uses
  %i.ad = add i64 %4, %i.o                        ; 2 uses
  %i.ae = and <2 x i64> %i.ac, splat (i64 72057594037927935)
  %i.af = lshr <2 x i64> %5, splat (i64 56)
  %i.ag = and <2 x i64> %5, splat (i64 72057594037927935)
  %i.ah = shufflevector <2 x i64> %5, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %i.ai = insertelement <2 x i64> %i.ah, i64 %i.ad, i64 0
  %i.aj = lshr <2 x i64> %i.ai, splat (i64 56)
  %i.ak = add nuw nsw <2 x i64> %i.ae, %i.af      ; 2 uses
  %i.al = add nuw nsw <2 x i64> %i.aj, %i.ag      ; 2 uses
  %i.am = and i64 %i.ad, 72057594037927935
  %i.an = extractelement <2 x i64> %i.ak, i64 1
  %i.ao = lshr i64 %i.an, 56                      ; 2 uses
  %i.ap = and <2 x i64> %i.ak, splat (i64 72057594037927935)
  %i.aq = lshr <2 x i64> %i.al, splat (i64 56)
  %i.ar = add nuw nsw <2 x i64> %i.aq, %i.ap
  store <2 x i64> %i.ar, ptr %i.v, align 16, !tbaa !11
  %i.as = extractelement <2 x i64> %i.al, i64 0
  %i.at = and i64 %i.as, 72057594037927935
  %i.au = sub i64 %i.c, %i.b                      ; 2 uses
  %i.av = load <2 x i64>, ptr %i.d, align 8, !tbaa !11
  %i.aw = load <2 x i64>, ptr %i.e, align 8, !tbaa !11
  %i.ax = load <2 x i64>, ptr %i.g, align 8, !tbaa !11
  %i.ay = add <2 x i64> %i.av, splat (i64 144115188075855870)
  %i.az = load <2 x i64>, ptr %i.h, align 8, !tbaa !11
  %i.ba = add <2 x i64> %i.ax, splat (i64 144115188075855870)
  %i.bb = sub <2 x i64> %i.ay, %i.aw              ; 3 uses
  %i.bc = sub <2 x i64> %i.ba, %i.az              ; 2 uses
  %i.bd = extractelement <2 x i64> %i.bc, i64 1
  %i.be = lshr i64 %i.bd, 56
  %i.bf = add nuw nsw i64 %i.am, %i.be
  %i.bg = and <2 x i64> %i.bc, splat (i64 72057594037927935)
  %i.bh = lshr <2 x i64> %i.bb, splat (i64 56)
  %i.bi = and <2 x i64> %i.bb, splat (i64 72057594037927935)
  %i.bj = shufflevector <2 x i64> %i.bb, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %i.bk = insertelement <2 x i64> %i.bj, i64 %i.au, i64 0
  %i.bl = lshr <2 x i64> %i.bk, splat (i64 56)
  %i.bm = add nuw nsw <2 x i64> %i.bg, %i.bh      ; 2 uses
  %i.bn = add nuw nsw <2 x i64> %i.bi, %i.bl      ; 2 uses
  %i.bo = and i64 %i.au, 72057594037927935
  %i.bp = add nuw nsw i64 %4, %i.bo               ; 2 uses
  %i.bq = add nuw nsw i64 %i.bf, %i.ao            ; 2 uses
  %i.br = lshr i64 %i.bq, 56
  %i.bs = add nuw nsw i64 %i.br, %i.at
  store i64 %i.bs, ptr %i.s, align 8, !tbaa !11
  %i.bt = and i64 %i.bq, 72057594037927935
  %i.bu = extractelement <2 x i64> %i.bm, i64 1
  %i.bv = lshr i64 %i.bu, 56
  %i.bw = add nuw nsw i64 %i.bt, %i.bv
  store i64 %i.bw, ptr %i.p, align 16, !tbaa !11
  %i.bx = and <2 x i64> %i.bm, splat (i64 72057594037927935)
  %i.by = lshr <2 x i64> %i.bn, splat (i64 56)
  %i.bz = add nuw nsw <2 x i64> %i.bx, %i.by
  store <2 x i64> %i.bz, ptr %i.i, align 16, !tbaa !11
  %i.ca = extractelement <2 x i64> %i.bn, i64 0
  %i.cb = and i64 %i.ca, 72057594037927935
  %i.cc = lshr i64 %i.bp, 56
  %i.cd = add nuw nsw i64 %i.cc, %i.cb
  store i64 %i.cd, ptr %i.f, align 8, !tbaa !11
  %i.ce = and i64 %i.bp, 72057594037927935
  %i.cf = add nuw nsw i64 %i.ce, %i.ao
  store i64 %i.cf, ptr %2, align 16, !tbaa !11
  call void @gf_strong_reduce(ptr noundef nonnull %2)
  %i.cg = load <8 x i64>, ptr %2, align 16, !tbaa !11
  %i.ch = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.cg)
  %i.ci = icmp eq i64 %i.ch, 0
  %.neg.i.i = sext i1 %i.ci to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i64 %.neg.i.i
}

; Function Attrs: nounwind uwtable
define range(i64 -1, 1) i64 @gf_isr(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
.lr.ph.i:
  %2 = alloca [1 x %struct.gf_s], align 16        ; 4 uses
  %3 = alloca [1 x %struct.gf_s], align 16        ; 4 uses
  %4 = alloca [1 x %struct.gf_s], align 16        ; 38 uses
  %5 = alloca [1 x %struct.gf_s], align 16        ; 38 uses
  %6 = alloca [1 x %struct.gf_s], align 16        ; 20 uses
  %7 = alloca [1 x %struct.gf_s], align 16        ; 10 uses
  %8 = alloca [1 x %struct.gf_s], align 16        ; 4 uses
  %9 = alloca [1 x %struct.gf_s], align 16        ; 4 uses
  %10 = alloca [1 x %struct.gf_s], align 16       ; 115 uses
  %11 = alloca [1 x %struct.gf_s], align 16       ; 27 uses
  %12 = alloca [1 x %struct.gf_s], align 16       ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %11, ptr noundef %1) #7
  call void @ossl_gf_mul(ptr noundef nonnull %12, ptr noundef %1, ptr noundef nonnull %11) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %11, ptr noundef nonnull %12) #7
  call void @ossl_gf_mul(ptr noundef nonnull %12, ptr noundef %1, ptr noundef nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7, !noalias !31
  call void @ossl_gf_sqr(ptr noundef nonnull %11, ptr noundef nonnull %12) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %9, ptr noundef nonnull %11) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %11, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7, !noalias !31
  call void @ossl_gf_mul(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7, !noalias !32
  call void @ossl_gf_sqr(ptr noundef nonnull %11, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %8, ptr noundef nonnull %11) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %11, ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7, !noalias !32
  call void @ossl_gf_mul(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7, !noalias !33
  call void @ossl_gf_sqr(ptr noundef nonnull %12, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %7, ptr noundef nonnull %12) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %12, ptr noundef nonnull %7) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %7, ptr noundef nonnull %12) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %12, ptr noundef nonnull %7) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %7, ptr noundef nonnull %12) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %12, ptr noundef nonnull %7) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %7, ptr noundef nonnull %12) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %12, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7, !noalias !33
  call void @ossl_gf_mul(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %11) #7
  call void @ossl_gf_mul(ptr noundef nonnull %12, ptr noundef %1, ptr noundef nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7, !noalias !34
  call void @ossl_gf_sqr(ptr noundef nonnull %6, ptr noundef nonnull %12) #7, !noalias !34
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %6) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %6, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %6) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %6, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %6) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %6, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %6) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %6, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %6) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %6, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %6) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %6, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %6) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %6, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %6) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %6, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7, !noalias !34
  call void @ossl_gf_mul(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7, !noalias !35
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %12) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7, !noalias !35
  call void @ossl_gf_mul(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7, !noalias !36
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %11) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7, !noalias !36
  call void @ossl_gf_mul(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7, !noalias !37
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %11) #7
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27, %.lr.ph.i
  %.112.i28 = phi i32 [ %i.a, %.lr.ph.i27 ], [ 110, %.lr.ph.i ]
  call void @ossl_gf_sqr(ptr noundef nonnull %3, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %3) #7
  %i.a = add nsw i32 %.112.i28, -2                ; 2 uses
  %.not10.i29 = icmp eq i32 %i.a, 0
  br i1 %.not10.i29, label %gf_sqrn.exit30, label %.lr.ph.i27, !llvm.loop !28

gf_sqrn.exit30:                                   ; preds = %.lr.ph.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7, !noalias !37
  call void @ossl_gf_mul(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10) #7
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %12) #7
  call void @ossl_gf_mul(ptr noundef nonnull %11, ptr noundef %1, ptr noundef nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7, !noalias !38
  call void @ossl_gf_sqr(ptr noundef nonnull %10, ptr noundef nonnull %11) #7
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31, %gf_sqrn.exit30
end_hunk_0
