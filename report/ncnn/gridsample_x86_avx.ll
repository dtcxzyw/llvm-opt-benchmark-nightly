inline.NumInlined: 684
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.atj = mul nsw i32 %i.ati, %i.ath             ; 4 uses
  %i.atk = icmp sgt i32 %i.ath, -1
  %i.atl = icmp sgt i32 %i.asx, %i.ath
  %i.atm = and i1 %i.atk, %i.atl                  ; 3 uses
  %i.atn = and i1 %i.ajg, %i.atm
  %i.ato = and i1 %i.ajh, %i.atm
  br i1 %i.atm, label %bb.cg, label %.thread797

.thread797:                                       ; preds = %.split.3
  store i32 -1, ptr %i.asv, align 4, !tbaa !29
  %i.atp = getelementptr inbounds nuw i8, ptr %.6530, i64 60
  store i32 -1, ptr %i.atp, align 4, !tbaa !29
  %i.atq = getelementptr inbounds nuw i8, ptr %.6530, i64 64
  store i32 -1, ptr %i.atq, align 4, !tbaa !29
  br label %.split526.us

bb.cg:                                            ; preds = %.split.3
  %i.atr = extractelement <4 x i32> %i.aiz, i64 2
  %i.ats = add nsw i32 %i.atj, %i.atr
  %i.att = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.atu = mul nsw i32 %i.att, %i.ats
  store i32 %i.atu, ptr %i.asv, align 4, !tbaa !29
  br i1 %i.aiq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.atv = add nsw i32 %i.atj, %i.aim
  %i.atw = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.atx = mul nsw i32 %i.atw, %i.atv
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.aty = phi i32 [ %i.atx, %bb.ch ], [ -1, %bb.cg ]
  %i.atz = getelementptr inbounds nuw i8, ptr %.6530, i64 60
  store i32 %i.aty, ptr %i.atz, align 4, !tbaa !29
  br i1 %i.atn, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aua = extractelement <4 x i32> %i.aiz, i64 3
  %i.aub = add nsw i32 %i.atj, %i.aua
  %i.auc = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.aud = mul nsw i32 %i.auc, %i.aub
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.aue = phi i32 [ %i.aud, %bb.cj ], [ -1, %bb.ci ]
  %i.auf = getelementptr inbounds nuw i8, ptr %.6530, i64 64
  store i32 %i.aue, ptr %i.auf, align 4, !tbaa !29
  br i1 %i.ato, label %bb.cl, label %.split526.us

bb.cl:                                            ; preds = %bb.ck
  %i.aug = extractelement <4 x i32> %i.aiz, i64 0
  %i.auh = add nsw i32 %i.atj, %i.aug
  %i.aui = load i32, ptr %i.xn, align 8, !tbaa !13
  %i.auj = mul nsw i32 %i.aui, %i.auh
  br label %.split526.us

.loopexit:                                        ; preds = %.split526.us, %._crit_edge, %.preheader511, %.preheader510
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr926 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !367 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader848, label %_ZN4ncnn3MatD2Ev.exit516

.preheader848:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader848
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr926, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.u = add i32 %.fr926, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0879 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !370
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !370
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !370
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph869, label %.preheader

.preheader:                                       ; preds = %.lr.ph869, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.x, %.lr.ph869 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.he, %.lr.ph869 ]
  %.1.lcssa = phi ptr [ %.0879, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hf, %.lr.ph869 ] ; 2 uses
  %i.ae = icmp slt i32 %.0501.lcssa, %.fr926
  br i1 %i.ae, label %.lr.ph876, label %._crit_edge

.lr.ph869:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph869
  %.1868 = phi ptr [ %i.hf, %.lr.ph869 ], [ %.0879, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499867 = phi ptr [ %i.he, %.lr.ph869 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501866 = phi i32 [ %i.hg, %.lr.ph869 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0499867, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0499867, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0499867, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.aw = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.ax = fmul fast <8 x float> %i.av, splat (float 5.000000e-01)
  %i.ay = fmul fast <8 x float> %i.ax, %i.aw
  %i.az = fadd fast <8 x float> %i.ay, splat (float -5.000000e-01) ; 2 uses
  %i.ba = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bb = sitofp fast i32 %i.ba to float
  %i.bc = insertelement <8 x float> poison, float %i.bb, i64 0
  %i.bd = shufflevector <8 x float> %i.bc, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.be = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bf = fadd fast <8 x float> %i.be, splat (float 5.000000e-01)
  %i.bg = fmul fast <8 x float> %i.bf, %i.bd
  %i.bh = fadd fast <8 x float> %i.bg, splat (float -5.000000e-01) ; 2 uses
  %i.bi = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bj = sitofp fast i32 %i.bi to float
  %i.bk = insertelement <8 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <8 x float> %i.bk, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bm = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.bn = fadd fast <8 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = fmul fast <8 x float> %i.bn, %i.bl
  %i.bp = fadd fast <8 x float> %i.bo, splat (float -5.000000e-01) ; 2 uses
  %i.bq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.az, i32 1) ; 5 uses
  %i.br = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bh, i32 1) ; 5 uses
  %i.bs = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bp, i32 1) ; 5 uses
  %i.bt = fadd fast <8 x float> %i.bq, splat (float 1.000000e+00) ; 2 uses
  %i.bu = fadd fast <8 x float> %i.br, splat (float 1.000000e+00) ; 2 uses
  %i.bv = fadd fast <8 x float> %i.bs, splat (float 1.000000e+00) ; 2 uses
  %i.bw = fcmp fast ogt <8 x float> %i.bq, splat (float -1.000000e+00)
  %i.bx = fcmp fast ogt <8 x float> %i.av, %i.bq
  %i.by = and <8 x i1> %i.bw, %i.bx               ; 2 uses
  %i.bz = fcmp fast ogt <8 x float> %i.bt, splat (float -1.000000e+00)
  %i.ca = fcmp fast ogt <8 x float> %i.av, %i.bt
  %i.cb = and <8 x i1> %i.bz, %i.ca               ; 2 uses
  %i.cc = fcmp fast ogt <8 x float> %i.br, splat (float -1.000000e+00)
  %i.cd = fcmp fast ogt <8 x float> %i.bd, %i.br
  %i.ce = and <8 x i1> %i.cc, %i.cd
  %i.cf = sext <8 x i1> %i.ce to <8 x i32>        ; 2 uses
  %i.cg = fcmp fast ogt <8 x float> %i.bu, splat (float -1.000000e+00)
  %i.ch = fcmp fast ogt <8 x float> %i.bd, %i.bu
  %i.ci = and <8 x i1> %i.cg, %i.ch               ; 2 uses
  %i.cj = fcmp fast ogt <8 x float> %i.bs, splat (float -1.000000e+00)
  %i.ck = fcmp fast ogt <8 x float> %i.bl, %i.bs
  %i.cl = and <8 x i1> %i.cj, %i.ck               ; 3 uses
  %i.cm = sext <8 x i1> %i.cl to <8 x i32>
  %i.cn = fcmp fast ogt <8 x float> %i.bv, splat (float -1.000000e+00)
  %i.co = fcmp fast ogt <8 x float> %i.bl, %i.bv
  %i.cp = and <8 x i1> %i.cn, %i.co               ; 4 uses
  %i.cq = and <8 x i1> %i.by, %i.ci               ; 2 uses
  %i.cr = and <8 x i1> %i.cb, %i.ci               ; 2 uses
  %i.cs = bitcast <8 x i32> %i.cf to <8 x float>
  %i.ct = select <8 x i1> %i.by, <8 x float> %i.cs, <8 x float> zeroinitializer ; 2 uses
  %i.cu = select <8 x i1> %i.cl, <8 x float> %i.ct, <8 x float> zeroinitializer
  %i.cv = bitcast <8 x i32> %i.cf to <8 x float>
  %i.cw = select <8 x i1> %i.cb, <8 x float> %i.cv, <8 x float> zeroinitializer ; 2 uses
  %i.cx = select <8 x i1> %i.cl, <8 x float> %i.cw, <8 x float> zeroinitializer
  %i.cy = bitcast <8 x i32> %i.cm to <8 x float>  ; 2 uses
  %i.cz = select <8 x i1> %i.cq, <8 x float> %i.cy, <8 x float> zeroinitializer
  %i.da = select <8 x i1> %i.cr, <8 x float> %i.cy, <8 x float> zeroinitializer
  %i.db = select <8 x i1> %i.cp, <8 x float> %i.ct, <8 x float> zeroinitializer
  %i.dc = select <8 x i1> %i.cp, <8 x float> %i.cw, <8 x float> zeroinitializer
  %i.dd = and <8 x i1> %i.cq, %i.cp
  %i.de = and <8 x i1> %i.cr, %i.cp
  %i.df = fmul fast <8 x float> %i.bd, %i.av      ; 2 uses
  %i.dg = fmul fast <8 x float> %i.br, %i.av
  %i.dh = fadd fast <8 x float> %i.dg, %i.bq
  %i.di = fmul fast <8 x float> %i.df, %i.bs
  %i.dj = fadd fast <8 x float> %i.dh, %i.di
  %i.dk = load i32, ptr %i.t, align 8, !tbaa !13
  %i.dl = sitofp fast i32 %i.dk to float
  %i.dm = insertelement <8 x float> poison, float %i.dl, i64 0
  %i.dn = shufflevector <8 x float> %i.dm, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.do = fmul fast <8 x float> %i.dn, %i.dj      ; 4 uses
  %i.dp = fadd fast <8 x float> %i.do, %i.dn
  %i.dq = fmul fast <8 x float> %i.dn, %i.av      ; 2 uses
  %i.dr = fadd fast <8 x float> %i.do, %i.dq      ; 2 uses
  %i.ds = fadd fast <8 x float> %i.dr, %i.dn
  %i.dt = fmul fast <8 x float> %i.dn, %i.df
  %i.du = fadd fast <8 x float> %i.dt, %i.do      ; 3 uses
  %i.dv = fadd fast <8 x float> %i.du, %i.dn
  %i.dw = fadd fast <8 x float> %i.du, %i.dq      ; 2 uses
  %i.dx = fadd fast <8 x float> %i.dw, %i.dn
  %i.dy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.do, <8 x float> nofpclass(nan inf) %i.cu)
  %i.dz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dp, <8 x float> nofpclass(nan inf) %i.cx)
  %i.ea = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dr, <8 x float> nofpclass(nan inf) %i.cz)
  %i.eb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ds, <8 x float> nofpclass(nan inf) %i.da)
  %i.ec = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.du, <8 x float> nofpclass(nan inf) %i.db)
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dv, <8 x float> nofpclass(nan inf) %i.dc)
  %i.ee = select <8 x i1> %i.dd, <8 x float> %i.dw, <8 x float> splat (float -1.000000e+00)
  %i.ef = select <8 x i1> %i.de, <8 x float> %i.dx, <8 x float> splat (float -1.000000e+00)
  %i.eg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dy) ; 3 uses
  %i.eh = bitcast <8 x i32> %i.eg to <8 x float>
  %i.ei = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dz) ; 4 uses
  %i.ej = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ea) ; 4 uses
  %i.ek = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 4 uses
  %i.el = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ec) ; 4 uses
  %i.em = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ed) ; 4 uses
  %i.en = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ee) ; 4 uses
  %i.eo = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ef) ; 3 uses
  %i.ep = bitcast <8 x i32> %i.eo to <8 x float>  ; 2 uses
  %i.eq = fsub fast <8 x float> %i.az, %i.bq      ; 4 uses
  %i.er = fsub fast <8 x float> %i.bh, %i.br      ; 4 uses
  %i.es = fsub fast <8 x float> %i.bp, %i.bs      ; 4 uses
  %i.et = shufflevector <8 x i32> %i.eg, <8 x i32> %i.ei, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.eu = shufflevector <8 x i32> %i.eg, <8 x i32> %i.ei, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ev = bitcast <8 x i32> %i.eu to <8 x float>  ; 2 uses
  %i.ew = shufflevector <8 x i32> %i.ej, <8 x i32> %i.ek, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ex = shufflevector <8 x i32> %i.ej, <8 x i32> %i.ek, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ey = shufflevector <8 x i32> %i.el, <8 x i32> %i.em, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ez = shufflevector <8 x i32> %i.el, <8 x i32> %i.em, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fa = shufflevector <8 x i32> %i.en, <8 x i32> %i.eo, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x i32> %i.en, <8 x i32> %i.eo, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fc = bitcast <8 x i32> %i.fb to <8 x float>
  %i.fd = shufflevector <8 x float> %i.eq, <8 x float> %i.er, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fe = shufflevector <8 x float> %i.eq, <8 x float> %i.er, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ff = shufflevector <8 x float> %i.es, <8 x float> %i.eh, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fg = shufflevector <8 x float> %i.es, <8 x float> %i.ev, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fh = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ej, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fi = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ej, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fj = bitcast <8 x i32> %i.fi to <8 x float>
  %i.fk = shufflevector <8 x i32> %i.ek, <8 x i32> %i.el, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fl = shufflevector <8 x i32> %i.ek, <8 x i32> %i.el, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fm = shufflevector <8 x i32> %i.em, <8 x i32> %i.en, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fn = bitcast <8 x i32> %i.fm to <8 x float>
  %i.fo = shufflevector <8 x i32> %i.em, <8 x i32> %i.en, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fp = shufflevector <8 x float> %i.ep, <8 x float> %i.eq, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fq = shufflevector <8 x float> %i.ep, <8 x float> %i.eq, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fr = shufflevector <8 x float> %i.er, <8 x float> %i.es, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fs = shufflevector <8 x float> %i.er, <8 x float> %i.es, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ft = shufflevector <8 x i32> %i.et, <8 x i32> %i.ew, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fu = bitcast <8 x i32> %i.ft to <8 x float>
  %i.fv = shufflevector <8 x i32> %i.ey, <8 x i32> %i.fa, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fw = bitcast <8 x i32> %i.fv to <8 x float>
  %i.fx = shufflevector <8 x float> %i.fd, <8 x float> %i.ff, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.fy = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.fz = bitcast <8 x i32> %i.fy to <8 x float>  ; 2 uses
  %i.ga = shufflevector <8 x float> %i.fn, <8 x float> %i.fp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gb = shufflevector <8 x float> %i.fr, <8 x float> %i.ev, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.gc = shufflevector <8 x i32> %i.ex, <8 x i32> %i.ez, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gd = bitcast <8 x i32> %i.gc to <8 x float>  ; 2 uses
  %i.ge = shufflevector <8 x float> %i.fc, <8 x float> %i.fe, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gf = shufflevector <8 x float> %i.fg, <8 x float> %i.fj, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.fl, <8 x i32> %i.fo, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gh = bitcast <8 x i32> %i.gg to <8 x float>  ; 2 uses
  %i.gi = shufflevector <8 x float> %i.fq, <8 x float> %i.fs, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gj = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gk = shufflevector <8 x float> %i.fx, <8 x float> %i.fz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gl = shufflevector <8 x float> %i.ga, <8 x float> %i.gb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gm = shufflevector <8 x float> %i.gd, <8 x float> %i.ge, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gn = shufflevector <8 x float> %i.gf, <8 x float> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.go = shufflevector <8 x float> %i.gi, <8 x float> %i.fu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gp = shufflevector <8 x float> %i.fw, <8 x float> %i.fx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gq = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gr = shufflevector <8 x float> %i.gb, <8 x float> %i.gd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gs = shufflevector <8 x float> %i.ge, <8 x float> %i.gf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gt = shufflevector <8 x float> %i.gh, <8 x float> %i.gi, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gj, ptr %.1868, align 1, !tbaa !63
  %i.gu = getelementptr inbounds nuw i8, ptr %.1868, i64 32
  store <8 x float> %i.gk, ptr %i.gu, align 1, !tbaa !63
  %i.gv = getelementptr inbounds nuw i8, ptr %.1868, i64 64
  store <8 x float> %i.gl, ptr %i.gv, align 1, !tbaa !63
  %i.gw = getelementptr inbounds nuw i8, ptr %.1868, i64 96
  store <8 x float> %i.gm, ptr %i.gw, align 1, !tbaa !63
  %i.gx = getelementptr inbounds nuw i8, ptr %.1868, i64 128
  store <8 x float> %i.gn, ptr %i.gx, align 1, !tbaa !63
  %i.gy = getelementptr inbounds nuw i8, ptr %.1868, i64 160
  store <8 x float> %i.go, ptr %i.gy, align 1, !tbaa !63
  %i.gz = getelementptr inbounds nuw i8, ptr %.1868, i64 192
  store <8 x float> %i.gp, ptr %i.gz, align 1, !tbaa !63
  %i.ha = getelementptr inbounds nuw i8, ptr %.1868, i64 224
  store <8 x float> %i.gq, ptr %i.ha, align 1, !tbaa !63
  %i.hb = getelementptr inbounds nuw i8, ptr %.1868, i64 256
  store <8 x float> %i.gr, ptr %i.hb, align 1, !tbaa !63
  %i.hc = getelementptr inbounds nuw i8, ptr %.1868, i64 288
  store <8 x float> %i.gs, ptr %i.hc, align 1, !tbaa !63
  %i.hd = getelementptr inbounds nuw i8, ptr %.1868, i64 320
  store <8 x float> %i.gt, ptr %i.hd, align 1, !tbaa !63
  %i.he = getelementptr inbounds nuw i8, ptr %.0499867, i64 96 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.1868, i64 352 ; 2 uses
  %i.hg = add nuw nsw i32 %.0501866, 24
  %i.hh = add nuw nsw i32 %.0501866, 47
  %i.hi = icmp slt i32 %i.hh, %.fr926
  br i1 %i.hi, label %.lr.ph869, label %.preheader, !llvm.loop !373

.lr.ph876:                                        ; preds = %.preheader, %bb.p
  %.2875 = phi ptr [ %i.mc, %bb.p ], [ %.1.lcssa, %.preheader ] ; 11 uses
  %.1500874 = phi ptr [ %i.mb, %bb.p ], [ %.0499.lcssa, %.preheader ] ; 3 uses
  %.1502873 = phi i32 [ %i.md, %bb.p ], [ %.0501.lcssa, %.preheader ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.1500874, i64 8
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !66
  %i.hl = load i32, ptr %i.s, align 4, !tbaa !55  ; 3 uses
  %i.hm = sitofp fast i32 %i.hl to float
  %i.hn = fmul fast float %i.hk, 5.000000e-01
  %i.ho = fadd fast float %i.hn, 5.000000e-01
  %i.hp = fmul fast float %i.ho, %i.hm
  %i.hq = fadd fast float %i.hp, -5.000000e-01    ; 2 uses
  %i.hr = load <2 x float>, ptr %.1500874, align 4, !tbaa !66
  %i.hs = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.ht = sitofp <2 x i32> %i.hs to <2 x float>
  %i.hu = fmul fast <2 x float> %i.hr, splat (float 5.000000e-01)
  %i.hv = fadd fast <2 x float> %i.hu, splat (float 5.000000e-01)
  %i.hw = fmul fast <2 x float> %i.hv, %i.ht
  %i.hx = fadd fast <2 x float> %i.hw, splat (float -5.000000e-01) ; 2 uses
  %i.hy = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.hx)
  %i.hz = fptosi <2 x float> %i.hy to <2 x i32>   ; 5 uses
  %i.ia = tail call fast float @llvm.floor.f32(float %i.hq)
  %i.ib = fptosi float %i.ia to i32               ; 9 uses
  %i.ic = extractelement <2 x i32> %i.hz, i64 0   ; 6 uses
  %i.id = add nsw i32 %i.ic, 1                    ; 5 uses
  %i.ie = extractelement <2 x i32> %i.hz, i64 1   ; 6 uses
  %i.if = add nsw i32 %i.ie, 1                    ; 5 uses
  %i.ig = add nsw i32 %i.ib, 1                    ; 5 uses
  %i.ih = icmp sgt <2 x i32> %i.hz, splat (i32 -1)
  %i.ii = icmp sgt <2 x i32> %i.hs, %i.hz
  %i.ij = and <2 x i1> %i.ih, %i.ii               ; 2 uses
  %i.ik = icmp sgt i32 %i.ib, -1
  %i.il = icmp sgt i32 %i.hl, %i.ib
  %i.im = and i1 %i.ik, %i.il                     ; 4 uses
  %i.in = icmp sgt i32 %i.ic, -2
  %i.io = extractelement <2 x i32> %i.hs, i64 0   ; 2 uses
  %i.ip = icmp slt i32 %i.id, %i.io
  %i.iq = and i1 %i.in, %i.ip                     ; 2 uses
  %i.ir = icmp sgt i32 %i.ie, -2
  %i.is = extractelement <2 x i32> %i.hs, i64 1   ; 2 uses
  %i.it = icmp slt i32 %i.if, %i.is
  %i.iu = and i1 %i.ir, %i.it                     ; 2 uses
  %i.iv = icmp sgt i32 %i.ib, -2
  %i.iw = icmp slt i32 %i.ig, %i.hl
  %i.ix = and i1 %i.iv, %i.iw                     ; 4 uses
  %i.iy = extractelement <2 x i1> %i.ij, i64 0    ; 2 uses
  %i.iz = extractelement <2 x i1> %i.ij, i64 1    ; 2 uses
  %i.ja = and i1 %i.iy, %i.iz                     ; 2 uses
  %i.jb = and i1 %i.iq, %i.iz                     ; 2 uses
  %i.jc = and i1 %i.iy, %i.iu                     ; 2 uses
  %i.jd = and i1 %i.iq, %i.iu                     ; 2 uses
  %i.je = and i1 %i.ja, %i.im
  %i.jf = and i1 %i.jb, %i.im
  %i.jg = and i1 %i.im, %i.jc
  %i.jh = and i1 %i.im, %i.jd
  %i.ji = and i1 %i.ja, %i.ix
  %i.jj = and i1 %i.jb, %i.ix
  %i.jk = and i1 %i.jc, %i.ix
  %i.jl = and i1 %i.jd, %i.ix
  %i.jm = getelementptr inbounds nuw i8, ptr %.2875, i64 32
  br i1 %i.je, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph876
  %i.jn = mul i32 %i.is, %i.ib
  %reass.add832 = add i32 %i.jn, %i.ie
  %reass.mul833 = mul i32 %reass.add832, %i.io
  %i.jo = add i32 %reass.mul833, %i.ic
  %i.jp = load i32, ptr %i.t, align 8, !tbaa !13
  %i.jq = mul nsw i32 %i.jp, %i.jo
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph876, %bb.a
  %i.jr = phi i32 [ %i.jq, %bb.a ], [ -1, %.lr.ph876 ]
  store i32 %i.jr, ptr %.2875, align 4, !tbaa !29
  br i1 %i.jf, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.js = load i32, ptr %i.q, align 4, !tbaa !52
  %i.jt = load i32, ptr %i.r, align 8, !tbaa !53
  %i.ju = mul i32 %i.jt, %i.ib
  %reass.add834 = add i32 %i.ju, %i.ie
  %reass.mul835 = mul i32 %reass.add834, %i.js
  %i.jv = add i32 %reass.mul835, %i.id
  %i.jw = load i32, ptr %i.t, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %reass.add840 = add i32 %i.ks, %i.ie
  %reass.mul841 = mul i32 %reass.add840, %i.kq
  %i.kt = add i32 %reass.mul841, %i.ic
  %i.ku = load i32, ptr %i.t, align 8, !tbaa !13
  %i.kv = mul nsw i32 %i.kt, %i.ku
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.kw = phi i32 [ %i.kv, %bb.i ], [ -1, %bb.h ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.2875, i64 16
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !29
  br i1 %i.jj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ky = load i32, ptr %i.q, align 4, !tbaa !52
  %i.kz = load i32, ptr %i.r, align 8, !tbaa !53
  %i.la = mul i32 %i.kz, %i.ig
  %reass.add842 = add i32 %i.la, %i.ie
  %reass.mul843 = mul i32 %reass.add842, %i.ky
  %i.lb = add i32 %reass.mul843, %i.id
  %i.lc = load i32, ptr %i.t, align 8, !tbaa !13
  %i.ld = mul nsw i32 %i.lb, %i.lc
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.le = phi i32 [ %i.ld, %bb.k ], [ -1, %bb.j ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.2875, i64 20
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !29
  br i1 %i.jk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lg = load i32, ptr %i.q, align 4, !tbaa !52
  %i.lh = load i32, ptr %i.r, align 8, !tbaa !53
  %i.li = mul i32 %i.lh, %i.ig
  %reass.add844 = add i32 %i.li, %i.if
  %reass.mul845 = mul i32 %reass.add844, %i.lg
  %i.lj = add i32 %reass.mul845, %i.ic
  %i.lk = load i32, ptr %i.t, align 8, !tbaa !13
  %i.ll = mul nsw i32 %i.lj, %i.lk
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.lm = phi i32 [ %i.ll, %bb.m ], [ -1, %bb.l ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.2875, i64 24
  store i32 %i.lm, ptr %i.ln, align 4, !tbaa !29
  br i1 %i.jl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.lo = load i32, ptr %i.q, align 4, !tbaa !52
  %i.lp = load i32, ptr %i.r, align 8, !tbaa !53
  %i.lq = mul i32 %i.lp, %i.ig
  %reass.add846 = add i32 %i.lq, %i.if
  %reass.mul847 = mul i32 %reass.add846, %i.lo
  %i.lr = add i32 %reass.mul847, %i.id
  %i.ls = load i32, ptr %i.t, align 8, !tbaa !13
  %i.lt = mul nsw i32 %i.lr, %i.ls
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.lu = phi i32 [ %i.lt, %bb.o ], [ -1, %bb.n ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.2875, i64 28
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !29
  %i.lw = sitofp <2 x i32> %i.hz to <2 x float>
  %i.lx = fsub fast <2 x float> %i.hx, %i.lw
  store <2 x float> %i.lx, ptr %i.jm, align 4, !tbaa !66
  %i.ly = sitofp fast i32 %i.ib to float
  %i.lz = fsub fast float %i.hq, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %.2875, i64 40
  store float %i.lz, ptr %i.ma, align 4, !tbaa !66
  %i.mb = getelementptr inbounds nuw i8, ptr %.1500874, i64 12
  %i.mc = getelementptr inbounds nuw i8, ptr %.2875, i64 44 ; 2 uses
  %i.md = add nuw nsw i32 %.1502873, 3            ; 2 uses
  %i.me = icmp slt i32 %i.md, %.fr926
  br i1 %i.me, label %.lr.ph876, label %._crit_edge, !llvm.loop !374

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.mc, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mf = load i32, ptr %i.k, align 8, !tbaa !18
  %i.mg = sext i32 %i.mf to i64
  %i.mh = icmp slt i64 %indvars.iv.next, %i.mg
  br i1 %i.mh, label %_ZN4ncnn3MatD2Ev.exit517, label %.loopexit, !llvm.loop !375

_ZN4ncnn3MatD2Ev.exit516:                         ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.mi = load ptr, ptr %1, align 8, !tbaa !24, !noalias !376 ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !21, !noalias !379 ; 2 uses
  %i.mm = load i64, ptr %i.mk, align 8, !tbaa !20, !noalias !379 ; 2 uses
  %i.mn = mul i64 %i.mm, %i.ml
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mn ; 2 uses
  %i.mp = shl i64 %i.ml, 1
  %i.mq = mul i64 %i.mp, %i.mm
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mq ; 2 uses
  %i.ms = icmp sgt i32 %.fr926, 7
  br i1 %i.ms, label %.lr.ph, label %.preheader849

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit516
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

.preheader849.loopexit:                           ; preds = %bb.q
  %i.mx = and i32 %.fr926, 2147483640
  br label %.preheader849

.preheader849:                                    ; preds = %.preheader849.loopexit, %_ZN4ncnn3MatD2Ev.exit516
  %.0509.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.mx, %.preheader849.loopexit ] ; 2 uses
  %.0507.lcssa = phi ptr [ %i.mr, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.tu, %.preheader849.loopexit ]
  %.0505.lcssa = phi ptr [ %i.mo, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.tt, %.preheader849.loopexit ]
  %.0503.lcssa = phi ptr [ %i.mi, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.ts, %.preheader849.loopexit ]
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.tv, %.preheader849.loopexit ]
  %i.my = icmp slt i32 %.0509.lcssa, %.fr926
  br i1 %i.my, label %.lr.ph865, label %.loopexit

.lr.ph865:                                        ; preds = %.preheader849
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.3855 = phi ptr [ %i.i, %.lr.ph ], [ %i.tv, %bb.q ] ; 12 uses
  %.0503854 = phi ptr [ %i.mi, %.lr.ph ], [ %i.ts, %bb.q ] ; 2 uses
  %.0505853 = phi ptr [ %i.mo, %.lr.ph ], [ %i.tt, %bb.q ] ; 2 uses
  %.0507852 = phi ptr [ %i.mr, %.lr.ph ], [ %i.tu, %bb.q ] ; 2 uses
  %.0509851 = phi i32 [ 0, %.lr.ph ], [ %i.tw, %bb.q ]
  %i.nd = load <8 x float>, ptr %.0503854, align 1, !tbaa !63
  %i.ne = load <8 x float>, ptr %.0505853, align 1, !tbaa !63
  %i.nf = load <8 x float>, ptr %.0507852, align 1, !tbaa !63
  %i.ng = load i32, ptr %i.mt, align 4, !tbaa !52
  %i.nh = sitofp fast i32 %i.ng to float
  %i.ni = insertelement <8 x float> poison, float %i.nh, i64 0
  %i.nj = shufflevector <8 x float> %i.ni, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.nk = fmul fast <8 x float> %i.nd, splat (float 5.000000e-01)
  %i.nl = fadd fast <8 x float> %i.nk, splat (float 5.000000e-01)
  %i.nm = fmul fast <8 x float> %i.nl, %i.nj
  %i.nn = fadd fast <8 x float> %i.nm, splat (float -5.000000e-01) ; 2 uses
  %i.no = load i32, ptr %i.mu, align 8, !tbaa !53
  %i.np = sitofp fast i32 %i.no to float
  %i.nq = insertelement <8 x float> poison, float %i.np, i64 0
  %i.nr = shufflevector <8 x float> %i.nq, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ns = fmul fast <8 x float> %i.ne, splat (float 5.000000e-01)
  %i.nt = fadd fast <8 x float> %i.ns, splat (float 5.000000e-01)
  %i.nu = fmul fast <8 x float> %i.nt, %i.nr
  %i.nv = fadd fast <8 x float> %i.nu, splat (float -5.000000e-01) ; 2 uses
  %i.nw = load i32, ptr %i.mv, align 4, !tbaa !55
  %i.nx = sitofp fast i32 %i.nw to float
  %i.ny = insertelement <8 x float> poison, float %i.nx, i64 0
  %i.nz = shufflevector <8 x float> %i.ny, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.oa = fmul fast <8 x float> %i.nf, splat (float 5.000000e-01)
  %i.ob = fadd fast <8 x float> %i.oa, splat (float 5.000000e-01)
  %i.oc = fmul fast <8 x float> %i.ob, %i.nz
  %i.od = fadd fast <8 x float> %i.oc, splat (float -5.000000e-01) ; 2 uses
  %i.oe = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nn, i32 1) ; 5 uses
  %i.of = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nv, i32 1) ; 5 uses
  %i.og = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.od, i32 1) ; 5 uses
  %i.oh = fadd fast <8 x float> %i.oe, splat (float 1.000000e+00) ; 2 uses
  %i.oi = fadd fast <8 x float> %i.of, splat (float 1.000000e+00) ; 2 uses
  %i.oj = fadd fast <8 x float> %i.og, splat (float 1.000000e+00) ; 2 uses
  %i.ok = fcmp fast ogt <8 x float> %i.oe, splat (float -1.000000e+00)
  %i.ol = fcmp fast ogt <8 x float> %i.nj, %i.oe
  %i.om = and <8 x i1> %i.ok, %i.ol               ; 2 uses
  %i.on = fcmp fast ogt <8 x float> %i.oh, splat (float -1.000000e+00)
  %i.oo = fcmp fast ogt <8 x float> %i.nj, %i.oh
  %i.op = and <8 x i1> %i.on, %i.oo               ; 2 uses
  %i.oq = fcmp fast ogt <8 x float> %i.of, splat (float -1.000000e+00)
  %i.or = fcmp fast ogt <8 x float> %i.nr, %i.of
  %i.os = and <8 x i1> %i.oq, %i.or
  %i.ot = sext <8 x i1> %i.os to <8 x i32>        ; 2 uses
  %i.ou = fcmp fast ogt <8 x float> %i.oi, splat (float -1.000000e+00)
  %i.ov = fcmp fast ogt <8 x float> %i.nr, %i.oi
  %i.ow = and <8 x i1> %i.ou, %i.ov               ; 2 uses
  %i.ox = fcmp fast ogt <8 x float> %i.og, splat (float -1.000000e+00)
  %i.oy = fcmp fast ogt <8 x float> %i.nz, %i.og
  %i.oz = and <8 x i1> %i.ox, %i.oy               ; 3 uses
  %i.pa = sext <8 x i1> %i.oz to <8 x i32>
  %i.pb = fcmp fast ogt <8 x float> %i.oj, splat (float -1.000000e+00)
  %i.pc = fcmp fast ogt <8 x float> %i.nz, %i.oj
  %i.pd = and <8 x i1> %i.pb, %i.pc               ; 4 uses
  %i.pe = and <8 x i1> %i.om, %i.ow               ; 2 uses
  %i.pf = and <8 x i1> %i.op, %i.ow               ; 2 uses
  %i.pg = bitcast <8 x i32> %i.ot to <8 x float>
  %i.ph = select <8 x i1> %i.om, <8 x float> %i.pg, <8 x float> zeroinitializer ; 2 uses
  %i.pi = select <8 x i1> %i.oz, <8 x float> %i.ph, <8 x float> zeroinitializer
  %i.pj = bitcast <8 x i32> %i.ot to <8 x float>
  %i.pk = select <8 x i1> %i.op, <8 x float> %i.pj, <8 x float> zeroinitializer ; 2 uses
  %i.pl = select <8 x i1> %i.oz, <8 x float> %i.pk, <8 x float> zeroinitializer
  %i.pm = bitcast <8 x i32> %i.pa to <8 x float>  ; 2 uses
  %i.pn = select <8 x i1> %i.pe, <8 x float> %i.pm, <8 x float> zeroinitializer
  %i.po = select <8 x i1> %i.pf, <8 x float> %i.pm, <8 x float> zeroinitializer
  %i.pp = select <8 x i1> %i.pd, <8 x float> %i.ph, <8 x float> zeroinitializer
  %i.pq = select <8 x i1> %i.pd, <8 x float> %i.pk, <8 x float> zeroinitializer
  %i.pr = and <8 x i1> %i.pe, %i.pd
  %i.ps = and <8 x i1> %i.pf, %i.pd
  %i.pt = fmul fast <8 x float> %i.nr, %i.nj      ; 2 uses
  %i.pu = fmul fast <8 x float> %i.of, %i.nj
  %i.pv = fadd fast <8 x float> %i.pu, %i.oe
  %i.pw = fmul fast <8 x float> %i.pt, %i.og
  %i.px = fadd fast <8 x float> %i.pv, %i.pw
  %i.py = load i32, ptr %i.mw, align 8, !tbaa !13
  %i.pz = sitofp fast i32 %i.py to float
  %i.qa = insertelement <8 x float> poison, float %i.pz, i64 0
  %i.qb = shufflevector <8 x float> %i.qa, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.qc = fmul fast <8 x float> %i.qb, %i.px      ; 4 uses
  %i.qd = fadd fast <8 x float> %i.qc, %i.qb
  %i.qe = fmul fast <8 x float> %i.qb, %i.nj      ; 2 uses
  %i.qf = fadd fast <8 x float> %i.qc, %i.qe      ; 2 uses
  %i.qg = fadd fast <8 x float> %i.qf, %i.qb
  %i.qh = fmul fast <8 x float> %i.qb, %i.pt
  %i.qi = fadd fast <8 x float> %i.qh, %i.qc      ; 3 uses
  %i.qj = fadd fast <8 x float> %i.qi, %i.qb
  %i.qk = fadd fast <8 x float> %i.qi, %i.qe      ; 2 uses
  %i.ql = fadd fast <8 x float> %i.qk, %i.qb
  %i.qm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qc, <8 x float> nofpclass(nan inf) %i.pi)
  %i.qn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qd, <8 x float> nofpclass(nan inf) %i.pl)
  %i.qo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qf, <8 x float> nofpclass(nan inf) %i.pn)
  %i.qp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qg, <8 x float> nofpclass(nan inf) %i.po)
  %i.qq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qi, <8 x float> nofpclass(nan inf) %i.pp)
  %i.qr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qj, <8 x float> nofpclass(nan inf) %i.pq)
  %i.qs = select <8 x i1> %i.pr, <8 x float> %i.qk, <8 x float> splat (float -1.000000e+00)
  %i.qt = select <8 x i1> %i.ps, <8 x float> %i.ql, <8 x float> splat (float -1.000000e+00)
  %i.qu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qm) ; 3 uses
  %i.qv = bitcast <8 x i32> %i.qu to <8 x float>
  %i.qw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qn) ; 4 uses
  %i.qx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qo) ; 4 uses
  %i.qy = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qp) ; 4 uses
  %i.qz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qq) ; 4 uses
  %i.ra = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qr) ; 4 uses
  %i.rb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qs) ; 4 uses
  %i.rc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qt) ; 3 uses
  %i.rd = bitcast <8 x i32> %i.rc to <8 x float>  ; 2 uses
  %i.re = fsub fast <8 x float> %i.nn, %i.oe      ; 4 uses
  %i.rf = fsub fast <8 x float> %i.nv, %i.of      ; 4 uses
  %i.rg = fsub fast <8 x float> %i.od, %i.og      ; 4 uses
  %i.rh = shufflevector <8 x i32> %i.qu, <8 x i32> %i.qw, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ri = shufflevector <8 x i32> %i.qu, <8 x i32> %i.qw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.rj = bitcast <8 x i32> %i.ri to <8 x float>  ; 2 uses
  %i.rk = shufflevector <8 x i32> %i.qx, <8 x i32> %i.qy, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rl = shufflevector <8 x i32> %i.qx, <8 x i32> %i.qy, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rm = shufflevector <8 x i32> %i.qz, <8 x i32> %i.ra, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rn = shufflevector <8 x i32> %i.qz, <8 x i32> %i.ra, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ro = shufflevector <8 x i32> %i.rb, <8 x i32> %i.rc, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rp = shufflevector <8 x i32> %i.rb, <8 x i32> %i.rc, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rq = bitcast <8 x i32> %i.rp to <8 x float>
  %i.rr = shufflevector <8 x float> %i.re, <8 x float> %i.rf, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rs = shufflevector <8 x float> %i.re, <8 x float> %i.rf, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rt = shufflevector <8 x float> %i.rg, <8 x float> %i.qv, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.ru = shufflevector <8 x float> %i.rg, <8 x float> %i.rj, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.rv = shufflevector <8 x i32> %i.qw, <8 x i32> %i.qx, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.rw = shufflevector <8 x i32> %i.qw, <8 x i32> %i.qx, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.rx = bitcast <8 x i32> %i.rw to <8 x float>
  %i.ry = shufflevector <8 x i32> %i.qy, <8 x i32> %i.qz, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.rz = shufflevector <8 x i32> %i.qy, <8 x i32> %i.qz, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sa = shufflevector <8 x i32> %i.ra, <8 x i32> %i.rb, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sb = bitcast <8 x i32> %i.sa to <8 x float>
  %i.sc = shufflevector <8 x i32> %i.ra, <8 x i32> %i.rb, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sd = shufflevector <8 x float> %i.rd, <8 x float> %i.re, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.se = shufflevector <8 x float> %i.rd, <8 x float> %i.re, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sf = shufflevector <8 x float> %i.rf, <8 x float> %i.rg, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sg = shufflevector <8 x float> %i.rf, <8 x float> %i.rg, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sh = shufflevector <8 x i32> %i.rh, <8 x i32> %i.rk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.si = bitcast <8 x i32> %i.sh to <8 x float>
  %i.sj = shufflevector <8 x i32> %i.rm, <8 x i32> %i.ro, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.sk = bitcast <8 x i32> %i.sj to <8 x float>
  %i.sl = shufflevector <8 x float> %i.rr, <8 x float> %i.rt, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.sm = shufflevector <8 x i32> %i.rv, <8 x i32> %i.ry, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.sn = bitcast <8 x i32> %i.sm to <8 x float>  ; 2 uses
  %i.so = shufflevector <8 x float> %i.sb, <8 x float> %i.sd, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.sp = shufflevector <8 x float> %i.sf, <8 x float> %i.rj, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.sq = shufflevector <8 x i32> %i.rl, <8 x i32> %i.rn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.sr = bitcast <8 x i32> %i.sq to <8 x float>  ; 2 uses
  %i.ss = shufflevector <8 x float> %i.rq, <8 x float> %i.rs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.st = shufflevector <8 x float> %i.ru, <8 x float> %i.rx, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.su = shufflevector <8 x i32> %i.rz, <8 x i32> %i.sc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.sv = bitcast <8 x i32> %i.su to <8 x float>  ; 2 uses
  %i.sw = shufflevector <8 x float> %i.se, <8 x float> %i.sg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.sx = shufflevector <8 x i32> %i.sh, <8 x i32> %i.sj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sy = shufflevector <8 x float> %i.sl, <8 x float> %i.sn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sz = shufflevector <8 x float> %i.so, <8 x float> %i.sp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ta = shufflevector <8 x float> %i.sr, <8 x float> %i.ss, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tb = shufflevector <8 x float> %i.st, <8 x float> %i.sv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tc = shufflevector <8 x float> %i.sw, <8 x float> %i.si, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.td = shufflevector <8 x float> %i.sk, <8 x float> %i.sl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.te = shufflevector <8 x float> %i.sn, <8 x float> %i.so, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tf = shufflevector <8 x float> %i.sp, <8 x float> %i.sr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tg = shufflevector <8 x float> %i.ss, <8 x float> %i.st, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.th = shufflevector <8 x float> %i.sv, <8 x float> %i.sw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.sx, ptr %.3855, align 1, !tbaa !63
  %i.ti = getelementptr inbounds nuw i8, ptr %.3855, i64 32
  store <8 x float> %i.sy, ptr %i.ti, align 1, !tbaa !63
  %i.tj = getelementptr inbounds nuw i8, ptr %.3855, i64 64
  store <8 x float> %i.sz, ptr %i.tj, align 1, !tbaa !63
  %i.tk = getelementptr inbounds nuw i8, ptr %.3855, i64 96
  store <8 x float> %i.ta, ptr %i.tk, align 1, !tbaa !63
  %i.tl = getelementptr inbounds nuw i8, ptr %.3855, i64 128
  store <8 x float> %i.tb, ptr %i.tl, align 1, !tbaa !63
  %i.tm = getelementptr inbounds nuw i8, ptr %.3855, i64 160
  store <8 x float> %i.tc, ptr %i.tm, align 1, !tbaa !63
  %i.tn = getelementptr inbounds nuw i8, ptr %.3855, i64 192
  store <8 x float> %i.td, ptr %i.tn, align 1, !tbaa !63
  %i.to = getelementptr inbounds nuw i8, ptr %.3855, i64 224
  store <8 x float> %i.te, ptr %i.to, align 1, !tbaa !63
  %i.tp = getelementptr inbounds nuw i8, ptr %.3855, i64 256
  store <8 x float> %i.tf, ptr %i.tp, align 1, !tbaa !63
  %i.tq = getelementptr inbounds nuw i8, ptr %.3855, i64 288
  store <8 x float> %i.tg, ptr %i.tq, align 1, !tbaa !63
  %i.tr = getelementptr inbounds nuw i8, ptr %.3855, i64 320
  store <8 x float> %i.th, ptr %i.tr, align 1, !tbaa !63
  %i.ts = getelementptr inbounds nuw i8, ptr %.0503854, i64 32 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.0505853, i64 32 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0507852, i64 32 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.3855, i64 352 ; 2 uses
  %i.tw = add nuw nsw i32 %.0509851, 8            ; 2 uses
  %i.tx = or disjoint i32 %i.tw, 7
  %i.ty = icmp slt i32 %i.tx, %.fr926
  br i1 %i.ty, label %bb.q, label %.preheader849.loopexit, !llvm.loop !382

bb.r:                                             ; preds = %.lr.ph865, %bb.ah
  %.4864 = phi ptr [ %.3.lcssa, %.lr.ph865 ], [ %i.yw, %bb.ah ] ; 11 uses
  %.1504863 = phi ptr [ %.0503.lcssa, %.lr.ph865 ], [ %i.yt, %bb.ah ] ; 2 uses
  %.1506862 = phi ptr [ %.0505.lcssa, %.lr.ph865 ], [ %i.yu, %bb.ah ] ; 2 uses
  %.1508861 = phi ptr [ %.0507.lcssa, %.lr.ph865 ], [ %i.yv, %bb.ah ] ; 2 uses
  %.1510860 = phi i32 [ %.0509.lcssa, %.lr.ph865 ], [ %i.yx, %bb.ah ]
  %i.tz = load float, ptr %.1504863, align 4, !tbaa !66
  %i.ua = load float, ptr %.1506862, align 4, !tbaa !66
  %i.ub = load float, ptr %.1508861, align 4, !tbaa !66
  %i.uc = load i32, ptr %i.nb, align 4, !tbaa !55 ; 3 uses
  %i.ud = sitofp fast i32 %i.uc to float
  %i.ue = fmul fast float %i.ub, 5.000000e-01
  %i.uf = fadd fast float %i.ue, 5.000000e-01
  %i.ug = fmul fast float %i.uf, %i.ud
  %i.uh = fadd fast float %i.ug, -5.000000e-01    ; 2 uses
  %i.ui = load <2 x i32>, ptr %i.mz, align 4, !tbaa !29 ; 4 uses
  %i.uj = sitofp <2 x i32> %i.ui to <2 x float>
  %i.uk = insertelement <2 x float> poison, float %i.tz, i64 0
  %i.ul = insertelement <2 x float> %i.uk, float %i.ua, i64 1
  %i.um = fmul fast <2 x float> %i.ul, splat (float 5.000000e-01)
  %i.un = fadd fast <2 x float> %i.um, splat (float 5.000000e-01)
  %i.uo = fmul fast <2 x float> %i.un, %i.uj
  %i.up = fadd fast <2 x float> %i.uo, splat (float -5.000000e-01) ; 2 uses
  %i.uq = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.up)
  %i.ur = fptosi <2 x float> %i.uq to <2 x i32>   ; 5 uses
  %i.us = tail call fast float @llvm.floor.f32(float %i.uh)
  %i.ut = fptosi float %i.us to i32               ; 9 uses
  %i.uu = extractelement <2 x i32> %i.ur, i64 0   ; 6 uses
  %i.uv = add nsw i32 %i.uu, 1                    ; 5 uses
  %i.uw = extractelement <2 x i32> %i.ur, i64 1   ; 6 uses
  %i.ux = add nsw i32 %i.uw, 1                    ; 5 uses
  %i.uy = add nsw i32 %i.ut, 1                    ; 5 uses
  %i.uz = icmp sgt <2 x i32> %i.ur, splat (i32 -1)
  %i.va = icmp sgt <2 x i32> %i.ui, %i.ur
  %i.vb = and <2 x i1> %i.uz, %i.va               ; 2 uses
  %i.vc = icmp sgt i32 %i.ut, -1
  %i.vd = icmp sgt i32 %i.uc, %i.ut
  %i.ve = and i1 %i.vc, %i.vd                     ; 4 uses
  %i.vf = icmp sgt i32 %i.uu, -2
  %i.vg = extractelement <2 x i32> %i.ui, i64 0   ; 2 uses
  %i.vh = icmp slt i32 %i.uv, %i.vg
  %i.vi = and i1 %i.vf, %i.vh                     ; 2 uses
  %i.vj = icmp sgt i32 %i.uw, -2
  %i.vk = extractelement <2 x i32> %i.ui, i64 1   ; 2 uses
  %i.vl = icmp slt i32 %i.ux, %i.vk
  %i.vm = and i1 %i.vj, %i.vl                     ; 2 uses
  %i.vn = icmp sgt i32 %i.ut, -2
  %i.vo = icmp slt i32 %i.uy, %i.uc
  %i.vp = and i1 %i.vn, %i.vo                     ; 4 uses
  %i.vq = extractelement <2 x i1> %i.vb, i64 0    ; 2 uses
  %i.vr = extractelement <2 x i1> %i.vb, i64 1    ; 2 uses
  %i.vs = and i1 %i.vq, %i.vr                     ; 2 uses
  %i.vt = and i1 %i.vi, %i.vr                     ; 2 uses
  %i.vu = and i1 %i.vq, %i.vm                     ; 2 uses
  %i.vv = and i1 %i.vi, %i.vm                     ; 2 uses
  %i.vw = and i1 %i.vs, %i.ve
  %i.vx = and i1 %i.vt, %i.ve
  %i.vy = and i1 %i.ve, %i.vu
  %i.vz = and i1 %i.ve, %i.vv
  %i.wa = and i1 %i.vs, %i.vp
  %i.wb = and i1 %i.vt, %i.vp
  %i.wc = and i1 %i.vu, %i.vp
  %i.wd = and i1 %i.vv, %i.vp
  %i.we = getelementptr inbounds nuw i8, ptr %.4864, i64 32
  br i1 %i.vw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.wf = mul i32 %i.vk, %i.ut
  %reass.add = add i32 %i.wf, %i.uw
  %reass.mul = mul i32 %reass.add, %i.vg
  %i.wg = add i32 %reass.mul, %i.uu
  %i.wh = load i32, ptr %i.nc, align 8, !tbaa !13
  %i.wi = mul nsw i32 %i.wh, %i.wg
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.wj = phi i32 [ %i.wi, %bb.s ], [ -1, %bb.r ]
  store i32 %i.wj, ptr %.4864, align 4, !tbaa !29
  br i1 %i.vx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.wk = load i32, ptr %i.mz, align 4, !tbaa !52
end_hunk_1
begin_hunk_2_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.xt = add i32 %reass.mul827, %i.uv
  %i.xu = load i32, ptr %i.nc, align 8, !tbaa !13
  %i.xv = mul nsw i32 %i.xt, %i.xu
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.xw = phi i32 [ %i.xv, %bb.ac ], [ -1, %bb.ab ]
  %i.xx = getelementptr inbounds nuw i8, ptr %.4864, i64 20
  store i32 %i.xw, ptr %i.xx, align 4, !tbaa !29
  br i1 %i.wc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.xy = load i32, ptr %i.mz, align 4, !tbaa !52
  %i.xz = load i32, ptr %i.na, align 8, !tbaa !53
  %i.ya = mul i32 %i.xz, %i.uy
  %reass.add828 = add i32 %i.ya, %i.ux
  %reass.mul829 = mul i32 %reass.add828, %i.xy
  %i.yb = add i32 %reass.mul829, %i.uu
  %i.yc = load i32, ptr %i.nc, align 8, !tbaa !13
  %i.yd = mul nsw i32 %i.yb, %i.yc
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ye = phi i32 [ %i.yd, %bb.ae ], [ -1, %bb.ad ]
  %i.yf = getelementptr inbounds nuw i8, ptr %.4864, i64 24
  store i32 %i.ye, ptr %i.yf, align 4, !tbaa !29
  br i1 %i.wd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.yg = load i32, ptr %i.mz, align 4, !tbaa !52
  %i.yh = load i32, ptr %i.na, align 8, !tbaa !53
  %i.yi = mul i32 %i.yh, %i.uy
  %reass.add830 = add i32 %i.yi, %i.ux
  %reass.mul831 = mul i32 %reass.add830, %i.yg
  %i.yj = add i32 %reass.mul831, %i.uv
  %i.yk = load i32, ptr %i.nc, align 8, !tbaa !13
  %i.yl = mul nsw i32 %i.yj, %i.yk
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.ym = phi i32 [ %i.yl, %bb.ag ], [ -1, %bb.af ]
  %i.yn = getelementptr inbounds nuw i8, ptr %.4864, i64 28
  store i32 %i.ym, ptr %i.yn, align 4, !tbaa !29
  %i.yo = sitofp <2 x i32> %i.ur to <2 x float>
  %i.yp = fsub fast <2 x float> %i.up, %i.yo
  store <2 x float> %i.yp, ptr %i.we, align 4, !tbaa !66
  %i.yq = sitofp fast i32 %i.ut to float
  %i.yr = fsub fast float %i.uh, %i.yq
  %i.ys = getelementptr inbounds nuw i8, ptr %.4864, i64 40
  store float %i.yr, ptr %i.ys, align 4, !tbaa !66
  %i.yt = getelementptr inbounds nuw i8, ptr %.1504863, i64 4
  %i.yu = getelementptr inbounds nuw i8, ptr %.1506862, i64 4
  %i.yv = getelementptr inbounds nuw i8, ptr %.1508861, i64 4
  %i.yw = getelementptr inbounds nuw i8, ptr %.4864, i64 44
  %i.yx = add nuw nsw i32 %.1510860, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.yx, %.fr926
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !383

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader849, %.preheader848
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr926 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !384 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader848, label %_ZN4ncnn3MatD2Ev.exit516

.preheader848:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader848
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr926, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.u = add i32 %.fr926, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0879 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !387
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !387
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !387
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph869, label %.preheader

.preheader:                                       ; preds = %.lr.ph869, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.x, %.lr.ph869 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.he, %.lr.ph869 ]
  %.1.lcssa = phi ptr [ %.0879, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hf, %.lr.ph869 ] ; 2 uses
  %i.ae = icmp slt i32 %.0501.lcssa, %.fr926
  br i1 %i.ae, label %.lr.ph876, label %._crit_edge

.lr.ph869:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph869
  %.1868 = phi ptr [ %i.hf, %.lr.ph869 ], [ %.0879, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499867 = phi ptr [ %i.he, %.lr.ph869 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501866 = phi i32 [ %i.hg, %.lr.ph869 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0499867, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0499867, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0499867, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.aw = fmul fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fadd fast <8 x float> %i.av, splat (float -1.000000e+00)
  %i.az = fmul fast <8 x float> %i.ax, %i.ay      ; 2 uses
  %i.ba = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bb = sitofp fast i32 %i.ba to float
  %i.bc = insertelement <8 x float> poison, float %i.bb, i64 0
  %i.bd = shufflevector <8 x float> %i.bc, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.be = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bf = fadd fast <8 x float> %i.be, splat (float 5.000000e-01)
  %i.bg = fadd fast <8 x float> %i.bd, splat (float -1.000000e+00)
  %i.bh = fmul fast <8 x float> %i.bg, %i.bf      ; 2 uses
  %i.bi = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bj = sitofp fast i32 %i.bi to float
  %i.bk = insertelement <8 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <8 x float> %i.bk, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bm = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.bn = fadd fast <8 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = fadd fast <8 x float> %i.bl, splat (float -1.000000e+00)
  %i.bp = fmul fast <8 x float> %i.bo, %i.bn      ; 2 uses
  %i.bq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.az, i32 1) ; 5 uses
  %i.br = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bh, i32 1) ; 5 uses
  %i.bs = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bp, i32 1) ; 5 uses
  %i.bt = fadd fast <8 x float> %i.bq, splat (float 1.000000e+00) ; 2 uses
  %i.bu = fadd fast <8 x float> %i.br, splat (float 1.000000e+00) ; 2 uses
  %i.bv = fadd fast <8 x float> %i.bs, splat (float 1.000000e+00) ; 2 uses
  %i.bw = fcmp fast ogt <8 x float> %i.bq, splat (float -1.000000e+00)
  %i.bx = fcmp fast ogt <8 x float> %i.av, %i.bq
  %i.by = and <8 x i1> %i.bw, %i.bx               ; 2 uses
  %i.bz = fcmp fast ogt <8 x float> %i.bt, splat (float -1.000000e+00)
  %i.ca = fcmp fast ogt <8 x float> %i.av, %i.bt
  %i.cb = and <8 x i1> %i.bz, %i.ca               ; 2 uses
  %i.cc = fcmp fast ogt <8 x float> %i.br, splat (float -1.000000e+00)
  %i.cd = fcmp fast ogt <8 x float> %i.bd, %i.br
  %i.ce = and <8 x i1> %i.cc, %i.cd
  %i.cf = sext <8 x i1> %i.ce to <8 x i32>        ; 2 uses
  %i.cg = fcmp fast ogt <8 x float> %i.bu, splat (float -1.000000e+00)
  %i.ch = fcmp fast ogt <8 x float> %i.bd, %i.bu
  %i.ci = and <8 x i1> %i.cg, %i.ch               ; 2 uses
  %i.cj = fcmp fast ogt <8 x float> %i.bs, splat (float -1.000000e+00)
  %i.ck = fcmp fast ogt <8 x float> %i.bl, %i.bs
  %i.cl = and <8 x i1> %i.cj, %i.ck               ; 3 uses
  %i.cm = sext <8 x i1> %i.cl to <8 x i32>
  %i.cn = fcmp fast ogt <8 x float> %i.bv, splat (float -1.000000e+00)
  %i.co = fcmp fast ogt <8 x float> %i.bl, %i.bv
  %i.cp = and <8 x i1> %i.cn, %i.co               ; 4 uses
  %i.cq = and <8 x i1> %i.by, %i.ci               ; 2 uses
  %i.cr = and <8 x i1> %i.cb, %i.ci               ; 2 uses
  %i.cs = bitcast <8 x i32> %i.cf to <8 x float>
  %i.ct = select <8 x i1> %i.by, <8 x float> %i.cs, <8 x float> zeroinitializer ; 2 uses
  %i.cu = select <8 x i1> %i.cl, <8 x float> %i.ct, <8 x float> zeroinitializer
  %i.cv = bitcast <8 x i32> %i.cf to <8 x float>
  %i.cw = select <8 x i1> %i.cb, <8 x float> %i.cv, <8 x float> zeroinitializer ; 2 uses
  %i.cx = select <8 x i1> %i.cl, <8 x float> %i.cw, <8 x float> zeroinitializer
  %i.cy = bitcast <8 x i32> %i.cm to <8 x float>  ; 2 uses
  %i.cz = select <8 x i1> %i.cq, <8 x float> %i.cy, <8 x float> zeroinitializer
  %i.da = select <8 x i1> %i.cr, <8 x float> %i.cy, <8 x float> zeroinitializer
  %i.db = select <8 x i1> %i.cp, <8 x float> %i.ct, <8 x float> zeroinitializer
  %i.dc = select <8 x i1> %i.cp, <8 x float> %i.cw, <8 x float> zeroinitializer
  %i.dd = and <8 x i1> %i.cq, %i.cp
  %i.de = and <8 x i1> %i.cr, %i.cp
  %i.df = fmul fast <8 x float> %i.bd, %i.av      ; 2 uses
  %i.dg = fmul fast <8 x float> %i.br, %i.av
  %i.dh = fadd fast <8 x float> %i.dg, %i.bq
  %i.di = fmul fast <8 x float> %i.df, %i.bs
  %i.dj = fadd fast <8 x float> %i.dh, %i.di
  %i.dk = load i32, ptr %i.t, align 8, !tbaa !13
  %i.dl = sitofp fast i32 %i.dk to float
  %i.dm = insertelement <8 x float> poison, float %i.dl, i64 0
  %i.dn = shufflevector <8 x float> %i.dm, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.do = fmul fast <8 x float> %i.dn, %i.dj      ; 4 uses
  %i.dp = fadd fast <8 x float> %i.do, %i.dn
  %i.dq = fmul fast <8 x float> %i.dn, %i.av      ; 2 uses
  %i.dr = fadd fast <8 x float> %i.do, %i.dq      ; 2 uses
  %i.ds = fadd fast <8 x float> %i.dr, %i.dn
  %i.dt = fmul fast <8 x float> %i.dn, %i.df
  %i.du = fadd fast <8 x float> %i.dt, %i.do      ; 3 uses
  %i.dv = fadd fast <8 x float> %i.du, %i.dn
  %i.dw = fadd fast <8 x float> %i.du, %i.dq      ; 2 uses
  %i.dx = fadd fast <8 x float> %i.dw, %i.dn
  %i.dy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.do, <8 x float> nofpclass(nan inf) %i.cu)
  %i.dz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dp, <8 x float> nofpclass(nan inf) %i.cx)
  %i.ea = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dr, <8 x float> nofpclass(nan inf) %i.cz)
  %i.eb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ds, <8 x float> nofpclass(nan inf) %i.da)
  %i.ec = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.du, <8 x float> nofpclass(nan inf) %i.db)
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dv, <8 x float> nofpclass(nan inf) %i.dc)
  %i.ee = select <8 x i1> %i.dd, <8 x float> %i.dw, <8 x float> splat (float -1.000000e+00)
  %i.ef = select <8 x i1> %i.de, <8 x float> %i.dx, <8 x float> splat (float -1.000000e+00)
  %i.eg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dy) ; 3 uses
  %i.eh = bitcast <8 x i32> %i.eg to <8 x float>
  %i.ei = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dz) ; 4 uses
  %i.ej = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ea) ; 4 uses
  %i.ek = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 4 uses
  %i.el = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ec) ; 4 uses
  %i.em = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ed) ; 4 uses
  %i.en = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ee) ; 4 uses
  %i.eo = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ef) ; 3 uses
  %i.ep = bitcast <8 x i32> %i.eo to <8 x float>  ; 2 uses
  %i.eq = fsub fast <8 x float> %i.az, %i.bq      ; 4 uses
  %i.er = fsub fast <8 x float> %i.bh, %i.br      ; 4 uses
  %i.es = fsub fast <8 x float> %i.bp, %i.bs      ; 4 uses
  %i.et = shufflevector <8 x i32> %i.eg, <8 x i32> %i.ei, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.eu = shufflevector <8 x i32> %i.eg, <8 x i32> %i.ei, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ev = bitcast <8 x i32> %i.eu to <8 x float>  ; 2 uses
  %i.ew = shufflevector <8 x i32> %i.ej, <8 x i32> %i.ek, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ex = shufflevector <8 x i32> %i.ej, <8 x i32> %i.ek, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ey = shufflevector <8 x i32> %i.el, <8 x i32> %i.em, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ez = shufflevector <8 x i32> %i.el, <8 x i32> %i.em, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fa = shufflevector <8 x i32> %i.en, <8 x i32> %i.eo, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x i32> %i.en, <8 x i32> %i.eo, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fc = bitcast <8 x i32> %i.fb to <8 x float>
  %i.fd = shufflevector <8 x float> %i.eq, <8 x float> %i.er, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fe = shufflevector <8 x float> %i.eq, <8 x float> %i.er, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ff = shufflevector <8 x float> %i.es, <8 x float> %i.eh, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fg = shufflevector <8 x float> %i.es, <8 x float> %i.ev, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fh = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ej, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fi = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ej, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fj = bitcast <8 x i32> %i.fi to <8 x float>
  %i.fk = shufflevector <8 x i32> %i.ek, <8 x i32> %i.el, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fl = shufflevector <8 x i32> %i.ek, <8 x i32> %i.el, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fm = shufflevector <8 x i32> %i.em, <8 x i32> %i.en, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fn = bitcast <8 x i32> %i.fm to <8 x float>
  %i.fo = shufflevector <8 x i32> %i.em, <8 x i32> %i.en, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fp = shufflevector <8 x float> %i.ep, <8 x float> %i.eq, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fq = shufflevector <8 x float> %i.ep, <8 x float> %i.eq, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fr = shufflevector <8 x float> %i.er, <8 x float> %i.es, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fs = shufflevector <8 x float> %i.er, <8 x float> %i.es, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ft = shufflevector <8 x i32> %i.et, <8 x i32> %i.ew, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fu = bitcast <8 x i32> %i.ft to <8 x float>
  %i.fv = shufflevector <8 x i32> %i.ey, <8 x i32> %i.fa, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fw = bitcast <8 x i32> %i.fv to <8 x float>
  %i.fx = shufflevector <8 x float> %i.fd, <8 x float> %i.ff, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.fy = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.fz = bitcast <8 x i32> %i.fy to <8 x float>  ; 2 uses
  %i.ga = shufflevector <8 x float> %i.fn, <8 x float> %i.fp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gb = shufflevector <8 x float> %i.fr, <8 x float> %i.ev, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.gc = shufflevector <8 x i32> %i.ex, <8 x i32> %i.ez, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gd = bitcast <8 x i32> %i.gc to <8 x float>  ; 2 uses
  %i.ge = shufflevector <8 x float> %i.fc, <8 x float> %i.fe, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gf = shufflevector <8 x float> %i.fg, <8 x float> %i.fj, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.fl, <8 x i32> %i.fo, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gh = bitcast <8 x i32> %i.gg to <8 x float>  ; 2 uses
  %i.gi = shufflevector <8 x float> %i.fq, <8 x float> %i.fs, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gj = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gk = shufflevector <8 x float> %i.fx, <8 x float> %i.fz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gl = shufflevector <8 x float> %i.ga, <8 x float> %i.gb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gm = shufflevector <8 x float> %i.gd, <8 x float> %i.ge, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gn = shufflevector <8 x float> %i.gf, <8 x float> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.go = shufflevector <8 x float> %i.gi, <8 x float> %i.fu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gp = shufflevector <8 x float> %i.fw, <8 x float> %i.fx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gq = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gr = shufflevector <8 x float> %i.gb, <8 x float> %i.gd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gs = shufflevector <8 x float> %i.ge, <8 x float> %i.gf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gt = shufflevector <8 x float> %i.gh, <8 x float> %i.gi, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gj, ptr %.1868, align 1, !tbaa !63
  %i.gu = getelementptr inbounds nuw i8, ptr %.1868, i64 32
  store <8 x float> %i.gk, ptr %i.gu, align 1, !tbaa !63
  %i.gv = getelementptr inbounds nuw i8, ptr %.1868, i64 64
  store <8 x float> %i.gl, ptr %i.gv, align 1, !tbaa !63
  %i.gw = getelementptr inbounds nuw i8, ptr %.1868, i64 96
  store <8 x float> %i.gm, ptr %i.gw, align 1, !tbaa !63
  %i.gx = getelementptr inbounds nuw i8, ptr %.1868, i64 128
  store <8 x float> %i.gn, ptr %i.gx, align 1, !tbaa !63
  %i.gy = getelementptr inbounds nuw i8, ptr %.1868, i64 160
  store <8 x float> %i.go, ptr %i.gy, align 1, !tbaa !63
  %i.gz = getelementptr inbounds nuw i8, ptr %.1868, i64 192
  store <8 x float> %i.gp, ptr %i.gz, align 1, !tbaa !63
  %i.ha = getelementptr inbounds nuw i8, ptr %.1868, i64 224
  store <8 x float> %i.gq, ptr %i.ha, align 1, !tbaa !63
  %i.hb = getelementptr inbounds nuw i8, ptr %.1868, i64 256
  store <8 x float> %i.gr, ptr %i.hb, align 1, !tbaa !63
  %i.hc = getelementptr inbounds nuw i8, ptr %.1868, i64 288
  store <8 x float> %i.gs, ptr %i.hc, align 1, !tbaa !63
  %i.hd = getelementptr inbounds nuw i8, ptr %.1868, i64 320
  store <8 x float> %i.gt, ptr %i.hd, align 1, !tbaa !63
  %i.he = getelementptr inbounds nuw i8, ptr %.0499867, i64 96 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.1868, i64 352 ; 2 uses
  %i.hg = add nuw nsw i32 %.0501866, 24
  %i.hh = add nuw nsw i32 %.0501866, 47
  %i.hi = icmp slt i32 %i.hh, %.fr926
  br i1 %i.hi, label %.lr.ph869, label %.preheader, !llvm.loop !390

.lr.ph876:                                        ; preds = %.preheader, %bb.p
  %.2875 = phi ptr [ %i.mc, %bb.p ], [ %.1.lcssa, %.preheader ] ; 11 uses
  %.1500874 = phi ptr [ %i.mb, %bb.p ], [ %.0499.lcssa, %.preheader ] ; 3 uses
  %.1502873 = phi i32 [ %i.md, %bb.p ], [ %.0501.lcssa, %.preheader ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.1500874, i64 8
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !66
  %i.hl = load i32, ptr %i.s, align 4, !tbaa !55  ; 3 uses
  %i.hm = fmul fast float %i.hk, 5.000000e-01
  %i.hn = fadd fast float %i.hm, 5.000000e-01
  %i.ho = add nsw i32 %i.hl, -1
  %i.hp = sitofp fast i32 %i.ho to float
  %i.hq = fmul fast float %i.hn, %i.hp            ; 2 uses
  %i.hr = load <2 x float>, ptr %.1500874, align 4, !tbaa !66
  %i.hs = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.ht = fmul fast <2 x float> %i.hr, splat (float 5.000000e-01)
  %i.hu = fadd fast <2 x float> %i.ht, splat (float 5.000000e-01)
  %i.hv = add nsw <2 x i32> %i.hs, splat (i32 -1)
  %i.hw = sitofp <2 x i32> %i.hv to <2 x float>
  %i.hx = fmul fast <2 x float> %i.hu, %i.hw      ; 2 uses
  %i.hy = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.hx)
  %i.hz = fptosi <2 x float> %i.hy to <2 x i32>   ; 5 uses
  %i.ia = tail call fast float @llvm.floor.f32(float %i.hq)
  %i.ib = fptosi float %i.ia to i32               ; 9 uses
  %i.ic = extractelement <2 x i32> %i.hz, i64 0   ; 6 uses
  %i.id = add nsw i32 %i.ic, 1                    ; 5 uses
  %i.ie = extractelement <2 x i32> %i.hz, i64 1   ; 6 uses
  %i.if = add nsw i32 %i.ie, 1                    ; 5 uses
  %i.ig = add nsw i32 %i.ib, 1                    ; 5 uses
  %i.ih = icmp sgt <2 x i32> %i.hz, splat (i32 -1)
  %i.ii = icmp sgt <2 x i32> %i.hs, %i.hz
  %i.ij = and <2 x i1> %i.ih, %i.ii               ; 2 uses
  %i.ik = icmp sgt i32 %i.ib, -1
  %i.il = icmp sgt i32 %i.hl, %i.ib
  %i.im = and i1 %i.ik, %i.il                     ; 4 uses
  %i.in = icmp sgt i32 %i.ic, -2
  %i.io = extractelement <2 x i32> %i.hs, i64 0   ; 2 uses
  %i.ip = icmp slt i32 %i.id, %i.io
  %i.iq = and i1 %i.in, %i.ip                     ; 2 uses
  %i.ir = icmp sgt i32 %i.ie, -2
  %i.is = extractelement <2 x i32> %i.hs, i64 1   ; 2 uses
  %i.it = icmp slt i32 %i.if, %i.is
  %i.iu = and i1 %i.ir, %i.it                     ; 2 uses
  %i.iv = icmp sgt i32 %i.ib, -2
  %i.iw = icmp slt i32 %i.ig, %i.hl
  %i.ix = and i1 %i.iv, %i.iw                     ; 4 uses
  %i.iy = extractelement <2 x i1> %i.ij, i64 0    ; 2 uses
  %i.iz = extractelement <2 x i1> %i.ij, i64 1    ; 2 uses
  %i.ja = and i1 %i.iy, %i.iz                     ; 2 uses
  %i.jb = and i1 %i.iq, %i.iz                     ; 2 uses
  %i.jc = and i1 %i.iy, %i.iu                     ; 2 uses
  %i.jd = and i1 %i.iq, %i.iu                     ; 2 uses
  %i.je = and i1 %i.ja, %i.im
  %i.jf = and i1 %i.jb, %i.im
  %i.jg = and i1 %i.im, %i.jc
  %i.jh = and i1 %i.im, %i.jd
  %i.ji = and i1 %i.ja, %i.ix
  %i.jj = and i1 %i.jb, %i.ix
  %i.jk = and i1 %i.jc, %i.ix
  %i.jl = and i1 %i.jd, %i.ix
  %i.jm = getelementptr inbounds nuw i8, ptr %.2875, i64 32
  br i1 %i.je, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph876
  %i.jn = mul i32 %i.is, %i.ib
  %reass.add832 = add i32 %i.jn, %i.ie
  %reass.mul833 = mul i32 %reass.add832, %i.io
  %i.jo = add i32 %reass.mul833, %i.ic
  %i.jp = load i32, ptr %i.t, align 8, !tbaa !13
  %i.jq = mul nsw i32 %i.jp, %i.jo
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph876, %bb.a
  %i.jr = phi i32 [ %i.jq, %bb.a ], [ -1, %.lr.ph876 ]
  store i32 %i.jr, ptr %.2875, align 4, !tbaa !29
  br i1 %i.jf, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.js = load i32, ptr %i.q, align 4, !tbaa !52
  %i.jt = load i32, ptr %i.r, align 8, !tbaa !53
  %i.ju = mul i32 %i.jt, %i.ib
  %reass.add834 = add i32 %i.ju, %i.ie
  %reass.mul835 = mul i32 %reass.add834, %i.js
  %i.jv = add i32 %reass.mul835, %i.id
  %i.jw = load i32, ptr %i.t, align 8, !tbaa !13
end_hunk_2
begin_hunk_3_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %reass.add840 = add i32 %i.ks, %i.ie
  %reass.mul841 = mul i32 %reass.add840, %i.kq
  %i.kt = add i32 %reass.mul841, %i.ic
  %i.ku = load i32, ptr %i.t, align 8, !tbaa !13
  %i.kv = mul nsw i32 %i.kt, %i.ku
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.kw = phi i32 [ %i.kv, %bb.i ], [ -1, %bb.h ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.2875, i64 16
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !29
  br i1 %i.jj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ky = load i32, ptr %i.q, align 4, !tbaa !52
  %i.kz = load i32, ptr %i.r, align 8, !tbaa !53
  %i.la = mul i32 %i.kz, %i.ig
  %reass.add842 = add i32 %i.la, %i.ie
  %reass.mul843 = mul i32 %reass.add842, %i.ky
  %i.lb = add i32 %reass.mul843, %i.id
  %i.lc = load i32, ptr %i.t, align 8, !tbaa !13
  %i.ld = mul nsw i32 %i.lb, %i.lc
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.le = phi i32 [ %i.ld, %bb.k ], [ -1, %bb.j ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.2875, i64 20
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !29
  br i1 %i.jk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lg = load i32, ptr %i.q, align 4, !tbaa !52
  %i.lh = load i32, ptr %i.r, align 8, !tbaa !53
  %i.li = mul i32 %i.lh, %i.ig
  %reass.add844 = add i32 %i.li, %i.if
  %reass.mul845 = mul i32 %reass.add844, %i.lg
  %i.lj = add i32 %reass.mul845, %i.ic
  %i.lk = load i32, ptr %i.t, align 8, !tbaa !13
  %i.ll = mul nsw i32 %i.lj, %i.lk
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.lm = phi i32 [ %i.ll, %bb.m ], [ -1, %bb.l ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.2875, i64 24
  store i32 %i.lm, ptr %i.ln, align 4, !tbaa !29
  br i1 %i.jl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.lo = load i32, ptr %i.q, align 4, !tbaa !52
  %i.lp = load i32, ptr %i.r, align 8, !tbaa !53
  %i.lq = mul i32 %i.lp, %i.ig
  %reass.add846 = add i32 %i.lq, %i.if
  %reass.mul847 = mul i32 %reass.add846, %i.lo
  %i.lr = add i32 %reass.mul847, %i.id
  %i.ls = load i32, ptr %i.t, align 8, !tbaa !13
  %i.lt = mul nsw i32 %i.lr, %i.ls
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.lu = phi i32 [ %i.lt, %bb.o ], [ -1, %bb.n ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.2875, i64 28
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !29
  %i.lw = sitofp <2 x i32> %i.hz to <2 x float>
  %i.lx = fsub fast <2 x float> %i.hx, %i.lw
  store <2 x float> %i.lx, ptr %i.jm, align 4, !tbaa !66
  %i.ly = sitofp fast i32 %i.ib to float
  %i.lz = fsub fast float %i.hq, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %.2875, i64 40
  store float %i.lz, ptr %i.ma, align 4, !tbaa !66
  %i.mb = getelementptr inbounds nuw i8, ptr %.1500874, i64 12
  %i.mc = getelementptr inbounds nuw i8, ptr %.2875, i64 44 ; 2 uses
  %i.md = add nuw nsw i32 %.1502873, 3            ; 2 uses
  %i.me = icmp slt i32 %i.md, %.fr926
  br i1 %i.me, label %.lr.ph876, label %._crit_edge, !llvm.loop !391

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.mc, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mf = load i32, ptr %i.k, align 8, !tbaa !18
  %i.mg = sext i32 %i.mf to i64
  %i.mh = icmp slt i64 %indvars.iv.next, %i.mg
  br i1 %i.mh, label %_ZN4ncnn3MatD2Ev.exit517, label %.loopexit, !llvm.loop !392

_ZN4ncnn3MatD2Ev.exit516:                         ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.mi = load ptr, ptr %1, align 8, !tbaa !24, !noalias !393 ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !21, !noalias !396 ; 2 uses
  %i.mm = load i64, ptr %i.mk, align 8, !tbaa !20, !noalias !396 ; 2 uses
  %i.mn = mul i64 %i.mm, %i.ml
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mn ; 2 uses
  %i.mp = shl i64 %i.ml, 1
  %i.mq = mul i64 %i.mp, %i.mm
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mq ; 2 uses
  %i.ms = icmp sgt i32 %.fr926, 7
  br i1 %i.ms, label %.lr.ph, label %.preheader849

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit516
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

.preheader849.loopexit:                           ; preds = %bb.q
  %i.mx = and i32 %.fr926, 2147483640
  br label %.preheader849

.preheader849:                                    ; preds = %.preheader849.loopexit, %_ZN4ncnn3MatD2Ev.exit516
  %.0509.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.mx, %.preheader849.loopexit ] ; 2 uses
  %.0507.lcssa = phi ptr [ %i.mr, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.tu, %.preheader849.loopexit ]
  %.0505.lcssa = phi ptr [ %i.mo, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.tt, %.preheader849.loopexit ]
  %.0503.lcssa = phi ptr [ %i.mi, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.ts, %.preheader849.loopexit ]
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.tv, %.preheader849.loopexit ]
  %i.my = icmp slt i32 %.0509.lcssa, %.fr926
  br i1 %i.my, label %.lr.ph865, label %.loopexit

.lr.ph865:                                        ; preds = %.preheader849
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.3855 = phi ptr [ %i.i, %.lr.ph ], [ %i.tv, %bb.q ] ; 12 uses
  %.0503854 = phi ptr [ %i.mi, %.lr.ph ], [ %i.ts, %bb.q ] ; 2 uses
  %.0505853 = phi ptr [ %i.mo, %.lr.ph ], [ %i.tt, %bb.q ] ; 2 uses
  %.0507852 = phi ptr [ %i.mr, %.lr.ph ], [ %i.tu, %bb.q ] ; 2 uses
  %.0509851 = phi i32 [ 0, %.lr.ph ], [ %i.tw, %bb.q ]
  %i.nd = load <8 x float>, ptr %.0503854, align 1, !tbaa !63
  %i.ne = load <8 x float>, ptr %.0505853, align 1, !tbaa !63
  %i.nf = load <8 x float>, ptr %.0507852, align 1, !tbaa !63
  %i.ng = load i32, ptr %i.mt, align 4, !tbaa !52
  %i.nh = sitofp fast i32 %i.ng to float
  %i.ni = insertelement <8 x float> poison, float %i.nh, i64 0
  %i.nj = shufflevector <8 x float> %i.ni, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.nk = fmul fast <8 x float> %i.nd, splat (float 5.000000e-01)
  %i.nl = fadd fast <8 x float> %i.nk, splat (float 5.000000e-01)
  %i.nm = fadd fast <8 x float> %i.nj, splat (float -1.000000e+00)
  %i.nn = fmul fast <8 x float> %i.nm, %i.nl      ; 2 uses
  %i.no = load i32, ptr %i.mu, align 8, !tbaa !53
  %i.np = sitofp fast i32 %i.no to float
  %i.nq = insertelement <8 x float> poison, float %i.np, i64 0
  %i.nr = shufflevector <8 x float> %i.nq, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ns = fmul fast <8 x float> %i.ne, splat (float 5.000000e-01)
  %i.nt = fadd fast <8 x float> %i.ns, splat (float 5.000000e-01)
  %i.nu = fadd fast <8 x float> %i.nr, splat (float -1.000000e+00)
  %i.nv = fmul fast <8 x float> %i.nu, %i.nt      ; 2 uses
  %i.nw = load i32, ptr %i.mv, align 4, !tbaa !55
  %i.nx = sitofp fast i32 %i.nw to float
  %i.ny = insertelement <8 x float> poison, float %i.nx, i64 0
  %i.nz = shufflevector <8 x float> %i.ny, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.oa = fmul fast <8 x float> %i.nf, splat (float 5.000000e-01)
  %i.ob = fadd fast <8 x float> %i.oa, splat (float 5.000000e-01)
  %i.oc = fadd fast <8 x float> %i.nz, splat (float -1.000000e+00)
  %i.od = fmul fast <8 x float> %i.oc, %i.ob      ; 2 uses
  %i.oe = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nn, i32 1) ; 5 uses
  %i.of = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nv, i32 1) ; 5 uses
  %i.og = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.od, i32 1) ; 5 uses
  %i.oh = fadd fast <8 x float> %i.oe, splat (float 1.000000e+00) ; 2 uses
  %i.oi = fadd fast <8 x float> %i.of, splat (float 1.000000e+00) ; 2 uses
  %i.oj = fadd fast <8 x float> %i.og, splat (float 1.000000e+00) ; 2 uses
  %i.ok = fcmp fast ogt <8 x float> %i.oe, splat (float -1.000000e+00)
  %i.ol = fcmp fast ogt <8 x float> %i.nj, %i.oe
  %i.om = and <8 x i1> %i.ok, %i.ol               ; 2 uses
  %i.on = fcmp fast ogt <8 x float> %i.oh, splat (float -1.000000e+00)
  %i.oo = fcmp fast ogt <8 x float> %i.nj, %i.oh
  %i.op = and <8 x i1> %i.on, %i.oo               ; 2 uses
  %i.oq = fcmp fast ogt <8 x float> %i.of, splat (float -1.000000e+00)
  %i.or = fcmp fast ogt <8 x float> %i.nr, %i.of
  %i.os = and <8 x i1> %i.oq, %i.or
  %i.ot = sext <8 x i1> %i.os to <8 x i32>        ; 2 uses
  %i.ou = fcmp fast ogt <8 x float> %i.oi, splat (float -1.000000e+00)
  %i.ov = fcmp fast ogt <8 x float> %i.nr, %i.oi
  %i.ow = and <8 x i1> %i.ou, %i.ov               ; 2 uses
  %i.ox = fcmp fast ogt <8 x float> %i.og, splat (float -1.000000e+00)
  %i.oy = fcmp fast ogt <8 x float> %i.nz, %i.og
  %i.oz = and <8 x i1> %i.ox, %i.oy               ; 3 uses
  %i.pa = sext <8 x i1> %i.oz to <8 x i32>
  %i.pb = fcmp fast ogt <8 x float> %i.oj, splat (float -1.000000e+00)
  %i.pc = fcmp fast ogt <8 x float> %i.nz, %i.oj
  %i.pd = and <8 x i1> %i.pb, %i.pc               ; 4 uses
  %i.pe = and <8 x i1> %i.om, %i.ow               ; 2 uses
  %i.pf = and <8 x i1> %i.op, %i.ow               ; 2 uses
  %i.pg = bitcast <8 x i32> %i.ot to <8 x float>
  %i.ph = select <8 x i1> %i.om, <8 x float> %i.pg, <8 x float> zeroinitializer ; 2 uses
  %i.pi = select <8 x i1> %i.oz, <8 x float> %i.ph, <8 x float> zeroinitializer
  %i.pj = bitcast <8 x i32> %i.ot to <8 x float>
  %i.pk = select <8 x i1> %i.op, <8 x float> %i.pj, <8 x float> zeroinitializer ; 2 uses
  %i.pl = select <8 x i1> %i.oz, <8 x float> %i.pk, <8 x float> zeroinitializer
  %i.pm = bitcast <8 x i32> %i.pa to <8 x float>  ; 2 uses
  %i.pn = select <8 x i1> %i.pe, <8 x float> %i.pm, <8 x float> zeroinitializer
  %i.po = select <8 x i1> %i.pf, <8 x float> %i.pm, <8 x float> zeroinitializer
  %i.pp = select <8 x i1> %i.pd, <8 x float> %i.ph, <8 x float> zeroinitializer
  %i.pq = select <8 x i1> %i.pd, <8 x float> %i.pk, <8 x float> zeroinitializer
  %i.pr = and <8 x i1> %i.pe, %i.pd
  %i.ps = and <8 x i1> %i.pf, %i.pd
  %i.pt = fmul fast <8 x float> %i.nr, %i.nj      ; 2 uses
  %i.pu = fmul fast <8 x float> %i.of, %i.nj
  %i.pv = fadd fast <8 x float> %i.pu, %i.oe
  %i.pw = fmul fast <8 x float> %i.pt, %i.og
  %i.px = fadd fast <8 x float> %i.pv, %i.pw
  %i.py = load i32, ptr %i.mw, align 8, !tbaa !13
  %i.pz = sitofp fast i32 %i.py to float
  %i.qa = insertelement <8 x float> poison, float %i.pz, i64 0
  %i.qb = shufflevector <8 x float> %i.qa, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.qc = fmul fast <8 x float> %i.qb, %i.px      ; 4 uses
  %i.qd = fadd fast <8 x float> %i.qc, %i.qb
  %i.qe = fmul fast <8 x float> %i.qb, %i.nj      ; 2 uses
  %i.qf = fadd fast <8 x float> %i.qc, %i.qe      ; 2 uses
  %i.qg = fadd fast <8 x float> %i.qf, %i.qb
  %i.qh = fmul fast <8 x float> %i.qb, %i.pt
  %i.qi = fadd fast <8 x float> %i.qh, %i.qc      ; 3 uses
  %i.qj = fadd fast <8 x float> %i.qi, %i.qb
  %i.qk = fadd fast <8 x float> %i.qi, %i.qe      ; 2 uses
  %i.ql = fadd fast <8 x float> %i.qk, %i.qb
  %i.qm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qc, <8 x float> nofpclass(nan inf) %i.pi)
  %i.qn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qd, <8 x float> nofpclass(nan inf) %i.pl)
  %i.qo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qf, <8 x float> nofpclass(nan inf) %i.pn)
  %i.qp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qg, <8 x float> nofpclass(nan inf) %i.po)
  %i.qq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qi, <8 x float> nofpclass(nan inf) %i.pp)
  %i.qr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qj, <8 x float> nofpclass(nan inf) %i.pq)
  %i.qs = select <8 x i1> %i.pr, <8 x float> %i.qk, <8 x float> splat (float -1.000000e+00)
  %i.qt = select <8 x i1> %i.ps, <8 x float> %i.ql, <8 x float> splat (float -1.000000e+00)
  %i.qu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qm) ; 3 uses
  %i.qv = bitcast <8 x i32> %i.qu to <8 x float>
  %i.qw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qn) ; 4 uses
  %i.qx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qo) ; 4 uses
  %i.qy = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qp) ; 4 uses
  %i.qz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qq) ; 4 uses
  %i.ra = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qr) ; 4 uses
  %i.rb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qs) ; 4 uses
  %i.rc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qt) ; 3 uses
  %i.rd = bitcast <8 x i32> %i.rc to <8 x float>  ; 2 uses
  %i.re = fsub fast <8 x float> %i.nn, %i.oe      ; 4 uses
  %i.rf = fsub fast <8 x float> %i.nv, %i.of      ; 4 uses
  %i.rg = fsub fast <8 x float> %i.od, %i.og      ; 4 uses
  %i.rh = shufflevector <8 x i32> %i.qu, <8 x i32> %i.qw, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ri = shufflevector <8 x i32> %i.qu, <8 x i32> %i.qw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.rj = bitcast <8 x i32> %i.ri to <8 x float>  ; 2 uses
  %i.rk = shufflevector <8 x i32> %i.qx, <8 x i32> %i.qy, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rl = shufflevector <8 x i32> %i.qx, <8 x i32> %i.qy, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rm = shufflevector <8 x i32> %i.qz, <8 x i32> %i.ra, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rn = shufflevector <8 x i32> %i.qz, <8 x i32> %i.ra, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ro = shufflevector <8 x i32> %i.rb, <8 x i32> %i.rc, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rp = shufflevector <8 x i32> %i.rb, <8 x i32> %i.rc, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rq = bitcast <8 x i32> %i.rp to <8 x float>
  %i.rr = shufflevector <8 x float> %i.re, <8 x float> %i.rf, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rs = shufflevector <8 x float> %i.re, <8 x float> %i.rf, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rt = shufflevector <8 x float> %i.rg, <8 x float> %i.qv, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.ru = shufflevector <8 x float> %i.rg, <8 x float> %i.rj, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.rv = shufflevector <8 x i32> %i.qw, <8 x i32> %i.qx, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.rw = shufflevector <8 x i32> %i.qw, <8 x i32> %i.qx, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.rx = bitcast <8 x i32> %i.rw to <8 x float>
  %i.ry = shufflevector <8 x i32> %i.qy, <8 x i32> %i.qz, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.rz = shufflevector <8 x i32> %i.qy, <8 x i32> %i.qz, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sa = shufflevector <8 x i32> %i.ra, <8 x i32> %i.rb, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sb = bitcast <8 x i32> %i.sa to <8 x float>
  %i.sc = shufflevector <8 x i32> %i.ra, <8 x i32> %i.rb, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sd = shufflevector <8 x float> %i.rd, <8 x float> %i.re, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.se = shufflevector <8 x float> %i.rd, <8 x float> %i.re, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sf = shufflevector <8 x float> %i.rf, <8 x float> %i.rg, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sg = shufflevector <8 x float> %i.rf, <8 x float> %i.rg, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sh = shufflevector <8 x i32> %i.rh, <8 x i32> %i.rk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.si = bitcast <8 x i32> %i.sh to <8 x float>
  %i.sj = shufflevector <8 x i32> %i.rm, <8 x i32> %i.ro, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.sk = bitcast <8 x i32> %i.sj to <8 x float>
  %i.sl = shufflevector <8 x float> %i.rr, <8 x float> %i.rt, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.sm = shufflevector <8 x i32> %i.rv, <8 x i32> %i.ry, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.sn = bitcast <8 x i32> %i.sm to <8 x float>  ; 2 uses
  %i.so = shufflevector <8 x float> %i.sb, <8 x float> %i.sd, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.sp = shufflevector <8 x float> %i.sf, <8 x float> %i.rj, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.sq = shufflevector <8 x i32> %i.rl, <8 x i32> %i.rn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.sr = bitcast <8 x i32> %i.sq to <8 x float>  ; 2 uses
  %i.ss = shufflevector <8 x float> %i.rq, <8 x float> %i.rs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.st = shufflevector <8 x float> %i.ru, <8 x float> %i.rx, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.su = shufflevector <8 x i32> %i.rz, <8 x i32> %i.sc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.sv = bitcast <8 x i32> %i.su to <8 x float>  ; 2 uses
  %i.sw = shufflevector <8 x float> %i.se, <8 x float> %i.sg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.sx = shufflevector <8 x i32> %i.sh, <8 x i32> %i.sj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sy = shufflevector <8 x float> %i.sl, <8 x float> %i.sn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sz = shufflevector <8 x float> %i.so, <8 x float> %i.sp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ta = shufflevector <8 x float> %i.sr, <8 x float> %i.ss, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tb = shufflevector <8 x float> %i.st, <8 x float> %i.sv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tc = shufflevector <8 x float> %i.sw, <8 x float> %i.si, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.td = shufflevector <8 x float> %i.sk, <8 x float> %i.sl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.te = shufflevector <8 x float> %i.sn, <8 x float> %i.so, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tf = shufflevector <8 x float> %i.sp, <8 x float> %i.sr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tg = shufflevector <8 x float> %i.ss, <8 x float> %i.st, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.th = shufflevector <8 x float> %i.sv, <8 x float> %i.sw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.sx, ptr %.3855, align 1, !tbaa !63
  %i.ti = getelementptr inbounds nuw i8, ptr %.3855, i64 32
  store <8 x float> %i.sy, ptr %i.ti, align 1, !tbaa !63
  %i.tj = getelementptr inbounds nuw i8, ptr %.3855, i64 64
  store <8 x float> %i.sz, ptr %i.tj, align 1, !tbaa !63
  %i.tk = getelementptr inbounds nuw i8, ptr %.3855, i64 96
  store <8 x float> %i.ta, ptr %i.tk, align 1, !tbaa !63
  %i.tl = getelementptr inbounds nuw i8, ptr %.3855, i64 128
  store <8 x float> %i.tb, ptr %i.tl, align 1, !tbaa !63
  %i.tm = getelementptr inbounds nuw i8, ptr %.3855, i64 160
  store <8 x float> %i.tc, ptr %i.tm, align 1, !tbaa !63
  %i.tn = getelementptr inbounds nuw i8, ptr %.3855, i64 192
  store <8 x float> %i.td, ptr %i.tn, align 1, !tbaa !63
  %i.to = getelementptr inbounds nuw i8, ptr %.3855, i64 224
  store <8 x float> %i.te, ptr %i.to, align 1, !tbaa !63
  %i.tp = getelementptr inbounds nuw i8, ptr %.3855, i64 256
  store <8 x float> %i.tf, ptr %i.tp, align 1, !tbaa !63
  %i.tq = getelementptr inbounds nuw i8, ptr %.3855, i64 288
  store <8 x float> %i.tg, ptr %i.tq, align 1, !tbaa !63
  %i.tr = getelementptr inbounds nuw i8, ptr %.3855, i64 320
  store <8 x float> %i.th, ptr %i.tr, align 1, !tbaa !63
  %i.ts = getelementptr inbounds nuw i8, ptr %.0503854, i64 32 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.0505853, i64 32 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0507852, i64 32 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.3855, i64 352 ; 2 uses
  %i.tw = add nuw nsw i32 %.0509851, 8            ; 2 uses
  %i.tx = or disjoint i32 %i.tw, 7
  %i.ty = icmp slt i32 %i.tx, %.fr926
  br i1 %i.ty, label %bb.q, label %.preheader849.loopexit, !llvm.loop !399

bb.r:                                             ; preds = %.lr.ph865, %bb.ah
  %.4864 = phi ptr [ %.3.lcssa, %.lr.ph865 ], [ %i.yw, %bb.ah ] ; 11 uses
  %.1504863 = phi ptr [ %.0503.lcssa, %.lr.ph865 ], [ %i.yt, %bb.ah ] ; 2 uses
  %.1506862 = phi ptr [ %.0505.lcssa, %.lr.ph865 ], [ %i.yu, %bb.ah ] ; 2 uses
  %.1508861 = phi ptr [ %.0507.lcssa, %.lr.ph865 ], [ %i.yv, %bb.ah ] ; 2 uses
  %.1510860 = phi i32 [ %.0509.lcssa, %.lr.ph865 ], [ %i.yx, %bb.ah ]
  %i.tz = load float, ptr %.1504863, align 4, !tbaa !66
  %i.ua = load float, ptr %.1506862, align 4, !tbaa !66
  %i.ub = load float, ptr %.1508861, align 4, !tbaa !66
  %i.uc = load i32, ptr %i.nb, align 4, !tbaa !55 ; 3 uses
  %i.ud = fmul fast float %i.ub, 5.000000e-01
  %i.ue = fadd fast float %i.ud, 5.000000e-01
  %i.uf = add nsw i32 %i.uc, -1
  %i.ug = sitofp fast i32 %i.uf to float
  %i.uh = fmul fast float %i.ue, %i.ug            ; 2 uses
  %i.ui = load <2 x i32>, ptr %i.mz, align 4, !tbaa !29 ; 4 uses
  %i.uj = insertelement <2 x float> poison, float %i.tz, i64 0
  %i.uk = insertelement <2 x float> %i.uj, float %i.ua, i64 1
  %i.ul = fmul fast <2 x float> %i.uk, splat (float 5.000000e-01)
  %i.um = fadd fast <2 x float> %i.ul, splat (float 5.000000e-01)
  %i.un = add nsw <2 x i32> %i.ui, splat (i32 -1)
  %i.uo = sitofp <2 x i32> %i.un to <2 x float>
  %i.up = fmul fast <2 x float> %i.um, %i.uo      ; 2 uses
  %i.uq = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.up)
  %i.ur = fptosi <2 x float> %i.uq to <2 x i32>   ; 5 uses
  %i.us = tail call fast float @llvm.floor.f32(float %i.uh)
  %i.ut = fptosi float %i.us to i32               ; 9 uses
  %i.uu = extractelement <2 x i32> %i.ur, i64 0   ; 6 uses
  %i.uv = add nsw i32 %i.uu, 1                    ; 5 uses
  %i.uw = extractelement <2 x i32> %i.ur, i64 1   ; 6 uses
  %i.ux = add nsw i32 %i.uw, 1                    ; 5 uses
  %i.uy = add nsw i32 %i.ut, 1                    ; 5 uses
  %i.uz = icmp sgt <2 x i32> %i.ur, splat (i32 -1)
  %i.va = icmp sgt <2 x i32> %i.ui, %i.ur
  %i.vb = and <2 x i1> %i.uz, %i.va               ; 2 uses
  %i.vc = icmp sgt i32 %i.ut, -1
  %i.vd = icmp sgt i32 %i.uc, %i.ut
  %i.ve = and i1 %i.vc, %i.vd                     ; 4 uses
  %i.vf = icmp sgt i32 %i.uu, -2
  %i.vg = extractelement <2 x i32> %i.ui, i64 0   ; 2 uses
  %i.vh = icmp slt i32 %i.uv, %i.vg
  %i.vi = and i1 %i.vf, %i.vh                     ; 2 uses
  %i.vj = icmp sgt i32 %i.uw, -2
  %i.vk = extractelement <2 x i32> %i.ui, i64 1   ; 2 uses
  %i.vl = icmp slt i32 %i.ux, %i.vk
  %i.vm = and i1 %i.vj, %i.vl                     ; 2 uses
  %i.vn = icmp sgt i32 %i.ut, -2
  %i.vo = icmp slt i32 %i.uy, %i.uc
  %i.vp = and i1 %i.vn, %i.vo                     ; 4 uses
  %i.vq = extractelement <2 x i1> %i.vb, i64 0    ; 2 uses
  %i.vr = extractelement <2 x i1> %i.vb, i64 1    ; 2 uses
  %i.vs = and i1 %i.vq, %i.vr                     ; 2 uses
  %i.vt = and i1 %i.vi, %i.vr                     ; 2 uses
  %i.vu = and i1 %i.vq, %i.vm                     ; 2 uses
  %i.vv = and i1 %i.vi, %i.vm                     ; 2 uses
  %i.vw = and i1 %i.vs, %i.ve
  %i.vx = and i1 %i.vt, %i.ve
  %i.vy = and i1 %i.ve, %i.vu
  %i.vz = and i1 %i.ve, %i.vv
  %i.wa = and i1 %i.vs, %i.vp
  %i.wb = and i1 %i.vt, %i.vp
  %i.wc = and i1 %i.vu, %i.vp
  %i.wd = and i1 %i.vv, %i.vp
  %i.we = getelementptr inbounds nuw i8, ptr %.4864, i64 32
  br i1 %i.vw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.wf = mul i32 %i.vk, %i.ut
  %reass.add = add i32 %i.wf, %i.uw
  %reass.mul = mul i32 %reass.add, %i.vg
  %i.wg = add i32 %reass.mul, %i.uu
  %i.wh = load i32, ptr %i.nc, align 8, !tbaa !13
  %i.wi = mul nsw i32 %i.wh, %i.wg
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.wj = phi i32 [ %i.wi, %bb.s ], [ -1, %bb.r ]
  store i32 %i.wj, ptr %.4864, align 4, !tbaa !29
  br i1 %i.vx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.wk = load i32, ptr %i.mz, align 4, !tbaa !52
end_hunk_3
begin_hunk_4_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  br i1 %i.wc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.xy = load i32, ptr %i.mz, align 4, !tbaa !52
  %i.xz = load i32, ptr %i.na, align 8, !tbaa !53
  %i.ya = mul i32 %i.xz, %i.uy
  %reass.add828 = add i32 %i.ya, %i.ux
  %reass.mul829 = mul i32 %reass.add828, %i.xy
  %i.yb = add i32 %reass.mul829, %i.uu
  %i.yc = load i32, ptr %i.nc, align 8, !tbaa !13
  %i.yd = mul nsw i32 %i.yb, %i.yc
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ye = phi i32 [ %i.yd, %bb.ae ], [ -1, %bb.ad ]
  %i.yf = getelementptr inbounds nuw i8, ptr %.4864, i64 24
  store i32 %i.ye, ptr %i.yf, align 4, !tbaa !29
  br i1 %i.wd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.yg = load i32, ptr %i.mz, align 4, !tbaa !52
  %i.yh = load i32, ptr %i.na, align 8, !tbaa !53
  %i.yi = mul i32 %i.yh, %i.uy
  %reass.add830 = add i32 %i.yi, %i.ux
  %reass.mul831 = mul i32 %reass.add830, %i.yg
  %i.yj = add i32 %reass.mul831, %i.uv
  %i.yk = load i32, ptr %i.nc, align 8, !tbaa !13
  %i.yl = mul nsw i32 %i.yj, %i.yk
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.ym = phi i32 [ %i.yl, %bb.ag ], [ -1, %bb.af ]
  %i.yn = getelementptr inbounds nuw i8, ptr %.4864, i64 28
  store i32 %i.ym, ptr %i.yn, align 4, !tbaa !29
  %i.yo = sitofp <2 x i32> %i.ur to <2 x float>
  %i.yp = fsub fast <2 x float> %i.up, %i.yo
  store <2 x float> %i.yp, ptr %i.we, align 4, !tbaa !66
  %i.yq = sitofp fast i32 %i.ut to float
  %i.yr = fsub fast float %i.uh, %i.yq
  %i.ys = getelementptr inbounds nuw i8, ptr %.4864, i64 40
  store float %i.yr, ptr %i.ys, align 4, !tbaa !66
  %i.yt = getelementptr inbounds nuw i8, ptr %.1504863, i64 4
  %i.yu = getelementptr inbounds nuw i8, ptr %.1506862, i64 4
  %i.yv = getelementptr inbounds nuw i8, ptr %.1508861, i64 4
  %i.yw = getelementptr inbounds nuw i8, ptr %.4864, i64 44
  %i.yx = add nuw nsw i32 %.1510860, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.yx, %.fr926
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !400

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader849, %.preheader848
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr936 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !401 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader858, label %_ZN4ncnn3MatD2Ev.exit516

.preheader858:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader858
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr936, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.u = add i32 %.fr936, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0889 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !404
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !404
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !404
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph879, label %.preheader

.preheader:                                       ; preds = %.lr.ph879, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.x, %.lr.ph879 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hn, %.lr.ph879 ]
  %.1.lcssa = phi ptr [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.ho, %.lr.ph879 ] ; 2 uses
  %i.ae = icmp slt i32 %.0501.lcssa, %.fr936
  br i1 %i.ae, label %.lr.ph886, label %._crit_edge

.lr.ph879:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph879
  %.1878 = phi ptr [ %i.ho, %.lr.ph879 ], [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499877 = phi ptr [ %i.hn, %.lr.ph879 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501876 = phi i32 [ %i.hp, %.lr.ph879 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0499877, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0499877, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0499877, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.aw = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.ax = fmul fast <8 x float> %i.av, splat (float 5.000000e-01)
  %i.ay = fmul fast <8 x float> %i.ax, %i.aw
  %i.az = fadd fast <8 x float> %i.ay, splat (float -5.000000e-01)
  %i.ba = fadd fast <8 x float> %i.av, splat (float -1.000000e+00)
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.az, <8 x float> zeroinitializer)
  %i.bc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.bb) ; 2 uses
  %i.bd = load i32, ptr %i.r, align 8, !tbaa !53
  %i.be = sitofp fast i32 %i.bd to float
  %i.bf = insertelement <8 x float> poison, float %i.be, i64 0
  %i.bg = shufflevector <8 x float> %i.bf, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.bh = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bi = fadd fast <8 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = fmul fast <8 x float> %i.bi, %i.bg
  %i.bk = fadd fast <8 x float> %i.bj, splat (float -5.000000e-01)
  %i.bl = fadd fast <8 x float> %i.bg, splat (float -1.000000e+00)
  %i.bm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bk, <8 x float> zeroinitializer)
  %i.bn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bl, <8 x float> nofpclass(nan inf) %i.bm) ; 2 uses
  %i.bo = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bp = sitofp fast i32 %i.bo to float
  %i.bq = insertelement <8 x float> poison, float %i.bp, i64 0
  %i.br = shufflevector <8 x float> %i.bq, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bs = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.bt = fadd fast <8 x float> %i.bs, splat (float 5.000000e-01)
  %i.bu = fmul fast <8 x float> %i.bt, %i.br
  %i.bv = fadd fast <8 x float> %i.bu, splat (float -5.000000e-01)
  %i.bw = fadd fast <8 x float> %i.br, splat (float -1.000000e+00)
  %i.bx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bv, <8 x float> zeroinitializer)
  %i.by = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bw, <8 x float> nofpclass(nan inf) %i.bx) ; 2 uses
  %i.bz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bc, i32 1) ; 5 uses
  %i.ca = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bn, i32 1) ; 5 uses
  %i.cb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.by, i32 1) ; 5 uses
  %i.cc = fadd fast <8 x float> %i.bz, splat (float 1.000000e+00) ; 2 uses
  %i.cd = fadd fast <8 x float> %i.ca, splat (float 1.000000e+00) ; 2 uses
  %i.ce = fadd fast <8 x float> %i.cb, splat (float 1.000000e+00) ; 2 uses
  %i.cf = fcmp fast ogt <8 x float> %i.bz, splat (float -1.000000e+00)
  %i.cg = fcmp fast ogt <8 x float> %i.av, %i.bz
  %i.ch = and <8 x i1> %i.cf, %i.cg               ; 2 uses
  %i.ci = fcmp fast ogt <8 x float> %i.cc, splat (float -1.000000e+00)
  %i.cj = fcmp fast ogt <8 x float> %i.av, %i.cc
  %i.ck = and <8 x i1> %i.ci, %i.cj               ; 2 uses
  %i.cl = fcmp fast ogt <8 x float> %i.ca, splat (float -1.000000e+00)
  %i.cm = fcmp fast ogt <8 x float> %i.bg, %i.ca
  %i.cn = and <8 x i1> %i.cl, %i.cm
  %i.co = sext <8 x i1> %i.cn to <8 x i32>        ; 2 uses
  %i.cp = fcmp fast ogt <8 x float> %i.cd, splat (float -1.000000e+00)
  %i.cq = fcmp fast ogt <8 x float> %i.bg, %i.cd
  %i.cr = and <8 x i1> %i.cp, %i.cq               ; 2 uses
  %i.cs = fcmp fast ogt <8 x float> %i.cb, splat (float -1.000000e+00)
  %i.ct = fcmp fast ogt <8 x float> %i.br, %i.cb
  %i.cu = and <8 x i1> %i.cs, %i.ct               ; 3 uses
  %i.cv = sext <8 x i1> %i.cu to <8 x i32>
  %i.cw = fcmp fast ogt <8 x float> %i.ce, splat (float -1.000000e+00)
  %i.cx = fcmp fast ogt <8 x float> %i.br, %i.ce
  %i.cy = and <8 x i1> %i.cw, %i.cx               ; 4 uses
  %i.cz = and <8 x i1> %i.ch, %i.cr               ; 2 uses
  %i.da = and <8 x i1> %i.ck, %i.cr               ; 2 uses
  %i.db = bitcast <8 x i32> %i.co to <8 x float>
  %i.dc = select <8 x i1> %i.ch, <8 x float> %i.db, <8 x float> zeroinitializer ; 2 uses
  %i.dd = select <8 x i1> %i.cu, <8 x float> %i.dc, <8 x float> zeroinitializer
  %i.de = bitcast <8 x i32> %i.co to <8 x float>
  %i.df = select <8 x i1> %i.ck, <8 x float> %i.de, <8 x float> zeroinitializer ; 2 uses
  %i.dg = select <8 x i1> %i.cu, <8 x float> %i.df, <8 x float> zeroinitializer
  %i.dh = bitcast <8 x i32> %i.cv to <8 x float>  ; 2 uses
  %i.di = select <8 x i1> %i.cz, <8 x float> %i.dh, <8 x float> zeroinitializer
  %i.dj = select <8 x i1> %i.da, <8 x float> %i.dh, <8 x float> zeroinitializer
  %i.dk = select <8 x i1> %i.cy, <8 x float> %i.dc, <8 x float> zeroinitializer
  %i.dl = select <8 x i1> %i.cy, <8 x float> %i.df, <8 x float> zeroinitializer
  %i.dm = and <8 x i1> %i.cz, %i.cy
  %i.dn = and <8 x i1> %i.da, %i.cy
  %i.do = fmul fast <8 x float> %i.bg, %i.av      ; 2 uses
  %i.dp = fmul fast <8 x float> %i.ca, %i.av
  %i.dq = fadd fast <8 x float> %i.dp, %i.bz
  %i.dr = fmul fast <8 x float> %i.cb, %i.do
  %i.ds = fadd fast <8 x float> %i.dq, %i.dr
  %i.dt = load i32, ptr %i.t, align 8, !tbaa !13
  %i.du = sitofp fast i32 %i.dt to float
  %i.dv = insertelement <8 x float> poison, float %i.du, i64 0
  %i.dw = shufflevector <8 x float> %i.dv, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.dx = fmul fast <8 x float> %i.dw, %i.ds      ; 4 uses
  %i.dy = fadd fast <8 x float> %i.dx, %i.dw
  %i.dz = fmul fast <8 x float> %i.dw, %i.av      ; 2 uses
  %i.ea = fadd fast <8 x float> %i.dx, %i.dz      ; 2 uses
  %i.eb = fadd fast <8 x float> %i.ea, %i.dw
  %i.ec = fmul fast <8 x float> %i.dw, %i.do
  %i.ed = fadd fast <8 x float> %i.ec, %i.dx      ; 3 uses
  %i.ee = fadd fast <8 x float> %i.ed, %i.dw
  %i.ef = fadd fast <8 x float> %i.ed, %i.dz      ; 2 uses
  %i.eg = fadd fast <8 x float> %i.ef, %i.dw
  %i.eh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.dd)
  %i.ei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dy, <8 x float> nofpclass(nan inf) %i.dg)
  %i.ej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ea, <8 x float> nofpclass(nan inf) %i.di)
  %i.ek = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.dj)
  %i.el = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.dk)
  %i.em = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ee, <8 x float> nofpclass(nan inf) %i.dl)
  %i.en = select <8 x i1> %i.dm, <8 x float> %i.ef, <8 x float> splat (float -1.000000e+00)
  %i.eo = select <8 x i1> %i.dn, <8 x float> %i.eg, <8 x float> splat (float -1.000000e+00)
  %i.ep = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eh) ; 3 uses
  %i.eq = bitcast <8 x i32> %i.ep to <8 x float>
  %i.er = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ei) ; 4 uses
  %i.es = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ej) ; 4 uses
  %i.et = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ek) ; 4 uses
  %i.eu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.el) ; 4 uses
  %i.ev = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.em) ; 4 uses
  %i.ew = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.en) ; 4 uses
  %i.ex = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eo) ; 3 uses
  %i.ey = bitcast <8 x i32> %i.ex to <8 x float>  ; 2 uses
  %i.ez = fsub fast <8 x float> %i.bc, %i.bz      ; 4 uses
  %i.fa = fsub fast <8 x float> %i.bn, %i.ca      ; 4 uses
  %i.fb = fsub fast <8 x float> %i.by, %i.cb      ; 4 uses
  %i.fc = shufflevector <8 x i32> %i.ep, <8 x i32> %i.er, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i32> %i.ep, <8 x i32> %i.er, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.fe = bitcast <8 x i32> %i.fd to <8 x float>  ; 2 uses
  %i.ff = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fh = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fj = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ex, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ex, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fl = bitcast <8 x i32> %i.fk to <8 x float>
  %i.fm = shufflevector <8 x float> %i.ez, <8 x float> %i.fa, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x float> %i.ez, <8 x float> %i.fa, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fo = shufflevector <8 x float> %i.fb, <8 x float> %i.eq, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fp = shufflevector <8 x float> %i.fb, <8 x float> %i.fe, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fq = shufflevector <8 x i32> %i.er, <8 x i32> %i.es, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fr = shufflevector <8 x i32> %i.er, <8 x i32> %i.es, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fs = bitcast <8 x i32> %i.fr to <8 x float>
  %i.ft = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fu = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fv = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fw = bitcast <8 x i32> %i.fv to <8 x float>
  %i.fx = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fy = shufflevector <8 x float> %i.ey, <8 x float> %i.ez, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fz = shufflevector <8 x float> %i.ey, <8 x float> %i.ez, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ga = shufflevector <8 x float> %i.fa, <8 x float> %i.fb, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gb = shufflevector <8 x float> %i.fa, <8 x float> %i.fb, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gc = shufflevector <8 x i32> %i.fc, <8 x i32> %i.ff, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gd = bitcast <8 x i32> %i.gc to <8 x float>
  %i.ge = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gf = bitcast <8 x i32> %i.ge to <8 x float>
  %i.gg = shufflevector <8 x float> %i.fm, <8 x float> %i.fo, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.gh = shufflevector <8 x i32> %i.fq, <8 x i32> %i.ft, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gi = bitcast <8 x i32> %i.gh to <8 x float>  ; 2 uses
  %i.gj = shufflevector <8 x float> %i.fw, <8 x float> %i.fy, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gk = shufflevector <8 x float> %i.ga, <8 x float> %i.fe, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gm = bitcast <8 x i32> %i.gl to <8 x float>  ; 2 uses
  %i.gn = shufflevector <8 x float> %i.fl, <8 x float> %i.fn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.go = shufflevector <8 x float> %i.fp, <8 x float> %i.fs, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gp = shufflevector <8 x i32> %i.fu, <8 x i32> %i.fx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gq = bitcast <8 x i32> %i.gp to <8 x float>  ; 2 uses
  %i.gr = shufflevector <8 x float> %i.fz, <8 x float> %i.gb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gs = shufflevector <8 x i32> %i.gc, <8 x i32> %i.ge, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gt = shufflevector <8 x float> %i.gg, <8 x float> %i.gi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gu = shufflevector <8 x float> %i.gj, <8 x float> %i.gk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gv = shufflevector <8 x float> %i.gm, <8 x float> %i.gn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gw = shufflevector <8 x float> %i.go, <8 x float> %i.gq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gx = shufflevector <8 x float> %i.gr, <8 x float> %i.gd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gy = shufflevector <8 x float> %i.gf, <8 x float> %i.gg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gz = shufflevector <8 x float> %i.gi, <8 x float> %i.gj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ha = shufflevector <8 x float> %i.gk, <8 x float> %i.gm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hb = shufflevector <8 x float> %i.gn, <8 x float> %i.go, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hc = shufflevector <8 x float> %i.gq, <8 x float> %i.gr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gs, ptr %.1878, align 1, !tbaa !63
  %i.hd = getelementptr inbounds nuw i8, ptr %.1878, i64 32
  store <8 x float> %i.gt, ptr %i.hd, align 1, !tbaa !63
  %i.he = getelementptr inbounds nuw i8, ptr %.1878, i64 64
  store <8 x float> %i.gu, ptr %i.he, align 1, !tbaa !63
  %i.hf = getelementptr inbounds nuw i8, ptr %.1878, i64 96
  store <8 x float> %i.gv, ptr %i.hf, align 1, !tbaa !63
  %i.hg = getelementptr inbounds nuw i8, ptr %.1878, i64 128
  store <8 x float> %i.gw, ptr %i.hg, align 1, !tbaa !63
  %i.hh = getelementptr inbounds nuw i8, ptr %.1878, i64 160
  store <8 x float> %i.gx, ptr %i.hh, align 1, !tbaa !63
  %i.hi = getelementptr inbounds nuw i8, ptr %.1878, i64 192
  store <8 x float> %i.gy, ptr %i.hi, align 1, !tbaa !63
  %i.hj = getelementptr inbounds nuw i8, ptr %.1878, i64 224
  store <8 x float> %i.gz, ptr %i.hj, align 1, !tbaa !63
  %i.hk = getelementptr inbounds nuw i8, ptr %.1878, i64 256
  store <8 x float> %i.ha, ptr %i.hk, align 1, !tbaa !63
  %i.hl = getelementptr inbounds nuw i8, ptr %.1878, i64 288
  store <8 x float> %i.hb, ptr %i.hl, align 1, !tbaa !63
  %i.hm = getelementptr inbounds nuw i8, ptr %.1878, i64 320
  store <8 x float> %i.hc, ptr %i.hm, align 1, !tbaa !63
  %i.hn = getelementptr inbounds nuw i8, ptr %.0499877, i64 96 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.1878, i64 352 ; 2 uses
  %i.hp = add nuw nsw i32 %.0501876, 24
  %i.hq = add nuw nsw i32 %.0501876, 47
  %i.hr = icmp slt i32 %i.hq, %.fr936
  br i1 %i.hr, label %.lr.ph879, label %.preheader, !llvm.loop !407

.lr.ph886:                                        ; preds = %.preheader, %bb.p
  %.2885 = phi ptr [ %i.mp, %bb.p ], [ %.1.lcssa, %.preheader ] ; 11 uses
  %.1500884 = phi ptr [ %i.mo, %bb.p ], [ %.0499.lcssa, %.preheader ] ; 3 uses
  %.1502883 = phi i32 [ %i.mq, %bb.p ], [ %.0501.lcssa, %.preheader ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.1500884, i64 8
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !66
  %i.hu = load i32, ptr %i.s, align 4, !tbaa !55  ; 3 uses
  %i.hv = sitofp fast i32 %i.hu to float          ; 2 uses
  %i.hw = fmul fast float %i.ht, 5.000000e-01
  %i.hx = fadd fast float %i.hw, 5.000000e-01
  %i.hy = fmul fast float %i.hx, %i.hv
  %i.hz = fadd fast float %i.hy, -5.000000e-01
  %i.ia = fadd fast float %i.hv, -1.000000e+00
  %.sroa.speculated4.i549 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.hz, float 0.000000e+00)
  %.sroa.speculated.i550 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i549, float %i.ia) ; 2 uses
  %i.ib = load <2 x float>, ptr %.1500884, align 4, !tbaa !66
  %i.ic = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.id = sitofp <2 x i32> %i.ic to <2 x float>   ; 2 uses
  %i.ie = fmul fast <2 x float> %i.ib, splat (float 5.000000e-01)
  %i.if = fadd fast <2 x float> %i.ie, splat (float 5.000000e-01)
  %i.ig = fmul fast <2 x float> %i.if, %i.id
  %i.ih = fadd fast <2 x float> %i.ig, splat (float -5.000000e-01)
  %i.ii = fadd fast <2 x float> %i.id, splat (float -1.000000e+00)
  %i.ij = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ih, <2 x float> zeroinitializer)
  %i.ik = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ij, <2 x float> %i.ii) ; 2 uses
  %i.il = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ik)
  %i.im = fptosi <2 x float> %i.il to <2 x i32>   ; 5 uses
  %i.in = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i550)
  %i.io = fptosi float %i.in to i32               ; 9 uses
  %i.ip = extractelement <2 x i32> %i.im, i64 0   ; 6 uses
  %i.iq = add nsw i32 %i.ip, 1                    ; 5 uses
  %i.ir = extractelement <2 x i32> %i.im, i64 1   ; 6 uses
  %i.is = add nsw i32 %i.ir, 1                    ; 5 uses
  %i.it = add nsw i32 %i.io, 1                    ; 5 uses
  %i.iu = icmp sgt <2 x i32> %i.im, splat (i32 -1)
  %i.iv = icmp sgt <2 x i32> %i.ic, %i.im
  %i.iw = and <2 x i1> %i.iu, %i.iv               ; 2 uses
  %i.ix = icmp sgt i32 %i.io, -1
  %i.iy = icmp sgt i32 %i.hu, %i.io
  %i.iz = and i1 %i.ix, %i.iy                     ; 4 uses
  %i.ja = icmp sgt i32 %i.ip, -2
  %i.jb = extractelement <2 x i32> %i.ic, i64 0   ; 2 uses
  %i.jc = icmp slt i32 %i.iq, %i.jb
  %i.jd = and i1 %i.ja, %i.jc                     ; 2 uses
  %i.je = icmp sgt i32 %i.ir, -2
  %i.jf = extractelement <2 x i32> %i.ic, i64 1   ; 2 uses
  %i.jg = icmp slt i32 %i.is, %i.jf
  %i.jh = and i1 %i.je, %i.jg                     ; 2 uses
  %i.ji = icmp sgt i32 %i.io, -2
  %i.jj = icmp slt i32 %i.it, %i.hu
  %i.jk = and i1 %i.ji, %i.jj                     ; 4 uses
  %i.jl = extractelement <2 x i1> %i.iw, i64 0    ; 2 uses
  %i.jm = extractelement <2 x i1> %i.iw, i64 1    ; 2 uses
  %i.jn = and i1 %i.jl, %i.jm                     ; 2 uses
  %i.jo = and i1 %i.jd, %i.jm                     ; 2 uses
  %i.jp = and i1 %i.jl, %i.jh                     ; 2 uses
  %i.jq = and i1 %i.jd, %i.jh                     ; 2 uses
  %i.jr = and i1 %i.jn, %i.iz
  %i.js = and i1 %i.jo, %i.iz
  %i.jt = and i1 %i.iz, %i.jp
  %i.ju = and i1 %i.iz, %i.jq
  %i.jv = and i1 %i.jn, %i.jk
  %i.jw = and i1 %i.jo, %i.jk
  %i.jx = and i1 %i.jp, %i.jk
  %i.jy = and i1 %i.jq, %i.jk
  %i.jz = getelementptr inbounds nuw i8, ptr %.2885, i64 32
  br i1 %i.jr, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph886
  %i.ka = mul i32 %i.jf, %i.io
  %reass.add842 = add i32 %i.ka, %i.ir
  %reass.mul843 = mul i32 %reass.add842, %i.jb
  %i.kb = add i32 %reass.mul843, %i.ip
  %i.kc = load i32, ptr %i.t, align 8, !tbaa !13
  %i.kd = mul nsw i32 %i.kc, %i.kb
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph886, %bb.a
  %i.ke = phi i32 [ %i.kd, %bb.a ], [ -1, %.lr.ph886 ]
  store i32 %i.ke, ptr %.2885, align 4, !tbaa !29
  br i1 %i.js, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.kf = load i32, ptr %i.q, align 4, !tbaa !52
end_hunk_4
begin_hunk_5_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.lk = getelementptr inbounds nuw i8, ptr %.2885, i64 16
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !29
  br i1 %i.jw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ll = load i32, ptr %i.q, align 4, !tbaa !52
  %i.lm = load i32, ptr %i.r, align 8, !tbaa !53
  %i.ln = mul i32 %i.lm, %i.it
  %reass.add852 = add i32 %i.ln, %i.ir
  %reass.mul853 = mul i32 %reass.add852, %i.ll
  %i.lo = add i32 %reass.mul853, %i.iq
  %i.lp = load i32, ptr %i.t, align 8, !tbaa !13
  %i.lq = mul nsw i32 %i.lo, %i.lp
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.lr = phi i32 [ %i.lq, %bb.k ], [ -1, %bb.j ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.2885, i64 20
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !29
  br i1 %i.jx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lt = load i32, ptr %i.q, align 4, !tbaa !52
  %i.lu = load i32, ptr %i.r, align 8, !tbaa !53
  %i.lv = mul i32 %i.lu, %i.it
  %reass.add854 = add i32 %i.lv, %i.is
  %reass.mul855 = mul i32 %reass.add854, %i.lt
  %i.lw = add i32 %reass.mul855, %i.ip
  %i.lx = load i32, ptr %i.t, align 8, !tbaa !13
  %i.ly = mul nsw i32 %i.lw, %i.lx
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.lz = phi i32 [ %i.ly, %bb.m ], [ -1, %bb.l ]
  %i.ma = getelementptr inbounds nuw i8, ptr %.2885, i64 24
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !29
  br i1 %i.jy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mb = load i32, ptr %i.q, align 4, !tbaa !52
  %i.mc = load i32, ptr %i.r, align 8, !tbaa !53
  %i.md = mul i32 %i.mc, %i.it
  %reass.add856 = add i32 %i.md, %i.is
  %reass.mul857 = mul i32 %reass.add856, %i.mb
  %i.me = add i32 %reass.mul857, %i.iq
  %i.mf = load i32, ptr %i.t, align 8, !tbaa !13
  %i.mg = mul nsw i32 %i.me, %i.mf
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mh = phi i32 [ %i.mg, %bb.o ], [ -1, %bb.n ]
  %i.mi = getelementptr inbounds nuw i8, ptr %.2885, i64 28
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !29
  %i.mj = sitofp <2 x i32> %i.im to <2 x float>
  %i.mk = fsub fast <2 x float> %i.ik, %i.mj
  store <2 x float> %i.mk, ptr %i.jz, align 4, !tbaa !66
  %i.ml = sitofp fast i32 %i.io to float
  %i.mm = fsub fast float %.sroa.speculated.i550, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %.2885, i64 40
  store float %i.mm, ptr %i.mn, align 4, !tbaa !66
  %i.mo = getelementptr inbounds nuw i8, ptr %.1500884, i64 12
  %i.mp = getelementptr inbounds nuw i8, ptr %.2885, i64 44 ; 2 uses
  %i.mq = add nuw nsw i32 %.1502883, 3            ; 2 uses
  %i.mr = icmp slt i32 %i.mq, %.fr936
  br i1 %i.mr, label %.lr.ph886, label %._crit_edge, !llvm.loop !408

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.mp, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ms = load i32, ptr %i.k, align 8, !tbaa !18
  %i.mt = sext i32 %i.ms to i64
  %i.mu = icmp slt i64 %indvars.iv.next, %i.mt
  br i1 %i.mu, label %_ZN4ncnn3MatD2Ev.exit517, label %.loopexit, !llvm.loop !409

_ZN4ncnn3MatD2Ev.exit516:                         ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.mv = load ptr, ptr %1, align 8, !tbaa !24, !noalias !410 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.my = load i64, ptr %i.mw, align 8, !tbaa !21, !noalias !413 ; 2 uses
  %i.mz = load i64, ptr %i.mx, align 8, !tbaa !20, !noalias !413 ; 2 uses
  %i.na = mul i64 %i.mz, %i.my
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.na ; 2 uses
  %i.nc = shl i64 %i.my, 1
  %i.nd = mul i64 %i.nc, %i.mz
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.nd ; 2 uses
  %i.nf = icmp sgt i32 %.fr936, 7
  br i1 %i.nf, label %.lr.ph, label %.preheader859

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit516
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

.preheader859.loopexit:                           ; preds = %bb.q
  %i.nk = and i32 %.fr936, 2147483640
  br label %.preheader859

.preheader859:                                    ; preds = %.preheader859.loopexit, %_ZN4ncnn3MatD2Ev.exit516
  %.0509.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.nk, %.preheader859.loopexit ] ; 2 uses
  %.0507.lcssa = phi ptr [ %i.ne, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.uq, %.preheader859.loopexit ]
  %.0505.lcssa = phi ptr [ %i.nb, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.up, %.preheader859.loopexit ]
  %.0503.lcssa = phi ptr [ %i.mv, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.uo, %.preheader859.loopexit ]
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.ur, %.preheader859.loopexit ]
  %i.nl = icmp slt i32 %.0509.lcssa, %.fr936
  br i1 %i.nl, label %.lr.ph875, label %.loopexit

.lr.ph875:                                        ; preds = %.preheader859
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.3865 = phi ptr [ %i.i, %.lr.ph ], [ %i.ur, %bb.q ] ; 12 uses
  %.0503864 = phi ptr [ %i.mv, %.lr.ph ], [ %i.uo, %bb.q ] ; 2 uses
  %.0505863 = phi ptr [ %i.nb, %.lr.ph ], [ %i.up, %bb.q ] ; 2 uses
  %.0507862 = phi ptr [ %i.ne, %.lr.ph ], [ %i.uq, %bb.q ] ; 2 uses
  %.0509861 = phi i32 [ 0, %.lr.ph ], [ %i.us, %bb.q ]
  %i.nq = load <8 x float>, ptr %.0503864, align 1, !tbaa !63
  %i.nr = load <8 x float>, ptr %.0505863, align 1, !tbaa !63
  %i.ns = load <8 x float>, ptr %.0507862, align 1, !tbaa !63
  %i.nt = load i32, ptr %i.ng, align 4, !tbaa !52
  %i.nu = sitofp fast i32 %i.nt to float
  %i.nv = insertelement <8 x float> poison, float %i.nu, i64 0
  %i.nw = shufflevector <8 x float> %i.nv, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.nx = fmul fast <8 x float> %i.nq, splat (float 5.000000e-01)
  %i.ny = fadd fast <8 x float> %i.nx, splat (float 5.000000e-01)
  %i.nz = fmul fast <8 x float> %i.ny, %i.nw
  %i.oa = fadd fast <8 x float> %i.nz, splat (float -5.000000e-01)
  %i.ob = fadd fast <8 x float> %i.nw, splat (float -1.000000e+00)
  %i.oc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.oa, <8 x float> zeroinitializer)
  %i.od = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ob, <8 x float> nofpclass(nan inf) %i.oc) ; 2 uses
  %i.oe = load i32, ptr %i.nh, align 8, !tbaa !53
  %i.of = sitofp fast i32 %i.oe to float
  %i.og = insertelement <8 x float> poison, float %i.of, i64 0
  %i.oh = shufflevector <8 x float> %i.og, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.oi = fmul fast <8 x float> %i.nr, splat (float 5.000000e-01)
  %i.oj = fadd fast <8 x float> %i.oi, splat (float 5.000000e-01)
  %i.ok = fmul fast <8 x float> %i.oj, %i.oh
  %i.ol = fadd fast <8 x float> %i.ok, splat (float -5.000000e-01)
  %i.om = fadd fast <8 x float> %i.oh, splat (float -1.000000e+00)
  %i.on = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ol, <8 x float> zeroinitializer)
  %i.oo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.om, <8 x float> nofpclass(nan inf) %i.on) ; 2 uses
  %i.op = load i32, ptr %i.ni, align 4, !tbaa !55
  %i.oq = sitofp fast i32 %i.op to float
  %i.or = insertelement <8 x float> poison, float %i.oq, i64 0
  %i.os = shufflevector <8 x float> %i.or, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ot = fmul fast <8 x float> %i.ns, splat (float 5.000000e-01)
  %i.ou = fadd fast <8 x float> %i.ot, splat (float 5.000000e-01)
  %i.ov = fmul fast <8 x float> %i.ou, %i.os
  %i.ow = fadd fast <8 x float> %i.ov, splat (float -5.000000e-01)
  %i.ox = fadd fast <8 x float> %i.os, splat (float -1.000000e+00)
  %i.oy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ow, <8 x float> zeroinitializer)
  %i.oz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ox, <8 x float> nofpclass(nan inf) %i.oy) ; 2 uses
  %i.pa = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.od, i32 1) ; 5 uses
  %i.pb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.oo, i32 1) ; 5 uses
  %i.pc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.oz, i32 1) ; 5 uses
  %i.pd = fadd fast <8 x float> %i.pa, splat (float 1.000000e+00) ; 2 uses
  %i.pe = fadd fast <8 x float> %i.pb, splat (float 1.000000e+00) ; 2 uses
  %i.pf = fadd fast <8 x float> %i.pc, splat (float 1.000000e+00) ; 2 uses
  %i.pg = fcmp fast ogt <8 x float> %i.pa, splat (float -1.000000e+00)
  %i.ph = fcmp fast ogt <8 x float> %i.nw, %i.pa
  %i.pi = and <8 x i1> %i.pg, %i.ph               ; 2 uses
  %i.pj = fcmp fast ogt <8 x float> %i.pd, splat (float -1.000000e+00)
  %i.pk = fcmp fast ogt <8 x float> %i.nw, %i.pd
  %i.pl = and <8 x i1> %i.pj, %i.pk               ; 2 uses
  %i.pm = fcmp fast ogt <8 x float> %i.pb, splat (float -1.000000e+00)
  %i.pn = fcmp fast ogt <8 x float> %i.oh, %i.pb
  %i.po = and <8 x i1> %i.pm, %i.pn
  %i.pp = sext <8 x i1> %i.po to <8 x i32>        ; 2 uses
  %i.pq = fcmp fast ogt <8 x float> %i.pe, splat (float -1.000000e+00)
  %i.pr = fcmp fast ogt <8 x float> %i.oh, %i.pe
  %i.ps = and <8 x i1> %i.pq, %i.pr               ; 2 uses
  %i.pt = fcmp fast ogt <8 x float> %i.pc, splat (float -1.000000e+00)
  %i.pu = fcmp fast ogt <8 x float> %i.os, %i.pc
  %i.pv = and <8 x i1> %i.pt, %i.pu               ; 3 uses
  %i.pw = sext <8 x i1> %i.pv to <8 x i32>
  %i.px = fcmp fast ogt <8 x float> %i.pf, splat (float -1.000000e+00)
  %i.py = fcmp fast ogt <8 x float> %i.os, %i.pf
  %i.pz = and <8 x i1> %i.px, %i.py               ; 4 uses
  %i.qa = and <8 x i1> %i.pi, %i.ps               ; 2 uses
  %i.qb = and <8 x i1> %i.pl, %i.ps               ; 2 uses
  %i.qc = bitcast <8 x i32> %i.pp to <8 x float>
  %i.qd = select <8 x i1> %i.pi, <8 x float> %i.qc, <8 x float> zeroinitializer ; 2 uses
  %i.qe = select <8 x i1> %i.pv, <8 x float> %i.qd, <8 x float> zeroinitializer
  %i.qf = bitcast <8 x i32> %i.pp to <8 x float>
  %i.qg = select <8 x i1> %i.pl, <8 x float> %i.qf, <8 x float> zeroinitializer ; 2 uses
  %i.qh = select <8 x i1> %i.pv, <8 x float> %i.qg, <8 x float> zeroinitializer
  %i.qi = bitcast <8 x i32> %i.pw to <8 x float>  ; 2 uses
  %i.qj = select <8 x i1> %i.qa, <8 x float> %i.qi, <8 x float> zeroinitializer
  %i.qk = select <8 x i1> %i.qb, <8 x float> %i.qi, <8 x float> zeroinitializer
  %i.ql = select <8 x i1> %i.pz, <8 x float> %i.qd, <8 x float> zeroinitializer
  %i.qm = select <8 x i1> %i.pz, <8 x float> %i.qg, <8 x float> zeroinitializer
  %i.qn = and <8 x i1> %i.qa, %i.pz
  %i.qo = and <8 x i1> %i.qb, %i.pz
  %i.qp = fmul fast <8 x float> %i.oh, %i.nw      ; 2 uses
  %i.qq = fmul fast <8 x float> %i.pb, %i.nw
  %i.qr = fadd fast <8 x float> %i.qq, %i.pa
  %i.qs = fmul fast <8 x float> %i.pc, %i.qp
  %i.qt = fadd fast <8 x float> %i.qr, %i.qs
  %i.qu = load i32, ptr %i.nj, align 8, !tbaa !13
  %i.qv = sitofp fast i32 %i.qu to float
  %i.qw = insertelement <8 x float> poison, float %i.qv, i64 0
  %i.qx = shufflevector <8 x float> %i.qw, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.qy = fmul fast <8 x float> %i.qx, %i.qt      ; 4 uses
  %i.qz = fadd fast <8 x float> %i.qy, %i.qx
  %i.ra = fmul fast <8 x float> %i.qx, %i.nw      ; 2 uses
  %i.rb = fadd fast <8 x float> %i.qy, %i.ra      ; 2 uses
  %i.rc = fadd fast <8 x float> %i.rb, %i.qx
  %i.rd = fmul fast <8 x float> %i.qx, %i.qp
  %i.re = fadd fast <8 x float> %i.rd, %i.qy      ; 3 uses
  %i.rf = fadd fast <8 x float> %i.re, %i.qx
  %i.rg = fadd fast <8 x float> %i.re, %i.ra      ; 2 uses
  %i.rh = fadd fast <8 x float> %i.rg, %i.qx
  %i.ri = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qy, <8 x float> nofpclass(nan inf) %i.qe)
  %i.rj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qz, <8 x float> nofpclass(nan inf) %i.qh)
  %i.rk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rb, <8 x float> nofpclass(nan inf) %i.qj)
  %i.rl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rc, <8 x float> nofpclass(nan inf) %i.qk)
  %i.rm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.re, <8 x float> nofpclass(nan inf) %i.ql)
  %i.rn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rf, <8 x float> nofpclass(nan inf) %i.qm)
  %i.ro = select <8 x i1> %i.qn, <8 x float> %i.rg, <8 x float> splat (float -1.000000e+00)
  %i.rp = select <8 x i1> %i.qo, <8 x float> %i.rh, <8 x float> splat (float -1.000000e+00)
  %i.rq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ri) ; 3 uses
  %i.rr = bitcast <8 x i32> %i.rq to <8 x float>
  %i.rs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rj) ; 4 uses
  %i.rt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rk) ; 4 uses
  %i.ru = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rl) ; 4 uses
  %i.rv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rm) ; 4 uses
  %i.rw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rn) ; 4 uses
  %i.rx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ro) ; 4 uses
  %i.ry = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rp) ; 3 uses
  %i.rz = bitcast <8 x i32> %i.ry to <8 x float>  ; 2 uses
  %i.sa = fsub fast <8 x float> %i.od, %i.pa      ; 4 uses
  %i.sb = fsub fast <8 x float> %i.oo, %i.pb      ; 4 uses
  %i.sc = fsub fast <8 x float> %i.oz, %i.pc      ; 4 uses
  %i.sd = shufflevector <8 x i32> %i.rq, <8 x i32> %i.rs, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.se = shufflevector <8 x i32> %i.rq, <8 x i32> %i.rs, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.sf = bitcast <8 x i32> %i.se to <8 x float>  ; 2 uses
  %i.sg = shufflevector <8 x i32> %i.rt, <8 x i32> %i.ru, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sh = shufflevector <8 x i32> %i.rt, <8 x i32> %i.ru, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.si = shufflevector <8 x i32> %i.rv, <8 x i32> %i.rw, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sj = shufflevector <8 x i32> %i.rv, <8 x i32> %i.rw, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.sk = shufflevector <8 x i32> %i.rx, <8 x i32> %i.ry, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sl = shufflevector <8 x i32> %i.rx, <8 x i32> %i.ry, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.sm = bitcast <8 x i32> %i.sl to <8 x float>
  %i.sn = shufflevector <8 x float> %i.sa, <8 x float> %i.sb, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.so = shufflevector <8 x float> %i.sa, <8 x float> %i.sb, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.sp = shufflevector <8 x float> %i.sc, <8 x float> %i.rr, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.sq = shufflevector <8 x float> %i.sc, <8 x float> %i.sf, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.sr = shufflevector <8 x i32> %i.rs, <8 x i32> %i.rt, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ss = shufflevector <8 x i32> %i.rs, <8 x i32> %i.rt, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.st = bitcast <8 x i32> %i.ss to <8 x float>
  %i.su = shufflevector <8 x i32> %i.ru, <8 x i32> %i.rv, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sv = shufflevector <8 x i32> %i.ru, <8 x i32> %i.rv, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sw = shufflevector <8 x i32> %i.rw, <8 x i32> %i.rx, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sx = bitcast <8 x i32> %i.sw to <8 x float>
  %i.sy = shufflevector <8 x i32> %i.rw, <8 x i32> %i.rx, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sz = shufflevector <8 x float> %i.rz, <8 x float> %i.sa, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ta = shufflevector <8 x float> %i.rz, <8 x float> %i.sa, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.tb = shufflevector <8 x float> %i.sb, <8 x float> %i.sc, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.tc = shufflevector <8 x float> %i.sb, <8 x float> %i.sc, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.td = shufflevector <8 x i32> %i.sd, <8 x i32> %i.sg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.te = bitcast <8 x i32> %i.td to <8 x float>
  %i.tf = shufflevector <8 x i32> %i.si, <8 x i32> %i.sk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.tg = bitcast <8 x i32> %i.tf to <8 x float>
  %i.th = shufflevector <8 x float> %i.sn, <8 x float> %i.sp, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.ti = shufflevector <8 x i32> %i.sr, <8 x i32> %i.su, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.tj = bitcast <8 x i32> %i.ti to <8 x float>  ; 2 uses
  %i.tk = shufflevector <8 x float> %i.sx, <8 x float> %i.sz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.tl = shufflevector <8 x float> %i.tb, <8 x float> %i.sf, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.tm = shufflevector <8 x i32> %i.sh, <8 x i32> %i.sj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.tn = bitcast <8 x i32> %i.tm to <8 x float>  ; 2 uses
  %i.to = shufflevector <8 x float> %i.sm, <8 x float> %i.so, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.tp = shufflevector <8 x float> %i.sq, <8 x float> %i.st, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.tq = shufflevector <8 x i32> %i.sv, <8 x i32> %i.sy, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.tr = bitcast <8 x i32> %i.tq to <8 x float>  ; 2 uses
  %i.ts = shufflevector <8 x float> %i.ta, <8 x float> %i.tc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.tt = shufflevector <8 x i32> %i.td, <8 x i32> %i.tf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tu = shufflevector <8 x float> %i.th, <8 x float> %i.tj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tv = shufflevector <8 x float> %i.tk, <8 x float> %i.tl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tw = shufflevector <8 x float> %i.tn, <8 x float> %i.to, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tx = shufflevector <8 x float> %i.tp, <8 x float> %i.tr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ty = shufflevector <8 x float> %i.ts, <8 x float> %i.te, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.tz = shufflevector <8 x float> %i.tg, <8 x float> %i.th, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ua = shufflevector <8 x float> %i.tj, <8 x float> %i.tk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ub = shufflevector <8 x float> %i.tl, <8 x float> %i.tn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.uc = shufflevector <8 x float> %i.to, <8 x float> %i.tp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ud = shufflevector <8 x float> %i.tr, <8 x float> %i.ts, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.tt, ptr %.3865, align 1, !tbaa !63
  %i.ue = getelementptr inbounds nuw i8, ptr %.3865, i64 32
  store <8 x float> %i.tu, ptr %i.ue, align 1, !tbaa !63
  %i.uf = getelementptr inbounds nuw i8, ptr %.3865, i64 64
  store <8 x float> %i.tv, ptr %i.uf, align 1, !tbaa !63
  %i.ug = getelementptr inbounds nuw i8, ptr %.3865, i64 96
  store <8 x float> %i.tw, ptr %i.ug, align 1, !tbaa !63
  %i.uh = getelementptr inbounds nuw i8, ptr %.3865, i64 128
  store <8 x float> %i.tx, ptr %i.uh, align 1, !tbaa !63
  %i.ui = getelementptr inbounds nuw i8, ptr %.3865, i64 160
  store <8 x float> %i.ty, ptr %i.ui, align 1, !tbaa !63
  %i.uj = getelementptr inbounds nuw i8, ptr %.3865, i64 192
  store <8 x float> %i.tz, ptr %i.uj, align 1, !tbaa !63
  %i.uk = getelementptr inbounds nuw i8, ptr %.3865, i64 224
  store <8 x float> %i.ua, ptr %i.uk, align 1, !tbaa !63
  %i.ul = getelementptr inbounds nuw i8, ptr %.3865, i64 256
  store <8 x float> %i.ub, ptr %i.ul, align 1, !tbaa !63
  %i.um = getelementptr inbounds nuw i8, ptr %.3865, i64 288
  store <8 x float> %i.uc, ptr %i.um, align 1, !tbaa !63
  %i.un = getelementptr inbounds nuw i8, ptr %.3865, i64 320
  store <8 x float> %i.ud, ptr %i.un, align 1, !tbaa !63
  %i.uo = getelementptr inbounds nuw i8, ptr %.0503864, i64 32 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.0505863, i64 32 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.0507862, i64 32 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.3865, i64 352 ; 2 uses
  %i.us = add nuw nsw i32 %.0509861, 8            ; 2 uses
  %i.ut = or disjoint i32 %i.us, 7
  %i.uu = icmp slt i32 %i.ut, %.fr936
  br i1 %i.uu, label %bb.q, label %.preheader859.loopexit, !llvm.loop !416

bb.r:                                             ; preds = %.lr.ph875, %bb.ah
  %.4874 = phi ptr [ %.3.lcssa, %.lr.ph875 ], [ %i.zw, %bb.ah ] ; 11 uses
  %.1504873 = phi ptr [ %.0503.lcssa, %.lr.ph875 ], [ %i.zt, %bb.ah ] ; 2 uses
  %.1506872 = phi ptr [ %.0505.lcssa, %.lr.ph875 ], [ %i.zu, %bb.ah ] ; 2 uses
  %.1508871 = phi ptr [ %.0507.lcssa, %.lr.ph875 ], [ %i.zv, %bb.ah ] ; 2 uses
  %.1510870 = phi i32 [ %.0509.lcssa, %.lr.ph875 ], [ %i.zx, %bb.ah ]
  %i.uv = load float, ptr %.1504873, align 4, !tbaa !66
  %i.uw = load float, ptr %.1506872, align 4, !tbaa !66
  %i.ux = load float, ptr %.1508871, align 4, !tbaa !66
  %i.uy = load i32, ptr %i.no, align 4, !tbaa !55 ; 3 uses
  %i.uz = sitofp fast i32 %i.uy to float          ; 2 uses
  %i.va = fmul fast float %i.ux, 5.000000e-01
  %i.vb = fadd fast float %i.va, 5.000000e-01
  %i.vc = fmul fast float %i.vb, %i.uz
  %i.vd = fadd fast float %i.vc, -5.000000e-01
  %i.ve = fadd fast float %i.uz, -1.000000e+00
  %.sroa.speculated4.i555 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.vd, float 0.000000e+00)
  %.sroa.speculated.i556 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i555, float %i.ve) ; 2 uses
  %i.vf = load <2 x i32>, ptr %i.nm, align 4, !tbaa !29 ; 4 uses
  %i.vg = sitofp <2 x i32> %i.vf to <2 x float>   ; 2 uses
  %i.vh = insertelement <2 x float> poison, float %i.uv, i64 0
  %i.vi = insertelement <2 x float> %i.vh, float %i.uw, i64 1
  %i.vj = fmul fast <2 x float> %i.vi, splat (float 5.000000e-01)
  %i.vk = fadd fast <2 x float> %i.vj, splat (float 5.000000e-01)
  %i.vl = fmul fast <2 x float> %i.vk, %i.vg
  %i.vm = fadd fast <2 x float> %i.vl, splat (float -5.000000e-01)
  %i.vn = fadd fast <2 x float> %i.vg, splat (float -1.000000e+00)
  %i.vo = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vm, <2 x float> zeroinitializer)
  %i.vp = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.vo, <2 x float> %i.vn) ; 2 uses
  %i.vq = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.vp)
  %i.vr = fptosi <2 x float> %i.vq to <2 x i32>   ; 5 uses
  %i.vs = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i556)
  %i.vt = fptosi float %i.vs to i32               ; 9 uses
  %i.vu = extractelement <2 x i32> %i.vr, i64 0   ; 6 uses
  %i.vv = add nsw i32 %i.vu, 1                    ; 5 uses
  %i.vw = extractelement <2 x i32> %i.vr, i64 1   ; 6 uses
  %i.vx = add nsw i32 %i.vw, 1                    ; 5 uses
  %i.vy = add nsw i32 %i.vt, 1                    ; 5 uses
  %i.vz = icmp sgt <2 x i32> %i.vr, splat (i32 -1)
  %i.wa = icmp sgt <2 x i32> %i.vf, %i.vr
  %i.wb = and <2 x i1> %i.vz, %i.wa               ; 2 uses
  %i.wc = icmp sgt i32 %i.vt, -1
  %i.wd = icmp sgt i32 %i.uy, %i.vt
  %i.we = and i1 %i.wc, %i.wd                     ; 4 uses
  %i.wf = icmp sgt i32 %i.vu, -2
  %i.wg = extractelement <2 x i32> %i.vf, i64 0   ; 2 uses
  %i.wh = icmp slt i32 %i.vv, %i.wg
  %i.wi = and i1 %i.wf, %i.wh                     ; 2 uses
  %i.wj = icmp sgt i32 %i.vw, -2
  %i.wk = extractelement <2 x i32> %i.vf, i64 1   ; 2 uses
  %i.wl = icmp slt i32 %i.vx, %i.wk
  %i.wm = and i1 %i.wj, %i.wl                     ; 2 uses
  %i.wn = icmp sgt i32 %i.vt, -2
  %i.wo = icmp slt i32 %i.vy, %i.uy
  %i.wp = and i1 %i.wn, %i.wo                     ; 4 uses
  %i.wq = extractelement <2 x i1> %i.wb, i64 0    ; 2 uses
  %i.wr = extractelement <2 x i1> %i.wb, i64 1    ; 2 uses
  %i.ws = and i1 %i.wq, %i.wr                     ; 2 uses
  %i.wt = and i1 %i.wi, %i.wr                     ; 2 uses
  %i.wu = and i1 %i.wq, %i.wm                     ; 2 uses
  %i.wv = and i1 %i.wi, %i.wm                     ; 2 uses
  %i.ww = and i1 %i.ws, %i.we
  %i.wx = and i1 %i.wt, %i.we
  %i.wy = and i1 %i.we, %i.wu
  %i.wz = and i1 %i.we, %i.wv
  %i.xa = and i1 %i.ws, %i.wp
  %i.xb = and i1 %i.wt, %i.wp
  %i.xc = and i1 %i.wu, %i.wp
  %i.xd = and i1 %i.wv, %i.wp
  %i.xe = getelementptr inbounds nuw i8, ptr %.4874, i64 32
  br i1 %i.ww, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.xf = mul i32 %i.wk, %i.vt
  %reass.add = add i32 %i.xf, %i.vw
  %reass.mul = mul i32 %reass.add, %i.wg
  %i.xg = add i32 %reass.mul, %i.vu
  %i.xh = load i32, ptr %i.np, align 8, !tbaa !13
  %i.xi = mul nsw i32 %i.xh, %i.xg
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
end_hunk_5
begin_hunk_6_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.yw = phi i32 [ %i.yv, %bb.ac ], [ -1, %bb.ab ]
  %i.yx = getelementptr inbounds nuw i8, ptr %.4874, i64 20
  store i32 %i.yw, ptr %i.yx, align 4, !tbaa !29
  br i1 %i.xc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.yy = load i32, ptr %i.nm, align 4, !tbaa !52
  %i.yz = load i32, ptr %i.nn, align 8, !tbaa !53
  %i.za = mul i32 %i.yz, %i.vy
  %reass.add838 = add i32 %i.za, %i.vx
  %reass.mul839 = mul i32 %reass.add838, %i.yy
  %i.zb = add i32 %reass.mul839, %i.vu
  %i.zc = load i32, ptr %i.np, align 8, !tbaa !13
  %i.zd = mul nsw i32 %i.zb, %i.zc
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ze = phi i32 [ %i.zd, %bb.ae ], [ -1, %bb.ad ]
  %i.zf = getelementptr inbounds nuw i8, ptr %.4874, i64 24
  store i32 %i.ze, ptr %i.zf, align 4, !tbaa !29
  br i1 %i.xd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.zg = load i32, ptr %i.nm, align 4, !tbaa !52
  %i.zh = load i32, ptr %i.nn, align 8, !tbaa !53
  %i.zi = mul i32 %i.zh, %i.vy
  %reass.add840 = add i32 %i.zi, %i.vx
  %reass.mul841 = mul i32 %reass.add840, %i.zg
  %i.zj = add i32 %reass.mul841, %i.vv
  %i.zk = load i32, ptr %i.np, align 8, !tbaa !13
  %i.zl = mul nsw i32 %i.zj, %i.zk
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.zm = phi i32 [ %i.zl, %bb.ag ], [ -1, %bb.af ]
  %i.zn = getelementptr inbounds nuw i8, ptr %.4874, i64 28
  store i32 %i.zm, ptr %i.zn, align 4, !tbaa !29
  %i.zo = sitofp <2 x i32> %i.vr to <2 x float>
  %i.zp = fsub fast <2 x float> %i.vp, %i.zo
  store <2 x float> %i.zp, ptr %i.xe, align 4, !tbaa !66
  %i.zq = sitofp fast i32 %i.vt to float
  %i.zr = fsub fast float %.sroa.speculated.i556, %i.zq
  %i.zs = getelementptr inbounds nuw i8, ptr %.4874, i64 40
  store float %i.zr, ptr %i.zs, align 4, !tbaa !66
  %i.zt = getelementptr inbounds nuw i8, ptr %.1504873, i64 4
  %i.zu = getelementptr inbounds nuw i8, ptr %.1506872, i64 4
  %i.zv = getelementptr inbounds nuw i8, ptr %.1508871, i64 4
  %i.zw = getelementptr inbounds nuw i8, ptr %.4874, i64 44
  %i.zx = add nuw nsw i32 %.1510870, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.zx, %.fr936
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !417

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader859, %.preheader858
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr936 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !418 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader858, label %_ZN4ncnn3MatD2Ev.exit516

.preheader858:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader858
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr936, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.u = add i32 %.fr936, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0889 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !421
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !421
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !421
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph879, label %.preheader

.preheader:                                       ; preds = %.lr.ph879, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.x, %.lr.ph879 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hk, %.lr.ph879 ]
  %.1.lcssa = phi ptr [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hl, %.lr.ph879 ] ; 2 uses
  %i.ae = icmp slt i32 %.0501.lcssa, %.fr936
  br i1 %i.ae, label %.lr.ph886, label %._crit_edge

.lr.ph879:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph879
  %.1878 = phi ptr [ %i.hl, %.lr.ph879 ], [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499877 = phi ptr [ %i.hk, %.lr.ph879 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501876 = phi i32 [ %i.hm, %.lr.ph879 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0499877, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0499877, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0499877, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.aw = fmul fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fadd fast <8 x float> %i.av, splat (float -1.000000e+00) ; 2 uses
  %i.az = fmul fast <8 x float> %i.ax, %i.ay
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.az, <8 x float> zeroinitializer)
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.ba) ; 2 uses
  %i.bc = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bd = sitofp fast i32 %i.bc to float
  %i.be = insertelement <8 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <8 x float> %i.be, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bg = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bh = fadd fast <8 x float> %i.bg, splat (float 5.000000e-01)
  %i.bi = fadd fast <8 x float> %i.bf, splat (float -1.000000e+00) ; 2 uses
  %i.bj = fmul fast <8 x float> %i.bi, %i.bh
  %i.bk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bj, <8 x float> zeroinitializer)
  %i.bl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) %i.bk) ; 2 uses
  %i.bm = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bn = sitofp fast i32 %i.bm to float
  %i.bo = insertelement <8 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bq = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.br = fadd fast <8 x float> %i.bq, splat (float 5.000000e-01)
  %i.bs = fadd fast <8 x float> %i.bp, splat (float -1.000000e+00) ; 2 uses
  %i.bt = fmul fast <8 x float> %i.bs, %i.br
  %i.bu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bt, <8 x float> zeroinitializer)
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.bu) ; 2 uses
  %i.bw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bb, i32 1) ; 5 uses
  %i.bx = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bl, i32 1) ; 5 uses
  %i.by = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bv, i32 1) ; 5 uses
  %i.bz = fadd fast <8 x float> %i.bw, splat (float 1.000000e+00) ; 2 uses
  %i.ca = fadd fast <8 x float> %i.bx, splat (float 1.000000e+00) ; 2 uses
  %i.cb = fadd fast <8 x float> %i.by, splat (float 1.000000e+00) ; 2 uses
  %i.cc = fcmp fast ogt <8 x float> %i.bw, splat (float -1.000000e+00)
  %i.cd = fcmp fast ogt <8 x float> %i.av, %i.bw
  %i.ce = and <8 x i1> %i.cc, %i.cd               ; 2 uses
  %i.cf = fcmp fast ogt <8 x float> %i.bz, splat (float -1.000000e+00)
  %i.cg = fcmp fast ogt <8 x float> %i.av, %i.bz
  %i.ch = and <8 x i1> %i.cf, %i.cg               ; 2 uses
  %i.ci = fcmp fast ogt <8 x float> %i.bx, splat (float -1.000000e+00)
  %i.cj = fcmp fast ogt <8 x float> %i.bf, %i.bx
  %i.ck = and <8 x i1> %i.ci, %i.cj
  %i.cl = sext <8 x i1> %i.ck to <8 x i32>        ; 2 uses
  %i.cm = fcmp fast ogt <8 x float> %i.ca, splat (float -1.000000e+00)
  %i.cn = fcmp fast ogt <8 x float> %i.bf, %i.ca
  %i.co = and <8 x i1> %i.cm, %i.cn               ; 2 uses
  %i.cp = fcmp fast ogt <8 x float> %i.by, splat (float -1.000000e+00)
  %i.cq = fcmp fast ogt <8 x float> %i.bp, %i.by
  %i.cr = and <8 x i1> %i.cp, %i.cq               ; 3 uses
  %i.cs = sext <8 x i1> %i.cr to <8 x i32>
  %i.ct = fcmp fast ogt <8 x float> %i.cb, splat (float -1.000000e+00)
  %i.cu = fcmp fast ogt <8 x float> %i.bp, %i.cb
  %i.cv = and <8 x i1> %i.ct, %i.cu               ; 4 uses
  %i.cw = and <8 x i1> %i.ce, %i.co               ; 2 uses
  %i.cx = and <8 x i1> %i.ch, %i.co               ; 2 uses
  %i.cy = bitcast <8 x i32> %i.cl to <8 x float>
  %i.cz = select <8 x i1> %i.ce, <8 x float> %i.cy, <8 x float> zeroinitializer ; 2 uses
  %i.da = select <8 x i1> %i.cr, <8 x float> %i.cz, <8 x float> zeroinitializer
  %i.db = bitcast <8 x i32> %i.cl to <8 x float>
  %i.dc = select <8 x i1> %i.ch, <8 x float> %i.db, <8 x float> zeroinitializer ; 2 uses
  %i.dd = select <8 x i1> %i.cr, <8 x float> %i.dc, <8 x float> zeroinitializer
  %i.de = bitcast <8 x i32> %i.cs to <8 x float>  ; 2 uses
  %i.df = select <8 x i1> %i.cw, <8 x float> %i.de, <8 x float> zeroinitializer
  %i.dg = select <8 x i1> %i.cx, <8 x float> %i.de, <8 x float> zeroinitializer
  %i.dh = select <8 x i1> %i.cv, <8 x float> %i.cz, <8 x float> zeroinitializer
  %i.di = select <8 x i1> %i.cv, <8 x float> %i.dc, <8 x float> zeroinitializer
  %i.dj = and <8 x i1> %i.cw, %i.cv
  %i.dk = and <8 x i1> %i.cx, %i.cv
  %i.dl = fmul fast <8 x float> %i.bf, %i.av      ; 2 uses
  %i.dm = fmul fast <8 x float> %i.bx, %i.av
  %i.dn = fadd fast <8 x float> %i.dm, %i.bw
  %i.do = fmul fast <8 x float> %i.by, %i.dl
  %i.dp = fadd fast <8 x float> %i.dn, %i.do
  %i.dq = load i32, ptr %i.t, align 8, !tbaa !13
  %i.dr = sitofp fast i32 %i.dq to float
  %i.ds = insertelement <8 x float> poison, float %i.dr, i64 0
  %i.dt = shufflevector <8 x float> %i.ds, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.du = fmul fast <8 x float> %i.dt, %i.dp      ; 4 uses
  %i.dv = fadd fast <8 x float> %i.du, %i.dt
  %i.dw = fmul fast <8 x float> %i.dt, %i.av      ; 2 uses
  %i.dx = fadd fast <8 x float> %i.du, %i.dw      ; 2 uses
  %i.dy = fadd fast <8 x float> %i.dx, %i.dt
  %i.dz = fmul fast <8 x float> %i.dt, %i.dl
  %i.ea = fadd fast <8 x float> %i.dz, %i.du      ; 3 uses
  %i.eb = fadd fast <8 x float> %i.ea, %i.dt
  %i.ec = fadd fast <8 x float> %i.ea, %i.dw      ; 2 uses
  %i.ed = fadd fast <8 x float> %i.ec, %i.dt
  %i.ee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.du, <8 x float> nofpclass(nan inf) %i.da)
  %i.ef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dv, <8 x float> nofpclass(nan inf) %i.dd)
  %i.eg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.df)
  %i.eh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dy, <8 x float> nofpclass(nan inf) %i.dg)
  %i.ei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ea, <8 x float> nofpclass(nan inf) %i.dh)
  %i.ej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.di)
  %i.ek = select <8 x i1> %i.dj, <8 x float> %i.ec, <8 x float> splat (float -1.000000e+00)
  %i.el = select <8 x i1> %i.dk, <8 x float> %i.ed, <8 x float> splat (float -1.000000e+00)
  %i.em = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ee) ; 3 uses
  %i.en = bitcast <8 x i32> %i.em to <8 x float>
  %i.eo = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ef) ; 4 uses
  %i.ep = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eg) ; 4 uses
  %i.eq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eh) ; 4 uses
  %i.er = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ei) ; 4 uses
  %i.es = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ej) ; 4 uses
  %i.et = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ek) ; 4 uses
  %i.eu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.el) ; 3 uses
  %i.ev = bitcast <8 x i32> %i.eu to <8 x float>  ; 2 uses
  %i.ew = fsub fast <8 x float> %i.bb, %i.bw      ; 4 uses
  %i.ex = fsub fast <8 x float> %i.bl, %i.bx      ; 4 uses
  %i.ey = fsub fast <8 x float> %i.bv, %i.by      ; 4 uses
  %i.ez = shufflevector <8 x i32> %i.em, <8 x i32> %i.eo, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fa = shufflevector <8 x i32> %i.em, <8 x i32> %i.eo, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.fb = bitcast <8 x i32> %i.fa to <8 x float>  ; 2 uses
  %i.fc = shufflevector <8 x i32> %i.ep, <8 x i32> %i.eq, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i32> %i.ep, <8 x i32> %i.eq, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fe = shufflevector <8 x i32> %i.er, <8 x i32> %i.es, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ff = shufflevector <8 x i32> %i.er, <8 x i32> %i.es, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fh = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fi = bitcast <8 x i32> %i.fh to <8 x float>
  %i.fj = shufflevector <8 x float> %i.ew, <8 x float> %i.ex, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x float> %i.ew, <8 x float> %i.ex, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fl = shufflevector <8 x float> %i.ey, <8 x float> %i.en, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fm = shufflevector <8 x float> %i.ey, <8 x float> %i.fb, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fn = shufflevector <8 x i32> %i.eo, <8 x i32> %i.ep, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fo = shufflevector <8 x i32> %i.eo, <8 x i32> %i.ep, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fp = bitcast <8 x i32> %i.fo to <8 x float>
  %i.fq = shufflevector <8 x i32> %i.eq, <8 x i32> %i.er, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fr = shufflevector <8 x i32> %i.eq, <8 x i32> %i.er, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fs = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ft = bitcast <8 x i32> %i.fs to <8 x float>
  %i.fu = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fv = shufflevector <8 x float> %i.ev, <8 x float> %i.ew, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fw = shufflevector <8 x float> %i.ev, <8 x float> %i.ew, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fx = shufflevector <8 x float> %i.ex, <8 x float> %i.ey, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fy = shufflevector <8 x float> %i.ex, <8 x float> %i.ey, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fz = shufflevector <8 x i32> %i.ez, <8 x i32> %i.fc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ga = bitcast <8 x i32> %i.fz to <8 x float>
  %i.gb = shufflevector <8 x i32> %i.fe, <8 x i32> %i.fg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gc = bitcast <8 x i32> %i.gb to <8 x float>
  %i.gd = shufflevector <8 x float> %i.fj, <8 x float> %i.fl, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.ge = shufflevector <8 x i32> %i.fn, <8 x i32> %i.fq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gf = bitcast <8 x i32> %i.ge to <8 x float>  ; 2 uses
  %i.gg = shufflevector <8 x float> %i.ft, <8 x float> %i.fv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gh = shufflevector <8 x float> %i.fx, <8 x float> %i.fb, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.gi = shufflevector <8 x i32> %i.fd, <8 x i32> %i.ff, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gj = bitcast <8 x i32> %i.gi to <8 x float>  ; 2 uses
  %i.gk = shufflevector <8 x float> %i.fi, <8 x float> %i.fk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gl = shufflevector <8 x float> %i.fm, <8 x float> %i.fp, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gm = shufflevector <8 x i32> %i.fr, <8 x i32> %i.fu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gn = bitcast <8 x i32> %i.gm to <8 x float>  ; 2 uses
  %i.go = shufflevector <8 x float> %i.fw, <8 x float> %i.fy, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gp = shufflevector <8 x i32> %i.fz, <8 x i32> %i.gb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gq = shufflevector <8 x float> %i.gd, <8 x float> %i.gf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gr = shufflevector <8 x float> %i.gg, <8 x float> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gs = shufflevector <8 x float> %i.gj, <8 x float> %i.gk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gt = shufflevector <8 x float> %i.gl, <8 x float> %i.gn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gu = shufflevector <8 x float> %i.go, <8 x float> %i.ga, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gv = shufflevector <8 x float> %i.gc, <8 x float> %i.gd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gw = shufflevector <8 x float> %i.gf, <8 x float> %i.gg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gx = shufflevector <8 x float> %i.gh, <8 x float> %i.gj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gy = shufflevector <8 x float> %i.gk, <8 x float> %i.gl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gz = shufflevector <8 x float> %i.gn, <8 x float> %i.go, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gp, ptr %.1878, align 1, !tbaa !63
  %i.ha = getelementptr inbounds nuw i8, ptr %.1878, i64 32
  store <8 x float> %i.gq, ptr %i.ha, align 1, !tbaa !63
  %i.hb = getelementptr inbounds nuw i8, ptr %.1878, i64 64
  store <8 x float> %i.gr, ptr %i.hb, align 1, !tbaa !63
  %i.hc = getelementptr inbounds nuw i8, ptr %.1878, i64 96
  store <8 x float> %i.gs, ptr %i.hc, align 1, !tbaa !63
  %i.hd = getelementptr inbounds nuw i8, ptr %.1878, i64 128
  store <8 x float> %i.gt, ptr %i.hd, align 1, !tbaa !63
  %i.he = getelementptr inbounds nuw i8, ptr %.1878, i64 160
  store <8 x float> %i.gu, ptr %i.he, align 1, !tbaa !63
  %i.hf = getelementptr inbounds nuw i8, ptr %.1878, i64 192
  store <8 x float> %i.gv, ptr %i.hf, align 1, !tbaa !63
  %i.hg = getelementptr inbounds nuw i8, ptr %.1878, i64 224
  store <8 x float> %i.gw, ptr %i.hg, align 1, !tbaa !63
  %i.hh = getelementptr inbounds nuw i8, ptr %.1878, i64 256
  store <8 x float> %i.gx, ptr %i.hh, align 1, !tbaa !63
  %i.hi = getelementptr inbounds nuw i8, ptr %.1878, i64 288
  store <8 x float> %i.gy, ptr %i.hi, align 1, !tbaa !63
  %i.hj = getelementptr inbounds nuw i8, ptr %.1878, i64 320
  store <8 x float> %i.gz, ptr %i.hj, align 1, !tbaa !63
  %i.hk = getelementptr inbounds nuw i8, ptr %.0499877, i64 96 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.1878, i64 352 ; 2 uses
  %i.hm = add nuw nsw i32 %.0501876, 24
  %i.hn = add nuw nsw i32 %.0501876, 47
  %i.ho = icmp slt i32 %i.hn, %.fr936
  br i1 %i.ho, label %.lr.ph879, label %.preheader, !llvm.loop !424

.lr.ph886:                                        ; preds = %.preheader, %bb.p
  %.2885 = phi ptr [ %i.mo, %bb.p ], [ %.1.lcssa, %.preheader ] ; 11 uses
  %.1500884 = phi ptr [ %i.mn, %bb.p ], [ %.0499.lcssa, %.preheader ] ; 3 uses
  %.1502883 = phi i32 [ %i.mp, %bb.p ], [ %.0501.lcssa, %.preheader ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.1500884, i64 8
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !66
  %i.hr = load i32, ptr %i.s, align 4, !tbaa !55  ; 4 uses
  %i.hs = fmul fast float %i.hq, 5.000000e-01
  %i.ht = fadd fast float %i.hs, 5.000000e-01
  %i.hu = add nsw i32 %i.hr, -1
  %i.hv = sitofp fast i32 %i.hu to float
  %i.hw = fmul fast float %i.ht, %i.hv
  %i.hx = sitofp fast i32 %i.hr to float
  %i.hy = fadd fast float %i.hx, -1.000000e+00
  %.sroa.speculated4.i549 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.hw, float 0.000000e+00)
  %.sroa.speculated.i550 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i549, float %i.hy) ; 2 uses
  %i.hz = load <2 x float>, ptr %.1500884, align 4, !tbaa !66
  %i.ia = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 5 uses
  %i.ib = fmul fast <2 x float> %i.hz, splat (float 5.000000e-01)
  %i.ic = fadd fast <2 x float> %i.ib, splat (float 5.000000e-01)
  %i.id = add nsw <2 x i32> %i.ia, splat (i32 -1)
  %i.ie = sitofp <2 x i32> %i.id to <2 x float>
  %i.if = fmul fast <2 x float> %i.ic, %i.ie
  %i.ig = sitofp <2 x i32> %i.ia to <2 x float>
  %i.ih = fadd fast <2 x float> %i.ig, splat (float -1.000000e+00)
  %i.ii = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.if, <2 x float> zeroinitializer)
  %i.ij = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ii, <2 x float> %i.ih) ; 2 uses
  %i.ik = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ij)
  %i.il = fptosi <2 x float> %i.ik to <2 x i32>   ; 5 uses
  %i.im = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i550)
  %i.in = fptosi float %i.im to i32               ; 9 uses
  %i.io = extractelement <2 x i32> %i.il, i64 0   ; 6 uses
  %i.ip = add nsw i32 %i.io, 1                    ; 5 uses
  %i.iq = extractelement <2 x i32> %i.il, i64 1   ; 6 uses
  %i.ir = add nsw i32 %i.iq, 1                    ; 5 uses
  %i.is = add nsw i32 %i.in, 1                    ; 5 uses
  %i.it = icmp sgt <2 x i32> %i.il, splat (i32 -1)
  %i.iu = icmp sgt <2 x i32> %i.ia, %i.il
  %i.iv = and <2 x i1> %i.it, %i.iu               ; 2 uses
  %i.iw = icmp sgt i32 %i.in, -1
  %i.ix = icmp sgt i32 %i.hr, %i.in
  %i.iy = and i1 %i.iw, %i.ix                     ; 4 uses
  %i.iz = icmp sgt i32 %i.io, -2
  %i.ja = extractelement <2 x i32> %i.ia, i64 0   ; 2 uses
  %i.jb = icmp slt i32 %i.ip, %i.ja
  %i.jc = and i1 %i.iz, %i.jb                     ; 2 uses
  %i.jd = icmp sgt i32 %i.iq, -2
  %i.je = extractelement <2 x i32> %i.ia, i64 1   ; 2 uses
  %i.jf = icmp slt i32 %i.ir, %i.je
  %i.jg = and i1 %i.jd, %i.jf                     ; 2 uses
  %i.jh = icmp sgt i32 %i.in, -2
  %i.ji = icmp slt i32 %i.is, %i.hr
  %i.jj = and i1 %i.jh, %i.ji                     ; 4 uses
  %i.jk = extractelement <2 x i1> %i.iv, i64 0    ; 2 uses
  %i.jl = extractelement <2 x i1> %i.iv, i64 1    ; 2 uses
  %i.jm = and i1 %i.jk, %i.jl                     ; 2 uses
  %i.jn = and i1 %i.jc, %i.jl                     ; 2 uses
  %i.jo = and i1 %i.jk, %i.jg                     ; 2 uses
  %i.jp = and i1 %i.jc, %i.jg                     ; 2 uses
  %i.jq = and i1 %i.jm, %i.iy
  %i.jr = and i1 %i.jn, %i.iy
  %i.js = and i1 %i.iy, %i.jo
  %i.jt = and i1 %i.iy, %i.jp
  %i.ju = and i1 %i.jm, %i.jj
  %i.jv = and i1 %i.jn, %i.jj
  %i.jw = and i1 %i.jo, %i.jj
  %i.jx = and i1 %i.jp, %i.jj
  %i.jy = getelementptr inbounds nuw i8, ptr %.2885, i64 32
  br i1 %i.jq, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph886
  %i.jz = mul i32 %i.je, %i.in
  %reass.add842 = add i32 %i.jz, %i.iq
  %reass.mul843 = mul i32 %reass.add842, %i.ja
  %i.ka = add i32 %reass.mul843, %i.io
  %i.kb = load i32, ptr %i.t, align 8, !tbaa !13
  %i.kc = mul nsw i32 %i.kb, %i.ka
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph886, %bb.a
  %i.kd = phi i32 [ %i.kc, %bb.a ], [ -1, %.lr.ph886 ]
  store i32 %i.kd, ptr %.2885, align 4, !tbaa !29
  br i1 %i.jr, label %bb.c, label %bb.d

end_hunk_6
begin_hunk_7_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.li = phi i32 [ %i.lh, %bb.i ], [ -1, %bb.h ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.2885, i64 16
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !29
  br i1 %i.jv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.lk = load i32, ptr %i.q, align 4, !tbaa !52
  %i.ll = load i32, ptr %i.r, align 8, !tbaa !53
  %i.lm = mul i32 %i.ll, %i.is
  %reass.add852 = add i32 %i.lm, %i.iq
  %reass.mul853 = mul i32 %reass.add852, %i.lk
  %i.ln = add i32 %reass.mul853, %i.ip
  %i.lo = load i32, ptr %i.t, align 8, !tbaa !13
  %i.lp = mul nsw i32 %i.ln, %i.lo
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.lq = phi i32 [ %i.lp, %bb.k ], [ -1, %bb.j ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.2885, i64 20
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !29
  br i1 %i.jw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ls = load i32, ptr %i.q, align 4, !tbaa !52
  %i.lt = load i32, ptr %i.r, align 8, !tbaa !53
  %i.lu = mul i32 %i.lt, %i.is
  %reass.add854 = add i32 %i.lu, %i.ir
  %reass.mul855 = mul i32 %reass.add854, %i.ls
  %i.lv = add i32 %reass.mul855, %i.io
  %i.lw = load i32, ptr %i.t, align 8, !tbaa !13
  %i.lx = mul nsw i32 %i.lv, %i.lw
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ly = phi i32 [ %i.lx, %bb.m ], [ -1, %bb.l ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.2885, i64 24
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !29
  br i1 %i.jx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ma = load i32, ptr %i.q, align 4, !tbaa !52
  %i.mb = load i32, ptr %i.r, align 8, !tbaa !53
  %i.mc = mul i32 %i.mb, %i.is
  %reass.add856 = add i32 %i.mc, %i.ir
  %reass.mul857 = mul i32 %reass.add856, %i.ma
  %i.md = add i32 %reass.mul857, %i.ip
  %i.me = load i32, ptr %i.t, align 8, !tbaa !13
  %i.mf = mul nsw i32 %i.md, %i.me
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mg = phi i32 [ %i.mf, %bb.o ], [ -1, %bb.n ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.2885, i64 28
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !29
  %i.mi = sitofp <2 x i32> %i.il to <2 x float>
  %i.mj = fsub fast <2 x float> %i.ij, %i.mi
  store <2 x float> %i.mj, ptr %i.jy, align 4, !tbaa !66
  %i.mk = sitofp fast i32 %i.in to float
  %i.ml = fsub fast float %.sroa.speculated.i550, %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %.2885, i64 40
  store float %i.ml, ptr %i.mm, align 4, !tbaa !66
  %i.mn = getelementptr inbounds nuw i8, ptr %.1500884, i64 12
  %i.mo = getelementptr inbounds nuw i8, ptr %.2885, i64 44 ; 2 uses
  %i.mp = add nuw nsw i32 %.1502883, 3            ; 2 uses
  %i.mq = icmp slt i32 %i.mp, %.fr936
  br i1 %i.mq, label %.lr.ph886, label %._crit_edge, !llvm.loop !425

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.mo, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mr = load i32, ptr %i.k, align 8, !tbaa !18
  %i.ms = sext i32 %i.mr to i64
  %i.mt = icmp slt i64 %indvars.iv.next, %i.ms
  br i1 %i.mt, label %_ZN4ncnn3MatD2Ev.exit517, label %.loopexit, !llvm.loop !426

_ZN4ncnn3MatD2Ev.exit516:                         ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.mu = load ptr, ptr %1, align 8, !tbaa !24, !noalias !427 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mx = load i64, ptr %i.mv, align 8, !tbaa !21, !noalias !430 ; 2 uses
  %i.my = load i64, ptr %i.mw, align 8, !tbaa !20, !noalias !430 ; 2 uses
  %i.mz = mul i64 %i.my, %i.mx
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mz ; 2 uses
  %i.nb = shl i64 %i.mx, 1
  %i.nc = mul i64 %i.nb, %i.my
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.nc ; 2 uses
  %i.ne = icmp sgt i32 %.fr936, 7
  br i1 %i.ne, label %.lr.ph, label %.preheader859

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit516
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

.preheader859.loopexit:                           ; preds = %bb.q
  %i.nj = and i32 %.fr936, 2147483640
  br label %.preheader859

.preheader859:                                    ; preds = %.preheader859.loopexit, %_ZN4ncnn3MatD2Ev.exit516
  %.0509.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.nj, %.preheader859.loopexit ] ; 2 uses
  %.0507.lcssa = phi ptr [ %i.nd, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.um, %.preheader859.loopexit ]
  %.0505.lcssa = phi ptr [ %i.na, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.ul, %.preheader859.loopexit ]
  %.0503.lcssa = phi ptr [ %i.mu, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.uk, %.preheader859.loopexit ]
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.un, %.preheader859.loopexit ]
  %i.nk = icmp slt i32 %.0509.lcssa, %.fr936
  br i1 %i.nk, label %.lr.ph875, label %.loopexit

.lr.ph875:                                        ; preds = %.preheader859
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.3865 = phi ptr [ %i.i, %.lr.ph ], [ %i.un, %bb.q ] ; 12 uses
  %.0503864 = phi ptr [ %i.mu, %.lr.ph ], [ %i.uk, %bb.q ] ; 2 uses
  %.0505863 = phi ptr [ %i.na, %.lr.ph ], [ %i.ul, %bb.q ] ; 2 uses
  %.0507862 = phi ptr [ %i.nd, %.lr.ph ], [ %i.um, %bb.q ] ; 2 uses
  %.0509861 = phi i32 [ 0, %.lr.ph ], [ %i.uo, %bb.q ]
  %i.np = load <8 x float>, ptr %.0503864, align 1, !tbaa !63
  %i.nq = load <8 x float>, ptr %.0505863, align 1, !tbaa !63
  %i.nr = load <8 x float>, ptr %.0507862, align 1, !tbaa !63
  %i.ns = load i32, ptr %i.nf, align 4, !tbaa !52
  %i.nt = sitofp fast i32 %i.ns to float
  %i.nu = insertelement <8 x float> poison, float %i.nt, i64 0
  %i.nv = shufflevector <8 x float> %i.nu, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.nw = fmul fast <8 x float> %i.np, splat (float 5.000000e-01)
  %i.nx = fadd fast <8 x float> %i.nw, splat (float 5.000000e-01)
  %i.ny = fadd fast <8 x float> %i.nv, splat (float -1.000000e+00) ; 2 uses
  %i.nz = fmul fast <8 x float> %i.ny, %i.nx
  %i.oa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nz, <8 x float> zeroinitializer)
  %i.ob = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ny, <8 x float> nofpclass(nan inf) %i.oa) ; 2 uses
  %i.oc = load i32, ptr %i.ng, align 8, !tbaa !53
  %i.od = sitofp fast i32 %i.oc to float
  %i.oe = insertelement <8 x float> poison, float %i.od, i64 0
  %i.of = shufflevector <8 x float> %i.oe, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.og = fmul fast <8 x float> %i.nq, splat (float 5.000000e-01)
  %i.oh = fadd fast <8 x float> %i.og, splat (float 5.000000e-01)
  %i.oi = fadd fast <8 x float> %i.of, splat (float -1.000000e+00) ; 2 uses
  %i.oj = fmul fast <8 x float> %i.oi, %i.oh
  %i.ok = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.oj, <8 x float> zeroinitializer)
  %i.ol = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.oi, <8 x float> nofpclass(nan inf) %i.ok) ; 2 uses
  %i.om = load i32, ptr %i.nh, align 4, !tbaa !55
  %i.on = sitofp fast i32 %i.om to float
  %i.oo = insertelement <8 x float> poison, float %i.on, i64 0
  %i.op = shufflevector <8 x float> %i.oo, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.oq = fmul fast <8 x float> %i.nr, splat (float 5.000000e-01)
  %i.or = fadd fast <8 x float> %i.oq, splat (float 5.000000e-01)
  %i.os = fadd fast <8 x float> %i.op, splat (float -1.000000e+00) ; 2 uses
  %i.ot = fmul fast <8 x float> %i.os, %i.or
  %i.ou = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ot, <8 x float> zeroinitializer)
  %i.ov = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.os, <8 x float> nofpclass(nan inf) %i.ou) ; 2 uses
  %i.ow = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ob, i32 1) ; 5 uses
  %i.ox = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ol, i32 1) ; 5 uses
  %i.oy = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ov, i32 1) ; 5 uses
  %i.oz = fadd fast <8 x float> %i.ow, splat (float 1.000000e+00) ; 2 uses
  %i.pa = fadd fast <8 x float> %i.ox, splat (float 1.000000e+00) ; 2 uses
  %i.pb = fadd fast <8 x float> %i.oy, splat (float 1.000000e+00) ; 2 uses
  %i.pc = fcmp fast ogt <8 x float> %i.ow, splat (float -1.000000e+00)
  %i.pd = fcmp fast ogt <8 x float> %i.nv, %i.ow
  %i.pe = and <8 x i1> %i.pc, %i.pd               ; 2 uses
  %i.pf = fcmp fast ogt <8 x float> %i.oz, splat (float -1.000000e+00)
  %i.pg = fcmp fast ogt <8 x float> %i.nv, %i.oz
  %i.ph = and <8 x i1> %i.pf, %i.pg               ; 2 uses
  %i.pi = fcmp fast ogt <8 x float> %i.ox, splat (float -1.000000e+00)
  %i.pj = fcmp fast ogt <8 x float> %i.of, %i.ox
  %i.pk = and <8 x i1> %i.pi, %i.pj
  %i.pl = sext <8 x i1> %i.pk to <8 x i32>        ; 2 uses
  %i.pm = fcmp fast ogt <8 x float> %i.pa, splat (float -1.000000e+00)
  %i.pn = fcmp fast ogt <8 x float> %i.of, %i.pa
  %i.po = and <8 x i1> %i.pm, %i.pn               ; 2 uses
  %i.pp = fcmp fast ogt <8 x float> %i.oy, splat (float -1.000000e+00)
  %i.pq = fcmp fast ogt <8 x float> %i.op, %i.oy
  %i.pr = and <8 x i1> %i.pp, %i.pq               ; 3 uses
  %i.ps = sext <8 x i1> %i.pr to <8 x i32>
  %i.pt = fcmp fast ogt <8 x float> %i.pb, splat (float -1.000000e+00)
  %i.pu = fcmp fast ogt <8 x float> %i.op, %i.pb
  %i.pv = and <8 x i1> %i.pt, %i.pu               ; 4 uses
  %i.pw = and <8 x i1> %i.pe, %i.po               ; 2 uses
  %i.px = and <8 x i1> %i.ph, %i.po               ; 2 uses
  %i.py = bitcast <8 x i32> %i.pl to <8 x float>
  %i.pz = select <8 x i1> %i.pe, <8 x float> %i.py, <8 x float> zeroinitializer ; 2 uses
  %i.qa = select <8 x i1> %i.pr, <8 x float> %i.pz, <8 x float> zeroinitializer
  %i.qb = bitcast <8 x i32> %i.pl to <8 x float>
  %i.qc = select <8 x i1> %i.ph, <8 x float> %i.qb, <8 x float> zeroinitializer ; 2 uses
  %i.qd = select <8 x i1> %i.pr, <8 x float> %i.qc, <8 x float> zeroinitializer
  %i.qe = bitcast <8 x i32> %i.ps to <8 x float>  ; 2 uses
  %i.qf = select <8 x i1> %i.pw, <8 x float> %i.qe, <8 x float> zeroinitializer
  %i.qg = select <8 x i1> %i.px, <8 x float> %i.qe, <8 x float> zeroinitializer
  %i.qh = select <8 x i1> %i.pv, <8 x float> %i.pz, <8 x float> zeroinitializer
  %i.qi = select <8 x i1> %i.pv, <8 x float> %i.qc, <8 x float> zeroinitializer
  %i.qj = and <8 x i1> %i.pw, %i.pv
  %i.qk = and <8 x i1> %i.px, %i.pv
  %i.ql = fmul fast <8 x float> %i.of, %i.nv      ; 2 uses
  %i.qm = fmul fast <8 x float> %i.ox, %i.nv
  %i.qn = fadd fast <8 x float> %i.qm, %i.ow
  %i.qo = fmul fast <8 x float> %i.oy, %i.ql
  %i.qp = fadd fast <8 x float> %i.qn, %i.qo
  %i.qq = load i32, ptr %i.ni, align 8, !tbaa !13
  %i.qr = sitofp fast i32 %i.qq to float
  %i.qs = insertelement <8 x float> poison, float %i.qr, i64 0
  %i.qt = shufflevector <8 x float> %i.qs, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.qu = fmul fast <8 x float> %i.qt, %i.qp      ; 4 uses
  %i.qv = fadd fast <8 x float> %i.qu, %i.qt
  %i.qw = fmul fast <8 x float> %i.qt, %i.nv      ; 2 uses
  %i.qx = fadd fast <8 x float> %i.qu, %i.qw      ; 2 uses
  %i.qy = fadd fast <8 x float> %i.qx, %i.qt
  %i.qz = fmul fast <8 x float> %i.qt, %i.ql
  %i.ra = fadd fast <8 x float> %i.qz, %i.qu      ; 3 uses
  %i.rb = fadd fast <8 x float> %i.ra, %i.qt
  %i.rc = fadd fast <8 x float> %i.ra, %i.qw      ; 2 uses
  %i.rd = fadd fast <8 x float> %i.rc, %i.qt
  %i.re = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qu, <8 x float> nofpclass(nan inf) %i.qa)
  %i.rf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qv, <8 x float> nofpclass(nan inf) %i.qd)
  %i.rg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qx, <8 x float> nofpclass(nan inf) %i.qf)
  %i.rh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qy, <8 x float> nofpclass(nan inf) %i.qg)
  %i.ri = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ra, <8 x float> nofpclass(nan inf) %i.qh)
  %i.rj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rb, <8 x float> nofpclass(nan inf) %i.qi)
  %i.rk = select <8 x i1> %i.qj, <8 x float> %i.rc, <8 x float> splat (float -1.000000e+00)
  %i.rl = select <8 x i1> %i.qk, <8 x float> %i.rd, <8 x float> splat (float -1.000000e+00)
  %i.rm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.re) ; 3 uses
  %i.rn = bitcast <8 x i32> %i.rm to <8 x float>
  %i.ro = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rf) ; 4 uses
  %i.rp = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rg) ; 4 uses
  %i.rq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rh) ; 4 uses
  %i.rr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ri) ; 4 uses
  %i.rs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rj) ; 4 uses
  %i.rt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rk) ; 4 uses
  %i.ru = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rl) ; 3 uses
  %i.rv = bitcast <8 x i32> %i.ru to <8 x float>  ; 2 uses
  %i.rw = fsub fast <8 x float> %i.ob, %i.ow      ; 4 uses
  %i.rx = fsub fast <8 x float> %i.ol, %i.ox      ; 4 uses
  %i.ry = fsub fast <8 x float> %i.ov, %i.oy      ; 4 uses
  %i.rz = shufflevector <8 x i32> %i.rm, <8 x i32> %i.ro, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sa = shufflevector <8 x i32> %i.rm, <8 x i32> %i.ro, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.sb = bitcast <8 x i32> %i.sa to <8 x float>  ; 2 uses
  %i.sc = shufflevector <8 x i32> %i.rp, <8 x i32> %i.rq, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sd = shufflevector <8 x i32> %i.rp, <8 x i32> %i.rq, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.se = shufflevector <8 x i32> %i.rr, <8 x i32> %i.rs, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sf = shufflevector <8 x i32> %i.rr, <8 x i32> %i.rs, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.sg = shufflevector <8 x i32> %i.rt, <8 x i32> %i.ru, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sh = shufflevector <8 x i32> %i.rt, <8 x i32> %i.ru, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.si = bitcast <8 x i32> %i.sh to <8 x float>
  %i.sj = shufflevector <8 x float> %i.rw, <8 x float> %i.rx, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sk = shufflevector <8 x float> %i.rw, <8 x float> %i.rx, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.sl = shufflevector <8 x float> %i.ry, <8 x float> %i.rn, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.sm = shufflevector <8 x float> %i.ry, <8 x float> %i.sb, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.sn = shufflevector <8 x i32> %i.ro, <8 x i32> %i.rp, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.so = shufflevector <8 x i32> %i.ro, <8 x i32> %i.rp, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sp = bitcast <8 x i32> %i.so to <8 x float>
  %i.sq = shufflevector <8 x i32> %i.rq, <8 x i32> %i.rr, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sr = shufflevector <8 x i32> %i.rq, <8 x i32> %i.rr, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ss = shufflevector <8 x i32> %i.rs, <8 x i32> %i.rt, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.st = bitcast <8 x i32> %i.ss to <8 x float>
  %i.su = shufflevector <8 x i32> %i.rs, <8 x i32> %i.rt, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sv = shufflevector <8 x float> %i.rv, <8 x float> %i.rw, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sw = shufflevector <8 x float> %i.rv, <8 x float> %i.rw, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sx = shufflevector <8 x float> %i.rx, <8 x float> %i.ry, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sy = shufflevector <8 x float> %i.rx, <8 x float> %i.ry, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sz = shufflevector <8 x i32> %i.rz, <8 x i32> %i.sc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ta = bitcast <8 x i32> %i.sz to <8 x float>
  %i.tb = shufflevector <8 x i32> %i.se, <8 x i32> %i.sg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.tc = bitcast <8 x i32> %i.tb to <8 x float>
  %i.td = shufflevector <8 x float> %i.sj, <8 x float> %i.sl, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.te = shufflevector <8 x i32> %i.sn, <8 x i32> %i.sq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.tf = bitcast <8 x i32> %i.te to <8 x float>  ; 2 uses
  %i.tg = shufflevector <8 x float> %i.st, <8 x float> %i.sv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.th = shufflevector <8 x float> %i.sx, <8 x float> %i.sb, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.ti = shufflevector <8 x i32> %i.sd, <8 x i32> %i.sf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.tj = bitcast <8 x i32> %i.ti to <8 x float>  ; 2 uses
  %i.tk = shufflevector <8 x float> %i.si, <8 x float> %i.sk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.tl = shufflevector <8 x float> %i.sm, <8 x float> %i.sp, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.tm = shufflevector <8 x i32> %i.sr, <8 x i32> %i.su, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.tn = bitcast <8 x i32> %i.tm to <8 x float>  ; 2 uses
  %i.to = shufflevector <8 x float> %i.sw, <8 x float> %i.sy, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.tp = shufflevector <8 x i32> %i.sz, <8 x i32> %i.tb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tq = shufflevector <8 x float> %i.td, <8 x float> %i.tf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tr = shufflevector <8 x float> %i.tg, <8 x float> %i.th, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ts = shufflevector <8 x float> %i.tj, <8 x float> %i.tk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tt = shufflevector <8 x float> %i.tl, <8 x float> %i.tn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tu = shufflevector <8 x float> %i.to, <8 x float> %i.ta, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.tv = shufflevector <8 x float> %i.tc, <8 x float> %i.td, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tw = shufflevector <8 x float> %i.tf, <8 x float> %i.tg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tx = shufflevector <8 x float> %i.th, <8 x float> %i.tj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ty = shufflevector <8 x float> %i.tk, <8 x float> %i.tl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tz = shufflevector <8 x float> %i.tn, <8 x float> %i.to, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.tp, ptr %.3865, align 1, !tbaa !63
  %i.ua = getelementptr inbounds nuw i8, ptr %.3865, i64 32
  store <8 x float> %i.tq, ptr %i.ua, align 1, !tbaa !63
  %i.ub = getelementptr inbounds nuw i8, ptr %.3865, i64 64
  store <8 x float> %i.tr, ptr %i.ub, align 1, !tbaa !63
  %i.uc = getelementptr inbounds nuw i8, ptr %.3865, i64 96
  store <8 x float> %i.ts, ptr %i.uc, align 1, !tbaa !63
  %i.ud = getelementptr inbounds nuw i8, ptr %.3865, i64 128
  store <8 x float> %i.tt, ptr %i.ud, align 1, !tbaa !63
  %i.ue = getelementptr inbounds nuw i8, ptr %.3865, i64 160
  store <8 x float> %i.tu, ptr %i.ue, align 1, !tbaa !63
  %i.uf = getelementptr inbounds nuw i8, ptr %.3865, i64 192
  store <8 x float> %i.tv, ptr %i.uf, align 1, !tbaa !63
  %i.ug = getelementptr inbounds nuw i8, ptr %.3865, i64 224
  store <8 x float> %i.tw, ptr %i.ug, align 1, !tbaa !63
  %i.uh = getelementptr inbounds nuw i8, ptr %.3865, i64 256
  store <8 x float> %i.tx, ptr %i.uh, align 1, !tbaa !63
  %i.ui = getelementptr inbounds nuw i8, ptr %.3865, i64 288
  store <8 x float> %i.ty, ptr %i.ui, align 1, !tbaa !63
  %i.uj = getelementptr inbounds nuw i8, ptr %.3865, i64 320
  store <8 x float> %i.tz, ptr %i.uj, align 1, !tbaa !63
  %i.uk = getelementptr inbounds nuw i8, ptr %.0503864, i64 32 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.0505863, i64 32 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.0507862, i64 32 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.3865, i64 352 ; 2 uses
  %i.uo = add nuw nsw i32 %.0509861, 8            ; 2 uses
  %i.up = or disjoint i32 %i.uo, 7
  %i.uq = icmp slt i32 %i.up, %.fr936
  br i1 %i.uq, label %bb.q, label %.preheader859.loopexit, !llvm.loop !433

bb.r:                                             ; preds = %.lr.ph875, %bb.ah
  %.4874 = phi ptr [ %.3.lcssa, %.lr.ph875 ], [ %i.zu, %bb.ah ] ; 11 uses
  %.1504873 = phi ptr [ %.0503.lcssa, %.lr.ph875 ], [ %i.zr, %bb.ah ] ; 2 uses
  %.1506872 = phi ptr [ %.0505.lcssa, %.lr.ph875 ], [ %i.zs, %bb.ah ] ; 2 uses
  %.1508871 = phi ptr [ %.0507.lcssa, %.lr.ph875 ], [ %i.zt, %bb.ah ] ; 2 uses
  %.1510870 = phi i32 [ %.0509.lcssa, %.lr.ph875 ], [ %i.zv, %bb.ah ]
  %i.ur = load float, ptr %.1504873, align 4, !tbaa !66
  %i.us = load float, ptr %.1506872, align 4, !tbaa !66
  %i.ut = load float, ptr %.1508871, align 4, !tbaa !66
  %i.uu = load i32, ptr %i.nn, align 4, !tbaa !55 ; 4 uses
  %i.uv = fmul fast float %i.ut, 5.000000e-01
  %i.uw = fadd fast float %i.uv, 5.000000e-01
  %i.ux = add nsw i32 %i.uu, -1
  %i.uy = sitofp fast i32 %i.ux to float
  %i.uz = fmul fast float %i.uw, %i.uy
  %i.va = sitofp fast i32 %i.uu to float
  %i.vb = fadd fast float %i.va, -1.000000e+00
  %.sroa.speculated4.i555 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.uz, float 0.000000e+00)
  %.sroa.speculated.i556 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i555, float %i.vb) ; 2 uses
  %i.vc = load <2 x i32>, ptr %i.nl, align 4, !tbaa !29 ; 5 uses
  %i.vd = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.ve = insertelement <2 x float> %i.vd, float %i.us, i64 1
  %i.vf = fmul fast <2 x float> %i.ve, splat (float 5.000000e-01)
  %i.vg = fadd fast <2 x float> %i.vf, splat (float 5.000000e-01)
  %i.vh = add nsw <2 x i32> %i.vc, splat (i32 -1)
  %i.vi = sitofp <2 x i32> %i.vh to <2 x float>
  %i.vj = fmul fast <2 x float> %i.vg, %i.vi
  %i.vk = sitofp <2 x i32> %i.vc to <2 x float>
  %i.vl = fadd fast <2 x float> %i.vk, splat (float -1.000000e+00)
  %i.vm = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vj, <2 x float> zeroinitializer)
  %i.vn = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.vm, <2 x float> %i.vl) ; 2 uses
  %i.vo = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.vn)
  %i.vp = fptosi <2 x float> %i.vo to <2 x i32>   ; 5 uses
  %i.vq = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i556)
  %i.vr = fptosi float %i.vq to i32               ; 9 uses
  %i.vs = extractelement <2 x i32> %i.vp, i64 0   ; 6 uses
  %i.vt = add nsw i32 %i.vs, 1                    ; 5 uses
  %i.vu = extractelement <2 x i32> %i.vp, i64 1   ; 6 uses
  %i.vv = add nsw i32 %i.vu, 1                    ; 5 uses
  %i.vw = add nsw i32 %i.vr, 1                    ; 5 uses
  %i.vx = icmp sgt <2 x i32> %i.vp, splat (i32 -1)
  %i.vy = icmp sgt <2 x i32> %i.vc, %i.vp
  %i.vz = and <2 x i1> %i.vx, %i.vy               ; 2 uses
  %i.wa = icmp sgt i32 %i.vr, -1
  %i.wb = icmp sgt i32 %i.uu, %i.vr
  %i.wc = and i1 %i.wa, %i.wb                     ; 4 uses
  %i.wd = icmp sgt i32 %i.vs, -2
  %i.we = extractelement <2 x i32> %i.vc, i64 0   ; 2 uses
  %i.wf = icmp slt i32 %i.vt, %i.we
  %i.wg = and i1 %i.wd, %i.wf                     ; 2 uses
  %i.wh = icmp sgt i32 %i.vu, -2
  %i.wi = extractelement <2 x i32> %i.vc, i64 1   ; 2 uses
  %i.wj = icmp slt i32 %i.vv, %i.wi
  %i.wk = and i1 %i.wh, %i.wj                     ; 2 uses
  %i.wl = icmp sgt i32 %i.vr, -2
  %i.wm = icmp slt i32 %i.vw, %i.uu
  %i.wn = and i1 %i.wl, %i.wm                     ; 4 uses
  %i.wo = extractelement <2 x i1> %i.vz, i64 0    ; 2 uses
  %i.wp = extractelement <2 x i1> %i.vz, i64 1    ; 2 uses
  %i.wq = and i1 %i.wo, %i.wp                     ; 2 uses
  %i.wr = and i1 %i.wg, %i.wp                     ; 2 uses
  %i.ws = and i1 %i.wo, %i.wk                     ; 2 uses
  %i.wt = and i1 %i.wg, %i.wk                     ; 2 uses
  %i.wu = and i1 %i.wq, %i.wc
  %i.wv = and i1 %i.wr, %i.wc
  %i.ww = and i1 %i.wc, %i.ws
  %i.wx = and i1 %i.wc, %i.wt
  %i.wy = and i1 %i.wq, %i.wn
  %i.wz = and i1 %i.wr, %i.wn
  %i.xa = and i1 %i.ws, %i.wn
  %i.xb = and i1 %i.wt, %i.wn
  %i.xc = getelementptr inbounds nuw i8, ptr %.4874, i64 32
  br i1 %i.wu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.xd = mul i32 %i.wi, %i.vr
  %reass.add = add i32 %i.xd, %i.vu
  %reass.mul = mul i32 %reass.add, %i.we
  %i.xe = add i32 %reass.mul, %i.vs
  %i.xf = load i32, ptr %i.no, align 8, !tbaa !13
  %i.xg = mul nsw i32 %i.xf, %i.xe
  br label %bb.t
end_hunk_7
begin_hunk_8_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.zc = phi i32 [ %i.zb, %bb.ae ], [ -1, %bb.ad ]
  %i.zd = getelementptr inbounds nuw i8, ptr %.4874, i64 24
  store i32 %i.zc, ptr %i.zd, align 4, !tbaa !29
  br i1 %i.xb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ze = load i32, ptr %i.nl, align 4, !tbaa !52
  %i.zf = load i32, ptr %i.nm, align 8, !tbaa !53
  %i.zg = mul i32 %i.zf, %i.vw
  %reass.add840 = add i32 %i.zg, %i.vv
  %reass.mul841 = mul i32 %reass.add840, %i.ze
  %i.zh = add i32 %reass.mul841, %i.vt
  %i.zi = load i32, ptr %i.no, align 8, !tbaa !13
  %i.zj = mul nsw i32 %i.zh, %i.zi
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.zk = phi i32 [ %i.zj, %bb.ag ], [ -1, %bb.af ]
  %i.zl = getelementptr inbounds nuw i8, ptr %.4874, i64 28
  store i32 %i.zk, ptr %i.zl, align 4, !tbaa !29
  %i.zm = sitofp <2 x i32> %i.vp to <2 x float>
  %i.zn = fsub fast <2 x float> %i.vn, %i.zm
  store <2 x float> %i.zn, ptr %i.xc, align 4, !tbaa !66
  %i.zo = sitofp fast i32 %i.vr to float
  %i.zp = fsub fast float %.sroa.speculated.i556, %i.zo
  %i.zq = getelementptr inbounds nuw i8, ptr %.4874, i64 40
  store float %i.zp, ptr %i.zq, align 4, !tbaa !66
  %i.zr = getelementptr inbounds nuw i8, ptr %.1504873, i64 4
  %i.zs = getelementptr inbounds nuw i8, ptr %.1506872, i64 4
  %i.zt = getelementptr inbounds nuw i8, ptr %.1508871, i64 4
  %i.zu = getelementptr inbounds nuw i8, ptr %.4874, i64 44
  %i.zv = add nuw nsw i32 %.1510870, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.zv, %.fr936
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !434

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader859, %.preheader858
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr947 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !435 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader869, label %_ZN4ncnn3MatD2Ev.exit516

.preheader869:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader869
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr947, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.u = add i32 %.fr947, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0900 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !438
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !438
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !438
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph890, label %.preheader

.preheader:                                       ; preds = %.lr.ph890, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.x, %.lr.ph890 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hz, %.lr.ph890 ]
  %.1.lcssa = phi ptr [ %.0900, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.ia, %.lr.ph890 ] ; 2 uses
  %i.ae = icmp slt i32 %.0501.lcssa, %.fr947
  br i1 %i.ae, label %.lr.ph897, label %._crit_edge

.lr.ph890:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph890
  %.1889 = phi ptr [ %i.ia, %.lr.ph890 ], [ %.0900, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499888 = phi ptr [ %i.hz, %.lr.ph890 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501887 = phi i32 [ %i.ib, %.lr.ph890 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0499888, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0499888, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0499888, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.aw = fadd fast <8 x float> %i.ap, splat (float 1.000000e+00)
  %i.ax = fmul fast <8 x float> %i.av, splat (float 5.000000e-01)
  %i.ay = fmul fast <8 x float> %i.ax, %i.aw
  %i.az = fadd fast <8 x float> %i.av, splat (float -1.000000e+00)
  %i.ba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ay)
  %i.bb = fsub fast <8 x float> %i.ba, %i.av
  %i.bc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bb)
  %i.bd = fadd fast <8 x float> %i.av, splat (float -5.000000e-01)
  %i.be = fsub fast <8 x float> %i.bd, %i.bc
  %i.bf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.be, <8 x float> zeroinitializer)
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.bf) ; 2 uses
  %i.bh = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bi = sitofp fast i32 %i.bh to float
  %i.bj = insertelement <8 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <8 x float> %i.bj, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.bl = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bm = fadd fast <8 x float> %i.bl, splat (float 5.000000e-01)
  %i.bn = fmul fast <8 x float> %i.bm, %i.bk
  %i.bo = fadd fast <8 x float> %i.bk, splat (float -1.000000e+00)
  %i.bp = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bn)
  %i.bq = fsub fast <8 x float> %i.bp, %i.bk
  %i.br = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bq)
  %i.bs = fadd fast <8 x float> %i.bk, splat (float -5.000000e-01)
  %i.bt = fsub fast <8 x float> %i.bs, %i.br
  %i.bu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bt, <8 x float> zeroinitializer)
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bo, <8 x float> nofpclass(nan inf) %i.bu) ; 2 uses
  %i.bw = load i32, ptr %i.s, align 4, !tbaa !55
  %i.bx = sitofp fast i32 %i.bw to float
  %i.by = insertelement <8 x float> poison, float %i.bx, i64 0
  %i.bz = shufflevector <8 x float> %i.by, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.ca = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.cb = fadd fast <8 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = fmul fast <8 x float> %i.cb, %i.bz
  %i.cd = fadd fast <8 x float> %i.bz, splat (float -1.000000e+00)
  %i.ce = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cc)
  %i.cf = fsub fast <8 x float> %i.ce, %i.bz
  %i.cg = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cf)
  %i.ch = fadd fast <8 x float> %i.bz, splat (float -5.000000e-01)
  %i.ci = fsub fast <8 x float> %i.ch, %i.cg
  %i.cj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ci, <8 x float> zeroinitializer)
  %i.ck = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cd, <8 x float> nofpclass(nan inf) %i.cj) ; 2 uses
  %i.cl = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bg, i32 1) ; 5 uses
  %i.cm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bv, i32 1) ; 5 uses
  %i.cn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ck, i32 1) ; 5 uses
  %i.co = fadd fast <8 x float> %i.cl, splat (float 1.000000e+00) ; 2 uses
  %i.cp = fadd fast <8 x float> %i.cm, splat (float 1.000000e+00) ; 2 uses
  %i.cq = fadd fast <8 x float> %i.cn, splat (float 1.000000e+00) ; 2 uses
  %i.cr = fcmp fast ogt <8 x float> %i.cl, splat (float -1.000000e+00)
  %i.cs = fcmp fast ogt <8 x float> %i.av, %i.cl
  %i.ct = and <8 x i1> %i.cr, %i.cs               ; 2 uses
  %i.cu = fcmp fast ogt <8 x float> %i.co, splat (float -1.000000e+00)
  %i.cv = fcmp fast ogt <8 x float> %i.av, %i.co
  %i.cw = and <8 x i1> %i.cu, %i.cv               ; 2 uses
  %i.cx = fcmp fast ogt <8 x float> %i.cm, splat (float -1.000000e+00)
  %i.cy = fcmp fast ogt <8 x float> %i.bk, %i.cm
  %i.cz = and <8 x i1> %i.cx, %i.cy
  %i.da = sext <8 x i1> %i.cz to <8 x i32>        ; 2 uses
  %i.db = fcmp fast ogt <8 x float> %i.cp, splat (float -1.000000e+00)
  %i.dc = fcmp fast ogt <8 x float> %i.bk, %i.cp
  %i.dd = and <8 x i1> %i.db, %i.dc               ; 2 uses
  %i.de = fcmp fast ogt <8 x float> %i.cn, splat (float -1.000000e+00)
  %i.df = fcmp fast ogt <8 x float> %i.bz, %i.cn
  %i.dg = and <8 x i1> %i.de, %i.df               ; 3 uses
  %i.dh = sext <8 x i1> %i.dg to <8 x i32>
  %i.di = fcmp fast ogt <8 x float> %i.cq, splat (float -1.000000e+00)
  %i.dj = fcmp fast ogt <8 x float> %i.bz, %i.cq
  %i.dk = and <8 x i1> %i.di, %i.dj               ; 4 uses
  %i.dl = and <8 x i1> %i.ct, %i.dd               ; 2 uses
  %i.dm = and <8 x i1> %i.cw, %i.dd               ; 2 uses
  %i.dn = bitcast <8 x i32> %i.da to <8 x float>
  %i.do = select <8 x i1> %i.ct, <8 x float> %i.dn, <8 x float> zeroinitializer ; 2 uses
  %i.dp = select <8 x i1> %i.dg, <8 x float> %i.do, <8 x float> zeroinitializer
  %i.dq = bitcast <8 x i32> %i.da to <8 x float>
  %i.dr = select <8 x i1> %i.cw, <8 x float> %i.dq, <8 x float> zeroinitializer ; 2 uses
  %i.ds = select <8 x i1> %i.dg, <8 x float> %i.dr, <8 x float> zeroinitializer
  %i.dt = bitcast <8 x i32> %i.dh to <8 x float>  ; 2 uses
  %i.du = select <8 x i1> %i.dl, <8 x float> %i.dt, <8 x float> zeroinitializer
  %i.dv = select <8 x i1> %i.dm, <8 x float> %i.dt, <8 x float> zeroinitializer
  %i.dw = select <8 x i1> %i.dk, <8 x float> %i.do, <8 x float> zeroinitializer
  %i.dx = select <8 x i1> %i.dk, <8 x float> %i.dr, <8 x float> zeroinitializer
  %i.dy = and <8 x i1> %i.dl, %i.dk
  %i.dz = and <8 x i1> %i.dm, %i.dk
  %i.ea = fmul fast <8 x float> %i.bk, %i.av      ; 2 uses
  %i.eb = fmul fast <8 x float> %i.cm, %i.av
  %i.ec = fadd fast <8 x float> %i.eb, %i.cl
  %i.ed = fmul fast <8 x float> %i.cn, %i.ea
  %i.ee = fadd fast <8 x float> %i.ec, %i.ed
  %i.ef = load i32, ptr %i.t, align 8, !tbaa !13
  %i.eg = sitofp fast i32 %i.ef to float
  %i.eh = insertelement <8 x float> poison, float %i.eg, i64 0
  %i.ei = shufflevector <8 x float> %i.eh, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.ej = fmul fast <8 x float> %i.ei, %i.ee      ; 4 uses
  %i.ek = fadd fast <8 x float> %i.ej, %i.ei
  %i.el = fmul fast <8 x float> %i.ei, %i.av      ; 2 uses
  %i.em = fadd fast <8 x float> %i.ej, %i.el      ; 2 uses
  %i.en = fadd fast <8 x float> %i.em, %i.ei
  %i.eo = fmul fast <8 x float> %i.ei, %i.ea
  %i.ep = fadd fast <8 x float> %i.eo, %i.ej      ; 3 uses
  %i.eq = fadd fast <8 x float> %i.ep, %i.ei
  %i.er = fadd fast <8 x float> %i.ep, %i.el      ; 2 uses
  %i.es = fadd fast <8 x float> %i.er, %i.ei
  %i.et = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ej, <8 x float> nofpclass(nan inf) %i.dp)
  %i.eu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ek, <8 x float> nofpclass(nan inf) %i.ds)
  %i.ev = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.em, <8 x float> nofpclass(nan inf) %i.du)
  %i.ew = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.en, <8 x float> nofpclass(nan inf) %i.dv)
  %i.ex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ep, <8 x float> nofpclass(nan inf) %i.dw)
  %i.ey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.eq, <8 x float> nofpclass(nan inf) %i.dx)
  %i.ez = select <8 x i1> %i.dy, <8 x float> %i.er, <8 x float> splat (float -1.000000e+00)
  %i.fa = select <8 x i1> %i.dz, <8 x float> %i.es, <8 x float> splat (float -1.000000e+00)
  %i.fb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.et) ; 3 uses
  %i.fc = bitcast <8 x i32> %i.fb to <8 x float>
  %i.fd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eu) ; 4 uses
  %i.fe = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ev) ; 4 uses
  %i.ff = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ew) ; 4 uses
  %i.fg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ex) ; 4 uses
  %i.fh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ey) ; 4 uses
  %i.fi = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ez) ; 4 uses
  %i.fj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fa) ; 3 uses
  %i.fk = bitcast <8 x i32> %i.fj to <8 x float>  ; 2 uses
  %i.fl = fsub fast <8 x float> %i.bg, %i.cl      ; 4 uses
  %i.fm = fsub fast <8 x float> %i.bv, %i.cm      ; 4 uses
  %i.fn = fsub fast <8 x float> %i.ck, %i.cn      ; 4 uses
  %i.fo = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fd, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fp = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.fq = bitcast <8 x i32> %i.fp to <8 x float>  ; 2 uses
  %i.fr = shufflevector <8 x i32> %i.fe, <8 x i32> %i.ff, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fs = shufflevector <8 x i32> %i.fe, <8 x i32> %i.ff, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ft = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fh, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fu = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fh, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fv = shufflevector <8 x i32> %i.fi, <8 x i32> %i.fj, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fw = shufflevector <8 x i32> %i.fi, <8 x i32> %i.fj, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fx = bitcast <8 x i32> %i.fw to <8 x float>
  %i.fy = shufflevector <8 x float> %i.fl, <8 x float> %i.fm, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fz = shufflevector <8 x float> %i.fl, <8 x float> %i.fm, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ga = shufflevector <8 x float> %i.fn, <8 x float> %i.fc, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.gb = shufflevector <8 x float> %i.fn, <8 x float> %i.fq, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.gc = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gd = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>
  %i.gf = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fg, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gg = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fg, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gh = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fi, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gi = bitcast <8 x i32> %i.gh to <8 x float>
  %i.gj = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fi, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gk = shufflevector <8 x float> %i.fk, <8 x float> %i.fl, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gl = shufflevector <8 x float> %i.fk, <8 x float> %i.fl, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gm = shufflevector <8 x float> %i.fm, <8 x float> %i.fn, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gn = shufflevector <8 x float> %i.fm, <8 x float> %i.fn, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.go = shufflevector <8 x i32> %i.fo, <8 x i32> %i.fr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gp = bitcast <8 x i32> %i.go to <8 x float>
  %i.gq = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gr = bitcast <8 x i32> %i.gq to <8 x float>
  %i.gs = shufflevector <8 x float> %i.fy, <8 x float> %i.ga, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.gt = shufflevector <8 x i32> %i.gc, <8 x i32> %i.gf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gu = bitcast <8 x i32> %i.gt to <8 x float>  ; 2 uses
  %i.gv = shufflevector <8 x float> %i.gi, <8 x float> %i.gk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gw = shufflevector <8 x float> %i.gm, <8 x float> %i.fq, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.gx = shufflevector <8 x i32> %i.fs, <8 x i32> %i.fu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gy = bitcast <8 x i32> %i.gx to <8 x float>  ; 2 uses
  %i.gz = shufflevector <8 x float> %i.fx, <8 x float> %i.fz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ha = shufflevector <8 x float> %i.gb, <8 x float> %i.ge, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.hb = shufflevector <8 x i32> %i.gg, <8 x i32> %i.gj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.hc = bitcast <8 x i32> %i.hb to <8 x float>  ; 2 uses
  %i.hd = shufflevector <8 x float> %i.gl, <8 x float> %i.gn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.he = shufflevector <8 x i32> %i.go, <8 x i32> %i.gq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hf = shufflevector <8 x float> %i.gs, <8 x float> %i.gu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hg = shufflevector <8 x float> %i.gv, <8 x float> %i.gw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hh = shufflevector <8 x float> %i.gy, <8 x float> %i.gz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hi = shufflevector <8 x float> %i.ha, <8 x float> %i.hc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hj = shufflevector <8 x float> %i.hd, <8 x float> %i.gp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.hk = shufflevector <8 x float> %i.gr, <8 x float> %i.gs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hl = shufflevector <8 x float> %i.gu, <8 x float> %i.gv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hm = shufflevector <8 x float> %i.gw, <8 x float> %i.gy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hn = shufflevector <8 x float> %i.gz, <8 x float> %i.ha, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ho = shufflevector <8 x float> %i.hc, <8 x float> %i.hd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.he, ptr %.1889, align 1, !tbaa !63
  %i.hp = getelementptr inbounds nuw i8, ptr %.1889, i64 32
  store <8 x float> %i.hf, ptr %i.hp, align 1, !tbaa !63
  %i.hq = getelementptr inbounds nuw i8, ptr %.1889, i64 64
  store <8 x float> %i.hg, ptr %i.hq, align 1, !tbaa !63
  %i.hr = getelementptr inbounds nuw i8, ptr %.1889, i64 96
  store <8 x float> %i.hh, ptr %i.hr, align 1, !tbaa !63
  %i.hs = getelementptr inbounds nuw i8, ptr %.1889, i64 128
  store <8 x float> %i.hi, ptr %i.hs, align 1, !tbaa !63
  %i.ht = getelementptr inbounds nuw i8, ptr %.1889, i64 160
  store <8 x float> %i.hj, ptr %i.ht, align 1, !tbaa !63
  %i.hu = getelementptr inbounds nuw i8, ptr %.1889, i64 192
  store <8 x float> %i.hk, ptr %i.hu, align 1, !tbaa !63
  %i.hv = getelementptr inbounds nuw i8, ptr %.1889, i64 224
  store <8 x float> %i.hl, ptr %i.hv, align 1, !tbaa !63
  %i.hw = getelementptr inbounds nuw i8, ptr %.1889, i64 256
  store <8 x float> %i.hm, ptr %i.hw, align 1, !tbaa !63
  %i.hx = getelementptr inbounds nuw i8, ptr %.1889, i64 288
  store <8 x float> %i.hn, ptr %i.hx, align 1, !tbaa !63
  %i.hy = getelementptr inbounds nuw i8, ptr %.1889, i64 320
  store <8 x float> %i.ho, ptr %i.hy, align 1, !tbaa !63
  %i.hz = getelementptr inbounds nuw i8, ptr %.0499888, i64 96 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.1889, i64 352 ; 2 uses
  %i.ib = add nuw nsw i32 %.0501887, 24
  %i.ic = add nuw nsw i32 %.0501887, 47
  %i.id = icmp slt i32 %i.ic, %.fr947
  br i1 %i.id, label %.lr.ph890, label %.preheader, !llvm.loop !441

.lr.ph897:                                        ; preds = %.preheader, %bb.p
  %.2896 = phi ptr [ %i.nj, %bb.p ], [ %.1.lcssa, %.preheader ] ; 11 uses
  %.1500895 = phi ptr [ %i.ni, %bb.p ], [ %.0499.lcssa, %.preheader ] ; 3 uses
  %.1502894 = phi i32 [ %i.nk, %bb.p ], [ %.0501.lcssa, %.preheader ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.1500895, i64 8
  %i.if = load float, ptr %i.ie, align 4, !tbaa !66
  %i.ig = load i32, ptr %i.s, align 4, !tbaa !55  ; 3 uses
  %i.ih = sitofp fast i32 %i.ig to float          ; 4 uses
  %i.ii = fmul fast float %i.if, 5.000000e-01
  %i.ij = fadd fast float %i.ii, 5.000000e-01
  %i.ik = fmul fast float %i.ij, %i.ih
  %i.il = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ik)
  %i.im = fsub fast float %i.il, %i.ih
  %i.in = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.im)
  %i.io = fadd fast float %i.ih, -5.000000e-01
  %i.ip = fsub fast float %i.io, %i.in
  %i.iq = fadd fast float %i.ih, -1.000000e+00
  %.sroa.speculated6.i549 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ip, float 0.000000e+00)
  %.sroa.speculated.i550 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i549, float %i.iq) ; 2 uses
  %i.ir = load <2 x float>, ptr %.1500895, align 4, !tbaa !66
  %i.is = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 4 uses
  %i.it = sitofp <2 x i32> %i.is to <2 x float>   ; 4 uses
  %i.iu = fmul fast <2 x float> %i.ir, splat (float 5.000000e-01)
  %i.iv = fadd fast <2 x float> %i.iu, splat (float 5.000000e-01)
  %i.iw = fmul fast <2 x float> %i.iv, %i.it
  %i.ix = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.iw)
  %i.iy = fsub fast <2 x float> %i.ix, %i.it
  %i.iz = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.iy)
  %i.ja = fadd fast <2 x float> %i.it, splat (float -5.000000e-01)
  %i.jb = fsub fast <2 x float> %i.ja, %i.iz
  %i.jc = fadd fast <2 x float> %i.it, splat (float -1.000000e+00)
  %i.jd = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jb, <2 x float> zeroinitializer)
  %i.je = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.jd, <2 x float> %i.jc) ; 2 uses
  %i.jf = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.je)
  %i.jg = fptosi <2 x float> %i.jf to <2 x i32>   ; 5 uses
  %i.jh = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i550)
  %i.ji = fptosi float %i.jh to i32               ; 9 uses
  %i.jj = extractelement <2 x i32> %i.jg, i64 0   ; 6 uses
  %i.jk = add nsw i32 %i.jj, 1                    ; 5 uses
  %i.jl = extractelement <2 x i32> %i.jg, i64 1   ; 6 uses
  %i.jm = add nsw i32 %i.jl, 1                    ; 5 uses
  %i.jn = add nsw i32 %i.ji, 1                    ; 5 uses
  %i.jo = icmp sgt <2 x i32> %i.jg, splat (i32 -1)
  %i.jp = icmp sgt <2 x i32> %i.is, %i.jg
  %i.jq = and <2 x i1> %i.jo, %i.jp               ; 2 uses
  %i.jr = icmp sgt i32 %i.ji, -1
  %i.js = icmp sgt i32 %i.ig, %i.ji
  %i.jt = and i1 %i.jr, %i.js                     ; 4 uses
  %i.ju = icmp sgt i32 %i.jj, -2
  %i.jv = extractelement <2 x i32> %i.is, i64 0   ; 2 uses
  %i.jw = icmp slt i32 %i.jk, %i.jv
  %i.jx = and i1 %i.ju, %i.jw                     ; 2 uses
  %i.jy = icmp sgt i32 %i.jl, -2
  %i.jz = extractelement <2 x i32> %i.is, i64 1   ; 2 uses
  %i.ka = icmp slt i32 %i.jm, %i.jz
  %i.kb = and i1 %i.jy, %i.ka                     ; 2 uses
  %i.kc = icmp sgt i32 %i.ji, -2
  %i.kd = icmp slt i32 %i.jn, %i.ig
  %i.ke = and i1 %i.kc, %i.kd                     ; 4 uses
  %i.kf = extractelement <2 x i1> %i.jq, i64 0    ; 2 uses
  %i.kg = extractelement <2 x i1> %i.jq, i64 1    ; 2 uses
  %i.kh = and i1 %i.kf, %i.kg                     ; 2 uses
  %i.ki = and i1 %i.jx, %i.kg                     ; 2 uses
  %i.kj = and i1 %i.kf, %i.kb                     ; 2 uses
  %i.kk = and i1 %i.jx, %i.kb                     ; 2 uses
  %i.kl = and i1 %i.kh, %i.jt
  %i.km = and i1 %i.ki, %i.jt
  %i.kn = and i1 %i.jt, %i.kj
  %i.ko = and i1 %i.jt, %i.kk
  %i.kp = and i1 %i.kh, %i.ke
  %i.kq = and i1 %i.ki, %i.ke
  %i.kr = and i1 %i.kj, %i.ke
  %i.ks = and i1 %i.kk, %i.ke
  %i.kt = getelementptr inbounds nuw i8, ptr %.2896, i64 32
  br i1 %i.kl, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph897
  %i.ku = mul i32 %i.jz, %i.ji
  %reass.add850 = add i32 %i.ku, %i.jl
  %reass.mul851 = mul i32 %reass.add850, %i.jv
  %i.kv = add i32 %reass.mul851, %i.jj
  %i.kw = load i32, ptr %i.t, align 8, !tbaa !13
  %i.kx = mul nsw i32 %i.kw, %i.kv
  br label %bb.b
end_hunk_8
begin_hunk_9_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.mk = mul nsw i32 %i.mi, %i.mj
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ml = phi i32 [ %i.mk, %bb.k ], [ -1, %bb.j ]
  %i.mm = getelementptr inbounds nuw i8, ptr %.2896, i64 20
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !29
  br i1 %i.kr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mn = load i32, ptr %i.q, align 4, !tbaa !52
  %i.mo = load i32, ptr %i.r, align 8, !tbaa !53
  %i.mp = mul i32 %i.mo, %i.jn
  %reass.add862 = add i32 %i.mp, %i.jm
  %reass.mul863 = mul i32 %reass.add862, %i.mn
  %i.mq = add i32 %reass.mul863, %i.jj
  %i.mr = load i32, ptr %i.t, align 8, !tbaa !13
  %i.ms = mul nsw i32 %i.mq, %i.mr
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.mt = phi i32 [ %i.ms, %bb.m ], [ -1, %bb.l ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.2896, i64 24
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !29
  br i1 %i.ks, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mv = load i32, ptr %i.q, align 4, !tbaa !52
  %i.mw = load i32, ptr %i.r, align 8, !tbaa !53
  %i.mx = mul i32 %i.mw, %i.jn
  %reass.add864 = add i32 %i.mx, %i.jm
  %reass.mul865 = mul i32 %reass.add864, %i.mv
  %i.my = add i32 %reass.mul865, %i.jk
  %i.mz = load i32, ptr %i.t, align 8, !tbaa !13
  %i.na = mul nsw i32 %i.my, %i.mz
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.nb = phi i32 [ %i.na, %bb.o ], [ -1, %bb.n ]
  %i.nc = getelementptr inbounds nuw i8, ptr %.2896, i64 28
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !29
  %i.nd = sitofp <2 x i32> %i.jg to <2 x float>
  %i.ne = fsub fast <2 x float> %i.je, %i.nd
  store <2 x float> %i.ne, ptr %i.kt, align 4, !tbaa !66
  %i.nf = sitofp fast i32 %i.ji to float
  %i.ng = fsub fast float %.sroa.speculated.i550, %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %.2896, i64 40
  store float %i.ng, ptr %i.nh, align 4, !tbaa !66
  %i.ni = getelementptr inbounds nuw i8, ptr %.1500895, i64 12
  %i.nj = getelementptr inbounds nuw i8, ptr %.2896, i64 44 ; 2 uses
  %i.nk = add nuw nsw i32 %.1502894, 3            ; 2 uses
  %i.nl = icmp slt i32 %i.nk, %.fr947
  br i1 %i.nl, label %.lr.ph897, label %._crit_edge, !llvm.loop !442

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.nj, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nm = load i32, ptr %i.k, align 8, !tbaa !18
  %i.nn = sext i32 %i.nm to i64
  %i.no = icmp slt i64 %indvars.iv.next, %i.nn
  br i1 %i.no, label %_ZN4ncnn3MatD2Ev.exit517, label %.loopexit, !llvm.loop !443

_ZN4ncnn3MatD2Ev.exit516:                         ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.np = load ptr, ptr %1, align 8, !tbaa !24, !noalias !444 ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ns = load i64, ptr %i.nq, align 8, !tbaa !21, !noalias !447 ; 2 uses
  %i.nt = load i64, ptr %i.nr, align 8, !tbaa !20, !noalias !447 ; 2 uses
  %i.nu = mul i64 %i.nt, %i.ns
  %i.nv = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nu ; 2 uses
  %i.nw = shl i64 %i.ns, 1
  %i.nx = mul i64 %i.nw, %i.nt
  %i.ny = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nx ; 2 uses
  %i.nz = icmp sgt i32 %.fr947, 7
  br i1 %i.nz, label %.lr.ph, label %.preheader870

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit516
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

.preheader870.loopexit:                           ; preds = %bb.q
  %i.oe = and i32 %.fr947, 2147483640
  br label %.preheader870

.preheader870:                                    ; preds = %.preheader870.loopexit, %_ZN4ncnn3MatD2Ev.exit516
  %.0509.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.oe, %.preheader870.loopexit ] ; 2 uses
  %.0507.lcssa = phi ptr [ %i.ny, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vw, %.preheader870.loopexit ]
  %.0505.lcssa = phi ptr [ %i.nv, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vv, %.preheader870.loopexit ]
  %.0503.lcssa = phi ptr [ %i.np, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vu, %.preheader870.loopexit ]
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vx, %.preheader870.loopexit ]
  %i.of = icmp slt i32 %.0509.lcssa, %.fr947
  br i1 %i.of, label %.lr.ph886, label %.loopexit

.lr.ph886:                                        ; preds = %.preheader870
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.3876 = phi ptr [ %i.i, %.lr.ph ], [ %i.vx, %bb.q ] ; 12 uses
  %.0503875 = phi ptr [ %i.np, %.lr.ph ], [ %i.vu, %bb.q ] ; 2 uses
  %.0505874 = phi ptr [ %i.nv, %.lr.ph ], [ %i.vv, %bb.q ] ; 2 uses
  %.0507873 = phi ptr [ %i.ny, %.lr.ph ], [ %i.vw, %bb.q ] ; 2 uses
  %.0509872 = phi i32 [ 0, %.lr.ph ], [ %i.vy, %bb.q ]
  %i.ok = load <8 x float>, ptr %.0503875, align 1, !tbaa !63
  %i.ol = load <8 x float>, ptr %.0505874, align 1, !tbaa !63
  %i.om = load <8 x float>, ptr %.0507873, align 1, !tbaa !63
  %i.on = load i32, ptr %i.oa, align 4, !tbaa !52
  %i.oo = sitofp fast i32 %i.on to float
  %i.op = insertelement <8 x float> poison, float %i.oo, i64 0
  %i.oq = shufflevector <8 x float> %i.op, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.or = fmul fast <8 x float> %i.ok, splat (float 5.000000e-01)
  %i.os = fadd fast <8 x float> %i.or, splat (float 5.000000e-01)
  %i.ot = fmul fast <8 x float> %i.os, %i.oq
  %i.ou = fadd fast <8 x float> %i.oq, splat (float -1.000000e+00)
  %i.ov = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ot)
  %i.ow = fsub fast <8 x float> %i.ov, %i.oq
  %i.ox = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ow)
  %i.oy = fadd fast <8 x float> %i.oq, splat (float -5.000000e-01)
  %i.oz = fsub fast <8 x float> %i.oy, %i.ox
  %i.pa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.oz, <8 x float> zeroinitializer)
  %i.pb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ou, <8 x float> nofpclass(nan inf) %i.pa) ; 2 uses
  %i.pc = load i32, ptr %i.ob, align 8, !tbaa !53
  %i.pd = sitofp fast i32 %i.pc to float
  %i.pe = insertelement <8 x float> poison, float %i.pd, i64 0
  %i.pf = shufflevector <8 x float> %i.pe, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.pg = fmul fast <8 x float> %i.ol, splat (float 5.000000e-01)
  %i.ph = fadd fast <8 x float> %i.pg, splat (float 5.000000e-01)
  %i.pi = fmul fast <8 x float> %i.ph, %i.pf
  %i.pj = fadd fast <8 x float> %i.pf, splat (float -1.000000e+00)
  %i.pk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pi)
  %i.pl = fsub fast <8 x float> %i.pk, %i.pf
  %i.pm = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pl)
  %i.pn = fadd fast <8 x float> %i.pf, splat (float -5.000000e-01)
  %i.po = fsub fast <8 x float> %i.pn, %i.pm
  %i.pp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.po, <8 x float> zeroinitializer)
  %i.pq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.pj, <8 x float> nofpclass(nan inf) %i.pp) ; 2 uses
  %i.pr = load i32, ptr %i.oc, align 4, !tbaa !55
  %i.ps = sitofp fast i32 %i.pr to float
  %i.pt = insertelement <8 x float> poison, float %i.ps, i64 0
  %i.pu = shufflevector <8 x float> %i.pt, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.pv = fmul fast <8 x float> %i.om, splat (float 5.000000e-01)
  %i.pw = fadd fast <8 x float> %i.pv, splat (float 5.000000e-01)
  %i.px = fmul fast <8 x float> %i.pw, %i.pu
  %i.py = fadd fast <8 x float> %i.pu, splat (float -1.000000e+00)
  %i.pz = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.px)
  %i.qa = fsub fast <8 x float> %i.pz, %i.pu
  %i.qb = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.qa)
  %i.qc = fadd fast <8 x float> %i.pu, splat (float -5.000000e-01)
  %i.qd = fsub fast <8 x float> %i.qc, %i.qb
  %i.qe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.qd, <8 x float> zeroinitializer)
  %i.qf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.py, <8 x float> nofpclass(nan inf) %i.qe) ; 2 uses
  %i.qg = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.pb, i32 1) ; 5 uses
  %i.qh = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.pq, i32 1) ; 5 uses
  %i.qi = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.qf, i32 1) ; 5 uses
  %i.qj = fadd fast <8 x float> %i.qg, splat (float 1.000000e+00) ; 2 uses
  %i.qk = fadd fast <8 x float> %i.qh, splat (float 1.000000e+00) ; 2 uses
  %i.ql = fadd fast <8 x float> %i.qi, splat (float 1.000000e+00) ; 2 uses
  %i.qm = fcmp fast ogt <8 x float> %i.qg, splat (float -1.000000e+00)
  %i.qn = fcmp fast ogt <8 x float> %i.oq, %i.qg
  %i.qo = and <8 x i1> %i.qm, %i.qn               ; 2 uses
  %i.qp = fcmp fast ogt <8 x float> %i.qj, splat (float -1.000000e+00)
  %i.qq = fcmp fast ogt <8 x float> %i.oq, %i.qj
  %i.qr = and <8 x i1> %i.qp, %i.qq               ; 2 uses
  %i.qs = fcmp fast ogt <8 x float> %i.qh, splat (float -1.000000e+00)
  %i.qt = fcmp fast ogt <8 x float> %i.pf, %i.qh
  %i.qu = and <8 x i1> %i.qs, %i.qt
  %i.qv = sext <8 x i1> %i.qu to <8 x i32>        ; 2 uses
  %i.qw = fcmp fast ogt <8 x float> %i.qk, splat (float -1.000000e+00)
  %i.qx = fcmp fast ogt <8 x float> %i.pf, %i.qk
  %i.qy = and <8 x i1> %i.qw, %i.qx               ; 2 uses
  %i.qz = fcmp fast ogt <8 x float> %i.qi, splat (float -1.000000e+00)
  %i.ra = fcmp fast ogt <8 x float> %i.pu, %i.qi
  %i.rb = and <8 x i1> %i.qz, %i.ra               ; 3 uses
  %i.rc = sext <8 x i1> %i.rb to <8 x i32>
  %i.rd = fcmp fast ogt <8 x float> %i.ql, splat (float -1.000000e+00)
  %i.re = fcmp fast ogt <8 x float> %i.pu, %i.ql
  %i.rf = and <8 x i1> %i.rd, %i.re               ; 4 uses
  %i.rg = and <8 x i1> %i.qo, %i.qy               ; 2 uses
  %i.rh = and <8 x i1> %i.qr, %i.qy               ; 2 uses
  %i.ri = bitcast <8 x i32> %i.qv to <8 x float>
  %i.rj = select <8 x i1> %i.qo, <8 x float> %i.ri, <8 x float> zeroinitializer ; 2 uses
  %i.rk = select <8 x i1> %i.rb, <8 x float> %i.rj, <8 x float> zeroinitializer
  %i.rl = bitcast <8 x i32> %i.qv to <8 x float>
  %i.rm = select <8 x i1> %i.qr, <8 x float> %i.rl, <8 x float> zeroinitializer ; 2 uses
  %i.rn = select <8 x i1> %i.rb, <8 x float> %i.rm, <8 x float> zeroinitializer
  %i.ro = bitcast <8 x i32> %i.rc to <8 x float>  ; 2 uses
  %i.rp = select <8 x i1> %i.rg, <8 x float> %i.ro, <8 x float> zeroinitializer
  %i.rq = select <8 x i1> %i.rh, <8 x float> %i.ro, <8 x float> zeroinitializer
  %i.rr = select <8 x i1> %i.rf, <8 x float> %i.rj, <8 x float> zeroinitializer
  %i.rs = select <8 x i1> %i.rf, <8 x float> %i.rm, <8 x float> zeroinitializer
  %i.rt = and <8 x i1> %i.rg, %i.rf
  %i.ru = and <8 x i1> %i.rh, %i.rf
  %i.rv = fmul fast <8 x float> %i.pf, %i.oq      ; 2 uses
  %i.rw = fmul fast <8 x float> %i.qh, %i.oq
  %i.rx = fadd fast <8 x float> %i.rw, %i.qg
  %i.ry = fmul fast <8 x float> %i.qi, %i.rv
  %i.rz = fadd fast <8 x float> %i.rx, %i.ry
  %i.sa = load i32, ptr %i.od, align 8, !tbaa !13
  %i.sb = sitofp fast i32 %i.sa to float
  %i.sc = insertelement <8 x float> poison, float %i.sb, i64 0
  %i.sd = shufflevector <8 x float> %i.sc, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.se = fmul fast <8 x float> %i.sd, %i.rz      ; 4 uses
  %i.sf = fadd fast <8 x float> %i.se, %i.sd
  %i.sg = fmul fast <8 x float> %i.sd, %i.oq      ; 2 uses
  %i.sh = fadd fast <8 x float> %i.se, %i.sg      ; 2 uses
  %i.si = fadd fast <8 x float> %i.sh, %i.sd
  %i.sj = fmul fast <8 x float> %i.sd, %i.rv
  %i.sk = fadd fast <8 x float> %i.sj, %i.se      ; 3 uses
  %i.sl = fadd fast <8 x float> %i.sk, %i.sd
  %i.sm = fadd fast <8 x float> %i.sk, %i.sg      ; 2 uses
  %i.sn = fadd fast <8 x float> %i.sm, %i.sd
  %i.so = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.se, <8 x float> nofpclass(nan inf) %i.rk)
  %i.sp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.sf, <8 x float> nofpclass(nan inf) %i.rn)
  %i.sq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.sh, <8 x float> nofpclass(nan inf) %i.rp)
  %i.sr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.si, <8 x float> nofpclass(nan inf) %i.rq)
  %i.ss = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.sk, <8 x float> nofpclass(nan inf) %i.rr)
  %i.st = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.sl, <8 x float> nofpclass(nan inf) %i.rs)
  %i.su = select <8 x i1> %i.rt, <8 x float> %i.sm, <8 x float> splat (float -1.000000e+00)
  %i.sv = select <8 x i1> %i.ru, <8 x float> %i.sn, <8 x float> splat (float -1.000000e+00)
  %i.sw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.so) ; 3 uses
  %i.sx = bitcast <8 x i32> %i.sw to <8 x float>
  %i.sy = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sp) ; 4 uses
  %i.sz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sq) ; 4 uses
  %i.ta = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sr) ; 4 uses
  %i.tb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ss) ; 4 uses
  %i.tc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.st) ; 4 uses
  %i.td = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.su) ; 4 uses
  %i.te = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sv) ; 3 uses
  %i.tf = bitcast <8 x i32> %i.te to <8 x float>  ; 2 uses
  %i.tg = fsub fast <8 x float> %i.pb, %i.qg      ; 4 uses
  %i.th = fsub fast <8 x float> %i.pq, %i.qh      ; 4 uses
  %i.ti = fsub fast <8 x float> %i.qf, %i.qi      ; 4 uses
  %i.tj = shufflevector <8 x i32> %i.sw, <8 x i32> %i.sy, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.tk = shufflevector <8 x i32> %i.sw, <8 x i32> %i.sy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.tl = bitcast <8 x i32> %i.tk to <8 x float>  ; 2 uses
  %i.tm = shufflevector <8 x i32> %i.sz, <8 x i32> %i.ta, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.tn = shufflevector <8 x i32> %i.sz, <8 x i32> %i.ta, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.to = shufflevector <8 x i32> %i.tb, <8 x i32> %i.tc, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.tp = shufflevector <8 x i32> %i.tb, <8 x i32> %i.tc, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.tq = shufflevector <8 x i32> %i.td, <8 x i32> %i.te, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.tr = shufflevector <8 x i32> %i.td, <8 x i32> %i.te, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ts = bitcast <8 x i32> %i.tr to <8 x float>
  %i.tt = shufflevector <8 x float> %i.tg, <8 x float> %i.th, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.tu = shufflevector <8 x float> %i.tg, <8 x float> %i.th, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.tv = shufflevector <8 x float> %i.ti, <8 x float> %i.sx, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.tw = shufflevector <8 x float> %i.ti, <8 x float> %i.tl, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.tx = shufflevector <8 x i32> %i.sy, <8 x i32> %i.sz, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ty = shufflevector <8 x i32> %i.sy, <8 x i32> %i.sz, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.tz = bitcast <8 x i32> %i.ty to <8 x float>
  %i.ua = shufflevector <8 x i32> %i.ta, <8 x i32> %i.tb, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ub = shufflevector <8 x i32> %i.ta, <8 x i32> %i.tb, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.uc = shufflevector <8 x i32> %i.tc, <8 x i32> %i.td, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ud = bitcast <8 x i32> %i.uc to <8 x float>
  %i.ue = shufflevector <8 x i32> %i.tc, <8 x i32> %i.td, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.uf = shufflevector <8 x float> %i.tf, <8 x float> %i.tg, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ug = shufflevector <8 x float> %i.tf, <8 x float> %i.tg, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.uh = shufflevector <8 x float> %i.th, <8 x float> %i.ti, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ui = shufflevector <8 x float> %i.th, <8 x float> %i.ti, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.uj = shufflevector <8 x i32> %i.tj, <8 x i32> %i.tm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.uk = bitcast <8 x i32> %i.uj to <8 x float>
  %i.ul = shufflevector <8 x i32> %i.to, <8 x i32> %i.tq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.um = bitcast <8 x i32> %i.ul to <8 x float>
  %i.un = shufflevector <8 x float> %i.tt, <8 x float> %i.tv, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.uo = shufflevector <8 x i32> %i.tx, <8 x i32> %i.ua, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.up = bitcast <8 x i32> %i.uo to <8 x float>  ; 2 uses
  %i.uq = shufflevector <8 x float> %i.ud, <8 x float> %i.uf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ur = shufflevector <8 x float> %i.uh, <8 x float> %i.tl, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.us = shufflevector <8 x i32> %i.tn, <8 x i32> %i.tp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ut = bitcast <8 x i32> %i.us to <8 x float>  ; 2 uses
  %i.uu = shufflevector <8 x float> %i.ts, <8 x float> %i.tu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.uv = shufflevector <8 x float> %i.tw, <8 x float> %i.tz, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.uw = shufflevector <8 x i32> %i.ub, <8 x i32> %i.ue, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ux = bitcast <8 x i32> %i.uw to <8 x float>  ; 2 uses
  %i.uy = shufflevector <8 x float> %i.ug, <8 x float> %i.ui, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.uz = shufflevector <8 x i32> %i.uj, <8 x i32> %i.ul, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.va = shufflevector <8 x float> %i.un, <8 x float> %i.up, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.vb = shufflevector <8 x float> %i.uq, <8 x float> %i.ur, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.vc = shufflevector <8 x float> %i.ut, <8 x float> %i.uu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.vd = shufflevector <8 x float> %i.uv, <8 x float> %i.ux, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ve = shufflevector <8 x float> %i.uy, <8 x float> %i.uk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.vf = shufflevector <8 x float> %i.um, <8 x float> %i.un, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.vg = shufflevector <8 x float> %i.up, <8 x float> %i.uq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.vh = shufflevector <8 x float> %i.ur, <8 x float> %i.ut, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.vi = shufflevector <8 x float> %i.uu, <8 x float> %i.uv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.vj = shufflevector <8 x float> %i.ux, <8 x float> %i.uy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.uz, ptr %.3876, align 1, !tbaa !63
  %i.vk = getelementptr inbounds nuw i8, ptr %.3876, i64 32
  store <8 x float> %i.va, ptr %i.vk, align 1, !tbaa !63
  %i.vl = getelementptr inbounds nuw i8, ptr %.3876, i64 64
  store <8 x float> %i.vb, ptr %i.vl, align 1, !tbaa !63
  %i.vm = getelementptr inbounds nuw i8, ptr %.3876, i64 96
  store <8 x float> %i.vc, ptr %i.vm, align 1, !tbaa !63
  %i.vn = getelementptr inbounds nuw i8, ptr %.3876, i64 128
  store <8 x float> %i.vd, ptr %i.vn, align 1, !tbaa !63
  %i.vo = getelementptr inbounds nuw i8, ptr %.3876, i64 160
  store <8 x float> %i.ve, ptr %i.vo, align 1, !tbaa !63
  %i.vp = getelementptr inbounds nuw i8, ptr %.3876, i64 192
  store <8 x float> %i.vf, ptr %i.vp, align 1, !tbaa !63
  %i.vq = getelementptr inbounds nuw i8, ptr %.3876, i64 224
  store <8 x float> %i.vg, ptr %i.vq, align 1, !tbaa !63
  %i.vr = getelementptr inbounds nuw i8, ptr %.3876, i64 256
  store <8 x float> %i.vh, ptr %i.vr, align 1, !tbaa !63
  %i.vs = getelementptr inbounds nuw i8, ptr %.3876, i64 288
  store <8 x float> %i.vi, ptr %i.vs, align 1, !tbaa !63
  %i.vt = getelementptr inbounds nuw i8, ptr %.3876, i64 320
  store <8 x float> %i.vj, ptr %i.vt, align 1, !tbaa !63
  %i.vu = getelementptr inbounds nuw i8, ptr %.0503875, i64 32 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.0505874, i64 32 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.0507873, i64 32 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.3876, i64 352 ; 2 uses
  %i.vy = add nuw nsw i32 %.0509872, 8            ; 2 uses
  %i.vz = or disjoint i32 %i.vy, 7
  %i.wa = icmp slt i32 %i.vz, %.fr947
  br i1 %i.wa, label %bb.q, label %.preheader870.loopexit, !llvm.loop !450

bb.r:                                             ; preds = %.lr.ph886, %bb.ah
  %.4885 = phi ptr [ %.3.lcssa, %.lr.ph886 ], [ %i.abk, %bb.ah ] ; 11 uses
  %.1504884 = phi ptr [ %.0503.lcssa, %.lr.ph886 ], [ %i.abh, %bb.ah ] ; 2 uses
  %.1506883 = phi ptr [ %.0505.lcssa, %.lr.ph886 ], [ %i.abi, %bb.ah ] ; 2 uses
  %.1508882 = phi ptr [ %.0507.lcssa, %.lr.ph886 ], [ %i.abj, %bb.ah ] ; 2 uses
  %.1510881 = phi i32 [ %.0509.lcssa, %.lr.ph886 ], [ %i.abl, %bb.ah ]
  %i.wb = load float, ptr %.1504884, align 4, !tbaa !66
  %i.wc = load float, ptr %.1506883, align 4, !tbaa !66
  %i.wd = load float, ptr %.1508882, align 4, !tbaa !66
  %i.we = load i32, ptr %i.oi, align 4, !tbaa !55 ; 3 uses
  %i.wf = sitofp fast i32 %i.we to float          ; 4 uses
  %i.wg = fmul fast float %i.wd, 5.000000e-01
  %i.wh = fadd fast float %i.wg, 5.000000e-01
  %i.wi = fmul fast float %i.wh, %i.wf
  %i.wj = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.wi)
  %i.wk = fsub fast float %i.wj, %i.wf
  %i.wl = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.wk)
  %i.wm = fadd fast float %i.wf, -5.000000e-01
  %i.wn = fsub fast float %i.wm, %i.wl
  %i.wo = fadd fast float %i.wf, -1.000000e+00
  %.sroa.speculated6.i555 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.wn, float 0.000000e+00)
  %.sroa.speculated.i556 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i555, float %i.wo) ; 2 uses
  %i.wp = load <2 x i32>, ptr %i.og, align 4, !tbaa !29 ; 4 uses
  %i.wq = sitofp <2 x i32> %i.wp to <2 x float>   ; 4 uses
  %i.wr = insertelement <2 x float> poison, float %i.wb, i64 0
  %i.ws = insertelement <2 x float> %i.wr, float %i.wc, i64 1
  %i.wt = fmul fast <2 x float> %i.ws, splat (float 5.000000e-01)
  %i.wu = fadd fast <2 x float> %i.wt, splat (float 5.000000e-01)
  %i.wv = fmul fast <2 x float> %i.wu, %i.wq
  %i.ww = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wv)
  %i.wx = fsub fast <2 x float> %i.ww, %i.wq
  %i.wy = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wx)
  %i.wz = fadd fast <2 x float> %i.wq, splat (float -5.000000e-01)
  %i.xa = fsub fast <2 x float> %i.wz, %i.wy
  %i.xb = fadd fast <2 x float> %i.wq, splat (float -1.000000e+00)
  %i.xc = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.xa, <2 x float> zeroinitializer)
  %i.xd = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.xc, <2 x float> %i.xb) ; 2 uses
  %i.xe = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.xd)
  %i.xf = fptosi <2 x float> %i.xe to <2 x i32>   ; 5 uses
  %i.xg = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i556)
  %i.xh = fptosi float %i.xg to i32               ; 9 uses
  %i.xi = extractelement <2 x i32> %i.xf, i64 0   ; 6 uses
  %i.xj = add nsw i32 %i.xi, 1                    ; 5 uses
  %i.xk = extractelement <2 x i32> %i.xf, i64 1   ; 6 uses
  %i.xl = add nsw i32 %i.xk, 1                    ; 5 uses
  %i.xm = add nsw i32 %i.xh, 1                    ; 5 uses
  %i.xn = icmp sgt <2 x i32> %i.xf, splat (i32 -1)
  %i.xo = icmp sgt <2 x i32> %i.wp, %i.xf
  %i.xp = and <2 x i1> %i.xn, %i.xo               ; 2 uses
  %i.xq = icmp sgt i32 %i.xh, -1
  %i.xr = icmp sgt i32 %i.we, %i.xh
  %i.xs = and i1 %i.xq, %i.xr                     ; 4 uses
  %i.xt = icmp sgt i32 %i.xi, -2
  %i.xu = extractelement <2 x i32> %i.wp, i64 0   ; 2 uses
  %i.xv = icmp slt i32 %i.xj, %i.xu
  %i.xw = and i1 %i.xt, %i.xv                     ; 2 uses
  %i.xx = icmp sgt i32 %i.xk, -2
  %i.xy = extractelement <2 x i32> %i.wp, i64 1   ; 2 uses
  %i.xz = icmp slt i32 %i.xl, %i.xy
  %i.ya = and i1 %i.xx, %i.xz                     ; 2 uses
  %i.yb = icmp sgt i32 %i.xh, -2
  %i.yc = icmp slt i32 %i.xm, %i.we
  %i.yd = and i1 %i.yb, %i.yc                     ; 4 uses
  %i.ye = extractelement <2 x i1> %i.xp, i64 0    ; 2 uses
  %i.yf = extractelement <2 x i1> %i.xp, i64 1    ; 2 uses
  %i.yg = and i1 %i.ye, %i.yf                     ; 2 uses
  %i.yh = and i1 %i.xw, %i.yf                     ; 2 uses
  %i.yi = and i1 %i.ye, %i.ya                     ; 2 uses
  %i.yj = and i1 %i.xw, %i.ya                     ; 2 uses
  %i.yk = and i1 %i.yg, %i.xs
  %i.yl = and i1 %i.yh, %i.xs
  %i.ym = and i1 %i.xs, %i.yi
  %i.yn = and i1 %i.xs, %i.yj
  %i.yo = and i1 %i.yg, %i.yd
  %i.yp = and i1 %i.yh, %i.yd
  %i.yq = and i1 %i.yi, %i.yd
  %i.yr = and i1 %i.yj, %i.yd
  %i.ys = getelementptr inbounds nuw i8, ptr %.4885, i64 32
  br i1 %i.yk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.yt = mul i32 %i.xy, %i.xh
end_hunk_9
begin_hunk_10_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.aam = load i32, ptr %i.og, align 4, !tbaa !52
  %i.aan = load i32, ptr %i.oh, align 8, !tbaa !53
  %i.aao = mul i32 %i.aan, %i.xm
  %reass.add840 = add i32 %i.aao, %i.xl
  %reass.mul841 = mul i32 %reass.add840, %i.aam
  %i.aap = add i32 %reass.mul841, %i.xi
  %i.aaq = load i32, ptr %i.oj, align 8, !tbaa !13
  %i.aar = mul nsw i32 %i.aap, %i.aaq
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.aas = phi i32 [ %i.aar, %bb.ae ], [ -1, %bb.ad ]
  %i.aat = getelementptr inbounds nuw i8, ptr %.4885, i64 24
  store i32 %i.aas, ptr %i.aat, align 4, !tbaa !29
  br i1 %i.yr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.aau = load i32, ptr %i.og, align 4, !tbaa !52
  %i.aav = load i32, ptr %i.oh, align 8, !tbaa !53
  %i.aaw = mul i32 %i.aav, %i.xm
  %reass.add842 = add i32 %i.aaw, %i.xl
  %reass.mul843 = mul i32 %reass.add842, %i.aau
  %i.aax = add i32 %reass.mul843, %i.xj
  %i.aay = load i32, ptr %i.oj, align 8, !tbaa !13
  %i.aaz = mul nsw i32 %i.aax, %i.aay
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.aba = phi i32 [ %i.aaz, %bb.ag ], [ -1, %bb.af ]
  %i.abb = getelementptr inbounds nuw i8, ptr %.4885, i64 28
  store i32 %i.aba, ptr %i.abb, align 4, !tbaa !29
  %i.abc = sitofp <2 x i32> %i.xf to <2 x float>
  %i.abd = fsub fast <2 x float> %i.xd, %i.abc
  store <2 x float> %i.abd, ptr %i.ys, align 4, !tbaa !66
  %i.abe = sitofp fast i32 %i.xh to float
  %i.abf = fsub fast float %.sroa.speculated.i556, %i.abe
  %i.abg = getelementptr inbounds nuw i8, ptr %.4885, i64 40
  store float %i.abf, ptr %i.abg, align 4, !tbaa !66
  %i.abh = getelementptr inbounds nuw i8, ptr %.1504884, i64 4
  %i.abi = getelementptr inbounds nuw i8, ptr %.1506883, i64 4
  %i.abj = getelementptr inbounds nuw i8, ptr %.1508882, i64 4
  %i.abk = getelementptr inbounds nuw i8, ptr %.4885, i64 44
  %i.abl = add nuw nsw i32 %.1510881, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.abl, %.fr947
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !451

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader870, %.preheader869
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55
  %i.h = mul i32 %i.e, %i.g
  %.fr936 = freeze i32 %i.h                       ; 10 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !24, !noalias !452 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader858, label %_ZN4ncnn3MatD2Ev.exit516

.preheader858:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader858
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %.fr936, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.u = add i32 %.fr936, -24                     ; 2 uses
  %i.v = urem i32 %i.u, 24
  %i.w = sub nuw i32 %i.u, %i.v
  %i.x = add i32 %i.w, 24
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0889 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !24, !noalias !455
  %i.z = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !455
  %i.aa = mul i64 %i.z, %indvars.iv
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !455
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  br i1 %i.p, label %.lr.ph879, label %.preheader

.preheader:                                       ; preds = %.lr.ph879, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.x, %.lr.ph879 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hq, %.lr.ph879 ]
  %.1.lcssa = phi ptr [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hr, %.lr.ph879 ] ; 2 uses
  %i.ae = icmp slt i32 %.0501.lcssa, %.fr936
  br i1 %i.ae, label %.lr.ph886, label %._crit_edge

.lr.ph879:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph879
  %.1878 = phi ptr [ %i.hr, %.lr.ph879 ], [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499877 = phi ptr [ %i.hq, %.lr.ph879 ], [ %i.ad, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501876 = phi i32 [ %i.hs, %.lr.ph879 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.af = load <8 x float>, ptr %.0499877, align 1, !tbaa !63 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0499877, i64 32
  %i.ah = load <8 x float>, ptr %i.ag, align 1, !tbaa !63 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0499877, i64 64
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !63 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.af, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.aj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.aj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.ak, <8 x float> %i.al, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ao = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.ap = shufflevector <8 x float> %i.ak, <8 x float> %i.ao, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.ar = shufflevector <8 x float> %i.an, <8 x float> %i.am, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.as = load i32, ptr %i.q, align 4, !tbaa !52
  %i.at = sitofp fast i32 %i.as to float
  %i.au = insertelement <8 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.aw = fmul fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ax = fadd fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fadd fast <8 x float> %i.av, splat (float -1.000000e+00) ; 3 uses
  %i.az = fmul fast <8 x float> %i.ax, %i.ay
  %i.ba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.az)
  %i.bb = fsub fast <8 x float> %i.ba, %i.ay
  %i.bc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bb)
  %i.bd = fsub fast <8 x float> %i.ay, %i.bc      ; 2 uses
  %i.be = load i32, ptr %i.r, align 8, !tbaa !53
  %i.bf = sitofp fast i32 %i.be to float
  %i.bg = insertelement <8 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <8 x float> %i.bg, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bi = fmul fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.bj = fadd fast <8 x float> %i.bi, splat (float 5.000000e-01)
  %i.bk = fadd fast <8 x float> %i.bh, splat (float -1.000000e+00) ; 3 uses
  %i.bl = fmul fast <8 x float> %i.bk, %i.bj
  %i.bm = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.bl)
  %i.bn = fsub fast <8 x float> %i.bm, %i.bk
  %i.bo = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bn)
  %i.bp = fsub fast <8 x float> %i.bk, %i.bo      ; 2 uses
  %i.bq = load i32, ptr %i.s, align 4, !tbaa !55
  %i.br = sitofp fast i32 %i.bq to float
  %i.bs = insertelement <8 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <8 x float> %i.bs, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bu = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.bv = fadd fast <8 x float> %i.bu, splat (float 5.000000e-01)
  %i.bw = fadd fast <8 x float> %i.bt, splat (float -1.000000e+00) ; 3 uses
  %i.bx = fmul fast <8 x float> %i.bw, %i.bv
  %i.by = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.bx)
  %i.bz = fsub fast <8 x float> %i.by, %i.bw
  %i.ca = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bz)
  %i.cb = fsub fast <8 x float> %i.bw, %i.ca      ; 2 uses
  %i.cc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bd, i32 1) ; 5 uses
  %i.cd = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bp, i32 1) ; 5 uses
  %i.ce = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cb, i32 1) ; 5 uses
  %i.cf = fadd fast <8 x float> %i.cc, splat (float 1.000000e+00) ; 2 uses
  %i.cg = fadd fast <8 x float> %i.cd, splat (float 1.000000e+00) ; 2 uses
  %i.ch = fadd fast <8 x float> %i.ce, splat (float 1.000000e+00) ; 2 uses
  %i.ci = fcmp fast ogt <8 x float> %i.cc, splat (float -1.000000e+00)
  %i.cj = fcmp fast ogt <8 x float> %i.av, %i.cc
  %i.ck = and <8 x i1> %i.ci, %i.cj               ; 2 uses
  %i.cl = fcmp fast ogt <8 x float> %i.cf, splat (float -1.000000e+00)
  %i.cm = fcmp fast ogt <8 x float> %i.av, %i.cf
  %i.cn = and <8 x i1> %i.cl, %i.cm               ; 2 uses
  %i.co = fcmp fast ogt <8 x float> %i.cd, splat (float -1.000000e+00)
  %i.cp = fcmp fast ogt <8 x float> %i.bh, %i.cd
  %i.cq = and <8 x i1> %i.co, %i.cp
  %i.cr = sext <8 x i1> %i.cq to <8 x i32>        ; 2 uses
  %i.cs = fcmp fast ogt <8 x float> %i.cg, splat (float -1.000000e+00)
  %i.ct = fcmp fast ogt <8 x float> %i.bh, %i.cg
  %i.cu = and <8 x i1> %i.cs, %i.ct               ; 2 uses
  %i.cv = fcmp fast ogt <8 x float> %i.ce, splat (float -1.000000e+00)
  %i.cw = fcmp fast ogt <8 x float> %i.bt, %i.ce
  %i.cx = and <8 x i1> %i.cv, %i.cw               ; 3 uses
  %i.cy = sext <8 x i1> %i.cx to <8 x i32>
  %i.cz = fcmp fast ogt <8 x float> %i.ch, splat (float -1.000000e+00)
  %i.da = fcmp fast ogt <8 x float> %i.bt, %i.ch
  %i.db = and <8 x i1> %i.cz, %i.da               ; 4 uses
  %i.dc = and <8 x i1> %i.ck, %i.cu               ; 2 uses
  %i.dd = and <8 x i1> %i.cn, %i.cu               ; 2 uses
  %i.de = bitcast <8 x i32> %i.cr to <8 x float>
  %i.df = select <8 x i1> %i.ck, <8 x float> %i.de, <8 x float> zeroinitializer ; 2 uses
  %i.dg = select <8 x i1> %i.cx, <8 x float> %i.df, <8 x float> zeroinitializer
  %i.dh = bitcast <8 x i32> %i.cr to <8 x float>
  %i.di = select <8 x i1> %i.cn, <8 x float> %i.dh, <8 x float> zeroinitializer ; 2 uses
  %i.dj = select <8 x i1> %i.cx, <8 x float> %i.di, <8 x float> zeroinitializer
  %i.dk = bitcast <8 x i32> %i.cy to <8 x float>  ; 2 uses
  %i.dl = select <8 x i1> %i.dc, <8 x float> %i.dk, <8 x float> zeroinitializer
  %i.dm = select <8 x i1> %i.dd, <8 x float> %i.dk, <8 x float> zeroinitializer
  %i.dn = select <8 x i1> %i.db, <8 x float> %i.df, <8 x float> zeroinitializer
  %i.do = select <8 x i1> %i.db, <8 x float> %i.di, <8 x float> zeroinitializer
  %i.dp = and <8 x i1> %i.dc, %i.db
  %i.dq = and <8 x i1> %i.dd, %i.db
  %i.dr = fmul fast <8 x float> %i.bh, %i.av      ; 2 uses
  %i.ds = fmul fast <8 x float> %i.cd, %i.av
  %i.dt = fadd fast <8 x float> %i.ds, %i.cc
  %i.du = fmul fast <8 x float> %i.dr, %i.ce
  %i.dv = fadd fast <8 x float> %i.dt, %i.du
  %i.dw = load i32, ptr %i.t, align 8, !tbaa !13
  %i.dx = sitofp fast i32 %i.dw to float
  %i.dy = insertelement <8 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <8 x float> %i.dy, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.ea = fmul fast <8 x float> %i.dz, %i.dv      ; 4 uses
  %i.eb = fadd fast <8 x float> %i.ea, %i.dz
  %i.ec = fmul fast <8 x float> %i.dz, %i.av      ; 2 uses
  %i.ed = fadd fast <8 x float> %i.ea, %i.ec      ; 2 uses
  %i.ee = fadd fast <8 x float> %i.ed, %i.dz
  %i.ef = fmul fast <8 x float> %i.dz, %i.dr
  %i.eg = fadd fast <8 x float> %i.ef, %i.ea      ; 3 uses
  %i.eh = fadd fast <8 x float> %i.eg, %i.dz
  %i.ei = fadd fast <8 x float> %i.eg, %i.ec      ; 2 uses
  %i.ej = fadd fast <8 x float> %i.ei, %i.dz
  %i.ek = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ea, <8 x float> nofpclass(nan inf) %i.dg)
  %i.el = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.dj)
  %i.em = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.dl)
  %i.en = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ee, <8 x float> nofpclass(nan inf) %i.dm)
  %i.eo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.eg, <8 x float> nofpclass(nan inf) %i.dn)
  %i.ep = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.eh, <8 x float> nofpclass(nan inf) %i.do)
  %i.eq = select <8 x i1> %i.dp, <8 x float> %i.ei, <8 x float> splat (float -1.000000e+00)
  %i.er = select <8 x i1> %i.dq, <8 x float> %i.ej, <8 x float> splat (float -1.000000e+00)
  %i.es = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ek) ; 3 uses
  %i.et = bitcast <8 x i32> %i.es to <8 x float>
  %i.eu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.el) ; 4 uses
  %i.ev = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.em) ; 4 uses
  %i.ew = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.en) ; 4 uses
  %i.ex = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eo) ; 4 uses
  %i.ey = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ep) ; 4 uses
  %i.ez = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eq) ; 4 uses
  %i.fa = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.er) ; 3 uses
  %i.fb = bitcast <8 x i32> %i.fa to <8 x float>  ; 2 uses
  %i.fc = fsub fast <8 x float> %i.bd, %i.cc      ; 4 uses
  %i.fd = fsub fast <8 x float> %i.bp, %i.cd      ; 4 uses
  %i.fe = fsub fast <8 x float> %i.cb, %i.ce      ; 4 uses
  %i.ff = shufflevector <8 x i32> %i.es, <8 x i32> %i.eu, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i32> %i.es, <8 x i32> %i.eu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.fh = bitcast <8 x i32> %i.fg to <8 x float>  ; 2 uses
  %i.fi = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fj = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x i32> %i.ex, <8 x i32> %i.ey, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fl = shufflevector <8 x i32> %i.ex, <8 x i32> %i.ey, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fm = shufflevector <8 x i32> %i.ez, <8 x i32> %i.fa, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x i32> %i.ez, <8 x i32> %i.fa, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fo = bitcast <8 x i32> %i.fn to <8 x float>
  %i.fp = shufflevector <8 x float> %i.fc, <8 x float> %i.fd, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fq = shufflevector <8 x float> %i.fc, <8 x float> %i.fd, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fr = shufflevector <8 x float> %i.fe, <8 x float> %i.et, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fs = shufflevector <8 x float> %i.fe, <8 x float> %i.fh, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.ft = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fu = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fv = bitcast <8 x i32> %i.fu to <8 x float>
  %i.fw = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ex, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fx = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ex, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fy = shufflevector <8 x i32> %i.ey, <8 x i32> %i.ez, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fz = bitcast <8 x i32> %i.fy to <8 x float>
  %i.ga = shufflevector <8 x i32> %i.ey, <8 x i32> %i.ez, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gb = shufflevector <8 x float> %i.fb, <8 x float> %i.fc, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gc = shufflevector <8 x float> %i.fb, <8 x float> %i.fc, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gd = shufflevector <8 x float> %i.fd, <8 x float> %i.fe, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ge = shufflevector <8 x float> %i.fd, <8 x float> %i.fe, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gf = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gg = bitcast <8 x i32> %i.gf to <8 x float>
  %i.gh = shufflevector <8 x i32> %i.fk, <8 x i32> %i.fm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gi = bitcast <8 x i32> %i.gh to <8 x float>
  %i.gj = shufflevector <8 x float> %i.fp, <8 x float> %i.fr, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.gk = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gl = bitcast <8 x i32> %i.gk to <8 x float>  ; 2 uses
  %i.gm = shufflevector <8 x float> %i.fz, <8 x float> %i.gb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gn = shufflevector <8 x float> %i.gd, <8 x float> %i.fh, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.go = shufflevector <8 x i32> %i.fj, <8 x i32> %i.fl, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gp = bitcast <8 x i32> %i.go to <8 x float>  ; 2 uses
  %i.gq = shufflevector <8 x float> %i.fo, <8 x float> %i.fq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gr = shufflevector <8 x float> %i.fs, <8 x float> %i.fv, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gs = shufflevector <8 x i32> %i.fx, <8 x i32> %i.ga, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gt = bitcast <8 x i32> %i.gs to <8 x float>  ; 2 uses
  %i.gu = shufflevector <8 x float> %i.gc, <8 x float> %i.ge, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gv = shufflevector <8 x i32> %i.gf, <8 x i32> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gw = shufflevector <8 x float> %i.gj, <8 x float> %i.gl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gx = shufflevector <8 x float> %i.gm, <8 x float> %i.gn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gy = shufflevector <8 x float> %i.gp, <8 x float> %i.gq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gz = shufflevector <8 x float> %i.gr, <8 x float> %i.gt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ha = shufflevector <8 x float> %i.gu, <8 x float> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.hb = shufflevector <8 x float> %i.gi, <8 x float> %i.gj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hc = shufflevector <8 x float> %i.gl, <8 x float> %i.gm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hd = shufflevector <8 x float> %i.gn, <8 x float> %i.gp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.he = shufflevector <8 x float> %i.gq, <8 x float> %i.gr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hf = shufflevector <8 x float> %i.gt, <8 x float> %i.gu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gv, ptr %.1878, align 1, !tbaa !63
  %i.hg = getelementptr inbounds nuw i8, ptr %.1878, i64 32
  store <8 x float> %i.gw, ptr %i.hg, align 1, !tbaa !63
  %i.hh = getelementptr inbounds nuw i8, ptr %.1878, i64 64
  store <8 x float> %i.gx, ptr %i.hh, align 1, !tbaa !63
  %i.hi = getelementptr inbounds nuw i8, ptr %.1878, i64 96
  store <8 x float> %i.gy, ptr %i.hi, align 1, !tbaa !63
  %i.hj = getelementptr inbounds nuw i8, ptr %.1878, i64 128
  store <8 x float> %i.gz, ptr %i.hj, align 1, !tbaa !63
  %i.hk = getelementptr inbounds nuw i8, ptr %.1878, i64 160
  store <8 x float> %i.ha, ptr %i.hk, align 1, !tbaa !63
  %i.hl = getelementptr inbounds nuw i8, ptr %.1878, i64 192
  store <8 x float> %i.hb, ptr %i.hl, align 1, !tbaa !63
  %i.hm = getelementptr inbounds nuw i8, ptr %.1878, i64 224
  store <8 x float> %i.hc, ptr %i.hm, align 1, !tbaa !63
  %i.hn = getelementptr inbounds nuw i8, ptr %.1878, i64 256
  store <8 x float> %i.hd, ptr %i.hn, align 1, !tbaa !63
  %i.ho = getelementptr inbounds nuw i8, ptr %.1878, i64 288
  store <8 x float> %i.he, ptr %i.ho, align 1, !tbaa !63
  %i.hp = getelementptr inbounds nuw i8, ptr %.1878, i64 320
  store <8 x float> %i.hf, ptr %i.hp, align 1, !tbaa !63
  %i.hq = getelementptr inbounds nuw i8, ptr %.0499877, i64 96 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.1878, i64 352 ; 2 uses
  %i.hs = add nuw nsw i32 %.0501876, 24
  %i.ht = add nuw nsw i32 %.0501876, 47
  %i.hu = icmp slt i32 %i.ht, %.fr936
  br i1 %i.hu, label %.lr.ph879, label %.preheader, !llvm.loop !458

.lr.ph886:                                        ; preds = %.preheader, %bb.p
  %.2885 = phi ptr [ %i.nc, %bb.p ], [ %.1.lcssa, %.preheader ] ; 11 uses
  %.1500884 = phi ptr [ %i.nb, %bb.p ], [ %.0499.lcssa, %.preheader ] ; 3 uses
  %.1502883 = phi i32 [ %i.nd, %bb.p ], [ %.0501.lcssa, %.preheader ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.1500884, i64 8
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !66
  %i.hx = load i32, ptr %i.s, align 4, !tbaa !55  ; 4 uses
  %i.hy = fmul fast float %i.hw, 5.000000e-01
  %i.hz = fadd fast float %i.hy, 5.000000e-01
  %i.ia = add nsw i32 %i.hx, -1
  %i.ib = sitofp fast i32 %i.ia to float          ; 3 uses
  %i.ic = fmul fast float %i.hz, %i.ib
  %i.id = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ic)
  %i.ie = fsub fast float %i.id, %i.ib
  %i.if = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ie)
  %i.ig = fsub fast float %i.ib, %i.if
  %i.ih = sitofp fast i32 %i.hx to float
  %i.ii = fadd fast float %i.ih, -1.000000e+00
  %.sroa.speculated6.i549 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ig, float 0.000000e+00)
  %.sroa.speculated.i550 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i549, float %i.ii) ; 2 uses
  %i.ij = load <2 x float>, ptr %.1500884, align 4, !tbaa !66
  %i.ik = load <2 x i32>, ptr %i.q, align 4, !tbaa !29 ; 5 uses
  %i.il = fmul fast <2 x float> %i.ij, splat (float 5.000000e-01)
  %i.im = fadd fast <2 x float> %i.il, splat (float 5.000000e-01)
  %i.in = add nsw <2 x i32> %i.ik, splat (i32 -1)
  %i.io = sitofp <2 x i32> %i.in to <2 x float>   ; 3 uses
  %i.ip = fmul fast <2 x float> %i.im, %i.io
  %i.iq = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ip)
  %i.ir = fsub fast <2 x float> %i.iq, %i.io
  %i.is = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ir)
  %i.it = fsub fast <2 x float> %i.io, %i.is
  %i.iu = sitofp <2 x i32> %i.ik to <2 x float>
  %i.iv = fadd fast <2 x float> %i.iu, splat (float -1.000000e+00)
  %i.iw = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.it, <2 x float> zeroinitializer)
  %i.ix = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.iw, <2 x float> %i.iv) ; 2 uses
  %i.iy = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ix)
  %i.iz = fptosi <2 x float> %i.iy to <2 x i32>   ; 5 uses
  %i.ja = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i550)
  %i.jb = fptosi float %i.ja to i32               ; 9 uses
  %i.jc = extractelement <2 x i32> %i.iz, i64 0   ; 6 uses
  %i.jd = add nsw i32 %i.jc, 1                    ; 5 uses
  %i.je = extractelement <2 x i32> %i.iz, i64 1   ; 6 uses
  %i.jf = add nsw i32 %i.je, 1                    ; 5 uses
  %i.jg = add nsw i32 %i.jb, 1                    ; 5 uses
  %i.jh = icmp sgt <2 x i32> %i.iz, splat (i32 -1)
  %i.ji = icmp sgt <2 x i32> %i.ik, %i.iz
  %i.jj = and <2 x i1> %i.jh, %i.ji               ; 2 uses
  %i.jk = icmp sgt i32 %i.jb, -1
  %i.jl = icmp sgt i32 %i.hx, %i.jb
  %i.jm = and i1 %i.jk, %i.jl                     ; 4 uses
  %i.jn = icmp sgt i32 %i.jc, -2
  %i.jo = extractelement <2 x i32> %i.ik, i64 0   ; 2 uses
  %i.jp = icmp slt i32 %i.jd, %i.jo
  %i.jq = and i1 %i.jn, %i.jp                     ; 2 uses
  %i.jr = icmp sgt i32 %i.je, -2
  %i.js = extractelement <2 x i32> %i.ik, i64 1   ; 2 uses
  %i.jt = icmp slt i32 %i.jf, %i.js
  %i.ju = and i1 %i.jr, %i.jt                     ; 2 uses
  %i.jv = icmp sgt i32 %i.jb, -2
  %i.jw = icmp slt i32 %i.jg, %i.hx
  %i.jx = and i1 %i.jv, %i.jw                     ; 4 uses
  %i.jy = extractelement <2 x i1> %i.jj, i64 0    ; 2 uses
  %i.jz = extractelement <2 x i1> %i.jj, i64 1    ; 2 uses
  %i.ka = and i1 %i.jy, %i.jz                     ; 2 uses
  %i.kb = and i1 %i.jq, %i.jz                     ; 2 uses
  %i.kc = and i1 %i.jy, %i.ju                     ; 2 uses
  %i.kd = and i1 %i.jq, %i.ju                     ; 2 uses
  %i.ke = and i1 %i.ka, %i.jm
  %i.kf = and i1 %i.kb, %i.jm
  %i.kg = and i1 %i.jm, %i.kc
  %i.kh = and i1 %i.jm, %i.kd
  %i.ki = and i1 %i.ka, %i.jx
  %i.kj = and i1 %i.kb, %i.jx
  %i.kk = and i1 %i.kc, %i.jx
  %i.kl = and i1 %i.kd, %i.jx
  %i.km = getelementptr inbounds nuw i8, ptr %.2885, i64 32
  br i1 %i.ke, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph886
  %i.kn = mul i32 %i.js, %i.jb
  %reass.add842 = add i32 %i.kn, %i.je
  %reass.mul843 = mul i32 %reass.add842, %i.jo
  %i.ko = add i32 %reass.mul843, %i.jc
  %i.kp = load i32, ptr %i.t, align 8, !tbaa !13
end_hunk_10
begin_hunk_11_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518

bb.k:                                             ; preds = %bb.j
  %i.ly = load i32, ptr %i.q, align 4, !tbaa !52
  %i.lz = load i32, ptr %i.r, align 8, !tbaa !53
  %i.ma = mul i32 %i.lz, %i.jg
  %reass.add852 = add i32 %i.ma, %i.je
  %reass.mul853 = mul i32 %reass.add852, %i.ly
  %i.mb = add i32 %reass.mul853, %i.jd
  %i.mc = load i32, ptr %i.t, align 8, !tbaa !13
  %i.md = mul nsw i32 %i.mb, %i.mc
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.me = phi i32 [ %i.md, %bb.k ], [ -1, %bb.j ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.2885, i64 20
  store i32 %i.me, ptr %i.mf, align 4, !tbaa !29
  br i1 %i.kk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mg = load i32, ptr %i.q, align 4, !tbaa !52
  %i.mh = load i32, ptr %i.r, align 8, !tbaa !53
  %i.mi = mul i32 %i.mh, %i.jg
  %reass.add854 = add i32 %i.mi, %i.jf
  %reass.mul855 = mul i32 %reass.add854, %i.mg
  %i.mj = add i32 %reass.mul855, %i.jc
  %i.mk = load i32, ptr %i.t, align 8, !tbaa !13
  %i.ml = mul nsw i32 %i.mj, %i.mk
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.mm = phi i32 [ %i.ml, %bb.m ], [ -1, %bb.l ]
  %i.mn = getelementptr inbounds nuw i8, ptr %.2885, i64 24
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !29
  br i1 %i.kl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mo = load i32, ptr %i.q, align 4, !tbaa !52
  %i.mp = load i32, ptr %i.r, align 8, !tbaa !53
  %i.mq = mul i32 %i.mp, %i.jg
  %reass.add856 = add i32 %i.mq, %i.jf
  %reass.mul857 = mul i32 %reass.add856, %i.mo
  %i.mr = add i32 %reass.mul857, %i.jd
  %i.ms = load i32, ptr %i.t, align 8, !tbaa !13
  %i.mt = mul nsw i32 %i.mr, %i.ms
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mu = phi i32 [ %i.mt, %bb.o ], [ -1, %bb.n ]
  %i.mv = getelementptr inbounds nuw i8, ptr %.2885, i64 28
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !29
  %i.mw = sitofp <2 x i32> %i.iz to <2 x float>
  %i.mx = fsub fast <2 x float> %i.ix, %i.mw
  store <2 x float> %i.mx, ptr %i.km, align 4, !tbaa !66
  %i.my = sitofp fast i32 %i.jb to float
  %i.mz = fsub fast float %.sroa.speculated.i550, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %.2885, i64 40
  store float %i.mz, ptr %i.na, align 4, !tbaa !66
  %i.nb = getelementptr inbounds nuw i8, ptr %.1500884, i64 12
  %i.nc = getelementptr inbounds nuw i8, ptr %.2885, i64 44 ; 2 uses
  %i.nd = add nuw nsw i32 %.1502883, 3            ; 2 uses
  %i.ne = icmp slt i32 %i.nd, %.fr936
  br i1 %i.ne, label %.lr.ph886, label %._crit_edge, !llvm.loop !459

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.nc, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nf = load i32, ptr %i.k, align 8, !tbaa !18
  %i.ng = sext i32 %i.nf to i64
  %i.nh = icmp slt i64 %indvars.iv.next, %i.ng
  br i1 %i.nh, label %_ZN4ncnn3MatD2Ev.exit517, label %.loopexit, !llvm.loop !460

_ZN4ncnn3MatD2Ev.exit516:                         ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.ni = load ptr, ptr %1, align 8, !tbaa !24, !noalias !461 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !21, !noalias !464 ; 2 uses
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !20, !noalias !464 ; 2 uses
  %i.nn = mul i64 %i.nm, %i.nl
  %i.no = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nn ; 2 uses
  %i.np = shl i64 %i.nl, 1
  %i.nq = mul i64 %i.np, %i.nm
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nq ; 2 uses
  %i.ns = icmp sgt i32 %.fr936, 7
  br i1 %i.ns, label %.lr.ph, label %.preheader859

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit516
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

.preheader859.loopexit:                           ; preds = %bb.q
  %i.nx = and i32 %.fr936, 2147483640
  br label %.preheader859

.preheader859:                                    ; preds = %.preheader859.loopexit, %_ZN4ncnn3MatD2Ev.exit516
  %.0509.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.nx, %.preheader859.loopexit ] ; 2 uses
  %.0507.lcssa = phi ptr [ %i.nr, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vg, %.preheader859.loopexit ]
  %.0505.lcssa = phi ptr [ %i.no, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vf, %.preheader859.loopexit ]
  %.0503.lcssa = phi ptr [ %i.ni, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.ve, %.preheader859.loopexit ]
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vh, %.preheader859.loopexit ]
  %i.ny = icmp slt i32 %.0509.lcssa, %.fr936
  br i1 %i.ny, label %.lr.ph875, label %.loopexit

.lr.ph875:                                        ; preds = %.preheader859
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.3865 = phi ptr [ %i.i, %.lr.ph ], [ %i.vh, %bb.q ] ; 12 uses
  %.0503864 = phi ptr [ %i.ni, %.lr.ph ], [ %i.ve, %bb.q ] ; 2 uses
  %.0505863 = phi ptr [ %i.no, %.lr.ph ], [ %i.vf, %bb.q ] ; 2 uses
  %.0507862 = phi ptr [ %i.nr, %.lr.ph ], [ %i.vg, %bb.q ] ; 2 uses
  %.0509861 = phi i32 [ 0, %.lr.ph ], [ %i.vi, %bb.q ]
  %i.od = load <8 x float>, ptr %.0503864, align 1, !tbaa !63
  %i.oe = load <8 x float>, ptr %.0505863, align 1, !tbaa !63
  %i.of = load <8 x float>, ptr %.0507862, align 1, !tbaa !63
  %i.og = load i32, ptr %i.nt, align 4, !tbaa !52
  %i.oh = sitofp fast i32 %i.og to float
  %i.oi = insertelement <8 x float> poison, float %i.oh, i64 0
  %i.oj = shufflevector <8 x float> %i.oi, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.ok = fmul fast <8 x float> %i.od, splat (float 5.000000e-01)
  %i.ol = fadd fast <8 x float> %i.ok, splat (float 5.000000e-01)
  %i.om = fadd fast <8 x float> %i.oj, splat (float -1.000000e+00) ; 3 uses
  %i.on = fmul fast <8 x float> %i.om, %i.ol
  %i.oo = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.on)
  %i.op = fsub fast <8 x float> %i.oo, %i.om
  %i.oq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.op)
  %i.or = fsub fast <8 x float> %i.om, %i.oq      ; 2 uses
  %i.os = load i32, ptr %i.nu, align 8, !tbaa !53
  %i.ot = sitofp fast i32 %i.os to float
  %i.ou = insertelement <8 x float> poison, float %i.ot, i64 0
  %i.ov = shufflevector <8 x float> %i.ou, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ow = fmul fast <8 x float> %i.oe, splat (float 5.000000e-01)
  %i.ox = fadd fast <8 x float> %i.ow, splat (float 5.000000e-01)
  %i.oy = fadd fast <8 x float> %i.ov, splat (float -1.000000e+00) ; 3 uses
  %i.oz = fmul fast <8 x float> %i.oy, %i.ox
  %i.pa = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.oz)
  %i.pb = fsub fast <8 x float> %i.pa, %i.oy
  %i.pc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pb)
  %i.pd = fsub fast <8 x float> %i.oy, %i.pc      ; 2 uses
  %i.pe = load i32, ptr %i.nv, align 4, !tbaa !55
  %i.pf = sitofp fast i32 %i.pe to float
  %i.pg = insertelement <8 x float> poison, float %i.pf, i64 0
  %i.ph = shufflevector <8 x float> %i.pg, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.pi = fmul fast <8 x float> %i.of, splat (float 5.000000e-01)
  %i.pj = fadd fast <8 x float> %i.pi, splat (float 5.000000e-01)
  %i.pk = fadd fast <8 x float> %i.ph, splat (float -1.000000e+00) ; 3 uses
  %i.pl = fmul fast <8 x float> %i.pk, %i.pj
  %i.pm = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.pl)
  %i.pn = fsub fast <8 x float> %i.pm, %i.pk
  %i.po = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pn)
  %i.pp = fsub fast <8 x float> %i.pk, %i.po      ; 2 uses
  %i.pq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.or, i32 1) ; 5 uses
  %i.pr = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.pd, i32 1) ; 5 uses
  %i.ps = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.pp, i32 1) ; 5 uses
  %i.pt = fadd fast <8 x float> %i.pq, splat (float 1.000000e+00) ; 2 uses
  %i.pu = fadd fast <8 x float> %i.pr, splat (float 1.000000e+00) ; 2 uses
  %i.pv = fadd fast <8 x float> %i.ps, splat (float 1.000000e+00) ; 2 uses
  %i.pw = fcmp fast ogt <8 x float> %i.pq, splat (float -1.000000e+00)
  %i.px = fcmp fast ogt <8 x float> %i.oj, %i.pq
  %i.py = and <8 x i1> %i.pw, %i.px               ; 2 uses
  %i.pz = fcmp fast ogt <8 x float> %i.pt, splat (float -1.000000e+00)
  %i.qa = fcmp fast ogt <8 x float> %i.oj, %i.pt
  %i.qb = and <8 x i1> %i.pz, %i.qa               ; 2 uses
  %i.qc = fcmp fast ogt <8 x float> %i.pr, splat (float -1.000000e+00)
  %i.qd = fcmp fast ogt <8 x float> %i.ov, %i.pr
  %i.qe = and <8 x i1> %i.qc, %i.qd
  %i.qf = sext <8 x i1> %i.qe to <8 x i32>        ; 2 uses
  %i.qg = fcmp fast ogt <8 x float> %i.pu, splat (float -1.000000e+00)
  %i.qh = fcmp fast ogt <8 x float> %i.ov, %i.pu
  %i.qi = and <8 x i1> %i.qg, %i.qh               ; 2 uses
  %i.qj = fcmp fast ogt <8 x float> %i.ps, splat (float -1.000000e+00)
  %i.qk = fcmp fast ogt <8 x float> %i.ph, %i.ps
  %i.ql = and <8 x i1> %i.qj, %i.qk               ; 3 uses
  %i.qm = sext <8 x i1> %i.ql to <8 x i32>
  %i.qn = fcmp fast ogt <8 x float> %i.pv, splat (float -1.000000e+00)
  %i.qo = fcmp fast ogt <8 x float> %i.ph, %i.pv
  %i.qp = and <8 x i1> %i.qn, %i.qo               ; 4 uses
  %i.qq = and <8 x i1> %i.py, %i.qi               ; 2 uses
  %i.qr = and <8 x i1> %i.qb, %i.qi               ; 2 uses
  %i.qs = bitcast <8 x i32> %i.qf to <8 x float>
  %i.qt = select <8 x i1> %i.py, <8 x float> %i.qs, <8 x float> zeroinitializer ; 2 uses
  %i.qu = select <8 x i1> %i.ql, <8 x float> %i.qt, <8 x float> zeroinitializer
  %i.qv = bitcast <8 x i32> %i.qf to <8 x float>
  %i.qw = select <8 x i1> %i.qb, <8 x float> %i.qv, <8 x float> zeroinitializer ; 2 uses
  %i.qx = select <8 x i1> %i.ql, <8 x float> %i.qw, <8 x float> zeroinitializer
  %i.qy = bitcast <8 x i32> %i.qm to <8 x float>  ; 2 uses
  %i.qz = select <8 x i1> %i.qq, <8 x float> %i.qy, <8 x float> zeroinitializer
  %i.ra = select <8 x i1> %i.qr, <8 x float> %i.qy, <8 x float> zeroinitializer
  %i.rb = select <8 x i1> %i.qp, <8 x float> %i.qt, <8 x float> zeroinitializer
  %i.rc = select <8 x i1> %i.qp, <8 x float> %i.qw, <8 x float> zeroinitializer
  %i.rd = and <8 x i1> %i.qq, %i.qp
  %i.re = and <8 x i1> %i.qr, %i.qp
  %i.rf = fmul fast <8 x float> %i.ov, %i.oj      ; 2 uses
  %i.rg = fmul fast <8 x float> %i.pr, %i.oj
  %i.rh = fadd fast <8 x float> %i.rg, %i.pq
  %i.ri = fmul fast <8 x float> %i.rf, %i.ps
  %i.rj = fadd fast <8 x float> %i.rh, %i.ri
  %i.rk = load i32, ptr %i.nw, align 8, !tbaa !13
  %i.rl = sitofp fast i32 %i.rk to float
  %i.rm = insertelement <8 x float> poison, float %i.rl, i64 0
  %i.rn = shufflevector <8 x float> %i.rm, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.ro = fmul fast <8 x float> %i.rn, %i.rj      ; 4 uses
  %i.rp = fadd fast <8 x float> %i.ro, %i.rn
  %i.rq = fmul fast <8 x float> %i.rn, %i.oj      ; 2 uses
  %i.rr = fadd fast <8 x float> %i.ro, %i.rq      ; 2 uses
  %i.rs = fadd fast <8 x float> %i.rr, %i.rn
  %i.rt = fmul fast <8 x float> %i.rn, %i.rf
  %i.ru = fadd fast <8 x float> %i.rt, %i.ro      ; 3 uses
  %i.rv = fadd fast <8 x float> %i.ru, %i.rn
  %i.rw = fadd fast <8 x float> %i.ru, %i.rq      ; 2 uses
  %i.rx = fadd fast <8 x float> %i.rw, %i.rn
  %i.ry = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ro, <8 x float> nofpclass(nan inf) %i.qu)
  %i.rz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rp, <8 x float> nofpclass(nan inf) %i.qx)
  %i.sa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rr, <8 x float> nofpclass(nan inf) %i.qz)
  %i.sb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rs, <8 x float> nofpclass(nan inf) %i.ra)
  %i.sc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ru, <8 x float> nofpclass(nan inf) %i.rb)
  %i.sd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rv, <8 x float> nofpclass(nan inf) %i.rc)
  %i.se = select <8 x i1> %i.rd, <8 x float> %i.rw, <8 x float> splat (float -1.000000e+00)
  %i.sf = select <8 x i1> %i.re, <8 x float> %i.rx, <8 x float> splat (float -1.000000e+00)
  %i.sg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ry) ; 3 uses
  %i.sh = bitcast <8 x i32> %i.sg to <8 x float>
  %i.si = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rz) ; 4 uses
  %i.sj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sa) ; 4 uses
  %i.sk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sb) ; 4 uses
  %i.sl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sc) ; 4 uses
  %i.sm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sd) ; 4 uses
  %i.sn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.se) ; 4 uses
  %i.so = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sf) ; 3 uses
  %i.sp = bitcast <8 x i32> %i.so to <8 x float>  ; 2 uses
  %i.sq = fsub fast <8 x float> %i.or, %i.pq      ; 4 uses
  %i.sr = fsub fast <8 x float> %i.pd, %i.pr      ; 4 uses
  %i.ss = fsub fast <8 x float> %i.pp, %i.ps      ; 4 uses
  %i.st = shufflevector <8 x i32> %i.sg, <8 x i32> %i.si, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.su = shufflevector <8 x i32> %i.sg, <8 x i32> %i.si, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.sv = bitcast <8 x i32> %i.su to <8 x float>  ; 2 uses
  %i.sw = shufflevector <8 x i32> %i.sj, <8 x i32> %i.sk, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sx = shufflevector <8 x i32> %i.sj, <8 x i32> %i.sk, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.sy = shufflevector <8 x i32> %i.sl, <8 x i32> %i.sm, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sz = shufflevector <8 x i32> %i.sl, <8 x i32> %i.sm, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ta = shufflevector <8 x i32> %i.sn, <8 x i32> %i.so, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.tb = shufflevector <8 x i32> %i.sn, <8 x i32> %i.so, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.tc = bitcast <8 x i32> %i.tb to <8 x float>
  %i.td = shufflevector <8 x float> %i.sq, <8 x float> %i.sr, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.te = shufflevector <8 x float> %i.sq, <8 x float> %i.sr, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.tf = shufflevector <8 x float> %i.ss, <8 x float> %i.sh, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.tg = shufflevector <8 x float> %i.ss, <8 x float> %i.sv, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.th = shufflevector <8 x i32> %i.si, <8 x i32> %i.sj, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ti = shufflevector <8 x i32> %i.si, <8 x i32> %i.sj, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.tj = bitcast <8 x i32> %i.ti to <8 x float>
  %i.tk = shufflevector <8 x i32> %i.sk, <8 x i32> %i.sl, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.tl = shufflevector <8 x i32> %i.sk, <8 x i32> %i.sl, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.tm = shufflevector <8 x i32> %i.sm, <8 x i32> %i.sn, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.tn = bitcast <8 x i32> %i.tm to <8 x float>
  %i.to = shufflevector <8 x i32> %i.sm, <8 x i32> %i.sn, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.tp = shufflevector <8 x float> %i.sp, <8 x float> %i.sq, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.tq = shufflevector <8 x float> %i.sp, <8 x float> %i.sq, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.tr = shufflevector <8 x float> %i.sr, <8 x float> %i.ss, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ts = shufflevector <8 x float> %i.sr, <8 x float> %i.ss, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.tt = shufflevector <8 x i32> %i.st, <8 x i32> %i.sw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.tu = bitcast <8 x i32> %i.tt to <8 x float>
  %i.tv = shufflevector <8 x i32> %i.sy, <8 x i32> %i.ta, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.tw = bitcast <8 x i32> %i.tv to <8 x float>
  %i.tx = shufflevector <8 x float> %i.td, <8 x float> %i.tf, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.ty = shufflevector <8 x i32> %i.th, <8 x i32> %i.tk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.tz = bitcast <8 x i32> %i.ty to <8 x float>  ; 2 uses
  %i.ua = shufflevector <8 x float> %i.tn, <8 x float> %i.tp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ub = shufflevector <8 x float> %i.tr, <8 x float> %i.sv, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.uc = shufflevector <8 x i32> %i.sx, <8 x i32> %i.sz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ud = bitcast <8 x i32> %i.uc to <8 x float>  ; 2 uses
  %i.ue = shufflevector <8 x float> %i.tc, <8 x float> %i.te, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.uf = shufflevector <8 x float> %i.tg, <8 x float> %i.tj, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.ug = shufflevector <8 x i32> %i.tl, <8 x i32> %i.to, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.uh = bitcast <8 x i32> %i.ug to <8 x float>  ; 2 uses
  %i.ui = shufflevector <8 x float> %i.tq, <8 x float> %i.ts, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.uj = shufflevector <8 x i32> %i.tt, <8 x i32> %i.tv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.uk = shufflevector <8 x float> %i.tx, <8 x float> %i.tz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ul = shufflevector <8 x float> %i.ua, <8 x float> %i.ub, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.um = shufflevector <8 x float> %i.ud, <8 x float> %i.ue, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.un = shufflevector <8 x float> %i.uf, <8 x float> %i.uh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.uo = shufflevector <8 x float> %i.ui, <8 x float> %i.tu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.up = shufflevector <8 x float> %i.tw, <8 x float> %i.tx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.uq = shufflevector <8 x float> %i.tz, <8 x float> %i.ua, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ur = shufflevector <8 x float> %i.ub, <8 x float> %i.ud, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.us = shufflevector <8 x float> %i.ue, <8 x float> %i.uf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ut = shufflevector <8 x float> %i.uh, <8 x float> %i.ui, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.uj, ptr %.3865, align 1, !tbaa !63
  %i.uu = getelementptr inbounds nuw i8, ptr %.3865, i64 32
  store <8 x float> %i.uk, ptr %i.uu, align 1, !tbaa !63
  %i.uv = getelementptr inbounds nuw i8, ptr %.3865, i64 64
  store <8 x float> %i.ul, ptr %i.uv, align 1, !tbaa !63
  %i.uw = getelementptr inbounds nuw i8, ptr %.3865, i64 96
  store <8 x float> %i.um, ptr %i.uw, align 1, !tbaa !63
  %i.ux = getelementptr inbounds nuw i8, ptr %.3865, i64 128
  store <8 x float> %i.un, ptr %i.ux, align 1, !tbaa !63
  %i.uy = getelementptr inbounds nuw i8, ptr %.3865, i64 160
  store <8 x float> %i.uo, ptr %i.uy, align 1, !tbaa !63
  %i.uz = getelementptr inbounds nuw i8, ptr %.3865, i64 192
  store <8 x float> %i.up, ptr %i.uz, align 1, !tbaa !63
  %i.va = getelementptr inbounds nuw i8, ptr %.3865, i64 224
  store <8 x float> %i.uq, ptr %i.va, align 1, !tbaa !63
  %i.vb = getelementptr inbounds nuw i8, ptr %.3865, i64 256
  store <8 x float> %i.ur, ptr %i.vb, align 1, !tbaa !63
  %i.vc = getelementptr inbounds nuw i8, ptr %.3865, i64 288
  store <8 x float> %i.us, ptr %i.vc, align 1, !tbaa !63
  %i.vd = getelementptr inbounds nuw i8, ptr %.3865, i64 320
  store <8 x float> %i.ut, ptr %i.vd, align 1, !tbaa !63
  %i.ve = getelementptr inbounds nuw i8, ptr %.0503864, i64 32 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.0505863, i64 32 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.0507862, i64 32 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.3865, i64 352 ; 2 uses
  %i.vi = add nuw nsw i32 %.0509861, 8            ; 2 uses
  %i.vj = or disjoint i32 %i.vi, 7
  %i.vk = icmp slt i32 %i.vj, %.fr936
  br i1 %i.vk, label %bb.q, label %.preheader859.loopexit, !llvm.loop !467

bb.r:                                             ; preds = %.lr.ph875, %bb.ah
  %.4874 = phi ptr [ %.3.lcssa, %.lr.ph875 ], [ %i.aaw, %bb.ah ] ; 11 uses
  %.1504873 = phi ptr [ %.0503.lcssa, %.lr.ph875 ], [ %i.aat, %bb.ah ] ; 2 uses
  %.1506872 = phi ptr [ %.0505.lcssa, %.lr.ph875 ], [ %i.aau, %bb.ah ] ; 2 uses
  %.1508871 = phi ptr [ %.0507.lcssa, %.lr.ph875 ], [ %i.aav, %bb.ah ] ; 2 uses
  %.1510870 = phi i32 [ %.0509.lcssa, %.lr.ph875 ], [ %i.aax, %bb.ah ]
  %i.vl = load float, ptr %.1504873, align 4, !tbaa !66
  %i.vm = load float, ptr %.1506872, align 4, !tbaa !66
  %i.vn = load float, ptr %.1508871, align 4, !tbaa !66
  %i.vo = load i32, ptr %i.ob, align 4, !tbaa !55 ; 4 uses
  %i.vp = fmul fast float %i.vn, 5.000000e-01
  %i.vq = fadd fast float %i.vp, 5.000000e-01
  %i.vr = add nsw i32 %i.vo, -1
  %i.vs = sitofp fast i32 %i.vr to float          ; 3 uses
  %i.vt = fmul fast float %i.vq, %i.vs
  %i.vu = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.vt)
  %i.vv = fsub fast float %i.vu, %i.vs
  %i.vw = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.vv)
  %i.vx = fsub fast float %i.vs, %i.vw
  %i.vy = sitofp fast i32 %i.vo to float
  %i.vz = fadd fast float %i.vy, -1.000000e+00
  %.sroa.speculated6.i555 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.vx, float 0.000000e+00)
  %.sroa.speculated.i556 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i555, float %i.vz) ; 2 uses
  %i.wa = load <2 x i32>, ptr %i.nz, align 4, !tbaa !29 ; 5 uses
  %i.wb = insertelement <2 x float> poison, float %i.vl, i64 0
  %i.wc = insertelement <2 x float> %i.wb, float %i.vm, i64 1
  %i.wd = fmul fast <2 x float> %i.wc, splat (float 5.000000e-01)
  %i.we = fadd fast <2 x float> %i.wd, splat (float 5.000000e-01)
  %i.wf = add nsw <2 x i32> %i.wa, splat (i32 -1)
  %i.wg = sitofp <2 x i32> %i.wf to <2 x float>   ; 3 uses
  %i.wh = fmul fast <2 x float> %i.we, %i.wg
  %i.wi = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wh)
  %i.wj = fsub fast <2 x float> %i.wi, %i.wg
  %i.wk = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wj)
  %i.wl = fsub fast <2 x float> %i.wg, %i.wk
  %i.wm = sitofp <2 x i32> %i.wa to <2 x float>
  %i.wn = fadd fast <2 x float> %i.wm, splat (float -1.000000e+00)
  %i.wo = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wl, <2 x float> zeroinitializer)
  %i.wp = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.wo, <2 x float> %i.wn) ; 2 uses
  %i.wq = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.wp)
  %i.wr = fptosi <2 x float> %i.wq to <2 x i32>   ; 5 uses
  %i.ws = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i556)
  %i.wt = fptosi float %i.ws to i32               ; 9 uses
  %i.wu = extractelement <2 x i32> %i.wr, i64 0   ; 6 uses
  %i.wv = add nsw i32 %i.wu, 1                    ; 5 uses
  %i.ww = extractelement <2 x i32> %i.wr, i64 1   ; 6 uses
  %i.wx = add nsw i32 %i.ww, 1                    ; 5 uses
  %i.wy = add nsw i32 %i.wt, 1                    ; 5 uses
  %i.wz = icmp sgt <2 x i32> %i.wr, splat (i32 -1)
  %i.xa = icmp sgt <2 x i32> %i.wa, %i.wr
  %i.xb = and <2 x i1> %i.wz, %i.xa               ; 2 uses
  %i.xc = icmp sgt i32 %i.wt, -1
  %i.xd = icmp sgt i32 %i.vo, %i.wt
  %i.xe = and i1 %i.xc, %i.xd                     ; 4 uses
  %i.xf = icmp sgt i32 %i.wu, -2
  %i.xg = extractelement <2 x i32> %i.wa, i64 0   ; 2 uses
  %i.xh = icmp slt i32 %i.wv, %i.xg
  %i.xi = and i1 %i.xf, %i.xh                     ; 2 uses
  %i.xj = icmp sgt i32 %i.ww, -2
  %i.xk = extractelement <2 x i32> %i.wa, i64 1   ; 2 uses
  %i.xl = icmp slt i32 %i.wx, %i.xk
  %i.xm = and i1 %i.xj, %i.xl                     ; 2 uses
  %i.xn = icmp sgt i32 %i.wt, -2
  %i.xo = icmp slt i32 %i.wy, %i.vo
  %i.xp = and i1 %i.xn, %i.xo                     ; 4 uses
  %i.xq = extractelement <2 x i1> %i.xb, i64 0    ; 2 uses
  %i.xr = extractelement <2 x i1> %i.xb, i64 1    ; 2 uses
  %i.xs = and i1 %i.xq, %i.xr                     ; 2 uses
  %i.xt = and i1 %i.xi, %i.xr                     ; 2 uses
  %i.xu = and i1 %i.xq, %i.xm                     ; 2 uses
  %i.xv = and i1 %i.xi, %i.xm                     ; 2 uses
  %i.xw = and i1 %i.xs, %i.xe
  %i.xx = and i1 %i.xt, %i.xe
  %i.xy = and i1 %i.xe, %i.xu
  %i.xz = and i1 %i.xe, %i.xv
  %i.ya = and i1 %i.xs, %i.xp
  %i.yb = and i1 %i.xt, %i.xp
  %i.yc = and i1 %i.xu, %i.xp
  %i.yd = and i1 %i.xv, %i.xp
  %i.ye = getelementptr inbounds nuw i8, ptr %.4874, i64 32
  br i1 %i.xw, label %bb.s, label %bb.t

end_hunk_11
begin_hunk_12_@_ZN4ncnnL44gridsample_2d_bicubic_apply_interpolation_p8ERKNS_3MatERS0_S3_RKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cv = zext nneg i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cv
  %i.cx = load <8 x float>, ptr %i.cw, align 1, !tbaa !63
  %i.cy = fmul fast <8 x float> %i.cx, %i.at
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cz = phi <8 x float> [ %i.cy, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.053138, i64 28
  %i.db = load i32, ptr %i.da, align 4, !tbaa !29 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, -1
  br i1 %i.dc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.dd
  %i.df = load <8 x float>, ptr %i.de, align 1, !tbaa !63
  %i.dg = fmul fast <8 x float> %i.df, %i.az
  %i.dh = fadd fast <8 x float> %i.dg, %i.cz
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.di = phi <8 x float> [ %i.dh, %bb.m ], [ %i.cz, %bb.l ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.053138, i64 32
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !29 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, -1
  br i1 %i.dl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.dm
  %i.do = load <8 x float>, ptr %i.dn, align 1, !tbaa !63
  %i.dp = fmul fast <8 x float> %i.do, %i.be
  %i.dq = fadd fast <8 x float> %i.dp, %i.di
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dr = phi <8 x float> [ %i.dq, %bb.o ], [ %i.di, %bb.n ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.053138, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !29 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, -1
  br i1 %i.du, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dv = zext nneg i32 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.dv
  %i.dx = load <8 x float>, ptr %i.dw, align 1, !tbaa !63
  %i.dy = fmul fast <8 x float> %i.dx, %i.bg
  %i.dz = fsub fast <8 x float> %i.dr, %i.dy
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ea = phi <8 x float> [ %i.dz, %bb.q ], [ %i.dr, %bb.p ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.053138, i64 40
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !29 ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, -1
  br i1 %i.ed, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ee = zext nneg i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ee
  %i.eg = load <8 x float>, ptr %i.ef, align 1, !tbaa !63
  %i.eh = fmul fast <8 x float> %i.eg, %i.at
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ei = phi <8 x float> [ %i.eh, %bb.s ], [ zeroinitializer, %bb.r ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.053138, i64 44
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !29 ; 2 uses
  %i.el = icmp sgt i32 %i.ek, -1
  br i1 %i.el, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.em = zext nneg i32 %i.ek to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.em
  %i.eo = load <8 x float>, ptr %i.en, align 1, !tbaa !63
  %i.ep = fmul fast <8 x float> %i.eo, %i.az
  %i.eq = fadd fast <8 x float> %i.ep, %i.ei
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.er = phi <8 x float> [ %i.eq, %bb.u ], [ %i.ei, %bb.t ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.053138, i64 48
  %i.et = load i32, ptr %i.es, align 4, !tbaa !29 ; 2 uses
  %i.eu = icmp sgt i32 %i.et, -1
  br i1 %i.eu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ev = zext nneg i32 %i.et to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ev
  %i.ex = load <8 x float>, ptr %i.ew, align 1, !tbaa !63
  %i.ey = fmul fast <8 x float> %i.ex, %i.be
  %i.ez = fadd fast <8 x float> %i.ey, %i.er
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fa = phi <8 x float> [ %i.ez, %bb.w ], [ %i.er, %bb.v ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.053138, i64 52
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !29 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, -1
  br i1 %i.fd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fe = zext nneg i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.fe
  %i.fg = load <8 x float>, ptr %i.ff, align 1, !tbaa !63
  %i.fh = fmul fast <8 x float> %i.fg, %i.bg
  %i.fi = fsub fast <8 x float> %i.fa, %i.fh
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fj = phi <8 x float> [ %i.fi, %bb.y ], [ %i.fa, %bb.x ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.053138, i64 56
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !29 ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, -1
  br i1 %i.fm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fn = zext nneg i32 %i.fl to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.fn
  %i.fp = load <8 x float>, ptr %i.fo, align 1, !tbaa !63
  %i.fq = fmul fast <8 x float> %i.fp, %i.at
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fr = phi <8 x float> [ %i.fq, %bb.aa ], [ zeroinitializer, %bb.z ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.053138, i64 60
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !29 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, -1
  br i1 %i.fu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fv = zext nneg i32 %i.ft to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.fv
  %i.fx = load <8 x float>, ptr %i.fw, align 1, !tbaa !63
  %i.fy = fmul fast <8 x float> %i.fx, %i.az
  %i.fz = fadd fast <8 x float> %i.fy, %i.fr
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ga = phi <8 x float> [ %i.fz, %bb.ac ], [ %i.fr, %bb.ab ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.053138, i64 64
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !29 ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, -1
  br i1 %i.gd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ge = zext nneg i32 %i.gc to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ge
  %i.gg = load <8 x float>, ptr %i.gf, align 1, !tbaa !63
  %i.gh = fmul fast <8 x float> %i.gg, %i.be
  %i.gi = fadd fast <8 x float> %i.gh, %i.ga
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gj = phi <8 x float> [ %i.gi, %bb.ae ], [ %i.ga, %bb.ad ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.053138, i64 68
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !29 ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, -1
  br i1 %i.gm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gn = zext nneg i32 %i.gl to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.gn
  %i.gp = load <8 x float>, ptr %i.go, align 1, !tbaa !63
  %i.gq = fmul fast <8 x float> %i.gp, %i.bg
  %i.gr = fsub fast <8 x float> %i.gj, %i.gq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gs = phi <8 x float> [ %i.gr, %bb.ag ], [ %i.gj, %bb.af ]
  %i.gt = insertelement <8 x float> poison, float %i.bi, i64 0
  %i.gu = shufflevector <8 x float> %i.gt, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.gv = fadd fast <8 x float> %i.gu, splat (float 1.000000e+00) ; 3 uses
  %i.gw = fsub fast <8 x float> splat (float 1.000000e+00), %i.gu ; 3 uses
  %i.gx = fmul fast <8 x float> %i.gv, splat (float 7.500000e-01)
  %i.gy = fsub fast <8 x float> splat (float 3.750000e+00), %i.gx
  %i.gz = fmul fast <8 x float> %i.gy, %i.gv
  %i.ha = fadd fast <8 x float> %i.gz, splat (float -6.000000e+00)
  %i.hb = fmul fast <8 x float> %i.ha, %i.gv
  %i.hc = fadd fast <8 x float> %i.hb, splat (float 3.000000e+00) ; 2 uses
  %i.hd = fmul fast <8 x float> %i.gu, splat (float 1.250000e+00)
  %i.he = fadd fast <8 x float> %i.hd, splat (float -2.250000e+00)
  %.scalar146 = fmul fast float %i.bi, %i.bi
  %i.hf = insertelement <8 x float> poison, float %.scalar146, i64 0
  %i.hg = shufflevector <8 x float> %i.hf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hh = fmul fast <8 x float> %i.he, %i.hg
  %i.hi = fadd fast <8 x float> %i.hh, splat (float 1.000000e+00) ; 2 uses
  %i.hj = fmul fast <8 x float> %i.gw, splat (float 1.250000e+00)
  %i.hk = fadd fast <8 x float> %i.hj, splat (float -2.250000e+00)
  %i.hl = fmul fast <8 x float> %i.gw, %i.gw
  %i.hm = fmul fast <8 x float> %i.hl, %i.hk      ; 2 uses
  %i.hn = fadd fast <8 x float> %i.hm, splat (float 1.000000e+00)
  %i.ho = fadd fast <8 x float> %i.hi, %i.hm
  %i.hp = fadd fast <8 x float> %i.ho, %i.hc
  %i.hq = fmul fast <8 x float> %i.cr, %i.hc
  %i.hr = fmul fast <8 x float> %i.ea, %i.hi
  %i.hs = fadd fast <8 x float> %i.hr, %i.hq
  %i.ht = fmul fast <8 x float> %i.fj, %i.hn
  %i.hu = fadd fast <8 x float> %i.hs, %i.ht
  %i.hv = fmul fast <8 x float> %i.hp, %i.gs
  %i.hw = fsub fast <8 x float> %i.hu, %i.hv
  store <8 x float> %i.hw, ptr %.054137, align 1, !tbaa !63
  %i.hx = getelementptr inbounds nuw i8, ptr %.054137, i64 32
  %i.hy = getelementptr inbounds nuw i8, ptr %.053138, i64 72
  %i.hz = add nuw nsw i32 %.052139, 1             ; 2 uses
  %i.ia = load i32, ptr %6, align 4, !tbaa !29    ; 2 uses
  %i.ib = icmp slt i32 %i.hz, %i.ia
  br i1 %i.ib, label %.lr.ph, label %._crit_edge, !llvm.loop !606

._crit_edge142:                                   ; preds = %._crit_edge, %.noexc77.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge142, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL45gridsample_3d_bilinear_apply_interpolation_p8ERKNS_3MatERS0_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !29     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !29
  %i.h = load i32, ptr %0, align 4, !tbaa !29     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !29
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !29
  %i.k = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not174 = icmp sgt i32 %i.k, %i.j
  br i1 %.not174, label %._crit_edge176, label %.noexc82.lr.ph

.noexc82.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !29     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.noexc82.preheader, label %._crit_edge176

.noexc82.preheader:                               ; preds = %.noexc82.lr.ph
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.noexc82

.noexc82:                                         ; preds = %.noexc82.preheader, %._crit_edge
  %i.t = phi i32 [ %i.p, %.noexc82.preheader ], [ %i.ai, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.r, %.noexc82.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !24, !noalias !607
  %i.v = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !607
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !607
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 8 uses
  %i.aa = icmp sgt i32 %i.t, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc82
  %i.ab = load ptr, ptr %5, align 8, !tbaa !24, !noalias !610
  %i.ac = load ptr, ptr %4, align 8, !tbaa !24, !noalias !613
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !613
  %i.ae = mul i64 %i.ad, %indvars.iv
  %i.af = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !613
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.r, %.noexc82
  %i.ai = phi i32 [ %i.t, %.noexc82 ], [ %i.dr, %bb.r ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge176, label %.noexc82, !llvm.loop !616

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %.054173 = phi ptr [ %i.do, %bb.r ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %.055172 = phi ptr [ %i.dp, %bb.r ], [ %i.ab, %.lr.ph.preheader ] ; 12 uses
  %.056171 = phi i32 [ %i.dq, %bb.r ], [ 0, %.lr.ph.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.055172, i64 32
  %i.ak = load i32, ptr %.055172, align 4, !tbaa !29 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.am
  %i.ao = load <8 x float>, ptr %i.an, align 1, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.ap = phi fast <8 x float> [ %i.ao, %bb.c ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.055172, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !29 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.at
  %i.av = load <8 x float>, ptr %i.au, align 1, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aw = phi fast <8 x float> [ %i.av, %bb.e ], [ zeroinitializer, %bb.d ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.055172, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ba
  %i.bc = load <8 x float>, ptr %i.bb, align 1, !tbaa !63
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bd = phi fast <8 x float> [ %i.bc, %bb.g ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.055172, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !29 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bh
  %i.bj = load <8 x float>, ptr %i.bi, align 1, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bk = phi fast <8 x float> [ %i.bj, %bb.i ], [ zeroinitializer, %bb.h ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.055172, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !29 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bo
  %i.bq = load <8 x float>, ptr %i.bp, align 1, !tbaa !63
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.br = phi fast <8 x float> [ %i.bq, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.055172, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !29 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bv
  %i.bx = load <8 x float>, ptr %i.bw, align 1, !tbaa !63
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.by = phi fast <8 x float> [ %i.bx, %bb.m ], [ zeroinitializer, %bb.l ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.055172, i64 24
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !29 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, -1
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cc
  %i.ce = load <8 x float>, ptr %i.cd, align 1, !tbaa !63
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.cf = phi fast <8 x float> [ %i.ce, %bb.o ], [ zeroinitializer, %bb.n ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.055172, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !29 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cj
  %i.cl = load <8 x float>, ptr %i.ck, align 1, !tbaa !63
  br label %bb.r
end_hunk_12
begin_hunk_13_@_ZN4ncnnL44gridsample_2d_bicubic_apply_interpolation_p4ERKNS_3MatERS0_S3_RKNS_6OptionE.omp_outlined:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ef = zext nneg i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ef
  %i.eh = load <4 x float>, ptr %i.eg, align 1, !tbaa !63
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ei = phi fast <4 x float> [ %i.eh, %bb.k ], [ zeroinitializer, %bb.j ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.062135, i64 28
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !29 ; 2 uses
  %i.el = icmp sgt i32 %i.ek, -1
  br i1 %i.el, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.em = zext nneg i32 %i.ek to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.em
  %i.eo = load <4 x float>, ptr %i.en, align 1, !tbaa !63
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ep = phi fast <4 x float> [ %i.eo, %bb.m ], [ zeroinitializer, %bb.l ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.062135, i64 32
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !29 ; 2 uses
  %i.es = icmp sgt i32 %i.er, -1
  br i1 %i.es, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.et = zext nneg i32 %i.er to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.et
  %i.ev = load <4 x float>, ptr %i.eu, align 1, !tbaa !63
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ew = phi fast <4 x float> [ %i.ev, %bb.o ], [ zeroinitializer, %bb.n ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.062135, i64 36
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !29 ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, -1
  br i1 %i.ez, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fa = zext nneg i32 %i.ey to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.fa
  %i.fc = load <4 x float>, ptr %i.fb, align 1, !tbaa !63
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fd = phi fast <4 x float> [ %i.fc, %bb.q ], [ zeroinitializer, %bb.p ]
  %i.fe = load <4 x float>, ptr %7, align 16, !tbaa !63
  %i.ff = fmul fast <4 x float> %i.fe, %i.ei      ; 2 uses
  store <4 x float> %i.ff, ptr %i.p, align 16, !tbaa !63
  %i.fg = load <4 x float>, ptr %8, align 16, !tbaa !63
  %i.fh = fmul fast <4 x float> %i.fg, %i.ep
  %i.fi = fadd fast <4 x float> %i.fh, %i.ff      ; 2 uses
  store <4 x float> %i.fi, ptr %i.p, align 16, !tbaa !63
  %i.fj = load <4 x float>, ptr %9, align 16, !tbaa !63
  %i.fk = fmul fast <4 x float> %i.fj, %i.ew
  %i.fl = fadd fast <4 x float> %i.fk, %i.fi      ; 2 uses
  store <4 x float> %i.fl, ptr %i.p, align 16, !tbaa !63
  %i.fm = load <4 x float>, ptr %10, align 16, !tbaa !63
  %i.fn = fmul fast <4 x float> %i.fm, %i.fd
  %i.fo = fadd fast <4 x float> %i.fn, %i.fl      ; 2 uses
  store <4 x float> %i.fo, ptr %i.p, align 16, !tbaa !63
  %i.fp = getelementptr inbounds nuw i8, ptr %.062135, i64 40
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !29 ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, -1
  br i1 %i.fr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fs = zext nneg i32 %i.fq to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.fs
  %i.fu = load <4 x float>, ptr %i.ft, align 1, !tbaa !63
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fv = phi fast <4 x float> [ %i.fu, %bb.s ], [ zeroinitializer, %bb.r ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.062135, i64 44
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !29 ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, -1
  br i1 %i.fy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.fz
  %i.gb = load <4 x float>, ptr %i.ga, align 1, !tbaa !63
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gc = phi fast <4 x float> [ %i.gb, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.062135, i64 48
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !29 ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  br i1 %i.gf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gg = zext nneg i32 %i.ge to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.gg
  %i.gi = load <4 x float>, ptr %i.gh, align 1, !tbaa !63
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gj = phi fast <4 x float> [ %i.gi, %bb.w ], [ zeroinitializer, %bb.v ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.062135, i64 52
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !29 ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, -1
  br i1 %i.gm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gn = zext nneg i32 %i.gl to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.gn
  %i.gp = load <4 x float>, ptr %i.go, align 1, !tbaa !63
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gq = phi fast <4 x float> [ %i.gp, %bb.y ], [ zeroinitializer, %bb.x ]
  %i.gr = load <4 x float>, ptr %7, align 16, !tbaa !63
  %i.gs = fmul fast <4 x float> %i.gr, %i.fv      ; 2 uses
  store <4 x float> %i.gs, ptr %i.q, align 16, !tbaa !63
  %i.gt = load <4 x float>, ptr %8, align 16, !tbaa !63
  %i.gu = fmul fast <4 x float> %i.gt, %i.gc
  %i.gv = fadd fast <4 x float> %i.gu, %i.gs      ; 2 uses
  store <4 x float> %i.gv, ptr %i.q, align 16, !tbaa !63
  %i.gw = load <4 x float>, ptr %9, align 16, !tbaa !63
  %i.gx = fmul fast <4 x float> %i.gw, %i.gj
  %i.gy = fadd fast <4 x float> %i.gx, %i.gv      ; 2 uses
  store <4 x float> %i.gy, ptr %i.q, align 16, !tbaa !63
  %i.gz = load <4 x float>, ptr %10, align 16, !tbaa !63
  %i.ha = fmul fast <4 x float> %i.gz, %i.gq
  %i.hb = fadd fast <4 x float> %i.ha, %i.gy      ; 2 uses
  store <4 x float> %i.hb, ptr %i.q, align 16, !tbaa !63
  %i.hc = getelementptr inbounds nuw i8, ptr %.062135, i64 56
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !29 ; 2 uses
  %i.he = icmp sgt i32 %i.hd, -1
  br i1 %i.he, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hf = zext nneg i32 %i.hd to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.hf
  %i.hh = load <4 x float>, ptr %i.hg, align 1, !tbaa !63
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hi = phi fast <4 x float> [ %i.hh, %bb.aa ], [ zeroinitializer, %bb.z ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.062135, i64 60
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !29 ; 2 uses
  %i.hl = icmp sgt i32 %i.hk, -1
  br i1 %i.hl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hm = zext nneg i32 %i.hk to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.hm
  %i.ho = load <4 x float>, ptr %i.hn, align 1, !tbaa !63
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hp = phi fast <4 x float> [ %i.ho, %bb.ac ], [ zeroinitializer, %bb.ab ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.062135, i64 64
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !29 ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, -1
  br i1 %i.hs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ht = zext nneg i32 %i.hr to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ht
  %i.hv = load <4 x float>, ptr %i.hu, align 1, !tbaa !63
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hw = phi fast <4 x float> [ %i.hv, %bb.ae ], [ zeroinitializer, %bb.ad ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.062135, i64 68
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !29 ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, -1
  br i1 %i.hz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ia = zext nneg i32 %i.hy to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ia
  %i.ic = load <4 x float>, ptr %i.ib, align 1, !tbaa !63
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.id = phi fast <4 x float> [ %i.ic, %bb.ag ], [ zeroinitializer, %bb.af ]
  %i.ie = load <4 x float>, ptr %7, align 16, !tbaa !63
  %i.if = fmul fast <4 x float> %i.ie, %i.hi      ; 2 uses
  store <4 x float> %i.if, ptr %i.r, align 16, !tbaa !63
  %i.ig = load <4 x float>, ptr %8, align 16, !tbaa !63
  %i.ih = fmul fast <4 x float> %i.ig, %i.hp
  %i.ii = fadd fast <4 x float> %i.ih, %i.if      ; 2 uses
  store <4 x float> %i.ii, ptr %i.r, align 16, !tbaa !63
  %i.ij = load <4 x float>, ptr %9, align 16, !tbaa !63
  %i.ik = fmul fast <4 x float> %i.ij, %i.hw
  %i.il = fadd fast <4 x float> %i.ik, %i.ii      ; 2 uses
  store <4 x float> %i.il, ptr %i.r, align 16, !tbaa !63
  %i.im = load <4 x float>, ptr %10, align 16, !tbaa !63
  %i.in = fmul fast <4 x float> %i.im, %i.id
  %i.io = fadd fast <4 x float> %i.in, %i.il      ; 2 uses
  store <4 x float> %i.io, ptr %i.r, align 16, !tbaa !63
  %i.ip = load <4 x float>, ptr %11, align 16, !tbaa !63
  %i.iq = fmul fast <4 x float> %i.eb, %i.ip
  %i.ir = load <4 x float>, ptr %12, align 16, !tbaa !63
  %i.is = fmul fast <4 x float> %i.fo, %i.ir
  %i.it = fadd fast <4 x float> %i.is, %i.iq
  %i.iu = load <4 x float>, ptr %13, align 16, !tbaa !63
  %i.iv = fmul fast <4 x float> %i.hb, %i.iu
  %i.iw = fadd fast <4 x float> %i.it, %i.iv
  %i.ix = load <4 x float>, ptr %14, align 16, !tbaa !63
  %i.iy = fmul fast <4 x float> %i.io, %i.ix
  %i.iz = fadd fast <4 x float> %i.iw, %i.iy
  store <4 x float> %i.iz, ptr %.063134, align 1, !tbaa !63
  %i.ja = getelementptr inbounds nuw i8, ptr %.063134, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %.062135, i64 72
  %i.jc = add nuw nsw i32 %.061136, 1             ; 2 uses
  %i.jd = load i32, ptr %6, align 4, !tbaa !29    ; 2 uses
  %i.je = icmp slt i32 %i.jc, %i.jd
  br i1 %i.je, label %.lr.ph, label %._crit_edge, !llvm.loop !650

._crit_edge139:                                   ; preds = %._crit_edge, %.noexc86.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge139, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL45gridsample_3d_bilinear_apply_interpolation_p4ERKNS_3MatERS0_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !29     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !29
  %i.h = load i32, ptr %0, align 4, !tbaa !29     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !29
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !29
  %i.k = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not174 = icmp sgt i32 %i.k, %i.j
  br i1 %.not174, label %._crit_edge176, label %.noexc82.lr.ph

.noexc82.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !29     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.noexc82.preheader, label %._crit_edge176

.noexc82.preheader:                               ; preds = %.noexc82.lr.ph
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.noexc82

.noexc82:                                         ; preds = %.noexc82.preheader, %._crit_edge
  %i.t = phi i32 [ %i.p, %.noexc82.preheader ], [ %i.ai, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.r, %.noexc82.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !24, !noalias !651
  %i.v = load i64, ptr %i.l, align 8, !tbaa !21, !noalias !651
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !651
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 8 uses
  %i.aa = icmp sgt i32 %i.t, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc82
  %i.ab = load ptr, ptr %5, align 8, !tbaa !24, !noalias !654
  %i.ac = load ptr, ptr %4, align 8, !tbaa !24, !noalias !657
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !657
  %i.ae = mul i64 %i.ad, %indvars.iv
  %i.af = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !657
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.r, %.noexc82
  %i.ai = phi i32 [ %i.t, %.noexc82 ], [ %i.dr, %bb.r ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge176, label %.noexc82, !llvm.loop !660

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %.054173 = phi ptr [ %i.do, %bb.r ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %.055172 = phi ptr [ %i.dp, %bb.r ], [ %i.ab, %.lr.ph.preheader ] ; 12 uses
  %.056171 = phi i32 [ %i.dq, %bb.r ], [ 0, %.lr.ph.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.055172, i64 32
  %i.ak = load i32, ptr %.055172, align 4, !tbaa !29 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.am
  %i.ao = load <4 x float>, ptr %i.an, align 1, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.ap = phi fast <4 x float> [ %i.ao, %bb.c ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.055172, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !29 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.at
  %i.av = load <4 x float>, ptr %i.au, align 1, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aw = phi fast <4 x float> [ %i.av, %bb.e ], [ zeroinitializer, %bb.d ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.055172, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ba
  %i.bc = load <4 x float>, ptr %i.bb, align 1, !tbaa !63
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bd = phi fast <4 x float> [ %i.bc, %bb.g ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.055172, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !29 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bh
  %i.bj = load <4 x float>, ptr %i.bi, align 1, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bk = phi fast <4 x float> [ %i.bj, %bb.i ], [ zeroinitializer, %bb.h ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.055172, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !29 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bo
  %i.bq = load <4 x float>, ptr %i.bp, align 1, !tbaa !63
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.br = phi fast <4 x float> [ %i.bq, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.055172, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !29 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bv
  %i.bx = load <4 x float>, ptr %i.bw, align 1, !tbaa !63
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.by = phi fast <4 x float> [ %i.bx, %bb.m ], [ zeroinitializer, %bb.l ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.055172, i64 24
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !29 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, -1
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cc
  %i.ce = load <4 x float>, ptr %i.cd, align 1, !tbaa !63
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.cf = phi fast <4 x float> [ %i.ce, %bb.o ], [ zeroinitializer, %bb.n ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.055172, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !29 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cj
  %i.cl = load <4 x float>, ptr %i.ck, align 1, !tbaa !63
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
end_hunk_13
begin_hunk_14_@_ZN4ncnnL41gridsample_nearest_apply_interpolation_p1ERKNS_3MatERS0_S2_RKNS_6OptionE.omp_outlined:bb.a
  store i32 0, ptr %i.d, align 4, !tbaa !29
  %i.h = load i32, ptr %0, align 4, !tbaa !29     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !29
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !29
  %i.k = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not90 = icmp sgt i32 %i.k, %i.j
  br i1 %.not90, label %._crit_edge92.split, label %.noexc48.lr.ph

.noexc48.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !24, !noalias !672
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21, !noalias !672
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !672
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !24, !noalias !675
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21, !noalias !675
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !675
  %factor.op.mul93 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !24, !noalias !678 ; 2 uses
  %i.w = load i32, ptr %6, align 4, !tbaa !29     ; 5 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc48.preheader, label %._crit_edge92.split

.noexc48.preheader:                               ; preds = %.noexc48.lr.ph
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  %xtraiter = and i32 %i.w, 1
  %i.aa = icmp eq i32 %i.w, 1
  %unroll_iter = and i32 %i.w, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod102 = trunc i32 %i.w to i1
  br label %.noexc48

.noexc48:                                         ; preds = %.noexc48.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.y, %.noexc48.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  %.reass94 = mul i64 %factor.op.mul93, %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass94 ; 2 uses
  br i1 %i.aa, label %.epil.preheader, label %.noexc48.new

._crit_edge.unr-lcssa:                            ; preds = %bb.g
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.noexc48
  %.02788.epil.init = phi ptr [ %i.v, %.noexc48 ], [ %i.ax, %._crit_edge.unr-lcssa ]
  %.02887.epil.init = phi ptr [ %i.ac, %.noexc48 ], [ %i.ay, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod102)
  %i.ad = load i32, ptr %.02788.epil.init, align 4, !tbaa !29 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.c, label %._crit_edge.epilog-lcssa

bb.c:                                             ; preds = %.epil.preheader
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !66
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.c, %.epil.preheader
  %i.ai = phi fast float [ %i.ah, %bb.c ], [ 0.000000e+00, %.epil.preheader ]
  store float %i.ai, ptr %.02887.epil.init, align 4, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond96.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond96.not, label %._crit_edge92.split, label %.noexc48

.noexc48.new:                                     ; preds = %.noexc48, %bb.g
  %.02788 = phi ptr [ %i.ax, %bb.g ], [ %i.v, %.noexc48 ] ; 3 uses
  %.02887 = phi ptr [ %i.ay, %bb.g ], [ %i.ac, %.noexc48 ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %bb.g ], [ 0, %.noexc48 ]
  %i.aj = load i32, ptr %.02788, align 4, !tbaa !29 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc48.new
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %.noexc48.new, %bb.d
  %i.ao = phi fast float [ %i.an, %bb.d ], [ 0.000000e+00, %.noexc48.new ]
  store float %i.ao, ptr %.02887, align 4, !tbaa !66
  %i.ap = getelementptr inbounds nuw i8, ptr %.02788, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.02887, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !29 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = phi fast float [ %i.av, %bb.f ], [ 0.000000e+00, %bb.e ]
  store float %i.aw, ptr %i.aq, align 4, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %.02788, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02887, i64 8 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.noexc48.new, !llvm.loop !681

._crit_edge92.split:                              ; preds = %._crit_edge, %.noexc48.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge92.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL44gridsample_2d_bicubic_apply_interpolation_p1ERKNS_3MatERS0_S3_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !29     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !29
  %i.h = load i32, ptr %0, align 4, !tbaa !29     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !29
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !29
  %i.k = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not141 = icmp sgt i32 %i.k, %i.j
  br i1 %.not141, label %._crit_edge143.split, label %.noexc84.lr.ph

.noexc84.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !24, !noalias !682
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21, !noalias !682
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !682
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !24, !noalias !685
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21, !noalias !685
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !685
  %factor.op.mul144 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !24, !noalias !688
  %i.w = load i32, ptr %6, align 4, !tbaa !29     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc84.preheader, label %._crit_edge143.split

.noexc84.preheader:                               ; preds = %.noexc84.lr.ph
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  br label %.noexc84

.noexc84:                                         ; preds = %.noexc84.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.y, %.noexc84.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 16 uses
  %.reass145 = mul i64 %factor.op.mul144, %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass145
  br label %bb.c

._crit_edge:                                      ; preds = %bb.ai
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond148.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond148.not, label %._crit_edge143.split, label %.noexc84

bb.c:                                             ; preds = %.noexc84, %bb.ai
  %.057140 = phi ptr [ %i.ab, %.noexc84 ], [ %i.hc, %bb.ai ] ; 2 uses
  %.058139 = phi ptr [ %i.v, %.noexc84 ], [ %i.hd, %bb.ai ] ; 19 uses
  %.059138 = phi i32 [ 0, %.noexc84 ], [ %i.he, %bb.ai ]
  %i.ac = load float, ptr %.058139, align 4, !tbaa !66 ; 5 uses
  %i.ad = fadd fast float %i.ac, 1.000000e+00     ; 4 uses
  %i.ae = fsub fast float 1.000000e+00, %i.ac     ; 3 uses
  %i.af = fmul fast float %i.ad, %i.ad
  %i.ag = fmul fast float %i.ad, 7.500000e-01
  %7 = fmul fast float %i.ad, 6.000000e+00
  %8 = fsub fast float 3.750000e+00, %i.ag
  %reass.mul.i.a = fmul fast float %i.af, %8
  %i.ah = fsub fast float 3.000000e+00, %7
  %i.ai = fadd fast float %reass.mul.i.a, %i.ah   ; 5 uses
  %i.aj = fmul fast float %i.ac, %i.ac
  %i.ak = fmul fast float %i.ac, 1.250000e+00
  %reass.add26.i = fadd fast float %i.ak, -2.250000e+00
  %reass.mul27.i = fmul fast float %i.aj, %reass.add26.i
  %i.al = fadd fast float %reass.mul27.i, 1.000000e+00 ; 5 uses
  %i.am = fmul fast float %i.ae, %i.ae
  %i.an = fmul fast float %i.ae, 1.250000e+00
  %i.ao = fadd fast float %i.an, -2.250000e+00
  %i.ap = fmul fast float %i.am, %i.ao            ; 2 uses
  %i.aq = fadd fast float %i.ap, 1.000000e+00     ; 4 uses
  %i.ar = fadd fast float %i.al, %i.ap
  %i.as = fadd fast float %i.ar, %i.ai            ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.058139, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !66 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.058139, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !29 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !66
  %i.bb = fmul fast float %i.ba, %i.ai
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bc = phi float [ %i.bb, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.058139, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !66
  %i.bj = fmul fast float %i.bi, %i.al
  %i.bk = fadd fast float %i.bj, %i.bc
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bl = phi float [ %i.bk, %bb.f ], [ %i.bc, %bb.e ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.058139, i64 16
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !29 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !66
  %i.bs = fmul fast float %i.br, %i.aq
  %i.bt = fadd fast float %i.bs, %i.bl
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bu = phi float [ %i.bt, %bb.h ], [ %i.bl, %bb.g ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.058139, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !29 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, -1
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !66
  %i.cb = fmul fast float %i.ca, %i.as
  %i.cc = fsub fast float %i.bu, %i.cb
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.cd = phi float [ %i.cc, %bb.j ], [ %i.bu, %bb.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.058139, i64 24
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !29 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = zext nneg i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !66
  %i.ck = fmul fast float %i.cj, %i.ai
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cl = phi float [ %i.ck, %bb.l ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.058139, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !66
  %i.cs = fmul fast float %i.cr, %i.al
  %i.ct = fadd fast float %i.cs, %i.cl
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cu = phi float [ %i.ct, %bb.n ], [ %i.cl, %bb.m ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.058139, i64 32
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !29 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, -1
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !66
  %i.db = fmul fast float %i.da, %i.aq
  %i.dc = fadd fast float %i.db, %i.cu
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dd = phi float [ %i.dc, %bb.p ], [ %i.cu, %bb.o ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.058139, i64 36
  %i.df = load i32, ptr %i.de, align 4, !tbaa !29 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, -1
  br i1 %i.dg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = zext nneg i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !66
  %i.dk = fmul fast float %i.dj, %i.as
  %i.dl = fsub fast float %i.dd, %i.dk
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dm = phi float [ %i.dl, %bb.r ], [ %i.dd, %bb.q ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.058139, i64 40
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !29 ; 2 uses
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dq = zext nneg i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !66
  %i.dt = fmul fast float %i.ds, %i.ai
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.du = phi float [ %i.dt, %bb.t ], [ 0.000000e+00, %bb.s ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.058139, i64 44
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !29 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, -1
  br i1 %i.dx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dy = zext nneg i32 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !66
  %i.eb = fmul fast float %i.ea, %i.al
  %i.ec = fadd fast float %i.eb, %i.du
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ed = phi float [ %i.ec, %bb.v ], [ %i.du, %bb.u ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.058139, i64 48
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !29 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, -1
  br i1 %i.eg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eh = zext nneg i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !66
  %i.ek = fmul fast float %i.ej, %i.aq
  %i.el = fadd fast float %i.ek, %i.ed
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.em = phi float [ %i.el, %bb.x ], [ %i.ed, %bb.w ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.058139, i64 52
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !29 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, -1
  br i1 %i.ep, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eq = zext nneg i32 %i.eo to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !66
  %i.et = fmul fast float %i.es, %i.as
  %i.eu = fsub fast float %i.em, %i.et
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ev = phi float [ %i.eu, %bb.z ], [ %i.em, %bb.y ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.058139, i64 56
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !29 ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, -1
  br i1 %i.ey, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ez = zext nneg i32 %i.ex to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !66
  %i.fc = fmul fast float %i.fb, %i.ai
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fd = phi float [ %i.fc, %bb.ab ], [ 0.000000e+00, %bb.aa ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.058139, i64 60
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !29 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, -1
  br i1 %i.fg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fh = zext nneg i32 %i.ff to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !66
  %i.fk = fmul fast float %i.fj, %i.al
  %i.fl = fadd fast float %i.fk, %i.fd
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fm = phi float [ %i.fl, %bb.ad ], [ %i.fd, %bb.ac ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.058139, i64 64
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !29 ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, -1
  br i1 %i.fp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fq = zext nneg i32 %i.fo to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !66
  %i.ft = fmul fast float %i.fs, %i.aq
  %i.fu = fadd fast float %i.ft, %i.fm
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fv = phi float [ %i.fu, %bb.af ], [ %i.fm, %bb.ae ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.058139, i64 68
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !29 ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, -1
  br i1 %i.fy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !66
  %i.gc = fmul fast float %i.gb, %i.as
  %i.gd = fsub fast float %i.fv, %i.gc
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ge = phi float [ %i.gd, %bb.ah ], [ %i.fv, %bb.ag ]
  %i.gf = fadd fast float %i.au, 1.000000e+00     ; 4 uses
  %i.gg = fsub fast float 1.000000e+00, %i.au     ; 3 uses
  %i.gh = fmul fast float %i.gf, %i.gf
  %i.gi = fmul fast float %i.gf, 7.500000e-01
  %9 = fmul fast float %i.gf, 6.000000e+00
  %10 = fsub fast float 3.750000e+00, %i.gi
  %reass.mul.i85 = fmul fast float %i.gh, %10
  %i.gj = fsub fast float 3.000000e+00, %9
  %i.gk = fadd fast float %reass.mul.i85, %i.gj   ; 2 uses
  %i.gl = fmul fast float %i.au, %i.au
  %i.gm = fmul fast float %i.au, 1.250000e+00
  %reass.add26.i86 = fadd fast float %i.gm, -2.250000e+00
  %reass.mul27.i87 = fmul fast float %i.gl, %reass.add26.i86
  %i.gn = fadd fast float %reass.mul27.i87, 1.000000e+00 ; 2 uses
  %i.go = fmul fast float %i.gg, %i.gg
  %i.gp = fmul fast float %i.gg, 1.250000e+00
  %i.gq = fadd fast float %i.gp, -2.250000e+00
  %i.gr = fmul fast float %i.go, %i.gq            ; 2 uses
  %i.gs = fadd fast float %i.gr, 1.000000e+00
  %i.gt = fadd fast float %i.gn, %i.gr
  %i.gu = fadd fast float %i.gt, %i.gk
  %i.gv = fmul fast float %i.cd, %i.gk
  %i.gw = fmul fast float %i.dm, %i.gn
  %i.gx = fadd fast float %i.gw, %i.gv
  %i.gy = fmul fast float %i.ev, %i.gs
  %i.gz = fadd fast float %i.gx, %i.gy
  %i.ha = fmul fast float %i.gu, %i.ge
  %i.hb = fsub fast float %i.gz, %i.ha
  store float %i.hb, ptr %.057140, align 4, !tbaa !66
  %i.hc = getelementptr inbounds nuw i8, ptr %.057140, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %.058139, i64 72
  %i.he = add nuw nsw i32 %.059138, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.he, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !691

._crit_edge143.split:                             ; preds = %._crit_edge, %.noexc84.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge143.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL45gridsample_3d_bilinear_apply_interpolation_p1ERKNS_3MatERS0_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !29     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !29
  %i.h = load i32, ptr %0, align 4, !tbaa !29     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !29
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !29
  %i.k = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not148 = icmp sgt i32 %i.k, %i.j
  br i1 %.not148, label %._crit_edge150.split, label %.noexc106.lr.ph

.noexc106.lr.ph:                                  ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !24, !noalias !692
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21, !noalias !692
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !692
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !24, !noalias !695
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21, !noalias !695
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !695
  %factor.op.mul151 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !24, !noalias !698
  %i.w = load i32, ptr %6, align 4, !tbaa !29     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc106.preheader, label %._crit_edge150.split

.noexc106.preheader:                              ; preds = %.noexc106.lr.ph
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  br label %.noexc106

.noexc106:                                        ; preds = %.noexc106.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.y, %.noexc106.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 8 uses
  %.reass152 = mul i64 %factor.op.mul151, %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass152
  br label %bb.c

._crit_edge:                                      ; preds = %bb.s
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond154.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond154.not, label %._crit_edge150.split, label %.noexc106

bb.c:                                             ; preds = %.noexc106, %bb.s
  %.078147 = phi ptr [ %i.ab, %.noexc106 ], [ %i.di, %bb.s ] ; 2 uses
  %.079146 = phi ptr [ %i.v, %.noexc106 ], [ %i.dj, %bb.s ] ; 12 uses
  %.080145 = phi i32 [ 0, %.noexc106 ], [ %i.dk, %bb.s ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.079146, i64 32
  %i.ad = load i32, ptr %.079146, align 4, !tbaa !29 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ai = phi fast float [ %i.ah, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.079146, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ap = phi fast float [ %i.ao, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.079146, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !29 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aw = phi fast float [ %i.av, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.079146, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !66
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bd = phi fast float [ %i.bc, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.079146, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !29 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !66
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bk = phi fast float [ %i.bj, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.079146, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !29 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !66
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.br = phi fast float [ %i.bq, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.079146, i64 24
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !29 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !66
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.by = phi fast float [ %i.bx, %bb.p ], [ 0.000000e+00, %bb.o ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.079146, i64 28
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !29 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, -1
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !66
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.cf = phi fast float [ %i.ce, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.cg = load float, ptr %i.ac, align 4, !tbaa !66 ; 5 uses
  %i.ch = fsub fast float 1.000000e+00, %i.cg     ; 4 uses
  %i.ci = fmul fast float %i.ch, %i.ai
  %i.cj = fmul fast float %i.cg, %i.ap
end_hunk_14
