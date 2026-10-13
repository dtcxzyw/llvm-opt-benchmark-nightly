Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gridsample_x86_avx?download=true
inline.NumInlined: 684
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.ate = fadd fast float %i.atd, -1.000000e+00
  %.sroa.speculated6.i437.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.atc, float 0.000000e+00)
  %.sroa.speculated.i438.3 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i437.3, float %i.ate)
  %i.atf = fptosi float %.sroa.speculated.i438.3 to i32 ; 3 uses
  %i.atg = load i32, ptr %i.xk, align 4, !tbaa !37
  %i.ath = mul nsw i32 %i.atg, %i.atf             ; 4 uses
  %i.ati = icmp sgt i32 %i.atf, -1
  %i.atj = icmp sgt i32 %i.asv, %i.atf
  %i.atk = and i1 %i.ati, %i.atj                  ; 3 uses
  %i.atl = and i1 %i.aje, %i.atk
  %i.atm = and i1 %i.ajf, %i.atk
  br i1 %i.atk, label %bb.cg, label %.thread797

.thread797:                                       ; preds = %.split.3
  store i32 -1, ptr %i.ast, align 4, !tbaa !23
  %i.atn = getelementptr inbounds nuw i8, ptr %.6530, i64 60
  store i32 -1, ptr %i.atn, align 4, !tbaa !23
  %i.ato = getelementptr inbounds nuw i8, ptr %.6530, i64 64
  store i32 -1, ptr %i.ato, align 4, !tbaa !23
  br label %.split526.us

bb.cg:                                            ; preds = %.split.3
  %i.atp = extractelement <4 x i32> %i.aiy, i64 2
  %i.atq = add nsw i32 %i.ath, %i.atp
  %i.atr = load i32, ptr %i.xm, align 8, !tbaa !16
  %i.ats = mul nsw i32 %i.atr, %i.atq
  store i32 %i.ats, ptr %i.ast, align 4, !tbaa !23
  br i1 %i.aip, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.att = add nsw i32 %i.ath, %i.ail
  %i.atu = load i32, ptr %i.xm, align 8, !tbaa !16
  %i.atv = mul nsw i32 %i.atu, %i.att
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.atw = phi i32 [ %i.atv, %bb.ch ], [ -1, %bb.cg ]
  %i.atx = getelementptr inbounds nuw i8, ptr %.6530, i64 60
  store i32 %i.atw, ptr %i.atx, align 4, !tbaa !23
  br i1 %i.atl, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aty = extractelement <4 x i32> %i.aiy, i64 3
  %i.atz = add nsw i32 %i.ath, %i.aty
  %i.aua = load i32, ptr %i.xm, align 8, !tbaa !16
  %i.aub = mul nsw i32 %i.aua, %i.atz
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.auc = phi i32 [ %i.aub, %bb.cj ], [ -1, %bb.ci ]
  %i.aud = getelementptr inbounds nuw i8, ptr %.6530, i64 64
  store i32 %i.auc, ptr %i.aud, align 4, !tbaa !23
  br i1 %i.atm, label %bb.cl, label %.split526.us

bb.cl:                                            ; preds = %bb.ck
  %i.aue = extractelement <4 x i32> %i.aiy, i64 0
  %i.auf = add nsw i32 %i.ath, %i.aue
  %i.aug = load i32, ptr %i.xm, align 8, !tbaa !16
  %i.auh = mul nsw i32 %i.aug, %i.auf
  br label %.split526.us

.loopexit:                                        ; preds = %.split526.us, %._crit_edge, %.preheader511, %.preheader510
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = mul i32 %i.e, %i.g                       ; 9 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !20, !noalias !383 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader848, label %_ZN4ncnn3MatD2Ev.exit516

.preheader848:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !17
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader848
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %i.h, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0879 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !20, !noalias !384
  %i.v = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !384
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !384
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 2 uses
  br i1 %i.p, label %.lr.ph869, label %.preheader

.preheader:                                       ; preds = %.lr.ph869, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hc, %.lr.ph869 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.z, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.ha, %.lr.ph869 ]
  %.1.lcssa = phi ptr [ %.0879, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hb, %.lr.ph869 ] ; 2 uses
  %i.aa = icmp slt i32 %.0501.lcssa, %i.h
  br i1 %i.aa, label %.lr.ph876, label %._crit_edge

.lr.ph869:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph869
  %.1868 = phi ptr [ %i.hb, %.lr.ph869 ], [ %.0879, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499867 = phi ptr [ %i.ha, %.lr.ph869 ], [ %i.z, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501866 = phi i32 [ %i.hc, %.lr.ph869 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.ab = load <8 x float>, ptr %.0499867, align 1, !tbaa !41 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0499867, i64 32
  %i.ad = load <8 x float>, ptr %i.ac, align 1, !tbaa !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0499867, i64 64
  %i.af = load <8 x float>, ptr %i.ae, align 1, !tbaa !41 ; 2 uses
  %i.ag = shufflevector <8 x float> %i.ab, <8 x float> %i.ad, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ah = shufflevector <8 x float> %i.ab, <8 x float> %i.af, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ai = shufflevector <8 x float> %i.ad, <8 x float> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aj = shufflevector <8 x float> %i.ag, <8 x float> %i.ah, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ak = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.al = shufflevector <8 x float> %i.ag, <8 x float> %i.ak, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.am = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.an = shufflevector <8 x float> %i.aj, <8 x float> %i.ai, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ap = sitofp fast i32 %i.ao to float
  %i.aq = insertelement <8 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <8 x float> %i.aq, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.as = fadd fast <8 x float> %i.al, splat (float 1.000000e+00)
  %i.at = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.au = fmul fast <8 x float> %i.at, %i.as
  %i.av = fadd fast <8 x float> %i.au, splat (float -5.000000e-01) ; 2 uses
  %i.aw = load i32, ptr %i.r, align 8, !tbaa !38
  %i.ax = sitofp fast i32 %i.aw to float
  %i.ay = insertelement <8 x float> poison, float %i.ax, i64 0
  %i.az = shufflevector <8 x float> %i.ay, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ba = fmul fast <8 x float> %i.am, splat (float 5.000000e-01)
  %i.bb = fadd fast <8 x float> %i.ba, splat (float 5.000000e-01)
  %i.bc = fmul fast <8 x float> %i.bb, %i.az
  %i.bd = fadd fast <8 x float> %i.bc, splat (float -5.000000e-01) ; 2 uses
  %i.be = load i32, ptr %i.s, align 4, !tbaa !40
  %i.bf = sitofp fast i32 %i.be to float
  %i.bg = insertelement <8 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <8 x float> %i.bg, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bi = fmul fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.bj = fadd fast <8 x float> %i.bi, splat (float 5.000000e-01)
  %i.bk = fmul fast <8 x float> %i.bj, %i.bh
  %i.bl = fadd fast <8 x float> %i.bk, splat (float -5.000000e-01) ; 2 uses
  %i.bm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.av, i32 1) ; 5 uses
  %i.bn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bd, i32 1) ; 5 uses
  %i.bo = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bl, i32 1) ; 5 uses
  %i.bp = fadd fast <8 x float> %i.bm, splat (float 1.000000e+00) ; 2 uses
  %i.bq = fadd fast <8 x float> %i.bn, splat (float 1.000000e+00) ; 2 uses
  %i.br = fadd fast <8 x float> %i.bo, splat (float 1.000000e+00) ; 2 uses
  %i.bs = fcmp fast ogt <8 x float> %i.bm, splat (float -1.000000e+00)
  %i.bt = fcmp fast ogt <8 x float> %i.ar, %i.bm
  %i.bu = and <8 x i1> %i.bs, %i.bt               ; 2 uses
  %i.bv = fcmp fast ogt <8 x float> %i.bp, splat (float -1.000000e+00)
  %i.bw = fcmp fast ogt <8 x float> %i.ar, %i.bp
  %i.bx = and <8 x i1> %i.bv, %i.bw               ; 2 uses
  %i.by = fcmp fast ogt <8 x float> %i.bn, splat (float -1.000000e+00)
  %i.bz = fcmp fast ogt <8 x float> %i.az, %i.bn
  %i.ca = and <8 x i1> %i.by, %i.bz
  %i.cb = sext <8 x i1> %i.ca to <8 x i32>        ; 2 uses
  %i.cc = fcmp fast ogt <8 x float> %i.bq, splat (float -1.000000e+00)
  %i.cd = fcmp fast ogt <8 x float> %i.az, %i.bq
  %i.ce = and <8 x i1> %i.cc, %i.cd               ; 2 uses
  %i.cf = fcmp fast ogt <8 x float> %i.bo, splat (float -1.000000e+00)
  %i.cg = fcmp fast ogt <8 x float> %i.bh, %i.bo
  %i.ch = and <8 x i1> %i.cf, %i.cg               ; 3 uses
  %i.ci = sext <8 x i1> %i.ch to <8 x i32>
  %i.cj = fcmp fast ogt <8 x float> %i.br, splat (float -1.000000e+00)
  %i.ck = fcmp fast ogt <8 x float> %i.bh, %i.br
  %i.cl = and <8 x i1> %i.cj, %i.ck               ; 4 uses
  %i.cm = and <8 x i1> %i.bu, %i.ce               ; 2 uses
  %i.cn = and <8 x i1> %i.bx, %i.ce               ; 2 uses
  %i.co = bitcast <8 x i32> %i.cb to <8 x float>
  %i.cp = select <8 x i1> %i.bu, <8 x float> %i.co, <8 x float> zeroinitializer ; 2 uses
  %i.cq = select <8 x i1> %i.ch, <8 x float> %i.cp, <8 x float> zeroinitializer
  %i.cr = bitcast <8 x i32> %i.cb to <8 x float>
  %i.cs = select <8 x i1> %i.bx, <8 x float> %i.cr, <8 x float> zeroinitializer ; 2 uses
  %i.ct = select <8 x i1> %i.ch, <8 x float> %i.cs, <8 x float> zeroinitializer
  %i.cu = bitcast <8 x i32> %i.ci to <8 x float>  ; 2 uses
  %i.cv = select <8 x i1> %i.cm, <8 x float> %i.cu, <8 x float> zeroinitializer
  %i.cw = select <8 x i1> %i.cn, <8 x float> %i.cu, <8 x float> zeroinitializer
  %i.cx = select <8 x i1> %i.cl, <8 x float> %i.cp, <8 x float> zeroinitializer
  %i.cy = select <8 x i1> %i.cl, <8 x float> %i.cs, <8 x float> zeroinitializer
  %i.cz = and <8 x i1> %i.cm, %i.cl
  %i.da = and <8 x i1> %i.cn, %i.cl
  %i.db = fmul fast <8 x float> %i.az, %i.ar      ; 2 uses
  %i.dc = fmul fast <8 x float> %i.bn, %i.ar
  %i.dd = fadd fast <8 x float> %i.dc, %i.bm
  %i.de = fmul fast <8 x float> %i.db, %i.bo
  %i.df = fadd fast <8 x float> %i.dd, %i.de
  %i.dg = load i32, ptr %i.t, align 8, !tbaa !16
  %i.dh = sitofp fast i32 %i.dg to float
  %i.di = insertelement <8 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <8 x float> %i.di, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.dk = fmul fast <8 x float> %i.dj, %i.df      ; 4 uses
  %i.dl = fadd fast <8 x float> %i.dk, %i.dj
  %i.dm = fmul fast <8 x float> %i.dj, %i.ar      ; 2 uses
  %i.dn = fadd fast <8 x float> %i.dk, %i.dm      ; 2 uses
  %i.do = fadd fast <8 x float> %i.dn, %i.dj
  %i.dp = fmul fast <8 x float> %i.dj, %i.db
  %i.dq = fadd fast <8 x float> %i.dp, %i.dk      ; 3 uses
  %i.dr = fadd fast <8 x float> %i.dq, %i.dj
  %i.ds = fadd fast <8 x float> %i.dq, %i.dm      ; 2 uses
  %i.dt = fadd fast <8 x float> %i.ds, %i.dj
  %i.du = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dk, <8 x float> nofpclass(nan inf) %i.cq)
  %i.dv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dl, <8 x float> nofpclass(nan inf) %i.ct)
  %i.dw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dn, <8 x float> nofpclass(nan inf) %i.cv)
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.do, <8 x float> nofpclass(nan inf) %i.cw)
  %i.dy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dq, <8 x float> nofpclass(nan inf) %i.cx)
  %i.dz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dr, <8 x float> nofpclass(nan inf) %i.cy)
  %i.ea = select <8 x i1> %i.cz, <8 x float> %i.ds, <8 x float> splat (float -1.000000e+00)
  %i.eb = select <8 x i1> %i.da, <8 x float> %i.dt, <8 x float> splat (float -1.000000e+00)
  %i.ec = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.du) ; 3 uses
  %i.ed = bitcast <8 x i32> %i.ec to <8 x float>
  %i.ee = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dv) ; 4 uses
  %i.ef = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dw) ; 4 uses
  %i.eg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dx) ; 4 uses
  %i.eh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dy) ; 4 uses
  %i.ei = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dz) ; 4 uses
  %i.ej = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ea) ; 4 uses
  %i.ek = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 3 uses
  %i.el = bitcast <8 x i32> %i.ek to <8 x float>  ; 2 uses
  %i.em = fsub fast <8 x float> %i.av, %i.bm      ; 4 uses
  %i.en = fsub fast <8 x float> %i.bd, %i.bn      ; 4 uses
  %i.eo = fsub fast <8 x float> %i.bl, %i.bo      ; 4 uses
  %i.ep = shufflevector <8 x i32> %i.ec, <8 x i32> %i.ee, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.eq = shufflevector <8 x i32> %i.ec, <8 x i32> %i.ee, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.er = bitcast <8 x i32> %i.eq to <8 x float>  ; 2 uses
  %i.es = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.et = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.eu = shufflevector <8 x i32> %i.eh, <8 x i32> %i.ei, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ev = shufflevector <8 x i32> %i.eh, <8 x i32> %i.ei, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ew = shufflevector <8 x i32> %i.ej, <8 x i32> %i.ek, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ex = shufflevector <8 x i32> %i.ej, <8 x i32> %i.ek, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ey = bitcast <8 x i32> %i.ex to <8 x float>
  %i.ez = shufflevector <8 x float> %i.em, <8 x float> %i.en, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fa = shufflevector <8 x float> %i.em, <8 x float> %i.en, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x float> %i.eo, <8 x float> %i.ed, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fc = shufflevector <8 x float> %i.eo, <8 x float> %i.er, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fd = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fe = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ff = bitcast <8 x i32> %i.fe to <8 x float>
  %i.fg = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fh = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fi = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ej, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fj = bitcast <8 x i32> %i.fi to <8 x float>
  %i.fk = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ej, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fl = shufflevector <8 x float> %i.el, <8 x float> %i.em, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fm = shufflevector <8 x float> %i.el, <8 x float> %i.em, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fn = shufflevector <8 x float> %i.en, <8 x float> %i.eo, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fo = shufflevector <8 x float> %i.en, <8 x float> %i.eo, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fp = shufflevector <8 x i32> %i.ep, <8 x i32> %i.es, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fq = bitcast <8 x i32> %i.fp to <8 x float>
  %i.fr = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ew, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fs = bitcast <8 x i32> %i.fr to <8 x float>
  %i.ft = shufflevector <8 x float> %i.ez, <8 x float> %i.fb, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.fu = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.fv = bitcast <8 x i32> %i.fu to <8 x float>  ; 2 uses
  %i.fw = shufflevector <8 x float> %i.fj, <8 x float> %i.fl, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.fx = shufflevector <8 x float> %i.fn, <8 x float> %i.er, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.fy = shufflevector <8 x i32> %i.et, <8 x i32> %i.ev, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.fz = bitcast <8 x i32> %i.fy to <8 x float>  ; 2 uses
  %i.ga = shufflevector <8 x float> %i.ey, <8 x float> %i.fa, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gb = shufflevector <8 x float> %i.fc, <8 x float> %i.ff, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gc = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gd = bitcast <8 x i32> %i.gc to <8 x float>  ; 2 uses
  %i.ge = shufflevector <8 x float> %i.fm, <8 x float> %i.fo, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gf = shufflevector <8 x i32> %i.fp, <8 x i32> %i.fr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gg = shufflevector <8 x float> %i.ft, <8 x float> %i.fv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gh = shufflevector <8 x float> %i.fw, <8 x float> %i.fx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gi = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gj = shufflevector <8 x float> %i.gb, <8 x float> %i.gd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gk = shufflevector <8 x float> %i.ge, <8 x float> %i.fq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gl = shufflevector <8 x float> %i.fs, <8 x float> %i.ft, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gm = shufflevector <8 x float> %i.fv, <8 x float> %i.fw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gn = shufflevector <8 x float> %i.fx, <8 x float> %i.fz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.go = shufflevector <8 x float> %i.ga, <8 x float> %i.gb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gp = shufflevector <8 x float> %i.gd, <8 x float> %i.ge, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gf, ptr %.1868, align 1, !tbaa !41
  %i.gq = getelementptr inbounds nuw i8, ptr %.1868, i64 32
  store <8 x float> %i.gg, ptr %i.gq, align 1, !tbaa !41
  %i.gr = getelementptr inbounds nuw i8, ptr %.1868, i64 64
  store <8 x float> %i.gh, ptr %i.gr, align 1, !tbaa !41
  %i.gs = getelementptr inbounds nuw i8, ptr %.1868, i64 96
  store <8 x float> %i.gi, ptr %i.gs, align 1, !tbaa !41
  %i.gt = getelementptr inbounds nuw i8, ptr %.1868, i64 128
  store <8 x float> %i.gj, ptr %i.gt, align 1, !tbaa !41
  %i.gu = getelementptr inbounds nuw i8, ptr %.1868, i64 160
  store <8 x float> %i.gk, ptr %i.gu, align 1, !tbaa !41
  %i.gv = getelementptr inbounds nuw i8, ptr %.1868, i64 192
  store <8 x float> %i.gl, ptr %i.gv, align 1, !tbaa !41
  %i.gw = getelementptr inbounds nuw i8, ptr %.1868, i64 224
  store <8 x float> %i.gm, ptr %i.gw, align 1, !tbaa !41
  %i.gx = getelementptr inbounds nuw i8, ptr %.1868, i64 256
  store <8 x float> %i.gn, ptr %i.gx, align 1, !tbaa !41
  %i.gy = getelementptr inbounds nuw i8, ptr %.1868, i64 288
  store <8 x float> %i.go, ptr %i.gy, align 1, !tbaa !41
  %i.gz = getelementptr inbounds nuw i8, ptr %.1868, i64 320
  store <8 x float> %i.gp, ptr %i.gz, align 1, !tbaa !41
  %i.ha = getelementptr inbounds nuw i8, ptr %.0499867, i64 96 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.1868, i64 352 ; 2 uses
  %i.hc = add nuw nsw i32 %.0501866, 24           ; 2 uses
  %i.hd = add nuw nsw i32 %.0501866, 47
  %i.he = icmp slt i32 %i.hd, %i.h
  br i1 %i.he, label %.lr.ph869, label %.preheader, !llvm.loop !374

.lr.ph876:                                        ; preds = %.preheader, %bb.p
  %.2875 = phi ptr [ %i.ly, %bb.p ], [ %.1.lcssa, %.preheader ] ; 11 uses
  %.1500874 = phi ptr [ %i.lx, %bb.p ], [ %.0499.lcssa, %.preheader ] ; 3 uses
  %.1502873 = phi i32 [ %i.lz, %bb.p ], [ %.0501.lcssa, %.preheader ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.1500874, i64 8
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !44
  %i.hh = load i32, ptr %i.s, align 4, !tbaa !40  ; 3 uses
  %i.hi = sitofp fast i32 %i.hh to float
  %i.hj = fmul fast float %i.hg, 5.000000e-01
  %i.hk = fadd fast float %i.hj, 5.000000e-01
  %i.hl = fmul fast float %i.hk, %i.hi
  %i.hm = fadd fast float %i.hl, -5.000000e-01    ; 2 uses
  %i.hn = load <2 x float>, ptr %.1500874, align 4, !tbaa !44
  %i.ho = load <2 x i32>, ptr %i.q, align 4, !tbaa !23 ; 4 uses
  %i.hp = sitofp <2 x i32> %i.ho to <2 x float>
  %i.hq = fmul fast <2 x float> %i.hn, splat (float 5.000000e-01)
  %i.hr = fadd fast <2 x float> %i.hq, splat (float 5.000000e-01)
  %i.hs = fmul fast <2 x float> %i.hr, %i.hp
  %i.ht = fadd fast <2 x float> %i.hs, splat (float -5.000000e-01) ; 2 uses
  %i.hu = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ht)
  %i.hv = fptosi <2 x float> %i.hu to <2 x i32>   ; 5 uses
  %i.hw = tail call fast float @llvm.floor.f32(float %i.hm)
  %i.hx = fptosi float %i.hw to i32               ; 9 uses
  %i.hy = extractelement <2 x i32> %i.hv, i64 0   ; 6 uses
  %i.hz = add nsw i32 %i.hy, 1                    ; 5 uses
  %i.ia = extractelement <2 x i32> %i.hv, i64 1   ; 6 uses
  %i.ib = add nsw i32 %i.ia, 1                    ; 5 uses
  %i.ic = add nsw i32 %i.hx, 1                    ; 5 uses
  %i.id = icmp sgt <2 x i32> %i.hv, splat (i32 -1)
  %i.ie = icmp sgt <2 x i32> %i.ho, %i.hv
  %i.if = and <2 x i1> %i.id, %i.ie               ; 2 uses
  %i.ig = icmp sgt i32 %i.hx, -1
  %i.ih = icmp sgt i32 %i.hh, %i.hx
  %i.ii = and i1 %i.ig, %i.ih                     ; 4 uses
  %i.ij = icmp sgt i32 %i.hy, -2
  %i.ik = extractelement <2 x i32> %i.ho, i64 0   ; 2 uses
  %i.il = icmp slt i32 %i.hz, %i.ik
  %i.im = and i1 %i.ij, %i.il                     ; 2 uses
  %i.in = icmp sgt i32 %i.ia, -2
  %i.io = extractelement <2 x i32> %i.ho, i64 1   ; 2 uses
  %i.ip = icmp slt i32 %i.ib, %i.io
  %i.iq = and i1 %i.in, %i.ip                     ; 2 uses
  %i.ir = icmp sgt i32 %i.hx, -2
  %i.is = icmp slt i32 %i.ic, %i.hh
  %i.it = and i1 %i.ir, %i.is                     ; 4 uses
  %i.iu = extractelement <2 x i1> %i.if, i64 0    ; 2 uses
  %i.iv = extractelement <2 x i1> %i.if, i64 1    ; 2 uses
  %i.iw = and i1 %i.iu, %i.iv                     ; 2 uses
  %i.ix = and i1 %i.im, %i.iv                     ; 2 uses
  %i.iy = and i1 %i.iu, %i.iq                     ; 2 uses
  %i.iz = and i1 %i.im, %i.iq                     ; 2 uses
  %i.ja = and i1 %i.iw, %i.ii
  %i.jb = and i1 %i.ix, %i.ii
  %i.jc = and i1 %i.ii, %i.iy
  %i.jd = and i1 %i.ii, %i.iz
  %i.je = and i1 %i.iw, %i.it
  %i.jf = and i1 %i.ix, %i.it
  %i.jg = and i1 %i.iy, %i.it
  %i.jh = and i1 %i.iz, %i.it
  %i.ji = getelementptr inbounds nuw i8, ptr %.2875, i64 32
  br i1 %i.ja, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph876
  %i.jj = mul i32 %i.io, %i.hx
  %reass.add832 = add i32 %i.jj, %i.ia
  %reass.mul833 = mul i32 %reass.add832, %i.ik
  %i.jk = add i32 %reass.mul833, %i.hy
  %i.jl = load i32, ptr %i.t, align 8, !tbaa !16
  %i.jm = mul nsw i32 %i.jl, %i.jk
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph876, %bb.a
  %i.jn = phi i32 [ %i.jm, %bb.a ], [ -1, %.lr.ph876 ]
  store i32 %i.jn, ptr %.2875, align 4, !tbaa !23
  br i1 %i.jb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.jo = load i32, ptr %i.q, align 4, !tbaa !37
  %i.jp = load i32, ptr %i.r, align 8, !tbaa !38
  %i.jq = mul i32 %i.jp, %i.hx
  %reass.add834 = add i32 %i.jq, %i.ia
  %reass.mul835 = mul i32 %reass.add834, %i.jo
  %i.jr = add i32 %reass.mul835, %i.hz
  %i.js = load i32, ptr %i.t, align 8, !tbaa !16
end_hunk_0
begin_hunk_1_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %reass.add840 = add i32 %i.ko, %i.ia
  %reass.mul841 = mul i32 %reass.add840, %i.km
  %i.kp = add i32 %reass.mul841, %i.hy
  %i.kq = load i32, ptr %i.t, align 8, !tbaa !16
  %i.kr = mul nsw i32 %i.kp, %i.kq
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ks = phi i32 [ %i.kr, %bb.i ], [ -1, %bb.h ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.2875, i64 16
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !23
  br i1 %i.jf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ku = load i32, ptr %i.q, align 4, !tbaa !37
  %i.kv = load i32, ptr %i.r, align 8, !tbaa !38
  %i.kw = mul i32 %i.kv, %i.ic
  %reass.add842 = add i32 %i.kw, %i.ia
  %reass.mul843 = mul i32 %reass.add842, %i.ku
  %i.kx = add i32 %reass.mul843, %i.hz
  %i.ky = load i32, ptr %i.t, align 8, !tbaa !16
  %i.kz = mul nsw i32 %i.kx, %i.ky
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.la = phi i32 [ %i.kz, %bb.k ], [ -1, %bb.j ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.2875, i64 20
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !23
  br i1 %i.jg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lc = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ld = load i32, ptr %i.r, align 8, !tbaa !38
  %i.le = mul i32 %i.ld, %i.ic
  %reass.add844 = add i32 %i.le, %i.ib
  %reass.mul845 = mul i32 %reass.add844, %i.lc
  %i.lf = add i32 %reass.mul845, %i.hy
  %i.lg = load i32, ptr %i.t, align 8, !tbaa !16
  %i.lh = mul nsw i32 %i.lf, %i.lg
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.li = phi i32 [ %i.lh, %bb.m ], [ -1, %bb.l ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.2875, i64 24
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !23
  br i1 %i.jh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.lk = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ll = load i32, ptr %i.r, align 8, !tbaa !38
  %i.lm = mul i32 %i.ll, %i.ic
  %reass.add846 = add i32 %i.lm, %i.ib
  %reass.mul847 = mul i32 %reass.add846, %i.lk
  %i.ln = add i32 %reass.mul847, %i.hz
  %i.lo = load i32, ptr %i.t, align 8, !tbaa !16
  %i.lp = mul nsw i32 %i.ln, %i.lo
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.lq = phi i32 [ %i.lp, %bb.o ], [ -1, %bb.n ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.2875, i64 28
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !23
  %i.ls = sitofp <2 x i32> %i.hv to <2 x float>
  %i.lt = fsub fast <2 x float> %i.ht, %i.ls
  store <2 x float> %i.lt, ptr %i.ji, align 4, !tbaa !44
  %i.lu = sitofp fast i32 %i.hx to float
  %i.lv = fsub fast float %i.hm, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %.2875, i64 40
  store float %i.lv, ptr %i.lw, align 4, !tbaa !44
  %i.lx = getelementptr inbounds nuw i8, ptr %.1500874, i64 12
  %i.ly = getelementptr inbounds nuw i8, ptr %.2875, i64 44 ; 2 uses
  %i.lz = add nuw nsw i32 %.1502873, 3            ; 2 uses
  %i.ma = icmp slt i32 %i.lz, %i.h
  br i1 %i.ma, label %.lr.ph876, label %._crit_edge, !llvm.loop !375

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.ly, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mb = load i32, ptr %i.k, align 8, !tbaa !17
  %i.mc = sext i32 %i.mb to i64
  %i.md = icmp slt i64 %indvars.iv.next, %i.mc
  br i1 %i.md, label %_ZN4ncnn3MatD2Ev.exit517, label %.loopexit, !llvm.loop !376

_ZN4ncnn3MatD2Ev.exit516:                         ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.me = load ptr, ptr %1, align 8, !tbaa !20, !noalias !385 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !19, !noalias !386 ; 2 uses
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !18, !noalias !386 ; 2 uses
  %i.mj = mul i64 %i.mi, %i.mh
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mj ; 2 uses
  %i.ml = shl i64 %i.mh, 1
  %i.mm = mul i64 %i.ml, %i.mi
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mm ; 2 uses
  %i.mo = icmp sgt i32 %i.h, 7
  br i1 %i.mo, label %.lr.ph, label %.preheader849

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit516
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

.preheader849.loopexit:                           ; preds = %bb.q
  %i.mt = and i32 %i.h, 2147483640
  br label %.preheader849

.preheader849:                                    ; preds = %.preheader849.loopexit, %_ZN4ncnn3MatD2Ev.exit516
  %.0509.lcssa = phi ptr [ %i.me, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.to, %.preheader849.loopexit ]
  %.0507.lcssa = phi ptr [ %i.mk, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.tp, %.preheader849.loopexit ]
  %.0505.lcssa = phi ptr [ %i.mn, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.tq, %.preheader849.loopexit ]
  %.0503.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.mt, %.preheader849.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.tr, %.preheader849.loopexit ]
  %i.mu = icmp slt i32 %.0503.lcssa, %i.h
  br i1 %i.mu, label %.lr.ph865, label %.loopexit

.lr.ph865:                                        ; preds = %.preheader849
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.3855 = phi ptr [ %i.i, %.lr.ph ], [ %i.tr, %bb.q ] ; 12 uses
  %.0503854 = phi i32 [ 0, %.lr.ph ], [ %i.ts, %bb.q ]
  %.0505853 = phi ptr [ %i.mn, %.lr.ph ], [ %i.tq, %bb.q ] ; 2 uses
  %.0507852 = phi ptr [ %i.mk, %.lr.ph ], [ %i.tp, %bb.q ] ; 2 uses
  %.0509851 = phi ptr [ %i.me, %.lr.ph ], [ %i.to, %bb.q ] ; 2 uses
  %i.mz = load <8 x float>, ptr %.0509851, align 1, !tbaa !41
  %i.na = load <8 x float>, ptr %.0507852, align 1, !tbaa !41
  %i.nb = load <8 x float>, ptr %.0505853, align 1, !tbaa !41
  %i.nc = load i32, ptr %i.mp, align 4, !tbaa !37
  %i.nd = sitofp fast i32 %i.nc to float
  %i.ne = insertelement <8 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <8 x float> %i.ne, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.ng = fmul fast <8 x float> %i.mz, splat (float 5.000000e-01)
  %i.nh = fadd fast <8 x float> %i.ng, splat (float 5.000000e-01)
  %i.ni = fmul fast <8 x float> %i.nh, %i.nf
  %i.nj = fadd fast <8 x float> %i.ni, splat (float -5.000000e-01) ; 2 uses
  %i.nk = load i32, ptr %i.mq, align 8, !tbaa !38
  %i.nl = sitofp fast i32 %i.nk to float
  %i.nm = insertelement <8 x float> poison, float %i.nl, i64 0
  %i.nn = shufflevector <8 x float> %i.nm, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.no = fmul fast <8 x float> %i.na, splat (float 5.000000e-01)
  %i.np = fadd fast <8 x float> %i.no, splat (float 5.000000e-01)
  %i.nq = fmul fast <8 x float> %i.np, %i.nn
  %i.nr = fadd fast <8 x float> %i.nq, splat (float -5.000000e-01) ; 2 uses
  %i.ns = load i32, ptr %i.mr, align 4, !tbaa !40
  %i.nt = sitofp fast i32 %i.ns to float
  %i.nu = insertelement <8 x float> poison, float %i.nt, i64 0
  %i.nv = shufflevector <8 x float> %i.nu, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.nw = fmul fast <8 x float> %i.nb, splat (float 5.000000e-01)
  %i.nx = fadd fast <8 x float> %i.nw, splat (float 5.000000e-01)
  %i.ny = fmul fast <8 x float> %i.nx, %i.nv
  %i.nz = fadd fast <8 x float> %i.ny, splat (float -5.000000e-01) ; 2 uses
  %i.oa = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nj, i32 1) ; 5 uses
  %i.ob = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nr, i32 1) ; 5 uses
  %i.oc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nz, i32 1) ; 5 uses
  %i.od = fadd fast <8 x float> %i.oa, splat (float 1.000000e+00) ; 2 uses
  %i.oe = fadd fast <8 x float> %i.ob, splat (float 1.000000e+00) ; 2 uses
  %i.of = fadd fast <8 x float> %i.oc, splat (float 1.000000e+00) ; 2 uses
  %i.og = fcmp fast ogt <8 x float> %i.oa, splat (float -1.000000e+00)
  %i.oh = fcmp fast ogt <8 x float> %i.nf, %i.oa
  %i.oi = and <8 x i1> %i.og, %i.oh               ; 2 uses
  %i.oj = fcmp fast ogt <8 x float> %i.od, splat (float -1.000000e+00)
  %i.ok = fcmp fast ogt <8 x float> %i.nf, %i.od
  %i.ol = and <8 x i1> %i.oj, %i.ok               ; 2 uses
  %i.om = fcmp fast ogt <8 x float> %i.ob, splat (float -1.000000e+00)
  %i.on = fcmp fast ogt <8 x float> %i.nn, %i.ob
  %i.oo = and <8 x i1> %i.om, %i.on
  %i.op = sext <8 x i1> %i.oo to <8 x i32>        ; 2 uses
  %i.oq = fcmp fast ogt <8 x float> %i.oe, splat (float -1.000000e+00)
  %i.or = fcmp fast ogt <8 x float> %i.nn, %i.oe
  %i.os = and <8 x i1> %i.oq, %i.or               ; 2 uses
  %i.ot = fcmp fast ogt <8 x float> %i.oc, splat (float -1.000000e+00)
  %i.ou = fcmp fast ogt <8 x float> %i.nv, %i.oc
  %i.ov = and <8 x i1> %i.ot, %i.ou               ; 3 uses
  %i.ow = sext <8 x i1> %i.ov to <8 x i32>
  %i.ox = fcmp fast ogt <8 x float> %i.of, splat (float -1.000000e+00)
  %i.oy = fcmp fast ogt <8 x float> %i.nv, %i.of
  %i.oz = and <8 x i1> %i.ox, %i.oy               ; 4 uses
  %i.pa = and <8 x i1> %i.oi, %i.os               ; 2 uses
  %i.pb = and <8 x i1> %i.ol, %i.os               ; 2 uses
  %i.pc = bitcast <8 x i32> %i.op to <8 x float>
  %i.pd = select <8 x i1> %i.oi, <8 x float> %i.pc, <8 x float> zeroinitializer ; 2 uses
  %i.pe = select <8 x i1> %i.ov, <8 x float> %i.pd, <8 x float> zeroinitializer
  %i.pf = bitcast <8 x i32> %i.op to <8 x float>
  %i.pg = select <8 x i1> %i.ol, <8 x float> %i.pf, <8 x float> zeroinitializer ; 2 uses
  %i.ph = select <8 x i1> %i.ov, <8 x float> %i.pg, <8 x float> zeroinitializer
  %i.pi = bitcast <8 x i32> %i.ow to <8 x float>  ; 2 uses
  %i.pj = select <8 x i1> %i.pa, <8 x float> %i.pi, <8 x float> zeroinitializer
  %i.pk = select <8 x i1> %i.pb, <8 x float> %i.pi, <8 x float> zeroinitializer
  %i.pl = select <8 x i1> %i.oz, <8 x float> %i.pd, <8 x float> zeroinitializer
  %i.pm = select <8 x i1> %i.oz, <8 x float> %i.pg, <8 x float> zeroinitializer
  %i.pn = and <8 x i1> %i.pa, %i.oz
  %i.po = and <8 x i1> %i.pb, %i.oz
  %i.pp = fmul fast <8 x float> %i.nn, %i.nf      ; 2 uses
  %i.pq = fmul fast <8 x float> %i.ob, %i.nf
  %i.pr = fadd fast <8 x float> %i.pq, %i.oa
  %i.ps = fmul fast <8 x float> %i.pp, %i.oc
  %i.pt = fadd fast <8 x float> %i.pr, %i.ps
  %i.pu = load i32, ptr %i.ms, align 8, !tbaa !16
  %i.pv = sitofp fast i32 %i.pu to float
  %i.pw = insertelement <8 x float> poison, float %i.pv, i64 0
  %i.px = shufflevector <8 x float> %i.pw, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.py = fmul fast <8 x float> %i.px, %i.pt      ; 4 uses
  %i.pz = fadd fast <8 x float> %i.py, %i.px
  %i.qa = fmul fast <8 x float> %i.px, %i.nf      ; 2 uses
  %i.qb = fadd fast <8 x float> %i.py, %i.qa      ; 2 uses
  %i.qc = fadd fast <8 x float> %i.qb, %i.px
  %i.qd = fmul fast <8 x float> %i.px, %i.pp
  %i.qe = fadd fast <8 x float> %i.qd, %i.py      ; 3 uses
  %i.qf = fadd fast <8 x float> %i.qe, %i.px
  %i.qg = fadd fast <8 x float> %i.qe, %i.qa      ; 2 uses
  %i.qh = fadd fast <8 x float> %i.qg, %i.px
  %i.qi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.py, <8 x float> nofpclass(nan inf) %i.pe)
  %i.qj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.pz, <8 x float> nofpclass(nan inf) %i.ph)
  %i.qk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qb, <8 x float> nofpclass(nan inf) %i.pj)
  %i.ql = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qc, <8 x float> nofpclass(nan inf) %i.pk)
  %i.qm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qe, <8 x float> nofpclass(nan inf) %i.pl)
  %i.qn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qf, <8 x float> nofpclass(nan inf) %i.pm)
  %i.qo = select <8 x i1> %i.pn, <8 x float> %i.qg, <8 x float> splat (float -1.000000e+00)
  %i.qp = select <8 x i1> %i.po, <8 x float> %i.qh, <8 x float> splat (float -1.000000e+00)
  %i.qq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qi) ; 3 uses
  %i.qr = bitcast <8 x i32> %i.qq to <8 x float>
  %i.qs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qj) ; 4 uses
  %i.qt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qk) ; 4 uses
  %i.qu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ql) ; 4 uses
  %i.qv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qm) ; 4 uses
  %i.qw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qn) ; 4 uses
  %i.qx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qo) ; 4 uses
  %i.qy = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qp) ; 3 uses
  %i.qz = bitcast <8 x i32> %i.qy to <8 x float>  ; 2 uses
  %i.ra = fsub fast <8 x float> %i.nj, %i.oa      ; 4 uses
  %i.rb = fsub fast <8 x float> %i.nr, %i.ob      ; 4 uses
  %i.rc = fsub fast <8 x float> %i.nz, %i.oc      ; 4 uses
  %i.rd = shufflevector <8 x i32> %i.qq, <8 x i32> %i.qs, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.re = shufflevector <8 x i32> %i.qq, <8 x i32> %i.qs, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.rf = bitcast <8 x i32> %i.re to <8 x float>  ; 2 uses
  %i.rg = shufflevector <8 x i32> %i.qt, <8 x i32> %i.qu, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rh = shufflevector <8 x i32> %i.qt, <8 x i32> %i.qu, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ri = shufflevector <8 x i32> %i.qv, <8 x i32> %i.qw, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rj = shufflevector <8 x i32> %i.qv, <8 x i32> %i.qw, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rk = shufflevector <8 x i32> %i.qx, <8 x i32> %i.qy, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rl = shufflevector <8 x i32> %i.qx, <8 x i32> %i.qy, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rm = bitcast <8 x i32> %i.rl to <8 x float>
  %i.rn = shufflevector <8 x float> %i.ra, <8 x float> %i.rb, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ro = shufflevector <8 x float> %i.ra, <8 x float> %i.rb, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rp = shufflevector <8 x float> %i.rc, <8 x float> %i.qr, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.rq = shufflevector <8 x float> %i.rc, <8 x float> %i.rf, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.rr = shufflevector <8 x i32> %i.qs, <8 x i32> %i.qt, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.rs = shufflevector <8 x i32> %i.qs, <8 x i32> %i.qt, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.rt = bitcast <8 x i32> %i.rs to <8 x float>
  %i.ru = shufflevector <8 x i32> %i.qu, <8 x i32> %i.qv, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.rv = shufflevector <8 x i32> %i.qu, <8 x i32> %i.qv, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.rw = shufflevector <8 x i32> %i.qw, <8 x i32> %i.qx, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.rx = bitcast <8 x i32> %i.rw to <8 x float>
  %i.ry = shufflevector <8 x i32> %i.qw, <8 x i32> %i.qx, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.rz = shufflevector <8 x float> %i.qz, <8 x float> %i.ra, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sa = shufflevector <8 x float> %i.qz, <8 x float> %i.ra, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sb = shufflevector <8 x float> %i.rb, <8 x float> %i.rc, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sc = shufflevector <8 x float> %i.rb, <8 x float> %i.rc, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sd = shufflevector <8 x i32> %i.rd, <8 x i32> %i.rg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.se = bitcast <8 x i32> %i.sd to <8 x float>
  %i.sf = shufflevector <8 x i32> %i.ri, <8 x i32> %i.rk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.sg = bitcast <8 x i32> %i.sf to <8 x float>
  %i.sh = shufflevector <8 x float> %i.rn, <8 x float> %i.rp, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.si = shufflevector <8 x i32> %i.rr, <8 x i32> %i.ru, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.sj = bitcast <8 x i32> %i.si to <8 x float>  ; 2 uses
  %i.sk = shufflevector <8 x float> %i.rx, <8 x float> %i.rz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.sl = shufflevector <8 x float> %i.sb, <8 x float> %i.rf, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.sm = shufflevector <8 x i32> %i.rh, <8 x i32> %i.rj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.sn = bitcast <8 x i32> %i.sm to <8 x float>  ; 2 uses
  %i.so = shufflevector <8 x float> %i.rm, <8 x float> %i.ro, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.sp = shufflevector <8 x float> %i.rq, <8 x float> %i.rt, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.sq = shufflevector <8 x i32> %i.rv, <8 x i32> %i.ry, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.sr = bitcast <8 x i32> %i.sq to <8 x float>  ; 2 uses
  %i.ss = shufflevector <8 x float> %i.sa, <8 x float> %i.sc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.st = shufflevector <8 x i32> %i.sd, <8 x i32> %i.sf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.su = shufflevector <8 x float> %i.sh, <8 x float> %i.sj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sv = shufflevector <8 x float> %i.sk, <8 x float> %i.sl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sw = shufflevector <8 x float> %i.sn, <8 x float> %i.so, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sx = shufflevector <8 x float> %i.sp, <8 x float> %i.sr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sy = shufflevector <8 x float> %i.ss, <8 x float> %i.se, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.sz = shufflevector <8 x float> %i.sg, <8 x float> %i.sh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ta = shufflevector <8 x float> %i.sj, <8 x float> %i.sk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tb = shufflevector <8 x float> %i.sl, <8 x float> %i.sn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tc = shufflevector <8 x float> %i.so, <8 x float> %i.sp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.td = shufflevector <8 x float> %i.sr, <8 x float> %i.ss, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.st, ptr %.3855, align 1, !tbaa !41
  %i.te = getelementptr inbounds nuw i8, ptr %.3855, i64 32
  store <8 x float> %i.su, ptr %i.te, align 1, !tbaa !41
  %i.tf = getelementptr inbounds nuw i8, ptr %.3855, i64 64
  store <8 x float> %i.sv, ptr %i.tf, align 1, !tbaa !41
  %i.tg = getelementptr inbounds nuw i8, ptr %.3855, i64 96
  store <8 x float> %i.sw, ptr %i.tg, align 1, !tbaa !41
  %i.th = getelementptr inbounds nuw i8, ptr %.3855, i64 128
  store <8 x float> %i.sx, ptr %i.th, align 1, !tbaa !41
  %i.ti = getelementptr inbounds nuw i8, ptr %.3855, i64 160
  store <8 x float> %i.sy, ptr %i.ti, align 1, !tbaa !41
  %i.tj = getelementptr inbounds nuw i8, ptr %.3855, i64 192
  store <8 x float> %i.sz, ptr %i.tj, align 1, !tbaa !41
  %i.tk = getelementptr inbounds nuw i8, ptr %.3855, i64 224
  store <8 x float> %i.ta, ptr %i.tk, align 1, !tbaa !41
  %i.tl = getelementptr inbounds nuw i8, ptr %.3855, i64 256
  store <8 x float> %i.tb, ptr %i.tl, align 1, !tbaa !41
  %i.tm = getelementptr inbounds nuw i8, ptr %.3855, i64 288
  store <8 x float> %i.tc, ptr %i.tm, align 1, !tbaa !41
  %i.tn = getelementptr inbounds nuw i8, ptr %.3855, i64 320
  store <8 x float> %i.td, ptr %i.tn, align 1, !tbaa !41
  %i.to = getelementptr inbounds nuw i8, ptr %.0509851, i64 32 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.0507852, i64 32 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0505853, i64 32 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.3855, i64 352 ; 2 uses
  %i.ts = add nuw nsw i32 %.0503854, 8            ; 2 uses
  %i.tt = or disjoint i32 %i.ts, 7
  %i.tu = icmp slt i32 %i.tt, %i.h
  br i1 %i.tu, label %bb.q, label %.preheader849.loopexit, !llvm.loop !381

