Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 550
begin_hunk_0_@mlkem_poly_tomsg:vector.memcheck
  %i.fo = getelementptr inbounds nuw i8, ptr %i.q, i64 122
  %i.fp = load i16, ptr %i.fh, align 2, !tbaa !131, !alias.scope !2823
  %i.fq = load i16, ptr %i.fi, align 2, !tbaa !131, !alias.scope !2823
  %i.fr = load i16, ptr %i.fj, align 2, !tbaa !131, !alias.scope !2823
  %i.fs = load i16, ptr %i.fk, align 2, !tbaa !131, !alias.scope !2823
  %i.ft = load i16, ptr %i.fl, align 2, !tbaa !131, !alias.scope !2823
  %i.fu = load i16, ptr %i.fm, align 2, !tbaa !131, !alias.scope !2823
  %i.fv = load i16, ptr %i.fn, align 2, !tbaa !131, !alias.scope !2823
  %i.fw = load i16, ptr %i.fo, align 2, !tbaa !131, !alias.scope !2823
  %i.fx = insertelement <8 x i16> poison, i16 %i.fp, i64 0
  %i.fy = insertelement <8 x i16> %i.fx, i16 %i.fq, i64 1
  %i.fz = insertelement <8 x i16> %i.fy, i16 %i.fr, i64 2
  %i.ga = insertelement <8 x i16> %i.fz, i16 %i.fs, i64 3
  %i.gb = insertelement <8 x i16> %i.ga, i16 %i.ft, i64 4
  %i.gc = insertelement <8 x i16> %i.gb, i16 %i.fu, i64 5
  %i.gd = insertelement <8 x i16> %i.gc, i16 %i.fv, i64 6
  %i.ge = insertelement <8 x i16> %i.gd, i16 %i.fw, i64 7
  %i.gf = sext <8 x i16> %i.ge to <8 x i32>
  %i.gg = mul <8 x i32> %i.gf, splat (i32 1290168)
  %i.gh = add <8 x i32> %i.gg, splat (i32 1073741824)
  %i.gi = lshr <8 x i32> %i.gh, splat (i32 26)
  %i.gj = trunc nuw nsw <8 x i32> %i.gi to <8 x i8>
  %i.gk = and <8 x i8> %i.gj, splat (i8 32)
  %i.gl = or <8 x i8> %i.fg, %i.gk                ; 2 uses
  store <8 x i8> %i.gl, ptr %i.c, align 1, !tbaa !76, !alias.scope !2822, !noalias !2823
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.gp = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %i.gq = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %i.gr = getelementptr inbounds nuw i8, ptr %i.m, i64 92
  %i.gs = getelementptr inbounds nuw i8, ptr %i.o, i64 108
  %i.gt = getelementptr inbounds nuw i8, ptr %i.q, i64 124
  %i.gu = load i16, ptr %i.gm, align 2, !tbaa !131, !alias.scope !2823
  %i.gv = load i16, ptr %i.gn, align 2, !tbaa !131, !alias.scope !2823
  %i.gw = load i16, ptr %i.go, align 2, !tbaa !131, !alias.scope !2823
  %i.gx = load i16, ptr %i.gp, align 2, !tbaa !131, !alias.scope !2823
  %i.gy = load i16, ptr %i.gq, align 2, !tbaa !131, !alias.scope !2823
  %i.gz = load i16, ptr %i.gr, align 2, !tbaa !131, !alias.scope !2823
  %i.ha = load i16, ptr %i.gs, align 2, !tbaa !131, !alias.scope !2823
  %i.hb = load i16, ptr %i.gt, align 2, !tbaa !131, !alias.scope !2823
  %i.hc = insertelement <8 x i16> poison, i16 %i.gu, i64 0
  %i.hd = insertelement <8 x i16> %i.hc, i16 %i.gv, i64 1
  %i.he = insertelement <8 x i16> %i.hd, i16 %i.gw, i64 2
  %i.hf = insertelement <8 x i16> %i.he, i16 %i.gx, i64 3
  %i.hg = insertelement <8 x i16> %i.hf, i16 %i.gy, i64 4
  %i.hh = insertelement <8 x i16> %i.hg, i16 %i.gz, i64 5
  %i.hi = insertelement <8 x i16> %i.hh, i16 %i.ha, i64 6
  %i.hj = insertelement <8 x i16> %i.hi, i16 %i.hb, i64 7
  %i.hk = sext <8 x i16> %i.hj to <8 x i32>
  %i.hl = mul <8 x i32> %i.hk, splat (i32 1290168)
  %i.hm = add <8 x i32> %i.hl, splat (i32 1073741824)
  %i.hn = lshr <8 x i32> %i.hm, splat (i32 25)
  %i.ho = trunc nuw nsw <8 x i32> %i.hn to <8 x i8>
  %i.hp = and <8 x i8> %i.ho, splat (i8 64)
  %i.hq = or <8 x i8> %i.gl, %i.hp                ; 2 uses
  store <8 x i8> %i.hq, ptr %i.c, align 1, !tbaa !76, !alias.scope !2822, !noalias !2823
  %i.hr = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.hs = getelementptr inbounds nuw i8, ptr %i.e, i64 30
  %i.ht = getelementptr inbounds nuw i8, ptr %i.g, i64 46
  %i.hu = getelementptr inbounds nuw i8, ptr %i.i, i64 62
  %i.hv = getelementptr inbounds nuw i8, ptr %i.k, i64 78
  %i.hw = getelementptr inbounds nuw i8, ptr %i.m, i64 94
  %i.hx = getelementptr inbounds nuw i8, ptr %i.o, i64 110
  %i.hy = getelementptr inbounds nuw i8, ptr %i.q, i64 126
  %i.hz = load i16, ptr %i.hr, align 2, !tbaa !131, !alias.scope !2823
  %i.ia = load i16, ptr %i.hs, align 2, !tbaa !131, !alias.scope !2823
  %i.ib = load i16, ptr %i.ht, align 2, !tbaa !131, !alias.scope !2823
  %i.ic = load i16, ptr %i.hu, align 2, !tbaa !131, !alias.scope !2823
  %i.id = load i16, ptr %i.hv, align 2, !tbaa !131, !alias.scope !2823
  %i.ie = load i16, ptr %i.hw, align 2, !tbaa !131, !alias.scope !2823
  %i.if = load i16, ptr %i.hx, align 2, !tbaa !131, !alias.scope !2823
  %i.ig = load i16, ptr %i.hy, align 2, !tbaa !131, !alias.scope !2823
  %i.ih = insertelement <8 x i16> poison, i16 %i.hz, i64 0
  %i.ii = insertelement <8 x i16> %i.ih, i16 %i.ia, i64 1
  %i.ij = insertelement <8 x i16> %i.ii, i16 %i.ib, i64 2
  %i.ik = insertelement <8 x i16> %i.ij, i16 %i.ic, i64 3
  %i.il = insertelement <8 x i16> %i.ik, i16 %i.id, i64 4
  %i.im = insertelement <8 x i16> %i.il, i16 %i.ie, i64 5
  %i.in = insertelement <8 x i16> %i.im, i16 %i.if, i64 6
  %i.io = insertelement <8 x i16> %i.in, i16 %i.ig, i64 7
  %i.ip = sext <8 x i16> %i.io to <8 x i32>
  %i.iq = mul <8 x i32> %i.ip, splat (i32 1290168)
  %i.ir = add <8 x i32> %i.iq, splat (i32 1073741824)
  %i.is = lshr <8 x i32> %i.ir, splat (i32 24)
  %i.it = trunc nuw <8 x i32> %i.is to <8 x i8>
  %i.iu = and <8 x i8> %i.it, splat (i8 -128)
  %i.iv = or <8 x i8> %i.hq, %i.iu
  store <8 x i8> %i.iv, ptr %i.c, align 1, !tbaa !76, !alias.scope !2822, !noalias !2823
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iw = icmp eq i64 %index.next, 32
  br i1 %i.iw, label %middle.block, label %vector.body, !llvm.loop !2820

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 9 uses
  store i8 0, ptr %i.ix, align 1, !tbaa !76
  %i.iy = shl nuw nsw i64 %indvars.iv, 3          ; 8 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !131
  %i.jb = sext i16 %i.ja to i32
  %i.jc = mul i32 %i.jb, 1290168
  %i.jd = add i32 %i.jc, 1073741824
  %i.je = lshr i32 %i.jd, 31
  %i.jf = trunc nuw nsw i32 %i.je to i8           ; 2 uses
  store i8 %i.jf, ptr %i.ix, align 1, !tbaa !76
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.iy
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !131
  %i.jj = sext i16 %i.ji to i32
  %i.jk = mul i32 %i.jj, 1290168
  %i.jl = add i32 %i.jk, 1073741824
  %i.jm = lshr i32 %i.jl, 30
  %i.jn = trunc nuw nsw i32 %i.jm to i8
  %i.jo = and i8 %i.jn, 2
  %i.jp = or disjoint i8 %i.jo, %i.jf             ; 2 uses
  store i8 %i.jp, ptr %i.ix, align 1, !tbaa !76
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.iy
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !131
  %i.jt = sext i16 %i.js to i32
  %i.ju = mul i32 %i.jt, 1290168
  %i.jv = add i32 %i.ju, 1073741824
  %i.jw = lshr i32 %i.jv, 29
  %i.jx = trunc nuw nsw i32 %i.jw to i8
  %i.jy = and i8 %i.jx, 4
  %i.jz = or disjoint i8 %i.jp, %i.jy             ; 2 uses
  store i8 %i.jz, ptr %i.ix, align 1, !tbaa !76
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.iy
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 6
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !131
  %i.kd = sext i16 %i.kc to i32
  %i.ke = mul i32 %i.kd, 1290168
  %i.kf = add i32 %i.ke, 1073741824
  %i.kg = lshr i32 %i.kf, 28
  %i.kh = trunc nuw nsw i32 %i.kg to i8
  %i.ki = and i8 %i.kh, 8
  %i.kj = or disjoint i8 %i.jz, %i.ki             ; 2 uses
  store i8 %i.kj, ptr %i.ix, align 1, !tbaa !76
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.iy
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !131
  %i.kn = sext i16 %i.km to i32
  %i.ko = mul i32 %i.kn, 1290168
  %i.kp = add i32 %i.ko, 1073741824
  %i.kq = lshr i32 %i.kp, 27
  %i.kr = trunc nuw nsw i32 %i.kq to i8
  %i.ks = and i8 %i.kr, 16
  %i.kt = or disjoint i8 %i.kj, %i.ks             ; 2 uses
  store i8 %i.kt, ptr %i.ix, align 1, !tbaa !76
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.iy
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 10
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !131
  %i.kx = sext i16 %i.kw to i32
  %i.ky = mul i32 %i.kx, 1290168
  %i.kz = add i32 %i.ky, 1073741824
  %i.la = lshr i32 %i.kz, 26
  %i.lb = trunc nuw nsw i32 %i.la to i8
  %i.lc = and i8 %i.lb, 32
  %i.ld = or i8 %i.kt, %i.lc                      ; 2 uses
  store i8 %i.ld, ptr %i.ix, align 1, !tbaa !76
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.iy
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !131
  %i.lh = sext i16 %i.lg to i32
  %i.li = mul i32 %i.lh, 1290168
  %i.lj = add i32 %i.li, 1073741824
  %i.lk = lshr i32 %i.lj, 25
  %i.ll = trunc nuw nsw i32 %i.lk to i8
  %i.lm = and i8 %i.ll, 64
  %i.ln = or i8 %i.ld, %i.lm                      ; 2 uses
  store i8 %i.ln, ptr %i.ix, align 1, !tbaa !76
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.iy
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 14
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !131
  %i.lr = sext i16 %i.lq to i32
  %i.ls = mul i32 %i.lr, 1290168
  %i.lt = add i32 %i.ls, 1073741824
  %i.lu = lshr i32 %i.lt, 24
  %i.lv = trunc nuw i32 %i.lu to i8
  %i.lw = and i8 %i.lv, -128
  %i.lx = or i8 %i.ln, %i.lw
  store i8 %i.lx, ptr %i.ix, align 1, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !2821

