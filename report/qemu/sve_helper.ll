Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1194
loop-unroll.NumRuntimeUnrolled: 417
loop-unroll.NumUnrolled: 1633
begin_hunk_0_@helper_sve2_cmla_zzzz_b:bb.a
  %i.vz = insertelement <8 x i8> %i.vy, i8 %i.vr, i64 2
  %i.wa = insertelement <8 x i8> %i.vz, i8 %i.vs, i64 3
  %i.wb = insertelement <8 x i8> %i.wa, i8 %i.vt, i64 4
  %i.wc = insertelement <8 x i8> %i.wb, i8 %i.vu, i64 5
  %i.wd = insertelement <8 x i8> %i.wc, i8 %i.vv, i64 6
  %i.we = insertelement <8 x i8> %i.wd, i8 %i.vw, i64 7 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %2, i64 %i.uz
  %i.wg = getelementptr inbounds nuw i8, ptr %2, i64 %i.va
  %i.wh = getelementptr inbounds nuw i8, ptr %2, i64 %i.vb
  %i.wi = getelementptr inbounds nuw i8, ptr %2, i64 %i.vc
  %i.wj = getelementptr inbounds nuw i8, ptr %2, i64 %i.vd
  %i.wk = getelementptr inbounds nuw i8, ptr %2, i64 %i.ve
  %i.wl = getelementptr inbounds nuw i8, ptr %2, i64 %i.vf
  %i.wm = getelementptr inbounds nuw i8, ptr %2, i64 %i.vg
  %i.wn = load i8, ptr %i.wf, align 1, !alias.scope !2759
  %i.wo = load i8, ptr %i.wg, align 1, !alias.scope !2759
  %i.wp = load i8, ptr %i.wh, align 1, !alias.scope !2759
  %i.wq = load i8, ptr %i.wi, align 1, !alias.scope !2759
  %i.wr = load i8, ptr %i.wj, align 1, !alias.scope !2759
  %i.ws = load i8, ptr %i.wk, align 1, !alias.scope !2759
  %i.wt = load i8, ptr %i.wl, align 1, !alias.scope !2759
  %i.wu = load i8, ptr %i.wm, align 1, !alias.scope !2759
  %i.wv = insertelement <8 x i8> poison, i8 %i.wn, i64 0
  %i.ww = insertelement <8 x i8> %i.wv, i8 %i.wo, i64 1
  %i.wx = insertelement <8 x i8> %i.ww, i8 %i.wp, i64 2
  %i.wy = insertelement <8 x i8> %i.wx, i8 %i.wq, i64 3
  %i.wz = insertelement <8 x i8> %i.wy, i8 %i.wr, i64 4
  %i.xa = insertelement <8 x i8> %i.wz, i8 %i.ws, i64 5
  %i.xb = insertelement <8 x i8> %i.xa, i8 %i.wt, i64 6
  %i.xc = insertelement <8 x i8> %i.xb, i8 %i.wu, i64 7
  %i.xd = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.ur
  %i.xe = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.us
  %i.xf = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.ut
  %i.xg = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.uu
  %i.xh = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.uv
  %i.xi = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.uw
  %i.xj = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.ux
  %i.xk = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.uy
  %i.xl = load i8, ptr %i.xd, align 1, !alias.scope !2760
  %i.xm = load i8, ptr %i.xe, align 1, !alias.scope !2760
  %i.xn = load i8, ptr %i.xf, align 1, !alias.scope !2760
  %i.xo = load i8, ptr %i.xg, align 1, !alias.scope !2760
  %i.xp = load i8, ptr %i.xh, align 1, !alias.scope !2760
  %i.xq = load i8, ptr %i.xi, align 1, !alias.scope !2760
  %i.xr = load i8, ptr %i.xj, align 1, !alias.scope !2760
  %i.xs = load i8, ptr %i.xk, align 1, !alias.scope !2760
  %i.xt = insertelement <8 x i8> poison, i8 %i.xl, i64 0
  %i.xu = insertelement <8 x i8> %i.xt, i8 %i.xm, i64 1
  %i.xv = insertelement <8 x i8> %i.xu, i8 %i.xn, i64 2
  %i.xw = insertelement <8 x i8> %i.xv, i8 %i.xo, i64 3
  %i.xx = insertelement <8 x i8> %i.xw, i8 %i.xp, i64 4
  %i.xy = insertelement <8 x i8> %i.xx, i8 %i.xq, i64 5
  %i.xz = insertelement <8 x i8> %i.xy, i8 %i.xr, i64 6
  %i.ya = insertelement <8 x i8> %i.xz, i8 %i.xs, i64 7
  %i.yb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ur
  %i.yc = getelementptr inbounds nuw i8, ptr %3, i64 %i.us
  %i.yd = getelementptr inbounds nuw i8, ptr %3, i64 %i.ut
  %i.ye = getelementptr inbounds nuw i8, ptr %3, i64 %i.uu
  %i.yf = getelementptr inbounds nuw i8, ptr %3, i64 %i.uv
  %i.yg = getelementptr inbounds nuw i8, ptr %3, i64 %i.uw
  %i.yh = getelementptr inbounds nuw i8, ptr %3, i64 %i.ux
  %i.yi = getelementptr inbounds nuw i8, ptr %3, i64 %i.uy
  %i.yj = load i8, ptr %i.yb, align 1, !alias.scope !2761
  %i.yk = load i8, ptr %i.yc, align 1, !alias.scope !2761
  %i.yl = load i8, ptr %i.yd, align 1, !alias.scope !2761
  %i.ym = load i8, ptr %i.ye, align 1, !alias.scope !2761
  %i.yn = load i8, ptr %i.yf, align 1, !alias.scope !2761
  %i.yo = load i8, ptr %i.yg, align 1, !alias.scope !2761
  %i.yp = load i8, ptr %i.yh, align 1, !alias.scope !2761
  %i.yq = load i8, ptr %i.yi, align 1, !alias.scope !2761
  %i.yr = insertelement <8 x i8> poison, i8 %i.yj, i64 0
  %i.ys = insertelement <8 x i8> %i.yr, i8 %i.yk, i64 1
  %i.yt = insertelement <8 x i8> %i.ys, i8 %i.yl, i64 2
  %i.yu = insertelement <8 x i8> %i.yt, i8 %i.ym, i64 3
  %i.yv = insertelement <8 x i8> %i.yu, i8 %i.yn, i64 4
  %i.yw = insertelement <8 x i8> %i.yv, i8 %i.yo, i64 5
  %i.yx = insertelement <8 x i8> %i.yw, i8 %i.yp, i64 6
  %i.yy = insertelement <8 x i8> %i.yx, i8 %i.yq, i64 7
  %i.yz = mul <8 x i8> %i.xc, %i.we
  %i.za = add <8 x i8> %i.yz, %i.yy
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ur
  %i.zc = getelementptr inbounds nuw i8, ptr %3, i64 %i.ur
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 1
  %i.ze = getelementptr inbounds nuw i8, ptr %3, i64 %i.ur
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 3
  %i.zg = getelementptr inbounds nuw i8, ptr %3, i64 %i.ur
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 5
  %i.zi = getelementptr inbounds nuw i8, ptr %3, i64 %i.ur
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 7
  %i.zk = getelementptr inbounds nuw i8, ptr %3, i64 %i.ur
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 9
  %i.zm = getelementptr inbounds nuw i8, ptr %3, i64 %i.ur
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 11
  %i.zo = getelementptr inbounds nuw i8, ptr %3, i64 %i.ur
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 13
  %i.zq = getelementptr inbounds nuw i8, ptr %3, i64 %i.ur
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 15
  %i.zs = load i8, ptr %i.zd, align 1, !alias.scope !2761
  %i.zt = load i8, ptr %i.zf, align 1, !alias.scope !2761
  %i.zu = load i8, ptr %i.zh, align 1, !alias.scope !2761
  %i.zv = load i8, ptr %i.zj, align 1, !alias.scope !2761
  %i.zw = load i8, ptr %i.zl, align 1, !alias.scope !2761
  %i.zx = load i8, ptr %i.zn, align 1, !alias.scope !2761
  %i.zy = load i8, ptr %i.zp, align 1, !alias.scope !2761
  %i.zz = load i8, ptr %i.zr, align 1, !alias.scope !2761
  %i.aaa = insertelement <8 x i8> poison, i8 %i.zs, i64 0
  %i.aab = insertelement <8 x i8> %i.aaa, i8 %i.zt, i64 1
  %i.aac = insertelement <8 x i8> %i.aab, i8 %i.zu, i64 2
  %i.aad = insertelement <8 x i8> %i.aac, i8 %i.zv, i64 3
  %i.aae = insertelement <8 x i8> %i.aad, i8 %i.zw, i64 4
  %i.aaf = insertelement <8 x i8> %i.aae, i8 %i.zx, i64 5
  %i.aag = insertelement <8 x i8> %i.aaf, i8 %i.zy, i64 6
  %i.aah = insertelement <8 x i8> %i.aag, i8 %i.zz, i64 7
  %i.aai = mul <8 x i8> %i.ya, %i.we
  %i.aaj = sub <8 x i8> %i.aah, %i.aai
  %interleaved.vec124 = shufflevector <8 x i8> %i.za, <8 x i8> %i.aaj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec124, ptr %i.zb, align 1, !alias.scope !2762, !noalias !2763
  %index.next125 = add nuw i64 %index123, 8       ; 2 uses
  %i.aak = icmp eq i64 %index.next125, %n.vec121
  br i1 %i.aak, label %.split.split.us.preheader230, label %vector.body122, !llvm.loop !2737

