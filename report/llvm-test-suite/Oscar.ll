Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Oscar?download=true
inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@Oscar:bb.a
  %i.ej = fadd <2 x float> %i.ei, %i.ef
  %i.ek = fmul <2 x float> %i.di, %i.ej
  store <2 x float> %i.ek, ptr getelementptr inbounds nuw (i8, ptr @e, i64 280), align 8, !tbaa !16
  %i.el = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 328), align 8, !tbaa !16 ; 2 uses
  %i.em = fadd <2 x float> %i.el, %i.ei
  %i.en = fmul <2 x float> %i.di, %i.em
  store <2 x float> %i.en, ptr getelementptr inbounds nuw (i8, ptr @e, i64 312), align 8, !tbaa !16
  %i.eo = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 360), align 8, !tbaa !16 ; 2 uses
  %i.ep = fadd <2 x float> %i.eo, %i.el
  %i.eq = fmul <2 x float> %i.di, %i.ep
  store <2 x float> %i.eq, ptr getelementptr inbounds nuw (i8, ptr @e, i64 344), align 8, !tbaa !16
  %i.er = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 392), align 8, !tbaa !16 ; 2 uses
  %i.es = fadd <2 x float> %i.er, %i.eo
  %i.et = fmul <2 x float> %i.di, %i.es
  store <2 x float> %i.et, ptr getelementptr inbounds nuw (i8, ptr @e, i64 376), align 8, !tbaa !16
  %i.eu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 424), align 8, !tbaa !16 ; 2 uses
  %i.ev = fadd <2 x float> %i.eu, %i.er
  %i.ew = fmul <2 x float> %i.di, %i.ev
  store <2 x float> %i.ew, ptr getelementptr inbounds nuw (i8, ptr @e, i64 408), align 8, !tbaa !16
  %i.ex = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 456), align 8, !tbaa !16 ; 2 uses
  %i.ey = fadd <2 x float> %i.ex, %i.eu
  %i.ez = fmul <2 x float> %i.di, %i.ey
  store <2 x float> %i.ez, ptr getelementptr inbounds nuw (i8, ptr @e, i64 440), align 8, !tbaa !16
  %i.fa = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.fb = fadd <2 x float> %i.fa, %i.ex
  %i.fc = fmul <2 x float> %i.di, %i.fb
  store <2 x float> %i.fc, ptr getelementptr inbounds nuw (i8, ptr @e, i64 472), align 8, !tbaa !16
  %i.fd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 520), align 8, !tbaa !16 ; 2 uses
  %i.fe = fadd <2 x float> %i.fd, %i.fa
  %i.ff = fmul <2 x float> %i.di, %i.fe
  store <2 x float> %i.ff, ptr getelementptr inbounds nuw (i8, ptr @e, i64 504), align 8, !tbaa !16
  %i.fg = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 552), align 8, !tbaa !16 ; 2 uses
  %i.fh = fadd <2 x float> %i.fg, %i.fd
  %i.fi = fmul <2 x float> %i.di, %i.fh
  store <2 x float> %i.fi, ptr getelementptr inbounds nuw (i8, ptr @e, i64 536), align 8, !tbaa !16
  %i.fj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 584), align 8, !tbaa !16 ; 2 uses
  %i.fk = fadd <2 x float> %i.fj, %i.fg
  %i.fl = fmul <2 x float> %i.di, %i.fk
  store <2 x float> %i.fl, ptr getelementptr inbounds nuw (i8, ptr @e, i64 568), align 8, !tbaa !16
  %i.fm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 616), align 8, !tbaa !16 ; 2 uses
  %i.fn = fadd <2 x float> %i.fm, %i.fj
  %i.fo = fmul <2 x float> %i.di, %i.fn
  store <2 x float> %i.fo, ptr getelementptr inbounds nuw (i8, ptr @e, i64 600), align 8, !tbaa !16
  %i.fp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 648), align 8, !tbaa !16 ; 2 uses
  %i.fq = fadd <2 x float> %i.fp, %i.fm
  %i.fr = fmul <2 x float> %i.di, %i.fq
  store <2 x float> %i.fr, ptr getelementptr inbounds nuw (i8, ptr @e, i64 632), align 8, !tbaa !16
  %i.fs = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 680), align 8, !tbaa !16 ; 2 uses
  %i.ft = fadd <2 x float> %i.fs, %i.fp
  %i.fu = fmul <2 x float> %i.di, %i.ft
  store <2 x float> %i.fu, ptr getelementptr inbounds nuw (i8, ptr @e, i64 664), align 8, !tbaa !16
  %i.fv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 712), align 8, !tbaa !16 ; 2 uses
  %i.fw = fadd <2 x float> %i.fv, %i.fs
  %i.fx = fmul <2 x float> %i.di, %i.fw
  store <2 x float> %i.fx, ptr getelementptr inbounds nuw (i8, ptr @e, i64 696), align 8, !tbaa !16
  %i.fy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 744), align 8, !tbaa !16 ; 2 uses
  %i.fz = fadd <2 x float> %i.fy, %i.fv
  %i.ga = fmul <2 x float> %i.di, %i.fz
  store <2 x float> %i.ga, ptr getelementptr inbounds nuw (i8, ptr @e, i64 728), align 8, !tbaa !16
  %i.gb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 776), align 8, !tbaa !16 ; 2 uses
  %i.gc = fadd <2 x float> %i.gb, %i.fy
  %i.gd = fmul <2 x float> %i.di, %i.gc
  store <2 x float> %i.gd, ptr getelementptr inbounds nuw (i8, ptr @e, i64 760), align 8, !tbaa !16
  %i.ge = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 808), align 8, !tbaa !16 ; 2 uses
  %i.gf = fadd <2 x float> %i.ge, %i.gb
  %i.gg = fmul <2 x float> %i.di, %i.gf
  store <2 x float> %i.gg, ptr getelementptr inbounds nuw (i8, ptr @e, i64 792), align 8, !tbaa !16
  %i.gh = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 840), align 8, !tbaa !16 ; 2 uses
  %i.gi = fadd <2 x float> %i.gh, %i.ge
  %i.gj = fmul <2 x float> %i.di, %i.gi
  store <2 x float> %i.gj, ptr getelementptr inbounds nuw (i8, ptr @e, i64 824), align 8, !tbaa !16
  %i.gk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 872), align 8, !tbaa !16 ; 2 uses
  %i.gl = fadd <2 x float> %i.gk, %i.gh
  %i.gm = fmul <2 x float> %i.di, %i.gl
  store <2 x float> %i.gm, ptr getelementptr inbounds nuw (i8, ptr @e, i64 856), align 8, !tbaa !16
  %i.gn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 904), align 8, !tbaa !16 ; 2 uses
  %i.go = fadd <2 x float> %i.gn, %i.gk
  %i.gp = fmul <2 x float> %i.di, %i.go
  store <2 x float> %i.gp, ptr getelementptr inbounds nuw (i8, ptr @e, i64 888), align 8, !tbaa !16
  %i.gq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 936), align 8, !tbaa !16 ; 2 uses
  %i.gr = fadd <2 x float> %i.gq, %i.gn
  %i.gs = fmul <2 x float> %i.di, %i.gr
  store <2 x float> %i.gs, ptr getelementptr inbounds nuw (i8, ptr @e, i64 920), align 8, !tbaa !16
  %i.gt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 968), align 8, !tbaa !16 ; 2 uses
  %i.gu = fadd <2 x float> %i.gt, %i.gq
  %i.gv = fmul <2 x float> %i.di, %i.gu
  store <2 x float> %i.gv, ptr getelementptr inbounds nuw (i8, ptr @e, i64 952), align 8, !tbaa !16
  %i.gw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 1000), align 8, !tbaa !16 ; 2 uses
  %i.gx = fadd <2 x float> %i.gw, %i.gt
  %i.gy = fmul <2 x float> %i.di, %i.gx
  store <2 x float> %i.gy, ptr getelementptr inbounds nuw (i8, ptr @e, i64 984), align 8, !tbaa !16
  %i.gz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 1032), align 8, !tbaa !16
  %i.ha = fadd <2 x float> %i.gz, %i.gw
  %i.hb = fmul <2 x float> %i.di, %i.ha
  store <2 x float> %i.hb, ptr getelementptr inbounds nuw (i8, ptr @e, i64 1016), align 8, !tbaa !16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hd = load <4 x float>, ptr %i.hc, align 8
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv53.i.5 = phi i64 [ 1, %bb.c ], [ %indvars.iv.next54.i.5.3, %bb.d ] ; 8 uses
  %gep.i.5 = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @e, i64 8), i64 %indvars.iv53.i.5
  %i.hf = getelementptr i8, ptr %gep.i.5, i64 8
  %i.hg = getelementptr [8 x i8], ptr @e, i64 %indvars.iv53.i.5
  %i.hh = getelementptr [8 x i8], ptr @e, i64 %indvars.iv53.i.5
  %i.hi = getelementptr i8, ptr %i.hh, i64 8
  %i.hj = load <2 x float>, ptr %i.hf, align 8, !tbaa !16 ; 2 uses
  %i.hk = load <2 x float>, ptr %i.hg, align 8, !tbaa !16
  %i.hl = fadd <2 x float> %i.hj, %i.hk
  %i.hm = fmul <2 x float> %i.he, %i.hl
  store <2 x float> %i.hm, ptr %i.hi, align 8, !tbaa !16
  %indvars.iv.next54.i.5 = add nuw nsw i64 %indvars.iv53.i.5, 2 ; 2 uses
  %gep.i.5.1 = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @e, i64 8), i64 %indvars.iv.next54.i.5
  %i.hn = getelementptr i8, ptr %gep.i.5.1, i64 8
  %i.ho = getelementptr [8 x i8], ptr @e, i64 %indvars.iv.next54.i.5
  %i.hp = getelementptr i8, ptr %i.ho, i64 8
  %i.hq = load <2 x float>, ptr %i.hn, align 8, !tbaa !16 ; 2 uses
  %i.hr = fadd <2 x float> %i.hq, %i.hj
  %i.hs = fmul <2 x float> %i.he, %i.hr
  store <2 x float> %i.hs, ptr %i.hp, align 8, !tbaa !16
  %indvars.iv.next54.i.5.1 = add nuw nsw i64 %indvars.iv53.i.5, 4 ; 2 uses
  %gep.i.5.2 = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @e, i64 8), i64 %indvars.iv.next54.i.5.1
  %i.ht = getelementptr i8, ptr %gep.i.5.2, i64 8
  %i.hu = getelementptr [8 x i8], ptr @e, i64 %indvars.iv.next54.i.5.1
  %i.hv = getelementptr i8, ptr %i.hu, i64 8
  %i.hw = load <2 x float>, ptr %i.ht, align 8, !tbaa !16 ; 2 uses
  %i.hx = fadd <2 x float> %i.hw, %i.hq
  %i.hy = fmul <2 x float> %i.he, %i.hx
  store <2 x float> %i.hy, ptr %i.hv, align 8, !tbaa !16
  %indvars.iv.next54.i.5.2 = add nuw nsw i64 %indvars.iv53.i.5, 6 ; 2 uses
  %gep.i.5.3 = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @e, i64 8), i64 %indvars.iv.next54.i.5.2
  %i.hz = getelementptr i8, ptr %gep.i.5.3, i64 8
  %i.ia = getelementptr [8 x i8], ptr @e, i64 %indvars.iv.next54.i.5.2
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %i.ic = load <2 x float>, ptr %i.hz, align 8, !tbaa !16
  %i.id = fadd <2 x float> %i.ic, %i.hw
  %i.ie = fmul <2 x float> %i.he, %i.id
  store <2 x float> %i.ie, ptr %i.ib, align 8, !tbaa !16
  %indvars.iv.next54.i.5.3 = add nuw nsw i64 %indvars.iv53.i.5, 8
  %.not.i.5.3 = icmp samesign ugt i64 %indvars.iv53.i.5, 120
  br i1 %.not.i.5.3, label %Exptab.exit, label %bb.d, !llvm.loop !45

