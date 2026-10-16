Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/convolve_slow?download=true
inline.NumInlined: 156
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3jxl12_GLOBAL__N_119SlowSymmetric3PixelINS_10WrapMirrorENS_13WrapUnchangedEEEfRKNS_5PlaneIfEEllllRKNS_17WeightsSymmetric3E:bb.a
  %i.ew = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.ex = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.ej, i64 1
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.ey, <2 x float> %i.ev) ; 2 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0
  %i.fb = fadd float %i.fa, 0.000000e+00
  %i.fc = extractelement <2 x float> %i.ez, i64 1
  %i.fd = fadd float %i.fb, %i.fc
  %i.fe = add nuw nsw i64 %1, 1
  %i.ff = mul i64 %i.fe, %.16.val
  %i.fg = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.ff ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fg, i64 64) ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %0
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.c
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !50
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.g
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !50
  %i.fm = fadd float %i.fj, %i.fl
  br label %.split6.us

_ZN3jxlL6MirrorEll.exit.us7.preheader:            ; preds = %.split, %_ZN3jxlL6MirrorEll.exit.us7.preheader
  %i.fn = phi i1 [ %i.fq, %_ZN3jxlL6MirrorEll.exit.us7.preheader ], [ %i.h, %.split ]
  %.08.i30.us13 = phi i64 [ %.1.i31.us14, %_ZN3jxlL6MirrorEll.exit.us7.preheader ], [ %i.g, %.split ]
  %i.fo = xor i64 %.08.i30.us13, -1
  %i.fp = select i1 %i.fn, i64 0, i64 %i.k
  %.1.i31.us14 = add i64 %i.fp, %i.fo             ; 4 uses
  %i.fq = icmp slt i64 %.1.i31.us14, 0            ; 2 uses
  %i.fr = icmp sge i64 %.1.i31.us14, %2
  %i.fs = or i1 %i.fq, %i.fr
  br i1 %i.fs, label %_ZN3jxlL6MirrorEll.exit.us7.preheader, label %_ZN3jxlL6MirrorEll.exit32.loopexit.us15, !llvm.loop !0

_ZN3jxlL6MirrorEll.exit32.loopexit.us15:          ; preds = %_ZN3jxlL6MirrorEll.exit.us7.preheader
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %0
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !50
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.c
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !50
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.1.i31.us14
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !50
  %i.fz = mul i64 %1, %.16.val
  %i.ga = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.fz ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ga, i64 64) ]
  %i.gb = load float, ptr %3, align 4, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN3jxlL6MirrorEll.exit32.loopexit.us15
  %i.gc = phi i1 [ %i.h, %_ZN3jxlL6MirrorEll.exit32.loopexit.us15 ], [ %i.gf, %bb.h ]
  %.08.i30.us13.1 = phi i64 [ %i.g, %_ZN3jxlL6MirrorEll.exit32.loopexit.us15 ], [ %.1.i31.us14.1, %bb.h ]
  %i.gd = xor i64 %.08.i30.us13.1, -1
  %i.ge = select i1 %i.gc, i64 0, i64 %i.k
  %.1.i31.us14.1 = add i64 %i.ge, %i.gd           ; 4 uses
  %i.gf = icmp slt i64 %.1.i31.us14.1, 0          ; 2 uses
  %i.gg = icmp sge i64 %.1.i31.us14.1, %2
  %i.gh = or i1 %i.gf, %i.gg
  br i1 %i.gh, label %bb.h, label %_ZN3jxlL6MirrorEll.exit32.loopexit.us15.1, !llvm.loop !0

