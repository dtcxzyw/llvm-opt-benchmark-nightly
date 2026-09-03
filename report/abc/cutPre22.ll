Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cutPre22?download=true
inline.NumInlined: 24
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 51
begin_hunk_0_@Cut_CellPrecompute:bb.a
  %i.xk = sext i32 %.10345.us to i64
  %i.xl = add nsw i64 %i.xk, 1
  %i.xm = zext nneg i32 %i.wh to i64
  br label %.lr.ph340.us

.preheader302.us:                                 ; preds = %.preheader302.lr.ph.us, %bb.ah
  %.1223349.us = phi i32 [ %i.mu, %.preheader302.lr.ph.us ], [ %i.xh, %bb.ah ] ; 2 uses
  %i.xn = shl nuw nsw i32 %.1223349.us, 8
  %i.xo = and i32 %i.xn, 3840
  br label %bb.s

.loopexit303.us:                                  ; preds = %bb.ah, %bb.r
  %exitcond426.not = icmp eq i64 %indvars.iv439, %i.mv
  br i1 %exitcond426.not, label %._crit_edge352.us, label %bb.r, !llvm.loop !68

.lr.ph338.us:                                     ; preds = %bb.s
  %i.xp = getelementptr inbounds nuw i8, ptr %i.my, i64 36 ; 9 uses
  %i.xq = zext nneg i32 %i.nb to i64              ; 2 uses
  %xtraiter = and i64 %i.xq, 7                    ; 3 uses
  %i.xr = icmp samesign ult i32 %i.nb, 8
  br i1 %i.xr, label %.epil.preheader, label %.lr.ph338.us.new

.lr.ph338.us.new:                                 ; preds = %.lr.ph338.us
  %unroll_iter = and i64 %i.xq, 8
  br label %bb.t

.preheader302.lr.ph.us:                           ; preds = %bb.r
  %i.xs = shl nuw nsw i32 %.1225350.us, 4
  br label %.preheader302.us

._crit_edge352.us:                                ; preds = %.loopexit303.us
  %i.xt = getelementptr inbounds nuw i8, ptr %.0226355.us, i64 8
  %.0226.us = load ptr, ptr %i.xt, align 8, !tbaa !32 ; 2 uses
  %.not.us = icmp eq ptr %.0226.us, null
  br i1 %.not.us, label %._crit_edge356, label %.preheader304.us, !llvm.loop !69

._crit_edge356:                                   ; preds = %._crit_edge352.us, %bb.q
  %i.xu = load i32, ptr %i.cj, align 8, !tbaa !22
  %i.xv = load i32, ptr %i.cm, align 4, !tbaa !23
  %i.xw = trunc nuw nsw i64 %indvars.iv439 to i32
  %i.xx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.xw, i32 noundef %i.xu, i32 noundef %i.xv, i32 noundef 152) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  %i.xy = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #16
  %i.xz = icmp slt i32 %i.xy, 0
  br i1 %i.xz, label %Abc_Clock.exit296, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge356
  %i.ya = load i64, ptr %0, align 8, !tbaa !36
  %i.yb = mul nsw i64 %i.ya, 1000000
  %i.yc = load i64, ptr %i.mq, align 8, !tbaa !37
  %i.yd = sdiv i64 %i.yc, 1000
  %i.ye = add nsw i64 %i.yd, %i.yb
  br label %Abc_Clock.exit296

Abc_Clock.exit296:                                ; preds = %._crit_edge356, %bb.ai
  %.0.i295 = phi i64 [ %i.ye, %bb.ai ], [ -1, %._crit_edge356 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.yf = sub nsw i64 %.0.i295, %.0.i
  %i.yg = sitofp i64 %i.yf to double
  %i.yh = fdiv double %i.yg, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, double noundef %i.yh)
  %i.yi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %i.yj = load i32, ptr %i.cn, align 8, !tbaa !25
  %i.yk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 0, i32 noundef %i.yj) ; 0 uses
  %i.yl = load i32, ptr %i.jh, align 4, !tbaa !25
  %i.ym = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 1, i32 noundef %i.yl) ; 0 uses
  %i.yn = load i32, ptr %i.jk, align 8, !tbaa !25
  %i.yo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 2, i32 noundef %i.yn) ; 0 uses
  %i.yp = load i32, ptr %i.jn, align 4, !tbaa !25
  %i.yq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 3, i32 noundef %i.yp) ; 0 uses
  %i.yr = load i32, ptr %i.jq, align 8, !tbaa !25
  %i.ys = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 4, i32 noundef %i.yr) ; 0 uses
  %i.yt = load i32, ptr %i.jt, align 4, !tbaa !25
  %i.yu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 5, i32 noundef %i.yt) ; 0 uses
  %i.yv = load i32, ptr %i.jw, align 8, !tbaa !25
  %i.yw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 6, i32 noundef %i.yv) ; 0 uses
  %i.yx = load i32, ptr %i.jz, align 4, !tbaa !25
  %i.yy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 7, i32 noundef %i.yx) ; 0 uses
  %i.yz = load i32, ptr %i.kc, align 8, !tbaa !25
  %i.za = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 8, i32 noundef %i.yz) ; 0 uses
  %i.zb = load i32, ptr %i.kf, align 4, !tbaa !25
  %i.zc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 9, i32 noundef %i.zb) ; 0 uses
  %i.zd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) ; 0 uses
  %i.ze = load i32, ptr %i.co, align 8, !tbaa !25
  %i.zf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 0, i32 noundef %i.ze) ; 0 uses
  %i.zg = load i32, ptr %i.kl, align 4, !tbaa !25
  %i.zh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 1, i32 noundef %i.zg) ; 0 uses
  %i.zi = load i32, ptr %i.ko, align 8, !tbaa !25
  %i.zj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 2, i32 noundef %i.zi) ; 0 uses
  %i.zk = load i32, ptr %i.kr, align 4, !tbaa !25
  %i.zl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 3, i32 noundef %i.zk) ; 0 uses
  %i.zm = load i32, ptr %i.ku, align 8, !tbaa !25
  %i.zn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 4, i32 noundef %i.zm) ; 0 uses
  %i.zo = load i32, ptr %i.kx, align 4, !tbaa !25
  %i.zp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 5, i32 noundef %i.zo) ; 0 uses
  %i.zq = load i32, ptr %i.la, align 8, !tbaa !25
  %i.zr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 6, i32 noundef %i.zq) ; 0 uses
  %i.zs = load i32, ptr %i.ld, align 4, !tbaa !25
  %i.zt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 7, i32 noundef %i.zs) ; 0 uses
  %i.zu = load i32, ptr %i.lg, align 8, !tbaa !25
  %i.zv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 8, i32 noundef %i.zu) ; 0 uses
  %i.zw = load i32, ptr %i.lj, align 4, !tbaa !25
  %i.zx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 9, i32 noundef %i.zw) ; 0 uses
  %i.zy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.zz = load i32, ptr %i.cp, align 8, !tbaa !25
  %i.aaa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 0, i32 noundef %i.zz) ; 0 uses
  %i.aab = load i32, ptr %i.lp, align 4, !tbaa !25
  %i.aac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 1, i32 noundef %i.aab) ; 0 uses
  %i.aad = load i32, ptr %i.ls, align 8, !tbaa !25
  %i.aae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 2, i32 noundef %i.aad) ; 0 uses
  %i.aaf = load i32, ptr %i.lv, align 4, !tbaa !25
  %i.aag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 3, i32 noundef %i.aaf) ; 0 uses
  %i.aah = load i32, ptr %i.ly, align 8, !tbaa !25
  %i.aai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 4, i32 noundef %i.aah) ; 0 uses
  %i.aaj = load i32, ptr %i.mb, align 4, !tbaa !25
  %i.aak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 5, i32 noundef %i.aaj) ; 0 uses
  %i.aal = load i32, ptr %i.me, align 8, !tbaa !25
  %i.aam = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 6, i32 noundef %i.aal) ; 0 uses
  %i.aan = load i32, ptr %i.mh, align 4, !tbaa !25
  %i.aao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 7, i32 noundef %i.aan) ; 0 uses
  %i.aap = load i32, ptr %i.mk, align 8, !tbaa !25
  %i.aaq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 8, i32 noundef %i.aap) ; 0 uses
  %i.aar = load i32, ptr %i.mn, align 4, !tbaa !25
  %i.aas = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 9, i32 noundef %i.aar) ; 0 uses
  %putchar227 = call i32 @putchar(i32 10)         ; 0 uses
  %indvars.iv.next440 = add nsw i64 %indvars.iv439, -1
  %i.aat = icmp samesign ugt i64 %indvars.iv439, 4
  br i1 %i.aat, label %bb.q, label %bb.aj, !llvm.loop !70

