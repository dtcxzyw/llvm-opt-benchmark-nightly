Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/binary_descriptor?download=true
inline.NumInlined: 2059
inline.NumDeleted: 783
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv15line_descriptor16BinaryDescriptor10computeLBDERSt6vectorIS2_INS1_16OctaveSingleLineESaIS3_EESaIS5_EEb:bb.a
  %i.dp = sub i64 %i.do, %i.dg
  %i.dq = ashr exact i64 %i.dp, 2                 ; 2 uses
  %i.dr = xor i64 %i.dj, 2305843009213693951
  %i.ds = icmp ule i64 %i.dq, %i.dr
  tail call void @llvm.assume(i1 %i.ds)
  %.not28.i = icmp ult i64 %i.dq, %i.dl
  br i1 %.not28.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float 0.000000e+00, ptr %i.de, align 4, !tbaa !149
  %i.dt = getelementptr i8, ptr %i.de, i64 4      ; 3 uses
  %i.du = icmp eq i64 %i.di, 284
  br i1 %i.du, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.g
  %.idx.i.i.i.i.i.i = sub i64 284, %i.di          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dt, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !149
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.dv, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.dt, %bb.g ]
  store ptr %.0.i.i.i.i, ptr %i.dd, align 8, !tbaa !189
  %.pre = load ptr, ptr %i.dc, align 8, !tbaa !193
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.f
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 %i.dl)
  %i.dw = add nuw nsw i64 %.sroa.speculated.i.i, %i.dj ; 2 uses
  %i.dx = shl nuw nsw i64 %i.dw, 2
  %i.dy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #24 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.di ; 3 uses
  store float 0.000000e+00, ptr %i.dz, align 4, !tbaa !149
  %i.ea = icmp eq i64 %i.di, 284
  br i1 %i.ea, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.thread, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.eb = getelementptr i8, ptr %i.dz, i64 4
  %.idx.i.i.i.i.i31.i = sub i64 284, %i.di
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.eb, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !149
  %i.ec = icmp sgt i64 %i.di, 0
  br i1 %i.ec, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.thread, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.thread: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr align 4 %i.df, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i.thread, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.df, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.ed = load ptr, ptr %i.dm, align 8, !tbaa !205
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %i.dh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.ef) #25
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i: ; preds = %bb.h, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  store ptr %i.dy, ptr %i.dc, align 8, !tbaa !192
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dl
  store ptr %i.eg, ptr %i.dd, align 8, !tbaa !189
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.eh, ptr %i.dm, align 8, !tbaa !205
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.i:                                             ; preds = %._crit_edge506
  %.not = icmp eq i64 %i.di, 288
  br i1 %.not, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.df, i64 288 ; 2 uses
  %.not.i.i = icmp eq ptr %i.de, %i.ei
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  store ptr %i.ei, ptr %i.dd, align 8, !tbaa !189
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i, %bb.i, %bb.j, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.ej = phi ptr [ %i.dy, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i ], [ %.pre, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i ], [ %i.df, %bb.i ], [ %i.df, %bb.j ], [ %i.df, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 120 uses
  %i.ek = load i32, ptr %i.i, align 4, !tbaa !34
  %i.el = sitofp i32 %i.ek to double
  br label %bb.r

._crit_edge.loopexit:                             ; preds = %bb.n
  %i.em = extractelement <2 x float> %i.hv, i64 1
  %i.en = extractelement <2 x float> %i.hv, i64 0
  %i.eo = extractelement <2 x float> %i.hu, i64 1
  %i.ep = extractelement <2 x float> %i.hu, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0472.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.eo, %._crit_edge.loopexit ]
  %.0470.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.em, %._crit_edge.loopexit ]
  %.0468.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.ep, %._crit_edge.loopexit ]
  %.0466.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.en, %._crit_edge.loopexit ]
  %i.eq = extractelement <2 x float> %i.db, i64 0
  %i.er = fsub float %i.eq, %i.by
  %i.es = extractelement <2 x float> %i.db, i64 1
  %i.et = fadd float %i.bx, %i.es
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv527
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !62
  %i.ew = fptrunc double %i.ev to float           ; 4 uses
  %i.ex = fmul float %.0472.lcssa, %i.ew          ; 5 uses
  %i.ey = fmul float %.0470.lcssa, %i.ew          ; 5 uses
  %i.ez = fmul float %i.ex, %i.ex                 ; 3 uses
  %i.fa = fmul float %i.ey, %i.ey                 ; 3 uses
  %i.fb = fmul float %.0468.lcssa, %i.ew          ; 5 uses
  %i.fc = fmul float %.0466.lcssa, %i.ew          ; 5 uses
  %i.fd = fmul float %i.fb, %i.fb                 ; 3 uses
  %i.fe = fmul float %i.fc, %i.fc                 ; 3 uses
  %i.ff = sdiv i32 %i.da, %i.cs
  %i.fg = trunc i32 %i.ff to i16                  ; 4 uses
  %i.fh = srem i32 %i.da, %i.cs                   ; 3 uses
  %i.fi = add nsw i32 %i.fh, %i.cs
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !62
  %i.fm = fptrunc double %i.fl to float           ; 6 uses
  %i.fn = sext i16 %i.fg to i64                   ; 8 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.fn ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !149
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.ex, float %i.fp)
  store float %i.fq, ptr %i.fo, align 4, !tbaa !149
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.fn ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !149
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.ey, float %i.fs)
  store float %i.ft, ptr %i.fr, align 4, !tbaa !149
  %i.fu = fmul float %i.fm, %i.fm                 ; 4 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.fn ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !149
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.ez, float %i.fw)
  store float %i.fx, ptr %i.fv, align 4, !tbaa !149
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.fn ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !149
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fa, float %i.fz)
  store float %i.ga, ptr %i.fy, align 4, !tbaa !149
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.fn ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !149
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.fb, float %i.gc)
  store float %i.gd, ptr %i.gb, align 4, !tbaa !149
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.fn ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !149
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.fc, float %i.gf)
  store float %i.gg, ptr %i.ge, align 4, !tbaa !149
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.fn ; 2 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !149
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fd, float %i.gi)
  store float %i.gj, ptr %i.gh, align 4, !tbaa !149
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.fn ; 2 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !149
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fe, float %i.gl)
  store float %i.gm, ptr %i.gk, align 4, !tbaa !149
  %i.gn = add i16 %i.fg, -1                       ; 2 uses
  %i.go = icmp sgt i16 %i.gn, -1
  br i1 %i.go, label %bb.o, label %.thread