middle.block:                                     ; preds = %vector.body, %scalar.ph
  ret void
}

declare void @mlkem_poly_decompress_d10_avx2_asm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mlkem_poly_decompress_d4_avx2_asm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem768_gen_matrix(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
.preheader52:
  %3 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [504 x i8], align 32              ; 10 uses
  %i.b = alloca [4 x [64 x i8]], align 32         ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %.not47 = icmp eq i32 %2, 0                     ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 33 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 97 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 161 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 225 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 33 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 97 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 161 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 225 ; 2 uses
  br i1 %.not47, label %.preheader51.split.us.preheader, label %.preheader51.split.preheader

.preheader51.split.preheader:                     ; preds = %.preheader52
  store i8 0, ptr %4, align 32, !tbaa !76
  store i8 0, ptr %5, align 1, !tbaa !76
  store i8 0, ptr %6, align 32, !tbaa !76
  store i8 1, ptr %7, align 1, !tbaa !76
  store i8 0, ptr %8, align 32, !tbaa !76
  store i8 2, ptr %9, align 1, !tbaa !76
  store i8 1, ptr %10, align 32, !tbaa !76
  store i8 0, ptr %11, align 1, !tbaa !76
  br label %.split.us

.preheader51.split.us.preheader:                  ; preds = %.preheader52
  store i8 0, ptr %i.f, align 32, !tbaa !76
  store i8 0, ptr %i.g, align 1, !tbaa !76
  store i8 1, ptr %i.h, align 32, !tbaa !76
  store i8 0, ptr %i.i, align 1, !tbaa !76
  store i8 2, ptr %i.j, align 32, !tbaa !76
  store i8 0, ptr %i.k, align 1, !tbaa !76
  store i8 0, ptr %i.l, align 32, !tbaa !76
  store i8 1, ptr %i.m, align 1, !tbaa !76
  br label %.split.us

.split.us:                                        ; preds = %.preheader51.split.preheader, %.preheader51.split.us.preheader
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 1536
  call fastcc void @mlkem_poly_rej_uniform_x4(ptr noundef %0, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %i.b)
  br i1 %.not47, label %.preheader51.split.us.preheader.1, label %.preheader51.split.preheader.1

.preheader51.split.preheader.1:                   ; preds = %.split.us
  store i8 1, ptr %4, align 32, !tbaa !76
  store i8 1, ptr %5, align 1, !tbaa !76
  store i8 1, ptr %6, align 32, !tbaa !76
  store i8 2, ptr %7, align 1, !tbaa !76
  store i8 2, ptr %8, align 32, !tbaa !76
  store i8 0, ptr %9, align 1, !tbaa !76
  store i8 2, ptr %10, align 32, !tbaa !76
  store i8 1, ptr %11, align 1, !tbaa !76
  br label %.split.us.1

.preheader51.split.us.preheader.1:                ; preds = %.split.us
  store i8 1, ptr %i.f, align 32, !tbaa !76
  store i8 1, ptr %i.g, align 1, !tbaa !76
  store i8 2, ptr %i.h, align 32, !tbaa !76
  store i8 1, ptr %i.i, align 1, !tbaa !76
  store i8 0, ptr %i.j, align 32, !tbaa !76
  store i8 2, ptr %i.k, align 1, !tbaa !76
  store i8 1, ptr %i.l, align 32, !tbaa !76
  store i8 2, ptr %i.m, align 1, !tbaa !76
  br label %.split.us.1

.split.us.1:                                      ; preds = %.preheader51.split.us.preheader.1, %.preheader51.split.preheader.1
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3584
  call fastcc void @mlkem_poly_rej_uniform_x4(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 393
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 392
  store i8 2, ptr %i.n, align 32, !tbaa !76
  store i8 2, ptr %i.o, align 1, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %3, i8 0, i64 200, i1 false)
  store i64 0, ptr %i.q, align 8, !tbaa !444
  store i8 0, ptr %i.r, align 1, !tbaa !445
  store i64 168, ptr %i.s, align 8, !tbaa !446
  store i64 0, ptr %i.t, align 8, !tbaa !447
  store i8 31, ptr %i.u, align 8, !tbaa !448
  %i.v = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.b, i64 noundef 34) ; 0 uses
  %i.w = call i32 @SHAKE_Squeeze(ptr noundef nonnull %i.a, ptr noundef nonnull %3, i64 noundef 504) ; 0 uses
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.y = and i32 %i.x, 32
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %.lr.ph.i20.i.i.preheader, label %mlk_rej_uniform_native.exit.i.i