.split.split.us.preheader230:                     ; preds = %vector.body122, %vector.memcheck104, %.split.split.us.preheader
  %.036.us39.ph = phi i64 [ 0, %vector.memcheck104 ], [ 0, %.split.split.us.preheader ], [ %i.uq, %vector.body122 ]
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader230, %.split.split.us
  %.036.us39 = phi i64 [ %i.abc, %.split.split.us ], [ %.036.us39.ph, %.split.split.us.preheader230 ] ; 6 uses
  %i.aal = or disjoint i64 %.036.us39, %i.n       ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 %i.aal
  %i.aan = load i8, ptr %i.aam, align 1           ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %2, i64 %i.aal
  %i.aap = load i8, ptr %i.aao, align 1
  %gep.us40 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.036.us39
  %i.aaq = load i8, ptr %gep.us40, align 1
  %i.aar = getelementptr inbounds nuw i8, ptr %3, i64 %.036.us39
  %i.aas = load i8, ptr %i.aar, align 1
  %i.aat = mul i8 %i.aap, %i.aan
  %i.aau = add i8 %i.aat, %i.aas
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 %.036.us39
  store i8 %i.aau, ptr %i.aav, align 1
  %i.aaw = or disjoint i64 %.036.us39, 1          ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %3, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1
  %i.aaz = mul i8 %i.aaq, %i.aan
  %i.aba = sub i8 %i.aay, %i.aaz
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 %i.aaw
  store i8 %i.aba, ptr %i.abb, align 1
  %i.abc = add nuw nsw i64 %.036.us39, 2          ; 2 uses
  %i.abd = icmp samesign ult i64 %i.abc, %i.g
  br i1 %i.abd, label %.split.split.us, label %.split38.us, !llvm.loop !2738