_ZN3jxlL6MirrorEll.exit32.loopexit.us15.1:        ; preds = %bb.h
  %i.gi = fadd float %i.fw, %i.fy
  %i.gj = fmul float %i.p, %i.gi
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.o, float %i.gj)
  %i.gl = fadd float %i.gk, 0.000000e+00
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %0
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !50
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.c
  %i.gp = load float, ptr %i.go, align 4, !tbaa !50
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %.1.i31.us14.1
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !50
  %i.gs = add nuw nsw i64 %1, 1
  %i.gt = mul i64 %i.gs, %.16.val
  %i.gu = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.gt ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gu, i64 64) ]
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN3jxlL6MirrorEll.exit32.loopexit.us15.1
  %i.gv = phi i1 [ %i.h, %_ZN3jxlL6MirrorEll.exit32.loopexit.us15.1 ], [ %i.gy, %bb.i ]
  %.08.i30.us13.2 = phi i64 [ %i.g, %_ZN3jxlL6MirrorEll.exit32.loopexit.us15.1 ], [ %.1.i31.us14.2, %bb.i ]
  %i.gw = xor i64 %.08.i30.us13.2, -1
  %i.gx = select i1 %i.gv, i64 0, i64 %i.k
  %.1.i31.us14.2 = add i64 %i.gx, %i.gw           ; 4 uses
  %i.gy = icmp slt i64 %.1.i31.us14.2, 0          ; 2 uses
  %i.gz = icmp sge i64 %.1.i31.us14.2, %2
  %i.ha = or i1 %i.gy, %i.gz
  br i1 %i.ha, label %bb.i, label %_ZN3jxlL6MirrorEll.exit32.loopexit.us15.2, !llvm.loop !0

_ZN3jxlL6MirrorEll.exit32.loopexit.us15.2:        ; preds = %bb.i
  %i.hb = fadd float %i.gp, %i.gr
  %i.hc = fmul float %i.o, %i.hb
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.gb, float %i.hc)
  %i.he = fadd float %i.gl, %i.hd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %0
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.c
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !50
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.1.i31.us14.2
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !50
  %i.hk = fadd float %i.hh, %i.hj
  br label %.split6.us