Exptab.exit:                                      ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

.preheader16:                                     ; preds = %bb.e
  %i.if = zext nneg i32 %i.io to i64
  store i64 %i.if, ptr @seed, align 8, !tbaa !8
  %i.ig = extractelement <2 x float> %i.iu, i64 0
  store float %i.ig, ptr @zr, align 4, !tbaa !16
  %i.ih = extractelement <2 x float> %i.iu, i64 1
  store float %i.ih, ptr @zi, align 4, !tbaa !16
  br label %.preheader

bb.e:                                             ; preds = %Exptab.exit, %bb.e
  %indvars.iv = phi i64 [ 1, %Exptab.exit ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ii = phi i32 [ 5767, %Exptab.exit ], [ %i.io, %bb.e ]
  %i.ij = mul nuw nsw i32 %i.ii, 4855
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %indvars.iv
  %i.il = add nuw nsw i32 %i.ij, 1731             ; 2 uses
  %i.im = mul i32 %i.il, 4855
  %i.in = add i32 %i.im, 1731
  %i.io = and i32 %i.in, 8191                     ; 3 uses
  %i.ip = and i32 %i.il, 8191
  %i.iq = uitofp nneg i32 %i.io to float
  %i.ir = uitofp nneg i32 %i.ip to float
  %i.is = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.it = insertelement <2 x float> %i.is, float %i.iq, i64 1
  %i.iu = fmul nnan <2 x float> %i.it, splat (float f0x39000000) ; 3 uses
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> splat (float 2.000000e+01), <2 x float> splat (float -1.000000e+01))
  store <2 x float> %i.iv, ptr %i.ik, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %.preheader16, label %bb.e, !llvm.loop !46