bb.r:                                             ; preds = %.lr.ph865, %bb.ah
  %.4864 = phi ptr [ %.3.lcssa, %.lr.ph865 ], [ %i.ys, %bb.ah ] ; 11 uses
  %.1504863 = phi i32 [ %.0503.lcssa, %.lr.ph865 ], [ %i.yt, %bb.ah ]
  %.1506862 = phi ptr [ %.0505.lcssa, %.lr.ph865 ], [ %i.yr, %bb.ah ] ; 2 uses
  %.1508861 = phi ptr [ %.0507.lcssa, %.lr.ph865 ], [ %i.yq, %bb.ah ] ; 2 uses
  %.1510860 = phi ptr [ %.0509.lcssa, %.lr.ph865 ], [ %i.yp, %bb.ah ] ; 2 uses
  %i.tv = load float, ptr %.1510860, align 4, !tbaa !44
  %i.tw = load float, ptr %.1508861, align 4, !tbaa !44
  %i.tx = load float, ptr %.1506862, align 4, !tbaa !44
  %i.ty = load i32, ptr %i.mx, align 4, !tbaa !40 ; 3 uses
  %i.tz = sitofp fast i32 %i.ty to float
  %i.ua = fmul fast float %i.tx, 5.000000e-01
  %i.ub = fadd fast float %i.ua, 5.000000e-01
  %i.uc = fmul fast float %i.ub, %i.tz
  %i.ud = fadd fast float %i.uc, -5.000000e-01    ; 2 uses
  %i.ue = load <2 x i32>, ptr %i.mv, align 4, !tbaa !23 ; 4 uses
  %i.uf = sitofp <2 x i32> %i.ue to <2 x float>
  %i.ug = insertelement <2 x float> poison, float %i.tv, i64 0
  %i.uh = insertelement <2 x float> %i.ug, float %i.tw, i64 1
  %i.ui = fmul fast <2 x float> %i.uh, splat (float 5.000000e-01)
  %i.uj = fadd fast <2 x float> %i.ui, splat (float 5.000000e-01)
  %i.uk = fmul fast <2 x float> %i.uj, %i.uf
  %i.ul = fadd fast <2 x float> %i.uk, splat (float -5.000000e-01) ; 2 uses
  %i.um = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ul)
  %i.un = fptosi <2 x float> %i.um to <2 x i32>   ; 5 uses
  %i.uo = tail call fast float @llvm.floor.f32(float %i.ud)
  %i.up = fptosi float %i.uo to i32               ; 9 uses
  %i.uq = extractelement <2 x i32> %i.un, i64 0   ; 6 uses
  %i.ur = add nsw i32 %i.uq, 1                    ; 5 uses
  %i.us = extractelement <2 x i32> %i.un, i64 1   ; 6 uses
  %i.ut = add nsw i32 %i.us, 1                    ; 5 uses
  %i.uu = add nsw i32 %i.up, 1                    ; 5 uses
  %i.uv = icmp sgt <2 x i32> %i.un, splat (i32 -1)
  %i.uw = icmp sgt <2 x i32> %i.ue, %i.un
  %i.ux = and <2 x i1> %i.uv, %i.uw               ; 2 uses
  %i.uy = icmp sgt i32 %i.up, -1
  %i.uz = icmp sgt i32 %i.ty, %i.up
  %i.va = and i1 %i.uy, %i.uz                     ; 4 uses
  %i.vb = icmp sgt i32 %i.uq, -2
  %i.vc = extractelement <2 x i32> %i.ue, i64 0   ; 2 uses
  %i.vd = icmp slt i32 %i.ur, %i.vc
  %i.ve = and i1 %i.vb, %i.vd                     ; 2 uses
  %i.vf = icmp sgt i32 %i.us, -2
  %i.vg = extractelement <2 x i32> %i.ue, i64 1   ; 2 uses
  %i.vh = icmp slt i32 %i.ut, %i.vg
  %i.vi = and i1 %i.vf, %i.vh                     ; 2 uses
  %i.vj = icmp sgt i32 %i.up, -2
  %i.vk = icmp slt i32 %i.uu, %i.ty
  %i.vl = and i1 %i.vj, %i.vk                     ; 4 uses
  %i.vm = extractelement <2 x i1> %i.ux, i64 0    ; 2 uses
  %i.vn = extractelement <2 x i1> %i.ux, i64 1    ; 2 uses
  %i.vo = and i1 %i.vm, %i.vn                     ; 2 uses
  %i.vp = and i1 %i.ve, %i.vn                     ; 2 uses
  %i.vq = and i1 %i.vm, %i.vi                     ; 2 uses
  %i.vr = and i1 %i.ve, %i.vi                     ; 2 uses
  %i.vs = and i1 %i.vo, %i.va
  %i.vt = and i1 %i.vp, %i.va
  %i.vu = and i1 %i.va, %i.vq
  %i.vv = and i1 %i.va, %i.vr
  %i.vw = and i1 %i.vo, %i.vl
  %i.vx = and i1 %i.vp, %i.vl
  %i.vy = and i1 %i.vq, %i.vl
  %i.vz = and i1 %i.vr, %i.vl
  %i.wa = getelementptr inbounds nuw i8, ptr %.4864, i64 32
  br i1 %i.vs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.wb = mul i32 %i.vg, %i.up
  %reass.add = add i32 %i.wb, %i.us
  %reass.mul = mul i32 %reass.add, %i.vc
  %i.wc = add i32 %reass.mul, %i.uq
  %i.wd = load i32, ptr %i.my, align 8, !tbaa !16
  %i.we = mul nsw i32 %i.wd, %i.wc
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.wf = phi i32 [ %i.we, %bb.s ], [ -1, %bb.r ]
  store i32 %i.wf, ptr %.4864, align 4, !tbaa !23
  br i1 %i.vt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.wg = load i32, ptr %i.mv, align 4, !tbaa !37
end_hunk_1
begin_hunk_2_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.xm = load i32, ptr %i.mv, align 4, !tbaa !37
  %i.xn = load i32, ptr %i.mw, align 8, !tbaa !38
  %i.xo = mul i32 %i.xn, %i.uu
  %reass.add826 = add i32 %i.xo, %i.us
  %reass.mul827 = mul i32 %reass.add826, %i.xm
  %i.xp = add i32 %reass.mul827, %i.ur
  %i.xq = load i32, ptr %i.my, align 8, !tbaa !16
  %i.xr = mul nsw i32 %i.xp, %i.xq
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.xs = phi i32 [ %i.xr, %bb.ac ], [ -1, %bb.ab ]
  %i.xt = getelementptr inbounds nuw i8, ptr %.4864, i64 20
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !23
  br i1 %i.vy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.xu = load i32, ptr %i.mv, align 4, !tbaa !37
  %i.xv = load i32, ptr %i.mw, align 8, !tbaa !38
  %i.xw = mul i32 %i.xv, %i.uu
  %reass.add828 = add i32 %i.xw, %i.ut
  %reass.mul829 = mul i32 %reass.add828, %i.xu
  %i.xx = add i32 %reass.mul829, %i.uq
  %i.xy = load i32, ptr %i.my, align 8, !tbaa !16
  %i.xz = mul nsw i32 %i.xx, %i.xy
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ya = phi i32 [ %i.xz, %bb.ae ], [ -1, %bb.ad ]
  %i.yb = getelementptr inbounds nuw i8, ptr %.4864, i64 24
  store i32 %i.ya, ptr %i.yb, align 4, !tbaa !23
  br i1 %i.vz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.yc = load i32, ptr %i.mv, align 4, !tbaa !37
  %i.yd = load i32, ptr %i.mw, align 8, !tbaa !38
  %i.ye = mul i32 %i.yd, %i.uu
  %reass.add830 = add i32 %i.ye, %i.ut
  %reass.mul831 = mul i32 %reass.add830, %i.yc
  %i.yf = add i32 %reass.mul831, %i.ur
  %i.yg = load i32, ptr %i.my, align 8, !tbaa !16
  %i.yh = mul nsw i32 %i.yf, %i.yg
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.yi = phi i32 [ %i.yh, %bb.ag ], [ -1, %bb.af ]
  %i.yj = getelementptr inbounds nuw i8, ptr %.4864, i64 28
  store i32 %i.yi, ptr %i.yj, align 4, !tbaa !23
  %i.yk = sitofp <2 x i32> %i.un to <2 x float>
  %i.yl = fsub fast <2 x float> %i.ul, %i.yk
  store <2 x float> %i.yl, ptr %i.wa, align 4, !tbaa !44
  %i.ym = sitofp fast i32 %i.up to float
  %i.yn = fsub fast float %i.ud, %i.ym
  %i.yo = getelementptr inbounds nuw i8, ptr %.4864, i64 40
  store float %i.yn, ptr %i.yo, align 4, !tbaa !44
  %i.yp = getelementptr inbounds nuw i8, ptr %.1510860, i64 4
  %i.yq = getelementptr inbounds nuw i8, ptr %.1508861, i64 4
  %i.yr = getelementptr inbounds nuw i8, ptr %.1506862, i64 4
  %i.ys = getelementptr inbounds nuw i8, ptr %.4864, i64 44
  %i.yt = add nuw nsw i32 %.1504863, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.yt, %i.h
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !382

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader849, %.preheader848
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = mul i32 %i.e, %i.g                       ; 9 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !20, !noalias !400 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader848, label %_ZN4ncnn3MatD2Ev.exit516

.preheader848:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !17
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader848
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %i.h, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0879 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !20, !noalias !401
  %i.v = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !401
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !401
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 2 uses
  br i1 %i.p, label %.lr.ph869, label %.preheader

.preheader:                                       ; preds = %.lr.ph869, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hc, %.lr.ph869 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.z, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.ha, %.lr.ph869 ]
  %.1.lcssa = phi ptr [ %.0879, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hb, %.lr.ph869 ] ; 2 uses
  %i.aa = icmp slt i32 %.0501.lcssa, %i.h
  br i1 %i.aa, label %.lr.ph876, label %._crit_edge

.lr.ph869:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph869
  %.1868 = phi ptr [ %i.hb, %.lr.ph869 ], [ %.0879, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499867 = phi ptr [ %i.ha, %.lr.ph869 ], [ %i.z, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501866 = phi i32 [ %i.hc, %.lr.ph869 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.ab = load <8 x float>, ptr %.0499867, align 1, !tbaa !41 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0499867, i64 32
  %i.ad = load <8 x float>, ptr %i.ac, align 1, !tbaa !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0499867, i64 64
  %i.af = load <8 x float>, ptr %i.ae, align 1, !tbaa !41 ; 2 uses
  %i.ag = shufflevector <8 x float> %i.ab, <8 x float> %i.ad, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ah = shufflevector <8 x float> %i.ab, <8 x float> %i.af, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ai = shufflevector <8 x float> %i.ad, <8 x float> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aj = shufflevector <8 x float> %i.ag, <8 x float> %i.ah, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ak = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.al = shufflevector <8 x float> %i.ag, <8 x float> %i.ak, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.am = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.an = shufflevector <8 x float> %i.aj, <8 x float> %i.ai, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ap = sitofp fast i32 %i.ao to float
  %i.aq = insertelement <8 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <8 x float> %i.aq, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.as = fmul fast <8 x float> %i.al, splat (float 5.000000e-01)
  %i.at = fadd fast <8 x float> %i.as, splat (float 5.000000e-01)
  %i.au = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.av = fmul fast <8 x float> %i.at, %i.au      ; 2 uses
  %i.aw = load i32, ptr %i.r, align 8, !tbaa !38
  %i.ax = sitofp fast i32 %i.aw to float
  %i.ay = insertelement <8 x float> poison, float %i.ax, i64 0
  %i.az = shufflevector <8 x float> %i.ay, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ba = fmul fast <8 x float> %i.am, splat (float 5.000000e-01)
  %i.bb = fadd fast <8 x float> %i.ba, splat (float 5.000000e-01)
  %i.bc = fadd fast <8 x float> %i.az, splat (float -1.000000e+00)
  %i.bd = fmul fast <8 x float> %i.bc, %i.bb      ; 2 uses
  %i.be = load i32, ptr %i.s, align 4, !tbaa !40
  %i.bf = sitofp fast i32 %i.be to float
  %i.bg = insertelement <8 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <8 x float> %i.bg, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bi = fmul fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.bj = fadd fast <8 x float> %i.bi, splat (float 5.000000e-01)
  %i.bk = fadd fast <8 x float> %i.bh, splat (float -1.000000e+00)
  %i.bl = fmul fast <8 x float> %i.bk, %i.bj      ; 2 uses
  %i.bm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.av, i32 1) ; 5 uses
  %i.bn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bd, i32 1) ; 5 uses
  %i.bo = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bl, i32 1) ; 5 uses
  %i.bp = fadd fast <8 x float> %i.bm, splat (float 1.000000e+00) ; 2 uses
  %i.bq = fadd fast <8 x float> %i.bn, splat (float 1.000000e+00) ; 2 uses
  %i.br = fadd fast <8 x float> %i.bo, splat (float 1.000000e+00) ; 2 uses
  %i.bs = fcmp fast ogt <8 x float> %i.bm, splat (float -1.000000e+00)
  %i.bt = fcmp fast ogt <8 x float> %i.ar, %i.bm
  %i.bu = and <8 x i1> %i.bs, %i.bt               ; 2 uses
  %i.bv = fcmp fast ogt <8 x float> %i.bp, splat (float -1.000000e+00)
  %i.bw = fcmp fast ogt <8 x float> %i.ar, %i.bp
  %i.bx = and <8 x i1> %i.bv, %i.bw               ; 2 uses
  %i.by = fcmp fast ogt <8 x float> %i.bn, splat (float -1.000000e+00)
  %i.bz = fcmp fast ogt <8 x float> %i.az, %i.bn
  %i.ca = and <8 x i1> %i.by, %i.bz
  %i.cb = sext <8 x i1> %i.ca to <8 x i32>        ; 2 uses
  %i.cc = fcmp fast ogt <8 x float> %i.bq, splat (float -1.000000e+00)
  %i.cd = fcmp fast ogt <8 x float> %i.az, %i.bq
  %i.ce = and <8 x i1> %i.cc, %i.cd               ; 2 uses
  %i.cf = fcmp fast ogt <8 x float> %i.bo, splat (float -1.000000e+00)
  %i.cg = fcmp fast ogt <8 x float> %i.bh, %i.bo
  %i.ch = and <8 x i1> %i.cf, %i.cg               ; 3 uses
  %i.ci = sext <8 x i1> %i.ch to <8 x i32>
  %i.cj = fcmp fast ogt <8 x float> %i.br, splat (float -1.000000e+00)
  %i.ck = fcmp fast ogt <8 x float> %i.bh, %i.br
  %i.cl = and <8 x i1> %i.cj, %i.ck               ; 4 uses
  %i.cm = and <8 x i1> %i.bu, %i.ce               ; 2 uses
  %i.cn = and <8 x i1> %i.bx, %i.ce               ; 2 uses
  %i.co = bitcast <8 x i32> %i.cb to <8 x float>
  %i.cp = select <8 x i1> %i.bu, <8 x float> %i.co, <8 x float> zeroinitializer ; 2 uses
  %i.cq = select <8 x i1> %i.ch, <8 x float> %i.cp, <8 x float> zeroinitializer
  %i.cr = bitcast <8 x i32> %i.cb to <8 x float>
  %i.cs = select <8 x i1> %i.bx, <8 x float> %i.cr, <8 x float> zeroinitializer ; 2 uses
  %i.ct = select <8 x i1> %i.ch, <8 x float> %i.cs, <8 x float> zeroinitializer
  %i.cu = bitcast <8 x i32> %i.ci to <8 x float>  ; 2 uses
  %i.cv = select <8 x i1> %i.cm, <8 x float> %i.cu, <8 x float> zeroinitializer
  %i.cw = select <8 x i1> %i.cn, <8 x float> %i.cu, <8 x float> zeroinitializer
  %i.cx = select <8 x i1> %i.cl, <8 x float> %i.cp, <8 x float> zeroinitializer
  %i.cy = select <8 x i1> %i.cl, <8 x float> %i.cs, <8 x float> zeroinitializer
  %i.cz = and <8 x i1> %i.cm, %i.cl
  %i.da = and <8 x i1> %i.cn, %i.cl
  %i.db = fmul fast <8 x float> %i.az, %i.ar      ; 2 uses
  %i.dc = fmul fast <8 x float> %i.bn, %i.ar
  %i.dd = fadd fast <8 x float> %i.dc, %i.bm
  %i.de = fmul fast <8 x float> %i.db, %i.bo
  %i.df = fadd fast <8 x float> %i.dd, %i.de
  %i.dg = load i32, ptr %i.t, align 8, !tbaa !16
  %i.dh = sitofp fast i32 %i.dg to float
  %i.di = insertelement <8 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <8 x float> %i.di, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.dk = fmul fast <8 x float> %i.dj, %i.df      ; 4 uses
  %i.dl = fadd fast <8 x float> %i.dk, %i.dj
  %i.dm = fmul fast <8 x float> %i.dj, %i.ar      ; 2 uses
  %i.dn = fadd fast <8 x float> %i.dk, %i.dm      ; 2 uses
  %i.do = fadd fast <8 x float> %i.dn, %i.dj
  %i.dp = fmul fast <8 x float> %i.dj, %i.db
  %i.dq = fadd fast <8 x float> %i.dp, %i.dk      ; 3 uses
  %i.dr = fadd fast <8 x float> %i.dq, %i.dj
  %i.ds = fadd fast <8 x float> %i.dq, %i.dm      ; 2 uses
  %i.dt = fadd fast <8 x float> %i.ds, %i.dj
  %i.du = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dk, <8 x float> nofpclass(nan inf) %i.cq)
  %i.dv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dl, <8 x float> nofpclass(nan inf) %i.ct)
  %i.dw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dn, <8 x float> nofpclass(nan inf) %i.cv)
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.do, <8 x float> nofpclass(nan inf) %i.cw)
  %i.dy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dq, <8 x float> nofpclass(nan inf) %i.cx)
  %i.dz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dr, <8 x float> nofpclass(nan inf) %i.cy)
  %i.ea = select <8 x i1> %i.cz, <8 x float> %i.ds, <8 x float> splat (float -1.000000e+00)
  %i.eb = select <8 x i1> %i.da, <8 x float> %i.dt, <8 x float> splat (float -1.000000e+00)
  %i.ec = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.du) ; 3 uses
  %i.ed = bitcast <8 x i32> %i.ec to <8 x float>
  %i.ee = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dv) ; 4 uses
  %i.ef = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dw) ; 4 uses
  %i.eg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dx) ; 4 uses
  %i.eh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dy) ; 4 uses
  %i.ei = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dz) ; 4 uses
  %i.ej = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ea) ; 4 uses
  %i.ek = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 3 uses
  %i.el = bitcast <8 x i32> %i.ek to <8 x float>  ; 2 uses
  %i.em = fsub fast <8 x float> %i.av, %i.bm      ; 4 uses
  %i.en = fsub fast <8 x float> %i.bd, %i.bn      ; 4 uses
  %i.eo = fsub fast <8 x float> %i.bl, %i.bo      ; 4 uses
  %i.ep = shufflevector <8 x i32> %i.ec, <8 x i32> %i.ee, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.eq = shufflevector <8 x i32> %i.ec, <8 x i32> %i.ee, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.er = bitcast <8 x i32> %i.eq to <8 x float>  ; 2 uses
  %i.es = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.et = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.eu = shufflevector <8 x i32> %i.eh, <8 x i32> %i.ei, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ev = shufflevector <8 x i32> %i.eh, <8 x i32> %i.ei, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ew = shufflevector <8 x i32> %i.ej, <8 x i32> %i.ek, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ex = shufflevector <8 x i32> %i.ej, <8 x i32> %i.ek, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ey = bitcast <8 x i32> %i.ex to <8 x float>
  %i.ez = shufflevector <8 x float> %i.em, <8 x float> %i.en, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fa = shufflevector <8 x float> %i.em, <8 x float> %i.en, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x float> %i.eo, <8 x float> %i.ed, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fc = shufflevector <8 x float> %i.eo, <8 x float> %i.er, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fd = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fe = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ff = bitcast <8 x i32> %i.fe to <8 x float>
  %i.fg = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fh = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fi = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ej, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fj = bitcast <8 x i32> %i.fi to <8 x float>
  %i.fk = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ej, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fl = shufflevector <8 x float> %i.el, <8 x float> %i.em, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fm = shufflevector <8 x float> %i.el, <8 x float> %i.em, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fn = shufflevector <8 x float> %i.en, <8 x float> %i.eo, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fo = shufflevector <8 x float> %i.en, <8 x float> %i.eo, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fp = shufflevector <8 x i32> %i.ep, <8 x i32> %i.es, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fq = bitcast <8 x i32> %i.fp to <8 x float>
  %i.fr = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ew, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fs = bitcast <8 x i32> %i.fr to <8 x float>
  %i.ft = shufflevector <8 x float> %i.ez, <8 x float> %i.fb, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.fu = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.fv = bitcast <8 x i32> %i.fu to <8 x float>  ; 2 uses
  %i.fw = shufflevector <8 x float> %i.fj, <8 x float> %i.fl, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.fx = shufflevector <8 x float> %i.fn, <8 x float> %i.er, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.fy = shufflevector <8 x i32> %i.et, <8 x i32> %i.ev, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.fz = bitcast <8 x i32> %i.fy to <8 x float>  ; 2 uses
  %i.ga = shufflevector <8 x float> %i.ey, <8 x float> %i.fa, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gb = shufflevector <8 x float> %i.fc, <8 x float> %i.ff, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gc = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gd = bitcast <8 x i32> %i.gc to <8 x float>  ; 2 uses
  %i.ge = shufflevector <8 x float> %i.fm, <8 x float> %i.fo, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gf = shufflevector <8 x i32> %i.fp, <8 x i32> %i.fr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gg = shufflevector <8 x float> %i.ft, <8 x float> %i.fv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gh = shufflevector <8 x float> %i.fw, <8 x float> %i.fx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gi = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gj = shufflevector <8 x float> %i.gb, <8 x float> %i.gd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gk = shufflevector <8 x float> %i.ge, <8 x float> %i.fq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gl = shufflevector <8 x float> %i.fs, <8 x float> %i.ft, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gm = shufflevector <8 x float> %i.fv, <8 x float> %i.fw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gn = shufflevector <8 x float> %i.fx, <8 x float> %i.fz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.go = shufflevector <8 x float> %i.ga, <8 x float> %i.gb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gp = shufflevector <8 x float> %i.gd, <8 x float> %i.ge, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gf, ptr %.1868, align 1, !tbaa !41
  %i.gq = getelementptr inbounds nuw i8, ptr %.1868, i64 32
  store <8 x float> %i.gg, ptr %i.gq, align 1, !tbaa !41
  %i.gr = getelementptr inbounds nuw i8, ptr %.1868, i64 64
  store <8 x float> %i.gh, ptr %i.gr, align 1, !tbaa !41
  %i.gs = getelementptr inbounds nuw i8, ptr %.1868, i64 96
  store <8 x float> %i.gi, ptr %i.gs, align 1, !tbaa !41
  %i.gt = getelementptr inbounds nuw i8, ptr %.1868, i64 128
  store <8 x float> %i.gj, ptr %i.gt, align 1, !tbaa !41
  %i.gu = getelementptr inbounds nuw i8, ptr %.1868, i64 160
  store <8 x float> %i.gk, ptr %i.gu, align 1, !tbaa !41
  %i.gv = getelementptr inbounds nuw i8, ptr %.1868, i64 192
  store <8 x float> %i.gl, ptr %i.gv, align 1, !tbaa !41
  %i.gw = getelementptr inbounds nuw i8, ptr %.1868, i64 224
  store <8 x float> %i.gm, ptr %i.gw, align 1, !tbaa !41
  %i.gx = getelementptr inbounds nuw i8, ptr %.1868, i64 256
  store <8 x float> %i.gn, ptr %i.gx, align 1, !tbaa !41
  %i.gy = getelementptr inbounds nuw i8, ptr %.1868, i64 288
  store <8 x float> %i.go, ptr %i.gy, align 1, !tbaa !41
  %i.gz = getelementptr inbounds nuw i8, ptr %.1868, i64 320
  store <8 x float> %i.gp, ptr %i.gz, align 1, !tbaa !41
  %i.ha = getelementptr inbounds nuw i8, ptr %.0499867, i64 96 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.1868, i64 352 ; 2 uses
  %i.hc = add nuw nsw i32 %.0501866, 24           ; 2 uses
  %i.hd = add nuw nsw i32 %.0501866, 47
  %i.he = icmp slt i32 %i.hd, %i.h
  br i1 %i.he, label %.lr.ph869, label %.preheader, !llvm.loop !391

.lr.ph876:                                        ; preds = %.preheader, %bb.p
  %.2875 = phi ptr [ %i.ly, %bb.p ], [ %.1.lcssa, %.preheader ] ; 11 uses
  %.1500874 = phi ptr [ %i.lx, %bb.p ], [ %.0499.lcssa, %.preheader ] ; 3 uses
  %.1502873 = phi i32 [ %i.lz, %bb.p ], [ %.0501.lcssa, %.preheader ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.1500874, i64 8
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !44
  %i.hh = load i32, ptr %i.s, align 4, !tbaa !40  ; 3 uses
  %i.hi = fmul fast float %i.hg, 5.000000e-01
  %i.hj = fadd fast float %i.hi, 5.000000e-01
  %i.hk = add nsw i32 %i.hh, -1
  %i.hl = sitofp fast i32 %i.hk to float
  %i.hm = fmul fast float %i.hj, %i.hl            ; 2 uses
  %i.hn = load <2 x float>, ptr %.1500874, align 4, !tbaa !44
  %i.ho = load <2 x i32>, ptr %i.q, align 4, !tbaa !23 ; 4 uses
  %i.hp = fmul fast <2 x float> %i.hn, splat (float 5.000000e-01)
  %i.hq = fadd fast <2 x float> %i.hp, splat (float 5.000000e-01)
  %i.hr = add nsw <2 x i32> %i.ho, splat (i32 -1)
  %i.hs = sitofp <2 x i32> %i.hr to <2 x float>
  %i.ht = fmul fast <2 x float> %i.hq, %i.hs      ; 2 uses
  %i.hu = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ht)
  %i.hv = fptosi <2 x float> %i.hu to <2 x i32>   ; 5 uses
  %i.hw = tail call fast float @llvm.floor.f32(float %i.hm)
  %i.hx = fptosi float %i.hw to i32               ; 9 uses
  %i.hy = extractelement <2 x i32> %i.hv, i64 0   ; 6 uses
  %i.hz = add nsw i32 %i.hy, 1                    ; 5 uses
  %i.ia = extractelement <2 x i32> %i.hv, i64 1   ; 6 uses
  %i.ib = add nsw i32 %i.ia, 1                    ; 5 uses
  %i.ic = add nsw i32 %i.hx, 1                    ; 5 uses
  %i.id = icmp sgt <2 x i32> %i.hv, splat (i32 -1)
  %i.ie = icmp sgt <2 x i32> %i.ho, %i.hv
  %i.if = and <2 x i1> %i.id, %i.ie               ; 2 uses
  %i.ig = icmp sgt i32 %i.hx, -1
  %i.ih = icmp sgt i32 %i.hh, %i.hx
  %i.ii = and i1 %i.ig, %i.ih                     ; 4 uses
  %i.ij = icmp sgt i32 %i.hy, -2
  %i.ik = extractelement <2 x i32> %i.ho, i64 0   ; 2 uses
  %i.il = icmp slt i32 %i.hz, %i.ik
  %i.im = and i1 %i.ij, %i.il                     ; 2 uses
  %i.in = icmp sgt i32 %i.ia, -2
  %i.io = extractelement <2 x i32> %i.ho, i64 1   ; 2 uses
  %i.ip = icmp slt i32 %i.ib, %i.io
  %i.iq = and i1 %i.in, %i.ip                     ; 2 uses
  %i.ir = icmp sgt i32 %i.hx, -2
  %i.is = icmp slt i32 %i.ic, %i.hh
  %i.it = and i1 %i.ir, %i.is                     ; 4 uses
  %i.iu = extractelement <2 x i1> %i.if, i64 0    ; 2 uses
  %i.iv = extractelement <2 x i1> %i.if, i64 1    ; 2 uses
  %i.iw = and i1 %i.iu, %i.iv                     ; 2 uses
  %i.ix = and i1 %i.im, %i.iv                     ; 2 uses
  %i.iy = and i1 %i.iu, %i.iq                     ; 2 uses
  %i.iz = and i1 %i.im, %i.iq                     ; 2 uses
  %i.ja = and i1 %i.iw, %i.ii
  %i.jb = and i1 %i.ix, %i.ii
  %i.jc = and i1 %i.ii, %i.iy
  %i.jd = and i1 %i.ii, %i.iz
  %i.je = and i1 %i.iw, %i.it
  %i.jf = and i1 %i.ix, %i.it
  %i.jg = and i1 %i.iy, %i.it
  %i.jh = and i1 %i.iz, %i.it
  %i.ji = getelementptr inbounds nuw i8, ptr %.2875, i64 32
  br i1 %i.ja, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph876
  %i.jj = mul i32 %i.io, %i.hx
  %reass.add832 = add i32 %i.jj, %i.ia
  %reass.mul833 = mul i32 %reass.add832, %i.ik
  %i.jk = add i32 %reass.mul833, %i.hy
  %i.jl = load i32, ptr %i.t, align 8, !tbaa !16
  %i.jm = mul nsw i32 %i.jl, %i.jk
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph876, %bb.a
  %i.jn = phi i32 [ %i.jm, %bb.a ], [ -1, %.lr.ph876 ]
  store i32 %i.jn, ptr %.2875, align 4, !tbaa !23
  br i1 %i.jb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.jo = load i32, ptr %i.q, align 4, !tbaa !37
  %i.jp = load i32, ptr %i.r, align 8, !tbaa !38
  %i.jq = mul i32 %i.jp, %i.hx
  %reass.add834 = add i32 %i.jq, %i.ia
  %reass.mul835 = mul i32 %reass.add834, %i.jo
  %i.jr = add i32 %reass.mul835, %i.hz
  %i.js = load i32, ptr %i.t, align 8, !tbaa !16