.split6.us:                                       ; preds = %_ZN3jxlL6MirrorEll.exit.preheader, %_ZN3jxlL6MirrorEll.exit32.loopexit.us15.2, %_ZN3jxlL6MirrorEll.exit.loopexit.us.2, %_ZN3jxlL6MirrorEll.exit32.loopexit.us.us.2
  %.sink34 = phi float [ %i.fm, %_ZN3jxlL6MirrorEll.exit.preheader ], [ %i.hk, %_ZN3jxlL6MirrorEll.exit32.loopexit.us15.2 ], [ %i.ed, %_ZN3jxlL6MirrorEll.exit.loopexit.us.2 ], [ %i.cf, %_ZN3jxlL6MirrorEll.exit32.loopexit.us.us.2 ]
  %.sink32.in = phi ptr [ %i.fh, %_ZN3jxlL6MirrorEll.exit.preheader ], [ %i.hf, %_ZN3jxlL6MirrorEll.exit32.loopexit.us15.2 ], [ %i.dy, %_ZN3jxlL6MirrorEll.exit.loopexit.us.2 ], [ %i.ca, %_ZN3jxlL6MirrorEll.exit32.loopexit.us.us.2 ]
  %.sink = phi float [ %i.fd, %_ZN3jxlL6MirrorEll.exit.preheader ], [ %i.he, %_ZN3jxlL6MirrorEll.exit32.loopexit.us15.2 ], [ %i.dx, %_ZN3jxlL6MirrorEll.exit.loopexit.us.2 ], [ %i.bt, %_ZN3jxlL6MirrorEll.exit32.loopexit.us.us.2 ]
  %.sink32 = load float, ptr %.sink32.in, align 4, !tbaa !50
  %i.hl = fmul float %i.p, %.sink34
  %i.hm = tail call float @llvm.fmuladd.f32(float %.sink32, float %i.o, float %i.hl)
  %i.hn = fadd float %.sink, %i.hm
  ret float %i.hn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 -1, 1) i32 @_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_113SlowSeparableILi2ENS_17WeightsSeparable5EEENS_6StatusERKNS_5PlaneIfEERKNS_5RectTImEERKT0_PS0_PS8_SE_EUljmE_EES6_SI_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SK_E12CallInitFuncEPvm(ptr nofree readnone captures(none) %0, i64 %1) #2 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_113SlowSeparableILi2ENS_17WeightsSeparable5EEENS_6StatusERKNS_5PlaneIfEERKNS_5RectTImEERKT0_PS0_PS8_SE_EUljmE_EES6_SI_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SK_E12CallDataFuncEPvjm(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %_ZZN3jxl12_GLOBAL__N_113SlowSeparableILi2ENS_17WeightsSeparable5EEENS_6StatusERKNS_5PlaneIfEERKNS_5RectTImEERKT0_PNS_10ThreadPoolEPS5_SB_ENKUljmE_clEjm.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86, !nonnull !45, !align !46 ; 6 uses
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !88, !nonnull !45, !align !46 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89, !nonnull !45, !align !46
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %i.l = add i64 %i.k, %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  %i.q = mul i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 64) ]
  %i.s = load i64, ptr %i.f, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !90, !nonnull !45, !align !46 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !15   ; 2 uses
  %.not25.not.i = icmp eq i64 %i.x, 0
  br i1 %.not25.not.i, label %_ZZN3jxl12_GLOBAL__N_113SlowSeparableILi2ENS_17WeightsSeparable5EEENS_6StatusERKNS_5PlaneIfEERKNS_5RectTImEERKT0_PNS_10ThreadPoolEPS5_SB_ENKUljmE_clEjm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91, !nonnull !45, !align !46 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !92, !nonnull !45, !align !46
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93, !nonnull !45, !align !46
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.ag = getelementptr i8, ptr %i.v, i64 8
  %i.ah = load i32, ptr %i.z, align 8, !tbaa !33, !noalias !94
  %i.ai = zext i32 %i.ah to i64                   ; 16 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !35, !noalias !94
  %i.al = zext i32 %i.ak to i64                   ; 4 uses
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ap = shl nuw nsw i64 %i.ai, 1                ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph.i
  %.01226.i = phi i64 [ 0, %.lr.ph.i ], [ %i.df, %bb.j ] ; 3 uses
  %.val.i = load i64, ptr %i.v, align 8
  %.val13.i = load i64, ptr %i.ag, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.as = add i64 %.val13.i, %i.e
  %i.at = load ptr, ptr %i.an, align 8, !noalias !94
  %i.au = load i64, ptr %i.ao, align 8, !noalias !94
  %i.av = add i64 %.val.i, %.01226.i              ; 7 uses
  %i.aw = add i64 %i.av, -2                       ; 3 uses
  %.not9.i.i = icmp ult i64 %i.aw, %i.ai
  %i.ax = add i64 %i.av, -1                       ; 3 uses
  %.not9.1.i.i = icmp ult i64 %i.ax, %i.ai
  %.not9.2.i.i = icmp ult i64 %i.av, %i.ai
  %i.ay = add i64 %i.av, 1                        ; 3 uses
  %.not9.3.i.i = icmp ult i64 %i.ay, %i.ai
  %i.az = add i64 %i.av, 2                        ; 3 uses
  %.not9.4.i.i = icmp ult i64 %i.az, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %.critedge47.i.i, %bb.c
  %indvars.iv.i.i = phi i64 [ -2, %bb.c ], [ %indvars.iv.next.i.i, %.critedge47.i.i ] ; 3 uses
  %.0516.i.i = phi float [ 0.000000e+00, %bb.c ], [ %i.dd, %.critedge47.i.i ]
  %i.ba = trunc nsw i64 %indvars.iv.i.i to i32
  %i.bb = tail call i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %i.bc = shl nuw nsw i32 %i.bb, 2
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !50, !alias.scope !96 ; 5 uses
  %i.bg = add i64 %i.as, %indvars.iv.i.i          ; 3 uses
  %.not.i.i = icmp ult i64 %i.bg, %i.al
  br i1 %.not.i.i, label %_ZN3jxlL6MirrorEll.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.08.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.bg, %bb.d ] ; 2 uses
  %i.bh = icmp slt i64 %.08.i.i.i, 0
  %i.bi = xor i64 %.08.i.i.i, -1
  %i.bj = select i1 %i.bh, i64 0, i64 %i.am
  %.1.i.i.i = add i64 %i.bj, %i.bi                ; 3 uses
  %.not8.i.i = icmp ult i64 %.1.i.i.i, %i.al
  br i1 %.not8.i.i, label %_ZN3jxlL6MirrorEll.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN3jxlL6MirrorEll.exit.i.i:                      ; preds = %.lr.ph.i.i.i, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ %i.bg, %bb.d ], [ %.1.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.bk = icmp ult i64 %.0.lcssa.i.i.i, %i.al
  br i1 %i.bk, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN3jxlL6MirrorEll.exit.i.i
  %i.bl = mul i64 %.0.lcssa.i.i.i, %i.au
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bl ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bm, i64 64) ]
  %i.bn = load float, ptr %i.aq, align 4, !tbaa !50, !alias.scope !95 ; 2 uses
  br i1 %.not9.i.i, label %_ZN3jxlL6MirrorEll.exit54.i.i, label %.lr.ph.i51.i.i