.preheader:                                       ; preds = %.preheader16, %Fft.exit
  %.120 = phi i32 [ 1, %.preheader16 ], [ %i.lh, %Fft.exit ]
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.preheader95.i.preheader
  %.083.i = phi i32 [ %i.kx, %.preheader95.i.preheader ], [ 1, %.preheader ] ; 3 uses
  %i.iw = zext nneg i32 %.083.i to i64            ; 4 uses
  %i.ix = shl nuw nsw i64 %i.iw, 3                ; 2 uses
  %i.iy = shl nuw nsw i64 %i.iw, 3
  %i.iz = getelementptr i8, ptr @w, i64 %i.ix
  %i.ja = getelementptr i8, ptr %i.iz, i64 4
  %i.jb = getelementptr i8, ptr @w, i64 %i.ix
  %i.jc = getelementptr i8, ptr %i.jb, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.f
  %indvar = phi i64 [ %indvar.next, %.loopexit ], [ 0, %bb.f ] ; 2 uses
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %.loopexit ], [ %i.iw, %bb.f ] ; 4 uses
  %.086.i = phi i64 [ %i.jg, %.loopexit ], [ 1, %bb.f ] ; 12 uses
  %.084.i = phi i64 [ %indvars.iv99.i, %.loopexit ], [ 0, %bb.f ] ; 5 uses
  %i.jd = mul i64 %i.iy, %indvar                  ; 2 uses
  %scevgep39 = getelementptr i8, ptr %i.ja, i64 %i.jd ; 2 uses
  %scevgep44 = getelementptr i8, ptr %i.jc, i64 %i.jd
  %i.je = getelementptr [8 x i8], ptr @e, i64 %.084.i ; 2 uses
  %0 = getelementptr i8, ptr %i.je, i64 8
  %i.jf = getelementptr i8, ptr %i.je, i64 12
  %invariant.gep112.i = getelementptr [8 x i8], ptr @w, i64 %.084.i ; 2 uses
  %invariant.gep114.i = getelementptr [8 x i8], ptr @w, i64 %indvars.iv99.i ; 4 uses
  %1 = load float, ptr %0, align 8, !tbaa !10     ; 2 uses
  %2 = load float, ptr %i.jf, align 4, !tbaa !13  ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %.086.i, i64 %indvars.iv99.i) ; 6 uses
  %i.jg = add nuw i64 %smax, 1
  %i.jh = add nuw i64 %smax, 1
  %i.ji = sub i64 %i.jh, %.086.i                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.g
  %i.jj = sub i64 %smax, %.086.i                  ; 2 uses
  %i.jk = shl i64 %.086.i, 3
  %i.jl = add i64 %.084.i, %.086.i
  %i.jm = shl i64 %i.jl, 3
  %scevgep = getelementptr i8, ptr @w, i64 %i.jm  ; 2 uses
  %mul.result = shl i64 %i.jj, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.jj, 2305843009213693951
  %i.jn = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.jo = icmp ult ptr %i.jn, %scevgep
  %scevgep35 = getelementptr i8, ptr %invariant.gep114.i, i64 %i.jk ; 2 uses
  %i.jp = getelementptr i8, ptr %scevgep35, i64 %mul.result
  %i.jq = icmp ult ptr %i.jp, %scevgep35
  %i.jr = or i1 %i.jq, %mul.overflow
  %i.js = or i1 %i.jo, %i.jr
  br i1 %i.js, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.jt = shl i64 %.086.i, 3                      ; 2 uses
  %i.ju = add i64 %.084.i, %.086.i
  %i.jv = shl i64 %i.ju, 3                        ; 2 uses
  %scevgep36 = getelementptr i8, ptr @w, i64 %i.jv
  %i.jw = add i64 %.084.i, %smax
  %i.jx = shl i64 %i.jw, 3                        ; 2 uses
  %scevgep37 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @w, i64 4), i64 %i.jx
  %scevgep38 = getelementptr i8, ptr %invariant.gep114.i, i64 %i.jt
  %i.jy = shl i64 %smax, 3                        ; 2 uses
  %scevgep40 = getelementptr i8, ptr %scevgep39, i64 %i.jy
  %scevgep41 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @w, i64 4), i64 %i.jv
  %scevgep42 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @w, i64 8), i64 %i.jx
  %scevgep43 = getelementptr i8, ptr %scevgep39, i64 %i.jt
  %scevgep45 = getelementptr i8, ptr %scevgep44, i64 %i.jy
  %bound0 = icmp ult ptr %scevgep36, %scevgep40
  %bound1 = icmp ult ptr %scevgep38, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  %bound046 = icmp ult ptr %scevgep41, %scevgep45
  %bound147 = icmp ult ptr %scevgep43, %scevgep42
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx = or i1 %found.conflict, %found.conflict48
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph49