end_hunk_2
begin_hunk_3_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %reass.add840 = add i32 %i.ko, %i.ia
  %reass.mul841 = mul i32 %reass.add840, %i.km
  %i.kp = add i32 %reass.mul841, %i.hy
  %i.kq = load i32, ptr %i.t, align 8, !tbaa !16
  %i.kr = mul nsw i32 %i.kp, %i.kq
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ks = phi i32 [ %i.kr, %bb.i ], [ -1, %bb.h ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.2875, i64 16
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !23
  br i1 %i.jf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ku = load i32, ptr %i.q, align 4, !tbaa !37
  %i.kv = load i32, ptr %i.r, align 8, !tbaa !38
  %i.kw = mul i32 %i.kv, %i.ic
  %reass.add842 = add i32 %i.kw, %i.ia
  %reass.mul843 = mul i32 %reass.add842, %i.ku
  %i.kx = add i32 %reass.mul843, %i.hz
  %i.ky = load i32, ptr %i.t, align 8, !tbaa !16
  %i.kz = mul nsw i32 %i.kx, %i.ky
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.la = phi i32 [ %i.kz, %bb.k ], [ -1, %bb.j ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.2875, i64 20
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !23
  br i1 %i.jg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lc = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ld = load i32, ptr %i.r, align 8, !tbaa !38
  %i.le = mul i32 %i.ld, %i.ic
  %reass.add844 = add i32 %i.le, %i.ib
  %reass.mul845 = mul i32 %reass.add844, %i.lc
  %i.lf = add i32 %reass.mul845, %i.hy
  %i.lg = load i32, ptr %i.t, align 8, !tbaa !16
  %i.lh = mul nsw i32 %i.lf, %i.lg
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.li = phi i32 [ %i.lh, %bb.m ], [ -1, %bb.l ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.2875, i64 24
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !23
  br i1 %i.jh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.lk = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ll = load i32, ptr %i.r, align 8, !tbaa !38
  %i.lm = mul i32 %i.ll, %i.ic
  %reass.add846 = add i32 %i.lm, %i.ib
  %reass.mul847 = mul i32 %reass.add846, %i.lk
  %i.ln = add i32 %reass.mul847, %i.hz
  %i.lo = load i32, ptr %i.t, align 8, !tbaa !16
  %i.lp = mul nsw i32 %i.ln, %i.lo
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.lq = phi i32 [ %i.lp, %bb.o ], [ -1, %bb.n ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.2875, i64 28
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !23
  %i.ls = sitofp <2 x i32> %i.hv to <2 x float>
  %i.lt = fsub fast <2 x float> %i.ht, %i.ls
  store <2 x float> %i.lt, ptr %i.ji, align 4, !tbaa !44
  %i.lu = sitofp fast i32 %i.hx to float
  %i.lv = fsub fast float %i.hm, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %.2875, i64 40
  store float %i.lv, ptr %i.lw, align 4, !tbaa !44
  %i.lx = getelementptr inbounds nuw i8, ptr %.1500874, i64 12
  %i.ly = getelementptr inbounds nuw i8, ptr %.2875, i64 44 ; 2 uses
  %i.lz = add nuw nsw i32 %.1502873, 3            ; 2 uses
  %i.ma = icmp slt i32 %i.lz, %i.h
  br i1 %i.ma, label %.lr.ph876, label %._crit_edge, !llvm.loop !392

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.ly, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mb = load i32, ptr %i.k, align 8, !tbaa !17
  %i.mc = sext i32 %i.mb to i64
  %i.md = icmp slt i64 %indvars.iv.next, %i.mc
  br i1 %i.md, label %_ZN4ncnn3MatD2Ev.exit517, label %.loopexit, !llvm.loop !393

_ZN4ncnn3MatD2Ev.exit516:                         ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.me = load ptr, ptr %1, align 8, !tbaa !20, !noalias !402 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !19, !noalias !403 ; 2 uses
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !18, !noalias !403 ; 2 uses
  %i.mj = mul i64 %i.mi, %i.mh
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mj ; 2 uses
  %i.ml = shl i64 %i.mh, 1
  %i.mm = mul i64 %i.ml, %i.mi
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mm ; 2 uses
  %i.mo = icmp sgt i32 %i.h, 7
  br i1 %i.mo, label %.lr.ph, label %.preheader849

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit516
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

.preheader849.loopexit:                           ; preds = %bb.q
  %i.mt = and i32 %i.h, 2147483640
  br label %.preheader849

.preheader849:                                    ; preds = %.preheader849.loopexit, %_ZN4ncnn3MatD2Ev.exit516
  %.0509.lcssa = phi ptr [ %i.me, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.to, %.preheader849.loopexit ]
  %.0507.lcssa = phi ptr [ %i.mk, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.tp, %.preheader849.loopexit ]
  %.0505.lcssa = phi ptr [ %i.mn, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.tq, %.preheader849.loopexit ]
  %.0503.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.mt, %.preheader849.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.tr, %.preheader849.loopexit ]
  %i.mu = icmp slt i32 %.0503.lcssa, %i.h
  br i1 %i.mu, label %.lr.ph865, label %.loopexit

.lr.ph865:                                        ; preds = %.preheader849
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.3855 = phi ptr [ %i.i, %.lr.ph ], [ %i.tr, %bb.q ] ; 12 uses
  %.0503854 = phi i32 [ 0, %.lr.ph ], [ %i.ts, %bb.q ]
  %.0505853 = phi ptr [ %i.mn, %.lr.ph ], [ %i.tq, %bb.q ] ; 2 uses
  %.0507852 = phi ptr [ %i.mk, %.lr.ph ], [ %i.tp, %bb.q ] ; 2 uses
  %.0509851 = phi ptr [ %i.me, %.lr.ph ], [ %i.to, %bb.q ] ; 2 uses
  %i.mz = load <8 x float>, ptr %.0509851, align 1, !tbaa !41
  %i.na = load <8 x float>, ptr %.0507852, align 1, !tbaa !41
  %i.nb = load <8 x float>, ptr %.0505853, align 1, !tbaa !41
  %i.nc = load i32, ptr %i.mp, align 4, !tbaa !37
  %i.nd = sitofp fast i32 %i.nc to float
  %i.ne = insertelement <8 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <8 x float> %i.ne, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.ng = fmul fast <8 x float> %i.mz, splat (float 5.000000e-01)
  %i.nh = fadd fast <8 x float> %i.ng, splat (float 5.000000e-01)
  %i.ni = fadd fast <8 x float> %i.nf, splat (float -1.000000e+00)
  %i.nj = fmul fast <8 x float> %i.ni, %i.nh      ; 2 uses
  %i.nk = load i32, ptr %i.mq, align 8, !tbaa !38
  %i.nl = sitofp fast i32 %i.nk to float
  %i.nm = insertelement <8 x float> poison, float %i.nl, i64 0
  %i.nn = shufflevector <8 x float> %i.nm, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.no = fmul fast <8 x float> %i.na, splat (float 5.000000e-01)
  %i.np = fadd fast <8 x float> %i.no, splat (float 5.000000e-01)
  %i.nq = fadd fast <8 x float> %i.nn, splat (float -1.000000e+00)
  %i.nr = fmul fast <8 x float> %i.nq, %i.np      ; 2 uses
  %i.ns = load i32, ptr %i.mr, align 4, !tbaa !40
  %i.nt = sitofp fast i32 %i.ns to float
  %i.nu = insertelement <8 x float> poison, float %i.nt, i64 0
  %i.nv = shufflevector <8 x float> %i.nu, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.nw = fmul fast <8 x float> %i.nb, splat (float 5.000000e-01)
  %i.nx = fadd fast <8 x float> %i.nw, splat (float 5.000000e-01)
  %i.ny = fadd fast <8 x float> %i.nv, splat (float -1.000000e+00)
  %i.nz = fmul fast <8 x float> %i.ny, %i.nx      ; 2 uses
  %i.oa = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nj, i32 1) ; 5 uses
  %i.ob = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nr, i32 1) ; 5 uses
  %i.oc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nz, i32 1) ; 5 uses
  %i.od = fadd fast <8 x float> %i.oa, splat (float 1.000000e+00) ; 2 uses
  %i.oe = fadd fast <8 x float> %i.ob, splat (float 1.000000e+00) ; 2 uses
  %i.of = fadd fast <8 x float> %i.oc, splat (float 1.000000e+00) ; 2 uses
  %i.og = fcmp fast ogt <8 x float> %i.oa, splat (float -1.000000e+00)
  %i.oh = fcmp fast ogt <8 x float> %i.nf, %i.oa
  %i.oi = and <8 x i1> %i.og, %i.oh               ; 2 uses
  %i.oj = fcmp fast ogt <8 x float> %i.od, splat (float -1.000000e+00)
  %i.ok = fcmp fast ogt <8 x float> %i.nf, %i.od
  %i.ol = and <8 x i1> %i.oj, %i.ok               ; 2 uses
  %i.om = fcmp fast ogt <8 x float> %i.ob, splat (float -1.000000e+00)
  %i.on = fcmp fast ogt <8 x float> %i.nn, %i.ob
  %i.oo = and <8 x i1> %i.om, %i.on
  %i.op = sext <8 x i1> %i.oo to <8 x i32>        ; 2 uses
  %i.oq = fcmp fast ogt <8 x float> %i.oe, splat (float -1.000000e+00)
  %i.or = fcmp fast ogt <8 x float> %i.nn, %i.oe
  %i.os = and <8 x i1> %i.oq, %i.or               ; 2 uses
  %i.ot = fcmp fast ogt <8 x float> %i.oc, splat (float -1.000000e+00)
  %i.ou = fcmp fast ogt <8 x float> %i.nv, %i.oc
  %i.ov = and <8 x i1> %i.ot, %i.ou               ; 3 uses
  %i.ow = sext <8 x i1> %i.ov to <8 x i32>
  %i.ox = fcmp fast ogt <8 x float> %i.of, splat (float -1.000000e+00)
  %i.oy = fcmp fast ogt <8 x float> %i.nv, %i.of
  %i.oz = and <8 x i1> %i.ox, %i.oy               ; 4 uses
  %i.pa = and <8 x i1> %i.oi, %i.os               ; 2 uses
  %i.pb = and <8 x i1> %i.ol, %i.os               ; 2 uses
  %i.pc = bitcast <8 x i32> %i.op to <8 x float>
  %i.pd = select <8 x i1> %i.oi, <8 x float> %i.pc, <8 x float> zeroinitializer ; 2 uses
  %i.pe = select <8 x i1> %i.ov, <8 x float> %i.pd, <8 x float> zeroinitializer
  %i.pf = bitcast <8 x i32> %i.op to <8 x float>
  %i.pg = select <8 x i1> %i.ol, <8 x float> %i.pf, <8 x float> zeroinitializer ; 2 uses
  %i.ph = select <8 x i1> %i.ov, <8 x float> %i.pg, <8 x float> zeroinitializer
  %i.pi = bitcast <8 x i32> %i.ow to <8 x float>  ; 2 uses
  %i.pj = select <8 x i1> %i.pa, <8 x float> %i.pi, <8 x float> zeroinitializer
  %i.pk = select <8 x i1> %i.pb, <8 x float> %i.pi, <8 x float> zeroinitializer
  %i.pl = select <8 x i1> %i.oz, <8 x float> %i.pd, <8 x float> zeroinitializer
  %i.pm = select <8 x i1> %i.oz, <8 x float> %i.pg, <8 x float> zeroinitializer
  %i.pn = and <8 x i1> %i.pa, %i.oz
  %i.po = and <8 x i1> %i.pb, %i.oz
  %i.pp = fmul fast <8 x float> %i.nn, %i.nf      ; 2 uses
  %i.pq = fmul fast <8 x float> %i.ob, %i.nf
  %i.pr = fadd fast <8 x float> %i.pq, %i.oa
  %i.ps = fmul fast <8 x float> %i.pp, %i.oc
  %i.pt = fadd fast <8 x float> %i.pr, %i.ps
  %i.pu = load i32, ptr %i.ms, align 8, !tbaa !16
  %i.pv = sitofp fast i32 %i.pu to float
  %i.pw = insertelement <8 x float> poison, float %i.pv, i64 0
  %i.px = shufflevector <8 x float> %i.pw, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.py = fmul fast <8 x float> %i.px, %i.pt      ; 4 uses
  %i.pz = fadd fast <8 x float> %i.py, %i.px
  %i.qa = fmul fast <8 x float> %i.px, %i.nf      ; 2 uses
  %i.qb = fadd fast <8 x float> %i.py, %i.qa      ; 2 uses
  %i.qc = fadd fast <8 x float> %i.qb, %i.px
  %i.qd = fmul fast <8 x float> %i.px, %i.pp
  %i.qe = fadd fast <8 x float> %i.qd, %i.py      ; 3 uses
  %i.qf = fadd fast <8 x float> %i.qe, %i.px
  %i.qg = fadd fast <8 x float> %i.qe, %i.qa      ; 2 uses
  %i.qh = fadd fast <8 x float> %i.qg, %i.px
  %i.qi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.py, <8 x float> nofpclass(nan inf) %i.pe)
  %i.qj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.pz, <8 x float> nofpclass(nan inf) %i.ph)
  %i.qk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qb, <8 x float> nofpclass(nan inf) %i.pj)
  %i.ql = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qc, <8 x float> nofpclass(nan inf) %i.pk)
  %i.qm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qe, <8 x float> nofpclass(nan inf) %i.pl)
  %i.qn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qf, <8 x float> nofpclass(nan inf) %i.pm)
  %i.qo = select <8 x i1> %i.pn, <8 x float> %i.qg, <8 x float> splat (float -1.000000e+00)
  %i.qp = select <8 x i1> %i.po, <8 x float> %i.qh, <8 x float> splat (float -1.000000e+00)
  %i.qq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qi) ; 3 uses
  %i.qr = bitcast <8 x i32> %i.qq to <8 x float>
  %i.qs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qj) ; 4 uses
  %i.qt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qk) ; 4 uses
  %i.qu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ql) ; 4 uses
  %i.qv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qm) ; 4 uses
  %i.qw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qn) ; 4 uses
  %i.qx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qo) ; 4 uses
  %i.qy = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.qp) ; 3 uses
  %i.qz = bitcast <8 x i32> %i.qy to <8 x float>  ; 2 uses
  %i.ra = fsub fast <8 x float> %i.nj, %i.oa      ; 4 uses
  %i.rb = fsub fast <8 x float> %i.nr, %i.ob      ; 4 uses
  %i.rc = fsub fast <8 x float> %i.nz, %i.oc      ; 4 uses
  %i.rd = shufflevector <8 x i32> %i.qq, <8 x i32> %i.qs, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.re = shufflevector <8 x i32> %i.qq, <8 x i32> %i.qs, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.rf = bitcast <8 x i32> %i.re to <8 x float>  ; 2 uses
  %i.rg = shufflevector <8 x i32> %i.qt, <8 x i32> %i.qu, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rh = shufflevector <8 x i32> %i.qt, <8 x i32> %i.qu, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ri = shufflevector <8 x i32> %i.qv, <8 x i32> %i.qw, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rj = shufflevector <8 x i32> %i.qv, <8 x i32> %i.qw, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rk = shufflevector <8 x i32> %i.qx, <8 x i32> %i.qy, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rl = shufflevector <8 x i32> %i.qx, <8 x i32> %i.qy, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rm = bitcast <8 x i32> %i.rl to <8 x float>
  %i.rn = shufflevector <8 x float> %i.ra, <8 x float> %i.rb, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ro = shufflevector <8 x float> %i.ra, <8 x float> %i.rb, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.rp = shufflevector <8 x float> %i.rc, <8 x float> %i.qr, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.rq = shufflevector <8 x float> %i.rc, <8 x float> %i.rf, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.rr = shufflevector <8 x i32> %i.qs, <8 x i32> %i.qt, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.rs = shufflevector <8 x i32> %i.qs, <8 x i32> %i.qt, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.rt = bitcast <8 x i32> %i.rs to <8 x float>
  %i.ru = shufflevector <8 x i32> %i.qu, <8 x i32> %i.qv, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.rv = shufflevector <8 x i32> %i.qu, <8 x i32> %i.qv, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.rw = shufflevector <8 x i32> %i.qw, <8 x i32> %i.qx, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.rx = bitcast <8 x i32> %i.rw to <8 x float>
  %i.ry = shufflevector <8 x i32> %i.qw, <8 x i32> %i.qx, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.rz = shufflevector <8 x float> %i.qz, <8 x float> %i.ra, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sa = shufflevector <8 x float> %i.qz, <8 x float> %i.ra, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sb = shufflevector <8 x float> %i.rb, <8 x float> %i.rc, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sc = shufflevector <8 x float> %i.rb, <8 x float> %i.rc, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sd = shufflevector <8 x i32> %i.rd, <8 x i32> %i.rg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.se = bitcast <8 x i32> %i.sd to <8 x float>
  %i.sf = shufflevector <8 x i32> %i.ri, <8 x i32> %i.rk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.sg = bitcast <8 x i32> %i.sf to <8 x float>
  %i.sh = shufflevector <8 x float> %i.rn, <8 x float> %i.rp, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.si = shufflevector <8 x i32> %i.rr, <8 x i32> %i.ru, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.sj = bitcast <8 x i32> %i.si to <8 x float>  ; 2 uses
  %i.sk = shufflevector <8 x float> %i.rx, <8 x float> %i.rz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.sl = shufflevector <8 x float> %i.sb, <8 x float> %i.rf, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.sm = shufflevector <8 x i32> %i.rh, <8 x i32> %i.rj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.sn = bitcast <8 x i32> %i.sm to <8 x float>  ; 2 uses
  %i.so = shufflevector <8 x float> %i.rm, <8 x float> %i.ro, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.sp = shufflevector <8 x float> %i.rq, <8 x float> %i.rt, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.sq = shufflevector <8 x i32> %i.rv, <8 x i32> %i.ry, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.sr = bitcast <8 x i32> %i.sq to <8 x float>  ; 2 uses
  %i.ss = shufflevector <8 x float> %i.sa, <8 x float> %i.sc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.st = shufflevector <8 x i32> %i.sd, <8 x i32> %i.sf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.su = shufflevector <8 x float> %i.sh, <8 x float> %i.sj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sv = shufflevector <8 x float> %i.sk, <8 x float> %i.sl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sw = shufflevector <8 x float> %i.sn, <8 x float> %i.so, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sx = shufflevector <8 x float> %i.sp, <8 x float> %i.sr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sy = shufflevector <8 x float> %i.ss, <8 x float> %i.se, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.sz = shufflevector <8 x float> %i.sg, <8 x float> %i.sh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ta = shufflevector <8 x float> %i.sj, <8 x float> %i.sk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tb = shufflevector <8 x float> %i.sl, <8 x float> %i.sn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tc = shufflevector <8 x float> %i.so, <8 x float> %i.sp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.td = shufflevector <8 x float> %i.sr, <8 x float> %i.ss, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.st, ptr %.3855, align 1, !tbaa !41
  %i.te = getelementptr inbounds nuw i8, ptr %.3855, i64 32
  store <8 x float> %i.su, ptr %i.te, align 1, !tbaa !41
  %i.tf = getelementptr inbounds nuw i8, ptr %.3855, i64 64
  store <8 x float> %i.sv, ptr %i.tf, align 1, !tbaa !41
  %i.tg = getelementptr inbounds nuw i8, ptr %.3855, i64 96
  store <8 x float> %i.sw, ptr %i.tg, align 1, !tbaa !41
  %i.th = getelementptr inbounds nuw i8, ptr %.3855, i64 128
  store <8 x float> %i.sx, ptr %i.th, align 1, !tbaa !41
  %i.ti = getelementptr inbounds nuw i8, ptr %.3855, i64 160
  store <8 x float> %i.sy, ptr %i.ti, align 1, !tbaa !41
  %i.tj = getelementptr inbounds nuw i8, ptr %.3855, i64 192
  store <8 x float> %i.sz, ptr %i.tj, align 1, !tbaa !41
  %i.tk = getelementptr inbounds nuw i8, ptr %.3855, i64 224
  store <8 x float> %i.ta, ptr %i.tk, align 1, !tbaa !41
  %i.tl = getelementptr inbounds nuw i8, ptr %.3855, i64 256
  store <8 x float> %i.tb, ptr %i.tl, align 1, !tbaa !41
  %i.tm = getelementptr inbounds nuw i8, ptr %.3855, i64 288
  store <8 x float> %i.tc, ptr %i.tm, align 1, !tbaa !41
  %i.tn = getelementptr inbounds nuw i8, ptr %.3855, i64 320
  store <8 x float> %i.td, ptr %i.tn, align 1, !tbaa !41
  %i.to = getelementptr inbounds nuw i8, ptr %.0509851, i64 32 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.0507852, i64 32 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0505853, i64 32 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.3855, i64 352 ; 2 uses
  %i.ts = add nuw nsw i32 %.0503854, 8            ; 2 uses
  %i.tt = or disjoint i32 %i.ts, 7
  %i.tu = icmp slt i32 %i.tt, %i.h
  br i1 %i.tu, label %bb.q, label %.preheader849.loopexit, !llvm.loop !398

bb.r:                                             ; preds = %.lr.ph865, %bb.ah
  %.4864 = phi ptr [ %.3.lcssa, %.lr.ph865 ], [ %i.ys, %bb.ah ] ; 11 uses
  %.1504863 = phi i32 [ %.0503.lcssa, %.lr.ph865 ], [ %i.yt, %bb.ah ]
  %.1506862 = phi ptr [ %.0505.lcssa, %.lr.ph865 ], [ %i.yr, %bb.ah ] ; 2 uses
  %.1508861 = phi ptr [ %.0507.lcssa, %.lr.ph865 ], [ %i.yq, %bb.ah ] ; 2 uses
  %.1510860 = phi ptr [ %.0509.lcssa, %.lr.ph865 ], [ %i.yp, %bb.ah ] ; 2 uses
  %i.tv = load float, ptr %.1510860, align 4, !tbaa !44
  %i.tw = load float, ptr %.1508861, align 4, !tbaa !44
  %i.tx = load float, ptr %.1506862, align 4, !tbaa !44
  %i.ty = load i32, ptr %i.mx, align 4, !tbaa !40 ; 3 uses
  %i.tz = fmul fast float %i.tx, 5.000000e-01
  %i.ua = fadd fast float %i.tz, 5.000000e-01
  %i.ub = add nsw i32 %i.ty, -1
  %i.uc = sitofp fast i32 %i.ub to float
  %i.ud = fmul fast float %i.ua, %i.uc            ; 2 uses
  %i.ue = load <2 x i32>, ptr %i.mv, align 4, !tbaa !23 ; 4 uses
  %i.uf = insertelement <2 x float> poison, float %i.tv, i64 0
  %i.ug = insertelement <2 x float> %i.uf, float %i.tw, i64 1
  %i.uh = fmul fast <2 x float> %i.ug, splat (float 5.000000e-01)
  %i.ui = fadd fast <2 x float> %i.uh, splat (float 5.000000e-01)
  %i.uj = add nsw <2 x i32> %i.ue, splat (i32 -1)
  %i.uk = sitofp <2 x i32> %i.uj to <2 x float>
  %i.ul = fmul fast <2 x float> %i.ui, %i.uk      ; 2 uses
  %i.um = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ul)
  %i.un = fptosi <2 x float> %i.um to <2 x i32>   ; 5 uses
  %i.uo = tail call fast float @llvm.floor.f32(float %i.ud)
  %i.up = fptosi float %i.uo to i32               ; 9 uses
  %i.uq = extractelement <2 x i32> %i.un, i64 0   ; 6 uses
  %i.ur = add nsw i32 %i.uq, 1                    ; 5 uses
  %i.us = extractelement <2 x i32> %i.un, i64 1   ; 6 uses
  %i.ut = add nsw i32 %i.us, 1                    ; 5 uses
  %i.uu = add nsw i32 %i.up, 1                    ; 5 uses
  %i.uv = icmp sgt <2 x i32> %i.un, splat (i32 -1)
  %i.uw = icmp sgt <2 x i32> %i.ue, %i.un
  %i.ux = and <2 x i1> %i.uv, %i.uw               ; 2 uses
  %i.uy = icmp sgt i32 %i.up, -1
  %i.uz = icmp sgt i32 %i.ty, %i.up
  %i.va = and i1 %i.uy, %i.uz                     ; 4 uses
  %i.vb = icmp sgt i32 %i.uq, -2
  %i.vc = extractelement <2 x i32> %i.ue, i64 0   ; 2 uses
  %i.vd = icmp slt i32 %i.ur, %i.vc
  %i.ve = and i1 %i.vb, %i.vd                     ; 2 uses
  %i.vf = icmp sgt i32 %i.us, -2
  %i.vg = extractelement <2 x i32> %i.ue, i64 1   ; 2 uses
  %i.vh = icmp slt i32 %i.ut, %i.vg
  %i.vi = and i1 %i.vf, %i.vh                     ; 2 uses
  %i.vj = icmp sgt i32 %i.up, -2
  %i.vk = icmp slt i32 %i.uu, %i.ty
  %i.vl = and i1 %i.vj, %i.vk                     ; 4 uses
  %i.vm = extractelement <2 x i1> %i.ux, i64 0    ; 2 uses
  %i.vn = extractelement <2 x i1> %i.ux, i64 1    ; 2 uses
  %i.vo = and i1 %i.vm, %i.vn                     ; 2 uses
  %i.vp = and i1 %i.ve, %i.vn                     ; 2 uses
  %i.vq = and i1 %i.vm, %i.vi                     ; 2 uses
  %i.vr = and i1 %i.ve, %i.vi                     ; 2 uses
  %i.vs = and i1 %i.vo, %i.va
  %i.vt = and i1 %i.vp, %i.va
  %i.vu = and i1 %i.va, %i.vq
  %i.vv = and i1 %i.va, %i.vr
  %i.vw = and i1 %i.vo, %i.vl
  %i.vx = and i1 %i.vp, %i.vl
  %i.vy = and i1 %i.vq, %i.vl
  %i.vz = and i1 %i.vr, %i.vl
  %i.wa = getelementptr inbounds nuw i8, ptr %.4864, i64 32
  br i1 %i.vs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.wb = mul i32 %i.vg, %i.up
  %reass.add = add i32 %i.wb, %i.us
  %reass.mul = mul i32 %reass.add, %i.vc
  %i.wc = add i32 %reass.mul, %i.uq
  %i.wd = load i32, ptr %i.my, align 8, !tbaa !16
  %i.we = mul nsw i32 %i.wd, %i.wc
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.wf = phi i32 [ %i.we, %bb.s ], [ -1, %bb.r ]
  store i32 %i.wf, ptr %.4864, align 4, !tbaa !23
  br i1 %i.vt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.wg = load i32, ptr %i.mv, align 4, !tbaa !37
end_hunk_3
begin_hunk_4_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.xs = phi i32 [ %i.xr, %bb.ac ], [ -1, %bb.ab ]
  %i.xt = getelementptr inbounds nuw i8, ptr %.4864, i64 20
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !23
  br i1 %i.vy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.xu = load i32, ptr %i.mv, align 4, !tbaa !37
  %i.xv = load i32, ptr %i.mw, align 8, !tbaa !38
  %i.xw = mul i32 %i.xv, %i.uu
  %reass.add828 = add i32 %i.xw, %i.ut
  %reass.mul829 = mul i32 %reass.add828, %i.xu
  %i.xx = add i32 %reass.mul829, %i.uq
  %i.xy = load i32, ptr %i.my, align 8, !tbaa !16
  %i.xz = mul nsw i32 %i.xx, %i.xy
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ya = phi i32 [ %i.xz, %bb.ae ], [ -1, %bb.ad ]
  %i.yb = getelementptr inbounds nuw i8, ptr %.4864, i64 24
  store i32 %i.ya, ptr %i.yb, align 4, !tbaa !23
  br i1 %i.vz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.yc = load i32, ptr %i.mv, align 4, !tbaa !37
  %i.yd = load i32, ptr %i.mw, align 8, !tbaa !38
  %i.ye = mul i32 %i.yd, %i.uu
  %reass.add830 = add i32 %i.ye, %i.ut
  %reass.mul831 = mul i32 %reass.add830, %i.yc
  %i.yf = add i32 %reass.mul831, %i.ur
  %i.yg = load i32, ptr %i.my, align 8, !tbaa !16
  %i.yh = mul nsw i32 %i.yf, %i.yg
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.yi = phi i32 [ %i.yh, %bb.ag ], [ -1, %bb.af ]
  %i.yj = getelementptr inbounds nuw i8, ptr %.4864, i64 28
  store i32 %i.yi, ptr %i.yj, align 4, !tbaa !23
  %i.yk = sitofp <2 x i32> %i.un to <2 x float>
  %i.yl = fsub fast <2 x float> %i.ul, %i.yk
  store <2 x float> %i.yl, ptr %i.wa, align 4, !tbaa !44
  %i.ym = sitofp fast i32 %i.up to float
  %i.yn = fsub fast float %i.ud, %i.ym
  %i.yo = getelementptr inbounds nuw i8, ptr %.4864, i64 40
  store float %i.yn, ptr %i.yo, align 4, !tbaa !44
  %i.yp = getelementptr inbounds nuw i8, ptr %.1510860, i64 4
  %i.yq = getelementptr inbounds nuw i8, ptr %.1508861, i64 4
  %i.yr = getelementptr inbounds nuw i8, ptr %.1506862, i64 4
  %i.ys = getelementptr inbounds nuw i8, ptr %.4864, i64 44
  %i.yt = add nuw nsw i32 %.1504863, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.yt, %i.h
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !399

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader849, %.preheader848
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = mul i32 %i.e, %i.g                       ; 9 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !20, !noalias !417 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader858, label %_ZN4ncnn3MatD2Ev.exit516

.preheader858:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !17
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader858
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %i.h, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0889 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !20, !noalias !418
  %i.v = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !418
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !418
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 2 uses
  br i1 %i.p, label %.lr.ph879, label %.preheader

.preheader:                                       ; preds = %.lr.ph879, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hl, %.lr.ph879 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.z, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hj, %.lr.ph879 ]
  %.1.lcssa = phi ptr [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hk, %.lr.ph879 ] ; 2 uses
  %i.aa = icmp slt i32 %.0501.lcssa, %i.h
  br i1 %i.aa, label %.lr.ph886, label %._crit_edge

.lr.ph879:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph879
  %.1878 = phi ptr [ %i.hk, %.lr.ph879 ], [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499877 = phi ptr [ %i.hj, %.lr.ph879 ], [ %i.z, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501876 = phi i32 [ %i.hl, %.lr.ph879 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.ab = load <8 x float>, ptr %.0499877, align 1, !tbaa !41 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0499877, i64 32
  %i.ad = load <8 x float>, ptr %i.ac, align 1, !tbaa !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0499877, i64 64
  %i.af = load <8 x float>, ptr %i.ae, align 1, !tbaa !41 ; 2 uses
  %i.ag = shufflevector <8 x float> %i.ab, <8 x float> %i.ad, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ah = shufflevector <8 x float> %i.ab, <8 x float> %i.af, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ai = shufflevector <8 x float> %i.ad, <8 x float> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aj = shufflevector <8 x float> %i.ag, <8 x float> %i.ah, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ak = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.al = shufflevector <8 x float> %i.ag, <8 x float> %i.ak, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.am = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.an = shufflevector <8 x float> %i.aj, <8 x float> %i.ai, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ap = sitofp fast i32 %i.ao to float
  %i.aq = insertelement <8 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <8 x float> %i.aq, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.as = fadd fast <8 x float> %i.al, splat (float 1.000000e+00)
  %i.at = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.au = fmul fast <8 x float> %i.at, %i.as
  %i.av = fadd fast <8 x float> %i.au, splat (float -5.000000e-01)
  %i.aw = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.av, <8 x float> zeroinitializer)
  %i.ay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.ax) ; 2 uses
  %i.az = load i32, ptr %i.r, align 8, !tbaa !38
  %i.ba = sitofp fast i32 %i.az to float
  %i.bb = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <8 x float> %i.bb, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.bd = fmul fast <8 x float> %i.am, splat (float 5.000000e-01)
  %i.be = fadd fast <8 x float> %i.bd, splat (float 5.000000e-01)
  %i.bf = fmul fast <8 x float> %i.be, %i.bc
  %i.bg = fadd fast <8 x float> %i.bf, splat (float -5.000000e-01)
  %i.bh = fadd fast <8 x float> %i.bc, splat (float -1.000000e+00)
  %i.bi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> zeroinitializer)
  %i.bj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bh, <8 x float> nofpclass(nan inf) %i.bi) ; 2 uses
  %i.bk = load i32, ptr %i.s, align 4, !tbaa !40
  %i.bl = sitofp fast i32 %i.bk to float
  %i.bm = insertelement <8 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <8 x float> %i.bm, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bo = fmul fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.bp = fadd fast <8 x float> %i.bo, splat (float 5.000000e-01)
  %i.bq = fmul fast <8 x float> %i.bp, %i.bn
  %i.br = fadd fast <8 x float> %i.bq, splat (float -5.000000e-01)
  %i.bs = fadd fast <8 x float> %i.bn, splat (float -1.000000e+00)
  %i.bt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.br, <8 x float> zeroinitializer)
  %i.bu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.bt) ; 2 uses
  %i.bv = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ay, i32 1) ; 5 uses
  %i.bw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bj, i32 1) ; 5 uses
  %i.bx = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bu, i32 1) ; 5 uses
  %i.by = fadd fast <8 x float> %i.bv, splat (float 1.000000e+00) ; 2 uses
  %i.bz = fadd fast <8 x float> %i.bw, splat (float 1.000000e+00) ; 2 uses
  %i.ca = fadd fast <8 x float> %i.bx, splat (float 1.000000e+00) ; 2 uses
  %i.cb = fcmp fast ogt <8 x float> %i.bv, splat (float -1.000000e+00)
  %i.cc = fcmp fast ogt <8 x float> %i.ar, %i.bv
  %i.cd = and <8 x i1> %i.cb, %i.cc               ; 2 uses
  %i.ce = fcmp fast ogt <8 x float> %i.by, splat (float -1.000000e+00)
  %i.cf = fcmp fast ogt <8 x float> %i.ar, %i.by
  %i.cg = and <8 x i1> %i.ce, %i.cf               ; 2 uses
  %i.ch = fcmp fast ogt <8 x float> %i.bw, splat (float -1.000000e+00)
  %i.ci = fcmp fast ogt <8 x float> %i.bc, %i.bw
  %i.cj = and <8 x i1> %i.ch, %i.ci
  %i.ck = sext <8 x i1> %i.cj to <8 x i32>        ; 2 uses
  %i.cl = fcmp fast ogt <8 x float> %i.bz, splat (float -1.000000e+00)
  %i.cm = fcmp fast ogt <8 x float> %i.bc, %i.bz
  %i.cn = and <8 x i1> %i.cl, %i.cm               ; 2 uses
  %i.co = fcmp fast ogt <8 x float> %i.bx, splat (float -1.000000e+00)
  %i.cp = fcmp fast ogt <8 x float> %i.bn, %i.bx
  %i.cq = and <8 x i1> %i.co, %i.cp               ; 3 uses
  %i.cr = sext <8 x i1> %i.cq to <8 x i32>
  %i.cs = fcmp fast ogt <8 x float> %i.ca, splat (float -1.000000e+00)
  %i.ct = fcmp fast ogt <8 x float> %i.bn, %i.ca
  %i.cu = and <8 x i1> %i.cs, %i.ct               ; 4 uses
  %i.cv = and <8 x i1> %i.cd, %i.cn               ; 2 uses
  %i.cw = and <8 x i1> %i.cg, %i.cn               ; 2 uses
  %i.cx = bitcast <8 x i32> %i.ck to <8 x float>
  %i.cy = select <8 x i1> %i.cd, <8 x float> %i.cx, <8 x float> zeroinitializer ; 2 uses
  %i.cz = select <8 x i1> %i.cq, <8 x float> %i.cy, <8 x float> zeroinitializer
  %i.da = bitcast <8 x i32> %i.ck to <8 x float>
  %i.db = select <8 x i1> %i.cg, <8 x float> %i.da, <8 x float> zeroinitializer ; 2 uses
  %i.dc = select <8 x i1> %i.cq, <8 x float> %i.db, <8 x float> zeroinitializer
  %i.dd = bitcast <8 x i32> %i.cr to <8 x float>  ; 2 uses
  %i.de = select <8 x i1> %i.cv, <8 x float> %i.dd, <8 x float> zeroinitializer
  %i.df = select <8 x i1> %i.cw, <8 x float> %i.dd, <8 x float> zeroinitializer
  %i.dg = select <8 x i1> %i.cu, <8 x float> %i.cy, <8 x float> zeroinitializer
  %i.dh = select <8 x i1> %i.cu, <8 x float> %i.db, <8 x float> zeroinitializer
  %i.di = and <8 x i1> %i.cv, %i.cu
  %i.dj = and <8 x i1> %i.cw, %i.cu
  %i.dk = fmul fast <8 x float> %i.bc, %i.ar      ; 2 uses
  %i.dl = fmul fast <8 x float> %i.bw, %i.ar
  %i.dm = fadd fast <8 x float> %i.dl, %i.bv
  %i.dn = fmul fast <8 x float> %i.bx, %i.dk
  %i.do = fadd fast <8 x float> %i.dm, %i.dn
  %i.dp = load i32, ptr %i.t, align 8, !tbaa !16
  %i.dq = sitofp fast i32 %i.dp to float
  %i.dr = insertelement <8 x float> poison, float %i.dq, i64 0
  %i.ds = shufflevector <8 x float> %i.dr, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.dt = fmul fast <8 x float> %i.ds, %i.do      ; 4 uses
  %i.du = fadd fast <8 x float> %i.dt, %i.ds
  %i.dv = fmul fast <8 x float> %i.ds, %i.ar      ; 2 uses
  %i.dw = fadd fast <8 x float> %i.dt, %i.dv      ; 2 uses
  %i.dx = fadd fast <8 x float> %i.dw, %i.ds
  %i.dy = fmul fast <8 x float> %i.ds, %i.dk
  %i.dz = fadd fast <8 x float> %i.dy, %i.dt      ; 3 uses
  %i.ea = fadd fast <8 x float> %i.dz, %i.ds
  %i.eb = fadd fast <8 x float> %i.dz, %i.dv      ; 2 uses
  %i.ec = fadd fast <8 x float> %i.eb, %i.ds
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dt, <8 x float> nofpclass(nan inf) %i.cz)
  %i.ee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.du, <8 x float> nofpclass(nan inf) %i.dc)
  %i.ef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dw, <8 x float> nofpclass(nan inf) %i.de)
  %i.eg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.df)
  %i.eh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dz, <8 x float> nofpclass(nan inf) %i.dg)
  %i.ei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ea, <8 x float> nofpclass(nan inf) %i.dh)
  %i.ej = select <8 x i1> %i.di, <8 x float> %i.eb, <8 x float> splat (float -1.000000e+00)
  %i.ek = select <8 x i1> %i.dj, <8 x float> %i.ec, <8 x float> splat (float -1.000000e+00)
  %i.el = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ed) ; 3 uses
  %i.em = bitcast <8 x i32> %i.el to <8 x float>
  %i.en = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ee) ; 4 uses
  %i.eo = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ef) ; 4 uses
  %i.ep = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eg) ; 4 uses
  %i.eq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eh) ; 4 uses
  %i.er = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ei) ; 4 uses
  %i.es = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ej) ; 4 uses
  %i.et = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ek) ; 3 uses
  %i.eu = bitcast <8 x i32> %i.et to <8 x float>  ; 2 uses
  %i.ev = fsub fast <8 x float> %i.ay, %i.bv      ; 4 uses
  %i.ew = fsub fast <8 x float> %i.bj, %i.bw      ; 4 uses
  %i.ex = fsub fast <8 x float> %i.bu, %i.bx      ; 4 uses
  %i.ey = shufflevector <8 x i32> %i.el, <8 x i32> %i.en, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ez = shufflevector <8 x i32> %i.el, <8 x i32> %i.en, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.fa = bitcast <8 x i32> %i.ez to <8 x float>  ; 2 uses
  %i.fb = shufflevector <8 x i32> %i.eo, <8 x i32> %i.ep, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x i32> %i.eo, <8 x i32> %i.ep, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i32> %i.eq, <8 x i32> %i.er, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fe = shufflevector <8 x i32> %i.eq, <8 x i32> %i.er, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ff = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fh = bitcast <8 x i32> %i.fg to <8 x float>
  %i.fi = shufflevector <8 x float> %i.ev, <8 x float> %i.ew, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fj = shufflevector <8 x float> %i.ev, <8 x float> %i.ew, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x float> %i.ex, <8 x float> %i.em, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fl = shufflevector <8 x float> %i.ex, <8 x float> %i.fa, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fm = shufflevector <8 x i32> %i.en, <8 x i32> %i.eo, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fn = shufflevector <8 x i32> %i.en, <8 x i32> %i.eo, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fo = bitcast <8 x i32> %i.fn to <8 x float>
  %i.fp = shufflevector <8 x i32> %i.ep, <8 x i32> %i.eq, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fq = shufflevector <8 x i32> %i.ep, <8 x i32> %i.eq, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fr = shufflevector <8 x i32> %i.er, <8 x i32> %i.es, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fs = bitcast <8 x i32> %i.fr to <8 x float>
  %i.ft = shufflevector <8 x i32> %i.er, <8 x i32> %i.es, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fu = shufflevector <8 x float> %i.eu, <8 x float> %i.ev, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fv = shufflevector <8 x float> %i.eu, <8 x float> %i.ev, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fw = shufflevector <8 x float> %i.ew, <8 x float> %i.ex, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fx = shufflevector <8 x float> %i.ew, <8 x float> %i.ex, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fy = shufflevector <8 x i32> %i.ey, <8 x i32> %i.fb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fz = bitcast <8 x i32> %i.fy to <8 x float>
  %i.ga = shufflevector <8 x i32> %i.fd, <8 x i32> %i.ff, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gb = bitcast <8 x i32> %i.ga to <8 x float>
  %i.gc = shufflevector <8 x float> %i.fi, <8 x float> %i.fk, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.gd = shufflevector <8 x i32> %i.fm, <8 x i32> %i.fp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>  ; 2 uses
  %i.gf = shufflevector <8 x float> %i.fs, <8 x float> %i.fu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gg = shufflevector <8 x float> %i.fw, <8 x float> %i.fa, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.gh = shufflevector <8 x i32> %i.fc, <8 x i32> %i.fe, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gi = bitcast <8 x i32> %i.gh to <8 x float>  ; 2 uses
  %i.gj = shufflevector <8 x float> %i.fh, <8 x float> %i.fj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gk = shufflevector <8 x float> %i.fl, <8 x float> %i.fo, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.fq, <8 x i32> %i.ft, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gm = bitcast <8 x i32> %i.gl to <8 x float>  ; 2 uses
  %i.gn = shufflevector <8 x float> %i.fv, <8 x float> %i.fx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.go = shufflevector <8 x i32> %i.fy, <8 x i32> %i.ga, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gp = shufflevector <8 x float> %i.gc, <8 x float> %i.ge, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gq = shufflevector <8 x float> %i.gf, <8 x float> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gr = shufflevector <8 x float> %i.gi, <8 x float> %i.gj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gs = shufflevector <8 x float> %i.gk, <8 x float> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gt = shufflevector <8 x float> %i.gn, <8 x float> %i.fz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gu = shufflevector <8 x float> %i.gb, <8 x float> %i.gc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gv = shufflevector <8 x float> %i.ge, <8 x float> %i.gf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gw = shufflevector <8 x float> %i.gg, <8 x float> %i.gi, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gx = shufflevector <8 x float> %i.gj, <8 x float> %i.gk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gy = shufflevector <8 x float> %i.gm, <8 x float> %i.gn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.go, ptr %.1878, align 1, !tbaa !41
  %i.gz = getelementptr inbounds nuw i8, ptr %.1878, i64 32
  store <8 x float> %i.gp, ptr %i.gz, align 1, !tbaa !41
  %i.ha = getelementptr inbounds nuw i8, ptr %.1878, i64 64
  store <8 x float> %i.gq, ptr %i.ha, align 1, !tbaa !41
  %i.hb = getelementptr inbounds nuw i8, ptr %.1878, i64 96
  store <8 x float> %i.gr, ptr %i.hb, align 1, !tbaa !41
  %i.hc = getelementptr inbounds nuw i8, ptr %.1878, i64 128
  store <8 x float> %i.gs, ptr %i.hc, align 1, !tbaa !41
  %i.hd = getelementptr inbounds nuw i8, ptr %.1878, i64 160
  store <8 x float> %i.gt, ptr %i.hd, align 1, !tbaa !41
  %i.he = getelementptr inbounds nuw i8, ptr %.1878, i64 192
  store <8 x float> %i.gu, ptr %i.he, align 1, !tbaa !41
  %i.hf = getelementptr inbounds nuw i8, ptr %.1878, i64 224
  store <8 x float> %i.gv, ptr %i.hf, align 1, !tbaa !41
  %i.hg = getelementptr inbounds nuw i8, ptr %.1878, i64 256
  store <8 x float> %i.gw, ptr %i.hg, align 1, !tbaa !41
  %i.hh = getelementptr inbounds nuw i8, ptr %.1878, i64 288
  store <8 x float> %i.gx, ptr %i.hh, align 1, !tbaa !41
  %i.hi = getelementptr inbounds nuw i8, ptr %.1878, i64 320
  store <8 x float> %i.gy, ptr %i.hi, align 1, !tbaa !41
  %i.hj = getelementptr inbounds nuw i8, ptr %.0499877, i64 96 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.1878, i64 352 ; 2 uses
  %i.hl = add nuw nsw i32 %.0501876, 24           ; 2 uses
  %i.hm = add nuw nsw i32 %.0501876, 47
  %i.hn = icmp slt i32 %i.hm, %i.h
  br i1 %i.hn, label %.lr.ph879, label %.preheader, !llvm.loop !408