bb.aj:                                            ; preds = %Abc_Clock.exit296
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.14)
  %i.aau = getelementptr inbounds nuw i8, ptr %i.k, i64 5160
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !74
  %i.aaw = sitofp i64 %i.aav to double
  %i.aax = fdiv double %i.aaw, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, double noundef %i.aax)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.15)
  %i.aay = getelementptr inbounds nuw i8, ptr %i.k, i64 5152
  %i.aaz = load i64, ptr %i.aay, align 8, !tbaa !75
  %i.aba = sitofp i64 %i.aaz to double
  %i.abb = fdiv double %i.aba, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, double noundef %i.abb)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.16)
  %i.abc = getelementptr inbounds nuw i8, ptr %i.k, i64 5168
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !76
  %i.abe = sitofp i64 %i.abd to double
  %i.abf = fdiv double %i.abe, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, double noundef %i.abf)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @Cut_CellTruthElem(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 22 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 47 uses
  %i.c = ptrtoaddr ptr %1 to i64                  ; 24 uses
  %i.d = ptrtoaddr ptr %0 to i64                  ; 24 uses
  switch i32 %4, label %.loopexit [
    i32 0, label %.preheader.preheader
    i32 1, label %.preheader280.preheader
    i32 2, label %.preheader282.preheader
    i32 3, label %.preheader284.preheader
    i32 4, label %.preheader286.preheader
    i32 5, label %.preheader288.preheader
    i32 6, label %.preheader290.preheader
    i32 7, label %.preheader292.preheader
    i32 8, label %.preheader294.preheader
    i32 9, label %.preheader296.preheader
    i32 10, label %.preheader298.preheader
    i32 11, label %.preheader300.preheader
    i32 12, label %.preheader302.preheader
    i32 13, label %.preheader304.preheader
    i32 14, label %.preheader306.preheader
    i32 15, label %.preheader308.preheader
    i32 16, label %.preheader310.preheader
    i32 17, label %.preheader312.preheader
    i32 18, label %.preheader314.preheader
    i32 19, label %.preheader316.preheader
    i32 20, label %.preheader318.preheader
    i32 21, label %.preheader320.preheader
  ]

.preheader320.preheader:                          ; preds = %bb.a
  %i.e = add i64 %i.d, 64
  %i.f = add i64 %i.c, 64
  %i.g = add i64 %i.a, 64
  %i.h = add i64 %i.b, 64                         ; 3 uses
  %rt.bound0124 = icmp ugt i64 %i.e, %i.b
  %rt.bound1125 = icmp ugt i64 %i.h, %i.d
  %rt.conflict126 = and i1 %rt.bound0124, %rt.bound1125
  %rt.bound0127 = icmp ugt i64 %i.f, %i.b
  %rt.bound1128 = icmp ugt i64 %i.h, %i.c
  %rt.conflict129 = and i1 %rt.bound0127, %rt.bound1128
  %rt.conflict.all130 = or i1 %rt.conflict126, %rt.conflict129
  %rt.bound0131 = icmp ugt i64 %i.g, %i.b
  %rt.bound1132 = icmp ugt i64 %i.h, %i.a
  %rt.conflict133 = and i1 %rt.bound0131, %rt.bound1132
  %rt.conflict.all134 = or i1 %rt.conflict.all130, %rt.conflict133
  br i1 %rt.conflict.all134, label %.preheader320.preheader.rtscalar, label %.preheader320.preheader.rtvec, !prof !77

.preheader318.preheader:                          ; preds = %bb.a
  %i.i = add i64 %i.d, 64
  %i.j = add i64 %i.c, 64
  %i.k = add i64 %i.a, 64
  %i.l = add i64 %i.b, 64                         ; 3 uses
  %rt.bound0112 = icmp ugt i64 %i.i, %i.b
  %rt.bound1113 = icmp ugt i64 %i.l, %i.d
  %rt.conflict114 = and i1 %rt.bound0112, %rt.bound1113
  %rt.bound0115 = icmp ugt i64 %i.j, %i.b
  %rt.bound1116 = icmp ugt i64 %i.l, %i.c
  %rt.conflict117 = and i1 %rt.bound0115, %rt.bound1116
  %rt.conflict.all118 = or i1 %rt.conflict114, %rt.conflict117
  %rt.bound0119 = icmp ugt i64 %i.k, %i.b
  %rt.bound1120 = icmp ugt i64 %i.l, %i.a
  %rt.conflict121 = and i1 %rt.bound0119, %rt.bound1120
  %rt.conflict.all122 = or i1 %rt.conflict.all118, %rt.conflict121
  br i1 %rt.conflict.all122, label %.preheader318.preheader.rtscalar, label %.preheader318.preheader.rtvec, !prof !77

.preheader316.preheader:                          ; preds = %bb.a
  %i.m = add i64 %i.d, 64
  %i.n = add i64 %i.c, 64
  %i.o = add i64 %i.a, 64
  %i.p = add i64 %i.b, 64                         ; 3 uses
  %rt.bound0100 = icmp ugt i64 %i.m, %i.b
  %rt.bound1101 = icmp ugt i64 %i.p, %i.d
  %rt.conflict102 = and i1 %rt.bound0100, %rt.bound1101
  %rt.bound0103 = icmp ugt i64 %i.n, %i.b
  %rt.bound1104 = icmp ugt i64 %i.p, %i.c
  %rt.conflict105 = and i1 %rt.bound0103, %rt.bound1104
  %rt.conflict.all106 = or i1 %rt.conflict102, %rt.conflict105
  %rt.bound0107 = icmp ugt i64 %i.o, %i.b
  %rt.bound1108 = icmp ugt i64 %i.p, %i.a
  %rt.conflict109 = and i1 %rt.bound0107, %rt.bound1108
  %rt.conflict.all110 = or i1 %rt.conflict.all106, %rt.conflict109
  br i1 %rt.conflict.all110, label %.preheader316.preheader.rtscalar, label %.preheader316.preheader.rtvec, !prof !77

.preheader314.preheader:                          ; preds = %bb.a
  %i.q = add i64 %i.d, 64
  %i.r = add i64 %i.c, 64
  %i.s = add i64 %i.a, 64
  %i.t = add i64 %i.b, 64                         ; 3 uses
  %rt.bound088 = icmp ugt i64 %i.q, %i.b
  %rt.bound189 = icmp ugt i64 %i.t, %i.d
  %rt.conflict90 = and i1 %rt.bound088, %rt.bound189
  %rt.bound091 = icmp ugt i64 %i.r, %i.b
  %rt.bound192 = icmp ugt i64 %i.t, %i.c
  %rt.conflict93 = and i1 %rt.bound091, %rt.bound192
  %rt.conflict.all94 = or i1 %rt.conflict90, %rt.conflict93
  %rt.bound095 = icmp ugt i64 %i.s, %i.b
  %rt.bound196 = icmp ugt i64 %i.t, %i.a
  %rt.conflict97 = and i1 %rt.bound095, %rt.bound196
  %rt.conflict.all98 = or i1 %rt.conflict.all94, %rt.conflict97
  br i1 %rt.conflict.all98, label %.preheader314.preheader.rtscalar, label %.preheader314.preheader.rtvec, !prof !77

.preheader312.preheader:                          ; preds = %bb.a
  %i.u = add i64 %i.d, 64
  %i.v = add i64 %i.c, 64
  %i.w = add i64 %i.a, 64
  %i.x = add i64 %i.b, 64                         ; 3 uses
  %rt.bound076 = icmp ugt i64 %i.u, %i.b
  %rt.bound177 = icmp ugt i64 %i.x, %i.d
  %rt.conflict78 = and i1 %rt.bound076, %rt.bound177
  %rt.bound079 = icmp ugt i64 %i.v, %i.b
  %rt.bound180 = icmp ugt i64 %i.x, %i.c
  %rt.conflict81 = and i1 %rt.bound079, %rt.bound180
  %rt.conflict.all82 = or i1 %rt.conflict78, %rt.conflict81
  %rt.bound083 = icmp ugt i64 %i.w, %i.b
  %rt.bound184 = icmp ugt i64 %i.x, %i.a
  %rt.conflict85 = and i1 %rt.bound083, %rt.bound184
  %rt.conflict.all86 = or i1 %rt.conflict.all82, %rt.conflict85
  br i1 %rt.conflict.all86, label %.preheader312.preheader.rtscalar, label %.preheader312.preheader.rtvec, !prof !77

.preheader310.preheader:                          ; preds = %bb.a
  %i.y = add i64 %i.d, 64
  %i.z = add i64 %i.c, 64
  %i.aa = add i64 %i.a, 64
  %i.ab = add i64 %i.b, 64                        ; 3 uses
  %rt.bound064 = icmp ugt i64 %i.y, %i.b
  %rt.bound165 = icmp ugt i64 %i.ab, %i.d
  %rt.conflict66 = and i1 %rt.bound064, %rt.bound165
  %rt.bound067 = icmp ugt i64 %i.z, %i.b
  %rt.bound168 = icmp ugt i64 %i.ab, %i.c
  %rt.conflict69 = and i1 %rt.bound067, %rt.bound168
  %rt.conflict.all70 = or i1 %rt.conflict66, %rt.conflict69
  %rt.bound071 = icmp ugt i64 %i.aa, %i.b
  %rt.bound172 = icmp ugt i64 %i.ab, %i.a
  %rt.conflict73 = and i1 %rt.bound071, %rt.bound172
  %rt.conflict.all74 = or i1 %rt.conflict.all70, %rt.conflict73
  br i1 %rt.conflict.all74, label %.preheader310.preheader.rtscalar, label %.preheader310.preheader.rtvec, !prof !77

.preheader308.preheader:                          ; preds = %bb.a
  %i.ac = add i64 %i.d, 64
  %i.ad = add i64 %i.c, 64
  %i.ae = add i64 %i.a, 64
  %i.af = add i64 %i.b, 64                        ; 3 uses
  %rt.bound052 = icmp ugt i64 %i.ac, %i.b
  %rt.bound153 = icmp ugt i64 %i.af, %i.d
  %rt.conflict54 = and i1 %rt.bound052, %rt.bound153
  %rt.bound055 = icmp ugt i64 %i.ad, %i.b
  %rt.bound156 = icmp ugt i64 %i.af, %i.c
  %rt.conflict57 = and i1 %rt.bound055, %rt.bound156
  %rt.conflict.all58 = or i1 %rt.conflict54, %rt.conflict57
  %rt.bound059 = icmp ugt i64 %i.ae, %i.b
  %rt.bound160 = icmp ugt i64 %i.af, %i.a
  %rt.conflict61 = and i1 %rt.bound059, %rt.bound160
  %rt.conflict.all62 = or i1 %rt.conflict.all58, %rt.conflict61
  br i1 %rt.conflict.all62, label %.preheader308.preheader.rtscalar, label %.preheader308.preheader.rtvec, !prof !77

.preheader306.preheader:                          ; preds = %bb.a
  %i.ag = add i64 %i.d, 64
  %i.ah = add i64 %i.c, 64
  %i.ai = add i64 %i.a, 64
  %i.aj = add i64 %i.b, 64                        ; 3 uses
  %rt.bound040 = icmp ugt i64 %i.ag, %i.b
  %rt.bound141 = icmp ugt i64 %i.aj, %i.d
  %rt.conflict42 = and i1 %rt.bound040, %rt.bound141
  %rt.bound043 = icmp ugt i64 %i.ah, %i.b
  %rt.bound144 = icmp ugt i64 %i.aj, %i.c
  %rt.conflict45 = and i1 %rt.bound043, %rt.bound144
  %rt.conflict.all46 = or i1 %rt.conflict42, %rt.conflict45
  %rt.bound047 = icmp ugt i64 %i.ai, %i.b
  %rt.bound148 = icmp ugt i64 %i.aj, %i.a
  %rt.conflict49 = and i1 %rt.bound047, %rt.bound148
  %rt.conflict.all50 = or i1 %rt.conflict.all46, %rt.conflict49
  br i1 %rt.conflict.all50, label %.preheader306.preheader.rtscalar, label %.preheader306.preheader.rtvec, !prof !77

.preheader304.preheader:                          ; preds = %bb.a
  %i.ak = add i64 %i.d, 64
  %i.al = add i64 %i.c, 64
  %i.am = add i64 %i.a, 64
  %i.an = add i64 %i.b, 64                        ; 3 uses
  %rt.bound028 = icmp ugt i64 %i.ak, %i.b
  %rt.bound129 = icmp ugt i64 %i.an, %i.d
  %rt.conflict30 = and i1 %rt.bound028, %rt.bound129
  %rt.bound031 = icmp ugt i64 %i.al, %i.b
  %rt.bound132 = icmp ugt i64 %i.an, %i.c
  %rt.conflict33 = and i1 %rt.bound031, %rt.bound132
  %rt.conflict.all34 = or i1 %rt.conflict30, %rt.conflict33
  %rt.bound035 = icmp ugt i64 %i.am, %i.b
  %rt.bound136 = icmp ugt i64 %i.an, %i.a
  %rt.conflict37 = and i1 %rt.bound035, %rt.bound136
  %rt.conflict.all38 = or i1 %rt.conflict.all34, %rt.conflict37
  br i1 %rt.conflict.all38, label %.preheader304.preheader.rtscalar, label %.preheader304.preheader.rtvec, !prof !77

.preheader302.preheader:                          ; preds = %bb.a
  %i.ao = load i32, ptr %0, align 4, !tbaa !25
  %i.ap = load i32, ptr %1, align 4, !tbaa !25
  %i.aq = load i32, ptr %2, align 4, !tbaa !25
  %i.ar = xor i32 %i.aq, %i.ap
  %i.as = and i32 %i.ar, %i.ao
  store i32 %i.as, ptr %3, align 4, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !25
  %i.az = xor i32 %i.ay, %i.aw
  %i.ba = and i32 %i.az, %i.au
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !25
  %i.bi = xor i32 %i.bh, %i.bf
  %i.bj = and i32 %i.bi, %i.bd
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !25
  %i.br = xor i32 %i.bq, %i.bo
  %i.bs = and i32 %i.br, %i.bm
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !25
  %i.ca = xor i32 %i.bz, %i.bx
  %i.cb = and i32 %i.ca, %i.bv
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !25
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.cj = xor i32 %i.ci, %i.cg
  %i.ck = and i32 %i.cj, %i.ce
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !25
  %i.cs = xor i32 %i.cr, %i.cp
  %i.ct = and i32 %i.cs, %i.cn
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !25
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !25
  %i.db = xor i32 %i.da, %i.cy
  %i.dc = and i32 %i.db, %i.cw
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.df = load i32, ptr %i.de, align 4, !tbaa !25
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !25
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !25
  %i.dk = xor i32 %i.dj, %i.dh
  %i.dl = and i32 %i.dk, %i.df
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !25
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !25
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !25
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !25
  %i.dt = xor i32 %i.ds, %i.dq
  %i.du = and i32 %i.dt, %i.do
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !25
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !25
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !25
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !25
  %i.ec = xor i32 %i.eb, %i.dz
  %i.ed = and i32 %i.ec, %i.dx
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !25
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !25
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !25
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !25
  %i.el = xor i32 %i.ek, %i.ei
  %i.em = and i32 %i.el, %i.eg
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.em, ptr %i.en, align 4, !tbaa !25
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !25
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !25
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.et = load i32, ptr %i.es, align 4, !tbaa !25
  %i.eu = xor i32 %i.et, %i.er
  %i.ev = and i32 %i.eu, %i.ep
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !25
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !25
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !25
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !25
  %i.fd = xor i32 %i.fc, %i.fa
  %i.fe = and i32 %i.fd, %i.ey
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !25
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !25
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !25
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !25
  %i.fm = xor i32 %i.fl, %i.fj
  %i.fn = and i32 %i.fm, %i.fh
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !25
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !25
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !25
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !25
  %i.fv = xor i32 %i.fu, %i.fs
  %i.fw = and i32 %i.fv, %i.fq
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !25
  br label %.loopexit

.preheader300.preheader:                          ; preds = %bb.a
  %i.fy = load i32, ptr %0, align 4, !tbaa !25
  %i.fz = load i32, ptr %1, align 4, !tbaa !25
  %i.ga = load i32, ptr %2, align 4, !tbaa !25
  %i.gb = and i32 %i.ga, %i.fz
  %i.gc = xor i32 %i.gb, %i.fy
  store i32 %i.gc, ptr %3, align 4, !tbaa !25
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !25
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !25
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !25
  %i.gj = and i32 %i.gi, %i.gg
  %i.gk = xor i32 %i.gj, %i.ge
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !25
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !25
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !25
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !25
  %i.gs = and i32 %i.gr, %i.gp
  %i.gt = xor i32 %i.gs, %i.gn
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !25
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !25
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !25
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !25
  %i.hb = and i32 %i.ha, %i.gy
  %i.hc = xor i32 %i.hb, %i.gw
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !25
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !25
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
begin_hunk_1_@Cut_CellTruthElem:bb.a
  %i.ko = xor i32 %i.kn, %i.ki
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !25
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !25
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !25
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !25
  %i.kw = and i32 %i.kv, %i.kt
  %i.kx = xor i32 %i.kw, %i.kr
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !25
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !25
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !25
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !25
  %i.lf = and i32 %i.le, %i.lc
  %i.lg = xor i32 %i.lf, %i.la
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !25
  br label %.loopexit

.preheader298.preheader:                          ; preds = %bb.a
  %i.li = load i32, ptr %0, align 4, !tbaa !25
  %i.lj = load i32, ptr %1, align 4, !tbaa !25
  %i.lk = xor i32 %i.lj, %i.li
  %i.ll = load i32, ptr %2, align 4, !tbaa !25
  %i.lm = xor i32 %i.lk, %i.ll
  store i32 %i.lm, ptr %3, align 4, !tbaa !25
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !25
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !25
  %i.lr = xor i32 %i.lq, %i.lo
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !25
  %i.lu = xor i32 %i.lr, %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !25
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !25
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !25
  %i.ma = xor i32 %i.lz, %i.lx
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !25
  %i.md = xor i32 %i.ma, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.md, ptr %i.me, align 4, !tbaa !25
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !25
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !25
  %i.mj = xor i32 %i.mi, %i.mg
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !25
  %i.mm = xor i32 %i.mj, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !25
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !25
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !25
  %i.ms = xor i32 %i.mr, %i.mp
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !25
  %i.mv = xor i32 %i.ms, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !25
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !25
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !25
  %i.nb = xor i32 %i.na, %i.my
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !25
  %i.ne = xor i32 %i.nb, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ne, ptr %i.nf, align 4, !tbaa !25
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !25
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !25
  %i.nk = xor i32 %i.nj, %i.nh
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !25
  %i.nn = xor i32 %i.nk, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !25
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !25
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !25
  %i.nt = xor i32 %i.ns, %i.nq
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !25
  %i.nw = xor i32 %i.nt, %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.nw, ptr %i.nx, align 4, !tbaa !25
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !25
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !25
  %i.oc = xor i32 %i.ob, %i.nz
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !25
  %i.of = xor i32 %i.oc, %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.of, ptr %i.og, align 4, !tbaa !25
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !25
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !25
  %i.ol = xor i32 %i.ok, %i.oi
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.on = load i32, ptr %i.om, align 4, !tbaa !25
  %i.oo = xor i32 %i.ol, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !25
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !25
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !25
  %i.ou = xor i32 %i.ot, %i.or
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !25
  %i.ox = xor i32 %i.ou, %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.ox, ptr %i.oy, align 4, !tbaa !25
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !25
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !25
  %i.pd = xor i32 %i.pc, %i.pa
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !25
  %i.pg = xor i32 %i.pd, %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !25
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !25
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !25
  %i.pm = xor i32 %i.pl, %i.pj
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !25
  %i.pp = xor i32 %i.pm, %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.pp, ptr %i.pq, align 4, !tbaa !25
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !25
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !25
  %i.pv = xor i32 %i.pu, %i.ps
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !25
  %i.py = xor i32 %i.pv, %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.py, ptr %i.pz, align 4, !tbaa !25
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !25
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !25
  %i.qe = xor i32 %i.qd, %i.qb
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !25
  %i.qh = xor i32 %i.qe, %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.qh, ptr %i.qi, align 4, !tbaa !25
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !25
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !25
  %i.qn = xor i32 %i.qm, %i.qk
  %i.qo = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !25
  %i.qq = xor i32 %i.qn, %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.qq, ptr %i.qr, align 4, !tbaa !25
  br label %.loopexit

.preheader296.preheader:                          ; preds = %bb.a
  %i.qs = add i64 %i.d, 64
  %i.qt = add i64 %i.c, 64
  %i.qu = add i64 %i.a, 64
  %i.qv = add i64 %i.b, 64                        ; 3 uses
  %rt.bound016 = icmp ugt i64 %i.qs, %i.b
  %rt.bound117 = icmp ugt i64 %i.qv, %i.d
  %rt.conflict18 = and i1 %rt.bound016, %rt.bound117
  %rt.bound019 = icmp ugt i64 %i.qt, %i.b
  %rt.bound120 = icmp ugt i64 %i.qv, %i.c
  %rt.conflict21 = and i1 %rt.bound019, %rt.bound120
  %rt.conflict.all22 = or i1 %rt.conflict18, %rt.conflict21
  %rt.bound023 = icmp ugt i64 %i.qu, %i.b
  %rt.bound124 = icmp ugt i64 %i.qv, %i.a
  %rt.conflict25 = and i1 %rt.bound023, %rt.bound124
  %rt.conflict.all26 = or i1 %rt.conflict.all22, %rt.conflict25
  br i1 %rt.conflict.all26, label %.preheader296.preheader.rtscalar, label %.preheader296.preheader.rtvec, !prof !77

.preheader294.preheader:                          ; preds = %bb.a
  %i.qw = load i32, ptr %0, align 4, !tbaa !25
  %i.qx = load i32, ptr %1, align 4, !tbaa !25
  %i.qy = load i32, ptr %2, align 4, !tbaa !25
  %i.qz = or i32 %i.qy, %i.qx
  %i.ra = and i32 %i.qz, %i.qw
  store i32 %i.ra, ptr %3, align 4, !tbaa !25
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !25
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !25
  %i.rf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !25
  %i.rh = or i32 %i.rg, %i.re
  %i.ri = and i32 %i.rh, %i.rc
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ri, ptr %i.rj, align 4, !tbaa !25
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !25
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !25
  %i.ro = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !25
  %i.rq = or i32 %i.rp, %i.rn
  %i.rr = and i32 %i.rq, %i.rl
  %i.rs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.rr, ptr %i.rs, align 4, !tbaa !25
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !25
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !25
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !25
  %i.rz = or i32 %i.ry, %i.rw
  %i.sa = and i32 %i.rz, %i.ru
  %i.sb = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.sa, ptr %i.sb, align 4, !tbaa !25
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !25
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !25
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !25
  %i.si = or i32 %i.sh, %i.sf
  %i.sj = and i32 %i.si, %i.sd
  %i.sk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.sj, ptr %i.sk, align 4, !tbaa !25
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !25
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !25
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !25
  %i.sr = or i32 %i.sq, %i.so
  %i.ss = and i32 %i.sr, %i.sm
  %i.st = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ss, ptr %i.st, align 4, !tbaa !25
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !25
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !25
  %i.sy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !25
  %i.ta = or i32 %i.sz, %i.sx
  %i.tb = and i32 %i.ta, %i.sv
  %i.tc = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.tb, ptr %i.tc, align 4, !tbaa !25
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.te = load i32, ptr %i.td, align 4, !tbaa !25
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !25
  %i.th = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !25
  %i.tj = or i32 %i.ti, %i.tg
  %i.tk = and i32 %i.tj, %i.te
  %i.tl = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.tk, ptr %i.tl, align 4, !tbaa !25
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !25
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !25
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !25
  %i.ts = or i32 %i.tr, %i.tp
  %i.tt = and i32 %i.ts, %i.tn
  %i.tu = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.tt, ptr %i.tu, align 4, !tbaa !25
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !25
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !25
  %i.tz = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !25
  %i.ub = or i32 %i.ua, %i.ty
  %i.uc = and i32 %i.ub, %i.tw
  %i.ud = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.uc, ptr %i.ud, align 4, !tbaa !25
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !25
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !25
  %i.ui = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !25
  %i.uk = or i32 %i.uj, %i.uh
  %i.ul = and i32 %i.uk, %i.uf
  %i.um = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.ul, ptr %i.um, align 4, !tbaa !25
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !25
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !25
  %i.ur = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !25
  %i.ut = or i32 %i.us, %i.uq
  %i.uu = and i32 %i.ut, %i.uo
  %i.uv = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.uu, ptr %i.uv, align 4, !tbaa !25
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !25
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !25
  %i.va = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !25
  %i.vc = or i32 %i.vb, %i.uz
  %i.vd = and i32 %i.vc, %i.ux
  %i.ve = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.vd, ptr %i.ve, align 4, !tbaa !25
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !25
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !25
  %i.vj = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !25
  %i.vl = or i32 %i.vk, %i.vi
  %i.vm = and i32 %i.vl, %i.vg
  %i.vn = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.vm, ptr %i.vn, align 4, !tbaa !25
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !25
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !25
  %i.vs = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !25
  %i.vu = or i32 %i.vt, %i.vr
  %i.vv = and i32 %i.vu, %i.vp
  %i.vw = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.vv, ptr %i.vw, align 4, !tbaa !25
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !25
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !25
  %i.wb = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !25
  %i.wd = or i32 %i.wc, %i.wa
  %i.we = and i32 %i.wd, %i.vy
  %i.wf = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.we, ptr %i.wf, align 4, !tbaa !25
  br label %.loopexit

.preheader292.preheader:                          ; preds = %bb.a
  %i.wg = add i64 %i.d, 64
  %i.wh = add i64 %i.c, 64
  %i.wi = add i64 %i.a, 64
  %i.wj = add i64 %i.b, 64                        ; 3 uses
  %rt.bound04 = icmp ugt i64 %i.wg, %i.b
  %rt.bound15 = icmp ugt i64 %i.wj, %i.d
  %rt.conflict6 = and i1 %rt.bound04, %rt.bound15
  %rt.bound07 = icmp ugt i64 %i.wh, %i.b
  %rt.bound18 = icmp ugt i64 %i.wj, %i.c
  %rt.conflict9 = and i1 %rt.bound07, %rt.bound18
  %rt.conflict.all10 = or i1 %rt.conflict6, %rt.conflict9
  %rt.bound011 = icmp ugt i64 %i.wi, %i.b
  %rt.bound112 = icmp ugt i64 %i.wj, %i.a
  %rt.conflict13 = and i1 %rt.bound011, %rt.bound112
  %rt.conflict.all14 = or i1 %rt.conflict.all10, %rt.conflict13
  br i1 %rt.conflict.all14, label %.preheader292.preheader.rtscalar, label %.preheader292.preheader.rtvec, !prof !77

.preheader290.preheader:                          ; preds = %bb.a
  %i.wk = load i32, ptr %0, align 4, !tbaa !25
  %i.wl = load i32, ptr %1, align 4, !tbaa !25
  %i.wm = and i32 %i.wl, %i.wk
  %i.wn = load i32, ptr %2, align 4, !tbaa !25
  %i.wo = and i32 %i.wm, %i.wn
  store i32 %i.wo, ptr %3, align 4, !tbaa !25
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !25
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !25
  %i.wt = and i32 %i.ws, %i.wq
  %i.wu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !25
  %i.ww = and i32 %i.wt, %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ww, ptr %i.wx, align 4, !tbaa !25
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !25
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !25
  %i.xc = and i32 %i.xb, %i.wz
  %i.xd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !25
  %i.xf = and i32 %i.xc, %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.xf, ptr %i.xg, align 4, !tbaa !25
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !25
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !25
  %i.xl = and i32 %i.xk, %i.xi
  %i.xm = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !25
  %i.xo = and i32 %i.xl, %i.xn
  %i.xp = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.xo, ptr %i.xp, align 4, !tbaa !25
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !25
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !25
  %i.xu = and i32 %i.xt, %i.xr
  %i.xv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !25
  %i.xx = and i32 %i.xu, %i.xw
  %i.xy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.xx, ptr %i.xy, align 4, !tbaa !25
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !25
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !25
  %i.yd = and i32 %i.yc, %i.ya
  %i.ye = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !25
  %i.yg = and i32 %i.yd, %i.yf
  %i.yh = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.yg, ptr %i.yh, align 4, !tbaa !25
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !25
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !25
  %i.ym = and i32 %i.yl, %i.yj
  %i.yn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !25
  %i.yp = and i32 %i.ym, %i.yo
  %i.yq = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.yp, ptr %i.yq, align 4, !tbaa !25
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !25
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !25
  %i.yv = and i32 %i.yu, %i.ys
  %i.yw = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !25
  %i.yy = and i32 %i.yv, %i.yx
  %i.yz = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.yy, ptr %i.yz, align 4, !tbaa !25
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !25
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !25
  %i.ze = and i32 %i.zd, %i.zb
  %i.zf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !25
  %i.zh = and i32 %i.ze, %i.zg
  %i.zi = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.zh, ptr %i.zi, align 4, !tbaa !25
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !25
  %i.zl = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !25
  %i.zn = and i32 %i.zm, %i.zk
  %i.zo = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !25
  %i.zq = and i32 %i.zn, %i.zp
  %i.zr = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.zq, ptr %i.zr, align 4, !tbaa !25
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !25
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !25
  %i.zw = and i32 %i.zv, %i.zt
  %i.zx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !25
  %i.zz = and i32 %i.zw, %i.zy
  %i.aaa = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.zz, ptr %i.aaa, align 4, !tbaa !25
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !25
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !25
  %i.aaf = and i32 %i.aae, %i.aac
  %i.aag = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !25
  %i.aai = and i32 %i.aaf, %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.aai, ptr %i.aaj, align 4, !tbaa !25
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !25
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !25
  %i.aao = and i32 %i.aan, %i.aal
  %i.aap = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !25
  %i.aar = and i32 %i.aao, %i.aaq
  %i.aas = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.aar, ptr %i.aas, align 4, !tbaa !25
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !25
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !25
  %i.aax = and i32 %i.aaw, %i.aau
  %i.aay = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !25
  %i.aba = and i32 %i.aax, %i.aaz
  %i.abb = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.aba, ptr %i.abb, align 4, !tbaa !25
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !25
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !25
  %i.abg = and i32 %i.abf, %i.abd
  %i.abh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !25
  %i.abj = and i32 %i.abg, %i.abi
  %i.abk = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.abj, ptr %i.abk, align 4, !tbaa !25
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !25
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !25
  %i.abp = and i32 %i.abo, %i.abm
  %i.abq = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !25
  %i.abs = and i32 %i.abp, %i.abr
  %i.abt = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.abs, ptr %i.abt, align 4, !tbaa !25
  br label %.loopexit

.preheader288.preheader:                          ; preds = %bb.a
  %i.abu = load i32, ptr %0, align 4, !tbaa !25
  %i.abv = load i32, ptr %1, align 4, !tbaa !25
  %i.abw = xor i32 %i.abv, %i.abu
  store i32 %i.abw, ptr %3, align 4, !tbaa !25
  %i.abx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !25
  %i.abz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !25
  %i.acb = xor i32 %i.aca, %i.aby
  %i.acc = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.acb, ptr %i.acc, align 4, !tbaa !25
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !25
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !25
  %i.ach = xor i32 %i.acg, %i.ace
  %i.aci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ach, ptr %i.aci, align 4, !tbaa !25
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !25
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !25
  %i.acn = xor i32 %i.acm, %i.ack
  %i.aco = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.acn, ptr %i.aco, align 4, !tbaa !25
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !25
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !25
  %i.act = xor i32 %i.acs, %i.acq
  %i.acu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.act, ptr %i.acu, align 4, !tbaa !25
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !25
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !25
  %i.acz = xor i32 %i.acy, %i.acw
  %i.ada = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.acz, ptr %i.ada, align 4, !tbaa !25
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !25
  %i.add = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !25
  %i.adf = xor i32 %i.ade, %i.adc
  %i.adg = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.adf, ptr %i.adg, align 4, !tbaa !25
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !25
  %i.adj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !25
  %i.adl = xor i32 %i.adk, %i.adi
  %i.adm = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.adl, ptr %i.adm, align 4, !tbaa !25
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !25
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !25
  %i.adr = xor i32 %i.adq, %i.ado
  %i.ads = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.adr, ptr %i.ads, align 4, !tbaa !25
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !25
  %i.adv = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !25
  %i.adx = xor i32 %i.adw, %i.adu
  %i.ady = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.adx, ptr %i.ady, align 4, !tbaa !25
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !25
  %i.aeb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !25
  %i.aed = xor i32 %i.aec, %i.aea
  %i.aee = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.aed, ptr %i.aee, align 4, !tbaa !25
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !25
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !25
  %i.aej = xor i32 %i.aei, %i.aeg
  %i.aek = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.aej, ptr %i.aek, align 4, !tbaa !25
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !25
  %i.aen = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !25
  %i.aep = xor i32 %i.aeo, %i.aem
  %i.aeq = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.aep, ptr %i.aeq, align 4, !tbaa !25
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !25
  %i.aet = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !25
  %i.aev = xor i32 %i.aeu, %i.aes
  %i.aew = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.aev, ptr %i.aew, align 4, !tbaa !25
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !25
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !25
  %i.afb = xor i32 %i.afa, %i.aey
  %i.afc = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.afb, ptr %i.afc, align 4, !tbaa !25
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !25
  %i.aff = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !25
  %i.afh = xor i32 %i.afg, %i.afe
  %i.afi = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.afh, ptr %i.afi, align 4, !tbaa !25
  br label %.loopexit

.preheader286.preheader:                          ; preds = %bb.a
  %i.afj = add i64 %i.d, 64
  %i.afk = add i64 %i.c, 64
  %i.afl = add i64 %i.b, 64                       ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.afj, %i.b
  %rt.bound1 = icmp ugt i64 %i.afl, %i.d
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound01 = icmp ugt i64 %i.afk, %i.b
  %rt.bound12 = icmp ugt i64 %i.afl, %i.c
  %rt.conflict3 = and i1 %rt.bound01, %rt.bound12
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict3
  br i1 %rt.conflict.all, label %.preheader286.preheader.rtscalar, label %.preheader286.preheader.rtvec, !prof !77

.preheader284.preheader:                          ; preds = %bb.a
  %i.afm = load i32, ptr %0, align 4, !tbaa !25
  %i.afn = load i32, ptr %1, align 4, !tbaa !25
  %i.afo = and i32 %i.afn, %i.afm
  store i32 %i.afo, ptr %3, align 4, !tbaa !25
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !25
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !25
  %i.aft = and i32 %i.afs, %i.afq
  %i.afu = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.aft, ptr %i.afu, align 4, !tbaa !25
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !25
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !25
  %i.afz = and i32 %i.afy, %i.afw
  %i.aga = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.afz, ptr %i.aga, align 4, !tbaa !25
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !25
  %i.agd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !25
  %i.agf = and i32 %i.age, %i.agc
  %i.agg = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.agf, ptr %i.agg, align 4, !tbaa !25
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !25
  %i.agj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !25
  %i.agl = and i32 %i.agk, %i.agi
  %i.agm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.agl, ptr %i.agm, align 4, !tbaa !25
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !25
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !25
  %i.agr = and i32 %i.agq, %i.ago
  %i.ags = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.agr, ptr %i.ags, align 4, !tbaa !25
  %i.agt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !25
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !25
  %i.agx = and i32 %i.agw, %i.agu
  %i.agy = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.agx, ptr %i.agy, align 4, !tbaa !25
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !25
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !25
  %i.ahd = and i32 %i.ahc, %i.aha
  %i.ahe = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.ahd, ptr %i.ahe, align 4, !tbaa !25
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !25
  %i.ahh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !25
  %i.ahj = and i32 %i.ahi, %i.ahg
  %i.ahk = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.ahj, ptr %i.ahk, align 4, !tbaa !25
  %i.ahl = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !25
  %i.ahn = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !25
  %i.ahp = and i32 %i.aho, %i.ahm
  %i.ahq = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.ahp, ptr %i.ahq, align 4, !tbaa !25
  %i.ahr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !25
  %i.aht = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !25
  %i.ahv = and i32 %i.ahu, %i.ahs
  %i.ahw = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.ahv, ptr %i.ahw, align 4, !tbaa !25
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !25
  %i.ahz = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !25
  %i.aib = and i32 %i.aia, %i.ahy
  %i.aic = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.aib, ptr %i.aic, align 4, !tbaa !25
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !25
  %i.aif = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !25
  %i.aih = and i32 %i.aig, %i.aie
  %i.aii = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.aih, ptr %i.aii, align 4, !tbaa !25
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !25
  %i.ail = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !25
  %i.ain = and i32 %i.aim, %i.aik
  %i.aio = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.ain, ptr %i.aio, align 4, !tbaa !25
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !25
  %i.air = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !25
  %i.ait = and i32 %i.ais, %i.aiq
  %i.aiu = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.ait, ptr %i.aiu, align 4, !tbaa !25
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !25
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !25
  %i.aiz = and i32 %i.aiy, %i.aiw
  %i.aja = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.aiz, ptr %i.aja, align 4, !tbaa !25
  br label %.loopexit

.preheader282.preheader:                          ; preds = %bb.a
  %i.ajb = load i32, ptr %0, align 4, !tbaa !25
  store i32 %i.ajb, ptr %3, align 4, !tbaa !25
  %i.ajc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !25
  %i.aje = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ajd, ptr %i.aje, align 4, !tbaa !25
  %i.ajf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !25
  %i.ajh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ajg, ptr %i.ajh, align 4, !tbaa !25
  %i.aji = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !25
  %i.ajk = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ajj, ptr %i.ajk, align 4, !tbaa !25
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !25
  %i.ajn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.ajm, ptr %i.ajn, align 4, !tbaa !25
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !25
  %i.ajq = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ajp, ptr %i.ajq, align 4, !tbaa !25
  %i.ajr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !25
  %i.ajt = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.ajs, ptr %i.ajt, align 4, !tbaa !25
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !25
  %i.ajw = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.ajv, ptr %i.ajw, align 4, !tbaa !25
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !25
  %i.ajz = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.ajy, ptr %i.ajz, align 4, !tbaa !25
  %i.aka = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !25
  %i.akc = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.akb, ptr %i.akc, align 4, !tbaa !25
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !25
  %i.akf = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.ake, ptr %i.akf, align 4, !tbaa !25
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !25
  %i.aki = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.akh, ptr %i.aki, align 4, !tbaa !25
  %i.akj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !25
  %i.akl = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.akk, ptr %i.akl, align 4, !tbaa !25
  %i.akm = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !25
  %i.ako = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.akn, ptr %i.ako, align 4, !tbaa !25
  %i.akp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !25
  %i.akr = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.akq, ptr %i.akr, align 4, !tbaa !25
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !25
  %i.aku = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.akt, ptr %i.aku, align 4, !tbaa !25
  br label %.loopexit

.preheader280.preheader:                          ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 -1, i64 64, i1 false), !tbaa !25
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i64 64, i1 false), !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader320.preheader.rtvec, %.preheader320.preheader.rtscalar, %.preheader318.preheader.rtvec, %.preheader318.preheader.rtscalar, %.preheader316.preheader.rtvec, %.preheader316.preheader.rtscalar, %.preheader314.preheader.rtvec, %.preheader314.preheader.rtscalar, %.preheader312.preheader.rtvec, %.preheader312.preheader.rtscalar, %.preheader310.preheader.rtvec, %.preheader310.preheader.rtscalar, %.preheader308.preheader.rtvec, %.preheader308.preheader.rtscalar, %.preheader306.preheader.rtvec, %.preheader306.preheader.rtscalar, %.preheader304.preheader.rtvec, %.preheader304.preheader.rtscalar, %.preheader296.preheader.rtvec, %.preheader296.preheader.rtscalar, %.preheader292.preheader.rtvec, %.preheader292.preheader.rtscalar, %.preheader286.preheader.rtvec, %.preheader286.preheader.rtscalar, %.preheader302.preheader, %.preheader300.preheader, %.preheader298.preheader, %.preheader294.preheader, %.preheader290.preheader, %.preheader288.preheader, %.preheader284.preheader, %.preheader282.preheader, %.preheader280.preheader, %.preheader.preheader, %bb.a
  ret void