vector.ph49:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %i.ji, -4                      ; 3 uses
  %i.jz = add i64 %.086.i, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph49
  %index53 = phi i64 [ 0, %vector.ph49 ], [ %index.next62, %vector.body52 ] ; 2 uses
  %i.ka = add i64 %.086.i, %index53               ; 4 uses
  %i.kb = getelementptr inbounds [8 x i8], ptr @z, i64 %i.ka
  %wide.vec54 = load <8 x float>, ptr %i.kb, align 8, !tbaa !16 ; 3 uses
  %strided.vec55 = shufflevector <8 x float> %wide.vec54, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec56 = shufflevector <8 x float> %wide.vec54, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.kc = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @z, i64 1024), i64 %i.ka
  %wide.vec57 = load <8 x float>, ptr %i.kc, align 8, !tbaa !16 ; 3 uses
  %strided.vec58 = shufflevector <8 x float> %wide.vec57, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec59 = shufflevector <8 x float> %wide.vec57, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.kd = getelementptr [8 x i8], ptr %invariant.gep112.i, i64 %i.ka
  %interleaved.vec60 = fadd <8 x float> %wide.vec54, %wide.vec57
  store <8 x float> %interleaved.vec60, ptr %i.kd, align 8, !tbaa !16
  %i.ke = fsub <4 x float> %strided.vec55, %strided.vec58 ; 2 uses
  %i.kf = fsub <4 x float> %strided.vec56, %strided.vec59 ; 2 uses
  %i.kg = fneg <4 x float> %i.kf
  %i.kh = fmul <4 x float> %broadcast.splat51, %i.kg
  %i.ki = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.ke, <4 x float> %i.kh)
  %i.kj = getelementptr [8 x i8], ptr %invariant.gep114.i, i64 %i.ka
  %i.kk = fmul <4 x float> %i.ke, %broadcast.splat51
  %i.kl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.kf, <4 x float> %i.kk)
  %interleaved.vec61 = shufflevector <4 x float> %i.ki, <4 x float> %i.kl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec61, ptr %i.kj, align 8, !tbaa !16
  %index.next62 = add nuw i64 %index53, 4         ; 2 uses
  %i.km = icmp eq i64 %index.next62, %n.vec
  br i1 %i.km, label %middle.block63, label %vector.body52, !llvm.loop !47