.lr.ph886:                                        ; preds = %.preheader, %bb.p
  %.2885 = phi ptr [ %i.ml, %bb.p ], [ %.1.lcssa, %.preheader ] ; 11 uses
  %.1500884 = phi ptr [ %i.mk, %bb.p ], [ %.0499.lcssa, %.preheader ] ; 3 uses
  %.1502883 = phi i32 [ %i.mm, %bb.p ], [ %.0501.lcssa, %.preheader ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.1500884, i64 8
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !44
  %i.hq = load i32, ptr %i.s, align 4, !tbaa !40  ; 3 uses
  %i.hr = sitofp fast i32 %i.hq to float          ; 2 uses
  %i.hs = fmul fast float %i.hp, 5.000000e-01
  %i.ht = fadd fast float %i.hs, 5.000000e-01
  %i.hu = fmul fast float %i.ht, %i.hr
  %i.hv = fadd fast float %i.hu, -5.000000e-01
  %i.hw = fadd fast float %i.hr, -1.000000e+00
  %.sroa.speculated4.i549 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.hv, float 0.000000e+00)
  %.sroa.speculated.i550 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i549, float %i.hw) ; 2 uses
  %i.hx = load <2 x float>, ptr %.1500884, align 4, !tbaa !44
  %i.hy = load <2 x i32>, ptr %i.q, align 4, !tbaa !23 ; 4 uses
  %i.hz = sitofp <2 x i32> %i.hy to <2 x float>   ; 2 uses
  %i.ia = fmul fast <2 x float> %i.hx, splat (float 5.000000e-01)
  %i.ib = fadd fast <2 x float> %i.ia, splat (float 5.000000e-01)
  %i.ic = fmul fast <2 x float> %i.ib, %i.hz
  %i.id = fadd fast <2 x float> %i.ic, splat (float -5.000000e-01)
  %i.ie = fadd fast <2 x float> %i.hz, splat (float -1.000000e+00)
  %i.if = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.id, <2 x float> zeroinitializer)
  %i.ig = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.if, <2 x float> %i.ie) ; 2 uses
  %i.ih = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ig)
  %i.ii = fptosi <2 x float> %i.ih to <2 x i32>   ; 5 uses
  %i.ij = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i550)
  %i.ik = fptosi float %i.ij to i32               ; 9 uses
  %i.il = extractelement <2 x i32> %i.ii, i64 0   ; 6 uses
  %i.im = add nsw i32 %i.il, 1                    ; 5 uses
  %i.in = extractelement <2 x i32> %i.ii, i64 1   ; 6 uses
  %i.io = add nsw i32 %i.in, 1                    ; 5 uses
  %i.ip = add nsw i32 %i.ik, 1                    ; 5 uses
  %i.iq = icmp sgt <2 x i32> %i.ii, splat (i32 -1)
  %i.ir = icmp sgt <2 x i32> %i.hy, %i.ii
  %i.is = and <2 x i1> %i.iq, %i.ir               ; 2 uses
  %i.it = icmp sgt i32 %i.ik, -1
  %i.iu = icmp sgt i32 %i.hq, %i.ik
  %i.iv = and i1 %i.it, %i.iu                     ; 4 uses
  %i.iw = icmp sgt i32 %i.il, -2
  %i.ix = extractelement <2 x i32> %i.hy, i64 0   ; 2 uses
  %i.iy = icmp slt i32 %i.im, %i.ix
  %i.iz = and i1 %i.iw, %i.iy                     ; 2 uses
  %i.ja = icmp sgt i32 %i.in, -2
  %i.jb = extractelement <2 x i32> %i.hy, i64 1   ; 2 uses
  %i.jc = icmp slt i32 %i.io, %i.jb
  %i.jd = and i1 %i.ja, %i.jc                     ; 2 uses
  %i.je = icmp sgt i32 %i.ik, -2
  %i.jf = icmp slt i32 %i.ip, %i.hq
  %i.jg = and i1 %i.je, %i.jf                     ; 4 uses
  %i.jh = extractelement <2 x i1> %i.is, i64 0    ; 2 uses
  %i.ji = extractelement <2 x i1> %i.is, i64 1    ; 2 uses
  %i.jj = and i1 %i.jh, %i.ji                     ; 2 uses
  %i.jk = and i1 %i.iz, %i.ji                     ; 2 uses
  %i.jl = and i1 %i.jh, %i.jd                     ; 2 uses
  %i.jm = and i1 %i.iz, %i.jd                     ; 2 uses
  %i.jn = and i1 %i.jj, %i.iv
  %i.jo = and i1 %i.jk, %i.iv
  %i.jp = and i1 %i.iv, %i.jl
  %i.jq = and i1 %i.iv, %i.jm
  %i.jr = and i1 %i.jj, %i.jg
  %i.js = and i1 %i.jk, %i.jg
  %i.jt = and i1 %i.jl, %i.jg
  %i.ju = and i1 %i.jm, %i.jg
  %i.jv = getelementptr inbounds nuw i8, ptr %.2885, i64 32
  br i1 %i.jn, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph886
  %i.jw = mul i32 %i.jb, %i.ik
  %reass.add842 = add i32 %i.jw, %i.in
  %reass.mul843 = mul i32 %reass.add842, %i.ix
  %i.jx = add i32 %reass.mul843, %i.il
  %i.jy = load i32, ptr %i.t, align 8, !tbaa !16
  %i.jz = mul nsw i32 %i.jy, %i.jx
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph886, %bb.a
  %i.ka = phi i32 [ %i.jz, %bb.a ], [ -1, %.lr.ph886 ]
  store i32 %i.ka, ptr %.2885, align 4, !tbaa !23
  br i1 %i.jo, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.kb = load i32, ptr %i.q, align 4, !tbaa !37
end_hunk_4
begin_hunk_5_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.lg = getelementptr inbounds nuw i8, ptr %.2885, i64 16
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !23
  br i1 %i.js, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.lh = load i32, ptr %i.q, align 4, !tbaa !37
  %i.li = load i32, ptr %i.r, align 8, !tbaa !38
  %i.lj = mul i32 %i.li, %i.ip
  %reass.add852 = add i32 %i.lj, %i.in
  %reass.mul853 = mul i32 %reass.add852, %i.lh
  %i.lk = add i32 %reass.mul853, %i.im
  %i.ll = load i32, ptr %i.t, align 8, !tbaa !16
  %i.lm = mul nsw i32 %i.lk, %i.ll
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ln = phi i32 [ %i.lm, %bb.k ], [ -1, %bb.j ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.2885, i64 20
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !23
  br i1 %i.jt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lp = load i32, ptr %i.q, align 4, !tbaa !37
  %i.lq = load i32, ptr %i.r, align 8, !tbaa !38
  %i.lr = mul i32 %i.lq, %i.ip
  %reass.add854 = add i32 %i.lr, %i.io
  %reass.mul855 = mul i32 %reass.add854, %i.lp
  %i.ls = add i32 %reass.mul855, %i.il
  %i.lt = load i32, ptr %i.t, align 8, !tbaa !16
  %i.lu = mul nsw i32 %i.ls, %i.lt
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.lv = phi i32 [ %i.lu, %bb.m ], [ -1, %bb.l ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.2885, i64 24
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !23
  br i1 %i.ju, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.lx = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ly = load i32, ptr %i.r, align 8, !tbaa !38
  %i.lz = mul i32 %i.ly, %i.ip
  %reass.add856 = add i32 %i.lz, %i.io
  %reass.mul857 = mul i32 %reass.add856, %i.lx
  %i.ma = add i32 %reass.mul857, %i.im
  %i.mb = load i32, ptr %i.t, align 8, !tbaa !16
  %i.mc = mul nsw i32 %i.ma, %i.mb
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.md = phi i32 [ %i.mc, %bb.o ], [ -1, %bb.n ]
  %i.me = getelementptr inbounds nuw i8, ptr %.2885, i64 28
  store i32 %i.md, ptr %i.me, align 4, !tbaa !23
  %i.mf = sitofp <2 x i32> %i.ii to <2 x float>
  %i.mg = fsub fast <2 x float> %i.ig, %i.mf
  store <2 x float> %i.mg, ptr %i.jv, align 4, !tbaa !44
  %i.mh = sitofp fast i32 %i.ik to float
  %i.mi = fsub fast float %.sroa.speculated.i550, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %.2885, i64 40
  store float %i.mi, ptr %i.mj, align 4, !tbaa !44
  %i.mk = getelementptr inbounds nuw i8, ptr %.1500884, i64 12
  %i.ml = getelementptr inbounds nuw i8, ptr %.2885, i64 44 ; 2 uses
  %i.mm = add nuw nsw i32 %.1502883, 3            ; 2 uses
  %i.mn = icmp slt i32 %i.mm, %i.h
  br i1 %i.mn, label %.lr.ph886, label %._crit_edge, !llvm.loop !409

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.ml, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mo = load i32, ptr %i.k, align 8, !tbaa !17
  %i.mp = sext i32 %i.mo to i64
  %i.mq = icmp slt i64 %indvars.iv.next, %i.mp
  br i1 %i.mq, label %_ZN4ncnn3MatD2Ev.exit517, label %.loopexit, !llvm.loop !410

_ZN4ncnn3MatD2Ev.exit516:                         ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.mr = load ptr, ptr %1, align 8, !tbaa !20, !noalias !419 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !19, !noalias !420 ; 2 uses
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !18, !noalias !420 ; 2 uses
  %i.mw = mul i64 %i.mv, %i.mu
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mw ; 2 uses
  %i.my = shl i64 %i.mu, 1
  %i.mz = mul i64 %i.my, %i.mv
  %i.na = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mz ; 2 uses
  %i.nb = icmp sgt i32 %i.h, 7
  br i1 %i.nb, label %.lr.ph, label %.preheader859

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit516
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

.preheader859.loopexit:                           ; preds = %bb.q
  %i.ng = and i32 %i.h, 2147483640
  br label %.preheader859

.preheader859:                                    ; preds = %.preheader859.loopexit, %_ZN4ncnn3MatD2Ev.exit516
  %.0509.lcssa = phi ptr [ %i.mr, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.uk, %.preheader859.loopexit ]
  %.0507.lcssa = phi ptr [ %i.mx, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.ul, %.preheader859.loopexit ]
  %.0505.lcssa = phi ptr [ %i.na, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.um, %.preheader859.loopexit ]
  %.0503.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.ng, %.preheader859.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.un, %.preheader859.loopexit ]
  %i.nh = icmp slt i32 %.0503.lcssa, %i.h
  br i1 %i.nh, label %.lr.ph875, label %.loopexit

.lr.ph875:                                        ; preds = %.preheader859
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.3865 = phi ptr [ %i.i, %.lr.ph ], [ %i.un, %bb.q ] ; 12 uses
  %.0503864 = phi i32 [ 0, %.lr.ph ], [ %i.uo, %bb.q ]
  %.0505863 = phi ptr [ %i.na, %.lr.ph ], [ %i.um, %bb.q ] ; 2 uses
  %.0507862 = phi ptr [ %i.mx, %.lr.ph ], [ %i.ul, %bb.q ] ; 2 uses
  %.0509861 = phi ptr [ %i.mr, %.lr.ph ], [ %i.uk, %bb.q ] ; 2 uses
  %i.nm = load <8 x float>, ptr %.0509861, align 1, !tbaa !41
  %i.nn = load <8 x float>, ptr %.0507862, align 1, !tbaa !41
  %i.no = load <8 x float>, ptr %.0505863, align 1, !tbaa !41
  %i.np = load i32, ptr %i.nc, align 4, !tbaa !37
  %i.nq = sitofp fast i32 %i.np to float
  %i.nr = insertelement <8 x float> poison, float %i.nq, i64 0
  %i.ns = shufflevector <8 x float> %i.nr, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.nt = fmul fast <8 x float> %i.nm, splat (float 5.000000e-01)
  %i.nu = fadd fast <8 x float> %i.nt, splat (float 5.000000e-01)
  %i.nv = fmul fast <8 x float> %i.nu, %i.ns
  %i.nw = fadd fast <8 x float> %i.nv, splat (float -5.000000e-01)
  %i.nx = fadd fast <8 x float> %i.ns, splat (float -1.000000e+00)
  %i.ny = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nw, <8 x float> zeroinitializer)
  %i.nz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.nx, <8 x float> nofpclass(nan inf) %i.ny) ; 2 uses
  %i.oa = load i32, ptr %i.nd, align 8, !tbaa !38
  %i.ob = sitofp fast i32 %i.oa to float
  %i.oc = insertelement <8 x float> poison, float %i.ob, i64 0
  %i.od = shufflevector <8 x float> %i.oc, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.oe = fmul fast <8 x float> %i.nn, splat (float 5.000000e-01)
  %i.of = fadd fast <8 x float> %i.oe, splat (float 5.000000e-01)
  %i.og = fmul fast <8 x float> %i.of, %i.od
  %i.oh = fadd fast <8 x float> %i.og, splat (float -5.000000e-01)
  %i.oi = fadd fast <8 x float> %i.od, splat (float -1.000000e+00)
  %i.oj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.oh, <8 x float> zeroinitializer)
  %i.ok = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.oi, <8 x float> nofpclass(nan inf) %i.oj) ; 2 uses
  %i.ol = load i32, ptr %i.ne, align 4, !tbaa !40
  %i.om = sitofp fast i32 %i.ol to float
  %i.on = insertelement <8 x float> poison, float %i.om, i64 0
  %i.oo = shufflevector <8 x float> %i.on, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.op = fmul fast <8 x float> %i.no, splat (float 5.000000e-01)
  %i.oq = fadd fast <8 x float> %i.op, splat (float 5.000000e-01)
  %i.or = fmul fast <8 x float> %i.oq, %i.oo
  %i.os = fadd fast <8 x float> %i.or, splat (float -5.000000e-01)
  %i.ot = fadd fast <8 x float> %i.oo, splat (float -1.000000e+00)
  %i.ou = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.os, <8 x float> zeroinitializer)
  %i.ov = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ot, <8 x float> nofpclass(nan inf) %i.ou) ; 2 uses
  %i.ow = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nz, i32 1) ; 5 uses
  %i.ox = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ok, i32 1) ; 5 uses
  %i.oy = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ov, i32 1) ; 5 uses
  %i.oz = fadd fast <8 x float> %i.ow, splat (float 1.000000e+00) ; 2 uses
  %i.pa = fadd fast <8 x float> %i.ox, splat (float 1.000000e+00) ; 2 uses
  %i.pb = fadd fast <8 x float> %i.oy, splat (float 1.000000e+00) ; 2 uses
  %i.pc = fcmp fast ogt <8 x float> %i.ow, splat (float -1.000000e+00)
  %i.pd = fcmp fast ogt <8 x float> %i.ns, %i.ow
  %i.pe = and <8 x i1> %i.pc, %i.pd               ; 2 uses
  %i.pf = fcmp fast ogt <8 x float> %i.oz, splat (float -1.000000e+00)
  %i.pg = fcmp fast ogt <8 x float> %i.ns, %i.oz
  %i.ph = and <8 x i1> %i.pf, %i.pg               ; 2 uses
  %i.pi = fcmp fast ogt <8 x float> %i.ox, splat (float -1.000000e+00)
  %i.pj = fcmp fast ogt <8 x float> %i.od, %i.ox
  %i.pk = and <8 x i1> %i.pi, %i.pj
  %i.pl = sext <8 x i1> %i.pk to <8 x i32>        ; 2 uses
  %i.pm = fcmp fast ogt <8 x float> %i.pa, splat (float -1.000000e+00)
  %i.pn = fcmp fast ogt <8 x float> %i.od, %i.pa
  %i.po = and <8 x i1> %i.pm, %i.pn               ; 2 uses
  %i.pp = fcmp fast ogt <8 x float> %i.oy, splat (float -1.000000e+00)
  %i.pq = fcmp fast ogt <8 x float> %i.oo, %i.oy
  %i.pr = and <8 x i1> %i.pp, %i.pq               ; 3 uses
  %i.ps = sext <8 x i1> %i.pr to <8 x i32>
  %i.pt = fcmp fast ogt <8 x float> %i.pb, splat (float -1.000000e+00)
  %i.pu = fcmp fast ogt <8 x float> %i.oo, %i.pb
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
  %i.ql = fmul fast <8 x float> %i.od, %i.ns      ; 2 uses
  %i.qm = fmul fast <8 x float> %i.ox, %i.ns
  %i.qn = fadd fast <8 x float> %i.qm, %i.ow
  %i.qo = fmul fast <8 x float> %i.oy, %i.ql
  %i.qp = fadd fast <8 x float> %i.qn, %i.qo
  %i.qq = load i32, ptr %i.nf, align 8, !tbaa !16
  %i.qr = sitofp fast i32 %i.qq to float
  %i.qs = insertelement <8 x float> poison, float %i.qr, i64 0
  %i.qt = shufflevector <8 x float> %i.qs, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.qu = fmul fast <8 x float> %i.qt, %i.qp      ; 4 uses
  %i.qv = fadd fast <8 x float> %i.qu, %i.qt
  %i.qw = fmul fast <8 x float> %i.qt, %i.ns      ; 2 uses
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
  %i.rw = fsub fast <8 x float> %i.nz, %i.ow      ; 4 uses
  %i.rx = fsub fast <8 x float> %i.ok, %i.ox      ; 4 uses
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
  store <8 x i32> %i.tp, ptr %.3865, align 1, !tbaa !41
  %i.ua = getelementptr inbounds nuw i8, ptr %.3865, i64 32
  store <8 x float> %i.tq, ptr %i.ua, align 1, !tbaa !41
  %i.ub = getelementptr inbounds nuw i8, ptr %.3865, i64 64
  store <8 x float> %i.tr, ptr %i.ub, align 1, !tbaa !41
  %i.uc = getelementptr inbounds nuw i8, ptr %.3865, i64 96
  store <8 x float> %i.ts, ptr %i.uc, align 1, !tbaa !41
  %i.ud = getelementptr inbounds nuw i8, ptr %.3865, i64 128
  store <8 x float> %i.tt, ptr %i.ud, align 1, !tbaa !41
  %i.ue = getelementptr inbounds nuw i8, ptr %.3865, i64 160
  store <8 x float> %i.tu, ptr %i.ue, align 1, !tbaa !41
  %i.uf = getelementptr inbounds nuw i8, ptr %.3865, i64 192
  store <8 x float> %i.tv, ptr %i.uf, align 1, !tbaa !41
  %i.ug = getelementptr inbounds nuw i8, ptr %.3865, i64 224
  store <8 x float> %i.tw, ptr %i.ug, align 1, !tbaa !41
  %i.uh = getelementptr inbounds nuw i8, ptr %.3865, i64 256
  store <8 x float> %i.tx, ptr %i.uh, align 1, !tbaa !41
  %i.ui = getelementptr inbounds nuw i8, ptr %.3865, i64 288
  store <8 x float> %i.ty, ptr %i.ui, align 1, !tbaa !41
  %i.uj = getelementptr inbounds nuw i8, ptr %.3865, i64 320
  store <8 x float> %i.tz, ptr %i.uj, align 1, !tbaa !41
  %i.uk = getelementptr inbounds nuw i8, ptr %.0509861, i64 32 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.0507862, i64 32 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.0505863, i64 32 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.3865, i64 352 ; 2 uses
  %i.uo = add nuw nsw i32 %.0503864, 8            ; 2 uses
  %i.up = or disjoint i32 %i.uo, 7
  %i.uq = icmp slt i32 %i.up, %i.h
  br i1 %i.uq, label %bb.q, label %.preheader859.loopexit, !llvm.loop !415

bb.r:                                             ; preds = %.lr.ph875, %bb.ah
  %.4874 = phi ptr [ %.3.lcssa, %.lr.ph875 ], [ %i.zs, %bb.ah ] ; 11 uses
  %.1504873 = phi i32 [ %.0503.lcssa, %.lr.ph875 ], [ %i.zt, %bb.ah ]
  %.1506872 = phi ptr [ %.0505.lcssa, %.lr.ph875 ], [ %i.zr, %bb.ah ] ; 2 uses
  %.1508871 = phi ptr [ %.0507.lcssa, %.lr.ph875 ], [ %i.zq, %bb.ah ] ; 2 uses
  %.1510870 = phi ptr [ %.0509.lcssa, %.lr.ph875 ], [ %i.zp, %bb.ah ] ; 2 uses
  %i.ur = load float, ptr %.1510870, align 4, !tbaa !44
  %i.us = load float, ptr %.1508871, align 4, !tbaa !44
  %i.ut = load float, ptr %.1506872, align 4, !tbaa !44
  %i.uu = load i32, ptr %i.nk, align 4, !tbaa !40 ; 3 uses
  %i.uv = sitofp fast i32 %i.uu to float          ; 2 uses
  %i.uw = fmul fast float %i.ut, 5.000000e-01
  %i.ux = fadd fast float %i.uw, 5.000000e-01
  %i.uy = fmul fast float %i.ux, %i.uv
  %i.uz = fadd fast float %i.uy, -5.000000e-01
  %i.va = fadd fast float %i.uv, -1.000000e+00
  %.sroa.speculated4.i555 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.uz, float 0.000000e+00)
  %.sroa.speculated.i556 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i555, float %i.va) ; 2 uses
  %i.vb = load <2 x i32>, ptr %i.ni, align 4, !tbaa !23 ; 4 uses
  %i.vc = sitofp <2 x i32> %i.vb to <2 x float>   ; 2 uses
  %i.vd = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.ve = insertelement <2 x float> %i.vd, float %i.us, i64 1
  %i.vf = fmul fast <2 x float> %i.ve, splat (float 5.000000e-01)
  %i.vg = fadd fast <2 x float> %i.vf, splat (float 5.000000e-01)
  %i.vh = fmul fast <2 x float> %i.vg, %i.vc
  %i.vi = fadd fast <2 x float> %i.vh, splat (float -5.000000e-01)
  %i.vj = fadd fast <2 x float> %i.vc, splat (float -1.000000e+00)
  %i.vk = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vi, <2 x float> zeroinitializer)
  %i.vl = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.vk, <2 x float> %i.vj) ; 2 uses
  %i.vm = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.vl)
  %i.vn = fptosi <2 x float> %i.vm to <2 x i32>   ; 5 uses
  %i.vo = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i556)
  %i.vp = fptosi float %i.vo to i32               ; 9 uses
  %i.vq = extractelement <2 x i32> %i.vn, i64 0   ; 6 uses
  %i.vr = add nsw i32 %i.vq, 1                    ; 5 uses
  %i.vs = extractelement <2 x i32> %i.vn, i64 1   ; 6 uses
  %i.vt = add nsw i32 %i.vs, 1                    ; 5 uses
  %i.vu = add nsw i32 %i.vp, 1                    ; 5 uses
  %i.vv = icmp sgt <2 x i32> %i.vn, splat (i32 -1)
  %i.vw = icmp sgt <2 x i32> %i.vb, %i.vn
  %i.vx = and <2 x i1> %i.vv, %i.vw               ; 2 uses
  %i.vy = icmp sgt i32 %i.vp, -1
  %i.vz = icmp sgt i32 %i.uu, %i.vp
  %i.wa = and i1 %i.vy, %i.vz                     ; 4 uses
  %i.wb = icmp sgt i32 %i.vq, -2
  %i.wc = extractelement <2 x i32> %i.vb, i64 0   ; 2 uses
  %i.wd = icmp slt i32 %i.vr, %i.wc
  %i.we = and i1 %i.wb, %i.wd                     ; 2 uses
  %i.wf = icmp sgt i32 %i.vs, -2
  %i.wg = extractelement <2 x i32> %i.vb, i64 1   ; 2 uses
  %i.wh = icmp slt i32 %i.vt, %i.wg
  %i.wi = and i1 %i.wf, %i.wh                     ; 2 uses
  %i.wj = icmp sgt i32 %i.vp, -2
  %i.wk = icmp slt i32 %i.vu, %i.uu
  %i.wl = and i1 %i.wj, %i.wk                     ; 4 uses
  %i.wm = extractelement <2 x i1> %i.vx, i64 0    ; 2 uses
  %i.wn = extractelement <2 x i1> %i.vx, i64 1    ; 2 uses
  %i.wo = and i1 %i.wm, %i.wn                     ; 2 uses
  %i.wp = and i1 %i.we, %i.wn                     ; 2 uses
  %i.wq = and i1 %i.wm, %i.wi                     ; 2 uses
  %i.wr = and i1 %i.we, %i.wi                     ; 2 uses
  %i.ws = and i1 %i.wo, %i.wa
  %i.wt = and i1 %i.wp, %i.wa
  %i.wu = and i1 %i.wa, %i.wq
  %i.wv = and i1 %i.wa, %i.wr
  %i.ww = and i1 %i.wo, %i.wl
  %i.wx = and i1 %i.wp, %i.wl
  %i.wy = and i1 %i.wq, %i.wl
  %i.wz = and i1 %i.wr, %i.wl
  %i.xa = getelementptr inbounds nuw i8, ptr %.4874, i64 32
  br i1 %i.ws, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.xb = mul i32 %i.wg, %i.vp
  %reass.add = add i32 %i.xb, %i.vs
  %reass.mul = mul i32 %reass.add, %i.wc
  %i.xc = add i32 %reass.mul, %i.vq
  %i.xd = load i32, ptr %i.nl, align 8, !tbaa !16
  %i.xe = mul nsw i32 %i.xd, %i.xc
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
end_hunk_5
begin_hunk_6_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.yq = load i32, ptr %i.nl, align 8, !tbaa !16
  %i.yr = mul nsw i32 %i.yp, %i.yq
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.ys = phi i32 [ %i.yr, %bb.ac ], [ -1, %bb.ab ]
  %i.yt = getelementptr inbounds nuw i8, ptr %.4874, i64 20
  store i32 %i.ys, ptr %i.yt, align 4, !tbaa !23
  br i1 %i.wy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.yu = load i32, ptr %i.ni, align 4, !tbaa !37
  %i.yv = load i32, ptr %i.nj, align 8, !tbaa !38
  %i.yw = mul i32 %i.yv, %i.vu
  %reass.add838 = add i32 %i.yw, %i.vt
  %reass.mul839 = mul i32 %reass.add838, %i.yu
  %i.yx = add i32 %reass.mul839, %i.vq
  %i.yy = load i32, ptr %i.nl, align 8, !tbaa !16
  %i.yz = mul nsw i32 %i.yx, %i.yy
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.za = phi i32 [ %i.yz, %bb.ae ], [ -1, %bb.ad ]
  %i.zb = getelementptr inbounds nuw i8, ptr %.4874, i64 24
  store i32 %i.za, ptr %i.zb, align 4, !tbaa !23
  br i1 %i.wz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.zc = load i32, ptr %i.ni, align 4, !tbaa !37
  %i.zd = load i32, ptr %i.nj, align 8, !tbaa !38
  %i.ze = mul i32 %i.zd, %i.vu
  %reass.add840 = add i32 %i.ze, %i.vt
  %reass.mul841 = mul i32 %reass.add840, %i.zc
  %i.zf = add i32 %reass.mul841, %i.vr
  %i.zg = load i32, ptr %i.nl, align 8, !tbaa !16
  %i.zh = mul nsw i32 %i.zf, %i.zg
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.zi = phi i32 [ %i.zh, %bb.ag ], [ -1, %bb.af ]
  %i.zj = getelementptr inbounds nuw i8, ptr %.4874, i64 28
  store i32 %i.zi, ptr %i.zj, align 4, !tbaa !23
  %i.zk = sitofp <2 x i32> %i.vn to <2 x float>
  %i.zl = fsub fast <2 x float> %i.vl, %i.zk
  store <2 x float> %i.zl, ptr %i.xa, align 4, !tbaa !44
  %i.zm = sitofp fast i32 %i.vp to float
  %i.zn = fsub fast float %.sroa.speculated.i556, %i.zm
  %i.zo = getelementptr inbounds nuw i8, ptr %.4874, i64 40
  store float %i.zn, ptr %i.zo, align 4, !tbaa !44
  %i.zp = getelementptr inbounds nuw i8, ptr %.1510870, i64 4
  %i.zq = getelementptr inbounds nuw i8, ptr %.1508871, i64 4
  %i.zr = getelementptr inbounds nuw i8, ptr %.1506872, i64 4
  %i.zs = getelementptr inbounds nuw i8, ptr %.4874, i64 44
  %i.zt = add nuw nsw i32 %.1504873, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.zt, %i.h
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !416

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader859, %.preheader858
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = mul i32 %i.e, %i.g                       ; 9 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !20, !noalias !434 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader858, label %_ZN4ncnn3MatD2Ev.exit516

.preheader858:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !17
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader858
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %i.h, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0889 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !20, !noalias !435
  %i.v = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !435
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !435
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 2 uses
  br i1 %i.p, label %.lr.ph879, label %.preheader

.preheader:                                       ; preds = %.lr.ph879, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hi, %.lr.ph879 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.z, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hg, %.lr.ph879 ]
  %.1.lcssa = phi ptr [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hh, %.lr.ph879 ] ; 2 uses
  %i.aa = icmp slt i32 %.0501.lcssa, %i.h
  br i1 %i.aa, label %.lr.ph886, label %._crit_edge