.preheader286.preheader.rtvec:                    ; preds = %.preheader286.preheader
  %i.akv = load <4 x i32>, ptr %0, align 4, !tbaa !25
  %i.akw = load <4 x i32>, ptr %1, align 4, !tbaa !25
  %i.akx = and <4 x i32> %i.akw, %i.akv
  %i.aky = xor <4 x i32> %i.akx, splat (i32 -1)
  store <4 x i32> %i.aky, ptr %3, align 4, !tbaa !25
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ala = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.alb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.alc = load <4 x i32>, ptr %i.akz, align 4, !tbaa !25
  %i.ald = load <4 x i32>, ptr %i.ala, align 4, !tbaa !25
end_hunk_1
begin_hunk_2_@Cut_CellTruthElem:bb.a
  %i.dzx = xor i32 %i.dzw, -1
  %i.dzy = and i32 %i.dzr, %i.dzx
  %i.dzz = and i32 %i.dzv, %i.dzt
  %i.eaa = or i32 %i.dzy, %i.dzz
  %i.eab = xor i32 %i.eaa, -1
  %i.eac = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.eab, ptr %i.eac, align 4, !tbaa !25
  %i.ead = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eae = load i32, ptr %i.ead, align 4, !tbaa !25
  %i.eaf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eag = load i32, ptr %i.eaf, align 4, !tbaa !25 ; 2 uses
  %i.eah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eai = load i32, ptr %i.eah, align 4, !tbaa !25 ; 2 uses
  %i.eaj = or i32 %i.eai, %i.eag
  %i.eak = xor i32 %i.eaj, -1
  %i.eal = and i32 %i.eae, %i.eak
  %i.eam = and i32 %i.eai, %i.eag
  %i.ean = or i32 %i.eal, %i.eam
  %i.eao = xor i32 %i.ean, -1
  %i.eap = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.eao, ptr %i.eap, align 4, !tbaa !25
  %i.eaq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ear = load i32, ptr %i.eaq, align 4, !tbaa !25
  %i.eas = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eat = load i32, ptr %i.eas, align 4, !tbaa !25 ; 2 uses
  %i.eau = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.eav = load i32, ptr %i.eau, align 4, !tbaa !25 ; 2 uses
  %i.eaw = or i32 %i.eav, %i.eat
  %i.eax = xor i32 %i.eaw, -1
  %i.eay = and i32 %i.ear, %i.eax
  %i.eaz = and i32 %i.eav, %i.eat
  %i.eba = or i32 %i.eay, %i.eaz
  %i.ebb = xor i32 %i.eba, -1
  %i.ebc = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ebb, ptr %i.ebc, align 4, !tbaa !25
  %i.ebd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ebe = load i32, ptr %i.ebd, align 4, !tbaa !25
  %i.ebf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ebg = load i32, ptr %i.ebf, align 4, !tbaa !25 ; 2 uses
  %i.ebh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ebi = load i32, ptr %i.ebh, align 4, !tbaa !25 ; 2 uses
  %i.ebj = or i32 %i.ebi, %i.ebg
  %i.ebk = xor i32 %i.ebj, -1
  %i.ebl = and i32 %i.ebe, %i.ebk
  %i.ebm = and i32 %i.ebi, %i.ebg
  %i.ebn = or i32 %i.ebl, %i.ebm
  %i.ebo = xor i32 %i.ebn, -1
  %i.ebp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.ebo, ptr %i.ebp, align 4, !tbaa !25
  %i.ebq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ebr = load i32, ptr %i.ebq, align 4, !tbaa !25
  %i.ebs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ebt = load i32, ptr %i.ebs, align 4, !tbaa !25 ; 2 uses
  %i.ebu = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ebv = load i32, ptr %i.ebu, align 4, !tbaa !25 ; 2 uses
  %i.ebw = or i32 %i.ebv, %i.ebt
  %i.ebx = xor i32 %i.ebw, -1
  %i.eby = and i32 %i.ebr, %i.ebx
  %i.ebz = and i32 %i.ebv, %i.ebt
  %i.eca = or i32 %i.eby, %i.ebz
  %i.ecb = xor i32 %i.eca, -1
  %i.ecc = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.ecb, ptr %i.ecc, align 4, !tbaa !25
  %i.ecd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ece = load i32, ptr %i.ecd, align 4, !tbaa !25
  %i.ecf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ecg = load i32, ptr %i.ecf, align 4, !tbaa !25 ; 2 uses
  %i.ech = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eci = load i32, ptr %i.ech, align 4, !tbaa !25 ; 2 uses
  %i.ecj = or i32 %i.eci, %i.ecg
  %i.eck = xor i32 %i.ecj, -1
  %i.ecl = and i32 %i.ece, %i.eck
  %i.ecm = and i32 %i.eci, %i.ecg
  %i.ecn = or i32 %i.ecl, %i.ecm
  %i.eco = xor i32 %i.ecn, -1
  %i.ecp = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.eco, ptr %i.ecp, align 4, !tbaa !25
  %i.ecq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ecr = load i32, ptr %i.ecq, align 4, !tbaa !25
  %i.ecs = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ect = load i32, ptr %i.ecs, align 4, !tbaa !25 ; 2 uses
  %i.ecu = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ecv = load i32, ptr %i.ecu, align 4, !tbaa !25 ; 2 uses
  %i.ecw = or i32 %i.ecv, %i.ect
  %i.ecx = xor i32 %i.ecw, -1
  %i.ecy = and i32 %i.ecr, %i.ecx
  %i.ecz = and i32 %i.ecv, %i.ect
  %i.eda = or i32 %i.ecy, %i.ecz
  %i.edb = xor i32 %i.eda, -1
  %i.edc = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.edb, ptr %i.edc, align 4, !tbaa !25
  %i.edd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ede = load i32, ptr %i.edd, align 4, !tbaa !25
  %i.edf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.edg = load i32, ptr %i.edf, align 4, !tbaa !25 ; 2 uses
  %i.edh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.edi = load i32, ptr %i.edh, align 4, !tbaa !25 ; 2 uses
  %i.edj = or i32 %i.edi, %i.edg
  %i.edk = xor i32 %i.edj, -1
  %i.edl = and i32 %i.ede, %i.edk
  %i.edm = and i32 %i.edi, %i.edg
  %i.edn = or i32 %i.edl, %i.edm
  %i.edo = xor i32 %i.edn, -1
  %i.edp = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.edo, ptr %i.edp, align 4, !tbaa !25
  %i.edq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.edr = load i32, ptr %i.edq, align 4, !tbaa !25
  %i.eds = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.edt = load i32, ptr %i.eds, align 4, !tbaa !25 ; 2 uses
  %i.edu = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.edv = load i32, ptr %i.edu, align 4, !tbaa !25 ; 2 uses
  %i.edw = or i32 %i.edv, %i.edt
  %i.edx = xor i32 %i.edw, -1
  %i.edy = and i32 %i.edr, %i.edx
  %i.edz = and i32 %i.edv, %i.edt
  %i.eea = or i32 %i.edy, %i.edz
  %i.eeb = xor i32 %i.eea, -1
  %i.eec = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.eeb, ptr %i.eec, align 4, !tbaa !25
  %i.eed = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eee = load i32, ptr %i.eed, align 4, !tbaa !25
  %i.eef = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eeg = load i32, ptr %i.eef, align 4, !tbaa !25 ; 2 uses
  %i.eeh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eei = load i32, ptr %i.eeh, align 4, !tbaa !25 ; 2 uses
  %i.eej = or i32 %i.eei, %i.eeg
  %i.eek = xor i32 %i.eej, -1
  %i.eel = and i32 %i.eee, %i.eek
  %i.eem = and i32 %i.eei, %i.eeg
  %i.een = or i32 %i.eel, %i.eem
  %i.eeo = xor i32 %i.een, -1
  %i.eep = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.eeo, ptr %i.eep, align 4, !tbaa !25
  %i.eeq = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.eer = load i32, ptr %i.eeq, align 4, !tbaa !25
  %i.ees = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.eet = load i32, ptr %i.ees, align 4, !tbaa !25 ; 2 uses
  %i.eeu = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.eev = load i32, ptr %i.eeu, align 4, !tbaa !25 ; 2 uses
  %i.eew = or i32 %i.eev, %i.eet
  %i.eex = xor i32 %i.eew, -1
  %i.eey = and i32 %i.eer, %i.eex
  %i.eez = and i32 %i.eev, %i.eet
  %i.efa = or i32 %i.eey, %i.eez
  %i.efb = xor i32 %i.efa, -1
  %i.efc = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.efb, ptr %i.efc, align 4, !tbaa !25
  %i.efd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.efe = load i32, ptr %i.efd, align 4, !tbaa !25
  %i.eff = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.efg = load i32, ptr %i.eff, align 4, !tbaa !25 ; 2 uses
  %i.efh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.efi = load i32, ptr %i.efh, align 4, !tbaa !25 ; 2 uses
  %i.efj = or i32 %i.efi, %i.efg
  %i.efk = xor i32 %i.efj, -1
  %i.efl = and i32 %i.efe, %i.efk
  %i.efm = and i32 %i.efi, %i.efg
  %i.efn = or i32 %i.efl, %i.efm
  %i.efo = xor i32 %i.efn, -1
  %i.efp = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.efo, ptr %i.efp, align 4, !tbaa !25
  %i.efq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.efr = load i32, ptr %i.efq, align 4, !tbaa !25
  %i.efs = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.eft = load i32, ptr %i.efs, align 4, !tbaa !25 ; 2 uses
  %i.efu = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.efv = load i32, ptr %i.efu, align 4, !tbaa !25 ; 2 uses
  %i.efw = or i32 %i.efv, %i.eft
  %i.efx = xor i32 %i.efw, -1
  %i.efy = and i32 %i.efr, %i.efx
  %i.efz = and i32 %i.efv, %i.eft
  %i.ega = or i32 %i.efy, %i.efz
  %i.egb = xor i32 %i.ega, -1
  %i.egc = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.egb, ptr %i.egc, align 4, !tbaa !25
  br label %.loopexit
}