.lr.ph.i51.i.i:                                   ; preds = %bb.e, %.lr.ph.i51.i.i
  %.08.i52.i.i = phi i64 [ %.1.i53.i.i, %.lr.ph.i51.i.i ], [ %i.aw, %bb.e ] ; 2 uses
  %i.bo = icmp slt i64 %.08.i52.i.i, 0
  %i.bp = xor i64 %.08.i52.i.i, -1
  %i.bq = select i1 %i.bo, i64 0, i64 %i.ap
  %.1.i53.i.i = add i64 %i.bq, %i.bp              ; 3 uses
  %.not10.i.i = icmp ult i64 %.1.i53.i.i, %i.ai
  br i1 %.not10.i.i, label %_ZN3jxlL6MirrorEll.exit54.i.i, label %.lr.ph.i51.i.i, !llvm.loop !0

_ZN3jxlL6MirrorEll.exit54.i.i:                    ; preds = %.lr.ph.i51.i.i, %bb.e
  %.0.lcssa.i50.i.i = phi i64 [ %i.aw, %bb.e ], [ %.1.i53.i.i, %.lr.ph.i51.i.i ] ; 2 uses
  %i.br = icmp ult i64 %.0.lcssa.i50.i.i, %i.ai
  br i1 %i.br, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZN3jxlL6MirrorEll.exit54.i.i
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.0.lcssa.i50.i.i
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !50, !noalias !94
  %i.bu = fmul float %i.bn, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bf, float %.0516.i.i)
  %i.bw = load float, ptr %i.ar, align 4, !tbaa !50, !alias.scope !95 ; 2 uses
  br i1 %.not9.1.i.i, label %_ZN3jxlL6MirrorEll.exit54.1.i.i, label %.lr.ph.i51.1.i.i

.lr.ph.i51.1.i.i:                                 ; preds = %bb.f, %.lr.ph.i51.1.i.i
  %.08.i52.1.i.i = phi i64 [ %.1.i53.1.i.i, %.lr.ph.i51.1.i.i ], [ %i.ax, %bb.f ] ; 2 uses
  %i.bx = icmp slt i64 %.08.i52.1.i.i, 0
  %i.by = xor i64 %.08.i52.1.i.i, -1
  %i.bz = select i1 %i.bx, i64 0, i64 %i.ap
  %.1.i53.1.i.i = add i64 %i.bz, %i.by            ; 3 uses
  %.not10.1.i.i = icmp ult i64 %.1.i53.1.i.i, %i.ai
  br i1 %.not10.1.i.i, label %_ZN3jxlL6MirrorEll.exit54.1.i.i, label %.lr.ph.i51.1.i.i, !llvm.loop !0

_ZN3jxlL6MirrorEll.exit54.1.i.i:                  ; preds = %.lr.ph.i51.1.i.i, %bb.f
  %.0.lcssa.i50.1.i.i = phi i64 [ %i.ax, %bb.f ], [ %.1.i53.1.i.i, %.lr.ph.i51.1.i.i ] ; 2 uses
  %i.ca = icmp ult i64 %.0.lcssa.i50.1.i.i, %i.ai
  br i1 %i.ca, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN3jxlL6MirrorEll.exit54.1.i.i
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.0.lcssa.i50.1.i.i
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !50, !noalias !94
  %i.cd = fmul float %i.bw, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bf, float %i.bv)
  %i.cf = load float, ptr %i.ac, align 4, !tbaa !50, !alias.scope !95
  br i1 %.not9.2.i.i, label %_ZN3jxlL6MirrorEll.exit54.2.i.i, label %.lr.ph.i51.2.i.i

.lr.ph.i51.2.i.i:                                 ; preds = %bb.g, %.lr.ph.i51.2.i.i
  %.08.i52.2.i.i = phi i64 [ %.1.i53.2.i.i, %.lr.ph.i51.2.i.i ], [ %i.av, %bb.g ] ; 2 uses
  %i.cg = icmp slt i64 %.08.i52.2.i.i, 0
  %i.ch = xor i64 %.08.i52.2.i.i, -1
  %i.ci = select i1 %i.cg, i64 0, i64 %i.ap
  %.1.i53.2.i.i = add i64 %i.ci, %i.ch            ; 3 uses
  %.not10.2.i.i = icmp ult i64 %.1.i53.2.i.i, %i.ai
  br i1 %.not10.2.i.i, label %_ZN3jxlL6MirrorEll.exit54.2.i.i, label %.lr.ph.i51.2.i.i, !llvm.loop !0