.lr.ph879:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph879
  %.1878 = phi ptr [ %i.hh, %.lr.ph879 ], [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499877 = phi ptr [ %i.hg, %.lr.ph879 ], [ %i.z, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501876 = phi i32 [ %i.hi, %.lr.ph879 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.ab = load <8 x float>, ptr %.0499877, align 1, !tbaa !41 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0499877, i64 32
  %i.ad = load <8 x float>, ptr %i.ac, align 1, !tbaa !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0499877, i64 64
  %i.af = load <8 x float>, ptr %i.ae, align 1, !tbaa !41 ; 2 uses
  %i.ag = shufflevector <8 x float> %i.ab, <8 x float> %i.ad, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ah = shufflevector <8 x float> %i.ab, <8 x float> %i.af, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ai = shufflevector <8 x float> %i.ad, <8 x float> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aj = shufflevector <8 x float> %i.ag, <8 x float> %i.ah, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ak = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.al = shufflevector <8 x float> %i.ag, <8 x float> %i.ak, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.am = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.an = shufflevector <8 x float> %i.aj, <8 x float> %i.ai, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ap = sitofp fast i32 %i.ao to float
  %i.aq = insertelement <8 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <8 x float> %i.aq, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.as = fmul fast <8 x float> %i.al, splat (float 5.000000e-01)
  %i.at = fadd fast <8 x float> %i.as, splat (float 5.000000e-01)
  %i.au = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00) ; 2 uses
  %i.av = fmul fast <8 x float> %i.at, %i.au
  %i.aw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.av, <8 x float> zeroinitializer)
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.aw) ; 2 uses
  %i.ay = load i32, ptr %i.r, align 8, !tbaa !38
  %i.az = sitofp fast i32 %i.ay to float
  %i.ba = insertelement <8 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <8 x float> %i.ba, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bc = fmul fast <8 x float> %i.am, splat (float 5.000000e-01)
  %i.bd = fadd fast <8 x float> %i.bc, splat (float 5.000000e-01)
  %i.be = fadd fast <8 x float> %i.bb, splat (float -1.000000e+00) ; 2 uses
  %i.bf = fmul fast <8 x float> %i.be, %i.bd
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bf, <8 x float> zeroinitializer)
  %i.bh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.bg) ; 2 uses
  %i.bi = load i32, ptr %i.s, align 4, !tbaa !40
  %i.bj = sitofp fast i32 %i.bi to float
  %i.bk = insertelement <8 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <8 x float> %i.bk, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bm = fmul fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.bn = fadd fast <8 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = fadd fast <8 x float> %i.bl, splat (float -1.000000e+00) ; 2 uses
  %i.bp = fmul fast <8 x float> %i.bo, %i.bn
  %i.bq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bp, <8 x float> zeroinitializer)
  %i.br = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bo, <8 x float> nofpclass(nan inf) %i.bq) ; 2 uses
  %i.bs = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ax, i32 1) ; 5 uses
  %i.bt = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bh, i32 1) ; 5 uses
  %i.bu = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.br, i32 1) ; 5 uses
  %i.bv = fadd fast <8 x float> %i.bs, splat (float 1.000000e+00) ; 2 uses
  %i.bw = fadd fast <8 x float> %i.bt, splat (float 1.000000e+00) ; 2 uses
  %i.bx = fadd fast <8 x float> %i.bu, splat (float 1.000000e+00) ; 2 uses
  %i.by = fcmp fast ogt <8 x float> %i.bs, splat (float -1.000000e+00)
  %i.bz = fcmp fast ogt <8 x float> %i.ar, %i.bs
  %i.ca = and <8 x i1> %i.by, %i.bz               ; 2 uses
  %i.cb = fcmp fast ogt <8 x float> %i.bv, splat (float -1.000000e+00)
  %i.cc = fcmp fast ogt <8 x float> %i.ar, %i.bv
  %i.cd = and <8 x i1> %i.cb, %i.cc               ; 2 uses
  %i.ce = fcmp fast ogt <8 x float> %i.bt, splat (float -1.000000e+00)
  %i.cf = fcmp fast ogt <8 x float> %i.bb, %i.bt
  %i.cg = and <8 x i1> %i.ce, %i.cf
  %i.ch = sext <8 x i1> %i.cg to <8 x i32>        ; 2 uses
  %i.ci = fcmp fast ogt <8 x float> %i.bw, splat (float -1.000000e+00)
  %i.cj = fcmp fast ogt <8 x float> %i.bb, %i.bw
  %i.ck = and <8 x i1> %i.ci, %i.cj               ; 2 uses
  %i.cl = fcmp fast ogt <8 x float> %i.bu, splat (float -1.000000e+00)
  %i.cm = fcmp fast ogt <8 x float> %i.bl, %i.bu
  %i.cn = and <8 x i1> %i.cl, %i.cm               ; 3 uses
  %i.co = sext <8 x i1> %i.cn to <8 x i32>
  %i.cp = fcmp fast ogt <8 x float> %i.bx, splat (float -1.000000e+00)
  %i.cq = fcmp fast ogt <8 x float> %i.bl, %i.bx
  %i.cr = and <8 x i1> %i.cp, %i.cq               ; 4 uses
  %i.cs = and <8 x i1> %i.ca, %i.ck               ; 2 uses
  %i.ct = and <8 x i1> %i.cd, %i.ck               ; 2 uses
  %i.cu = bitcast <8 x i32> %i.ch to <8 x float>
  %i.cv = select <8 x i1> %i.ca, <8 x float> %i.cu, <8 x float> zeroinitializer ; 2 uses
  %i.cw = select <8 x i1> %i.cn, <8 x float> %i.cv, <8 x float> zeroinitializer
  %i.cx = bitcast <8 x i32> %i.ch to <8 x float>
  %i.cy = select <8 x i1> %i.cd, <8 x float> %i.cx, <8 x float> zeroinitializer ; 2 uses
  %i.cz = select <8 x i1> %i.cn, <8 x float> %i.cy, <8 x float> zeroinitializer
  %i.da = bitcast <8 x i32> %i.co to <8 x float>  ; 2 uses
  %i.db = select <8 x i1> %i.cs, <8 x float> %i.da, <8 x float> zeroinitializer
  %i.dc = select <8 x i1> %i.ct, <8 x float> %i.da, <8 x float> zeroinitializer
  %i.dd = select <8 x i1> %i.cr, <8 x float> %i.cv, <8 x float> zeroinitializer
  %i.de = select <8 x i1> %i.cr, <8 x float> %i.cy, <8 x float> zeroinitializer
  %i.df = and <8 x i1> %i.cs, %i.cr
  %i.dg = and <8 x i1> %i.ct, %i.cr
  %i.dh = fmul fast <8 x float> %i.bb, %i.ar      ; 2 uses
  %i.di = fmul fast <8 x float> %i.bt, %i.ar
  %i.dj = fadd fast <8 x float> %i.di, %i.bs
  %i.dk = fmul fast <8 x float> %i.bu, %i.dh
  %i.dl = fadd fast <8 x float> %i.dj, %i.dk
  %i.dm = load i32, ptr %i.t, align 8, !tbaa !16
  %i.dn = sitofp fast i32 %i.dm to float
  %i.do = insertelement <8 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <8 x float> %i.do, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.dq = fmul fast <8 x float> %i.dp, %i.dl      ; 4 uses
  %i.dr = fadd fast <8 x float> %i.dq, %i.dp
  %i.ds = fmul fast <8 x float> %i.dp, %i.ar      ; 2 uses
  %i.dt = fadd fast <8 x float> %i.dq, %i.ds      ; 2 uses
  %i.du = fadd fast <8 x float> %i.dt, %i.dp
  %i.dv = fmul fast <8 x float> %i.dp, %i.dh
  %i.dw = fadd fast <8 x float> %i.dv, %i.dq      ; 3 uses
  %i.dx = fadd fast <8 x float> %i.dw, %i.dp
  %i.dy = fadd fast <8 x float> %i.dw, %i.ds      ; 2 uses
  %i.dz = fadd fast <8 x float> %i.dy, %i.dp
  %i.ea = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dq, <8 x float> nofpclass(nan inf) %i.cw)
  %i.eb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dr, <8 x float> nofpclass(nan inf) %i.cz)
  %i.ec = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dt, <8 x float> nofpclass(nan inf) %i.db)
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.du, <8 x float> nofpclass(nan inf) %i.dc)
  %i.ee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dw, <8 x float> nofpclass(nan inf) %i.dd)
  %i.ef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.de)
  %i.eg = select <8 x i1> %i.df, <8 x float> %i.dy, <8 x float> splat (float -1.000000e+00)
  %i.eh = select <8 x i1> %i.dg, <8 x float> %i.dz, <8 x float> splat (float -1.000000e+00)
  %i.ei = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ea) ; 3 uses
  %i.ej = bitcast <8 x i32> %i.ei to <8 x float>
  %i.ek = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 4 uses
  %i.el = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ec) ; 4 uses
  %i.em = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ed) ; 4 uses
  %i.en = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ee) ; 4 uses
  %i.eo = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ef) ; 4 uses
  %i.ep = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eg) ; 4 uses
  %i.eq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eh) ; 3 uses
  %i.er = bitcast <8 x i32> %i.eq to <8 x float>  ; 2 uses
  %i.es = fsub fast <8 x float> %i.ax, %i.bs      ; 4 uses
  %i.et = fsub fast <8 x float> %i.bh, %i.bt      ; 4 uses
  %i.eu = fsub fast <8 x float> %i.br, %i.bu      ; 4 uses
  %i.ev = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ek, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ew = shufflevector <8 x i32> %i.ei, <8 x i32> %i.ek, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ex = bitcast <8 x i32> %i.ew to <8 x float>  ; 2 uses
  %i.ey = shufflevector <8 x i32> %i.el, <8 x i32> %i.em, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ez = shufflevector <8 x i32> %i.el, <8 x i32> %i.em, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fa = shufflevector <8 x i32> %i.en, <8 x i32> %i.eo, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x i32> %i.en, <8 x i32> %i.eo, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x i32> %i.ep, <8 x i32> %i.eq, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i32> %i.ep, <8 x i32> %i.eq, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fe = bitcast <8 x i32> %i.fd to <8 x float>
  %i.ff = shufflevector <8 x float> %i.es, <8 x float> %i.et, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x float> %i.es, <8 x float> %i.et, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fh = shufflevector <8 x float> %i.eu, <8 x float> %i.ej, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fi = shufflevector <8 x float> %i.eu, <8 x float> %i.ex, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fj = shufflevector <8 x i32> %i.ek, <8 x i32> %i.el, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fk = shufflevector <8 x i32> %i.ek, <8 x i32> %i.el, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fl = bitcast <8 x i32> %i.fk to <8 x float>
  %i.fm = shufflevector <8 x i32> %i.em, <8 x i32> %i.en, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fn = shufflevector <8 x i32> %i.em, <8 x i32> %i.en, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fo = shufflevector <8 x i32> %i.eo, <8 x i32> %i.ep, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fp = bitcast <8 x i32> %i.fo to <8 x float>
  %i.fq = shufflevector <8 x i32> %i.eo, <8 x i32> %i.ep, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fr = shufflevector <8 x float> %i.er, <8 x float> %i.es, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fs = shufflevector <8 x float> %i.er, <8 x float> %i.es, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ft = shufflevector <8 x float> %i.et, <8 x float> %i.eu, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fu = shufflevector <8 x float> %i.et, <8 x float> %i.eu, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fv = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ey, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fw = bitcast <8 x i32> %i.fv to <8 x float>
  %i.fx = shufflevector <8 x i32> %i.fa, <8 x i32> %i.fc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.fy = bitcast <8 x i32> %i.fx to <8 x float>
  %i.fz = shufflevector <8 x float> %i.ff, <8 x float> %i.fh, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.ga = shufflevector <8 x i32> %i.fj, <8 x i32> %i.fm, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gb = bitcast <8 x i32> %i.ga to <8 x float>  ; 2 uses
  %i.gc = shufflevector <8 x float> %i.fp, <8 x float> %i.fr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gd = shufflevector <8 x float> %i.ft, <8 x float> %i.ex, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.ge = shufflevector <8 x i32> %i.ez, <8 x i32> %i.fb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gf = bitcast <8 x i32> %i.ge to <8 x float>  ; 2 uses
  %i.gg = shufflevector <8 x float> %i.fe, <8 x float> %i.fg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gh = shufflevector <8 x float> %i.fi, <8 x float> %i.fl, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gi = shufflevector <8 x i32> %i.fn, <8 x i32> %i.fq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gj = bitcast <8 x i32> %i.gi to <8 x float>  ; 2 uses
  %i.gk = shufflevector <8 x float> %i.fs, <8 x float> %i.fu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gm = shufflevector <8 x float> %i.fz, <8 x float> %i.gb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gn = shufflevector <8 x float> %i.gc, <8 x float> %i.gd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.go = shufflevector <8 x float> %i.gf, <8 x float> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gp = shufflevector <8 x float> %i.gh, <8 x float> %i.gj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gq = shufflevector <8 x float> %i.gk, <8 x float> %i.fw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gr = shufflevector <8 x float> %i.fy, <8 x float> %i.fz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gs = shufflevector <8 x float> %i.gb, <8 x float> %i.gc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gt = shufflevector <8 x float> %i.gd, <8 x float> %i.gf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gu = shufflevector <8 x float> %i.gg, <8 x float> %i.gh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gv = shufflevector <8 x float> %i.gj, <8 x float> %i.gk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gl, ptr %.1878, align 1, !tbaa !41
  %i.gw = getelementptr inbounds nuw i8, ptr %.1878, i64 32
  store <8 x float> %i.gm, ptr %i.gw, align 1, !tbaa !41
  %i.gx = getelementptr inbounds nuw i8, ptr %.1878, i64 64
  store <8 x float> %i.gn, ptr %i.gx, align 1, !tbaa !41
  %i.gy = getelementptr inbounds nuw i8, ptr %.1878, i64 96
  store <8 x float> %i.go, ptr %i.gy, align 1, !tbaa !41
  %i.gz = getelementptr inbounds nuw i8, ptr %.1878, i64 128
  store <8 x float> %i.gp, ptr %i.gz, align 1, !tbaa !41
  %i.ha = getelementptr inbounds nuw i8, ptr %.1878, i64 160
  store <8 x float> %i.gq, ptr %i.ha, align 1, !tbaa !41
  %i.hb = getelementptr inbounds nuw i8, ptr %.1878, i64 192
  store <8 x float> %i.gr, ptr %i.hb, align 1, !tbaa !41
  %i.hc = getelementptr inbounds nuw i8, ptr %.1878, i64 224
  store <8 x float> %i.gs, ptr %i.hc, align 1, !tbaa !41
  %i.hd = getelementptr inbounds nuw i8, ptr %.1878, i64 256
  store <8 x float> %i.gt, ptr %i.hd, align 1, !tbaa !41
  %i.he = getelementptr inbounds nuw i8, ptr %.1878, i64 288
  store <8 x float> %i.gu, ptr %i.he, align 1, !tbaa !41
  %i.hf = getelementptr inbounds nuw i8, ptr %.1878, i64 320
  store <8 x float> %i.gv, ptr %i.hf, align 1, !tbaa !41
  %i.hg = getelementptr inbounds nuw i8, ptr %.0499877, i64 96 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.1878, i64 352 ; 2 uses
  %i.hi = add nuw nsw i32 %.0501876, 24           ; 2 uses
  %i.hj = add nuw nsw i32 %.0501876, 47
  %i.hk = icmp slt i32 %i.hj, %i.h
  br i1 %i.hk, label %.lr.ph879, label %.preheader, !llvm.loop !425

.lr.ph886:                                        ; preds = %.preheader, %bb.p
  %.2885 = phi ptr [ %i.mk, %bb.p ], [ %.1.lcssa, %.preheader ] ; 11 uses
  %.1500884 = phi ptr [ %i.mj, %bb.p ], [ %.0499.lcssa, %.preheader ] ; 3 uses
  %.1502883 = phi i32 [ %i.ml, %bb.p ], [ %.0501.lcssa, %.preheader ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.1500884, i64 8
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !44
  %i.hn = load i32, ptr %i.s, align 4, !tbaa !40  ; 4 uses
  %i.ho = fmul fast float %i.hm, 5.000000e-01
  %i.hp = fadd fast float %i.ho, 5.000000e-01
  %i.hq = add nsw i32 %i.hn, -1
  %i.hr = sitofp fast i32 %i.hq to float
  %i.hs = fmul fast float %i.hp, %i.hr
  %i.ht = sitofp fast i32 %i.hn to float
  %i.hu = fadd fast float %i.ht, -1.000000e+00
  %.sroa.speculated4.i549 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.hs, float 0.000000e+00)
  %.sroa.speculated.i550 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i549, float %i.hu) ; 2 uses
  %i.hv = load <2 x float>, ptr %.1500884, align 4, !tbaa !44
  %i.hw = load <2 x i32>, ptr %i.q, align 4, !tbaa !23 ; 5 uses
  %i.hx = fmul fast <2 x float> %i.hv, splat (float 5.000000e-01)
  %i.hy = fadd fast <2 x float> %i.hx, splat (float 5.000000e-01)
  %i.hz = add nsw <2 x i32> %i.hw, splat (i32 -1)
  %i.ia = sitofp <2 x i32> %i.hz to <2 x float>
  %i.ib = fmul fast <2 x float> %i.hy, %i.ia
  %i.ic = sitofp <2 x i32> %i.hw to <2 x float>
  %i.id = fadd fast <2 x float> %i.ic, splat (float -1.000000e+00)
  %i.ie = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ib, <2 x float> zeroinitializer)
  %i.if = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ie, <2 x float> %i.id) ; 2 uses
  %i.ig = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.if)
  %i.ih = fptosi <2 x float> %i.ig to <2 x i32>   ; 5 uses
  %i.ii = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i550)
  %i.ij = fptosi float %i.ii to i32               ; 9 uses
  %i.ik = extractelement <2 x i32> %i.ih, i64 0   ; 6 uses
  %i.il = add nsw i32 %i.ik, 1                    ; 5 uses
  %i.im = extractelement <2 x i32> %i.ih, i64 1   ; 6 uses
  %i.in = add nsw i32 %i.im, 1                    ; 5 uses
  %i.io = add nsw i32 %i.ij, 1                    ; 5 uses
  %i.ip = icmp sgt <2 x i32> %i.ih, splat (i32 -1)
  %i.iq = icmp sgt <2 x i32> %i.hw, %i.ih
  %i.ir = and <2 x i1> %i.ip, %i.iq               ; 2 uses
  %i.is = icmp sgt i32 %i.ij, -1
  %i.it = icmp sgt i32 %i.hn, %i.ij
  %i.iu = and i1 %i.is, %i.it                     ; 4 uses
  %i.iv = icmp sgt i32 %i.ik, -2
  %i.iw = extractelement <2 x i32> %i.hw, i64 0   ; 2 uses
  %i.ix = icmp slt i32 %i.il, %i.iw
  %i.iy = and i1 %i.iv, %i.ix                     ; 2 uses
  %i.iz = icmp sgt i32 %i.im, -2
  %i.ja = extractelement <2 x i32> %i.hw, i64 1   ; 2 uses
  %i.jb = icmp slt i32 %i.in, %i.ja
  %i.jc = and i1 %i.iz, %i.jb                     ; 2 uses
  %i.jd = icmp sgt i32 %i.ij, -2
  %i.je = icmp slt i32 %i.io, %i.hn
  %i.jf = and i1 %i.jd, %i.je                     ; 4 uses
  %i.jg = extractelement <2 x i1> %i.ir, i64 0    ; 2 uses
  %i.jh = extractelement <2 x i1> %i.ir, i64 1    ; 2 uses
  %i.ji = and i1 %i.jg, %i.jh                     ; 2 uses
  %i.jj = and i1 %i.iy, %i.jh                     ; 2 uses
  %i.jk = and i1 %i.jg, %i.jc                     ; 2 uses
  %i.jl = and i1 %i.iy, %i.jc                     ; 2 uses
  %i.jm = and i1 %i.ji, %i.iu
  %i.jn = and i1 %i.jj, %i.iu
  %i.jo = and i1 %i.iu, %i.jk
  %i.jp = and i1 %i.iu, %i.jl
  %i.jq = and i1 %i.ji, %i.jf
  %i.jr = and i1 %i.jj, %i.jf
  %i.js = and i1 %i.jk, %i.jf
  %i.jt = and i1 %i.jl, %i.jf
  %i.ju = getelementptr inbounds nuw i8, ptr %.2885, i64 32
  br i1 %i.jm, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph886
  %i.jv = mul i32 %i.ja, %i.ij
  %reass.add842 = add i32 %i.jv, %i.im
  %reass.mul843 = mul i32 %reass.add842, %i.iw
  %i.jw = add i32 %reass.mul843, %i.ik
  %i.jx = load i32, ptr %i.t, align 8, !tbaa !16
  %i.jy = mul nsw i32 %i.jx, %i.jw
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph886, %bb.a
  %i.jz = phi i32 [ %i.jy, %bb.a ], [ -1, %.lr.ph886 ]
  store i32 %i.jz, ptr %.2885, align 4, !tbaa !23
  br i1 %i.jn, label %bb.c, label %bb.d

end_hunk_6
begin_hunk_7_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.le = phi i32 [ %i.ld, %bb.i ], [ -1, %bb.h ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.2885, i64 16
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !23
  br i1 %i.jr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.lg = load i32, ptr %i.q, align 4, !tbaa !37
  %i.lh = load i32, ptr %i.r, align 8, !tbaa !38
  %i.li = mul i32 %i.lh, %i.io
  %reass.add852 = add i32 %i.li, %i.im
  %reass.mul853 = mul i32 %reass.add852, %i.lg
  %i.lj = add i32 %reass.mul853, %i.il
  %i.lk = load i32, ptr %i.t, align 8, !tbaa !16
  %i.ll = mul nsw i32 %i.lj, %i.lk
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.lm = phi i32 [ %i.ll, %bb.k ], [ -1, %bb.j ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.2885, i64 20
  store i32 %i.lm, ptr %i.ln, align 4, !tbaa !23
  br i1 %i.js, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lo = load i32, ptr %i.q, align 4, !tbaa !37
  %i.lp = load i32, ptr %i.r, align 8, !tbaa !38
  %i.lq = mul i32 %i.lp, %i.io
  %reass.add854 = add i32 %i.lq, %i.in
  %reass.mul855 = mul i32 %reass.add854, %i.lo
  %i.lr = add i32 %reass.mul855, %i.ik
  %i.ls = load i32, ptr %i.t, align 8, !tbaa !16
  %i.lt = mul nsw i32 %i.lr, %i.ls
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.lu = phi i32 [ %i.lt, %bb.m ], [ -1, %bb.l ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.2885, i64 24
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !23
  br i1 %i.jt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.lw = load i32, ptr %i.q, align 4, !tbaa !37
  %i.lx = load i32, ptr %i.r, align 8, !tbaa !38
  %i.ly = mul i32 %i.lx, %i.io
  %reass.add856 = add i32 %i.ly, %i.in
  %reass.mul857 = mul i32 %reass.add856, %i.lw
  %i.lz = add i32 %reass.mul857, %i.il
  %i.ma = load i32, ptr %i.t, align 8, !tbaa !16
  %i.mb = mul nsw i32 %i.lz, %i.ma
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mc = phi i32 [ %i.mb, %bb.o ], [ -1, %bb.n ]
  %i.md = getelementptr inbounds nuw i8, ptr %.2885, i64 28
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !23
  %i.me = sitofp <2 x i32> %i.ih to <2 x float>
  %i.mf = fsub fast <2 x float> %i.if, %i.me
  store <2 x float> %i.mf, ptr %i.ju, align 4, !tbaa !44
  %i.mg = sitofp fast i32 %i.ij to float
  %i.mh = fsub fast float %.sroa.speculated.i550, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %.2885, i64 40
  store float %i.mh, ptr %i.mi, align 4, !tbaa !44
  %i.mj = getelementptr inbounds nuw i8, ptr %.1500884, i64 12
  %i.mk = getelementptr inbounds nuw i8, ptr %.2885, i64 44 ; 2 uses
  %i.ml = add nuw nsw i32 %.1502883, 3            ; 2 uses
  %i.mm = icmp slt i32 %i.ml, %i.h
  br i1 %i.mm, label %.lr.ph886, label %._crit_edge, !llvm.loop !426

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.mk, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mn = load i32, ptr %i.k, align 8, !tbaa !17
  %i.mo = sext i32 %i.mn to i64
  %i.mp = icmp slt i64 %indvars.iv.next, %i.mo
  br i1 %i.mp, label %_ZN4ncnn3MatD2Ev.exit517, label %.loopexit, !llvm.loop !427

_ZN4ncnn3MatD2Ev.exit516:                         ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.mq = load ptr, ptr %1, align 8, !tbaa !20, !noalias !436 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mt = load i64, ptr %i.mr, align 8, !tbaa !19, !noalias !437 ; 2 uses
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !18, !noalias !437 ; 2 uses
  %i.mv = mul i64 %i.mu, %i.mt
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mv ; 2 uses
  %i.mx = shl i64 %i.mt, 1
  %i.my = mul i64 %i.mx, %i.mu
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.my ; 2 uses
  %i.na = icmp sgt i32 %i.h, 7
  br i1 %i.na, label %.lr.ph, label %.preheader859

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit516
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

.preheader859.loopexit:                           ; preds = %bb.q
  %i.nf = and i32 %i.h, 2147483640
  br label %.preheader859

.preheader859:                                    ; preds = %.preheader859.loopexit, %_ZN4ncnn3MatD2Ev.exit516
  %.0509.lcssa = phi ptr [ %i.mq, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.ug, %.preheader859.loopexit ]
  %.0507.lcssa = phi ptr [ %i.mw, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.uh, %.preheader859.loopexit ]
  %.0505.lcssa = phi ptr [ %i.mz, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.ui, %.preheader859.loopexit ]
  %.0503.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.nf, %.preheader859.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.uj, %.preheader859.loopexit ]
  %i.ng = icmp slt i32 %.0503.lcssa, %i.h
  br i1 %i.ng, label %.lr.ph875, label %.loopexit

.lr.ph875:                                        ; preds = %.preheader859
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.3865 = phi ptr [ %i.i, %.lr.ph ], [ %i.uj, %bb.q ] ; 12 uses
  %.0503864 = phi i32 [ 0, %.lr.ph ], [ %i.uk, %bb.q ]
  %.0505863 = phi ptr [ %i.mz, %.lr.ph ], [ %i.ui, %bb.q ] ; 2 uses
  %.0507862 = phi ptr [ %i.mw, %.lr.ph ], [ %i.uh, %bb.q ] ; 2 uses
  %.0509861 = phi ptr [ %i.mq, %.lr.ph ], [ %i.ug, %bb.q ] ; 2 uses
  %i.nl = load <8 x float>, ptr %.0509861, align 1, !tbaa !41
  %i.nm = load <8 x float>, ptr %.0507862, align 1, !tbaa !41
  %i.nn = load <8 x float>, ptr %.0505863, align 1, !tbaa !41
  %i.no = load i32, ptr %i.nb, align 4, !tbaa !37
  %i.np = sitofp fast i32 %i.no to float
  %i.nq = insertelement <8 x float> poison, float %i.np, i64 0
  %i.nr = shufflevector <8 x float> %i.nq, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.ns = fmul fast <8 x float> %i.nl, splat (float 5.000000e-01)
  %i.nt = fadd fast <8 x float> %i.ns, splat (float 5.000000e-01)
  %i.nu = fadd fast <8 x float> %i.nr, splat (float -1.000000e+00) ; 2 uses
  %i.nv = fmul fast <8 x float> %i.nu, %i.nt
  %i.nw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nv, <8 x float> zeroinitializer)
  %i.nx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.nu, <8 x float> nofpclass(nan inf) %i.nw) ; 2 uses
  %i.ny = load i32, ptr %i.nc, align 8, !tbaa !38
  %i.nz = sitofp fast i32 %i.ny to float
  %i.oa = insertelement <8 x float> poison, float %i.nz, i64 0
  %i.ob = shufflevector <8 x float> %i.oa, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.oc = fmul fast <8 x float> %i.nm, splat (float 5.000000e-01)
  %i.od = fadd fast <8 x float> %i.oc, splat (float 5.000000e-01)
  %i.oe = fadd fast <8 x float> %i.ob, splat (float -1.000000e+00) ; 2 uses
  %i.of = fmul fast <8 x float> %i.oe, %i.od
  %i.og = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.of, <8 x float> zeroinitializer)
  %i.oh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.oe, <8 x float> nofpclass(nan inf) %i.og) ; 2 uses
  %i.oi = load i32, ptr %i.nd, align 4, !tbaa !40
  %i.oj = sitofp fast i32 %i.oi to float
  %i.ok = insertelement <8 x float> poison, float %i.oj, i64 0
  %i.ol = shufflevector <8 x float> %i.ok, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.om = fmul fast <8 x float> %i.nn, splat (float 5.000000e-01)
  %i.on = fadd fast <8 x float> %i.om, splat (float 5.000000e-01)
  %i.oo = fadd fast <8 x float> %i.ol, splat (float -1.000000e+00) ; 2 uses
  %i.op = fmul fast <8 x float> %i.oo, %i.on
  %i.oq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.op, <8 x float> zeroinitializer)
  %i.or = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.oo, <8 x float> nofpclass(nan inf) %i.oq) ; 2 uses
  %i.os = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nx, i32 1) ; 5 uses
  %i.ot = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.oh, i32 1) ; 5 uses
  %i.ou = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.or, i32 1) ; 5 uses
  %i.ov = fadd fast <8 x float> %i.os, splat (float 1.000000e+00) ; 2 uses
  %i.ow = fadd fast <8 x float> %i.ot, splat (float 1.000000e+00) ; 2 uses
  %i.ox = fadd fast <8 x float> %i.ou, splat (float 1.000000e+00) ; 2 uses
  %i.oy = fcmp fast ogt <8 x float> %i.os, splat (float -1.000000e+00)
  %i.oz = fcmp fast ogt <8 x float> %i.nr, %i.os
  %i.pa = and <8 x i1> %i.oy, %i.oz               ; 2 uses
  %i.pb = fcmp fast ogt <8 x float> %i.ov, splat (float -1.000000e+00)
  %i.pc = fcmp fast ogt <8 x float> %i.nr, %i.ov
  %i.pd = and <8 x i1> %i.pb, %i.pc               ; 2 uses
  %i.pe = fcmp fast ogt <8 x float> %i.ot, splat (float -1.000000e+00)
  %i.pf = fcmp fast ogt <8 x float> %i.ob, %i.ot
  %i.pg = and <8 x i1> %i.pe, %i.pf
  %i.ph = sext <8 x i1> %i.pg to <8 x i32>        ; 2 uses
  %i.pi = fcmp fast ogt <8 x float> %i.ow, splat (float -1.000000e+00)
  %i.pj = fcmp fast ogt <8 x float> %i.ob, %i.ow
  %i.pk = and <8 x i1> %i.pi, %i.pj               ; 2 uses
  %i.pl = fcmp fast ogt <8 x float> %i.ou, splat (float -1.000000e+00)
  %i.pm = fcmp fast ogt <8 x float> %i.ol, %i.ou
  %i.pn = and <8 x i1> %i.pl, %i.pm               ; 3 uses
  %i.po = sext <8 x i1> %i.pn to <8 x i32>
  %i.pp = fcmp fast ogt <8 x float> %i.ox, splat (float -1.000000e+00)
  %i.pq = fcmp fast ogt <8 x float> %i.ol, %i.ox
  %i.pr = and <8 x i1> %i.pp, %i.pq               ; 4 uses
  %i.ps = and <8 x i1> %i.pa, %i.pk               ; 2 uses
  %i.pt = and <8 x i1> %i.pd, %i.pk               ; 2 uses
  %i.pu = bitcast <8 x i32> %i.ph to <8 x float>
  %i.pv = select <8 x i1> %i.pa, <8 x float> %i.pu, <8 x float> zeroinitializer ; 2 uses
  %i.pw = select <8 x i1> %i.pn, <8 x float> %i.pv, <8 x float> zeroinitializer
  %i.px = bitcast <8 x i32> %i.ph to <8 x float>
  %i.py = select <8 x i1> %i.pd, <8 x float> %i.px, <8 x float> zeroinitializer ; 2 uses
  %i.pz = select <8 x i1> %i.pn, <8 x float> %i.py, <8 x float> zeroinitializer
  %i.qa = bitcast <8 x i32> %i.po to <8 x float>  ; 2 uses
  %i.qb = select <8 x i1> %i.ps, <8 x float> %i.qa, <8 x float> zeroinitializer
  %i.qc = select <8 x i1> %i.pt, <8 x float> %i.qa, <8 x float> zeroinitializer
  %i.qd = select <8 x i1> %i.pr, <8 x float> %i.pv, <8 x float> zeroinitializer
  %i.qe = select <8 x i1> %i.pr, <8 x float> %i.py, <8 x float> zeroinitializer
  %i.qf = and <8 x i1> %i.ps, %i.pr
  %i.qg = and <8 x i1> %i.pt, %i.pr
  %i.qh = fmul fast <8 x float> %i.ob, %i.nr      ; 2 uses
  %i.qi = fmul fast <8 x float> %i.ot, %i.nr
  %i.qj = fadd fast <8 x float> %i.qi, %i.os
  %i.qk = fmul fast <8 x float> %i.ou, %i.qh
  %i.ql = fadd fast <8 x float> %i.qj, %i.qk
  %i.qm = load i32, ptr %i.ne, align 8, !tbaa !16
  %i.qn = sitofp fast i32 %i.qm to float
  %i.qo = insertelement <8 x float> poison, float %i.qn, i64 0
  %i.qp = shufflevector <8 x float> %i.qo, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.qq = fmul fast <8 x float> %i.qp, %i.ql      ; 4 uses
  %i.qr = fadd fast <8 x float> %i.qq, %i.qp
  %i.qs = fmul fast <8 x float> %i.qp, %i.nr      ; 2 uses
  %i.qt = fadd fast <8 x float> %i.qq, %i.qs      ; 2 uses
  %i.qu = fadd fast <8 x float> %i.qt, %i.qp
  %i.qv = fmul fast <8 x float> %i.qp, %i.qh
  %i.qw = fadd fast <8 x float> %i.qv, %i.qq      ; 3 uses
  %i.qx = fadd fast <8 x float> %i.qw, %i.qp
  %i.qy = fadd fast <8 x float> %i.qw, %i.qs      ; 2 uses
  %i.qz = fadd fast <8 x float> %i.qy, %i.qp
  %i.ra = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qq, <8 x float> nofpclass(nan inf) %i.pw)
  %i.rb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qr, <8 x float> nofpclass(nan inf) %i.pz)
  %i.rc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qt, <8 x float> nofpclass(nan inf) %i.qb)
  %i.rd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qu, <8 x float> nofpclass(nan inf) %i.qc)
  %i.re = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qw, <8 x float> nofpclass(nan inf) %i.qd)
  %i.rf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.qx, <8 x float> nofpclass(nan inf) %i.qe)
  %i.rg = select <8 x i1> %i.qf, <8 x float> %i.qy, <8 x float> splat (float -1.000000e+00)
  %i.rh = select <8 x i1> %i.qg, <8 x float> %i.qz, <8 x float> splat (float -1.000000e+00)
  %i.ri = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ra) ; 3 uses
  %i.rj = bitcast <8 x i32> %i.ri to <8 x float>
  %i.rk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rb) ; 4 uses
  %i.rl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rc) ; 4 uses
  %i.rm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rd) ; 4 uses
  %i.rn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.re) ; 4 uses
  %i.ro = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rf) ; 4 uses
  %i.rp = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rg) ; 4 uses
  %i.rq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rh) ; 3 uses
  %i.rr = bitcast <8 x i32> %i.rq to <8 x float>  ; 2 uses
  %i.rs = fsub fast <8 x float> %i.nx, %i.os      ; 4 uses
  %i.rt = fsub fast <8 x float> %i.oh, %i.ot      ; 4 uses
  %i.ru = fsub fast <8 x float> %i.or, %i.ou      ; 4 uses
  %i.rv = shufflevector <8 x i32> %i.ri, <8 x i32> %i.rk, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rw = shufflevector <8 x i32> %i.ri, <8 x i32> %i.rk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.rx = bitcast <8 x i32> %i.rw to <8 x float>  ; 2 uses
  %i.ry = shufflevector <8 x i32> %i.rl, <8 x i32> %i.rm, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.rz = shufflevector <8 x i32> %i.rl, <8 x i32> %i.rm, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.sa = shufflevector <8 x i32> %i.rn, <8 x i32> %i.ro, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sb = shufflevector <8 x i32> %i.rn, <8 x i32> %i.ro, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.sc = shufflevector <8 x i32> %i.rp, <8 x i32> %i.rq, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sd = shufflevector <8 x i32> %i.rp, <8 x i32> %i.rq, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.se = bitcast <8 x i32> %i.sd to <8 x float>
  %i.sf = shufflevector <8 x float> %i.rs, <8 x float> %i.rt, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sg = shufflevector <8 x float> %i.rs, <8 x float> %i.rt, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.sh = shufflevector <8 x float> %i.ru, <8 x float> %i.rj, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.si = shufflevector <8 x float> %i.ru, <8 x float> %i.rx, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.sj = shufflevector <8 x i32> %i.rk, <8 x i32> %i.rl, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sk = shufflevector <8 x i32> %i.rk, <8 x i32> %i.rl, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sl = bitcast <8 x i32> %i.sk to <8 x float>
  %i.sm = shufflevector <8 x i32> %i.rm, <8 x i32> %i.rn, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sn = shufflevector <8 x i32> %i.rm, <8 x i32> %i.rn, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.so = shufflevector <8 x i32> %i.ro, <8 x i32> %i.rp, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.sp = bitcast <8 x i32> %i.so to <8 x float>
  %i.sq = shufflevector <8 x i32> %i.ro, <8 x i32> %i.rp, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sr = shufflevector <8 x float> %i.rr, <8 x float> %i.rs, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ss = shufflevector <8 x float> %i.rr, <8 x float> %i.rs, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.st = shufflevector <8 x float> %i.rt, <8 x float> %i.ru, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.su = shufflevector <8 x float> %i.rt, <8 x float> %i.ru, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.sv = shufflevector <8 x i32> %i.rv, <8 x i32> %i.ry, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.sw = bitcast <8 x i32> %i.sv to <8 x float>
  %i.sx = shufflevector <8 x i32> %i.sa, <8 x i32> %i.sc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.sy = bitcast <8 x i32> %i.sx to <8 x float>
  %i.sz = shufflevector <8 x float> %i.sf, <8 x float> %i.sh, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.ta = shufflevector <8 x i32> %i.sj, <8 x i32> %i.sm, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.tb = bitcast <8 x i32> %i.ta to <8 x float>  ; 2 uses
  %i.tc = shufflevector <8 x float> %i.sp, <8 x float> %i.sr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.td = shufflevector <8 x float> %i.st, <8 x float> %i.rx, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.te = shufflevector <8 x i32> %i.rz, <8 x i32> %i.sb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.tf = bitcast <8 x i32> %i.te to <8 x float>  ; 2 uses
  %i.tg = shufflevector <8 x float> %i.se, <8 x float> %i.sg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.th = shufflevector <8 x float> %i.si, <8 x float> %i.sl, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.ti = shufflevector <8 x i32> %i.sn, <8 x i32> %i.sq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.tj = bitcast <8 x i32> %i.ti to <8 x float>  ; 2 uses
  %i.tk = shufflevector <8 x float> %i.ss, <8 x float> %i.su, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.tl = shufflevector <8 x i32> %i.sv, <8 x i32> %i.sx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tm = shufflevector <8 x float> %i.sz, <8 x float> %i.tb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tn = shufflevector <8 x float> %i.tc, <8 x float> %i.td, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.to = shufflevector <8 x float> %i.tf, <8 x float> %i.tg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tp = shufflevector <8 x float> %i.th, <8 x float> %i.tj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.tq = shufflevector <8 x float> %i.tk, <8 x float> %i.sw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.tr = shufflevector <8 x float> %i.sy, <8 x float> %i.sz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ts = shufflevector <8 x float> %i.tb, <8 x float> %i.tc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tt = shufflevector <8 x float> %i.td, <8 x float> %i.tf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tu = shufflevector <8 x float> %i.tg, <8 x float> %i.th, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.tv = shufflevector <8 x float> %i.tj, <8 x float> %i.tk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.tl, ptr %.3865, align 1, !tbaa !41
  %i.tw = getelementptr inbounds nuw i8, ptr %.3865, i64 32
  store <8 x float> %i.tm, ptr %i.tw, align 1, !tbaa !41
  %i.tx = getelementptr inbounds nuw i8, ptr %.3865, i64 64
  store <8 x float> %i.tn, ptr %i.tx, align 1, !tbaa !41
  %i.ty = getelementptr inbounds nuw i8, ptr %.3865, i64 96
  store <8 x float> %i.to, ptr %i.ty, align 1, !tbaa !41
  %i.tz = getelementptr inbounds nuw i8, ptr %.3865, i64 128
  store <8 x float> %i.tp, ptr %i.tz, align 1, !tbaa !41
  %i.ua = getelementptr inbounds nuw i8, ptr %.3865, i64 160
  store <8 x float> %i.tq, ptr %i.ua, align 1, !tbaa !41
  %i.ub = getelementptr inbounds nuw i8, ptr %.3865, i64 192
  store <8 x float> %i.tr, ptr %i.ub, align 1, !tbaa !41
  %i.uc = getelementptr inbounds nuw i8, ptr %.3865, i64 224
  store <8 x float> %i.ts, ptr %i.uc, align 1, !tbaa !41
  %i.ud = getelementptr inbounds nuw i8, ptr %.3865, i64 256
  store <8 x float> %i.tt, ptr %i.ud, align 1, !tbaa !41
  %i.ue = getelementptr inbounds nuw i8, ptr %.3865, i64 288
  store <8 x float> %i.tu, ptr %i.ue, align 1, !tbaa !41
  %i.uf = getelementptr inbounds nuw i8, ptr %.3865, i64 320
  store <8 x float> %i.tv, ptr %i.uf, align 1, !tbaa !41
  %i.ug = getelementptr inbounds nuw i8, ptr %.0509861, i64 32 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.0507862, i64 32 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.0505863, i64 32 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.3865, i64 352 ; 2 uses
  %i.uk = add nuw nsw i32 %.0503864, 8            ; 2 uses
  %i.ul = or disjoint i32 %i.uk, 7
  %i.um = icmp slt i32 %i.ul, %i.h
  br i1 %i.um, label %bb.q, label %.preheader859.loopexit, !llvm.loop !432