middle.block63:                                   ; preds = %vector.body52
  %cmp.n = icmp eq i64 %i.ji, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %bb.g, %middle.block63
  %indvars.iv.i6.ph = phi i64 [ %.086.i, %vector.memcheck ], [ %.086.i, %vector.scevcheck ], [ %.086.i, %bb.g ], [ %i.jz, %middle.block63 ]
  %3 = insertelement <2 x float> poison, float %2, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = insertelement <2 x float> poison, float %1, i64 0
  %i.kn = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i8, %scalar.ph ], [ %indvars.iv.i6.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr @z, i64 %indvars.iv.i6
  %gep.i7 = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @z, i64 1024), i64 %indvars.iv.i6
  %gep113.i = getelementptr [8 x i8], ptr %invariant.gep112.i, i64 %indvars.iv.i6
  %i.kp = load <2 x float>, ptr %i.ko, align 8, !tbaa !16 ; 2 uses
  %i.kq = load <2 x float>, ptr %gep.i7, align 8, !tbaa !16 ; 2 uses
  %i.kr = fadd <2 x float> %i.kp, %i.kq
  store <2 x float> %i.kr, ptr %gep113.i, align 8, !tbaa !16
  %gep115.i = getelementptr [8 x i8], ptr %invariant.gep114.i, i64 %indvars.iv.i6
  %i.ks = fsub <2 x float> %i.kp, %i.kq           ; 3 uses
  %i.kt = fneg <2 x float> %i.ks
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> %i.ks, <2 x i32> <i32 1, i32 2>
  %i.kv = fmul <2 x float> %4, %i.ku
  %i.kw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kn, <2 x float> %i.ks, <2 x float> %i.kv)
  store <2 x float> %i.kw, ptr %gep115.i, align 8, !tbaa !16
  %indvars.iv.next.i8 = add i64 %indvars.iv.i6, 1
  %exitcond24.not = icmp eq i64 %indvars.iv.i6, %smax
  br i1 %exitcond24.not, label %.loopexit, label %scalar.ph, !llvm.loop !48