.split.split:                                     ; preds = %.split.split.preheader232, %.split.split
  %.036 = phi i64 [ %i.abv, %.split.split ], [ %.036.ph, %.split.split.preheader232 ] ; 6 uses
  %i.abe = or disjoint i64 %.036, %i.n            ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1           ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %2, i64 %i.abe
  %i.abi = load i8, ptr %i.abh, align 1
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.036
  %i.abj = load i8, ptr %gep, align 1
  %i.abk = getelementptr inbounds nuw i8, ptr %3, i64 %.036
  %i.abl = load i8, ptr %i.abk, align 1
  %i.abm = mul i8 %i.abi, %i.abg
  %i.abn = add i8 %i.abm, %i.abl
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 %.036
  store i8 %i.abn, ptr %i.abo, align 1
  %i.abp = or disjoint i64 %.036, 1               ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %3, i64 %i.abp
  %i.abr = load i8, ptr %i.abq, align 1
  %i.abs = mul i8 %i.abj, %i.abg
  %i.abt = add i8 %i.abr, %i.abs
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 %i.abp
  store i8 %i.abt, ptr %i.abu, align 1
  %i.abv = add nuw nsw i64 %.036, 2               ; 2 uses
  %i.abw = icmp samesign ult i64 %i.abv, %i.g
  br i1 %i.abw, label %.split.split, label %.split38.us, !llvm.loop !2739