bb.r:                                             ; preds = %.lr.ph875, %bb.ah
  %.4874 = phi ptr [ %.3.lcssa, %.lr.ph875 ], [ %i.zq, %bb.ah ] ; 11 uses
  %.1504873 = phi i32 [ %.0503.lcssa, %.lr.ph875 ], [ %i.zr, %bb.ah ]
  %.1506872 = phi ptr [ %.0505.lcssa, %.lr.ph875 ], [ %i.zp, %bb.ah ] ; 2 uses
  %.1508871 = phi ptr [ %.0507.lcssa, %.lr.ph875 ], [ %i.zo, %bb.ah ] ; 2 uses
  %.1510870 = phi ptr [ %.0509.lcssa, %.lr.ph875 ], [ %i.zn, %bb.ah ] ; 2 uses
  %i.un = load float, ptr %.1510870, align 4, !tbaa !44
  %i.uo = load float, ptr %.1508871, align 4, !tbaa !44
  %i.up = load float, ptr %.1506872, align 4, !tbaa !44
  %i.uq = load i32, ptr %i.nj, align 4, !tbaa !40 ; 4 uses
  %i.ur = fmul fast float %i.up, 5.000000e-01
  %i.us = fadd fast float %i.ur, 5.000000e-01
  %i.ut = add nsw i32 %i.uq, -1
  %i.uu = sitofp fast i32 %i.ut to float
  %i.uv = fmul fast float %i.us, %i.uu
  %i.uw = sitofp fast i32 %i.uq to float
  %i.ux = fadd fast float %i.uw, -1.000000e+00
  %.sroa.speculated4.i555 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.uv, float 0.000000e+00)
  %.sroa.speculated.i556 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i555, float %i.ux) ; 2 uses
  %i.uy = load <2 x i32>, ptr %i.nh, align 4, !tbaa !23 ; 5 uses
  %i.uz = insertelement <2 x float> poison, float %i.un, i64 0
  %i.va = insertelement <2 x float> %i.uz, float %i.uo, i64 1
  %i.vb = fmul fast <2 x float> %i.va, splat (float 5.000000e-01)
  %i.vc = fadd fast <2 x float> %i.vb, splat (float 5.000000e-01)
  %i.vd = add nsw <2 x i32> %i.uy, splat (i32 -1)
  %i.ve = sitofp <2 x i32> %i.vd to <2 x float>
  %i.vf = fmul fast <2 x float> %i.vc, %i.ve
  %i.vg = sitofp <2 x i32> %i.uy to <2 x float>
  %i.vh = fadd fast <2 x float> %i.vg, splat (float -1.000000e+00)
  %i.vi = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vf, <2 x float> zeroinitializer)
  %i.vj = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.vi, <2 x float> %i.vh) ; 2 uses
  %i.vk = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.vj)
  %i.vl = fptosi <2 x float> %i.vk to <2 x i32>   ; 5 uses
  %i.vm = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i556)
  %i.vn = fptosi float %i.vm to i32               ; 9 uses
  %i.vo = extractelement <2 x i32> %i.vl, i64 0   ; 6 uses
  %i.vp = add nsw i32 %i.vo, 1                    ; 5 uses
  %i.vq = extractelement <2 x i32> %i.vl, i64 1   ; 6 uses
  %i.vr = add nsw i32 %i.vq, 1                    ; 5 uses
  %i.vs = add nsw i32 %i.vn, 1                    ; 5 uses
  %i.vt = icmp sgt <2 x i32> %i.vl, splat (i32 -1)
  %i.vu = icmp sgt <2 x i32> %i.uy, %i.vl
  %i.vv = and <2 x i1> %i.vt, %i.vu               ; 2 uses
  %i.vw = icmp sgt i32 %i.vn, -1
  %i.vx = icmp sgt i32 %i.uq, %i.vn
  %i.vy = and i1 %i.vw, %i.vx                     ; 4 uses
  %i.vz = icmp sgt i32 %i.vo, -2
  %i.wa = extractelement <2 x i32> %i.uy, i64 0   ; 2 uses
  %i.wb = icmp slt i32 %i.vp, %i.wa
  %i.wc = and i1 %i.vz, %i.wb                     ; 2 uses
  %i.wd = icmp sgt i32 %i.vq, -2
  %i.we = extractelement <2 x i32> %i.uy, i64 1   ; 2 uses
  %i.wf = icmp slt i32 %i.vr, %i.we
  %i.wg = and i1 %i.wd, %i.wf                     ; 2 uses
  %i.wh = icmp sgt i32 %i.vn, -2
  %i.wi = icmp slt i32 %i.vs, %i.uq
  %i.wj = and i1 %i.wh, %i.wi                     ; 4 uses
  %i.wk = extractelement <2 x i1> %i.vv, i64 0    ; 2 uses
  %i.wl = extractelement <2 x i1> %i.vv, i64 1    ; 2 uses
  %i.wm = and i1 %i.wk, %i.wl                     ; 2 uses
  %i.wn = and i1 %i.wc, %i.wl                     ; 2 uses
  %i.wo = and i1 %i.wk, %i.wg                     ; 2 uses
  %i.wp = and i1 %i.wc, %i.wg                     ; 2 uses
  %i.wq = and i1 %i.wm, %i.vy
  %i.wr = and i1 %i.wn, %i.vy
  %i.ws = and i1 %i.vy, %i.wo
  %i.wt = and i1 %i.vy, %i.wp
  %i.wu = and i1 %i.wm, %i.wj
  %i.wv = and i1 %i.wn, %i.wj
  %i.ww = and i1 %i.wo, %i.wj
  %i.wx = and i1 %i.wp, %i.wj
  %i.wy = getelementptr inbounds nuw i8, ptr %.4874, i64 32
  br i1 %i.wq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.wz = mul i32 %i.we, %i.vn
  %reass.add = add i32 %i.wz, %i.vq
  %reass.mul = mul i32 %reass.add, %i.wa
  %i.xa = add i32 %reass.mul, %i.vo
  %i.xb = load i32, ptr %i.nk, align 8, !tbaa !16
  %i.xc = mul nsw i32 %i.xb, %i.xa
  br label %bb.t
end_hunk_7
begin_hunk_8_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %reass.mul839 = mul i32 %reass.add838, %i.ys
  %i.yv = add i32 %reass.mul839, %i.vo
  %i.yw = load i32, ptr %i.nk, align 8, !tbaa !16
  %i.yx = mul nsw i32 %i.yv, %i.yw
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.yy = phi i32 [ %i.yx, %bb.ae ], [ -1, %bb.ad ]
  %i.yz = getelementptr inbounds nuw i8, ptr %.4874, i64 24
  store i32 %i.yy, ptr %i.yz, align 4, !tbaa !23
  br i1 %i.wx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.za = load i32, ptr %i.nh, align 4, !tbaa !37
  %i.zb = load i32, ptr %i.ni, align 8, !tbaa !38
  %i.zc = mul i32 %i.zb, %i.vs
  %reass.add840 = add i32 %i.zc, %i.vr
  %reass.mul841 = mul i32 %reass.add840, %i.za
  %i.zd = add i32 %reass.mul841, %i.vp
  %i.ze = load i32, ptr %i.nk, align 8, !tbaa !16
  %i.zf = mul nsw i32 %i.zd, %i.ze
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.zg = phi i32 [ %i.zf, %bb.ag ], [ -1, %bb.af ]
  %i.zh = getelementptr inbounds nuw i8, ptr %.4874, i64 28
  store i32 %i.zg, ptr %i.zh, align 4, !tbaa !23
  %i.zi = sitofp <2 x i32> %i.vl to <2 x float>
  %i.zj = fsub fast <2 x float> %i.vj, %i.zi
  store <2 x float> %i.zj, ptr %i.wy, align 4, !tbaa !44
  %i.zk = sitofp fast i32 %i.vn to float
  %i.zl = fsub fast float %.sroa.speculated.i556, %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %.4874, i64 40
  store float %i.zl, ptr %i.zm, align 4, !tbaa !44
  %i.zn = getelementptr inbounds nuw i8, ptr %.1510870, i64 4
  %i.zo = getelementptr inbounds nuw i8, ptr %.1508871, i64 4
  %i.zp = getelementptr inbounds nuw i8, ptr %.1506872, i64 4
  %i.zq = getelementptr inbounds nuw i8, ptr %.4874, i64 44
  %i.zr = add nuw nsw i32 %.1504873, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.zr, %i.h
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !433

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader859, %.preheader858
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = mul i32 %i.e, %i.g                       ; 9 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !20, !noalias !451 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader869, label %_ZN4ncnn3MatD2Ev.exit516

.preheader869:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !17
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader869
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %i.h, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0900 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !20, !noalias !452
  %i.v = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !452
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !452
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 2 uses
  br i1 %i.p, label %.lr.ph890, label %.preheader

.preheader:                                       ; preds = %.lr.ph890, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hx, %.lr.ph890 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.z, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hv, %.lr.ph890 ]
  %.1.lcssa = phi ptr [ %.0900, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hw, %.lr.ph890 ] ; 2 uses
  %i.aa = icmp slt i32 %.0501.lcssa, %i.h
  br i1 %i.aa, label %.lr.ph897, label %._crit_edge

.lr.ph890:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph890
  %.1889 = phi ptr [ %i.hw, %.lr.ph890 ], [ %.0900, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499888 = phi ptr [ %i.hv, %.lr.ph890 ], [ %i.z, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501887 = phi i32 [ %i.hx, %.lr.ph890 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.ab = load <8 x float>, ptr %.0499888, align 1, !tbaa !41 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0499888, i64 32
  %i.ad = load <8 x float>, ptr %i.ac, align 1, !tbaa !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0499888, i64 64
  %i.af = load <8 x float>, ptr %i.ae, align 1, !tbaa !41 ; 2 uses
  %i.ag = shufflevector <8 x float> %i.ab, <8 x float> %i.ad, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ah = shufflevector <8 x float> %i.ab, <8 x float> %i.af, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ai = shufflevector <8 x float> %i.ad, <8 x float> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aj = shufflevector <8 x float> %i.ag, <8 x float> %i.ah, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ak = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.al = shufflevector <8 x float> %i.ag, <8 x float> %i.ak, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.am = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.an = shufflevector <8 x float> %i.aj, <8 x float> %i.ai, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ap = sitofp fast i32 %i.ao to float
  %i.aq = insertelement <8 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <8 x float> %i.aq, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.as = fadd fast <8 x float> %i.al, splat (float 1.000000e+00)
  %i.at = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.au = fmul fast <8 x float> %i.at, %i.as
  %i.av = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.aw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.au)
  %i.ax = fsub fast <8 x float> %i.aw, %i.ar
  %i.ay = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ax)
  %i.az = fadd fast <8 x float> %i.ar, splat (float -5.000000e-01)
  %i.ba = fsub fast <8 x float> %i.az, %i.ay
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> zeroinitializer)
  %i.bc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.bb) ; 2 uses
  %i.bd = load i32, ptr %i.r, align 8, !tbaa !38
  %i.be = sitofp fast i32 %i.bd to float
  %i.bf = insertelement <8 x float> poison, float %i.be, i64 0
  %i.bg = shufflevector <8 x float> %i.bf, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.bh = fmul fast <8 x float> %i.am, splat (float 5.000000e-01)
  %i.bi = fadd fast <8 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = fmul fast <8 x float> %i.bi, %i.bg
  %i.bk = fadd fast <8 x float> %i.bg, splat (float -1.000000e+00)
  %i.bl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bj)
  %i.bm = fsub fast <8 x float> %i.bl, %i.bg
  %i.bn = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bm)
  %i.bo = fadd fast <8 x float> %i.bg, splat (float -5.000000e-01)
  %i.bp = fsub fast <8 x float> %i.bo, %i.bn
  %i.bq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bp, <8 x float> zeroinitializer)
  %i.br = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bk, <8 x float> nofpclass(nan inf) %i.bq) ; 2 uses
  %i.bs = load i32, ptr %i.s, align 4, !tbaa !40
  %i.bt = sitofp fast i32 %i.bs to float
  %i.bu = insertelement <8 x float> poison, float %i.bt, i64 0
  %i.bv = shufflevector <8 x float> %i.bu, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.bw = fmul fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.bx = fadd fast <8 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = fmul fast <8 x float> %i.bx, %i.bv
  %i.bz = fadd fast <8 x float> %i.bv, splat (float -1.000000e+00)
  %i.ca = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.by)
  %i.cb = fsub fast <8 x float> %i.ca, %i.bv
  %i.cc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cb)
  %i.cd = fadd fast <8 x float> %i.bv, splat (float -5.000000e-01)
  %i.ce = fsub fast <8 x float> %i.cd, %i.cc
  %i.cf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ce, <8 x float> zeroinitializer)
  %i.cg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bz, <8 x float> nofpclass(nan inf) %i.cf) ; 2 uses
  %i.ch = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bc, i32 1) ; 5 uses
  %i.ci = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.br, i32 1) ; 5 uses
  %i.cj = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cg, i32 1) ; 5 uses
  %i.ck = fadd fast <8 x float> %i.ch, splat (float 1.000000e+00) ; 2 uses
  %i.cl = fadd fast <8 x float> %i.ci, splat (float 1.000000e+00) ; 2 uses
  %i.cm = fadd fast <8 x float> %i.cj, splat (float 1.000000e+00) ; 2 uses
  %i.cn = fcmp fast ogt <8 x float> %i.ch, splat (float -1.000000e+00)
  %i.co = fcmp fast ogt <8 x float> %i.ar, %i.ch
  %i.cp = and <8 x i1> %i.cn, %i.co               ; 2 uses
  %i.cq = fcmp fast ogt <8 x float> %i.ck, splat (float -1.000000e+00)
  %i.cr = fcmp fast ogt <8 x float> %i.ar, %i.ck
  %i.cs = and <8 x i1> %i.cq, %i.cr               ; 2 uses
  %i.ct = fcmp fast ogt <8 x float> %i.ci, splat (float -1.000000e+00)
  %i.cu = fcmp fast ogt <8 x float> %i.bg, %i.ci
  %i.cv = and <8 x i1> %i.ct, %i.cu
  %i.cw = sext <8 x i1> %i.cv to <8 x i32>        ; 2 uses
  %i.cx = fcmp fast ogt <8 x float> %i.cl, splat (float -1.000000e+00)
  %i.cy = fcmp fast ogt <8 x float> %i.bg, %i.cl
  %i.cz = and <8 x i1> %i.cx, %i.cy               ; 2 uses
  %i.da = fcmp fast ogt <8 x float> %i.cj, splat (float -1.000000e+00)
  %i.db = fcmp fast ogt <8 x float> %i.bv, %i.cj
  %i.dc = and <8 x i1> %i.da, %i.db               ; 3 uses
  %i.dd = sext <8 x i1> %i.dc to <8 x i32>
  %i.de = fcmp fast ogt <8 x float> %i.cm, splat (float -1.000000e+00)
  %i.df = fcmp fast ogt <8 x float> %i.bv, %i.cm
  %i.dg = and <8 x i1> %i.de, %i.df               ; 4 uses
  %i.dh = and <8 x i1> %i.cp, %i.cz               ; 2 uses
  %i.di = and <8 x i1> %i.cs, %i.cz               ; 2 uses
  %i.dj = bitcast <8 x i32> %i.cw to <8 x float>
  %i.dk = select <8 x i1> %i.cp, <8 x float> %i.dj, <8 x float> zeroinitializer ; 2 uses
  %i.dl = select <8 x i1> %i.dc, <8 x float> %i.dk, <8 x float> zeroinitializer
  %i.dm = bitcast <8 x i32> %i.cw to <8 x float>
  %i.dn = select <8 x i1> %i.cs, <8 x float> %i.dm, <8 x float> zeroinitializer ; 2 uses
  %i.do = select <8 x i1> %i.dc, <8 x float> %i.dn, <8 x float> zeroinitializer
  %i.dp = bitcast <8 x i32> %i.dd to <8 x float>  ; 2 uses
  %i.dq = select <8 x i1> %i.dh, <8 x float> %i.dp, <8 x float> zeroinitializer
  %i.dr = select <8 x i1> %i.di, <8 x float> %i.dp, <8 x float> zeroinitializer
  %i.ds = select <8 x i1> %i.dg, <8 x float> %i.dk, <8 x float> zeroinitializer
  %i.dt = select <8 x i1> %i.dg, <8 x float> %i.dn, <8 x float> zeroinitializer
  %i.du = and <8 x i1> %i.dh, %i.dg
  %i.dv = and <8 x i1> %i.di, %i.dg
  %i.dw = fmul fast <8 x float> %i.bg, %i.ar      ; 2 uses
  %i.dx = fmul fast <8 x float> %i.ci, %i.ar
  %i.dy = fadd fast <8 x float> %i.dx, %i.ch
  %i.dz = fmul fast <8 x float> %i.cj, %i.dw
  %i.ea = fadd fast <8 x float> %i.dy, %i.dz
  %i.eb = load i32, ptr %i.t, align 8, !tbaa !16
  %i.ec = sitofp fast i32 %i.eb to float
  %i.ed = insertelement <8 x float> poison, float %i.ec, i64 0
  %i.ee = shufflevector <8 x float> %i.ed, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.ef = fmul fast <8 x float> %i.ee, %i.ea      ; 4 uses
  %i.eg = fadd fast <8 x float> %i.ef, %i.ee
  %i.eh = fmul fast <8 x float> %i.ee, %i.ar      ; 2 uses
  %i.ei = fadd fast <8 x float> %i.ef, %i.eh      ; 2 uses
  %i.ej = fadd fast <8 x float> %i.ei, %i.ee
  %i.ek = fmul fast <8 x float> %i.ee, %i.dw
  %i.el = fadd fast <8 x float> %i.ek, %i.ef      ; 3 uses
  %i.em = fadd fast <8 x float> %i.el, %i.ee
  %i.en = fadd fast <8 x float> %i.el, %i.eh      ; 2 uses
  %i.eo = fadd fast <8 x float> %i.en, %i.ee
  %i.ep = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ef, <8 x float> nofpclass(nan inf) %i.dl)
  %i.eq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.eg, <8 x float> nofpclass(nan inf) %i.do)
  %i.er = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ei, <8 x float> nofpclass(nan inf) %i.dq)
  %i.es = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ej, <8 x float> nofpclass(nan inf) %i.dr)
  %i.et = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.el, <8 x float> nofpclass(nan inf) %i.ds)
  %i.eu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.em, <8 x float> nofpclass(nan inf) %i.dt)
  %i.ev = select <8 x i1> %i.du, <8 x float> %i.en, <8 x float> splat (float -1.000000e+00)
  %i.ew = select <8 x i1> %i.dv, <8 x float> %i.eo, <8 x float> splat (float -1.000000e+00)
  %i.ex = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ep) ; 3 uses
  %i.ey = bitcast <8 x i32> %i.ex to <8 x float>
  %i.ez = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eq) ; 4 uses
  %i.fa = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.er) ; 4 uses
  %i.fb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.es) ; 4 uses
  %i.fc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.et) ; 4 uses
  %i.fd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eu) ; 4 uses
  %i.fe = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ev) ; 4 uses
  %i.ff = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ew) ; 3 uses
  %i.fg = bitcast <8 x i32> %i.ff to <8 x float>  ; 2 uses
  %i.fh = fsub fast <8 x float> %i.bc, %i.ch      ; 4 uses
  %i.fi = fsub fast <8 x float> %i.br, %i.ci      ; 4 uses
  %i.fj = fsub fast <8 x float> %i.cg, %i.cj      ; 4 uses
  %i.fk = shufflevector <8 x i32> %i.ex, <8 x i32> %i.ez, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fl = shufflevector <8 x i32> %i.ex, <8 x i32> %i.ez, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.fm = bitcast <8 x i32> %i.fl to <8 x float>  ; 2 uses
  %i.fn = shufflevector <8 x i32> %i.fa, <8 x i32> %i.fb, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fo = shufflevector <8 x i32> %i.fa, <8 x i32> %i.fb, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fp = shufflevector <8 x i32> %i.fc, <8 x i32> %i.fd, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fq = shufflevector <8 x i32> %i.fc, <8 x i32> %i.fd, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fr = shufflevector <8 x i32> %i.fe, <8 x i32> %i.ff, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fs = shufflevector <8 x i32> %i.fe, <8 x i32> %i.ff, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.ft = bitcast <8 x i32> %i.fs to <8 x float>
  %i.fu = shufflevector <8 x float> %i.fh, <8 x float> %i.fi, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fv = shufflevector <8 x float> %i.fh, <8 x float> %i.fi, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fw = shufflevector <8 x float> %i.fj, <8 x float> %i.ey, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fx = shufflevector <8 x float> %i.fj, <8 x float> %i.fm, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fy = shufflevector <8 x i32> %i.ez, <8 x i32> %i.fa, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fz = shufflevector <8 x i32> %i.ez, <8 x i32> %i.fa, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ga = bitcast <8 x i32> %i.fz to <8 x float>
  %i.gb = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fc, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gc = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fc, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gd = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>
  %i.gf = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gg = shufflevector <8 x float> %i.fg, <8 x float> %i.fh, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gh = shufflevector <8 x float> %i.fg, <8 x float> %i.fh, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gi = shufflevector <8 x float> %i.fi, <8 x float> %i.fj, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.gj = shufflevector <8 x float> %i.fi, <8 x float> %i.fj, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gk = shufflevector <8 x i32> %i.fk, <8 x i32> %i.fn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gl = bitcast <8 x i32> %i.gk to <8 x float>
  %i.gm = shufflevector <8 x i32> %i.fp, <8 x i32> %i.fr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gn = bitcast <8 x i32> %i.gm to <8 x float>
  %i.go = shufflevector <8 x float> %i.fu, <8 x float> %i.fw, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.gp = shufflevector <8 x i32> %i.fy, <8 x i32> %i.gb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gq = bitcast <8 x i32> %i.gp to <8 x float>  ; 2 uses
  %i.gr = shufflevector <8 x float> %i.ge, <8 x float> %i.gg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gs = shufflevector <8 x float> %i.gi, <8 x float> %i.fm, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.gt = shufflevector <8 x i32> %i.fo, <8 x i32> %i.fq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gu = bitcast <8 x i32> %i.gt to <8 x float>  ; 2 uses
  %i.gv = shufflevector <8 x float> %i.ft, <8 x float> %i.fv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gw = shufflevector <8 x float> %i.fx, <8 x float> %i.ga, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.gx = shufflevector <8 x i32> %i.gc, <8 x i32> %i.gf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gy = bitcast <8 x i32> %i.gx to <8 x float>  ; 2 uses
  %i.gz = shufflevector <8 x float> %i.gh, <8 x float> %i.gj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ha = shufflevector <8 x i32> %i.gk, <8 x i32> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hb = shufflevector <8 x float> %i.go, <8 x float> %i.gq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hc = shufflevector <8 x float> %i.gr, <8 x float> %i.gs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hd = shufflevector <8 x float> %i.gu, <8 x float> %i.gv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.he = shufflevector <8 x float> %i.gw, <8 x float> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hf = shufflevector <8 x float> %i.gz, <8 x float> %i.gl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.hg = shufflevector <8 x float> %i.gn, <8 x float> %i.go, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hh = shufflevector <8 x float> %i.gq, <8 x float> %i.gr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hi = shufflevector <8 x float> %i.gs, <8 x float> %i.gu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hj = shufflevector <8 x float> %i.gv, <8 x float> %i.gw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hk = shufflevector <8 x float> %i.gy, <8 x float> %i.gz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.ha, ptr %.1889, align 1, !tbaa !41
  %i.hl = getelementptr inbounds nuw i8, ptr %.1889, i64 32
  store <8 x float> %i.hb, ptr %i.hl, align 1, !tbaa !41
  %i.hm = getelementptr inbounds nuw i8, ptr %.1889, i64 64
  store <8 x float> %i.hc, ptr %i.hm, align 1, !tbaa !41
  %i.hn = getelementptr inbounds nuw i8, ptr %.1889, i64 96
  store <8 x float> %i.hd, ptr %i.hn, align 1, !tbaa !41
  %i.ho = getelementptr inbounds nuw i8, ptr %.1889, i64 128
  store <8 x float> %i.he, ptr %i.ho, align 1, !tbaa !41
  %i.hp = getelementptr inbounds nuw i8, ptr %.1889, i64 160
  store <8 x float> %i.hf, ptr %i.hp, align 1, !tbaa !41
  %i.hq = getelementptr inbounds nuw i8, ptr %.1889, i64 192
  store <8 x float> %i.hg, ptr %i.hq, align 1, !tbaa !41
  %i.hr = getelementptr inbounds nuw i8, ptr %.1889, i64 224
  store <8 x float> %i.hh, ptr %i.hr, align 1, !tbaa !41
  %i.hs = getelementptr inbounds nuw i8, ptr %.1889, i64 256
  store <8 x float> %i.hi, ptr %i.hs, align 1, !tbaa !41
  %i.ht = getelementptr inbounds nuw i8, ptr %.1889, i64 288
  store <8 x float> %i.hj, ptr %i.ht, align 1, !tbaa !41
  %i.hu = getelementptr inbounds nuw i8, ptr %.1889, i64 320
  store <8 x float> %i.hk, ptr %i.hu, align 1, !tbaa !41
  %i.hv = getelementptr inbounds nuw i8, ptr %.0499888, i64 96 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.1889, i64 352 ; 2 uses
  %i.hx = add nuw nsw i32 %.0501887, 24           ; 2 uses
  %i.hy = add nuw nsw i32 %.0501887, 47
  %i.hz = icmp slt i32 %i.hy, %i.h
  br i1 %i.hz, label %.lr.ph890, label %.preheader, !llvm.loop !442

.lr.ph897:                                        ; preds = %.preheader, %bb.p
  %.2896 = phi ptr [ %i.nf, %bb.p ], [ %.1.lcssa, %.preheader ] ; 11 uses
  %.1500895 = phi ptr [ %i.ne, %bb.p ], [ %.0499.lcssa, %.preheader ] ; 3 uses
  %.1502894 = phi i32 [ %i.ng, %bb.p ], [ %.0501.lcssa, %.preheader ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.1500895, i64 8
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !44
  %i.ic = load i32, ptr %i.s, align 4, !tbaa !40  ; 3 uses
  %i.id = sitofp fast i32 %i.ic to float          ; 4 uses
  %i.ie = fmul fast float %i.ib, 5.000000e-01
  %i.if = fadd fast float %i.ie, 5.000000e-01
  %i.ig = fmul fast float %i.if, %i.id
  %i.ih = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ig)
  %i.ii = fsub fast float %i.ih, %i.id
  %i.ij = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ii)
  %i.ik = fadd fast float %i.id, -5.000000e-01
  %i.il = fsub fast float %i.ik, %i.ij
  %i.im = fadd fast float %i.id, -1.000000e+00
  %.sroa.speculated6.i549 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.il, float 0.000000e+00)
  %.sroa.speculated.i550 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i549, float %i.im) ; 2 uses
  %i.in = load <2 x float>, ptr %.1500895, align 4, !tbaa !44
  %i.io = load <2 x i32>, ptr %i.q, align 4, !tbaa !23 ; 4 uses
  %i.ip = sitofp <2 x i32> %i.io to <2 x float>   ; 4 uses
  %i.iq = fmul fast <2 x float> %i.in, splat (float 5.000000e-01)
  %i.ir = fadd fast <2 x float> %i.iq, splat (float 5.000000e-01)
  %i.is = fmul fast <2 x float> %i.ir, %i.ip
  %i.it = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.is)
  %i.iu = fsub fast <2 x float> %i.it, %i.ip
  %i.iv = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.iu)
  %i.iw = fadd fast <2 x float> %i.ip, splat (float -5.000000e-01)
  %i.ix = fsub fast <2 x float> %i.iw, %i.iv
  %i.iy = fadd fast <2 x float> %i.ip, splat (float -1.000000e+00)
  %i.iz = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ix, <2 x float> zeroinitializer)
  %i.ja = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.iz, <2 x float> %i.iy) ; 2 uses
  %i.jb = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ja)
  %i.jc = fptosi <2 x float> %i.jb to <2 x i32>   ; 5 uses
  %i.jd = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i550)
  %i.je = fptosi float %i.jd to i32               ; 9 uses
  %i.jf = extractelement <2 x i32> %i.jc, i64 0   ; 6 uses
  %i.jg = add nsw i32 %i.jf, 1                    ; 5 uses
  %i.jh = extractelement <2 x i32> %i.jc, i64 1   ; 6 uses
  %i.ji = add nsw i32 %i.jh, 1                    ; 5 uses
  %i.jj = add nsw i32 %i.je, 1                    ; 5 uses
  %i.jk = icmp sgt <2 x i32> %i.jc, splat (i32 -1)
  %i.jl = icmp sgt <2 x i32> %i.io, %i.jc
  %i.jm = and <2 x i1> %i.jk, %i.jl               ; 2 uses
  %i.jn = icmp sgt i32 %i.je, -1
  %i.jo = icmp sgt i32 %i.ic, %i.je
  %i.jp = and i1 %i.jn, %i.jo                     ; 4 uses
  %i.jq = icmp sgt i32 %i.jf, -2
  %i.jr = extractelement <2 x i32> %i.io, i64 0   ; 2 uses
  %i.js = icmp slt i32 %i.jg, %i.jr
  %i.jt = and i1 %i.jq, %i.js                     ; 2 uses
  %i.ju = icmp sgt i32 %i.jh, -2
  %i.jv = extractelement <2 x i32> %i.io, i64 1   ; 2 uses
  %i.jw = icmp slt i32 %i.ji, %i.jv
  %i.jx = and i1 %i.ju, %i.jw                     ; 2 uses
  %i.jy = icmp sgt i32 %i.je, -2
  %i.jz = icmp slt i32 %i.jj, %i.ic
  %i.ka = and i1 %i.jy, %i.jz                     ; 4 uses
  %i.kb = extractelement <2 x i1> %i.jm, i64 0    ; 2 uses
  %i.kc = extractelement <2 x i1> %i.jm, i64 1    ; 2 uses
  %i.kd = and i1 %i.kb, %i.kc                     ; 2 uses
  %i.ke = and i1 %i.jt, %i.kc                     ; 2 uses
  %i.kf = and i1 %i.kb, %i.jx                     ; 2 uses
  %i.kg = and i1 %i.jt, %i.jx                     ; 2 uses
  %i.kh = and i1 %i.kd, %i.jp
  %i.ki = and i1 %i.ke, %i.jp
  %i.kj = and i1 %i.jp, %i.kf
  %i.kk = and i1 %i.jp, %i.kg
  %i.kl = and i1 %i.kd, %i.ka
  %i.km = and i1 %i.ke, %i.ka
  %i.kn = and i1 %i.kf, %i.ka
  %i.ko = and i1 %i.kg, %i.ka
  %i.kp = getelementptr inbounds nuw i8, ptr %.2896, i64 32
  br i1 %i.kh, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph897
  %i.kq = mul i32 %i.jv, %i.je
  %reass.add850 = add i32 %i.kq, %i.jh
  %reass.mul851 = mul i32 %reass.add850, %i.jr
  %i.kr = add i32 %reass.mul851, %i.jf
  %i.ks = load i32, ptr %i.t, align 8, !tbaa !16
  %i.kt = mul nsw i32 %i.ks, %i.kr
  br label %bb.b
end_hunk_8
begin_hunk_9_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.mg = mul nsw i32 %i.me, %i.mf
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.mh = phi i32 [ %i.mg, %bb.k ], [ -1, %bb.j ]
  %i.mi = getelementptr inbounds nuw i8, ptr %.2896, i64 20
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !23
  br i1 %i.kn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mj = load i32, ptr %i.q, align 4, !tbaa !37
  %i.mk = load i32, ptr %i.r, align 8, !tbaa !38
  %i.ml = mul i32 %i.mk, %i.jj
  %reass.add862 = add i32 %i.ml, %i.ji
  %reass.mul863 = mul i32 %reass.add862, %i.mj
  %i.mm = add i32 %reass.mul863, %i.jf
  %i.mn = load i32, ptr %i.t, align 8, !tbaa !16
  %i.mo = mul nsw i32 %i.mm, %i.mn
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.mp = phi i32 [ %i.mo, %bb.m ], [ -1, %bb.l ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.2896, i64 24
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !23
  br i1 %i.ko, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mr = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ms = load i32, ptr %i.r, align 8, !tbaa !38
  %i.mt = mul i32 %i.ms, %i.jj
  %reass.add864 = add i32 %i.mt, %i.ji
  %reass.mul865 = mul i32 %reass.add864, %i.mr
  %i.mu = add i32 %reass.mul865, %i.jg
  %i.mv = load i32, ptr %i.t, align 8, !tbaa !16
  %i.mw = mul nsw i32 %i.mu, %i.mv
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mx = phi i32 [ %i.mw, %bb.o ], [ -1, %bb.n ]
  %i.my = getelementptr inbounds nuw i8, ptr %.2896, i64 28
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !23
  %i.mz = sitofp <2 x i32> %i.jc to <2 x float>
  %i.na = fsub fast <2 x float> %i.ja, %i.mz
  store <2 x float> %i.na, ptr %i.kp, align 4, !tbaa !44
  %i.nb = sitofp fast i32 %i.je to float
  %i.nc = fsub fast float %.sroa.speculated.i550, %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %.2896, i64 40
  store float %i.nc, ptr %i.nd, align 4, !tbaa !44
  %i.ne = getelementptr inbounds nuw i8, ptr %.1500895, i64 12
  %i.nf = getelementptr inbounds nuw i8, ptr %.2896, i64 44 ; 2 uses
  %i.ng = add nuw nsw i32 %.1502894, 3            ; 2 uses
  %i.nh = icmp slt i32 %i.ng, %i.h
  br i1 %i.nh, label %.lr.ph897, label %._crit_edge, !llvm.loop !443

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.nf, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ni = load i32, ptr %i.k, align 8, !tbaa !17
  %i.nj = sext i32 %i.ni to i64
  %i.nk = icmp slt i64 %indvars.iv.next, %i.nj
  br i1 %i.nk, label %_ZN4ncnn3MatD2Ev.exit517, label %.loopexit, !llvm.loop !444

_ZN4ncnn3MatD2Ev.exit516:                         ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.nl = load ptr, ptr %1, align 8, !tbaa !20, !noalias !453 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.no = load i64, ptr %i.nm, align 8, !tbaa !19, !noalias !454 ; 2 uses
  %i.np = load i64, ptr %i.nn, align 8, !tbaa !18, !noalias !454 ; 2 uses
  %i.nq = mul i64 %i.np, %i.no
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nq ; 2 uses
  %i.ns = shl i64 %i.no, 1
  %i.nt = mul i64 %i.ns, %i.np
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nt ; 2 uses
  %i.nv = icmp sgt i32 %i.h, 7
  br i1 %i.nv, label %.lr.ph, label %.preheader870

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit516
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

.preheader870.loopexit:                           ; preds = %bb.q
  %i.oa = and i32 %i.h, 2147483640
  br label %.preheader870

.preheader870:                                    ; preds = %.preheader870.loopexit, %_ZN4ncnn3MatD2Ev.exit516
  %.0509.lcssa = phi ptr [ %i.nl, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vq, %.preheader870.loopexit ]
  %.0507.lcssa = phi ptr [ %i.nr, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vr, %.preheader870.loopexit ]
  %.0505.lcssa = phi ptr [ %i.nu, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vs, %.preheader870.loopexit ]
  %.0503.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.oa, %.preheader870.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vt, %.preheader870.loopexit ]
  %i.ob = icmp slt i32 %.0503.lcssa, %i.h
  br i1 %i.ob, label %.lr.ph886, label %.loopexit