declare i32 @Extra_TruthSemiCanonicize(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Extra_MmFixedEntryRecycle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #7 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !25
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #16 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #16
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #16 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !82
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #17
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #16 ; 0 uses
  call void @free(ptr noundef %i.d) #16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !82, !noalias !83
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #16, !inline_history !80 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Cut_CellIsRunning() local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @s_pCMan, align 8, !tbaa !40
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define void @Cut_CellDumpToFile() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [10 x [5 x i32]], align 16        ; 54 uses
  %i.b = alloca [22 x [5 x i32]], align 16        ; 24 uses
  %i.c = load ptr, ptr @s_pCMan, align 8, !tbaa !40 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(440) %i.b, i8 0, i64 440, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #16
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !36
  %.neg87 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %.neg = sdiv i64 %i.h, -1000
  %.neg88 = add i64 %.neg, %.neg87
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg88, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.i = icmp eq ptr %i.c, null
  br i1 %i.i, label %bb.c, label %.preheader89

.preheader89:                                     ; preds = %Abc_Clock.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %Abc_Clock.exit
  %puts84 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.ah

bb.d:                                             ; preds = %.preheader89, %._crit_edge
  %indvars.iv = phi i64 [ 9, %.preheader89 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %.07496 = load ptr, ptr %i.k, align 8, !tbaa !32 ; 2 uses
  %.not8397 = icmp eq ptr %.07496, null
  br i1 %.not8397, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.a, i64 %indvars.iv ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.split92.us
  %.07498 = phi ptr [ %.07496, %.lr.ph ], [ %.074, %.split92.us ] ; 19 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.07498, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !21   ; 4 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.split.us.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp slt i32 %i.r, 10
  br i1 %i.t, label %.split.split.us.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp samesign ult i32 %i.r, 100
  br i1 %i.u, label %.split.split.split.us.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp samesign ult i32 %i.r, 1000
  %i.w = getelementptr inbounds nuw i8, ptr %.07498, i64 28 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.07498, i64 29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.07498, i64 30 ; 2 uses
  br i1 %i.v, label %.split.split.split.split.us.preheader, label %.split.split.split.split.preheader

.split.us.preheader:                              ; preds = %bb.e
  %i.z = load i32, ptr %i.l, align 4, !tbaa !25
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.l, align 4, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %.07498, i64 28
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !12
  %i.ad = sext i8 %i.ac to i64
  %i.ae = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %.07498, i64 29
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !12
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !25
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %.07498, i64 30
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !12
  %i.ap = sext i8 %i.ao to i64
  %i.aq = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !25
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %.07498, i64 31
  %i.au = load i8, ptr %i.at, align 1, !tbaa !12
  %i.av = sext i8 %i.au to i64
  %i.aw = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !25
  br label %.split92.us

.split.split.us.preheader:                        ; preds = %bb.f
  %i.az = load i32, ptr %i.p, align 4, !tbaa !25
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.p, align 4, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %.07498, i64 28
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !12
  %i.bd = sext i8 %i.bc to i64
  %i.be = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !25
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %.07498, i64 29
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !12
  %i.bk = sext i8 %i.bj to i64
  %i.bl = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !25
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %.07498, i64 30
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !12
  %i.br = sext i8 %i.bq to i64
  %i.bs = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !25
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %.07498, i64 31
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !12
  %i.by = sext i8 %i.bx to i64
  %i.bz = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !25
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !25
  br label %.split92.us

.split.split.split.us.preheader:                  ; preds = %bb.g
  %i.cd = load i32, ptr %i.o, align 4, !tbaa !25
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.o, align 4, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %.07498, i64 28
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !12
  %i.ch = sext i8 %i.cg to i64
  %i.ci = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !25
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %.07498, i64 29
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !12
  %i.co = sext i8 %i.cn to i64
  %i.cp = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !25
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !25
  %i.ct = getelementptr inbounds nuw i8, ptr %.07498, i64 30
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !12
  %i.cv = sext i8 %i.cu to i64
  %i.cw = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !25
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %.07498, i64 31
  %i.db = load i8, ptr %i.da, align 1, !tbaa !12
  %i.dc = sext i8 %i.db to i64
  %i.dd = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !25
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !25
  br label %.split92.us

.split.split.split.split.preheader:               ; preds = %bb.h
  %i.dh = load i32, ptr %i.m, align 4, !tbaa !25
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.m, align 4, !tbaa !25
  %i.dj = load i8, ptr %i.w, align 4, !tbaa !12
  %i.dk = sext i8 %i.dj to i64
  %i.dl = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !25
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !25
  %i.dp = load i8, ptr %i.x, align 1, !tbaa !12
  %i.dq = sext i8 %i.dp to i64
  %i.dr = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !25
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !25
  %i.dv = load i8, ptr %i.y, align 2, !tbaa !12
  %i.dw = sext i8 %i.dv to i64
  %i.dx = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !25
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !25
  %i.eb = getelementptr inbounds nuw i8, ptr %.07498, i64 31
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !12
  %i.ed = sext i8 %i.ec to i64
  %i.ee = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !25
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !25
  br label %.split92.us

.split.split.split.split.us.preheader:            ; preds = %bb.h
  %i.ei = load i32, ptr %i.n, align 4, !tbaa !25
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.n, align 4, !tbaa !25
  %i.ek = load i8, ptr %i.w, align 4, !tbaa !12
  %i.el = sext i8 %i.ek to i64
  %i.em = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !25
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !25
  %i.eq = load i8, ptr %i.x, align 1, !tbaa !12
  %i.er = sext i8 %i.eq to i64
  %i.es = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 12 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !25
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !25
  %i.ew = load i8, ptr %i.y, align 2, !tbaa !12
  %i.ex = sext i8 %i.ew to i64
  %i.ey = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 12 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !25
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !25
  %i.fc = getelementptr inbounds nuw i8, ptr %.07498, i64 31
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !12
  %i.fe = sext i8 %i.fd to i64
  %i.ff = getelementptr inbounds [20 x i8], ptr %i.b, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !25
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !25
  br label %.split92.us

.split92.us:                                      ; preds = %.split.split.split.split.preheader, %.split.split.split.split.us.preheader, %.split.split.split.us.preheader, %.split.split.us.preheader, %.split.us.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %.07498, i64 8
  %.074 = load ptr, ptr %i.fj, align 8, !tbaa !32 ; 2 uses
  %.not83 = icmp eq ptr %.074, null
  br i1 %.not83, label %._crit_edge, label %bb.e, !llvm.loop !84

._crit_edge:                                      ; preds = %.split92.us, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not141 = icmp eq i64 %indvars.iv, 0
  br i1 %.not141, label %bb.i, label %bb.d, !llvm.loop !85

bb.i:                                             ; preds = %._crit_edge
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 5176
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !41
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 5180
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !42
  %i.fo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.fl, i32 noundef %i.fn) ; 0 uses
  %i.fp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 0) ; 0 uses
  %i.fq = load i32, ptr %i.a, align 16, !tbaa !25
  %i.fr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.fq) ; 0 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !25
  %i.fu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ft) ; 0 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !25
  %i.fx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.fw) ; 0 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !25
  %i.ga = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.fz) ; 0 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gc = load i32, ptr %i.gb, align 16, !tbaa !25
  %i.gd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gc) ; 0 uses
  %putchar82 = call i32 @putchar(i32 10)          ; 0 uses
  %i.ge = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 1) ; 0 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !25
  %i.gh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gg) ; 0 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !25
  %i.gk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gj) ; 0 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !25
  %i.gn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gm) ; 0 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gp = load i32, ptr %i.go, align 16, !tbaa !25
  %i.gq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gp) ; 0 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !25
  %i.gt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gs) ; 0 uses
  %putchar82.1 = call i32 @putchar(i32 10)        ; 0 uses
  %i.gu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 2) ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !25
  %i.gx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gw) ; 0 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !25
  %i.ha = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gz) ; 0 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.hc = load i32, ptr %i.hb, align 16, !tbaa !25
  %i.hd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.hc) ; 0 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !25
  %i.hg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.hf) ; 0 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !25
  %i.hj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.hi) ; 0 uses
  %putchar82.2 = call i32 @putchar(i32 10)        ; 0 uses
  %i.hk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 3) ; 0 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !25
  %i.hn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.hm) ; 0 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.hp = load i32, ptr %i.ho, align 16, !tbaa !25
  %i.hq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.hp) ; 0 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !25
  %i.ht = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.hs) ; 0 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !25
  %i.hw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.hv) ; 0 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !25
  %i.hz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.hy) ; 0 uses
  %putchar82.3 = call i32 @putchar(i32 10)        ; 0 uses
  %i.ia = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 4) ; 0 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ic = load i32, ptr %i.ib, align 16, !tbaa !25
  %i.id = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ic) ; 0 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !25
  %i.ig = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.if) ; 0 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !25
  %i.ij = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ii) ; 0 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !25
  %i.im = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.il) ; 0 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.io = load i32, ptr %i.in, align 16, !tbaa !25
  %i.ip = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.io) ; 0 uses
  %putchar82.4 = call i32 @putchar(i32 10)        ; 0 uses
  %i.iq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 5) ; 0 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !25
  %i.it = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.is) ; 0 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !25
  %i.iw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.iv) ; 0 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !25
  %i.iz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.iy) ; 0 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.jb = load i32, ptr %i.ja, align 16, !tbaa !25
  %i.jc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.jb) ; 0 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !25
  %i.jf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.je) ; 0 uses
  %putchar82.5 = call i32 @putchar(i32 10)        ; 0 uses
  %i.jg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 6) ; 0 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !25
  %i.jj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ji) ; 0 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !25
  %i.jm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.jl) ; 0 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.jo = load i32, ptr %i.jn, align 16, !tbaa !25
  %i.jp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.jo) ; 0 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !25
  %i.js = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.jr) ; 0 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !25
  %i.jv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ju) ; 0 uses
  %putchar82.6 = call i32 @putchar(i32 10)        ; 0 uses
  %i.jw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 7) ; 0 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !25
  %i.jz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.jy) ; 0 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.kb = load i32, ptr %i.ka, align 16, !tbaa !25
  %i.kc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.kb) ; 0 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !25
  %i.kf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ke) ; 0 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !25
  %i.ki = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.kh) ; 0 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !25
  %i.kl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.kk) ; 0 uses
  %putchar82.7 = call i32 @putchar(i32 10)        ; 0 uses
  %i.km = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 8) ; 0 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ko = load i32, ptr %i.kn, align 16, !tbaa !25
  %i.kp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ko) ; 0 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !25
  %i.ks = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.kr) ; 0 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !25
  %i.kv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ku) ; 0 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !25
  %i.ky = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.kx) ; 0 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.la = load i32, ptr %i.kz, align 16, !tbaa !25
  %i.lb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.la) ; 0 uses
  %putchar82.8 = call i32 @putchar(i32 10)        ; 0 uses
  %i.lc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 9) ; 0 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !25
  %i.lf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.le) ; 0 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !25
  %i.li = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.lh) ; 0 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !25
  %i.ll = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.lk) ; 0 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ln = load i32, ptr %i.lm, align 16, !tbaa !25
  %i.lo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ln) ; 0 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !25
  %i.lr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.lq) ; 0 uses
  %putchar82.9 = call i32 @putchar(i32 10)        ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.j
  %indvars.iv132 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next133, %bb.j ] ; 4 uses
  %i.ls = trunc nuw nsw i64 %indvars.iv132 to i32
  %i.lt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.ls) ; 0 uses
  %i.lu = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %indvars.iv132 ; 5 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !25
  %i.lw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.lv) ; 0 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !25
  %i.lz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ly) ; 0 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !25
  %i.mc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.mb) ; 0 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  %i.me = load i32, ptr %i.md, align 4, !tbaa !25
  %i.mf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.me) ; 0 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !25
  %i.mi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.mh) ; 0 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr @s_NP3Names, i64 %indvars.iv132
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !89
  %i.ml = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %i.mk) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next133, 22
  br i1 %exitcond.not, label %bb.k, label %bb.j, !llvm.loop !86