_ZN3jxlL6MirrorEll.exit54.2.i.i:                  ; preds = %.lr.ph.i51.2.i.i, %bb.g
  %.0.lcssa.i50.2.i.i = phi i64 [ %i.av, %bb.g ], [ %.1.i53.2.i.i, %.lr.ph.i51.2.i.i ] ; 2 uses
  %i.cj = icmp ult i64 %.0.lcssa.i50.2.i.i, %i.ai
  br i1 %i.cj, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN3jxlL6MirrorEll.exit54.2.i.i
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.0.lcssa.i50.2.i.i
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !50, !noalias !94
  %i.cm = fmul float %i.cf, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.bf, float %i.ce)
  br i1 %.not9.3.i.i, label %_ZN3jxlL6MirrorEll.exit54.3.i.i, label %.lr.ph.i51.3.i.i

.lr.ph.i51.3.i.i:                                 ; preds = %bb.h, %.lr.ph.i51.3.i.i
  %.08.i52.3.i.i = phi i64 [ %.1.i53.3.i.i, %.lr.ph.i51.3.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %i.co = icmp slt i64 %.08.i52.3.i.i, 0
  %i.cp = xor i64 %.08.i52.3.i.i, -1
  %i.cq = select i1 %i.co, i64 0, i64 %i.ap
  %.1.i53.3.i.i = add i64 %i.cq, %i.cp            ; 3 uses
  %.not10.3.i.i = icmp ult i64 %.1.i53.3.i.i, %i.ai
  br i1 %.not10.3.i.i, label %_ZN3jxlL6MirrorEll.exit54.3.i.i, label %.lr.ph.i51.3.i.i, !llvm.loop !0

_ZN3jxlL6MirrorEll.exit54.3.i.i:                  ; preds = %.lr.ph.i51.3.i.i, %bb.h
  %.0.lcssa.i50.3.i.i = phi i64 [ %i.ay, %bb.h ], [ %.1.i53.3.i.i, %.lr.ph.i51.3.i.i ] ; 2 uses
  %i.cr = icmp ult i64 %.0.lcssa.i50.3.i.i, %i.ai
  br i1 %i.cr, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN3jxlL6MirrorEll.exit54.3.i.i
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.0.lcssa.i50.3.i.i
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !50, !noalias !94
  %i.cu = fmul float %i.bw, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.bf, float %i.cn)
  br i1 %.not9.4.i.i, label %_ZN3jxlL6MirrorEll.exit54.4.i.i, label %.lr.ph.i51.4.i.i

.lr.ph.i51.4.i.i:                                 ; preds = %bb.i, %.lr.ph.i51.4.i.i
  %.08.i52.4.i.i = phi i64 [ %.1.i53.4.i.i, %.lr.ph.i51.4.i.i ], [ %i.az, %bb.i ] ; 2 uses
  %i.cw = icmp slt i64 %.08.i52.4.i.i, 0
  %i.cx = xor i64 %.08.i52.4.i.i, -1
  %i.cy = select i1 %i.cw, i64 0, i64 %i.ap
  %.1.i53.4.i.i = add i64 %i.cy, %i.cx            ; 3 uses
  %.not10.4.i.i = icmp ult i64 %.1.i53.4.i.i, %i.ai
  br i1 %.not10.4.i.i, label %_ZN3jxlL6MirrorEll.exit54.4.i.i, label %.lr.ph.i51.4.i.i, !llvm.loop !0

_ZN3jxlL6MirrorEll.exit54.4.i.i:                  ; preds = %.lr.ph.i51.4.i.i, %bb.i
  %.0.lcssa.i50.4.i.i = phi i64 [ %i.az, %bb.i ], [ %.1.i53.4.i.i, %.lr.ph.i51.4.i.i ] ; 2 uses
  %i.cz = icmp ult i64 %.0.lcssa.i50.4.i.i, %i.ai
  br i1 %i.cz, label %.critedge47.i.i, label %bb.k