.lr.ph886:                                        ; preds = %.preheader870
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.3876 = phi ptr [ %i.i, %.lr.ph ], [ %i.vt, %bb.q ] ; 12 uses
  %.0503875 = phi i32 [ 0, %.lr.ph ], [ %i.vu, %bb.q ]
  %.0505874 = phi ptr [ %i.nu, %.lr.ph ], [ %i.vs, %bb.q ] ; 2 uses
  %.0507873 = phi ptr [ %i.nr, %.lr.ph ], [ %i.vr, %bb.q ] ; 2 uses
  %.0509872 = phi ptr [ %i.nl, %.lr.ph ], [ %i.vq, %bb.q ] ; 2 uses
  %i.og = load <8 x float>, ptr %.0509872, align 1, !tbaa !41
  %i.oh = load <8 x float>, ptr %.0507873, align 1, !tbaa !41
  %i.oi = load <8 x float>, ptr %.0505874, align 1, !tbaa !41
  %i.oj = load i32, ptr %i.nw, align 4, !tbaa !37
  %i.ok = sitofp fast i32 %i.oj to float
  %i.ol = insertelement <8 x float> poison, float %i.ok, i64 0
  %i.om = shufflevector <8 x float> %i.ol, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.on = fmul fast <8 x float> %i.og, splat (float 5.000000e-01)
  %i.oo = fadd fast <8 x float> %i.on, splat (float 5.000000e-01)
  %i.op = fmul fast <8 x float> %i.oo, %i.om
  %i.oq = fadd fast <8 x float> %i.om, splat (float -1.000000e+00)
  %i.or = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.op)
  %i.os = fsub fast <8 x float> %i.or, %i.om
  %i.ot = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.os)
  %i.ou = fadd fast <8 x float> %i.om, splat (float -5.000000e-01)
  %i.ov = fsub fast <8 x float> %i.ou, %i.ot
  %i.ow = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ov, <8 x float> zeroinitializer)
  %i.ox = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.oq, <8 x float> nofpclass(nan inf) %i.ow) ; 2 uses
  %i.oy = load i32, ptr %i.nx, align 8, !tbaa !38
  %i.oz = sitofp fast i32 %i.oy to float
  %i.pa = insertelement <8 x float> poison, float %i.oz, i64 0
  %i.pb = shufflevector <8 x float> %i.pa, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.pc = fmul fast <8 x float> %i.oh, splat (float 5.000000e-01)
  %i.pd = fadd fast <8 x float> %i.pc, splat (float 5.000000e-01)
  %i.pe = fmul fast <8 x float> %i.pd, %i.pb
  %i.pf = fadd fast <8 x float> %i.pb, splat (float -1.000000e+00)
  %i.pg = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pe)
  %i.ph = fsub fast <8 x float> %i.pg, %i.pb
  %i.pi = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ph)
  %i.pj = fadd fast <8 x float> %i.pb, splat (float -5.000000e-01)
  %i.pk = fsub fast <8 x float> %i.pj, %i.pi
  %i.pl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.pk, <8 x float> zeroinitializer)
  %i.pm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.pf, <8 x float> nofpclass(nan inf) %i.pl) ; 2 uses
  %i.pn = load i32, ptr %i.ny, align 4, !tbaa !40
  %i.po = sitofp fast i32 %i.pn to float
  %i.pp = insertelement <8 x float> poison, float %i.po, i64 0
  %i.pq = shufflevector <8 x float> %i.pp, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.pr = fmul fast <8 x float> %i.oi, splat (float 5.000000e-01)
  %i.ps = fadd fast <8 x float> %i.pr, splat (float 5.000000e-01)
  %i.pt = fmul fast <8 x float> %i.ps, %i.pq
  %i.pu = fadd fast <8 x float> %i.pq, splat (float -1.000000e+00)
  %i.pv = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pt)
  %i.pw = fsub fast <8 x float> %i.pv, %i.pq
  %i.px = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pw)
  %i.py = fadd fast <8 x float> %i.pq, splat (float -5.000000e-01)
  %i.pz = fsub fast <8 x float> %i.py, %i.px
  %i.qa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.pz, <8 x float> zeroinitializer)
  %i.qb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.pu, <8 x float> nofpclass(nan inf) %i.qa) ; 2 uses
  %i.qc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ox, i32 1) ; 5 uses
  %i.qd = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.pm, i32 1) ; 5 uses
  %i.qe = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.qb, i32 1) ; 5 uses
  %i.qf = fadd fast <8 x float> %i.qc, splat (float 1.000000e+00) ; 2 uses
  %i.qg = fadd fast <8 x float> %i.qd, splat (float 1.000000e+00) ; 2 uses
  %i.qh = fadd fast <8 x float> %i.qe, splat (float 1.000000e+00) ; 2 uses
  %i.qi = fcmp fast ogt <8 x float> %i.qc, splat (float -1.000000e+00)
  %i.qj = fcmp fast ogt <8 x float> %i.om, %i.qc
  %i.qk = and <8 x i1> %i.qi, %i.qj               ; 2 uses
  %i.ql = fcmp fast ogt <8 x float> %i.qf, splat (float -1.000000e+00)
  %i.qm = fcmp fast ogt <8 x float> %i.om, %i.qf
  %i.qn = and <8 x i1> %i.ql, %i.qm               ; 2 uses
  %i.qo = fcmp fast ogt <8 x float> %i.qd, splat (float -1.000000e+00)
  %i.qp = fcmp fast ogt <8 x float> %i.pb, %i.qd
  %i.qq = and <8 x i1> %i.qo, %i.qp
  %i.qr = sext <8 x i1> %i.qq to <8 x i32>        ; 2 uses
  %i.qs = fcmp fast ogt <8 x float> %i.qg, splat (float -1.000000e+00)
  %i.qt = fcmp fast ogt <8 x float> %i.pb, %i.qg
  %i.qu = and <8 x i1> %i.qs, %i.qt               ; 2 uses
  %i.qv = fcmp fast ogt <8 x float> %i.qe, splat (float -1.000000e+00)
  %i.qw = fcmp fast ogt <8 x float> %i.pq, %i.qe
  %i.qx = and <8 x i1> %i.qv, %i.qw               ; 3 uses
  %i.qy = sext <8 x i1> %i.qx to <8 x i32>
  %i.qz = fcmp fast ogt <8 x float> %i.qh, splat (float -1.000000e+00)
  %i.ra = fcmp fast ogt <8 x float> %i.pq, %i.qh
  %i.rb = and <8 x i1> %i.qz, %i.ra               ; 4 uses
  %i.rc = and <8 x i1> %i.qk, %i.qu               ; 2 uses
  %i.rd = and <8 x i1> %i.qn, %i.qu               ; 2 uses
  %i.re = bitcast <8 x i32> %i.qr to <8 x float>
  %i.rf = select <8 x i1> %i.qk, <8 x float> %i.re, <8 x float> zeroinitializer ; 2 uses
  %i.rg = select <8 x i1> %i.qx, <8 x float> %i.rf, <8 x float> zeroinitializer
  %i.rh = bitcast <8 x i32> %i.qr to <8 x float>
  %i.ri = select <8 x i1> %i.qn, <8 x float> %i.rh, <8 x float> zeroinitializer ; 2 uses
  %i.rj = select <8 x i1> %i.qx, <8 x float> %i.ri, <8 x float> zeroinitializer
  %i.rk = bitcast <8 x i32> %i.qy to <8 x float>  ; 2 uses
  %i.rl = select <8 x i1> %i.rc, <8 x float> %i.rk, <8 x float> zeroinitializer
  %i.rm = select <8 x i1> %i.rd, <8 x float> %i.rk, <8 x float> zeroinitializer
  %i.rn = select <8 x i1> %i.rb, <8 x float> %i.rf, <8 x float> zeroinitializer
  %i.ro = select <8 x i1> %i.rb, <8 x float> %i.ri, <8 x float> zeroinitializer
  %i.rp = and <8 x i1> %i.rc, %i.rb
  %i.rq = and <8 x i1> %i.rd, %i.rb
  %i.rr = fmul fast <8 x float> %i.pb, %i.om      ; 2 uses
  %i.rs = fmul fast <8 x float> %i.qd, %i.om
  %i.rt = fadd fast <8 x float> %i.rs, %i.qc
  %i.ru = fmul fast <8 x float> %i.qe, %i.rr
  %i.rv = fadd fast <8 x float> %i.rt, %i.ru
  %i.rw = load i32, ptr %i.nz, align 8, !tbaa !16
  %i.rx = sitofp fast i32 %i.rw to float
  %i.ry = insertelement <8 x float> poison, float %i.rx, i64 0
  %i.rz = shufflevector <8 x float> %i.ry, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.sa = fmul fast <8 x float> %i.rz, %i.rv      ; 4 uses
  %i.sb = fadd fast <8 x float> %i.sa, %i.rz
  %i.sc = fmul fast <8 x float> %i.rz, %i.om      ; 2 uses
  %i.sd = fadd fast <8 x float> %i.sa, %i.sc      ; 2 uses
  %i.se = fadd fast <8 x float> %i.sd, %i.rz
  %i.sf = fmul fast <8 x float> %i.rz, %i.rr
  %i.sg = fadd fast <8 x float> %i.sf, %i.sa      ; 3 uses
  %i.sh = fadd fast <8 x float> %i.sg, %i.rz
  %i.si = fadd fast <8 x float> %i.sg, %i.sc      ; 2 uses
  %i.sj = fadd fast <8 x float> %i.si, %i.rz
  %i.sk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.sa, <8 x float> nofpclass(nan inf) %i.rg)
  %i.sl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.sb, <8 x float> nofpclass(nan inf) %i.rj)
  %i.sm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.sd, <8 x float> nofpclass(nan inf) %i.rl)
  %i.sn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.se, <8 x float> nofpclass(nan inf) %i.rm)
  %i.so = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.sg, <8 x float> nofpclass(nan inf) %i.rn)
  %i.sp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.sh, <8 x float> nofpclass(nan inf) %i.ro)
  %i.sq = select <8 x i1> %i.rp, <8 x float> %i.si, <8 x float> splat (float -1.000000e+00)
  %i.sr = select <8 x i1> %i.rq, <8 x float> %i.sj, <8 x float> splat (float -1.000000e+00)
  %i.ss = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sk) ; 3 uses
  %i.st = bitcast <8 x i32> %i.ss to <8 x float>
  %i.su = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sl) ; 4 uses
  %i.sv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sm) ; 4 uses
  %i.sw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sn) ; 4 uses
  %i.sx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.so) ; 4 uses
  %i.sy = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sp) ; 4 uses
  %i.sz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sq) ; 4 uses
  %i.ta = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sr) ; 3 uses
  %i.tb = bitcast <8 x i32> %i.ta to <8 x float>  ; 2 uses
  %i.tc = fsub fast <8 x float> %i.ox, %i.qc      ; 4 uses
  %i.td = fsub fast <8 x float> %i.pm, %i.qd      ; 4 uses
  %i.te = fsub fast <8 x float> %i.qb, %i.qe      ; 4 uses
  %i.tf = shufflevector <8 x i32> %i.ss, <8 x i32> %i.su, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.tg = shufflevector <8 x i32> %i.ss, <8 x i32> %i.su, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.th = bitcast <8 x i32> %i.tg to <8 x float>  ; 2 uses
  %i.ti = shufflevector <8 x i32> %i.sv, <8 x i32> %i.sw, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.tj = shufflevector <8 x i32> %i.sv, <8 x i32> %i.sw, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.tk = shufflevector <8 x i32> %i.sx, <8 x i32> %i.sy, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.tl = shufflevector <8 x i32> %i.sx, <8 x i32> %i.sy, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.tm = shufflevector <8 x i32> %i.sz, <8 x i32> %i.ta, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.tn = shufflevector <8 x i32> %i.sz, <8 x i32> %i.ta, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.to = bitcast <8 x i32> %i.tn to <8 x float>
  %i.tp = shufflevector <8 x float> %i.tc, <8 x float> %i.td, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.tq = shufflevector <8 x float> %i.tc, <8 x float> %i.td, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.tr = shufflevector <8 x float> %i.te, <8 x float> %i.st, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.ts = shufflevector <8 x float> %i.te, <8 x float> %i.th, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.tt = shufflevector <8 x i32> %i.su, <8 x i32> %i.sv, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.tu = shufflevector <8 x i32> %i.su, <8 x i32> %i.sv, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.tv = bitcast <8 x i32> %i.tu to <8 x float>
  %i.tw = shufflevector <8 x i32> %i.sw, <8 x i32> %i.sx, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.tx = shufflevector <8 x i32> %i.sw, <8 x i32> %i.sx, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ty = shufflevector <8 x i32> %i.sy, <8 x i32> %i.sz, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.tz = bitcast <8 x i32> %i.ty to <8 x float>
  %i.ua = shufflevector <8 x i32> %i.sy, <8 x i32> %i.sz, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ub = shufflevector <8 x float> %i.tb, <8 x float> %i.tc, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.uc = shufflevector <8 x float> %i.tb, <8 x float> %i.tc, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ud = shufflevector <8 x float> %i.td, <8 x float> %i.te, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ue = shufflevector <8 x float> %i.td, <8 x float> %i.te, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.uf = shufflevector <8 x i32> %i.tf, <8 x i32> %i.ti, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ug = bitcast <8 x i32> %i.uf to <8 x float>
  %i.uh = shufflevector <8 x i32> %i.tk, <8 x i32> %i.tm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ui = bitcast <8 x i32> %i.uh to <8 x float>
  %i.uj = shufflevector <8 x float> %i.tp, <8 x float> %i.tr, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.uk = shufflevector <8 x i32> %i.tt, <8 x i32> %i.tw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ul = bitcast <8 x i32> %i.uk to <8 x float>  ; 2 uses
  %i.um = shufflevector <8 x float> %i.tz, <8 x float> %i.ub, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.un = shufflevector <8 x float> %i.ud, <8 x float> %i.th, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.uo = shufflevector <8 x i32> %i.tj, <8 x i32> %i.tl, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.up = bitcast <8 x i32> %i.uo to <8 x float>  ; 2 uses
  %i.uq = shufflevector <8 x float> %i.to, <8 x float> %i.tq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ur = shufflevector <8 x float> %i.ts, <8 x float> %i.tv, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.us = shufflevector <8 x i32> %i.tx, <8 x i32> %i.ua, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ut = bitcast <8 x i32> %i.us to <8 x float>  ; 2 uses
  %i.uu = shufflevector <8 x float> %i.uc, <8 x float> %i.ue, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.uv = shufflevector <8 x i32> %i.uf, <8 x i32> %i.uh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.uw = shufflevector <8 x float> %i.uj, <8 x float> %i.ul, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ux = shufflevector <8 x float> %i.um, <8 x float> %i.un, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.uy = shufflevector <8 x float> %i.up, <8 x float> %i.uq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.uz = shufflevector <8 x float> %i.ur, <8 x float> %i.ut, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.va = shufflevector <8 x float> %i.uu, <8 x float> %i.ug, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.vb = shufflevector <8 x float> %i.ui, <8 x float> %i.uj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.vc = shufflevector <8 x float> %i.ul, <8 x float> %i.um, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.vd = shufflevector <8 x float> %i.un, <8 x float> %i.up, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ve = shufflevector <8 x float> %i.uq, <8 x float> %i.ur, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.vf = shufflevector <8 x float> %i.ut, <8 x float> %i.uu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.uv, ptr %.3876, align 1, !tbaa !41
  %i.vg = getelementptr inbounds nuw i8, ptr %.3876, i64 32
  store <8 x float> %i.uw, ptr %i.vg, align 1, !tbaa !41
  %i.vh = getelementptr inbounds nuw i8, ptr %.3876, i64 64
  store <8 x float> %i.ux, ptr %i.vh, align 1, !tbaa !41
  %i.vi = getelementptr inbounds nuw i8, ptr %.3876, i64 96
  store <8 x float> %i.uy, ptr %i.vi, align 1, !tbaa !41
  %i.vj = getelementptr inbounds nuw i8, ptr %.3876, i64 128
  store <8 x float> %i.uz, ptr %i.vj, align 1, !tbaa !41
  %i.vk = getelementptr inbounds nuw i8, ptr %.3876, i64 160
  store <8 x float> %i.va, ptr %i.vk, align 1, !tbaa !41
  %i.vl = getelementptr inbounds nuw i8, ptr %.3876, i64 192
  store <8 x float> %i.vb, ptr %i.vl, align 1, !tbaa !41
  %i.vm = getelementptr inbounds nuw i8, ptr %.3876, i64 224
  store <8 x float> %i.vc, ptr %i.vm, align 1, !tbaa !41
  %i.vn = getelementptr inbounds nuw i8, ptr %.3876, i64 256
  store <8 x float> %i.vd, ptr %i.vn, align 1, !tbaa !41
  %i.vo = getelementptr inbounds nuw i8, ptr %.3876, i64 288
  store <8 x float> %i.ve, ptr %i.vo, align 1, !tbaa !41
  %i.vp = getelementptr inbounds nuw i8, ptr %.3876, i64 320
  store <8 x float> %i.vf, ptr %i.vp, align 1, !tbaa !41
  %i.vq = getelementptr inbounds nuw i8, ptr %.0509872, i64 32 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.0507873, i64 32 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.0505874, i64 32 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.3876, i64 352 ; 2 uses
  %i.vu = add nuw nsw i32 %.0503875, 8            ; 2 uses
  %i.vv = or disjoint i32 %i.vu, 7
  %i.vw = icmp slt i32 %i.vv, %i.h
  br i1 %i.vw, label %bb.q, label %.preheader870.loopexit, !llvm.loop !449

bb.r:                                             ; preds = %.lr.ph886, %bb.ah
  %.4885 = phi ptr [ %.3.lcssa, %.lr.ph886 ], [ %i.abg, %bb.ah ] ; 11 uses
  %.1504884 = phi i32 [ %.0503.lcssa, %.lr.ph886 ], [ %i.abh, %bb.ah ]
  %.1506883 = phi ptr [ %.0505.lcssa, %.lr.ph886 ], [ %i.abf, %bb.ah ] ; 2 uses
  %.1508882 = phi ptr [ %.0507.lcssa, %.lr.ph886 ], [ %i.abe, %bb.ah ] ; 2 uses
  %.1510881 = phi ptr [ %.0509.lcssa, %.lr.ph886 ], [ %i.abd, %bb.ah ] ; 2 uses
  %i.vx = load float, ptr %.1510881, align 4, !tbaa !44
  %i.vy = load float, ptr %.1508882, align 4, !tbaa !44
  %i.vz = load float, ptr %.1506883, align 4, !tbaa !44
  %i.wa = load i32, ptr %i.oe, align 4, !tbaa !40 ; 3 uses
  %i.wb = sitofp fast i32 %i.wa to float          ; 4 uses
  %i.wc = fmul fast float %i.vz, 5.000000e-01
  %i.wd = fadd fast float %i.wc, 5.000000e-01
  %i.we = fmul fast float %i.wd, %i.wb
  %i.wf = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.we)
  %i.wg = fsub fast float %i.wf, %i.wb
  %i.wh = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.wg)
  %i.wi = fadd fast float %i.wb, -5.000000e-01
  %i.wj = fsub fast float %i.wi, %i.wh
  %i.wk = fadd fast float %i.wb, -1.000000e+00
  %.sroa.speculated6.i555 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.wj, float 0.000000e+00)
  %.sroa.speculated.i556 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i555, float %i.wk) ; 2 uses
  %i.wl = load <2 x i32>, ptr %i.oc, align 4, !tbaa !23 ; 4 uses
  %i.wm = sitofp <2 x i32> %i.wl to <2 x float>   ; 4 uses
  %i.wn = insertelement <2 x float> poison, float %i.vx, i64 0
  %i.wo = insertelement <2 x float> %i.wn, float %i.vy, i64 1
  %i.wp = fmul fast <2 x float> %i.wo, splat (float 5.000000e-01)
  %i.wq = fadd fast <2 x float> %i.wp, splat (float 5.000000e-01)
  %i.wr = fmul fast <2 x float> %i.wq, %i.wm
  %i.ws = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wr)
  %i.wt = fsub fast <2 x float> %i.ws, %i.wm
  %i.wu = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wt)
  %i.wv = fadd fast <2 x float> %i.wm, splat (float -5.000000e-01)
  %i.ww = fsub fast <2 x float> %i.wv, %i.wu
  %i.wx = fadd fast <2 x float> %i.wm, splat (float -1.000000e+00)
  %i.wy = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ww, <2 x float> zeroinitializer)
  %i.wz = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.wy, <2 x float> %i.wx) ; 2 uses
  %i.xa = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.wz)
  %i.xb = fptosi <2 x float> %i.xa to <2 x i32>   ; 5 uses
  %i.xc = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i556)
  %i.xd = fptosi float %i.xc to i32               ; 9 uses
  %i.xe = extractelement <2 x i32> %i.xb, i64 0   ; 6 uses
  %i.xf = add nsw i32 %i.xe, 1                    ; 5 uses
  %i.xg = extractelement <2 x i32> %i.xb, i64 1   ; 6 uses
  %i.xh = add nsw i32 %i.xg, 1                    ; 5 uses
  %i.xi = add nsw i32 %i.xd, 1                    ; 5 uses
  %i.xj = icmp sgt <2 x i32> %i.xb, splat (i32 -1)
  %i.xk = icmp sgt <2 x i32> %i.wl, %i.xb
  %i.xl = and <2 x i1> %i.xj, %i.xk               ; 2 uses
  %i.xm = icmp sgt i32 %i.xd, -1
  %i.xn = icmp sgt i32 %i.wa, %i.xd
  %i.xo = and i1 %i.xm, %i.xn                     ; 4 uses
  %i.xp = icmp sgt i32 %i.xe, -2
  %i.xq = extractelement <2 x i32> %i.wl, i64 0   ; 2 uses
  %i.xr = icmp slt i32 %i.xf, %i.xq
  %i.xs = and i1 %i.xp, %i.xr                     ; 2 uses
  %i.xt = icmp sgt i32 %i.xg, -2
  %i.xu = extractelement <2 x i32> %i.wl, i64 1   ; 2 uses
  %i.xv = icmp slt i32 %i.xh, %i.xu
  %i.xw = and i1 %i.xt, %i.xv                     ; 2 uses
  %i.xx = icmp sgt i32 %i.xd, -2
  %i.xy = icmp slt i32 %i.xi, %i.wa
  %i.xz = and i1 %i.xx, %i.xy                     ; 4 uses
  %i.ya = extractelement <2 x i1> %i.xl, i64 0    ; 2 uses
  %i.yb = extractelement <2 x i1> %i.xl, i64 1    ; 2 uses
  %i.yc = and i1 %i.ya, %i.yb                     ; 2 uses
  %i.yd = and i1 %i.xs, %i.yb                     ; 2 uses
  %i.ye = and i1 %i.ya, %i.xw                     ; 2 uses
  %i.yf = and i1 %i.xs, %i.xw                     ; 2 uses
  %i.yg = and i1 %i.yc, %i.xo
  %i.yh = and i1 %i.yd, %i.xo
  %i.yi = and i1 %i.xo, %i.ye
  %i.yj = and i1 %i.xo, %i.yf
  %i.yk = and i1 %i.yc, %i.xz
  %i.yl = and i1 %i.yd, %i.xz
  %i.ym = and i1 %i.ye, %i.xz
  %i.yn = and i1 %i.yf, %i.xz
  %i.yo = getelementptr inbounds nuw i8, ptr %.4885, i64 32
  br i1 %i.yg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.yp = mul i32 %i.xu, %i.xd
end_hunk_9
begin_hunk_10_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518
  %i.aah = getelementptr inbounds nuw i8, ptr %.4885, i64 20
  store i32 %i.aag, ptr %i.aah, align 4, !tbaa !23
  br i1 %i.ym, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.aai = load i32, ptr %i.oc, align 4, !tbaa !37
  %i.aaj = load i32, ptr %i.od, align 8, !tbaa !38
  %i.aak = mul i32 %i.aaj, %i.xi
  %reass.add840 = add i32 %i.aak, %i.xh
  %reass.mul841 = mul i32 %reass.add840, %i.aai
  %i.aal = add i32 %reass.mul841, %i.xe
  %i.aam = load i32, ptr %i.of, align 8, !tbaa !16
  %i.aan = mul nsw i32 %i.aal, %i.aam
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.aao = phi i32 [ %i.aan, %bb.ae ], [ -1, %bb.ad ]
  %i.aap = getelementptr inbounds nuw i8, ptr %.4885, i64 24
  store i32 %i.aao, ptr %i.aap, align 4, !tbaa !23
  br i1 %i.yn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.aaq = load i32, ptr %i.oc, align 4, !tbaa !37
  %i.aar = load i32, ptr %i.od, align 8, !tbaa !38
  %i.aas = mul i32 %i.aar, %i.xi
  %reass.add842 = add i32 %i.aas, %i.xh
  %reass.mul843 = mul i32 %reass.add842, %i.aaq
  %i.aat = add i32 %reass.mul843, %i.xf
  %i.aau = load i32, ptr %i.of, align 8, !tbaa !16
  %i.aav = mul nsw i32 %i.aat, %i.aau
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.aaw = phi i32 [ %i.aav, %bb.ag ], [ -1, %bb.af ]
  %i.aax = getelementptr inbounds nuw i8, ptr %.4885, i64 28
  store i32 %i.aaw, ptr %i.aax, align 4, !tbaa !23
  %i.aay = sitofp <2 x i32> %i.xb to <2 x float>
  %i.aaz = fsub fast <2 x float> %i.wz, %i.aay
  store <2 x float> %i.aaz, ptr %i.yo, align 4, !tbaa !44
  %i.aba = sitofp fast i32 %i.xd to float
  %i.abb = fsub fast float %.sroa.speculated.i556, %i.aba
  %i.abc = getelementptr inbounds nuw i8, ptr %.4885, i64 40
  store float %i.abb, ptr %i.abc, align 4, !tbaa !44
  %i.abd = getelementptr inbounds nuw i8, ptr %.1510881, i64 4
  %i.abe = getelementptr inbounds nuw i8, ptr %.1508882, i64 4
  %i.abf = getelementptr inbounds nuw i8, ptr %.1506883, i64 4
  %i.abg = getelementptr inbounds nuw i8, ptr %.4885, i64 44
  %i.abh = add nuw nsw i32 %.1504884, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.abh, %i.h
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !450

.loopexit:                                        ; preds = %bb.ah, %._crit_edge, %.preheader870, %.preheader869
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit518:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = mul i32 %i.e, %i.g                       ; 9 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !20, !noalias !468 ; 3 uses
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader858, label %_ZN4ncnn3MatD2Ev.exit516

.preheader858:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !17
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit517.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit517.lr.ph:                   ; preds = %.preheader858
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp sgt i32 %i.h, 23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  br label %_ZN4ncnn3MatD2Ev.exit517

_ZN4ncnn3MatD2Ev.exit517:                         ; preds = %_ZN4ncnn3MatD2Ev.exit517.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0889 = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit517.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !20, !noalias !469
  %i.v = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !469
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !469
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 2 uses
  br i1 %i.p, label %.lr.ph879, label %.preheader

.preheader:                                       ; preds = %.lr.ph879, %_ZN4ncnn3MatD2Ev.exit517
  %.0501.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.ho, %.lr.ph879 ] ; 2 uses
  %.0499.lcssa = phi ptr [ %i.z, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hm, %.lr.ph879 ]
  %.1.lcssa = phi ptr [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ], [ %i.hn, %.lr.ph879 ] ; 2 uses
  %i.aa = icmp slt i32 %.0501.lcssa, %i.h
  br i1 %i.aa, label %.lr.ph886, label %._crit_edge

.lr.ph879:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit517, %.lr.ph879
  %.1878 = phi ptr [ %i.hn, %.lr.ph879 ], [ %.0889, %_ZN4ncnn3MatD2Ev.exit517 ] ; 12 uses
  %.0499877 = phi ptr [ %i.hm, %.lr.ph879 ], [ %i.z, %_ZN4ncnn3MatD2Ev.exit517 ] ; 4 uses
  %.0501876 = phi i32 [ %i.ho, %.lr.ph879 ], [ 0, %_ZN4ncnn3MatD2Ev.exit517 ] ; 2 uses
  %i.ab = load <8 x float>, ptr %.0499877, align 1, !tbaa !41 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0499877, i64 32
  %i.ad = load <8 x float>, ptr %i.ac, align 1, !tbaa !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0499877, i64 64
  %i.af = load <8 x float>, ptr %i.ae, align 1, !tbaa !41 ; 2 uses
  %i.ag = shufflevector <8 x float> %i.ab, <8 x float> %i.ad, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ah = shufflevector <8 x float> %i.ab, <8 x float> %i.af, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ai = shufflevector <8 x float> %i.ad, <8 x float> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aj = shufflevector <8 x float> %i.ag, <8 x float> %i.ah, <8 x i32> <i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 12, i32 13> ; 2 uses
  %i.ak = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <8 x i32> <i32 2, i32 3, i32 9, i32 10, i32 6, i32 7, i32 13, i32 14> ; 2 uses
  %i.al = shufflevector <8 x float> %i.ag, <8 x float> %i.ak, <8 x i32> <i32 0, i32 3, i32 8, i32 10, i32 4, i32 7, i32 12, i32 14>
  %i.am = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 0, i32 2, i32 9, i32 11, i32 4, i32 6, i32 13, i32 15>
  %i.an = shufflevector <8 x float> %i.aj, <8 x float> %i.ai, <8 x i32> <i32 1, i32 3, i32 8, i32 11, i32 5, i32 7, i32 12, i32 15>
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ap = sitofp fast i32 %i.ao to float
  %i.aq = insertelement <8 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <8 x float> %i.aq, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.as = fmul fast <8 x float> %i.al, splat (float 5.000000e-01)
  %i.at = fadd fast <8 x float> %i.as, splat (float 5.000000e-01)
  %i.au = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00) ; 3 uses
  %i.av = fmul fast <8 x float> %i.at, %i.au
  %i.aw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.av)
  %i.ax = fsub fast <8 x float> %i.aw, %i.au
  %i.ay = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ax)
  %i.az = fsub fast <8 x float> %i.au, %i.ay      ; 2 uses
  %i.ba = load i32, ptr %i.r, align 8, !tbaa !38
  %i.bb = sitofp fast i32 %i.ba to float
  %i.bc = insertelement <8 x float> poison, float %i.bb, i64 0
  %i.bd = shufflevector <8 x float> %i.bc, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.be = fmul fast <8 x float> %i.am, splat (float 5.000000e-01)
  %i.bf = fadd fast <8 x float> %i.be, splat (float 5.000000e-01)
  %i.bg = fadd fast <8 x float> %i.bd, splat (float -1.000000e+00) ; 3 uses
  %i.bh = fmul fast <8 x float> %i.bg, %i.bf
  %i.bi = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.bh)
  %i.bj = fsub fast <8 x float> %i.bi, %i.bg
  %i.bk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bj)
  %i.bl = fsub fast <8 x float> %i.bg, %i.bk      ; 2 uses
  %i.bm = load i32, ptr %i.s, align 4, !tbaa !40
  %i.bn = sitofp fast i32 %i.bm to float
  %i.bo = insertelement <8 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bq = fmul fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.br = fadd fast <8 x float> %i.bq, splat (float 5.000000e-01)
  %i.bs = fadd fast <8 x float> %i.bp, splat (float -1.000000e+00) ; 3 uses
  %i.bt = fmul fast <8 x float> %i.bs, %i.br
  %i.bu = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.bt)
  %i.bv = fsub fast <8 x float> %i.bu, %i.bs
  %i.bw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bv)
  %i.bx = fsub fast <8 x float> %i.bs, %i.bw      ; 2 uses
  %i.by = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.az, i32 1) ; 5 uses
  %i.bz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bl, i32 1) ; 5 uses
  %i.ca = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bx, i32 1) ; 5 uses
  %i.cb = fadd fast <8 x float> %i.by, splat (float 1.000000e+00) ; 2 uses
  %i.cc = fadd fast <8 x float> %i.bz, splat (float 1.000000e+00) ; 2 uses
  %i.cd = fadd fast <8 x float> %i.ca, splat (float 1.000000e+00) ; 2 uses
  %i.ce = fcmp fast ogt <8 x float> %i.by, splat (float -1.000000e+00)
  %i.cf = fcmp fast ogt <8 x float> %i.ar, %i.by
  %i.cg = and <8 x i1> %i.ce, %i.cf               ; 2 uses
  %i.ch = fcmp fast ogt <8 x float> %i.cb, splat (float -1.000000e+00)
  %i.ci = fcmp fast ogt <8 x float> %i.ar, %i.cb
  %i.cj = and <8 x i1> %i.ch, %i.ci               ; 2 uses
  %i.ck = fcmp fast ogt <8 x float> %i.bz, splat (float -1.000000e+00)
  %i.cl = fcmp fast ogt <8 x float> %i.bd, %i.bz
  %i.cm = and <8 x i1> %i.ck, %i.cl
  %i.cn = sext <8 x i1> %i.cm to <8 x i32>        ; 2 uses
  %i.co = fcmp fast ogt <8 x float> %i.cc, splat (float -1.000000e+00)
  %i.cp = fcmp fast ogt <8 x float> %i.bd, %i.cc
  %i.cq = and <8 x i1> %i.co, %i.cp               ; 2 uses
  %i.cr = fcmp fast ogt <8 x float> %i.ca, splat (float -1.000000e+00)
  %i.cs = fcmp fast ogt <8 x float> %i.bp, %i.ca
  %i.ct = and <8 x i1> %i.cr, %i.cs               ; 3 uses
  %i.cu = sext <8 x i1> %i.ct to <8 x i32>
  %i.cv = fcmp fast ogt <8 x float> %i.cd, splat (float -1.000000e+00)
  %i.cw = fcmp fast ogt <8 x float> %i.bp, %i.cd
  %i.cx = and <8 x i1> %i.cv, %i.cw               ; 4 uses
  %i.cy = and <8 x i1> %i.cg, %i.cq               ; 2 uses
  %i.cz = and <8 x i1> %i.cj, %i.cq               ; 2 uses
  %i.da = bitcast <8 x i32> %i.cn to <8 x float>
  %i.db = select <8 x i1> %i.cg, <8 x float> %i.da, <8 x float> zeroinitializer ; 2 uses
  %i.dc = select <8 x i1> %i.ct, <8 x float> %i.db, <8 x float> zeroinitializer
  %i.dd = bitcast <8 x i32> %i.cn to <8 x float>
  %i.de = select <8 x i1> %i.cj, <8 x float> %i.dd, <8 x float> zeroinitializer ; 2 uses
  %i.df = select <8 x i1> %i.ct, <8 x float> %i.de, <8 x float> zeroinitializer
  %i.dg = bitcast <8 x i32> %i.cu to <8 x float>  ; 2 uses
  %i.dh = select <8 x i1> %i.cy, <8 x float> %i.dg, <8 x float> zeroinitializer
  %i.di = select <8 x i1> %i.cz, <8 x float> %i.dg, <8 x float> zeroinitializer
  %i.dj = select <8 x i1> %i.cx, <8 x float> %i.db, <8 x float> zeroinitializer
  %i.dk = select <8 x i1> %i.cx, <8 x float> %i.de, <8 x float> zeroinitializer
  %i.dl = and <8 x i1> %i.cy, %i.cx
  %i.dm = and <8 x i1> %i.cz, %i.cx
  %i.dn = fmul fast <8 x float> %i.bd, %i.ar      ; 2 uses
  %i.do = fmul fast <8 x float> %i.bz, %i.ar
  %i.dp = fadd fast <8 x float> %i.do, %i.by
  %i.dq = fmul fast <8 x float> %i.dn, %i.ca
  %i.dr = fadd fast <8 x float> %i.dp, %i.dq
  %i.ds = load i32, ptr %i.t, align 8, !tbaa !16
  %i.dt = sitofp fast i32 %i.ds to float
  %i.du = insertelement <8 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <8 x float> %i.du, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.dw = fmul fast <8 x float> %i.dv, %i.dr      ; 4 uses
  %i.dx = fadd fast <8 x float> %i.dw, %i.dv
  %i.dy = fmul fast <8 x float> %i.dv, %i.ar      ; 2 uses
  %i.dz = fadd fast <8 x float> %i.dw, %i.dy      ; 2 uses
  %i.ea = fadd fast <8 x float> %i.dz, %i.dv
  %i.eb = fmul fast <8 x float> %i.dv, %i.dn
  %i.ec = fadd fast <8 x float> %i.eb, %i.dw      ; 3 uses
  %i.ed = fadd fast <8 x float> %i.ec, %i.dv
  %i.ee = fadd fast <8 x float> %i.ec, %i.dy      ; 2 uses
  %i.ef = fadd fast <8 x float> %i.ee, %i.dv
  %i.eg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dw, <8 x float> nofpclass(nan inf) %i.dc)
  %i.eh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.df)
  %i.ei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.dz, <8 x float> nofpclass(nan inf) %i.dh)
  %i.ej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ea, <8 x float> nofpclass(nan inf) %i.di)
  %i.ek = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ec, <8 x float> nofpclass(nan inf) %i.dj)
  %i.el = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.dk)
  %i.em = select <8 x i1> %i.dl, <8 x float> %i.ee, <8 x float> splat (float -1.000000e+00)
  %i.en = select <8 x i1> %i.dm, <8 x float> %i.ef, <8 x float> splat (float -1.000000e+00)
  %i.eo = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eg) ; 3 uses
  %i.ep = bitcast <8 x i32> %i.eo to <8 x float>
  %i.eq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eh) ; 4 uses
  %i.er = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ei) ; 4 uses
  %i.es = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ej) ; 4 uses
  %i.et = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ek) ; 4 uses
  %i.eu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.el) ; 4 uses
  %i.ev = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.em) ; 4 uses
  %i.ew = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.en) ; 3 uses
  %i.ex = bitcast <8 x i32> %i.ew to <8 x float>  ; 2 uses
  %i.ey = fsub fast <8 x float> %i.az, %i.by      ; 4 uses
  %i.ez = fsub fast <8 x float> %i.bl, %i.bz      ; 4 uses
  %i.fa = fsub fast <8 x float> %i.bx, %i.ca      ; 4 uses
  %i.fb = shufflevector <8 x i32> %i.eo, <8 x i32> %i.eq, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x i32> %i.eo, <8 x i32> %i.eq, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.fd = bitcast <8 x i32> %i.fc to <8 x float>  ; 2 uses
  %i.fe = shufflevector <8 x i32> %i.er, <8 x i32> %i.es, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ff = shufflevector <8 x i32> %i.er, <8 x i32> %i.es, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fh = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fj = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fk = bitcast <8 x i32> %i.fj to <8 x float>
  %i.fl = shufflevector <8 x float> %i.ey, <8 x float> %i.ez, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.fm = shufflevector <8 x float> %i.ey, <8 x float> %i.ez, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x float> %i.fa, <8 x float> %i.ep, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.fo = shufflevector <8 x float> %i.fa, <8 x float> %i.fd, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.fp = shufflevector <8 x i32> %i.eq, <8 x i32> %i.er, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fq = shufflevector <8 x i32> %i.eq, <8 x i32> %i.er, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fr = bitcast <8 x i32> %i.fq to <8 x float>
  %i.fs = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ft = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fu = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fv = bitcast <8 x i32> %i.fu to <8 x float>
  %i.fw = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fx = shufflevector <8 x float> %i.ex, <8 x float> %i.ey, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.fy = shufflevector <8 x float> %i.ex, <8 x float> %i.ey, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.fz = shufflevector <8 x float> %i.ez, <8 x float> %i.fa, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.ga = shufflevector <8 x float> %i.ez, <8 x float> %i.fa, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.gb = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fe, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gc = bitcast <8 x i32> %i.gb to <8 x float>
  %i.gd = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>
  %i.gf = shufflevector <8 x float> %i.fl, <8 x float> %i.fn, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.fp, <8 x i32> %i.fs, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gh = bitcast <8 x i32> %i.gg to <8 x float>  ; 2 uses
  %i.gi = shufflevector <8 x float> %i.fv, <8 x float> %i.fx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gj = shufflevector <8 x float> %i.fz, <8 x float> %i.fd, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.gk = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gl = bitcast <8 x i32> %i.gk to <8 x float>  ; 2 uses
  %i.gm = shufflevector <8 x float> %i.fk, <8 x float> %i.fm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gn = shufflevector <8 x float> %i.fo, <8 x float> %i.fr, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.go = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gp = bitcast <8 x i32> %i.go to <8 x float>  ; 2 uses
  %i.gq = shufflevector <8 x float> %i.fy, <8 x float> %i.ga, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gr = shufflevector <8 x i32> %i.gb, <8 x i32> %i.gd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gs = shufflevector <8 x float> %i.gf, <8 x float> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gt = shufflevector <8 x float> %i.gi, <8 x float> %i.gj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gu = shufflevector <8 x float> %i.gl, <8 x float> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gv = shufflevector <8 x float> %i.gn, <8 x float> %i.gp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gw = shufflevector <8 x float> %i.gq, <8 x float> %i.gc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gx = shufflevector <8 x float> %i.ge, <8 x float> %i.gf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gy = shufflevector <8 x float> %i.gh, <8 x float> %i.gi, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gz = shufflevector <8 x float> %i.gj, <8 x float> %i.gl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ha = shufflevector <8 x float> %i.gm, <8 x float> %i.gn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hb = shufflevector <8 x float> %i.gp, <8 x float> %i.gq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.gr, ptr %.1878, align 1, !tbaa !41
  %i.hc = getelementptr inbounds nuw i8, ptr %.1878, i64 32
  store <8 x float> %i.gs, ptr %i.hc, align 1, !tbaa !41
  %i.hd = getelementptr inbounds nuw i8, ptr %.1878, i64 64
  store <8 x float> %i.gt, ptr %i.hd, align 1, !tbaa !41
  %i.he = getelementptr inbounds nuw i8, ptr %.1878, i64 96
  store <8 x float> %i.gu, ptr %i.he, align 1, !tbaa !41
  %i.hf = getelementptr inbounds nuw i8, ptr %.1878, i64 128
  store <8 x float> %i.gv, ptr %i.hf, align 1, !tbaa !41
  %i.hg = getelementptr inbounds nuw i8, ptr %.1878, i64 160
  store <8 x float> %i.gw, ptr %i.hg, align 1, !tbaa !41
  %i.hh = getelementptr inbounds nuw i8, ptr %.1878, i64 192
  store <8 x float> %i.gx, ptr %i.hh, align 1, !tbaa !41
  %i.hi = getelementptr inbounds nuw i8, ptr %.1878, i64 224
  store <8 x float> %i.gy, ptr %i.hi, align 1, !tbaa !41
  %i.hj = getelementptr inbounds nuw i8, ptr %.1878, i64 256
  store <8 x float> %i.gz, ptr %i.hj, align 1, !tbaa !41
  %i.hk = getelementptr inbounds nuw i8, ptr %.1878, i64 288
  store <8 x float> %i.ha, ptr %i.hk, align 1, !tbaa !41
  %i.hl = getelementptr inbounds nuw i8, ptr %.1878, i64 320
  store <8 x float> %i.hb, ptr %i.hl, align 1, !tbaa !41
  %i.hm = getelementptr inbounds nuw i8, ptr %.0499877, i64 96 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.1878, i64 352 ; 2 uses
  %i.ho = add nuw nsw i32 %.0501876, 24           ; 2 uses
  %i.hp = add nuw nsw i32 %.0501876, 47
  %i.hq = icmp slt i32 %i.hp, %i.h
  br i1 %i.hq, label %.lr.ph879, label %.preheader, !llvm.loop !459