.thread:                                          ; preds = %._crit_edge
  %i.gp = add nsw i16 %i.fg, 1
  br label %bb.p

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.n ], [ 0, %.preheader ]
  %i.gq = phi <2 x float> [ %i.hw, %bb.n ], [ %i.db, %.preheader ] ; 3 uses
  %i.gr = phi <2 x float> [ %i.hu, %bb.n ], [ zeroinitializer, %.preheader ] ; 2 uses
  %i.gs = phi <2 x float> [ %i.hv, %bb.n ], [ zeroinitializer, %.preheader ] ; 2 uses
  %i.gt = extractelement <2 x float> %i.gq, i64 0
  %i.gu = tail call noundef float @llvm.round.f32(float %i.gt)
  %i.gv = fptosi float %i.gu to i16               ; 2 uses
  %i.gw = icmp slt i16 %i.gv, 0
  br i1 %i.gw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.gx = tail call i16 @llvm.smin.i16(i16 %.0460, i16 %i.gv)
  %i.gy = sext i16 %i.gx to i32
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %i.gz = phi i32 [ %i.gy, %bb.k ], [ 0, %.lr.ph ]
  %i.ha = extractelement <2 x float> %i.gq, i64 1
  %i.hb = tail call noundef float @llvm.round.f32(float %i.ha)
  %i.hc = fptosi float %i.hb to i16               ; 2 uses
  %i.hd = icmp slt i16 %i.hc, 0
  br i1 %i.hd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.he = tail call i16 @llvm.smin.i16(i16 %.0459, i16 %i.hc)
  %i.hf = sext i16 %i.he to i32
  %i.hg = mul nsw i32 %i.cq, %i.hf
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.hh = phi i32 [ %i.hg, %bb.m ], [ 0, %bb.l ]
  %i.hi = add nsw i32 %i.hh, %i.gz
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [2 x i8], ptr %.0457, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !301
  %i.hm = getelementptr inbounds [2 x i8], ptr %.0456, i64 %i.hj
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !301
  %3 = insertelement <2 x i16> poison, i16 %i.hl, i64 0
  %4 = insertelement <2 x i16> %3, i16 %i.hn, i64 1
  %5 = sitofp <2 x i16> %4 to <2 x float>         ; 2 uses
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ho = fmul <2 x float> %i.cw, %6
  %i.hp = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.cy, <2 x float> %i.ho) ; 3 uses
  %i.hr = fcmp ogt <2 x float> %i.hq, zeroinitializer ; 2 uses
  %i.hs = fadd <2 x float> %i.gr, %i.hq
  %i.ht = fsub <2 x float> %i.gs, %i.hq
  %i.hu = select <2 x i1> %i.hr, <2 x float> %i.hs, <2 x float> %i.gr ; 3 uses
  %i.hv = select <2 x i1> %i.hr, <2 x float> %i.gs, <2 x float> %i.ht ; 3 uses
  %i.hw = fadd <2 x float> %i.cz, %i.gq
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %i.hx = icmp sgt i32 %i.bq, %indvars.iv.next
  br i1 %i.hx, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !302