.critedge47.i.i:                                  ; preds = %_ZN3jxlL6MirrorEll.exit54.4.i.i
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.0.lcssa.i50.4.i.i
  %i.db = load float, ptr %i.da, align 4, !tbaa !50, !noalias !94
  %i.dc = fmul float %i.bn, %i.db
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.bf, float %i.cv) ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 3
  br i1 %exitcond.i.i, label %bb.j, label %bb.d, !llvm.loop !83

bb.j:                                             ; preds = %.critedge47.i.i
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.01226.i
  store float %i.dd, ptr %i.de, align 4, !tbaa !50
  %i.df = add nuw i64 %.01226.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.df, %i.x
  br i1 %exitcond.not.i, label %_ZZN3jxl12_GLOBAL__N_113SlowSeparableILi2ENS_17WeightsSeparable5EEENS_6StatusERKNS_5PlaneIfEERKNS_5RectTImEERKT0_PNS_10ThreadPoolEPS5_SB_ENKUljmE_clEjm.exit, label %bb.c, !llvm.loop !84

bb.k:                                             ; preds = %_ZN3jxlL6MirrorEll.exit54.1.i.i, %_ZN3jxlL6MirrorEll.exit54.i.i, %_ZN3jxlL6MirrorEll.exit.i.i, %_ZN3jxlL6MirrorEll.exit54.4.i.i, %_ZN3jxlL6MirrorEll.exit54.3.i.i, %_ZN3jxlL6MirrorEll.exit54.2.i.i
  store atomic i32 1, ptr %i.a seq_cst, align 8
  br label %_ZZN3jxl12_GLOBAL__N_113SlowSeparableILi2ENS_17WeightsSeparable5EEENS_6StatusERKNS_5PlaneIfEERKNS_5RectTImEERKT0_PNS_10ThreadPoolEPS5_SB_ENKUljmE_clEjm.exit