.split38.us:                                      ; preds = %.split.split, %.split.split.us, %.split.us.split, %.split.us.split.us
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_cmla_zzzz_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 1
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = ashr i32 %4, 10                          ; 3 uses
  %i.j = and i32 %i.i, 1                          ; 2 uses
  %i.k = xor i32 %i.j, 1
  %i.l = add nsw i32 %i.i, -1
  %i.m = icmp ult i32 %i.l, 2
  %i.n = icmp sgt i32 %i.i, 1                     ; 2 uses
  %i.o = zext nneg i32 %i.j to i64                ; 12 uses
  %i.p = zext nneg i32 %i.k to i64                ; 5 uses
  %invariant.gep = getelementptr [2 x i8], ptr %2, i64 %i.p ; 12 uses
  %i.q = add nsw i64 %i.h, -1                     ; 5 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw nsw i64 %i.r, 1                  ; 8 uses
  %min.iters.check224 = icmp samesign ult i32 %.v.v.i, 58 ; 4 uses
  br i1 %i.m, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %i.n, label %.split.us.split.us.preheader, label %.split.us.split.preheader

.split.us.split.preheader:                        ; preds = %.split.us
  br i1 %min.iters.check224, label %.split.us.split.preheader259, label %vector.memcheck168

.split.us.split.preheader259:                     ; preds = %vector.body186, %vector.memcheck168, %.split.us.split.preheader
  %.036.us.ph = phi i64 [ 0, %vector.memcheck168 ], [ 0, %.split.us.split.preheader ], [ %i.ak, %vector.body186 ]
  br label %.split.us.split

vector.memcheck168:                               ; preds = %.split.us.split.preheader
  %i.t = shl nuw nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 9223372036854775804        ; 3 uses
  %i.v = add nuw nsw i64 %i.u, 4                  ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 %i.v       ; 4 uses
  %5 = shl nuw nsw i64 %i.o, 1                    ; 3 uses
  %i.x = getelementptr i8, ptr %1, i64 %5
  %i.y = or disjoint i64 %i.u, %5
  %i.z = add nuw i64 %i.y, 2                      ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %6 = shl nuw nsw i64 %i.p, 1
  %i.ab = getelementptr i8, ptr %2, i64 %i.u
  %i.ac = getelementptr i8, ptr %i.ab, i64 %6
  %i.ad = getelementptr i8, ptr %i.ac, i64 2
  %i.ae = getelementptr i8, ptr %2, i64 %5
  %i.af = getelementptr i8, ptr %2, i64 %i.z
  %i.ag = getelementptr i8, ptr %3, i64 %i.v
  %bound0169 = icmp ult ptr %0, %i.aa
  %bound1170 = icmp ult ptr %i.x, %i.w
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0172 = icmp ult ptr %0, %i.ad
  %bound1173 = icmp ult ptr %invariant.gep, %i.w
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %found.conflict171, %found.conflict174
  %bound0176 = icmp ult ptr %0, %i.af
  %bound1177 = icmp ult ptr %i.ae, %i.w
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  %bound0180 = icmp ult ptr %0, %i.ag
  %bound1181 = icmp ult ptr %3, %i.w
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  br i1 %conflict.rdx183, label %.split.us.split.preheader259, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck168
  %i.ah = and i64 %i.s, 3                         ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = select i1 %i.ai, i64 4, i64 %i.ah
  %n.vec185 = sub nsw i64 %i.s, %i.aj             ; 2 uses
  %i.ak = shl i64 %n.vec185, 1
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next198, %vector.body186 ] ; 2 uses
  %i.al = shl nuw i64 %index187, 1                ; 4 uses
  %i.am = or disjoint i64 %i.al, %i.o             ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.am
  %wide.vec188 = load <8 x i16>, ptr %i.an, align 2, !alias.scope !2796
  %strided.vec189 = shufflevector <8 x i16> %wide.vec188, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.am
  %wide.vec190 = load <8 x i16>, ptr %i.ao, align 2, !alias.scope !2797
  %strided.vec191 = shufflevector <8 x i16> %wide.vec190, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.al
  %wide.vec192 = load <8 x i16>, ptr %i.ap, align 2, !alias.scope !2798
  %strided.vec193 = shufflevector <8 x i16> %wide.vec192, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.al
  %wide.vec194 = load <8 x i16>, ptr %i.aq, align 2, !alias.scope !2799 ; 2 uses
  %strided.vec195 = shufflevector <8 x i16> %wide.vec194, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec196 = shufflevector <8 x i16> %wide.vec194, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ar = mul <4 x i16> %strided.vec191, %strided.vec189
  %i.as = sub <4 x i16> %strided.vec195, %i.ar
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.al
  %i.au = mul <4 x i16> %strided.vec193, %strided.vec189
  %i.av = add <4 x i16> %strided.vec196, %i.au
  %interleaved.vec197 = shufflevector <4 x i16> %i.as, <4 x i16> %i.av, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec197, ptr %i.at, align 2, !alias.scope !2800, !noalias !2801
  %index.next198 = add nuw i64 %index187, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next198, %n.vec185
  br i1 %i.aw, label %.split.us.split.preheader259, label %vector.body186, !llvm.loop !2770