bb.o:                                             ; preds = %._crit_edge
  %i.hy = add nsw i32 %i.fh, %i.cu
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !62
  %i.ic = fptrunc double %i.ib to float           ; 6 uses
  %i.id = zext nneg i16 %i.gn to i64              ; 8 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.id ; 2 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !149
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ex, float %i.if)
  store float %i.ig, ptr %i.ie, align 4, !tbaa !149
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.id ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !149
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ey, float %i.ii)
  store float %i.ij, ptr %i.ih, align 4, !tbaa !149
  %i.ik = fmul float %i.ic, %i.ic                 ; 4 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.id ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !149
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.ez, float %i.im)
  store float %i.in, ptr %i.il, align 4, !tbaa !149
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.id ; 2 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !149
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.fa, float %i.ip)
  store float %i.iq, ptr %i.io, align 4, !tbaa !149
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.id ; 2 uses
  %i.is = load float, ptr %i.ir, align 4, !tbaa !149
  %i.it = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.fb, float %i.is)
  store float %i.it, ptr %i.ir, align 4, !tbaa !149
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.id ; 2 uses
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !149
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.fc, float %i.iv)
  store float %i.iw, ptr %i.iu, align 4, !tbaa !149
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.id ; 2 uses
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !149
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.fd, float %i.iy)
  store float %i.iz, ptr %i.ix, align 4, !tbaa !149
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.id ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !149
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.fe, float %i.jb)
  store float %i.jc, ptr %i.ja, align 4, !tbaa !149
  %i.jd = add nuw i16 %i.fg, 1                    ; 2 uses
  %i.je = icmp slt i16 %i.jd, 9
  br i1 %i.je, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread, %bb.o
  %i.jf = phi i16 [ %i.gp, %.thread ], [ %i.jd, %bb.o ]
  %i.jg = sext i32 %i.fh to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !62
  %i.jj = fptrunc double %i.ji to float           ; 6 uses
  %i.jk = sext i16 %i.jf to i64                   ; 8 uses
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.jk ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !149
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.jj, float %i.ex, float %i.jm)
  store float %i.jn, ptr %i.jl, align 4, !tbaa !149
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.jk ; 2 uses
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !149
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.jj, float %i.ey, float %i.jp)
  store float %i.jq, ptr %i.jo, align 4, !tbaa !149
  %i.jr = fmul float %i.jj, %i.jj                 ; 4 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.jk ; 2 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !149
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.ez, float %i.jt)
  store float %i.ju, ptr %i.js, align 4, !tbaa !149
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.jk ; 2 uses
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !149
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.fa, float %i.jw)
  store float %i.jx, ptr %i.jv, align 4, !tbaa !149
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.jk ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !149
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jj, float %i.fb, float %i.jz)
  store float %i.ka, ptr %i.jy, align 4, !tbaa !149
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.jk ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !149
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.jj, float %i.fc, float %i.kc)
  store float %i.kd, ptr %i.kb, align 4, !tbaa !149
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.jk ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !149
  %i.kg = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.fd, float %i.kf)
  store float %i.kg, ptr %i.ke, align 4, !tbaa !149
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.jk ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !149
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.fe, float %i.ki)
  store float %i.kj, ptr %i.kh, align 4, !tbaa !149
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv527, 1 ; 2 uses
  %i.kk = trunc nuw nsw i64 %indvars.iv.next528 to i32 ; 2 uses
  %i.kl = icmp sgt i32 %i.s, %i.kk
  %i.km = insertelement <2 x float> poison, float %i.er, i64 0
  %i.kn = insertelement <2 x float> %i.km, float %i.et, i64 1
  br i1 %i.kl, label %.preheader, label %._crit_edge506, !llvm.loop !303

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %bb.r
  %indvars.iv529 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ %indvars.iv.next530, %bb.r ] ; 11 uses
  %i.ko = and i64 %indvars.iv529, 7
  %or.cond = icmp eq i64 %i.ko, 0
  %..v = select i1 %or.cond, double 2.000000e+00, double 3.000000e+00
  %. = fmul nnan double %..v, %i.el
  %.0451.in = fdiv double 1.000000e+00, %.
  %.0451 = fptrunc double %.0451.in to float      ; 8 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv529
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !149
  %i.kr = fmul float %i.kq, %.0451                ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv529, 5
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx ; 8 uses
  store float %i.kr, ptr %i.ks, align 4, !tbaa !149
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv529
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !149
  %i.kv = fneg float %i.kr
  %i.kw = fmul float %i.kr, %i.kv
  %i.kx = tail call float @llvm.fmuladd.f32(float %i.ku, float %.0451, float %i.kw)
  %i.ky = tail call noundef float @sqrtf(float noundef %i.kx) #23
  %i.kz = getelementptr i8, ptr %i.ks, i64 16
  store float %i.ky, ptr %i.kz, align 4, !tbaa !149
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv529
  %i.lb = load float, ptr %i.la, align 4, !tbaa !149
  %i.lc = fmul float %i.lb, %.0451                ; 3 uses
  %i.ld = getelementptr i8, ptr %i.ks, i64 4
  store float %i.lc, ptr %i.ld, align 4, !tbaa !149
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv529
  %i.lf = load float, ptr %i.le, align 4, !tbaa !149
  %i.lg = fneg float %i.lc
  %i.lh = fmul float %i.lc, %i.lg
  %i.li = tail call float @llvm.fmuladd.f32(float %i.lf, float %.0451, float %i.lh)
  %i.lj = tail call noundef float @sqrtf(float noundef %i.li) #23
  %i.lk = getelementptr i8, ptr %i.ks, i64 20
  store float %i.lj, ptr %i.lk, align 4, !tbaa !149
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv529
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !149
  %i.ln = fmul float %i.lm, %.0451                ; 3 uses
  %i.lo = getelementptr i8, ptr %i.ks, i64 8
  store float %i.ln, ptr %i.lo, align 4, !tbaa !149
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv529
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !149
  %i.lr = fneg float %i.ln
  %i.ls = fmul float %i.ln, %i.lr
  %i.lt = tail call float @llvm.fmuladd.f32(float %i.lq, float %.0451, float %i.ls)
  %i.lu = tail call noundef float @sqrtf(float noundef %i.lt) #23
  %i.lv = getelementptr i8, ptr %i.ks, i64 24
  store float %i.lu, ptr %i.lv, align 4, !tbaa !149
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv529
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !149
  %i.ly = fmul float %i.lx, %.0451                ; 3 uses
  %i.lz = getelementptr i8, ptr %i.ks, i64 12
  store float %i.ly, ptr %i.lz, align 4, !tbaa !149
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv529
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !149
  %i.mc = fneg float %i.ly
  %i.md = fmul float %i.ly, %i.mc
  %i.me = tail call float @llvm.fmuladd.f32(float %i.mb, float %.0451, float %i.md)
  %i.mf = tail call noundef float @sqrtf(float noundef %i.me) #23
  %i.mg = getelementptr i8, ptr %i.ks, i64 28
  store float %i.mf, ptr %i.mg, align 4, !tbaa !149
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next530, 9
  br i1 %exitcond.not, label %.preheader492.preheader, label %bb.r, !llvm.loop !304