mlk_rej_uniform_native.exit.i.i:                  ; preds = %.split.us.1
  %i.z = call i64 @mlkem_rej_uniform_avx2_asm(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, i32 noundef range(i32 168, 505) 504, ptr noundef nonnull @mlkem_rej_uniform_table) #46
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.aa, -1
  br i1 %.not.not.i.i, label %.lr.ph.i20.i.i.preheader, label %mlk_rej_uniform.exit.i

.lr.ph.i20.i.i.preheader:                         ; preds = %mlk_rej_uniform_native.exit.i.i, %.split.us.1
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %bb.d
  %indvars.iv31.i21.i.i = phi i64 [ %indvars.iv.next32.i29.i.i, %bb.d ], [ 0, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %indvars.iv.i22.i.i = phi i64 [ %indvars.iv.next.i28.i.i, %bb.d ], [ 3, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.02629.i23.i.i = phi i32 [ %.2.i27.i.i, %bb.d ], [ 0, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv31.i21.i.i ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !76
  %i.ad = zext i8 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !76  ; 2 uses
  %i.ag = zext i8 %i.af to i16
  %i.ah = shl nuw i16 %i.ag, 8
  %.masked.i24.i.i = and i16 %i.ah, 3840
  %i.ai = or disjoint i16 %.masked.i24.i.i, %i.ad ; 2 uses
  %i.aj = lshr i8 %i.af, 4
  %i.ak = zext nneg i8 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !76
  %i.an = zext i8 %i.am to i16
  %i.ao = shl nuw nsw i16 %i.an, 4
  %i.ap = or disjoint i16 %i.ao, %i.ak            ; 2 uses
  %i.aq = icmp samesign ult i16 %i.ai, 3329
  br i1 %i.aq, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i20.i.i
  %i.ar = add nuw nsw i32 %.02629.i23.i.i, 1
  %i.as = zext nneg i32 %.02629.i23.i.i to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.as
  store i16 %i.ai, ptr %i.at, align 2, !tbaa !131
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.i20.i.i
  %.1.i25.i.i = phi i32 [ %i.ar, %bb.a ], [ %.02629.i23.i.i, %.lr.ph.i20.i.i ] ; 4 uses
  %i.au = icmp samesign ult i32 %.1.i25.i.i, 256
  %i.av = icmp samesign ult i16 %i.ap, 3329
  %or.cond.i26.i.i = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond.i26.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = add nuw nsw i32 %.1.i25.i.i, 1
  %i.ax = zext nneg i32 %.1.i25.i.i to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.ax
  store i16 %i.ap, ptr %i.ay, align 2, !tbaa !131
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2.i27.i.i = phi i32 [ %i.aw, %bb.c ], [ %.1.i25.i.i, %bb.b ] ; 3 uses
  %i.az = icmp ult i32 %.2.i27.i.i, 256
  %indvars.iv.next.i28.i.i = add nuw nsw i64 %indvars.iv.i22.i.i, 3
  %i.ba = icmp samesign ult i64 %indvars.iv.i22.i.i, 502
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  %indvars.iv.next32.i29.i.i = add nuw nsw i64 %indvars.iv31.i21.i.i, 3
  br i1 %i.bb, label %.lr.ph.i20.i.i, label %mlk_rej_uniform.exit.i, !llvm.loop !63

mlk_rej_uniform.exit.i:                           ; preds = %bb.d, %mlk_rej_uniform_native.exit.i.i
  %.1.i.i = phi i32 [ %i.aa, %mlk_rej_uniform_native.exit.i.i ], [ %.2.i27.i.i, %bb.d ] ; 2 uses
  %i.bc = icmp ult i32 %.1.i.i, 256
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %mlk_rej_uniform.exit.i, %mlk_rej_uniform.exit
  %.06.i = phi i32 [ %.1.i, %mlk_rej_uniform.exit ], [ %.1.i.i, %mlk_rej_uniform.exit.i ] ; 2 uses
  %i.bd = call i32 @SHAKE_Squeeze(ptr noundef nonnull %i.a, ptr noundef nonnull %3, i64 noundef 168) ; 0 uses
  %i.be = icmp eq i32 %.06.i, 0
  br i1 %i.be, label %bb.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %bb.h
  %indvars.iv31.i.i = phi i64 [ %indvars.iv.next32.i.i, %bb.h ], [ 0, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 3, %.lr.ph.i ] ; 2 uses
  %.02629.i.i = phi i32 [ %.2.i.i, %bb.h ], [ %.06.i, %.lr.ph.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv31.i.i ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !76
  %i.bh = zext i8 %i.bg to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !76  ; 2 uses
  %i.bk = zext i8 %i.bj to i16
  %i.bl = shl nuw i16 %i.bk, 8
  %.masked.i.i = and i16 %i.bl, 3840
  %i.bm = or disjoint i16 %.masked.i.i, %i.bh     ; 2 uses
  %i.bn = lshr i8 %i.bj, 4
  %i.bo = zext nneg i8 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !76
  %i.br = zext i8 %i.bq to i16
  %i.bs = shl nuw nsw i16 %i.br, 4
  %i.bt = or disjoint i16 %i.bs, %i.bo            ; 2 uses
  %i.bu = icmp samesign ult i16 %i.bm, 3329
  br i1 %i.bu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.bv = add nuw nsw i32 %.02629.i.i, 1
  %i.bw = zext nneg i32 %.02629.i.i to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.bw
  store i16 %i.bm, ptr %i.bx, align 2, !tbaa !131
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.1.i.i48 = phi i32 [ %i.bv, %bb.e ], [ %.02629.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.by = icmp samesign ult i32 %.1.i.i48, 256
  %i.bz = icmp samesign ult i16 %i.bt, 3329
  %or.cond.i.i = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ca = add nuw nsw i32 %.1.i.i48, 1
  %i.cb = zext nneg i32 %.1.i.i48 to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.cb
  store i16 %i.bt, ptr %i.cc, align 2, !tbaa !131
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.i.i = phi i32 [ %i.ca, %bb.g ], [ %.1.i.i48, %bb.f ] ; 3 uses
  %i.cd = icmp samesign ult i32 %.2.i.i, 256
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 3
  %i.ce = icmp samesign ult i64 %indvars.iv.i.i, 166
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  %indvars.iv.next32.i.i = add nuw nsw i64 %indvars.iv31.i.i, 3
  br i1 %i.cf, label %.lr.ph.i.i, label %mlk_rej_uniform.exit, !llvm.loop !63

bb.i:                                             ; preds = %.lr.ph.i
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.ch = and i32 %i.cg, 32
  %.not49 = icmp eq i32 %i.ch, 0
  br i1 %.not49, label %.lr.ph.i20.i.preheader, label %mlk_rej_uniform_native.exit.i

mlk_rej_uniform_native.exit.i:                    ; preds = %bb.i
  %i.ci = call i64 @mlkem_rej_uniform_avx2_asm(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, i32 noundef range(i32 168, 505) 168, ptr noundef nonnull @mlkem_rej_uniform_table) #46
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %.not.not.i = icmp eq i32 %i.cj, -1
  br i1 %.not.not.i, label %.lr.ph.i20.i.preheader, label %mlk_rej_uniform.exit

.lr.ph.i20.i.preheader:                           ; preds = %mlk_rej_uniform_native.exit.i, %bb.i
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i.preheader, %bb.m
  %indvars.iv31.i21.i = phi i64 [ %indvars.iv.next32.i29.i, %bb.m ], [ 0, %.lr.ph.i20.i.preheader ] ; 2 uses
  %indvars.iv.i22.i = phi i64 [ %indvars.iv.next.i28.i, %bb.m ], [ 3, %.lr.ph.i20.i.preheader ] ; 2 uses
  %.02629.i23.i = phi i32 [ %.2.i27.i, %bb.m ], [ 0, %.lr.ph.i20.i.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv31.i21.i ; 3 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !76
  %i.cm = zext i8 %i.cl to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !76  ; 2 uses
  %i.cp = zext i8 %i.co to i16
  %i.cq = shl nuw i16 %i.cp, 8
  %.masked.i24.i = and i16 %i.cq, 3840
  %i.cr = or disjoint i16 %.masked.i24.i, %i.cm   ; 2 uses
  %i.cs = lshr i8 %i.co, 4
  %i.ct = zext nneg i8 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !76
  %i.cw = zext i8 %i.cv to i16
  %i.cx = shl nuw nsw i16 %i.cw, 4
  %i.cy = or disjoint i16 %i.cx, %i.ct            ; 2 uses
  %i.cz = icmp samesign ult i16 %i.cr, 3329
  br i1 %i.cz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i20.i
  %i.da = add nuw nsw i32 %.02629.i23.i, 1
  %i.db = zext nneg i32 %.02629.i23.i to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.db
  store i16 %i.cr, ptr %i.dc, align 2, !tbaa !131
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i20.i
  %.1.i25.i = phi i32 [ %i.da, %bb.j ], [ %.02629.i23.i, %.lr.ph.i20.i ] ; 4 uses
  %i.dd = icmp samesign ult i32 %.1.i25.i, 256
  %i.de = icmp samesign ult i16 %i.cy, 3329
end_hunk_0