.split.us.split.us.preheader:                     ; preds = %.split.us
  br i1 %min.iters.check224, label %.split.us.split.us.preheader258, label %vector.memcheck225

vector.memcheck225:                               ; preds = %.split.us.split.us.preheader
  %i.ax = shl nuw nsw i64 %i.q, 1
  %i.ay = and i64 %i.ax, 9223372036854775804      ; 3 uses
  %i.az = add nuw nsw i64 %i.ay, 4                ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %i.az     ; 4 uses
  %7 = shl nuw nsw i64 %i.o, 1                    ; 3 uses
  %i.bb = getelementptr i8, ptr %1, i64 %7
  %i.bc = or disjoint i64 %i.ay, %7
  %i.bd = add nuw i64 %i.bc, 2                    ; 2 uses
  %i.be = getelementptr i8, ptr %1, i64 %i.bd
  %8 = shl nuw nsw i64 %i.p, 1
  %i.bf = getelementptr i8, ptr %2, i64 %i.ay
  %i.bg = getelementptr i8, ptr %i.bf, i64 %8
  %i.bh = getelementptr i8, ptr %i.bg, i64 2
  %i.bi = getelementptr i8, ptr %2, i64 %7
  %i.bj = getelementptr i8, ptr %2, i64 %i.bd
  %i.bk = getelementptr i8, ptr %3, i64 %i.az
  %bound0226 = icmp ult ptr %0, %i.be
  %bound1227 = icmp ult ptr %i.bb, %i.ba
  %found.conflict228 = and i1 %bound0226, %bound1227
  %bound0229 = icmp ult ptr %0, %i.bh
  %bound1230 = icmp ult ptr %invariant.gep, %i.ba
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %found.conflict228, %found.conflict231
  %bound0233 = icmp ult ptr %0, %i.bj
  %bound1234 = icmp ult ptr %i.bi, %i.ba
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %conflict.rdx232, %found.conflict235
  %bound0237 = icmp ult ptr %0, %i.bk
  %bound1238 = icmp ult ptr %3, %i.ba
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx236, %found.conflict239
  br i1 %conflict.rdx240, label %.split.us.split.us.preheader258, label %vector.ph241