.lr.ph886:                                        ; preds = %.preheader, %bb.p
  %.2885 = phi ptr [ %i.my, %bb.p ], [ %.1.lcssa, %.preheader ] ; 11 uses
  %.1500884 = phi ptr [ %i.mx, %bb.p ], [ %.0499.lcssa, %.preheader ] ; 3 uses
  %.1502883 = phi i32 [ %i.mz, %bb.p ], [ %.0501.lcssa, %.preheader ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.1500884, i64 8
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !44
  %i.ht = load i32, ptr %i.s, align 4, !tbaa !40  ; 4 uses
  %i.hu = fmul fast float %i.hs, 5.000000e-01
  %i.hv = fadd fast float %i.hu, 5.000000e-01
  %i.hw = add nsw i32 %i.ht, -1
  %i.hx = sitofp fast i32 %i.hw to float          ; 3 uses
  %i.hy = fmul fast float %i.hv, %i.hx
  %i.hz = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.hy)
  %i.ia = fsub fast float %i.hz, %i.hx
  %i.ib = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ia)
  %i.ic = fsub fast float %i.hx, %i.ib
  %i.id = sitofp fast i32 %i.ht to float
  %i.ie = fadd fast float %i.id, -1.000000e+00
  %.sroa.speculated6.i549 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ic, float 0.000000e+00)
  %.sroa.speculated.i550 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i549, float %i.ie) ; 2 uses
  %i.if = load <2 x float>, ptr %.1500884, align 4, !tbaa !44
  %i.ig = load <2 x i32>, ptr %i.q, align 4, !tbaa !23 ; 5 uses
  %i.ih = fmul fast <2 x float> %i.if, splat (float 5.000000e-01)
  %i.ii = fadd fast <2 x float> %i.ih, splat (float 5.000000e-01)
  %i.ij = add nsw <2 x i32> %i.ig, splat (i32 -1)
  %i.ik = sitofp <2 x i32> %i.ij to <2 x float>   ; 3 uses
  %i.il = fmul fast <2 x float> %i.ii, %i.ik
  %i.im = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.il)
  %i.in = fsub fast <2 x float> %i.im, %i.ik
  %i.io = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.in)
  %i.ip = fsub fast <2 x float> %i.ik, %i.io
  %i.iq = sitofp <2 x i32> %i.ig to <2 x float>
  %i.ir = fadd fast <2 x float> %i.iq, splat (float -1.000000e+00)
  %i.is = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ip, <2 x float> zeroinitializer)
  %i.it = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.is, <2 x float> %i.ir) ; 2 uses
  %i.iu = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.it)
  %i.iv = fptosi <2 x float> %i.iu to <2 x i32>   ; 5 uses
  %i.iw = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i550)
  %i.ix = fptosi float %i.iw to i32               ; 9 uses
  %i.iy = extractelement <2 x i32> %i.iv, i64 0   ; 6 uses
  %i.iz = add nsw i32 %i.iy, 1                    ; 5 uses
  %i.ja = extractelement <2 x i32> %i.iv, i64 1   ; 6 uses
  %i.jb = add nsw i32 %i.ja, 1                    ; 5 uses
  %i.jc = add nsw i32 %i.ix, 1                    ; 5 uses
  %i.jd = icmp sgt <2 x i32> %i.iv, splat (i32 -1)
  %i.je = icmp sgt <2 x i32> %i.ig, %i.iv
  %i.jf = and <2 x i1> %i.jd, %i.je               ; 2 uses
  %i.jg = icmp sgt i32 %i.ix, -1
  %i.jh = icmp sgt i32 %i.ht, %i.ix
  %i.ji = and i1 %i.jg, %i.jh                     ; 4 uses
  %i.jj = icmp sgt i32 %i.iy, -2
  %i.jk = extractelement <2 x i32> %i.ig, i64 0   ; 2 uses
  %i.jl = icmp slt i32 %i.iz, %i.jk
  %i.jm = and i1 %i.jj, %i.jl                     ; 2 uses
  %i.jn = icmp sgt i32 %i.ja, -2
  %i.jo = extractelement <2 x i32> %i.ig, i64 1   ; 2 uses
  %i.jp = icmp slt i32 %i.jb, %i.jo
  %i.jq = and i1 %i.jn, %i.jp                     ; 2 uses
  %i.jr = icmp sgt i32 %i.ix, -2
  %i.js = icmp slt i32 %i.jc, %i.ht
  %i.jt = and i1 %i.jr, %i.js                     ; 4 uses
  %i.ju = extractelement <2 x i1> %i.jf, i64 0    ; 2 uses
  %i.jv = extractelement <2 x i1> %i.jf, i64 1    ; 2 uses
  %i.jw = and i1 %i.ju, %i.jv                     ; 2 uses
  %i.jx = and i1 %i.jm, %i.jv                     ; 2 uses
  %i.jy = and i1 %i.ju, %i.jq                     ; 2 uses
  %i.jz = and i1 %i.jm, %i.jq                     ; 2 uses
  %i.ka = and i1 %i.jw, %i.ji
  %i.kb = and i1 %i.jx, %i.ji
  %i.kc = and i1 %i.ji, %i.jy
  %i.kd = and i1 %i.ji, %i.jz
  %i.ke = and i1 %i.jw, %i.jt
  %i.kf = and i1 %i.jx, %i.jt
  %i.kg = and i1 %i.jy, %i.jt
  %i.kh = and i1 %i.jz, %i.jt
  %i.ki = getelementptr inbounds nuw i8, ptr %.2885, i64 32
  br i1 %i.ka, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph886
  %i.kj = mul i32 %i.jo, %i.ix
  %reass.add842 = add i32 %i.kj, %i.ja
  %reass.mul843 = mul i32 %reass.add842, %i.jk
  %i.kk = add i32 %reass.mul843, %i.iy
  %i.kl = load i32, ptr %i.t, align 8, !tbaa !16
end_hunk_10
begin_hunk_11_@_ZN4ncnn35gridsample_3d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit518

bb.k:                                             ; preds = %bb.j
  %i.lu = load i32, ptr %i.q, align 4, !tbaa !37
  %i.lv = load i32, ptr %i.r, align 8, !tbaa !38
  %i.lw = mul i32 %i.lv, %i.jc
  %reass.add852 = add i32 %i.lw, %i.ja
  %reass.mul853 = mul i32 %reass.add852, %i.lu
  %i.lx = add i32 %reass.mul853, %i.iz
  %i.ly = load i32, ptr %i.t, align 8, !tbaa !16
  %i.lz = mul nsw i32 %i.lx, %i.ly
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ma = phi i32 [ %i.lz, %bb.k ], [ -1, %bb.j ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.2885, i64 20
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !23
  br i1 %i.kg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mc = load i32, ptr %i.q, align 4, !tbaa !37
  %i.md = load i32, ptr %i.r, align 8, !tbaa !38
  %i.me = mul i32 %i.md, %i.jc
  %reass.add854 = add i32 %i.me, %i.jb
  %reass.mul855 = mul i32 %reass.add854, %i.mc
  %i.mf = add i32 %reass.mul855, %i.iy
  %i.mg = load i32, ptr %i.t, align 8, !tbaa !16
  %i.mh = mul nsw i32 %i.mf, %i.mg
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.mi = phi i32 [ %i.mh, %bb.m ], [ -1, %bb.l ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.2885, i64 24
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !23
  br i1 %i.kh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mk = load i32, ptr %i.q, align 4, !tbaa !37
  %i.ml = load i32, ptr %i.r, align 8, !tbaa !38
  %i.mm = mul i32 %i.ml, %i.jc
  %reass.add856 = add i32 %i.mm, %i.jb
  %reass.mul857 = mul i32 %reass.add856, %i.mk
  %i.mn = add i32 %reass.mul857, %i.iz
  %i.mo = load i32, ptr %i.t, align 8, !tbaa !16
  %i.mp = mul nsw i32 %i.mn, %i.mo
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mq = phi i32 [ %i.mp, %bb.o ], [ -1, %bb.n ]
  %i.mr = getelementptr inbounds nuw i8, ptr %.2885, i64 28
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !23
  %i.ms = sitofp <2 x i32> %i.iv to <2 x float>
  %i.mt = fsub fast <2 x float> %i.it, %i.ms
  store <2 x float> %i.mt, ptr %i.ki, align 4, !tbaa !44
  %i.mu = sitofp fast i32 %i.ix to float
  %i.mv = fsub fast float %.sroa.speculated.i550, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %.2885, i64 40
  store float %i.mv, ptr %i.mw, align 4, !tbaa !44
  %i.mx = getelementptr inbounds nuw i8, ptr %.1500884, i64 12
  %i.my = getelementptr inbounds nuw i8, ptr %.2885, i64 44 ; 2 uses
  %i.mz = add nuw nsw i32 %.1502883, 3            ; 2 uses
  %i.na = icmp slt i32 %i.mz, %i.h
  br i1 %i.na, label %.lr.ph886, label %._crit_edge, !llvm.loop !460

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.my, %bb.p ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nb = load i32, ptr %i.k, align 8, !tbaa !17
  %i.nc = sext i32 %i.nb to i64
  %i.nd = icmp slt i64 %indvars.iv.next, %i.nc
  br i1 %i.nd, label %_ZN4ncnn3MatD2Ev.exit517, label %.loopexit, !llvm.loop !461

_ZN4ncnn3MatD2Ev.exit516:                         ; preds = %_ZN4ncnn3MatD2Ev.exit518
  %i.ne = load ptr, ptr %1, align 8, !tbaa !20, !noalias !470 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nh = load i64, ptr %i.nf, align 8, !tbaa !19, !noalias !471 ; 2 uses
  %i.ni = load i64, ptr %i.ng, align 8, !tbaa !18, !noalias !471 ; 2 uses
  %i.nj = mul i64 %i.ni, %i.nh
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nj ; 2 uses
  %i.nl = shl i64 %i.nh, 1
  %i.nm = mul i64 %i.nl, %i.ni
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nm ; 2 uses
  %i.no = icmp sgt i32 %i.h, 7
  br i1 %i.no, label %.lr.ph, label %.preheader859

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit516
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.q

.preheader859.loopexit:                           ; preds = %bb.q
  %i.nt = and i32 %i.h, 2147483640
  br label %.preheader859

.preheader859:                                    ; preds = %.preheader859.loopexit, %_ZN4ncnn3MatD2Ev.exit516
  %.0509.lcssa = phi ptr [ %i.ne, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.va, %.preheader859.loopexit ]
  %.0507.lcssa = phi ptr [ %i.nk, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vb, %.preheader859.loopexit ]
  %.0505.lcssa = phi ptr [ %i.nn, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vc, %.preheader859.loopexit ]
  %.0503.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.nt, %.preheader859.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.i, %_ZN4ncnn3MatD2Ev.exit516 ], [ %i.vd, %.preheader859.loopexit ]
  %i.nu = icmp slt i32 %.0503.lcssa, %i.h
  br i1 %i.nu, label %.lr.ph875, label %.loopexit

.lr.ph875:                                        ; preds = %.preheader859
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.3865 = phi ptr [ %i.i, %.lr.ph ], [ %i.vd, %bb.q ] ; 12 uses
  %.0503864 = phi i32 [ 0, %.lr.ph ], [ %i.ve, %bb.q ]
  %.0505863 = phi ptr [ %i.nn, %.lr.ph ], [ %i.vc, %bb.q ] ; 2 uses
  %.0507862 = phi ptr [ %i.nk, %.lr.ph ], [ %i.vb, %bb.q ] ; 2 uses
  %.0509861 = phi ptr [ %i.ne, %.lr.ph ], [ %i.va, %bb.q ] ; 2 uses
  %i.nz = load <8 x float>, ptr %.0509861, align 1, !tbaa !41
  %i.oa = load <8 x float>, ptr %.0507862, align 1, !tbaa !41
  %i.ob = load <8 x float>, ptr %.0505863, align 1, !tbaa !41
  %i.oc = load i32, ptr %i.np, align 4, !tbaa !37
  %i.od = sitofp fast i32 %i.oc to float
  %i.oe = insertelement <8 x float> poison, float %i.od, i64 0
  %i.of = shufflevector <8 x float> %i.oe, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.og = fmul fast <8 x float> %i.nz, splat (float 5.000000e-01)
  %i.oh = fadd fast <8 x float> %i.og, splat (float 5.000000e-01)
  %i.oi = fadd fast <8 x float> %i.of, splat (float -1.000000e+00) ; 3 uses
  %i.oj = fmul fast <8 x float> %i.oi, %i.oh
  %i.ok = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.oj)
  %i.ol = fsub fast <8 x float> %i.ok, %i.oi
  %i.om = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ol)
  %i.on = fsub fast <8 x float> %i.oi, %i.om      ; 2 uses
  %i.oo = load i32, ptr %i.nq, align 8, !tbaa !38
  %i.op = sitofp fast i32 %i.oo to float
  %i.oq = insertelement <8 x float> poison, float %i.op, i64 0
  %i.or = shufflevector <8 x float> %i.oq, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.os = fmul fast <8 x float> %i.oa, splat (float 5.000000e-01)
  %i.ot = fadd fast <8 x float> %i.os, splat (float 5.000000e-01)
  %i.ou = fadd fast <8 x float> %i.or, splat (float -1.000000e+00) ; 3 uses
  %i.ov = fmul fast <8 x float> %i.ou, %i.ot
  %i.ow = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ov)
  %i.ox = fsub fast <8 x float> %i.ow, %i.ou
  %i.oy = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ox)
  %i.oz = fsub fast <8 x float> %i.ou, %i.oy      ; 2 uses
  %i.pa = load i32, ptr %i.nr, align 4, !tbaa !40
  %i.pb = sitofp fast i32 %i.pa to float
  %i.pc = insertelement <8 x float> poison, float %i.pb, i64 0
  %i.pd = shufflevector <8 x float> %i.pc, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.pe = fmul fast <8 x float> %i.ob, splat (float 5.000000e-01)
  %i.pf = fadd fast <8 x float> %i.pe, splat (float 5.000000e-01)
  %i.pg = fadd fast <8 x float> %i.pd, splat (float -1.000000e+00) ; 3 uses
  %i.ph = fmul fast <8 x float> %i.pg, %i.pf
  %i.pi = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ph)
  %i.pj = fsub fast <8 x float> %i.pi, %i.pg
  %i.pk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pj)
  %i.pl = fsub fast <8 x float> %i.pg, %i.pk      ; 2 uses
  %i.pm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.on, i32 1) ; 5 uses
  %i.pn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.oz, i32 1) ; 5 uses
  %i.po = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.pl, i32 1) ; 5 uses
  %i.pp = fadd fast <8 x float> %i.pm, splat (float 1.000000e+00) ; 2 uses
  %i.pq = fadd fast <8 x float> %i.pn, splat (float 1.000000e+00) ; 2 uses
  %i.pr = fadd fast <8 x float> %i.po, splat (float 1.000000e+00) ; 2 uses
  %i.ps = fcmp fast ogt <8 x float> %i.pm, splat (float -1.000000e+00)
  %i.pt = fcmp fast ogt <8 x float> %i.of, %i.pm
  %i.pu = and <8 x i1> %i.ps, %i.pt               ; 2 uses
  %i.pv = fcmp fast ogt <8 x float> %i.pp, splat (float -1.000000e+00)
  %i.pw = fcmp fast ogt <8 x float> %i.of, %i.pp
  %i.px = and <8 x i1> %i.pv, %i.pw               ; 2 uses
  %i.py = fcmp fast ogt <8 x float> %i.pn, splat (float -1.000000e+00)
  %i.pz = fcmp fast ogt <8 x float> %i.or, %i.pn
  %i.qa = and <8 x i1> %i.py, %i.pz
  %i.qb = sext <8 x i1> %i.qa to <8 x i32>        ; 2 uses
  %i.qc = fcmp fast ogt <8 x float> %i.pq, splat (float -1.000000e+00)
  %i.qd = fcmp fast ogt <8 x float> %i.or, %i.pq
  %i.qe = and <8 x i1> %i.qc, %i.qd               ; 2 uses
  %i.qf = fcmp fast ogt <8 x float> %i.po, splat (float -1.000000e+00)
  %i.qg = fcmp fast ogt <8 x float> %i.pd, %i.po
  %i.qh = and <8 x i1> %i.qf, %i.qg               ; 3 uses
  %i.qi = sext <8 x i1> %i.qh to <8 x i32>
  %i.qj = fcmp fast ogt <8 x float> %i.pr, splat (float -1.000000e+00)
  %i.qk = fcmp fast ogt <8 x float> %i.pd, %i.pr
  %i.ql = and <8 x i1> %i.qj, %i.qk               ; 4 uses
  %i.qm = and <8 x i1> %i.pu, %i.qe               ; 2 uses
  %i.qn = and <8 x i1> %i.px, %i.qe               ; 2 uses
  %i.qo = bitcast <8 x i32> %i.qb to <8 x float>
  %i.qp = select <8 x i1> %i.pu, <8 x float> %i.qo, <8 x float> zeroinitializer ; 2 uses
  %i.qq = select <8 x i1> %i.qh, <8 x float> %i.qp, <8 x float> zeroinitializer
  %i.qr = bitcast <8 x i32> %i.qb to <8 x float>
  %i.qs = select <8 x i1> %i.px, <8 x float> %i.qr, <8 x float> zeroinitializer ; 2 uses
  %i.qt = select <8 x i1> %i.qh, <8 x float> %i.qs, <8 x float> zeroinitializer
  %i.qu = bitcast <8 x i32> %i.qi to <8 x float>  ; 2 uses
  %i.qv = select <8 x i1> %i.qm, <8 x float> %i.qu, <8 x float> zeroinitializer
  %i.qw = select <8 x i1> %i.qn, <8 x float> %i.qu, <8 x float> zeroinitializer
  %i.qx = select <8 x i1> %i.ql, <8 x float> %i.qp, <8 x float> zeroinitializer
  %i.qy = select <8 x i1> %i.ql, <8 x float> %i.qs, <8 x float> zeroinitializer
  %i.qz = and <8 x i1> %i.qm, %i.ql
  %i.ra = and <8 x i1> %i.qn, %i.ql
  %i.rb = fmul fast <8 x float> %i.or, %i.of      ; 2 uses
  %i.rc = fmul fast <8 x float> %i.pn, %i.of
  %i.rd = fadd fast <8 x float> %i.rc, %i.pm
  %i.re = fmul fast <8 x float> %i.rb, %i.po
  %i.rf = fadd fast <8 x float> %i.rd, %i.re
  %i.rg = load i32, ptr %i.ns, align 8, !tbaa !16
  %i.rh = sitofp fast i32 %i.rg to float
  %i.ri = insertelement <8 x float> poison, float %i.rh, i64 0
  %i.rj = shufflevector <8 x float> %i.ri, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.rk = fmul fast <8 x float> %i.rj, %i.rf      ; 4 uses
  %i.rl = fadd fast <8 x float> %i.rk, %i.rj
  %i.rm = fmul fast <8 x float> %i.rj, %i.of      ; 2 uses
  %i.rn = fadd fast <8 x float> %i.rk, %i.rm      ; 2 uses
  %i.ro = fadd fast <8 x float> %i.rn, %i.rj
  %i.rp = fmul fast <8 x float> %i.rj, %i.rb
  %i.rq = fadd fast <8 x float> %i.rp, %i.rk      ; 3 uses
  %i.rr = fadd fast <8 x float> %i.rq, %i.rj
  %i.rs = fadd fast <8 x float> %i.rq, %i.rm      ; 2 uses
  %i.rt = fadd fast <8 x float> %i.rs, %i.rj
  %i.ru = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rk, <8 x float> nofpclass(nan inf) %i.qq)
  %i.rv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rl, <8 x float> nofpclass(nan inf) %i.qt)
  %i.rw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rn, <8 x float> nofpclass(nan inf) %i.qv)
  %i.rx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ro, <8 x float> nofpclass(nan inf) %i.qw)
  %i.ry = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rq, <8 x float> nofpclass(nan inf) %i.qx)
  %i.rz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.rr, <8 x float> nofpclass(nan inf) %i.qy)
  %i.sa = select <8 x i1> %i.qz, <8 x float> %i.rs, <8 x float> splat (float -1.000000e+00)
  %i.sb = select <8 x i1> %i.ra, <8 x float> %i.rt, <8 x float> splat (float -1.000000e+00)
  %i.sc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ru) ; 3 uses
  %i.sd = bitcast <8 x i32> %i.sc to <8 x float>
  %i.se = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rv) ; 4 uses
  %i.sf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rw) ; 4 uses
  %i.sg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rx) ; 4 uses
  %i.sh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ry) ; 4 uses
  %i.si = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.rz) ; 4 uses
  %i.sj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sa) ; 4 uses
  %i.sk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sb) ; 3 uses
  %i.sl = bitcast <8 x i32> %i.sk to <8 x float>  ; 2 uses
  %i.sm = fsub fast <8 x float> %i.on, %i.pm      ; 4 uses
  %i.sn = fsub fast <8 x float> %i.oz, %i.pn      ; 4 uses
  %i.so = fsub fast <8 x float> %i.pl, %i.po      ; 4 uses
  %i.sp = shufflevector <8 x i32> %i.sc, <8 x i32> %i.se, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sq = shufflevector <8 x i32> %i.sc, <8 x i32> %i.se, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.sr = bitcast <8 x i32> %i.sq to <8 x float>  ; 2 uses
  %i.ss = shufflevector <8 x i32> %i.sf, <8 x i32> %i.sg, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.st = shufflevector <8 x i32> %i.sf, <8 x i32> %i.sg, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.su = shufflevector <8 x i32> %i.sh, <8 x i32> %i.si, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sv = shufflevector <8 x i32> %i.sh, <8 x i32> %i.si, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.sw = shufflevector <8 x i32> %i.sj, <8 x i32> %i.sk, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.sx = shufflevector <8 x i32> %i.sj, <8 x i32> %i.sk, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.sy = bitcast <8 x i32> %i.sx to <8 x float>
  %i.sz = shufflevector <8 x float> %i.sm, <8 x float> %i.sn, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.ta = shufflevector <8 x float> %i.sm, <8 x float> %i.sn, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 6, i32 14, i32 poison, i32 poison>
  %i.tb = shufflevector <8 x float> %i.so, <8 x float> %i.sd, <8 x i32> <i32 0, i32 poison, i32 poison, i32 9, i32 4, i32 poison, i32 poison, i32 13>
  %i.tc = shufflevector <8 x float> %i.so, <8 x float> %i.sr, <8 x i32> <i32 2, i32 poison, i32 10, i32 poison, i32 6, i32 poison, i32 14, i32 poison>
  %i.td = shufflevector <8 x i32> %i.se, <8 x i32> %i.sf, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.te = shufflevector <8 x i32> %i.se, <8 x i32> %i.sf, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.tf = bitcast <8 x i32> %i.te to <8 x float>
  %i.tg = shufflevector <8 x i32> %i.sg, <8 x i32> %i.sh, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.th = shufflevector <8 x i32> %i.sg, <8 x i32> %i.sh, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.ti = shufflevector <8 x i32> %i.si, <8 x i32> %i.sj, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.tj = bitcast <8 x i32> %i.ti to <8 x float>
  %i.tk = shufflevector <8 x i32> %i.si, <8 x i32> %i.sj, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.tl = shufflevector <8 x float> %i.sl, <8 x float> %i.sm, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.tm = shufflevector <8 x float> %i.sl, <8 x float> %i.sm, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.tn = shufflevector <8 x float> %i.sn, <8 x float> %i.so, <8 x i32> <i32 poison, i32 poison, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 13>
  %i.to = shufflevector <8 x float> %i.sn, <8 x float> %i.so, <8 x i32> <i32 poison, i32 poison, i32 3, i32 11, i32 poison, i32 poison, i32 7, i32 15>
  %i.tp = shufflevector <8 x i32> %i.sp, <8 x i32> %i.ss, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.tq = bitcast <8 x i32> %i.tp to <8 x float>
  %i.tr = shufflevector <8 x i32> %i.su, <8 x i32> %i.sw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ts = bitcast <8 x i32> %i.tr to <8 x float>
  %i.tt = shufflevector <8 x float> %i.sz, <8 x float> %i.tb, <8 x i32> <i32 0, i32 1, i32 8, i32 11, i32 4, i32 5, i32 12, i32 15> ; 2 uses
  %i.tu = shufflevector <8 x i32> %i.td, <8 x i32> %i.tg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.tv = bitcast <8 x i32> %i.tu to <8 x float>  ; 2 uses
  %i.tw = shufflevector <8 x float> %i.tj, <8 x float> %i.tl, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.tx = shufflevector <8 x float> %i.tn, <8 x float> %i.sr, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13> ; 2 uses
  %i.ty = shufflevector <8 x i32> %i.st, <8 x i32> %i.sv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.tz = bitcast <8 x i32> %i.ty to <8 x float>  ; 2 uses
  %i.ua = shufflevector <8 x float> %i.sy, <8 x float> %i.ta, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ub = shufflevector <8 x float> %i.tc, <8 x float> %i.tf, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 4, i32 6, i32 14, i32 15> ; 2 uses
  %i.uc = shufflevector <8 x i32> %i.th, <8 x i32> %i.tk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ud = bitcast <8 x i32> %i.uc to <8 x float>  ; 2 uses
  %i.ue = shufflevector <8 x float> %i.tm, <8 x float> %i.to, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.uf = shufflevector <8 x i32> %i.tp, <8 x i32> %i.tr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ug = shufflevector <8 x float> %i.tt, <8 x float> %i.tv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.uh = shufflevector <8 x float> %i.tw, <8 x float> %i.tx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ui = shufflevector <8 x float> %i.tz, <8 x float> %i.ua, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.uj = shufflevector <8 x float> %i.ub, <8 x float> %i.ud, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.uk = shufflevector <8 x float> %i.ue, <8 x float> %i.tq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ul = shufflevector <8 x float> %i.ts, <8 x float> %i.tt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.um = shufflevector <8 x float> %i.tv, <8 x float> %i.tw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.un = shufflevector <8 x float> %i.tx, <8 x float> %i.tz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.uo = shufflevector <8 x float> %i.ua, <8 x float> %i.ub, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.up = shufflevector <8 x float> %i.ud, <8 x float> %i.ue, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.uf, ptr %.3865, align 1, !tbaa !41
  %i.uq = getelementptr inbounds nuw i8, ptr %.3865, i64 32
  store <8 x float> %i.ug, ptr %i.uq, align 1, !tbaa !41
  %i.ur = getelementptr inbounds nuw i8, ptr %.3865, i64 64
  store <8 x float> %i.uh, ptr %i.ur, align 1, !tbaa !41
  %i.us = getelementptr inbounds nuw i8, ptr %.3865, i64 96
  store <8 x float> %i.ui, ptr %i.us, align 1, !tbaa !41
  %i.ut = getelementptr inbounds nuw i8, ptr %.3865, i64 128
  store <8 x float> %i.uj, ptr %i.ut, align 1, !tbaa !41
  %i.uu = getelementptr inbounds nuw i8, ptr %.3865, i64 160
  store <8 x float> %i.uk, ptr %i.uu, align 1, !tbaa !41
  %i.uv = getelementptr inbounds nuw i8, ptr %.3865, i64 192
  store <8 x float> %i.ul, ptr %i.uv, align 1, !tbaa !41
  %i.uw = getelementptr inbounds nuw i8, ptr %.3865, i64 224
  store <8 x float> %i.um, ptr %i.uw, align 1, !tbaa !41
  %i.ux = getelementptr inbounds nuw i8, ptr %.3865, i64 256
  store <8 x float> %i.un, ptr %i.ux, align 1, !tbaa !41
  %i.uy = getelementptr inbounds nuw i8, ptr %.3865, i64 288
  store <8 x float> %i.uo, ptr %i.uy, align 1, !tbaa !41
  %i.uz = getelementptr inbounds nuw i8, ptr %.3865, i64 320
  store <8 x float> %i.up, ptr %i.uz, align 1, !tbaa !41
  %i.va = getelementptr inbounds nuw i8, ptr %.0509861, i64 32 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.0507862, i64 32 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.0505863, i64 32 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.3865, i64 352 ; 2 uses
  %i.ve = add nuw nsw i32 %.0503864, 8            ; 2 uses
  %i.vf = or disjoint i32 %i.ve, 7
  %i.vg = icmp slt i32 %i.vf, %i.h
  br i1 %i.vg, label %bb.q, label %.preheader859.loopexit, !llvm.loop !466

bb.r:                                             ; preds = %.lr.ph875, %bb.ah
  %.4874 = phi ptr [ %.3.lcssa, %.lr.ph875 ], [ %i.aas, %bb.ah ] ; 11 uses
  %.1504873 = phi i32 [ %.0503.lcssa, %.lr.ph875 ], [ %i.aat, %bb.ah ]
  %.1506872 = phi ptr [ %.0505.lcssa, %.lr.ph875 ], [ %i.aar, %bb.ah ] ; 2 uses
  %.1508871 = phi ptr [ %.0507.lcssa, %.lr.ph875 ], [ %i.aaq, %bb.ah ] ; 2 uses
  %.1510870 = phi ptr [ %.0509.lcssa, %.lr.ph875 ], [ %i.aap, %bb.ah ] ; 2 uses
  %i.vh = load float, ptr %.1510870, align 4, !tbaa !44
  %i.vi = load float, ptr %.1508871, align 4, !tbaa !44
  %i.vj = load float, ptr %.1506872, align 4, !tbaa !44
  %i.vk = load i32, ptr %i.nx, align 4, !tbaa !40 ; 4 uses
  %i.vl = fmul fast float %i.vj, 5.000000e-01
  %i.vm = fadd fast float %i.vl, 5.000000e-01
  %i.vn = add nsw i32 %i.vk, -1
  %i.vo = sitofp fast i32 %i.vn to float          ; 3 uses
  %i.vp = fmul fast float %i.vm, %i.vo
  %i.vq = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.vp)
  %i.vr = fsub fast float %i.vq, %i.vo
  %i.vs = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.vr)
  %i.vt = fsub fast float %i.vo, %i.vs
  %i.vu = sitofp fast i32 %i.vk to float
  %i.vv = fadd fast float %i.vu, -1.000000e+00
  %.sroa.speculated6.i555 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.vt, float 0.000000e+00)
  %.sroa.speculated.i556 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i555, float %i.vv) ; 2 uses
  %i.vw = load <2 x i32>, ptr %i.nv, align 4, !tbaa !23 ; 5 uses
  %i.vx = insertelement <2 x float> poison, float %i.vh, i64 0
  %i.vy = insertelement <2 x float> %i.vx, float %i.vi, i64 1
  %i.vz = fmul fast <2 x float> %i.vy, splat (float 5.000000e-01)
  %i.wa = fadd fast <2 x float> %i.vz, splat (float 5.000000e-01)
  %i.wb = add nsw <2 x i32> %i.vw, splat (i32 -1)
  %i.wc = sitofp <2 x i32> %i.wb to <2 x float>   ; 3 uses
  %i.wd = fmul fast <2 x float> %i.wa, %i.wc
  %i.we = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wd)
  %i.wf = fsub fast <2 x float> %i.we, %i.wc
  %i.wg = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wf)
  %i.wh = fsub fast <2 x float> %i.wc, %i.wg
  %i.wi = sitofp <2 x i32> %i.vw to <2 x float>
  %i.wj = fadd fast <2 x float> %i.wi, splat (float -1.000000e+00)
  %i.wk = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wh, <2 x float> zeroinitializer)
  %i.wl = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.wk, <2 x float> %i.wj) ; 2 uses
  %i.wm = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.wl)
  %i.wn = fptosi <2 x float> %i.wm to <2 x i32>   ; 5 uses
  %i.wo = tail call fast float @llvm.floor.f32(float %.sroa.speculated.i556)
  %i.wp = fptosi float %i.wo to i32               ; 9 uses
  %i.wq = extractelement <2 x i32> %i.wn, i64 0   ; 6 uses
  %i.wr = add nsw i32 %i.wq, 1                    ; 5 uses
  %i.ws = extractelement <2 x i32> %i.wn, i64 1   ; 6 uses
  %i.wt = add nsw i32 %i.ws, 1                    ; 5 uses
  %i.wu = add nsw i32 %i.wp, 1                    ; 5 uses
  %i.wv = icmp sgt <2 x i32> %i.wn, splat (i32 -1)
  %i.ww = icmp sgt <2 x i32> %i.vw, %i.wn
  %i.wx = and <2 x i1> %i.wv, %i.ww               ; 2 uses
  %i.wy = icmp sgt i32 %i.wp, -1
  %i.wz = icmp sgt i32 %i.vk, %i.wp
  %i.xa = and i1 %i.wy, %i.wz                     ; 4 uses
  %i.xb = icmp sgt i32 %i.wq, -2
  %i.xc = extractelement <2 x i32> %i.vw, i64 0   ; 2 uses
  %i.xd = icmp slt i32 %i.wr, %i.xc
  %i.xe = and i1 %i.xb, %i.xd                     ; 2 uses
  %i.xf = icmp sgt i32 %i.ws, -2
  %i.xg = extractelement <2 x i32> %i.vw, i64 1   ; 2 uses
  %i.xh = icmp slt i32 %i.wt, %i.xg
  %i.xi = and i1 %i.xf, %i.xh                     ; 2 uses
  %i.xj = icmp sgt i32 %i.wp, -2
  %i.xk = icmp slt i32 %i.wu, %i.vk
  %i.xl = and i1 %i.xj, %i.xk                     ; 4 uses
  %i.xm = extractelement <2 x i1> %i.wx, i64 0    ; 2 uses
  %i.xn = extractelement <2 x i1> %i.wx, i64 1    ; 2 uses
  %i.xo = and i1 %i.xm, %i.xn                     ; 2 uses
  %i.xp = and i1 %i.xe, %i.xn                     ; 2 uses
  %i.xq = and i1 %i.xm, %i.xi                     ; 2 uses
  %i.xr = and i1 %i.xe, %i.xi                     ; 2 uses
  %i.xs = and i1 %i.xo, %i.xa
  %i.xt = and i1 %i.xp, %i.xa
  %i.xu = and i1 %i.xa, %i.xq
  %i.xv = and i1 %i.xa, %i.xr
  %i.xw = and i1 %i.xo, %i.xl
  %i.xx = and i1 %i.xp, %i.xl
  %i.xy = and i1 %i.xq, %i.xl
  %i.xz = and i1 %i.xr, %i.xl
  %i.ya = getelementptr inbounds nuw i8, ptr %.4874, i64 32
  br i1 %i.xs, label %bb.s, label %bb.t

end_hunk_11