.loopexit:                                        ; preds = %scalar.ph, %middle.block63
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, %i.iw ; 2 uses
  %.not.i9 = icmp samesign ugt i64 %indvars.iv.next100.i, 128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %.preheader95.i.preheader, label %bb.g, !llvm.loop !37

.preheader95.i.preheader:                         ; preds = %.loopexit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) getelementptr inbounds nuw (i8, ptr @z, i64 8), ptr noundef nonnull align 8 dereferenceable(2048) getelementptr inbounds nuw (i8, ptr @w, i64 8), i64 2048, i1 false)
  %i.kx = shl nuw nsw i32 %.083.i, 1
  %.not93.i = icmp samesign ugt i32 %.083.i, 64
  br i1 %.not93.i, label %vector.body, label %bb.f, !llvm.loop !42

vector.body:                                      ; preds = %.preheader95.i.preheader, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %.preheader95.i.preheader ] ; 5 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %index
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.kz, align 8, !tbaa !16
  %interleaved.vec = fmul <4 x float> %wide.vec, <float 6.250000e-02, float -6.250000e-02, float 6.250000e-02, float -6.250000e-02>
  store <4 x float> %interleaved.vec, ptr %i.kz, align 8, !tbaa !16
  %i.la = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %index
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24 ; 2 uses
  %wide.vec.1 = load <4 x float>, ptr %i.lb, align 8, !tbaa !16
  %interleaved.vec.1 = fmul <4 x float> %wide.vec.1, <float 6.250000e-02, float -6.250000e-02, float 6.250000e-02, float -6.250000e-02>
  store <4 x float> %interleaved.vec.1, ptr %i.lb, align 8, !tbaa !16
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %index
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 40 ; 2 uses
  %wide.vec.2 = load <4 x float>, ptr %i.ld, align 8, !tbaa !16
  %interleaved.vec.2 = fmul <4 x float> %wide.vec.2, <float 6.250000e-02, float -6.250000e-02, float 6.250000e-02, float -6.250000e-02>
  store <4 x float> %interleaved.vec.2, ptr %i.ld, align 8, !tbaa !16
  %i.le = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %index
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 56 ; 2 uses
  %wide.vec.3 = load <4 x float>, ptr %i.lf, align 8, !tbaa !16
  %interleaved.vec.3 = fmul <4 x float> %wide.vec.3, <float 6.250000e-02, float -6.250000e-02, float 6.250000e-02, float -6.250000e-02>
  store <4 x float> %interleaved.vec.3, ptr %i.lf, align 8, !tbaa !16
  %index.next.3 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.lg = icmp eq i64 %index.next.3, 256
  br i1 %i.lg, label %Fft.exit, label %vector.body, !llvm.loop !49