vector.ph241:                                     ; preds = %vector.memcheck225
  %i.bl = and i64 %i.s, 3                         ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = select i1 %i.bm, i64 4, i64 %i.bl
  %n.vec242 = sub nsw i64 %i.s, %i.bn             ; 2 uses
  %i.bo = shl i64 %n.vec242, 1
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next255, %vector.body243 ] ; 2 uses
  %i.bp = shl nuw i64 %index244, 1                ; 4 uses
  %i.bq = or disjoint i64 %i.bp, %i.o             ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bq
  %wide.vec245 = load <8 x i16>, ptr %i.br, align 2, !alias.scope !2802
  %strided.vec246 = shufflevector <8 x i16> %wide.vec245, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bq
  %wide.vec247 = load <8 x i16>, ptr %i.bs, align 2, !alias.scope !2803
  %strided.vec248 = shufflevector <8 x i16> %wide.vec247, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.bp
  %wide.vec249 = load <8 x i16>, ptr %i.bt, align 2, !alias.scope !2804
  %strided.vec250 = shufflevector <8 x i16> %wide.vec249, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bp
  %wide.vec251 = load <8 x i16>, ptr %i.bu, align 2, !alias.scope !2805 ; 2 uses
  %strided.vec252 = shufflevector <8 x i16> %wide.vec251, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec253 = shufflevector <8 x i16> %wide.vec251, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bv = mul <4 x i16> %strided.vec248, %strided.vec246
  %i.bw = sub <4 x i16> %strided.vec252, %i.bv
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bp
  %i.by = mul <4 x i16> %strided.vec250, %strided.vec246
  %i.bz = sub <4 x i16> %strided.vec253, %i.by
  %interleaved.vec254 = shufflevector <4 x i16> %i.bw, <4 x i16> %i.bz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec254, ptr %i.bx, align 2, !alias.scope !2806, !noalias !2807
  %index.next255 = add nuw i64 %index244, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next255, %n.vec242
  br i1 %i.ca, label %.split.us.split.us.preheader258, label %vector.body243, !llvm.loop !2777

.split.us.split.us.preheader258:                  ; preds = %vector.body243, %vector.memcheck225, %.split.us.split.us.preheader
  %.036.us.us.ph = phi i64 [ 0, %vector.memcheck225 ], [ 0, %.split.us.split.us.preheader ], [ %i.bo, %vector.body243 ]
  br label %.split.us.split.us

.split.us.split.us:                               ; preds = %.split.us.split.us.preheader258, %.split.us.split.us
  %.036.us.us = phi i64 [ %i.cs, %.split.us.split.us ], [ %.036.us.us.ph, %.split.us.split.us.preheader258 ] ; 6 uses
  %i.cb = or disjoint i64 %.036.us.us, %i.o       ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2            ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cb
  %i.cf = load i16, ptr %i.ce, align 2
  %gep.us.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.036.us.us
  %i.cg = load i16, ptr %gep.us.us, align 2
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.036.us.us
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = mul i16 %i.cf, %i.cd
  %i.ck = sub i16 %i.ci, %i.cj
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.036.us.us
  store i16 %i.ck, ptr %i.cl, align 2
  %i.cm = or disjoint i64 %.036.us.us, 1          ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = mul i16 %i.cg, %i.cd
  %i.cq = sub i16 %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cm
  store i16 %i.cq, ptr %i.cr, align 2
  %i.cs = add nuw nsw i64 %.036.us.us, 2          ; 2 uses
  %i.ct = icmp samesign ult i64 %i.cs, %i.h
  br i1 %i.ct, label %.split.us.split.us, label %.split38.us, !llvm.loop !2778

.split.us.split:                                  ; preds = %.split.us.split.preheader259, %.split.us.split
  %.036.us = phi i64 [ %i.dl, %.split.us.split ], [ %.036.us.ph, %.split.us.split.preheader259 ] ; 6 uses
  %i.cu = or disjoint i64 %.036.us, %i.o          ; 2 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2            ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cu
  %i.cy = load i16, ptr %i.cx, align 2
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.036.us
  %i.cz = load i16, ptr %gep.us, align 2
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.036.us
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = mul i16 %i.cy, %i.cw
  %i.dd = sub i16 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.036.us
  store i16 %i.dd, ptr %i.de, align 2
  %i.df = or disjoint i64 %.036.us, 1             ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = mul i16 %i.cz, %i.cw
  %i.dj = add i16 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.df
  store i16 %i.dj, ptr %i.dk, align 2
  %i.dl = add nuw nsw i64 %.036.us, 2             ; 2 uses
  %i.dm = icmp samesign ult i64 %i.dl, %i.h
  br i1 %i.dm, label %.split.us.split, label %.split38.us, !llvm.loop !2779

.split:                                           ; preds = %bb.a
  br i1 %i.n, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  br i1 %min.iters.check224, label %.split.split.preheader263, label %vector.memcheck

.split.split.preheader263:                        ; preds = %vector.body, %vector.memcheck, %.split.split.preheader
  %.036.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.split.preheader ], [ %i.eg, %vector.body ]
  br label %.split.split