.preheader492.preheader:                          ; preds = %bb.r
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %i.mm = load <2 x float>, ptr %i.ej, align 4, !tbaa !149 ; 2 uses
  %i.mn = load <2 x float>, ptr %i.mk, align 4, !tbaa !149 ; 2 uses
  %i.mo = shufflevector <2 x float> %i.mm, <2 x float> %i.mn, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mo, <2 x float> %i.mo, <2 x float> zeroinitializer)
  %i.mq = shufflevector <2 x float> %i.mm, <2 x float> %i.mn, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> %i.mq, <2 x float> %i.mp)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ej, i64 32 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ej, i64 64 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ej, i64 88
  %i.my = getelementptr inbounds nuw i8, ptr %i.ej, i64 96 ; 4 uses
  %i.mz = load float, ptr %i.my, align 4, !tbaa !149
  %i.na = getelementptr inbounds nuw i8, ptr %i.ej, i64 100
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ej, i64 108
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !149
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ej, i64 112
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !149
  %i.nf = load <2 x float>, ptr %i.mi, align 4, !tbaa !149
  %i.ng = load <8 x float>, ptr %i.ms, align 4, !tbaa !149 ; 6 uses
  %i.nh = shufflevector <2 x float> %i.nf, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ni = shufflevector <8 x float> %i.nh, <8 x float> %i.ng, <2 x i32> <i32 0, i32 8> ; 2 uses
  %i.nj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ni, <2 x float> %i.ni, <2 x float> %i.mr)
end_hunk_0