Fft.exit:                                         ; preds = %vector.body
  %i.lh = add nuw nsw i32 %.120, 1                ; 2 uses
  %exitcond25.not = icmp eq i32 %i.lh, 21
  br i1 %exitcond25.not, label %Printcomplex.exit, label %.preheader, !llvm.loop !50

Printcomplex.exit:                                ; preds = %Fft.exit
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.li = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 8), align 8, !tbaa !10
  %i.lj = fpext float %i.li to double
  %i.lk = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 12), align 4, !tbaa !13
  %i.ll = fpext float %i.lk to double
  %i.lm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.lj, double noundef %i.ll) ; 0 uses
  %i.ln = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 144), align 16, !tbaa !10
  %i.lo = fpext float %i.ln to double
  %i.lp = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 148), align 4, !tbaa !13
  %i.lq = fpext float %i.lp to double
  %i.lr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.lo, double noundef %i.lq) ; 0 uses
  %putchar14.i = tail call i32 @putchar(i32 10)   ; 0 uses
  %i.ls = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 280), align 8, !tbaa !10
  %i.lt = fpext float %i.ls to double
  %i.lu = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 284), align 4, !tbaa !13
  %i.lv = fpext float %i.lu to double
  %i.lw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.lt, double noundef %i.lv) ; 0 uses
  %i.lx = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 416), align 16, !tbaa !10
  %i.ly = fpext float %i.lx to double
  %i.lz = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 420), align 4, !tbaa !13
  %i.ma = fpext float %i.lz to double
  %i.mb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.ly, double noundef %i.ma) ; 0 uses
  %putchar14.i.1 = tail call i32 @putchar(i32 10) ; 0 uses
  %i.mc = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 552), align 8, !tbaa !10
  %i.md = fpext float %i.mc to double
  %i.me = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 556), align 4, !tbaa !13
  %i.mf = fpext float %i.me to double
  %i.mg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.md, double noundef %i.mf) ; 0 uses
  %i.mh = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 688), align 16, !tbaa !10
  %i.mi = fpext float %i.mh to double
  %i.mj = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 692), align 4, !tbaa !13
  %i.mk = fpext float %i.mj to double
  %i.ml = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.mi, double noundef %i.mk) ; 0 uses
  %putchar14.i.2 = tail call i32 @putchar(i32 10) ; 0 uses
  %i.mm = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 824), align 8, !tbaa !10
  %i.mn = fpext float %i.mm to double
  %i.mo = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 828), align 4, !tbaa !13
  %i.mp = fpext float %i.mo to double
  %i.mq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.mn, double noundef %i.mp) ; 0 uses
  %i.mr = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 960), align 16, !tbaa !10
  %i.ms = fpext float %i.mr to double
  %i.mt = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 964), align 4, !tbaa !13
  %i.mu = fpext float %i.mt to double
  %i.mv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.ms, double noundef %i.mu) ; 0 uses
  %putchar14.i.3 = tail call i32 @putchar(i32 10) ; 0 uses
  %i.mw = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1096), align 8, !tbaa !10
  %i.mx = fpext float %i.mw to double
  %i.my = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1100), align 4, !tbaa !13
  %i.mz = fpext float %i.my to double
  %i.na = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.mx, double noundef %i.mz) ; 0 uses
  %i.nb = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1232), align 16, !tbaa !10
  %i.nc = fpext float %i.nb to double
  %i.nd = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1236), align 4, !tbaa !13
  %i.ne = fpext float %i.nd to double
  %i.nf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.nc, double noundef %i.ne) ; 0 uses
  %putchar14.i.4 = tail call i32 @putchar(i32 10) ; 0 uses
  %i.ng = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1368), align 8, !tbaa !10
  %i.nh = fpext float %i.ng to double
  %i.ni = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1372), align 4, !tbaa !13
  %i.nj = fpext float %i.ni to double
  %i.nk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.nh, double noundef %i.nj) ; 0 uses
  %i.nl = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1504), align 16, !tbaa !10
  %i.nm = fpext float %i.nl to double
  %i.nn = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1508), align 4, !tbaa !13
  %i.no = fpext float %i.nn to double
  %i.np = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.nm, double noundef %i.no) ; 0 uses
  %putchar14.i.5 = tail call i32 @putchar(i32 10) ; 0 uses
  %i.nq = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1640), align 8, !tbaa !10
  %i.nr = fpext float %i.nq to double
  %i.ns = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1644), align 4, !tbaa !13
  %i.nt = fpext float %i.ns to double
  %i.nu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.nr, double noundef %i.nt) ; 0 uses
  %i.nv = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1776), align 16, !tbaa !10
  %i.nw = fpext float %i.nv to double
  %i.nx = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1780), align 4, !tbaa !13
  %i.ny = fpext float %i.nx to double
  %i.nz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.nw, double noundef %i.ny) ; 0 uses
  %putchar14.i.6 = tail call i32 @putchar(i32 10) ; 0 uses
  %i.oa = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1912), align 8, !tbaa !10
  %i.ob = fpext float %i.oa to double
  %i.oc = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1916), align 4, !tbaa !13
  %i.od = fpext float %i.oc to double
  %i.oe = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.ob, double noundef %i.od) ; 0 uses
  %i.of = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 2048), align 16, !tbaa !10
  %i.og = fpext float %i.of to double
  %i.oh = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 2052), align 4, !tbaa !13
  %i.oi = fpext float %i.oh to double
  %i.oj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.og, double noundef %i.oi) ; 0 uses
  %putchar14.i.7 = tail call i32 @putchar(i32 10) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
bb.a:
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
end_hunk_0