vector.memcheck:                                  ; preds = %.split.split.preheader
  %i.dn = shl nuw nsw i64 %i.q, 1
  %i.do = and i64 %i.dn, 9223372036854775804      ; 3 uses
  %i.dp = add nuw nsw i64 %i.do, 4                ; 2 uses
  %i.dq = getelementptr i8, ptr %0, i64 %i.dp     ; 4 uses
  %i.dr = shl nuw nsw i64 %i.o, 1                 ; 3 uses
  %i.ds = getelementptr i8, ptr %1, i64 %i.dr
  %i.dt = or disjoint i64 %i.do, %i.dr
  %i.du = add nuw i64 %i.dt, 2                    ; 2 uses
  %i.dv = getelementptr i8, ptr %1, i64 %i.du
  %i.dw = shl nuw nsw i64 %i.p, 1
  %i.dx = getelementptr i8, ptr %2, i64 %i.do
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dw
  %i.dz = getelementptr i8, ptr %i.dy, i64 2
  %i.ea = getelementptr i8, ptr %2, i64 %i.dr
  %i.eb = getelementptr i8, ptr %2, i64 %i.du
  %i.ec = getelementptr i8, ptr %3, i64 %i.dp
  %bound0 = icmp ult ptr %0, %i.dv
  %bound1 = icmp ult ptr %i.ds, %i.dq
  %found.conflict = and i1 %bound0, %bound1
  %bound069 = icmp ult ptr %0, %i.dz
  %bound170 = icmp ult ptr %invariant.gep, %i.dq
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx = or i1 %found.conflict, %found.conflict71
  %bound072 = icmp ult ptr %0, %i.eb
  %bound173 = icmp ult ptr %i.ea, %i.dq
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx75 = or i1 %conflict.rdx, %found.conflict74
  %bound076 = icmp ult ptr %0, %i.ec
  %bound177 = icmp ult ptr %3, %i.dq
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx79 = or i1 %conflict.rdx75, %found.conflict78
  br i1 %conflict.rdx79, label %.split.split.preheader263, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ed = and i64 %i.s, 3                         ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  %i.ef = select i1 %i.ee, i64 4, i64 %i.ed
  %n.vec = sub nsw i64 %i.s, %i.ef                ; 2 uses
  %i.eg = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = shl nuw i64 %index, 1                   ; 4 uses
  %i.ei = or disjoint i64 %i.eh, %i.o             ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ei
  %wide.vec = load <8 x i16>, ptr %i.ej, align 2, !alias.scope !2808
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ei
  %wide.vec80 = load <8 x i16>, ptr %i.ek, align 2, !alias.scope !2809
  %strided.vec81 = shufflevector <8 x i16> %wide.vec80, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.eh
  %wide.vec82 = load <8 x i16>, ptr %i.el, align 2, !alias.scope !2810
  %strided.vec83 = shufflevector <8 x i16> %wide.vec82, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.eh
  %wide.vec84 = load <8 x i16>, ptr %i.em, align 2, !alias.scope !2811 ; 2 uses
  %strided.vec85 = shufflevector <8 x i16> %wide.vec84, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec86 = shufflevector <8 x i16> %wide.vec84, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.en = mul <4 x i16> %strided.vec81, %strided.vec
  %i.eo = add <4 x i16> %i.en, %strided.vec85
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.eh
  %i.eq = mul <4 x i16> %strided.vec83, %strided.vec
  %i.er = add <4 x i16> %strided.vec86, %i.eq
  %interleaved.vec = shufflevector <4 x i16> %i.eo, <4 x i16> %i.er, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.ep, align 2, !alias.scope !2812, !noalias !2813
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %.split.split.preheader263, label %vector.body, !llvm.loop !2786

.split.split.us.preheader:                        ; preds = %.split
  br i1 %min.iters.check224, label %.split.split.us.preheader261, label %vector.memcheck111

vector.memcheck111:                               ; preds = %.split.split.us.preheader
  %i.et = shl nuw nsw i64 %i.q, 1
  %i.eu = and i64 %i.et, 9223372036854775804      ; 3 uses
  %i.ev = add nuw nsw i64 %i.eu, 4                ; 2 uses
  %i.ew = getelementptr i8, ptr %0, i64 %i.ev     ; 4 uses
  %i.ex = shl nuw nsw i64 %i.o, 1                 ; 3 uses
end_hunk_0