_ZZN3jxl12_GLOBAL__N_113SlowSeparableILi2ENS_17WeightsSeparable5EEENS_6StatusERKNS_5PlaneIfEERKNS_5RectTImEERKT0_PNS_10ThreadPoolEPS5_SB_ENKUljmE_clEjm.exit: ; preds = %bb.j, %bb.b, %bb.k, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #3 = { mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #11 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !29}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN3jxl5PlaneIfEE", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"_ZTSN3jxl5RectTImEE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!15 = !{!14, !13, i64 16}
!16 = !{!13, !13, i64 0}
!17 = !{!14, !13, i64 24}
!18 = !{!"any p2 pointer", !10, i64 0}
!19 = !{!"p2 _ZTSN3jxl5PlaneIfEE", !18, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 long", !10, i64 0}
!22 = !{!"p1 _ZTSN3jxl17WeightsSymmetric3E", !10, i64 0}
!23 = !{!"_ZTSN3jxl10ThreadPoolE", !10, i64 0, !10, i64 8}
!24 = !{!23, !10, i64 0}
!25 = !{!23, !10, i64 8}
!26 = !{!10, !10, i64 0}
!27 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIjEE", !6, i64 0}
!28 = !{!27, !6, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !10, i64 0}
!31 = !{!"_ZTSN3jxl13AlignedMemoryE", !10, i64 0, !30, i64 8, !10, i64 16}
!32 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !13, i64 16, !31, i64 24, !13, i64 48}
!33 = !{!32, !7, i64 0}
!34 = !{!14, !13, i64 0}
!35 = !{!32, !7, i64 4}
!36 = !{!14, !13, i64 8}
!37 = !{!"p1 float", !10, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"p1 _ZTSN3jxl5RectTImEE", !10, i64 0}
!40 = !{!"p2 float", !18, i64 0}
!41 = !{!"_ZTSNSt3__117__cxx_atomic_implIjNS_22__cxx_atomic_base_implIjEEEE", !27, i64 0}
!42 = !{!"_ZTSNSt3__113__atomic_baseIjLb0EEE", !41, i64 0}
!43 = !{!"_ZTSNSt3__113__atomic_baseIjLb1EEE", !42, i64 0}
!44 = !{!"_ZTSNSt3__16atomicIjEE", !43, i64 0}
!45 = !{}
!46 = !{i64 8}
!47 = !{!31, !10, i64 16}
!48 = !{!32, !13, i64 16}
!49 = !{!"float", !6, i64 0}
!50 = !{!49, !49, i64 0}
!51 = distinct !{!51, !29}
!52 = distinct !{null, null, null}
!53 = !{!21, !21, i64 0}
!54 = !{!22, !22, i64 0}
!55 = distinct !{!55, !29}
!56 = distinct !{null, null, null, null}
!57 = !{!39, !39, i64 0}
!58 = !{!40, !40, i64 0}
!59 = distinct !{!59, i1 true, !"_ZN3jxl12_GLOBAL__N_117SlowSymmetric3RowINS_10WrapMirrorEEEvRKNS_5PlaneIfEElllRKNS_17WeightsSymmetric3EPf"}
!60 = distinct !{!60, !59, !"_ZN3jxl12_GLOBAL__N_117SlowSymmetric3RowINS_10WrapMirrorEEEvRKNS_5PlaneIfEElllRKNS_17WeightsSymmetric3EPf: argument 0"}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, i1 true, !"_ZN3jxl12_GLOBAL__N_117SlowSymmetric3RowINS_13WrapUnchangedEEEvRKNS_5PlaneIfEElllRKNS_17WeightsSymmetric3EPf"}
!63 = distinct !{!63, !62, !"_ZN3jxl12_GLOBAL__N_117SlowSymmetric3RowINS_13WrapUnchangedEEEvRKNS_5PlaneIfEElllRKNS_17WeightsSymmetric3EPf: argument 0"}
!64 = distinct !{!64, !29, !77, !78}
!65 = distinct !{!65, !29, !78, !77}
!66 = !{!"_ZTSN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_14SlowSymmetric3ERKNS_5PlaneIfEERKNS_5RectTImEERKNS_17WeightsSymmetric3EPS0_PS4_E3$_0EENS_6StatusESE_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SG_EE", !10, i64 0, !10, i64 8, !44, i64 16}
!67 = !{!66, !10, i64 8}
!68 = !{!"_ZTSZN3jxl14SlowSymmetric3ERKNS_5PlaneIfEERKNS_5RectTImEERKNS_17WeightsSymmetric3EPNS_10ThreadPoolEPS1_E3$_0", !19, i64 0, !21, i64 8, !11, i64 16, !21, i64 24, !22, i64 32}
!69 = !{!68, !19, i64 0}
!70 = !{!68, !21, i64 8}
!71 = !{!68, !11, i64 16}
!72 = !{!68, !21, i64 24}
!73 = !{!68, !22, i64 32}
!74 = !{i64 4}
!75 = !{!60}
!76 = !{!63}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = distinct !{!79, i1 true, !"_ZN3jxl12_GLOBAL__N_118SlowSeparablePixelERKNS_5PlaneIfEERKNS_5RectTImEElllPKfSA_"}
!80 = distinct !{!80, !79, !"_ZN3jxl12_GLOBAL__N_118SlowSeparablePixelERKNS_5PlaneIfEERKNS_5RectTImEElllPKfSA_: argument 2"}
!81 = distinct !{!81, !79, !"_ZN3jxl12_GLOBAL__N_118SlowSeparablePixelERKNS_5PlaneIfEERKNS_5RectTImEElllPKfSA_: argument 1"}
!82 = distinct !{!82, !79, !"_ZN3jxl12_GLOBAL__N_118SlowSeparablePixelERKNS_5PlaneIfEERKNS_5RectTImEElllPKfSA_: argument 0"}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = !{!"_ZTSN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_113SlowSeparableILi2ENS_17WeightsSeparable5EEENS_6StatusERKNS_5PlaneIfEERKNS_5RectTImEERKT0_PS0_PS8_SE_EUljmE_EES6_SI_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SK_EE", !10, i64 0, !10, i64 8, !44, i64 16}
!86 = !{!85, !10, i64 8}
!87 = !{!"_ZTSZN3jxl12_GLOBAL__N_113SlowSeparableILi2ENS_17WeightsSeparable5EEENS_6StatusERKNS_5PlaneIfEERKNS_5RectTImEERKT0_PNS_10ThreadPoolEPS5_SB_EUljmE_", !39, i64 0, !19, i64 8, !39, i64 16, !11, i64 24, !40, i64 32, !40, i64 40}
!88 = !{!87, !39, i64 0}
!89 = !{!87, !19, i64 8}
!90 = !{!87, !39, i64 16}
!91 = !{!87, !11, i64 24}
!92 = !{!87, !40, i64 32}
!93 = !{!87, !40, i64 40}
!94 = !{!82, !81, !80}
!95 = !{!81}
!96 = !{!80}
end_hunk_0