bb.k:                                             ; preds = %bb.j
  %i.mm = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.24) ; 32 uses
  %i.mn = icmp eq ptr %i.mm, null
  br i1 %i.mn, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %.175104 = load ptr, ptr %i.j, align 8, !tbaa !32 ; 2 uses
  %.not105 = icmp eq ptr %.175104, null
  br i1 %.not105, label %._crit_edge110, label %.lr.ph109

bb.l:                                             ; preds = %bb.k
  %puts81 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.ah

.lr.ph109:                                        ; preds = %.preheader, %bb.n
  %.175107 = phi ptr [ %.175, %bb.n ], [ %.175104, %.preheader ] ; 3 uses
  %.1106 = phi i32 [ %.2, %bb.n ], [ 0, %.preheader ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.175107, i64 24
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !21
  %i.mq = icmp sgt i32 %i.mp, 0
  br i1 %i.mq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph109
  %i.mr = getelementptr inbounds nuw i8, ptr %.175107, i64 84
  call void @Extra_PrintHexadecimal(ptr noundef nonnull %i.mm, ptr noundef nonnull %i.mr, i32 noundef 5) #16
  %fputc80 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.ms = add nsw i32 %.1106, 1
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph109, %bb.m
  %.2 = phi i32 [ %i.ms, %bb.m ], [ %.1106, %.lr.ph109 ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.175107, i64 8
  %.175 = load ptr, ptr %i.mt, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %.175, null
  br i1 %.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !87

._crit_edge110:                                   ; preds = %bb.n, %.preheader
  %.1.lcssa = phi i32 [ 0, %.preheader ], [ %.2, %bb.n ] ; 2 uses
  %fputc = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.175104.1 = load ptr, ptr %i.mu, align 8, !tbaa !32 ; 2 uses
  %.not105.1 = icmp eq ptr %.175104.1, null
  br i1 %.not105.1, label %._crit_edge110.1, label %.lr.ph109.1

.lr.ph109.1:                                      ; preds = %._crit_edge110, %bb.p
  %.175107.1 = phi ptr [ %.175.1, %bb.p ], [ %.175104.1, %._crit_edge110 ] ; 3 uses
  %.1106.1 = phi i32 [ %.2.1, %bb.p ], [ %.1.lcssa, %._crit_edge110 ] ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.175107.1, i64 24
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !21
  %i.mx = icmp sgt i32 %i.mw, 0
  br i1 %i.mx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph109.1
  %i.my = getelementptr inbounds nuw i8, ptr %.175107.1, i64 84
  call void @Extra_PrintHexadecimal(ptr noundef nonnull %i.mm, ptr noundef nonnull %i.my, i32 noundef 5) #16
  %fputc80.1 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.mz = add nsw i32 %.1106.1, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph109.1
  %.2.1 = phi i32 [ %i.mz, %bb.o ], [ %.1106.1, %.lr.ph109.1 ] ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.175107.1, i64 8
  %.175.1 = load ptr, ptr %i.na, align 8, !tbaa !32 ; 2 uses
  %.not.1 = icmp eq ptr %.175.1, null
  br i1 %.not.1, label %._crit_edge110.1, label %.lr.ph109.1, !llvm.loop !87

._crit_edge110.1:                                 ; preds = %bb.p, %._crit_edge110
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %._crit_edge110 ], [ %.2.1, %bb.p ] ; 2 uses
  %fputc.1 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.175104.2 = load ptr, ptr %i.nb, align 8, !tbaa !32 ; 2 uses
  %.not105.2 = icmp eq ptr %.175104.2, null
  br i1 %.not105.2, label %._crit_edge110.2, label %.lr.ph109.2

.lr.ph109.2:                                      ; preds = %._crit_edge110.1, %bb.r
  %.175107.2 = phi ptr [ %.175.2, %bb.r ], [ %.175104.2, %._crit_edge110.1 ] ; 3 uses
  %.1106.2 = phi i32 [ %.2.2, %bb.r ], [ %.1.lcssa.1, %._crit_edge110.1 ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.175107.2, i64 24
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !21
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph109.2
  %i.nf = getelementptr inbounds nuw i8, ptr %.175107.2, i64 84
  call void @Extra_PrintHexadecimal(ptr noundef nonnull %i.mm, ptr noundef nonnull %i.nf, i32 noundef 5) #16
  %fputc80.2 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.ng = add nsw i32 %.1106.2, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph109.2
  %.2.2 = phi i32 [ %i.ng, %bb.q ], [ %.1106.2, %.lr.ph109.2 ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.175107.2, i64 8
  %.175.2 = load ptr, ptr %i.nh, align 8, !tbaa !32 ; 2 uses
  %.not.2 = icmp eq ptr %.175.2, null
  br i1 %.not.2, label %._crit_edge110.2, label %.lr.ph109.2, !llvm.loop !87

._crit_edge110.2:                                 ; preds = %bb.r, %._crit_edge110.1
  %.1.lcssa.2 = phi i32 [ %.1.lcssa.1, %._crit_edge110.1 ], [ %.2.2, %bb.r ] ; 2 uses
  %fputc.2 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.175104.3 = load ptr, ptr %i.ni, align 8, !tbaa !32 ; 2 uses
  %.not105.3 = icmp eq ptr %.175104.3, null
  br i1 %.not105.3, label %._crit_edge110.3, label %.lr.ph109.3

.lr.ph109.3:                                      ; preds = %._crit_edge110.2, %bb.t
  %.175107.3 = phi ptr [ %.175.3, %bb.t ], [ %.175104.3, %._crit_edge110.2 ] ; 3 uses
  %.1106.3 = phi i32 [ %.2.3, %bb.t ], [ %.1.lcssa.2, %._crit_edge110.2 ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.175107.3, i64 24
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !21
  %i.nl = icmp sgt i32 %i.nk, 0
  br i1 %i.nl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph109.3
  %i.nm = getelementptr inbounds nuw i8, ptr %.175107.3, i64 84
  call void @Extra_PrintHexadecimal(ptr noundef nonnull %i.mm, ptr noundef nonnull %i.nm, i32 noundef 5) #16
  %fputc80.3 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.nn = add nsw i32 %.1106.3, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph109.3
  %.2.3 = phi i32 [ %i.nn, %bb.s ], [ %.1106.3, %.lr.ph109.3 ] ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.175107.3, i64 8
  %.175.3 = load ptr, ptr %i.no, align 8, !tbaa !32 ; 2 uses
  %.not.3 = icmp eq ptr %.175.3, null
  br i1 %.not.3, label %._crit_edge110.3, label %.lr.ph109.3, !llvm.loop !87

._crit_edge110.3:                                 ; preds = %bb.t, %._crit_edge110.2
  %.1.lcssa.3 = phi i32 [ %.1.lcssa.2, %._crit_edge110.2 ], [ %.2.3, %bb.t ] ; 2 uses
  %fputc.3 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.175104.4 = load ptr, ptr %i.np, align 8, !tbaa !32 ; 2 uses
  %.not105.4 = icmp eq ptr %.175104.4, null
  br i1 %.not105.4, label %._crit_edge110.4, label %.lr.ph109.4

.lr.ph109.4:                                      ; preds = %._crit_edge110.3, %bb.v
  %.175107.4 = phi ptr [ %.175.4, %bb.v ], [ %.175104.4, %._crit_edge110.3 ] ; 3 uses
  %.1106.4 = phi i32 [ %.2.4, %bb.v ], [ %.1.lcssa.3, %._crit_edge110.3 ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.175107.4, i64 24
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !21
  %i.ns = icmp sgt i32 %i.nr, 0
  br i1 %i.ns, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph109.4
  %i.nt = getelementptr inbounds nuw i8, ptr %.175107.4, i64 84
  call void @Extra_PrintHexadecimal(ptr noundef nonnull %i.mm, ptr noundef nonnull %i.nt, i32 noundef 5) #16
  %fputc80.4 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.nu = add nsw i32 %.1106.4, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph109.4
  %.2.4 = phi i32 [ %i.nu, %bb.u ], [ %.1106.4, %.lr.ph109.4 ] ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.175107.4, i64 8
  %.175.4 = load ptr, ptr %i.nv, align 8, !tbaa !32 ; 2 uses
  %.not.4 = icmp eq ptr %.175.4, null
  br i1 %.not.4, label %._crit_edge110.4, label %.lr.ph109.4, !llvm.loop !87

._crit_edge110.4:                                 ; preds = %bb.v, %._crit_edge110.3
  %.1.lcssa.4 = phi i32 [ %.1.lcssa.3, %._crit_edge110.3 ], [ %.2.4, %bb.v ] ; 2 uses
  %fputc.4 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.175104.5 = load ptr, ptr %i.nw, align 8, !tbaa !32 ; 2 uses
  %.not105.5 = icmp eq ptr %.175104.5, null
  br i1 %.not105.5, label %._crit_edge110.5, label %.lr.ph109.5

.lr.ph109.5:                                      ; preds = %._crit_edge110.4, %bb.x
  %.175107.5 = phi ptr [ %.175.5, %bb.x ], [ %.175104.5, %._crit_edge110.4 ] ; 3 uses
  %.1106.5 = phi i32 [ %.2.5, %bb.x ], [ %.1.lcssa.4, %._crit_edge110.4 ] ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.175107.5, i64 24
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !21
  %i.nz = icmp sgt i32 %i.ny, 0
  br i1 %i.nz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph109.5
  %i.oa = getelementptr inbounds nuw i8, ptr %.175107.5, i64 84
  call void @Extra_PrintHexadecimal(ptr noundef nonnull %i.mm, ptr noundef nonnull %i.oa, i32 noundef 5) #16
  %fputc80.5 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.ob = add nsw i32 %.1106.5, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph109.5
  %.2.5 = phi i32 [ %i.ob, %bb.w ], [ %.1106.5, %.lr.ph109.5 ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.175107.5, i64 8
  %.175.5 = load ptr, ptr %i.oc, align 8, !tbaa !32 ; 2 uses
  %.not.5 = icmp eq ptr %.175.5, null
  br i1 %.not.5, label %._crit_edge110.5, label %.lr.ph109.5, !llvm.loop !87

._crit_edge110.5:                                 ; preds = %bb.x, %._crit_edge110.4
  %.1.lcssa.5 = phi i32 [ %.1.lcssa.4, %._crit_edge110.4 ], [ %.2.5, %bb.x ] ; 2 uses
  %fputc.5 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.175104.6 = load ptr, ptr %i.od, align 8, !tbaa !32 ; 2 uses
  %.not105.6 = icmp eq ptr %.175104.6, null
  br i1 %.not105.6, label %._crit_edge110.6, label %.lr.ph109.6

.lr.ph109.6:                                      ; preds = %._crit_edge110.5, %bb.z
  %.175107.6 = phi ptr [ %.175.6, %bb.z ], [ %.175104.6, %._crit_edge110.5 ] ; 3 uses
  %.1106.6 = phi i32 [ %.2.6, %bb.z ], [ %.1.lcssa.5, %._crit_edge110.5 ] ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.175107.6, i64 24
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !21
  %i.og = icmp sgt i32 %i.of, 0
  br i1 %i.og, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph109.6
  %i.oh = getelementptr inbounds nuw i8, ptr %.175107.6, i64 84
  call void @Extra_PrintHexadecimal(ptr noundef nonnull %i.mm, ptr noundef nonnull %i.oh, i32 noundef 6) #16
  %fputc80.6 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.oi = add nsw i32 %.1106.6, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph109.6
  %.2.6 = phi i32 [ %i.oi, %bb.y ], [ %.1106.6, %.lr.ph109.6 ] ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.175107.6, i64 8
  %.175.6 = load ptr, ptr %i.oj, align 8, !tbaa !32 ; 2 uses
  %.not.6 = icmp eq ptr %.175.6, null
  br i1 %.not.6, label %._crit_edge110.6, label %.lr.ph109.6, !llvm.loop !87

._crit_edge110.6:                                 ; preds = %bb.z, %._crit_edge110.5
  %.1.lcssa.6 = phi i32 [ %.1.lcssa.5, %._crit_edge110.5 ], [ %.2.6, %bb.z ] ; 2 uses
  %fputc.6 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.175104.7 = load ptr, ptr %i.ok, align 8, !tbaa !32 ; 2 uses
  %.not105.7 = icmp eq ptr %.175104.7, null
  br i1 %.not105.7, label %._crit_edge110.7, label %.lr.ph109.7

.lr.ph109.7:                                      ; preds = %._crit_edge110.6, %bb.ab
  %.175107.7 = phi ptr [ %.175.7, %bb.ab ], [ %.175104.7, %._crit_edge110.6 ] ; 3 uses
  %.1106.7 = phi i32 [ %.2.7, %bb.ab ], [ %.1.lcssa.6, %._crit_edge110.6 ] ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.175107.7, i64 24
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !21
  %i.on = icmp sgt i32 %i.om, 0
  br i1 %i.on, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph109.7
  %i.oo = getelementptr inbounds nuw i8, ptr %.175107.7, i64 84
  call void @Extra_PrintHexadecimal(ptr noundef nonnull %i.mm, ptr noundef nonnull %i.oo, i32 noundef 7) #16
  %fputc80.7 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.op = add nsw i32 %.1106.7, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph109.7
  %.2.7 = phi i32 [ %i.op, %bb.aa ], [ %.1106.7, %.lr.ph109.7 ] ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.175107.7, i64 8
  %.175.7 = load ptr, ptr %i.oq, align 8, !tbaa !32 ; 2 uses
  %.not.7 = icmp eq ptr %.175.7, null
  br i1 %.not.7, label %._crit_edge110.7, label %.lr.ph109.7, !llvm.loop !87

._crit_edge110.7:                                 ; preds = %bb.ab, %._crit_edge110.6
  %.1.lcssa.7 = phi i32 [ %.1.lcssa.6, %._crit_edge110.6 ], [ %.2.7, %bb.ab ] ; 2 uses
  %fputc.7 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.175104.8 = load ptr, ptr %i.or, align 8, !tbaa !32 ; 2 uses
  %.not105.8 = icmp eq ptr %.175104.8, null
  br i1 %.not105.8, label %._crit_edge110.8, label %.lr.ph109.8

.lr.ph109.8:                                      ; preds = %._crit_edge110.7, %bb.ad
  %.175107.8 = phi ptr [ %.175.8, %bb.ad ], [ %.175104.8, %._crit_edge110.7 ] ; 3 uses
  %.1106.8 = phi i32 [ %.2.8, %bb.ad ], [ %.1.lcssa.7, %._crit_edge110.7 ] ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.175107.8, i64 24
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !21
  %i.ou = icmp sgt i32 %i.ot, 0
  br i1 %i.ou, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph109.8
  %i.ov = getelementptr inbounds nuw i8, ptr %.175107.8, i64 84
  call void @Extra_PrintHexadecimal(ptr noundef nonnull %i.mm, ptr noundef nonnull %i.ov, i32 noundef 8) #16
  %fputc80.8 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.ow = add nsw i32 %.1106.8, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph109.8
  %.2.8 = phi i32 [ %i.ow, %bb.ac ], [ %.1106.8, %.lr.ph109.8 ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.175107.8, i64 8
  %.175.8 = load ptr, ptr %i.ox, align 8, !tbaa !32 ; 2 uses
  %.not.8 = icmp eq ptr %.175.8, null
  br i1 %.not.8, label %._crit_edge110.8, label %.lr.ph109.8, !llvm.loop !87

._crit_edge110.8:                                 ; preds = %bb.ad, %._crit_edge110.7
  %.1.lcssa.8 = phi i32 [ %.1.lcssa.7, %._crit_edge110.7 ], [ %.2.8, %bb.ad ] ; 2 uses
  %fputc.8 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.175104.9 = load ptr, ptr %i.oy, align 8, !tbaa !32 ; 2 uses
  %.not105.9 = icmp eq ptr %.175104.9, null
  br i1 %.not105.9, label %._crit_edge110.9, label %.lr.ph109.9

.lr.ph109.9:                                      ; preds = %._crit_edge110.8, %bb.af
  %.175107.9 = phi ptr [ %.175.9, %bb.af ], [ %.175104.9, %._crit_edge110.8 ] ; 3 uses
  %.1106.9 = phi i32 [ %.2.9, %bb.af ], [ %.1.lcssa.8, %._crit_edge110.8 ] ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.175107.9, i64 24
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !21
  %i.pb = icmp sgt i32 %i.pa, 0
  br i1 %i.pb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph109.9
  %i.pc = getelementptr inbounds nuw i8, ptr %.175107.9, i64 84
  call void @Extra_PrintHexadecimal(ptr noundef nonnull %i.mm, ptr noundef nonnull %i.pc, i32 noundef 9) #16
  %fputc80.9 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.pd = add nsw i32 %.1106.9, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph109.9
  %.2.9 = phi i32 [ %i.pd, %bb.ae ], [ %.1106.9, %.lr.ph109.9 ] ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.175107.9, i64 8
  %.175.9 = load ptr, ptr %i.pe, align 8, !tbaa !32 ; 2 uses
  %.not.9 = icmp eq ptr %.175.9, null
  br i1 %.not.9, label %._crit_edge110.9, label %.lr.ph109.9, !llvm.loop !87

._crit_edge110.9:                                 ; preds = %bb.af, %._crit_edge110.8
  %.1.lcssa.9 = phi i32 [ %.1.lcssa.8, %._crit_edge110.8 ], [ %.2.9, %bb.af ]
  %fputc.9 = call i32 @fputc(i32 10, ptr nonnull %i.mm) ; 0 uses
  %i.pf = call i32 @fclose(ptr noundef nonnull %i.mm) ; 0 uses
  %i.pg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %.1.lcssa.9, ptr noundef nonnull @.str.17) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  %i.ph = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #16
  %i.pi = icmp slt i32 %i.ph, 0
  br i1 %i.pi, label %Abc_Clock.exit86, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge110.9
  %i.pj = load i64, ptr %0, align 8, !tbaa !36
  %i.pk = mul nsw i64 %i.pj, 1000000
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !37
  %i.pn = sdiv i64 %i.pm, 1000
  %i.po = add nsw i64 %i.pn, %i.pk
  br label %Abc_Clock.exit86

Abc_Clock.exit86:                                 ; preds = %._crit_edge110.9, %bb.ag
  %.0.i85 = phi i64 [ %i.po, %bb.ag ], [ -1, %._crit_edge110.9 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.pp = add i64 %.0.i85, %.0.i.neg
  %i.pq = sitofp i64 %i.pp to double
  %i.pr = fdiv double %i.pq, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, double noundef %i.pr)
  br label %bb.ah

bb.ah:                                            ; preds = %Abc_Clock.exit86, %bb.l, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare void @Extra_PrintHexadecimal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cut_CellTruthLookup(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.Cut_Cell_t_, align 8        ; 9 uses
  %i.b = load ptr, ptr @s_pCMan, align 8, !tbaa !40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 152, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.e = and i32 %1, 15
  store i32 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 4 uses
  %i.g = icmp slt i32 %1, 6
  %i.h = add nsw i32 %1, -5
  %i.i = shl nuw i32 1, %i.h
  %spec.select.i = select i1 %i.g, i32 1, i32 %i.i ; 2 uses
  %i.j = icmp sgt i32 %spec.select.i, 0
  br i1 %i.j, label %select.unfold.preheader.i, label %Extra_TruthCopy.exit

select.unfold.preheader.i:                        ; preds = %bb.c
  %i.k = zext nneg i32 %spec.select.i to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.f, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.l, i1 false), !tbaa !25
  br label %Extra_TruthCopy.exit

Extra_TruthCopy.exit:                             ; preds = %select.unfold.preheader.i, %bb.c
  call fastcc void @Cut_CellSuppMin(ptr noundef nonnull %2)
  %i.m = load i32, ptr %i.d, align 8
  %i.n = and i32 %i.m, 15                         ; 4 uses
  %.not44 = icmp eq i32 %i.n, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Extra_TruthCopy.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.p = icmp samesign ult i32 %i.n, 8
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.d ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.d ]
  %i.q = trunc i64 %indvars.iv to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv
  store i8 %i.q, ptr %i.r, align 4, !tbaa !12
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.s = trunc i64 %indvars.iv.next to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.next
  store i8 %i.s, ptr %i.t, align 1, !tbaa !12
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.u = trunc i64 %indvars.iv.next.1 to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.next.1
  store i8 %i.u, ptr %i.v, align 2, !tbaa !12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.w = trunc i64 %indvars.iv.next.2 to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.next.2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !12
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.y = trunc i64 %indvars.iv.next.3 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.next.3
  store i8 %i.y, ptr %i.z, align 8, !tbaa !12
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.aa = trunc i64 %indvars.iv.next.4 to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.next.4
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !12
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.ac = trunc i64 %indvars.iv.next.5 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.next.5
  store i8 %i.ac, ptr %i.ad, align 2, !tbaa !12
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.ae = trunc i64 %indvars.iv.next.6 to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.next.6
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !12
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !90

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod54 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod54)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ag = trunc i64 %indvars.iv.epil to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.epil
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !12
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.e, !llvm.loop !91

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %Extra_TruthCopy.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4960
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.al = call i32 @Extra_TruthSemiCanonicize(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ai, i32 noundef %i.n, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak) #16
  %i.am = load i32, ptr %i.d, align 8             ; 2 uses
  %i.an = shl i32 %i.al, 14
  %i.ao = and i32 %i.am, 16383
  %i.ap = or disjoint i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.d, align 8
  %i.aq = and i32 %i.am, 15                       ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, 6
  %i.as = add nsw i32 %i.aq, -5
  %i.at = shl nuw nsw i32 1, %i.as
  %i.au = select i1 %i.ar, i32 1, i32 %i.at
  %i.av = call i32 @Extra_TruthHash(ptr noundef nonnull %i.f, i32 noundef %i.au) #16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !28
  %i.ay = zext i32 %i.av to i64
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = call i32 @st__lookup(ptr noundef %i.ax, ptr noundef %i.az, ptr noundef nonnull %i.a) #16
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bd = icmp ne ptr %i.bc, null
  %or.cond = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.be = load i32, ptr %i.d, align 8
  %i.bf = and i32 %i.be, 15                       ; 3 uses
  %i.bg = icmp samesign ult i32 %i.bf, 6
  %i.bh = add nsw i32 %i.bf, -5
  %i.bi = shl nuw nsw i32 1, %i.bh
  %spec.select.i35 = select i1 %i.bg, i32 1, i32 %i.bi
  %i.bj = zext nneg i32 %spec.select.i35 to i64
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %Extra_TruthIsEqual.exit.thread
  %i.bk = phi ptr [ %i.bc, %.preheader ], [ %i.ca, %Extra_TruthIsEqual.exit.thread ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = and i32 %i.bm, 15
  %.not = icmp eq i32 %i.bn, %i.bf
  br i1 %.not, label %bb.g, label %Extra_TruthIsEqual.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 84
  br label %bb.h

select.unfold.i36:                                ; preds = %bb.h
  %i.bp = icmp sgt i64 %indvars.iv.i3752, 1
  br i1 %i.bp, label %bb.h, label %Extra_TruthIsEqual.exit, !llvm.loop !2

bb.h:                                             ; preds = %bb.g, %select.unfold.i36
  %indvars.iv.i3752 = phi i64 [ %i.bj, %bb.g ], [ %indvars.iv.next.i38, %select.unfold.i36 ] ; 2 uses
  %indvars.iv.next.i38 = add nsw i64 %indvars.iv.i3752, -1 ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next.i38
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !25
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i38
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !25
  %.not.i = icmp eq i32 %i.br, %i.bt
  br i1 %.not.i, label %select.unfold.i36, label %Extra_TruthIsEqual.exit.thread, !llvm.loop !2

Extra_TruthIsEqual.exit:                          ; preds = %select.unfold.i36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !21
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 5176 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !41
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !41
  br label %bb.i

Extra_TruthIsEqual.exit.thread:                   ; preds = %bb.h, %bb.f
  %i.ca = load ptr, ptr %i.bk, align 8, !tbaa !33 ; 3 uses
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !32
  %.old1.not = icmp eq ptr %i.ca, null
  br i1 %.old1.not, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %Extra_TruthIsEqual.exit.thread, %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 5180 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !42
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %Extra_TruthIsEqual.exit, %bb.b
  %.030 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit ], [ 1, %Extra_TruthIsEqual.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.030
}

declare i32 @Extra_TruthHash(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @st__lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #9

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #4

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #2

declare i32 @st__find_or_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Extra_TruthVarInSupport(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @Extra_TruthSwapAdjacentVars(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @Extra_TruthCofactor0(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @Extra_TruthCofactor1(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @Extra_TruthMux(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @Cut_CManStart() unnamed_addr #0 {
.preheader:
  %calloc = tail call dereferenceable_or_null(5184) ptr @calloc(i64 1, i64 5184) ; 13 uses
  %i.a = tail call ptr @st__init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #16
  %i.b = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !28
  %i.c = tail call ptr @Extra_MmFixedStart(i32 noundef 152) #16
  store ptr %i.c, ptr %calloc, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %calloc, i64 96
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader
  %.01415 = phi i32 [ 0, %.preheader ], [ %i.l, %bb.a ] ; 3 uses
  %i.e = and i32 %.01415, 30
  %i.f = shl nuw i32 2, %i.e
  %i.g = lshr i32 %.01415, 5
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = or i32 %i.j, %i.f
  store i32 %i.k, ptr %i.i, align 4, !tbaa !25
  %i.l = add nuw nsw i32 %.01415, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.l, 512
  br i1 %exitcond.not.1, label %.preheader.1, label %bb.a, !llvm.loop !92

.preheader.1:                                     ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 160 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader.1
  %.01415.1 = phi i32 [ 0, %.preheader.1 ], [ %i.ad, %bb.f ] ; 7 uses
  %i.n = and i32 %.01415.1, 2
  %.not.1 = icmp eq i32 %i.n, 0
  br i1 %.not.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = and i32 %.01415.1, 30
  %i.p = shl nuw nsw i32 1, %i.o
  %i.q = lshr i32 %.01415.1, 5
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = or i32 %i.t, %i.p
  store i32 %i.u, ptr %i.s, align 4, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = and i32 %.01415.1, 2
  %.not.1.1 = icmp eq i32 %i.v, 0
  br i1 %.not.1.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = and i32 %.01415.1, 30
  %i.x = shl nuw i32 2, %i.w
  %i.y = lshr i32 %.01415.1, 5
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !25
  %i.ac = or i32 %i.ab, %i.x
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = add nuw nsw i32 %.01415.1, 2            ; 2 uses
  %exitcond.1.not.1 = icmp eq i32 %i.ad, 512
  br i1 %exitcond.1.not.1, label %.preheader.2, label %bb.b, !llvm.loop !92

.preheader.2:                                     ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %calloc, i64 224 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.preheader.2
  %.01415.2 = phi i32 [ 0, %.preheader.2 ], [ %i.av, %bb.k ] ; 7 uses
  %i.af = and i32 %.01415.2, 4
  %.not.2 = icmp eq i32 %i.af, 0
  br i1 %.not.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = and i32 %.01415.2, 30
  %i.ah = shl nuw nsw i32 1, %i.ag
  %i.ai = lshr i32 %.01415.2, 5
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !25
  %i.am = or i32 %i.al, %i.ah
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = and i32 %.01415.2, 4
  %.not.2.1 = icmp eq i32 %i.an, 0
  br i1 %.not.2.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = and i32 %.01415.2, 30
  %i.ap = shl nuw i32 2, %i.ao
  %i.aq = lshr i32 %.01415.2, 5
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !25
  %i.au = or i32 %i.at, %i.ap
  store i32 %i.au, ptr %i.as, align 4, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = add nuw nsw i32 %.01415.2, 2            ; 2 uses
  %exitcond.2.not.1 = icmp eq i32 %i.av, 512
  br i1 %exitcond.2.not.1, label %.preheader.3, label %bb.g, !llvm.loop !92

.preheader.3:                                     ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %calloc, i64 288 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.preheader.3
  %.01415.3 = phi i32 [ 0, %.preheader.3 ], [ %i.bn, %bb.p ] ; 7 uses
  %i.ax = and i32 %.01415.3, 8
  %.not.3 = icmp eq i32 %i.ax, 0
  br i1 %.not.3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = and i32 %.01415.3, 30
  %i.az = shl nuw nsw i32 1, %i.ay
  %i.ba = lshr i32 %.01415.3, 5
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !25
  %i.be = or i32 %i.bd, %i.az
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bf = and i32 %.01415.3, 8
  %.not.3.1 = icmp eq i32 %i.bf, 0
  br i1 %.not.3.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = and i32 %.01415.3, 30
  %i.bh = shl nuw i32 2, %i.bg
  %i.bi = lshr i32 %.01415.3, 5
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !25
  %i.bm = or i32 %i.bl, %i.bh
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bn = add nuw nsw i32 %.01415.3, 2            ; 2 uses
  %exitcond.3.not.1 = icmp eq i32 %i.bn, 512
  br i1 %exitcond.3.not.1, label %.preheader.4, label %bb.l, !llvm.loop !92

.preheader.4:                                     ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %calloc, i64 352 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.preheader.4
  %.01415.4 = phi i32 [ 0, %.preheader.4 ], [ %i.cf, %bb.u ] ; 7 uses
  %i.bp = and i32 %.01415.4, 16
  %.not.4 = icmp eq i32 %i.bp, 0
  br i1 %.not.4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = and i32 %.01415.4, 30
  %i.br = shl nuw nsw i32 1, %i.bq
  %i.bs = lshr i32 %.01415.4, 5
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !25
  %i.bw = or i32 %i.bv, %i.br
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = and i32 %.01415.4, 16
  %.not.4.1 = icmp eq i32 %i.bx, 0
  br i1 %.not.4.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = and i32 %.01415.4, 30
  %i.bz = shl nuw i32 2, %i.by
  %i.ca = lshr i32 %.01415.4, 5
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !25
  %i.ce = or i32 %i.cd, %i.bz
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cf = add nuw nsw i32 %.01415.4, 2            ; 2 uses
  %exitcond.4.not.1 = icmp eq i32 %i.cf, 512
  br i1 %exitcond.4.not.1, label %.preheader.5, label %bb.q, !llvm.loop !92

.preheader.5:                                     ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %calloc, i64 416 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.preheader.5
  %.01415.5 = phi i32 [ 0, %.preheader.5 ], [ %i.cx, %bb.z ] ; 7 uses
  %i.ch = and i32 %.01415.5, 32
  %.not.5 = icmp eq i32 %i.ch, 0
  br i1 %.not.5, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = and i32 %.01415.5, 30
  %i.cj = shl nuw nsw i32 1, %i.ci
  %i.ck = lshr i32 %.01415.5, 5
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !25
  %i.co = or i32 %i.cn, %i.cj
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cp = and i32 %.01415.5, 32
  %.not.5.1 = icmp eq i32 %i.cp, 0
  br i1 %.not.5.1, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = and i32 %.01415.5, 30
  %i.cr = shl nuw i32 2, %i.cq
  %i.cs = lshr i32 %.01415.5, 5
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !25
  %i.cw = or i32 %i.cv, %i.cr
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cx = add nuw nsw i32 %.01415.5, 2            ; 2 uses
  %exitcond.5.not.1 = icmp eq i32 %i.cx, 512
  br i1 %exitcond.5.not.1, label %.preheader.6, label %bb.v, !llvm.loop !92

.preheader.6:                                     ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %calloc, i64 480 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.preheader.6
  %.01415.6 = phi i32 [ 0, %.preheader.6 ], [ %i.dp, %bb.ae ] ; 7 uses
  %i.cz = and i32 %.01415.6, 64
  %.not.6 = icmp eq i32 %i.cz, 0
  br i1 %.not.6, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = and i32 %.01415.6, 30
  %i.db = shl nuw nsw i32 1, %i.da
  %i.dc = lshr i32 %.01415.6, 5
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !25
  %i.dg = or i32 %i.df, %i.db
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dh = and i32 %.01415.6, 64
  %.not.6.1 = icmp eq i32 %i.dh, 0
  br i1 %.not.6.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = and i32 %.01415.6, 30
  %i.dj = shl nuw i32 2, %i.di
  %i.dk = lshr i32 %.01415.6, 5
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !25
  %i.do = or i32 %i.dn, %i.dj
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dp = add nuw nsw i32 %.01415.6, 2            ; 2 uses
  %exitcond.6.not.1 = icmp eq i32 %i.dp, 512
  br i1 %exitcond.6.not.1, label %.preheader.7, label %bb.aa, !llvm.loop !92

.preheader.7:                                     ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %calloc, i64 544 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %.preheader.7
  %.01415.7 = phi i32 [ 0, %.preheader.7 ], [ %i.eh, %bb.aj ] ; 7 uses
  %i.dr = and i32 %.01415.7, 128
  %.not.7 = icmp eq i32 %i.dr, 0
  br i1 %.not.7, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ds = and i32 %.01415.7, 30
  %i.dt = shl nuw nsw i32 1, %i.ds
  %i.du = lshr i32 %.01415.7, 5
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !25
  %i.dy = or i32 %i.dx, %i.dt
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dz = and i32 %.01415.7, 128
  %.not.7.1 = icmp eq i32 %i.dz, 0
  br i1 %.not.7.1, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = and i32 %.01415.7, 30
  %i.eb = shl nuw i32 2, %i.ea
  %i.ec = lshr i32 %.01415.7, 5
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !25
  %i.eg = or i32 %i.ef, %i.eb
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.eh = add nuw nsw i32 %.01415.7, 2            ; 2 uses
  %exitcond.7.not.1 = icmp eq i32 %i.eh, 512
  br i1 %exitcond.7.not.1, label %.preheader.8, label %bb.af, !llvm.loop !92

.preheader.8:                                     ; preds = %bb.aj
  %i.ei = getelementptr inbounds nuw i8, ptr %calloc, i64 608 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %.preheader.8
  %.01415.8 = phi i32 [ 0, %.preheader.8 ], [ %i.ez, %bb.ao ] ; 7 uses
  %i.ej = and i32 %.01415.8, 256
  %.not.8 = icmp eq i32 %i.ej, 0
  br i1 %.not.8, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ek = and i32 %.01415.8, 30
  %i.el = shl nuw nsw i32 1, %i.ek
  %i.em = lshr i32 %.01415.8, 5
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !25
  %i.eq = or i32 %i.ep, %i.el
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.er = and i32 %.01415.8, 256
  %.not.8.1 = icmp eq i32 %i.er, 0
  br i1 %.not.8.1, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.es = and i32 %.01415.8, 30
  %i.et = shl nuw i32 2, %i.es
  %i.eu = lshr i32 %.01415.8, 5
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ev ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !25
  %i.ey = or i32 %i.ex, %i.et
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ez = add nuw nsw i32 %.01415.8, 2            ; 2 uses
  %exitcond.8.not.1 = icmp eq i32 %i.ez, 512
  br i1 %exitcond.8.not.1, label %bb.ap, label %bb.ak, !llvm.loop !92

bb.ap:                                            ; preds = %bb.ao
  store ptr %calloc, ptr @s_pCMan, align 8, !tbaa !40
  ret ptr %calloc
}

declare ptr @st__init_table(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @st__ptrcmp(ptr noundef, ptr noundef) #4

declare i32 @st__ptrhash(ptr noundef, i32 noundef) #4

declare ptr @Extra_MmFixedStart(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = distinct !{!3, !24}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS16Extra_MmFixed_t_", !13, i64 0}
!15 = !{!"p1 _ZTS9st__table", !13, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"Cut_CMan_t_", !14, i64 0, !15, i64 8, !8, i64 16, !8, i64 96, !8, i64 672, !8, i64 2080, !8, i64 3488, !8, i64 4896, !8, i64 4960, !9, i64 5024, !9, i64 5028, !8, i64 5032, !8, i64 5072, !8, i64 5112, !16, i64 5152, !16, i64 5160, !16, i64 5168, !9, i64 5176, !9, i64 5180}
!18 = !{!17, !14, i64 0}
!19 = !{!"p1 _ZTS11Cut_Cell_t_", !13, i64 0}
!20 = !{!"Cut_Cell_t_", !19, i64 0, !19, i64 8, !19, i64 16, !9, i64 24, !8, i64 28, !9, i64 32, !9, i64 32, !9, i64 33, !9, i64 33, !9, i64 33, !8, i64 36, !8, i64 48, !8, i64 84}
!21 = !{!20, !9, i64 24}
!22 = !{!17, !9, i64 5024}
!23 = !{!17, !9, i64 5028}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!9, !9, i64 0}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!17, !15, i64 8}
!29 = !{!"any p2 pointer", !13, i64 0}
!30 = !{!"p2 _ZTS11Cut_Cell_t_", !29, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!19, !19, i64 0}
!33 = !{!20, !19, i64 0}
!34 = !{!20, !19, i64 8}
!35 = !{!"timespec", !16, i64 0, !16, i64 8}
!36 = !{!35, !16, i64 0}
!37 = !{!35, !16, i64 8}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!"p1 _ZTS11Cut_CMan_t_", !13, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!17, !9, i64 5176}
!42 = !{!17, !9, i64 5180}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24, !26, !27}
!45 = distinct !{!45, !24, !26}
!46 = distinct !{!46, !24, !26, !27}
!47 = distinct !{!47, !24, !26}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !38}
!56 = distinct !{!56, !24, !26, !27}
!57 = distinct !{!57, !24, !26}
!58 = distinct !{!58, !24, !26, !27}
!59 = distinct !{!59, !24, !26}
!60 = distinct !{!60, !24, !26, !27}
!61 = distinct !{!61, !24, !26}
!62 = distinct !{!62, !24, !26, !27}
!63 = distinct !{!63, !24, !26}
!64 = distinct !{!64, !24}
!65 = distinct !{!65, !24}
!66 = distinct !{!66, !24}
!67 = distinct !{!67, !24}
!68 = distinct !{!68, !24}
!69 = distinct !{!69, !24}
!70 = distinct !{!70, !24}
!71 = !{!"short", !8, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!20, !19, i64 16}
!74 = !{!17, !16, i64 5160}
!75 = !{!17, !16, i64 5152}
!76 = !{!17, !16, i64 5168}
!77 = !{!"branch_weights", i32 1, i32 1048575}
!78 = distinct !{!78, !"vprintf"}
!79 = distinct !{!79, !78, !"vprintf: argument 0"}
!80 = distinct !{null}
!81 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!79}
!84 = distinct !{!84, !24}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !24}
!87 = distinct !{!87, !24}
!88 = !{!"p1 omnipotent char", !13, i64 0}
!89 = !{!88, !88, i64 0}
!90 = distinct !{!90, !24}
!91 = distinct !{!91, !38}
!92 = distinct !{!92, !24}
end_hunk_2
