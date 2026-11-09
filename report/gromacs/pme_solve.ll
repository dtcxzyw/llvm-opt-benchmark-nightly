Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_solve?download=true
inline.NumInlined: 760
inline.NumDeleted: 302
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK8PmeSolve20getLJEnergyAndVirialEP9PmeOutput:bb.a
  %i.al = lshr exact i64 %i.ak, 3                 ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = and i64 %i.al, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.ao = phi float [ %i.ae, %.lr.ph ], [ %i.cd, %bb.b ]
  %i.ap = phi float [ %i.ab, %.lr.ph ], [ %i.ca, %bb.b ]
  %i.aq = phi float [ %i.z, %.lr.ph ], [ %i.bx, %bb.b ]
  %i.ar = phi float [ %i.v, %.lr.ph ], [ %i.bu, %bb.b ]
  %i.as = phi float [ %i.s, %.lr.ph ], [ %i.br, %bb.b ]
  %i.at = phi float [ %i.q, %.lr.ph ], [ %i.bo, %bb.b ]
  %i.au = phi float [ %i.m, %.lr.ph ], [ %i.bl, %bb.b ]
  %i.av = phi float [ %i.j, %.lr.ph ], [ %i.bi, %bb.b ]
  %i.aw = phi float [ %i.h, %.lr.ph ], [ %i.bf, %bb.b ]
  %i.ax = phi float [ %i.d, %.lr.ph ], [ %i.bc, %bb.b ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !33 ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 288
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !54
  %i.bc = fadd float %i.bb, %i.ax                 ; 2 uses
  store float %i.bc, ptr %i.e, align 4, !tbaa !208
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 292
  %i.be = load float, ptr %i.bd, align 4, !tbaa !19
  %i.bf = fadd float %i.aw, %i.be                 ; 2 uses
  store float %i.bf, ptr %i.g, align 4, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 296
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !19
  %i.bi = fadd float %i.av, %i.bh                 ; 2 uses
  store float %i.bi, ptr %i.k, align 4, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 300
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !19
  %i.bl = fadd float %i.au, %i.bk                 ; 2 uses
  store float %i.bl, ptr %i.n, align 4, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 304
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !19
  %i.bo = fadd float %i.at, %i.bn                 ; 2 uses
  store float %i.bo, ptr %i.p, align 4, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 308
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !19
  %i.br = fadd float %i.as, %i.bq                 ; 2 uses
  store float %i.br, ptr %i.t, align 4, !tbaa !19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 312
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !19
  %i.bu = fadd float %i.ar, %i.bt                 ; 2 uses
  store float %i.bu, ptr %i.w, align 4, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 316
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !19
  %i.bx = fadd float %i.aq, %i.bw                 ; 2 uses
  store float %i.bx, ptr %i.y, align 4, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %i.bz = load float, ptr %i.by, align 8, !tbaa !19
  %i.ca = fadd float %i.ap, %i.bz                 ; 2 uses
  store float %i.ca, ptr %i.ac, align 4, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 324
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !19
  %i.cd = fadd float %i.ao, %i.cc                 ; 2 uses
  store float %i.cd, ptr %i.af, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !207
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN8PmeSolve15solveCoulombYZXERK9gmx_pme_tP9t_complexfbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(992) %1, ptr nofree noundef captures(none) %2, float noundef %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 3 uses
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  %i.c = alloca [3 x i32], align 4                ; 6 uses
  %i.d = alloca [3 x i32], align 4                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.f = load float, ptr %i.e, align 4, !tbaa !236 ; 2 uses
  %i.g = fmul float %i.f, %i.f
  %i.h = fpext float %i.g to double
  %i.i = fdiv double f0x4023BD3CC9BE45DE, %i.h
  %i.j = fptrunc double %i.i to float             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.l = load float, ptr %i.k, align 4, !tbaa !237
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load i32, ptr %i.n, align 8, !tbaa !137
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !238
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.z = load <2 x i32>, ptr %i.m, align 8, !tbaa !28 ; 9 uses
  %i.aa = call noundef i32 @_Z33gmx_parallel_3dfft_complex_limitsP18gmx_parallel_3dfftPiS1_S1_S1_(ptr noundef %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.ab = load float, ptr %i.t, align 8, !tbaa !19 ; 13 uses
  %i.ac = load float, ptr %i.u, align 4, !tbaa !19 ; 13 uses
  %i.ad = load float, ptr %i.v, align 8, !tbaa !19 ; 4 uses
  %i.ae = load float, ptr %i.w, align 8, !tbaa !19 ; 13 uses
  %i.af = load float, ptr %i.x, align 4, !tbaa !19 ; 4 uses
  %i.ag = load float, ptr %i.y, align 8, !tbaa !19 ; 13 uses
  %i.ah = add nsw <2 x i32> %i.z, splat (i32 1)
  %i.ai = sdiv <2 x i32> %i.ah, splat (i32 2)     ; 5 uses
  %i.aj = extractelement <2 x i32> %i.ai, i64 0   ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  %i.am = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = lshr exact i64 %i.ap, 3
  %i.ar = trunc i64 %i.aq to i32
  %i.as = sext i32 %5 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33 ; 11 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14 ; 6 uses
  %i.aw = ptrtoaddr ptr %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !14 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14 ; 10 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64              ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !17 ; 17 uses
  %i.bg = insertelement <4 x ptr> poison, ptr %i.ay, i64 0
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %i.ba, i64 1
  %i.bi = insertelement <4 x ptr> %i.bh, ptr %i.bc, i64 2
  %i.bj = insertelement <4 x ptr> %i.bi, ptr %i.bf, i64 3 ; 3 uses
  %i.bk = ptrtoaddr ptr %i.bf to i64              ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !17 ; 21 uses
  %i.bn = ptrtoaddr ptr %i.bm to i64              ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 11 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !14 ; 5 uses
  %i.bs = ptrtoaddr ptr %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !28
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !28 ; 7 uses
  %i.bx = mul nsw i32 %i.bw, %i.bu                ; 3 uses
  %i.by = mul nsw i32 %i.bx, %5
  %i.bz = add nsw i32 %5, 1
  %i.ca = mul nsw i32 %i.bx, %i.bz
  %i.cb = insertelement <2 x i32> poison, i32 %i.by, i64 0
  %i.cc = insertelement <2 x i32> %i.cb, i32 %i.ca, i64 1
  %i.cd = insertelement <2 x i32> poison, i32 %i.ar, i64 0
  %i.ce = shufflevector <2 x i32> %i.cd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cf = sdiv <2 x i32> %i.cc, %i.ce             ; 2 uses
  %i.cg = extractelement <2 x i32> %i.cf, i64 0   ; 3 uses
  %i.ch = extractelement <2 x i32> %i.cf, i64 1   ; 3 uses
  %i.ci = icmp slt i32 %i.cg, %i.ch
  br i1 %i.ci, label %.lr.ph482, label %._crit_edge483

.lr.ph482:                                        ; preds = %bb.a
  %i.cj = fpext float %i.l to double
  %i.ck = fdiv double f0x40615DEF44DEAD3D, %i.cj
  %i.cl = fptrunc double %i.ck to float
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !28 ; 2 uses
  %i.co = fpext float %3 to double
  %i.cp = fmul double %i.co, f0x400921FB54442D18  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !28 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.cv = add nsw i32 %i.o, 1
  %i.cw = sdiv i32 %i.cv, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !28
  %i.cz = load i32, ptr %i.d, align 4, !tbaa !28  ; 3 uses
  %factor.op.mul = mul i32 %i.cy, %i.cz           ; 2 uses
  %i.da = load i32, ptr %i.c, align 4, !tbaa !28  ; 7 uses
  %i.db = icmp slt i32 %i.da, 1                   ; 8 uses
  %i.dc = load i32, ptr %i.b, align 4, !tbaa !28  ; 3 uses
  %i.dd = add i32 %i.dc, %i.da                    ; 3 uses
  %i.de = fneg float %i.j                         ; 13 uses
  %i.df = icmp slt i32 %i.aj, %i.dd               ; 2 uses
  %i.dg = add i32 %i.dd, 15                       ; 2 uses
  %i.dh = insertelement <16 x float> poison, float %i.cl, i64 0
  %i.di = shufflevector <16 x float> %i.dh, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dj = lshr i32 %i.dg, 4
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %.not10.i406 = icmp ult i32 %i.dg, 16           ; 2 uses
  %i.dl = sext i32 %i.da to i64                   ; 12 uses
  %i.dm = sext i32 %i.aj to i64                   ; 10 uses
  %i.dn = sext i32 %i.dd to i64                   ; 14 uses
  %i.do = add nsw i64 %i.dl, 1                    ; 2 uses
  br i1 %4, label %.lr.ph482.split.us.preheader, label %.lr.ph482.split.preheader

.lr.ph482.split.us.preheader:                     ; preds = %.lr.ph482
  %i.dp = extractelement <2 x i32> %i.ai, i64 1
  %i.dq = extractelement <2 x i32> %i.z, i64 1
  %i.dr = xor i32 %i.da, -1
  %i.ds = add i32 %i.aj, %i.dr
  %i.dt = insertelement <16 x i64> poison, i64 %i.aw, i64 0
  %i.du = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dv = ptrtoaddr <16 x ptr> %i.du to <16 x i64> ; 2 uses
  %i.dw = shufflevector <16 x i64> %i.dt, <16 x i64> %i.dv, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 16, i32 16, i32 17, i32 17, i32 17, i32 17, i32 18>
  %i.dx = insertelement <16 x i64> %i.dv, i64 %i.bn, i64 4
  %i.dy = sub i64 %i.bd, %i.bn
  %diff.check989 = icmp ugt i64 %i.dy, -32
  %i.dz = sub i64 %i.bk, %i.bn
  %diff.check993 = icmp ugt i64 %i.dz, -32
  %broadcast.splatinsert1005 = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat1006 = shufflevector <8 x float> %broadcast.splatinsert1005, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1007 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat1008 = shufflevector <8 x float> %broadcast.splatinsert1007, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1009 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat1010 = shufflevector <8 x float> %broadcast.splatinsert1009, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1013 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat1014 = shufflevector <8 x float> %broadcast.splatinsert1013, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1019 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat1020 = shufflevector <8 x float> %broadcast.splatinsert1019, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ea = sub nsw i64 %i.dn, %i.dm                ; 3 uses
  %min.iters.check834 = icmp ult i64 %i.ea, 16
  %i.eb = insertelement <16 x i64> poison, i64 %i.aw, i64 0
  %i.ec = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ed = ptrtoaddr <16 x ptr> %i.ec to <16 x i64> ; 2 uses
  %i.ee = shufflevector <16 x i64> %i.eb, <16 x i64> %i.ed, <16 x i32> <i32 0, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ef = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eg = ptrtoaddr <16 x ptr> %i.ef to <16 x i64>
  %i.eh = shufflevector <16 x i64> %i.ee, <16 x i64> %i.eg, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 18>
  %i.ei = insertelement <16 x i64> %i.ed, i64 %i.bn, i64 4
  %i.ej = sub i64 %i.bd, %i.bn
  %diff.check867 = icmp ugt i64 %i.ej, -32
  %i.ek = sub i64 %i.bk, %i.bn
  %diff.check871 = icmp ugt i64 %i.ek, -32
  %n.vec878 = and i64 %i.ea, -8                   ; 3 uses
  %i.el = add nsw i64 %n.vec878, %i.dm
  %broadcast.splat884 = shufflevector <2 x i32> %i.z, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert885 = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat886 = shufflevector <8 x float> %broadcast.splatinsert885, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert887 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat888 = shufflevector <8 x float> %broadcast.splatinsert887, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert889 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat890 = shufflevector <8 x float> %broadcast.splatinsert889, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert893 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat894 = shufflevector <8 x float> %broadcast.splatinsert893, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert899 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat900 = shufflevector <8 x float> %broadcast.splatinsert899, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat902 = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <8 x i32> zeroinitializer
  %induction903 = add nsw <8 x i32> %broadcast.splat902, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cmp.n911 = icmp eq i64 %i.ea, %n.vec878
  %i.em = extractelement <2 x i32> %i.z, i64 0
  %i.en = sub i64 %i.bd, %i.bs
  %diff.check763 = icmp ugt i64 %i.en, -128
  %invariant.op1062 = add nsw i64 %i.dl, 1
  br label %.lr.ph482.split.us

.lr.ph482.split.preheader:                        ; preds = %.lr.ph482
  %i.eo = sub i64 %i.bn, %i.bk                    ; 2 uses
  %i.ep = xor i32 %i.da, -1
  %i.eq = add i32 %i.aj, %i.ep
  %i.er = extractelement <2 x i32> %i.ai, i64 1
  %i.es = extractelement <2 x i32> %i.z, i64 1
  %i.et = add i64 %i.eo, -1
  %diff.check627 = icmp ult i64 %i.et, 127
  %broadcast.splatinsert640 = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat641 = shufflevector <8 x float> %broadcast.splatinsert640, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert642 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat643 = shufflevector <8 x float> %broadcast.splatinsert642, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert644 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat645 = shufflevector <8 x float> %broadcast.splatinsert644, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert648 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat649 = shufflevector <8 x float> %broadcast.splatinsert648, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert654 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat655 = shufflevector <8 x float> %broadcast.splatinsert654, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert682 = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat683 = shufflevector <8 x float> %broadcast.splatinsert682, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert684 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat685 = shufflevector <8 x float> %broadcast.splatinsert684, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert686 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat687 = shufflevector <8 x float> %broadcast.splatinsert686, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert690 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat691 = shufflevector <8 x float> %broadcast.splatinsert690, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert696 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat697 = shufflevector <8 x float> %broadcast.splatinsert696, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eu = sub nsw i64 %i.dn, %i.dm                ; 3 uses
  %min.iters.check582 = icmp ult i64 %i.eu, 8
  %i.ev = add i64 %i.eo, -1
  %diff.check = icmp ult i64 %i.ev, 31
  %n.vec588 = and i64 %i.eu, -8                   ; 3 uses
  %i.ew = add nsw i64 %n.vec588, %i.dm
  %broadcast.splat592 = shufflevector <2 x i32> %i.z, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert593 = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat594 = shufflevector <8 x float> %broadcast.splatinsert593, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert595 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat596 = shufflevector <8 x float> %broadcast.splatinsert595, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert597 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat598 = shufflevector <8 x float> %broadcast.splatinsert597, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert601 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat602 = shufflevector <8 x float> %broadcast.splatinsert601, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert607 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat608 = shufflevector <8 x float> %broadcast.splatinsert607, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat610 = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat610, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cmp.n616 = icmp eq i64 %i.eu, %n.vec588
  %i.ex = extractelement <2 x i32> %i.z, i64 0
  %i.ey = add nsw i64 %i.dn, -1
  %i.ez = extractelement <2 x i32> %i.z, i64 0
  %i.fa = extractelement <2 x i32> %i.z, i64 0
  %invariant.op = add nsw i64 %i.dl, 1
  br label %.lr.ph482.split

.lr.ph482.split.us:                               ; preds = %.lr.ph482.split.us.preheader, %.loopexit.us
  %.0368480.us = phi float [ %.1.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0369479.us = phi float [ %.1370.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0372478.us = phi float [ %.1373.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0375477.us = phi float [ %.1376.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0378476.us = phi float [ %.1379.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0381475.us = phi float [ %.1382.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0384474.us = phi float [ %.1385.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0389473.us = phi i32 [ %i.mr, %.loopexit.us ], [ %i.cg, %.lr.ph482.split.us.preheader ] ; 3 uses
  %i.fb = sdiv i32 %.0389473.us, %i.bw            ; 3 uses
  %i.fc = mul nsw i32 %i.fb, %i.bw                ; 0 uses
  %.recomposed = srem i32 %.0389473.us, %i.bw     ; 2 uses
  %i.fd = add nsw i32 %i.cn, %i.fb                ; 4 uses
  %i.fe = icmp slt i32 %i.fd, %i.dp
  %i.ff = select i1 %i.fe, i32 0, i32 %i.dq
  %.0387.in.us = sub nsw i32 %i.fd, %i.ff
  %.0387.us = sitofp i32 %.0387.in.us to float    ; 4 uses
  %i.fg = sext i32 %i.fd to i64
  %i.fh = load ptr, ptr %i.cr, align 8, !tbaa !14
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fg
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !19
  %i.fk = fpext float %i.fj to double
  %i.fl = fmul double %i.cp, %i.fk
  %i.fm = fptrunc double %i.fl to float           ; 4 uses
  %i.fn = add nsw i32 %i.ct, %.recomposed         ; 5 uses
  %i.fo = sitofp i32 %i.fn to float               ; 4 uses
  %i.fp = sext i32 %i.fn to i64
  %i.fq = load ptr, ptr %i.cu, align 8, !tbaa !14
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !19 ; 4 uses
  %i.ft = icmp eq i32 %i.fn, 0
  %i.fu = icmp eq i32 %i.fn, %i.cw
  %or.cond = select i1 %i.ft, i1 true, i1 %i.fu
  %.0.us = select i1 %or.cond, float 5.000000e-01, float 1.000000e+00
  %.reass.us = mul i32 %factor.op.mul, %i.fb
  %i.fv = sext i32 %.reass.us to i64              ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %2, i64 %i.fv
  %i.fx = mul i32 %i.cz, %.recomposed
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  %i.fz = getelementptr [8 x i8], ptr %i.fw, i64 %i.fy
  %i.ga = icmp slt i32 %i.fd, 1                   ; 5 uses
  %i.gb = icmp slt i32 %i.fn, 1                   ; 5 uses
  %i.gc = and i1 %i.ga, %i.gb
  %or.cond3.not.us = and i1 %i.gc, %i.db          ; 2 uses
  %.0393.idx.us = select i1 %or.cond3.not.us, i64 8, i64 0 ; 2 uses
  %.0393.us = getelementptr i8, ptr %i.fz, i64 %.0393.idx.us ; 6 uses
  %i.gd = zext i1 %or.cond3.not.us to i32         ; 3 uses
  %.0388.us = add nsw i32 %i.da, %i.gd
  %i.ge = icmp slt i32 %.0388.us, %i.aj
  br i1 %i.ge, label %.lr.ph449.us, label %.preheader437.us

scalar.ph955:                                     ; preds = %scalar.ph955.preheader, %scalar.ph955
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %scalar.ph955 ], [ %indvars.iv517.ph, %scalar.ph955.preheader ] ; 9 uses
  %i.gf = trunc nsw i64 %indvars.iv517 to i32
  %i.gg = sitofp i32 %i.gf to float               ; 3 uses
  %i.gh = fmul float %i.ab, %i.gg                 ; 3 uses
  %i.gi = call float @llvm.fmuladd.f32(float %i.gg, float %i.ac, float %i.nv) ; 3 uses
  %i.gj = call float @llvm.fmuladd.f32(float %i.gg, float %i.ae, float %i.nw)
  %i.gk = call float @llvm.fmuladd.f32(float %i.fo, float %i.ag, float %i.gj) ; 3 uses
  %i.gl = fmul float %i.gi, %i.gi
  %i.gm = call float @llvm.fmuladd.f32(float %i.gh, float %i.gh, float %i.gl)
  %i.gn = call float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gm) ; 3 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv517
  store float %i.gh, ptr %i.go, align 4, !tbaa !19
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv517
  store float %i.gi, ptr %i.gp, align 4, !tbaa !19
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv517
  store float %i.gk, ptr %i.gq, align 4, !tbaa !19
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv517
  store float %i.gn, ptr %i.gr, align 4, !tbaa !19
  %i.gs = fmul float %i.fs, %i.gn
  %i.gt = fmul float %i.gs, %i.fm
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv517
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !19
  %i.gw = fmul float %i.gt, %i.gv
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv517
  store float %i.gw, ptr %i.gx, align 4, !tbaa !19
  %i.gy = fmul float %i.gn, %i.de
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv517
  store float %i.gy, ptr %i.gz, align 4, !tbaa !19
  %indvars.iv.next518 = add nsw i64 %indvars.iv517, 1 ; 2 uses
  %lftr.wideiv519 = trunc i64 %indvars.iv.next518 to i32
  %exitcond520.not = icmp eq i32 %i.od, %lftr.wideiv519
  br i1 %exitcond520.not, label %.preheader437.us, label %scalar.ph955, !llvm.loop !209

scalar.ph833:                                     ; preds = %scalar.ph833.preheader, %scalar.ph833
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %scalar.ph833 ], [ %indvars.iv521.ph, %scalar.ph833.preheader ] ; 9 uses
  %i.ha = trunc i64 %indvars.iv521 to i32
  %i.hb = sub i32 %i.ha, %i.em
  %i.hc = sitofp i32 %i.hb to float               ; 3 uses
  %i.hd = fmul float %i.ab, %i.hc                 ; 3 uses
  %i.he = call float @llvm.fmuladd.f32(float %i.hc, float %i.ac, float %i.po) ; 3 uses
  %i.hf = call float @llvm.fmuladd.f32(float %i.hc, float %i.ae, float %i.pp)
  %i.hg = call float @llvm.fmuladd.f32(float %i.fo, float %i.ag, float %i.hf) ; 3 uses
  %i.hh = fmul float %i.he, %i.he
  %i.hi = call float @llvm.fmuladd.f32(float %i.hd, float %i.hd, float %i.hh)
  %i.hj = call float @llvm.fmuladd.f32(float %i.hg, float %i.hg, float %i.hi) ; 3 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv521
  store float %i.hd, ptr %i.hk, align 4, !tbaa !19
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv521
  store float %i.he, ptr %i.hl, align 4, !tbaa !19
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv521
  store float %i.hg, ptr %i.hm, align 4, !tbaa !19
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv521
  store float %i.hj, ptr %i.hn, align 4, !tbaa !19
  %i.ho = fmul float %i.fs, %i.hj
  %i.hp = fmul float %i.ho, %i.fm
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv521
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !19
  %i.hs = fmul float %i.hp, %i.hr
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv521
  store float %i.hs, ptr %i.ht, align 4, !tbaa !19
  %i.hu = fmul float %i.hj, %i.de
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv521
  store float %i.hu, ptr %i.hv, align 4, !tbaa !19
  %indvars.iv.next522 = add nsw i64 %indvars.iv521, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next522, %i.dn
  br i1 %exitcond525.not, label %.preheader436.us, label %scalar.ph833, !llvm.loop !210

.lr.ph453.us:                                     ; preds = %.lr.ph453.us.preheader, %.lr.ph453.us
  %indvars.iv528 = phi i64 [ %indvars.iv.next529, %.lr.ph453.us ], [ %indvars.iv528.ph, %.lr.ph453.us.preheader ] ; 3 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv528
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !19
  %i.hy = fdiv float 1.000000e+00, %i.hx
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv528
  store float %i.hy, ptr %i.hz, align 4, !tbaa !19
  %indvars.iv.next529 = add nsw i64 %indvars.iv528, 1 ; 2 uses
  %i.ia = icmp slt i64 %indvars.iv.next529, %i.dn
  br i1 %i.ia, label %.lr.ph453.us, label %._crit_edge454.us, !llvm.loop !211

._crit_edge454.us:                                ; preds = %.lr.ph453.us, %middle.block775, %vec.epilog.middle.block788, %.preheader436.us
  br i1 %.not10.i406, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %._crit_edge454.us
  %i.ib = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> splat (float f0x3FB8AA3B), <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ic = fneg <16 x float> %i.ib
  %i.id = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ic, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 2.000000e+00))
  %i.ie = fmul <16 x float> %i.ib, %i.id
  %i.if = fmul <16 x float> %i.ie, splat (float f0xCF000000)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.us
  %.011.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %i.jg, %bb.b ] ; 2 uses
  %.idx.i.i.us = shl nuw nsw i64 %.011.i.us, 6    ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i.i.us
  %.val.i.i.us = load <16 x float>, ptr %i.ig, align 64, !tbaa !140 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i.i.us
  %.val.i17.i.us = load <16 x float>, ptr %i.ih, align 64, !tbaa !140
  %i.ii = call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %.val.i17.i.us, <16 x float> %i.if, i32 4) ; 2 uses
  %i.ij = fmul <16 x float> %i.ii, splat (float f0x3FB8AA3B) ; 2 uses
  %i.ik = call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ij, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.il = add <16 x i32> %i.ik, splat (i32 127)
  %i.im = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.il, <16 x i32> zeroinitializer)
  %i.in = shl <16 x i32> %i.im, splat (i32 23)
  %i.io = bitcast <16 x i32> %i.in to <16 x float> ; 2 uses
  %i.ip = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ij, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.iq = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ip, <16 x float> splat (float f0xBF317200), <16 x float> %i.ii)
  %i.ir = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ip, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.iq) ; 7 uses
  %i.is = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ir, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.it = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.is, <16 x float> %i.ir, <16 x float> splat (float f0x3D2AAF4C))
  %i.iu = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.it, <16 x float> %i.ir, <16 x float> splat (float f0x3E2AAA5E))
  %i.iv = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.iu, <16 x float> %i.ir, <16 x float> splat (float f0x3EFFFFFB))
  %i.iw = fmul <16 x float> %i.ir, %i.ir
  %i.ix = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.iw, <16 x float> %i.iv, <16 x float> %i.ir)
  %i.iy = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ix, <16 x float> %i.io, <16 x float> %i.io)
  %i.iz = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %.val.i.i.us, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ja = fneg <16 x float> %i.iz
  %i.jb = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ja, <16 x float> %.val.i.i.us, <16 x float> splat (float 2.000000e+00))
  %i.jc = fmul <16 x float> %i.iz, %i.jb
  %i.jd = fmul <16 x float> %i.di, %i.jc
  %i.je = fmul <16 x float> %i.jd, %i.iy
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i.us
  store <16 x float> %i.je, ptr %i.jf, align 64, !tbaa !140
  %i.jg = add nuw nsw i64 %.011.i.us, 1           ; 2 uses
  %.not.i.us = icmp eq i64 %i.jg, %i.dk
  br i1 %.not.i.us, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us, label %bb.b, !llvm.loop !212

_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us: ; preds = %bb.b, %._crit_edge454.us
  br i1 %i.ms, label %.lr.ph457.us.preheader, label %.loopexit.us

.lr.ph457.us.preheader:                           ; preds = %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us
  %i.jh = and i1 %i.ga, %i.gb
  %i.ji = and i1 %i.jh, %i.db
  %umin531 = zext i1 %i.ji to i64                 ; 3 uses
  %i.jj = add nsw i64 %i.dl, %umin531             ; 6 uses
  %.reass1063 = add nsw i64 %umin531, %invariant.op1062
  %i.jk = call i64 @llvm.smax.i64(i64 %.reass1063, i64 %i.dn) ; 3 uses
  %i.jl = add nsw i64 %umin531, %i.dl
  %i.jm = sub i64 %i.jk, %i.jl                    ; 3 uses
  %min.iters.check728 = icmp ult i64 %i.jm, 8
  br i1 %min.iters.check728, label %.lr.ph457.us.preheader1044, label %vector.memcheck729

vector.memcheck729:                               ; preds = %.lr.ph457.us.preheader
  %i.jn = add i64 %i.jk, %i.fv
  %i.jo = add i64 %i.jn, %i.fy
  %i.jp = shl nsw i64 %i.jo, 3
  %i.jq = shl nsw i64 %i.jj, 3
  %i.jr = add i64 %.0393.idx.us, %i.jp
  %i.js = sub i64 %i.jr, %i.jq
  %i.jt = getelementptr i8, ptr %2, i64 %i.js     ; 2 uses
  %i.ju = shl nsw i64 %i.jj, 2                    ; 2 uses
  %i.jv = getelementptr i8, ptr %i.bm, i64 %i.ju  ; 2 uses
  %i.jw = shl nsw i64 %i.jk, 2                    ; 2 uses
  %i.jx = getelementptr i8, ptr %i.bm, i64 %i.jw  ; 2 uses
  %i.jy = getelementptr i8, ptr %i.bp, i64 %i.ju  ; 2 uses
  %i.jz = getelementptr i8, ptr %i.bp, i64 %i.jw  ; 2 uses
  %bound0730 = icmp ult ptr %.0393.us, %i.jx
  %bound1731 = icmp ult ptr %i.jv, %i.jt
  %found.conflict732 = and i1 %bound0730, %bound1731
  %bound0733 = icmp ult ptr %.0393.us, %i.jz
  %bound1734 = icmp ult ptr %i.jy, %i.jt
  %found.conflict735 = and i1 %bound0733, %bound1734
  %conflict.rdx736 = or i1 %found.conflict732, %found.conflict735
  %bound0737 = icmp ult ptr %i.jv, %i.jz
  %bound1738 = icmp ult ptr %i.jy, %i.jx
  %found.conflict739 = and i1 %bound0737, %bound1738
  %conflict.rdx740 = or i1 %conflict.rdx736, %found.conflict739
  br i1 %conflict.rdx740, label %.lr.ph457.us.preheader1044, label %vector.ph741

vector.ph741:                                     ; preds = %vector.memcheck729
  %n.vec742 = and i64 %i.jm, -8                   ; 4 uses
  %i.ka = add i64 %i.jj, %n.vec742
  %i.kb = shl i64 %n.vec742, 3
  %i.kc = getelementptr i8, ptr %.0393.us, i64 %i.kb
  br label %vector.body743

vector.body743:                                   ; preds = %vector.body743, %vector.ph741
  %index744 = phi i64 [ 0, %vector.ph741 ], [ %index.next752, %vector.body743 ] ; 3 uses
  %i.kd = add i64 %i.jj, %index744                ; 2 uses
  %i.ke = shl i64 %index744, 3
  %next.gep745 = getelementptr i8, ptr %.0393.us, i64 %i.ke ; 2 uses
  %wide.vec746 = load <16 x float>, ptr %next.gep745, align 4, !tbaa !19, !alias.scope !239, !noalias !240 ; 2 uses
  %strided.vec747 = shufflevector <16 x float> %wide.vec746, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec748 = shufflevector <16 x float> %wide.vec746, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.kd ; 2 uses
  %wide.load749 = load <8 x float>, ptr %i.kf, align 4, !tbaa !19, !alias.scope !241 ; 2 uses
  %i.kg = fmul <8 x float> %strided.vec747, %wide.load749
  %i.kh = fmul <8 x float> %strided.vec748, %wide.load749
  %interleaved.vec750 = shufflevector <8 x float> %i.kg, <8 x float> %i.kh, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec750, ptr %next.gep745, align 4, !tbaa !19, !alias.scope !239, !noalias !240
  %i.ki = fmul <8 x float> %strided.vec748, %strided.vec748
  %i.kj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec747, <8 x float> %strided.vec747, <8 x float> %i.ki)
  %i.kk = fmul <8 x float> %i.kj, splat (float 2.000000e+00)
  %wide.load751 = load <8 x float>, ptr %i.kf, align 4, !tbaa !19, !alias.scope !241
  %i.kl = fmul <8 x float> %i.kk, %wide.load751
  %i.km = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.kd
  store <8 x float> %i.kl, ptr %i.km, align 4, !tbaa !19, !alias.scope !242, !noalias !241
  %index.next752 = add nuw i64 %index744, 8       ; 2 uses
  %i.kn = icmp eq i64 %index.next752, %n.vec742
  br i1 %i.kn, label %middle.block753, label %vector.body743, !llvm.loop !217

middle.block753:                                  ; preds = %vector.body743
  %cmp.n754 = icmp eq i64 %i.jm, %n.vec742
  br i1 %cmp.n754, label %.lr.ph466.us.preheader, label %.lr.ph457.us.preheader1044

.lr.ph457.us.preheader1044:                       ; preds = %vector.memcheck729, %.lr.ph457.us.preheader, %middle.block753
  %indvars.iv532.ph = phi i64 [ %i.jj, %vector.memcheck729 ], [ %i.jj, %.lr.ph457.us.preheader ], [ %i.ka, %middle.block753 ]
  %.1394455.us.ph = phi ptr [ %.0393.us, %vector.memcheck729 ], [ %.0393.us, %.lr.ph457.us.preheader ], [ %i.kc, %middle.block753 ]
  br label %.lr.ph457.us

.lr.ph457.us:                                     ; preds = %.lr.ph457.us.preheader1044, %.lr.ph457.us
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph457.us ], [ %indvars.iv532.ph, %.lr.ph457.us.preheader1044 ] ; 3 uses
  %.1394455.us = phi ptr [ %i.lc, %.lr.ph457.us ], [ %.1394455.us.ph, %.lr.ph457.us.preheader1044 ] ; 4 uses
  %i.ko = load float, ptr %.1394455.us, align 4, !tbaa !142 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.1394455.us, i64 4 ; 2 uses
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !143 ; 3 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv532 ; 3 uses
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !19
  %i.kt = fmul float %i.ko, %i.ks
  store float %i.kt, ptr %.1394455.us, align 4, !tbaa !142
  %i.ku = load float, ptr %i.kr, align 4, !tbaa !19
  %i.kv = fmul float %i.kq, %i.ku
  store float %i.kv, ptr %i.kp, align 4, !tbaa !143
  %i.kw = fmul float %i.kq, %i.kq
  %i.kx = call float @llvm.fmuladd.f32(float %i.ko, float %i.ko, float %i.kw)
  %i.ky = fmul float %i.kx, 2.000000e+00
  %i.kz = load float, ptr %i.kr, align 4, !tbaa !19
  %i.la = fmul float %i.ky, %i.kz
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv532
  store float %i.la, ptr %i.lb, align 4, !tbaa !19
  %indvars.iv.next533 = add nsw i64 %indvars.iv532, 1 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.1394455.us, i64 8
  %i.ld = icmp slt i64 %indvars.iv.next533, %i.dn
  br i1 %i.ld, label %.lr.ph457.us, label %.lr.ph466.us.preheader, !llvm.loop !218

.lr.ph466.us:                                     ; preds = %.lr.ph466.us.preheader, %.lr.ph466.us
  %indvars.iv536 = phi i64 [ %i.mq, %.lr.ph466.us.preheader ], [ %indvars.iv.next537, %.lr.ph466.us ] ; 7 uses
  %.1465.us = phi float [ %.0368480.us, %.lr.ph466.us.preheader ], [ %i.mm, %.lr.ph466.us ]
  %.1370464.us = phi float [ %.0369479.us, %.lr.ph466.us.preheader ], [ %i.mj, %.lr.ph466.us ]
  %.1373463.us = phi float [ %.0372478.us, %.lr.ph466.us.preheader ], [ %i.mi, %.lr.ph466.us ]
  %.1376462.us = phi float [ %.0375477.us, %.lr.ph466.us.preheader ], [ %i.mh, %.lr.ph466.us ]
  %.1379461.us = phi float [ %.0378476.us, %.lr.ph466.us.preheader ], [ %i.mg, %.lr.ph466.us ]
  %.1382460.us = phi float [ %.0381475.us, %.lr.ph466.us.preheader ], [ %i.mf, %.lr.ph466.us ]
  %.1385459.us = phi float [ %.0384474.us, %.lr.ph466.us.preheader ], [ %i.ls, %.lr.ph466.us ]
  %i.le = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv536
  %i.lf = load float, ptr %i.le, align 4, !tbaa !19
  %i.lg = fmul float %.0.us, %i.lf                ; 3 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv536
  %i.li = load float, ptr %i.lh, align 4, !tbaa !19
  %i.lj = fmul float %i.li, %i.j
  %i.lk = fpext float %i.lj to double
  %i.ll = fadd double %i.lk, 1.000000e+00
  %i.lm = fmul double %i.ll, 2.000000e+00
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv536
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !19
  %i.lp = fpext float %i.lo to double
  %i.lq = fmul double %i.lm, %i.lp
  %i.lr = fptrunc double %i.lq to float
  %i.ls = fadd float %.1385459.us, %i.lg          ; 2 uses
  %i.lt = fmul float %i.lg, %i.lr                 ; 3 uses
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv536
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !19 ; 2 uses
  %i.lw = fmul float %i.lv, %i.lt                 ; 3 uses
  %i.lx = fneg float %i.lg                        ; 3 uses
  %i.ly = call float @llvm.fmuladd.f32(float %i.lw, float %i.lv, float %i.lx)
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv536
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !19 ; 3 uses
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv536
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !19 ; 4 uses
  %i.md = fmul float %i.ma, %i.lt                 ; 2 uses
  %i.me = call float @llvm.fmuladd.f32(float %i.md, float %i.ma, float %i.lx)
  %i.mf = fadd float %.1382460.us, %i.ly          ; 2 uses
  %i.mg = call float @llvm.fmuladd.f32(float %i.lw, float %i.ma, float %.1379461.us) ; 2 uses
  %i.mh = call float @llvm.fmuladd.f32(float %i.lw, float %i.mc, float %.1376462.us) ; 2 uses
  %i.mi = fadd float %.1373463.us, %i.me          ; 2 uses
  %i.mj = call float @llvm.fmuladd.f32(float %i.md, float %i.mc, float %.1370464.us) ; 2 uses
  %i.mk = fmul float %i.mc, %i.lt
  %i.ml = call float @llvm.fmuladd.f32(float %i.mk, float %i.mc, float %i.lx)
  %i.mm = fadd float %.1465.us, %i.ml             ; 2 uses
  %indvars.iv.next537 = add nsw i64 %indvars.iv536, 1 ; 2 uses
  %i.mn = icmp slt i64 %indvars.iv.next537, %i.dn
  br i1 %i.mn, label %.lr.ph466.us, label %.loopexit.us, !llvm.loop !219

.lr.ph466.us.preheader:                           ; preds = %.lr.ph457.us, %middle.block753
  %i.mo = and i1 %i.ga, %i.gb
  %i.mp = and i1 %i.mo, %i.db
  %umin535 = zext i1 %i.mp to i64
  %i.mq = add nsw i64 %i.dl, %umin535
  br label %.lr.ph466.us

.loopexit.us:                                     ; preds = %.lr.ph466.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us
  %.1385.lcssa.us = phi float [ %.0384474.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.ls, %.lr.ph466.us ] ; 2 uses
  %.1382.lcssa.us = phi float [ %.0381475.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.mf, %.lr.ph466.us ] ; 2 uses
  %.1379.lcssa.us = phi float [ %.0378476.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.mg, %.lr.ph466.us ] ; 2 uses
  %.1376.lcssa.us = phi float [ %.0375477.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.mh, %.lr.ph466.us ] ; 2 uses
  %.1373.lcssa.us = phi float [ %.0372478.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.mi, %.lr.ph466.us ] ; 2 uses
  %.1370.lcssa.us = phi float [ %.0369479.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.mj, %.lr.ph466.us ] ; 2 uses
  %.1.lcssa.us = phi float [ %.0368480.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.mm, %.lr.ph466.us ] ; 2 uses
  %i.mr = add nsw i32 %.0389473.us, 1             ; 2 uses
  %exitcond538.not = icmp eq i32 %i.mr, %i.ch
  br i1 %exitcond538.not, label %._crit_edge483.loopexit, label %.lr.ph482.split.us, !llvm.loop !220

.preheader436.us:                                 ; preds = %scalar.ph833, %middle.block910, %.preheader437.us
  %i.ms = icmp sgt i32 %i.dc, %i.gd               ; 2 uses
  br i1 %i.ms, label %iter.check777, label %._crit_edge454.us

iter.check777:                                    ; preds = %.preheader436.us
  %i.mt = and i1 %i.ga, %i.gb
  %i.mu = and i1 %i.mt, %i.db
  %umin527 = zext i1 %i.mu to i64                 ; 3 uses
  %i.mv = add nsw i64 %i.dl, %umin527             ; 5 uses
  %i.mw = add nsw i64 %i.do, %umin527
  %smax759 = call i64 @llvm.smax.i64(i64 %i.mw, i64 %i.dn)
  %i.mx = add nsw i64 %i.dl, %umin527
  %i.my = sub i64 %smax759, %i.mx                 ; 7 uses
  %min.iters.check761 = icmp ult i64 %i.my, 4
  %or.cond1034 = select i1 %min.iters.check761, i1 true, i1 %diff.check763
  br i1 %or.cond1034, label %.lr.ph453.us.preheader, label %vector.main.loop.iter.check764

vector.main.loop.iter.check764:                   ; preds = %iter.check777
  %min.iters.check765 = icmp ult i64 %i.my, 32
  br i1 %min.iters.check765, label %vec.epilog.ph781, label %vector.ph766

vector.ph766:                                     ; preds = %vector.main.loop.iter.check764
  %i.mz = and i64 %i.my, 28
  %n.vec767 = and i64 %i.my, -32                  ; 4 uses
  %i.na = add i64 %i.mv, %n.vec767
  br label %vector.body768

vector.body768:                                   ; preds = %vector.ph766, %vector.body768
  %index769 = phi i64 [ 0, %vector.ph766 ], [ %index.next774, %vector.body768 ] ; 2 uses
  %i.nb = add i64 %i.mv, %index769                ; 2 uses
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.nb ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 96
  %wide.load770 = load <8 x float>, ptr %i.nc, align 4, !tbaa !19
  %wide.load771 = load <8 x float>, ptr %i.nd, align 4, !tbaa !19
  %wide.load772 = load <8 x float>, ptr %i.ne, align 4, !tbaa !19
  %wide.load773 = load <8 x float>, ptr %i.nf, align 4, !tbaa !19
  %i.ng = fdiv <8 x float> splat (float 1.000000e+00), %wide.load770
  %i.nh = fdiv <8 x float> splat (float 1.000000e+00), %wide.load771
  %i.ni = fdiv <8 x float> splat (float 1.000000e+00), %wide.load772
  %i.nj = fdiv <8 x float> splat (float 1.000000e+00), %wide.load773
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.nb ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 96
  store <8 x float> %i.ng, ptr %i.nk, align 4, !tbaa !19
  store <8 x float> %i.nh, ptr %i.nl, align 4, !tbaa !19
  store <8 x float> %i.ni, ptr %i.nm, align 4, !tbaa !19
  store <8 x float> %i.nj, ptr %i.nn, align 4, !tbaa !19
  %index.next774 = add nuw i64 %index769, 32      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8PmeSolve15solveCoulombYZXERK9gmx_pme_tP9t_complexfbi:bb.a
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.xl = icmp eq i64 %index.next614, %n.vec588
  br i1 %i.xl, label %middle.block615, label %vector.body611, !llvm.loop !227

middle.block615:                                  ; preds = %vector.body611
  br i1 %cmp.n616, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck583, %.lr.ph444, %middle.block615
  %indvars.iv506.ph = phi i64 [ %i.dm, %vector.memcheck583 ], [ %i.dm, %.lr.ph444 ], [ %i.ew, %middle.block615 ] ; 8 uses
  %i.xm = sub nsw i64 %i.dn, %indvars.iv506.ph
  %xtraiter1052 = and i64 %i.xm, 1
  %lcmp.mod1053.not = icmp eq i64 %xtraiter1052, 0
  br i1 %lcmp.mod1053.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.xn = trunc i64 %indvars.iv506.ph to i32
  %i.xo = sub i32 %i.xn, %i.ex
  %i.xp = sitofp i32 %i.xo to float               ; 3 uses
  %i.xq = fmul float %i.ab, %i.xp                 ; 2 uses
  %i.xr = call float @llvm.fmuladd.f32(float %i.xp, float %i.ac, float %i.wo) ; 2 uses
  %i.xs = call float @llvm.fmuladd.f32(float %i.xp, float %i.ae, float %i.wp)
  %i.xt = call float @llvm.fmuladd.f32(float %i.rk, float %i.ag, float %i.xs) ; 2 uses
  %i.xu = fmul float %i.xr, %i.xr
  %i.xv = call float @llvm.fmuladd.f32(float %i.xq, float %i.xq, float %i.xu)
  %i.xw = call float @llvm.fmuladd.f32(float %i.xt, float %i.xt, float %i.xv) ; 2 uses
  %i.xx = fmul float %i.ro, %i.xw
  %i.xy = fmul float %i.xx, %i.ri
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %indvars.iv506.ph
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !19
  %i.yb = fmul float %i.xy, %i.ya
  %i.yc = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv506.ph
  store float %i.yb, ptr %i.yc, align 4, !tbaa !19
  %i.yd = fmul float %i.xw, %i.de
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv506.ph
  store float %i.yd, ptr %i.ye, align 4, !tbaa !19
  %indvars.iv.next507.prol = add nsw i64 %indvars.iv506.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv506.unr = phi i64 [ %indvars.iv506.ph, %scalar.ph.preheader ], [ %indvars.iv.next507.prol, %scalar.ph.prol ]
  %i.yf = icmp eq i64 %indvars.iv506.ph, %i.ey
  br i1 %i.yf, label %._crit_edge, label %scalar.ph

vec.epilog.scalar.ph672:                          ; preds = %vec.epilog.scalar.ph672.prol.loopexit, %vec.epilog.scalar.ph672
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph672 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph672.prol.loopexit ] ; 6 uses
  %i.yg = trunc nsw i64 %indvars.iv to i32
  %i.yh = sitofp i32 %i.yg to float               ; 3 uses
  %i.yi = fmul float %i.ab, %i.yh                 ; 2 uses
  %i.yj = call float @llvm.fmuladd.f32(float %i.yh, float %i.ac, float %i.rz) ; 2 uses
  %i.yk = call float @llvm.fmuladd.f32(float %i.yh, float %i.ae, float %i.sa)
  %i.yl = call float @llvm.fmuladd.f32(float %i.rk, float %i.ag, float %i.yk) ; 2 uses
  %i.ym = fmul float %i.yj, %i.yj
  %i.yn = call float @llvm.fmuladd.f32(float %i.yi, float %i.yi, float %i.ym)
  %i.yo = call float @llvm.fmuladd.f32(float %i.yl, float %i.yl, float %i.yn) ; 2 uses
  %i.yp = fmul float %i.ro, %i.yo
  %i.yq = fmul float %i.yp, %i.ri
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %indvars.iv
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !19
  %i.yt = fmul float %i.yq, %i.ys
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv
  store float %i.yt, ptr %i.yu, align 4, !tbaa !19
  %i.yv = fmul float %i.yo, %i.de
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv
  store float %i.yv, ptr %i.yw, align 4, !tbaa !19
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.yx = trunc nsw i64 %indvars.iv.next to i32
  %i.yy = sitofp i32 %i.yx to float               ; 3 uses
  %i.yz = fmul float %i.ab, %i.yy                 ; 2 uses
  %i.za = call float @llvm.fmuladd.f32(float %i.yy, float %i.ac, float %i.rz) ; 2 uses
  %i.zb = call float @llvm.fmuladd.f32(float %i.yy, float %i.ae, float %i.sa)
  %i.zc = call float @llvm.fmuladd.f32(float %i.rk, float %i.ag, float %i.zb) ; 2 uses
  %i.zd = fmul float %i.za, %i.za
  %i.ze = call float @llvm.fmuladd.f32(float %i.yz, float %i.yz, float %i.zd)
  %i.zf = call float @llvm.fmuladd.f32(float %i.zc, float %i.zc, float %i.ze) ; 2 uses
  %i.zg = fmul float %i.ro, %i.zf
  %i.zh = fmul float %i.zg, %i.ri
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %indvars.iv.next
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !19
  %i.zk = fmul float %i.zh, %i.zj
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv.next
  store float %i.zk, ptr %i.zl, align 4, !tbaa !19
  %i.zm = fmul float %i.zf, %i.de
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv.next
  store float %i.zm, ptr %i.zn, align 4, !tbaa !19
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.sh, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %.preheader440, label %vec.epilog.scalar.ph672, !llvm.loop !228

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv506 = phi i64 [ %indvars.iv.next507.1, %scalar.ph ], [ %indvars.iv506.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.zo = trunc i64 %indvars.iv506 to i32
  %i.zp = sub i32 %i.zo, %i.ez
  %i.zq = sitofp i32 %i.zp to float               ; 3 uses
  %i.zr = fmul float %i.ab, %i.zq                 ; 2 uses
  %i.zs = call float @llvm.fmuladd.f32(float %i.zq, float %i.ac, float %i.wo) ; 2 uses
  %i.zt = call float @llvm.fmuladd.f32(float %i.zq, float %i.ae, float %i.wp)
  %i.zu = call float @llvm.fmuladd.f32(float %i.rk, float %i.ag, float %i.zt) ; 2 uses
  %i.zv = fmul float %i.zs, %i.zs
  %i.zw = call float @llvm.fmuladd.f32(float %i.zr, float %i.zr, float %i.zv)
  %i.zx = call float @llvm.fmuladd.f32(float %i.zu, float %i.zu, float %i.zw) ; 2 uses
  %i.zy = fmul float %i.ro, %i.zx
  %i.zz = fmul float %i.zy, %i.ri
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %indvars.iv506
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !19
  %i.aac = fmul float %i.zz, %i.aab
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv506
  store float %i.aac, ptr %i.aad, align 4, !tbaa !19
  %i.aae = fmul float %i.zx, %i.de
  %i.aaf = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv506
  store float %i.aae, ptr %i.aaf, align 4, !tbaa !19
  %indvars.iv.next507 = add nsw i64 %indvars.iv506, 1 ; 4 uses
  %i.aag = trunc i64 %indvars.iv.next507 to i32
  %i.aah = sub i32 %i.aag, %i.fa
  %i.aai = sitofp i32 %i.aah to float             ; 3 uses
  %i.aaj = fmul float %i.ab, %i.aai               ; 2 uses
  %i.aak = call float @llvm.fmuladd.f32(float %i.aai, float %i.ac, float %i.wo) ; 2 uses
  %i.aal = call float @llvm.fmuladd.f32(float %i.aai, float %i.ae, float %i.wp)
  %i.aam = call float @llvm.fmuladd.f32(float %i.rk, float %i.ag, float %i.aal) ; 2 uses
  %i.aan = fmul float %i.aak, %i.aak
  %i.aao = call float @llvm.fmuladd.f32(float %i.aaj, float %i.aaj, float %i.aan)
  %i.aap = call float @llvm.fmuladd.f32(float %i.aam, float %i.aam, float %i.aao) ; 2 uses
  %i.aaq = fmul float %i.ro, %i.aap
  %i.aar = fmul float %i.aaq, %i.ri
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %indvars.iv.next507
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !19
  %i.aau = fmul float %i.aar, %i.aat
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv.next507
  store float %i.aau, ptr %i.aav, align 4, !tbaa !19
  %i.aaw = fmul float %i.aap, %i.de
  %i.aax = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv.next507
  store float %i.aaw, ptr %i.aax, align 4, !tbaa !19
  %indvars.iv.next507.1 = add nsw i64 %indvars.iv506, 2 ; 2 uses
  %exitcond509.not.1 = icmp eq i64 %indvars.iv.next507.1, %i.dn
  br i1 %exitcond509.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !229

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block615, %.preheader440
  br i1 %.not10.i406, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413, label %.lr.ph.i407

.lr.ph.i407:                                      ; preds = %._crit_edge
  %i.aay = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> splat (float f0x3FB8AA3B), <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aaz = fneg <16 x float> %i.aay
  %i.aba = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aaz, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 2.000000e+00))
  %i.abb = fmul <16 x float> %i.aay, %i.aba
  %i.abc = fmul <16 x float> %i.abb, splat (float f0xCF000000)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i407
  %.011.i408 = phi i64 [ 0, %.lr.ph.i407 ], [ %i.acd, %bb.c ] ; 2 uses
  %.idx.i.i409 = shl nuw nsw i64 %.011.i408, 6    ; 3 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i.i409
  %.val.i.i410 = load <16 x float>, ptr %i.abd, align 64, !tbaa !140 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i.i409
  %.val.i17.i411 = load <16 x float>, ptr %i.abe, align 64, !tbaa !140
  %i.abf = call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %.val.i17.i411, <16 x float> %i.abc, i32 4) ; 2 uses
  %i.abg = fmul <16 x float> %i.abf, splat (float f0x3FB8AA3B) ; 2 uses
  %i.abh = call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.abg, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.abi = add <16 x i32> %i.abh, splat (i32 127)
  %i.abj = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.abi, <16 x i32> zeroinitializer)
  %i.abk = shl <16 x i32> %i.abj, splat (i32 23)
  %i.abl = bitcast <16 x i32> %i.abk to <16 x float> ; 2 uses
  %i.abm = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.abg, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.abn = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abm, <16 x float> splat (float f0xBF317200), <16 x float> %i.abf)
  %i.abo = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abm, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.abn) ; 7 uses
  %i.abp = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abo, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.abq = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abp, <16 x float> %i.abo, <16 x float> splat (float f0x3D2AAF4C))
  %i.abr = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abq, <16 x float> %i.abo, <16 x float> splat (float f0x3E2AAA5E))
  %i.abs = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abr, <16 x float> %i.abo, <16 x float> splat (float f0x3EFFFFFB))
  %i.abt = fmul <16 x float> %i.abo, %i.abo
  %i.abu = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abt, <16 x float> %i.abs, <16 x float> %i.abo)
  %i.abv = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abu, <16 x float> %i.abl, <16 x float> %i.abl)
  %i.abw = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %.val.i.i410, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.abx = fneg <16 x float> %i.abw
  %i.aby = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abx, <16 x float> %.val.i.i410, <16 x float> splat (float 2.000000e+00))
  %i.abz = fmul <16 x float> %i.abw, %i.aby
  %i.aca = fmul <16 x float> %i.di, %i.abz
  %i.acb = fmul <16 x float> %i.aca, %i.abv
  %i.acc = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i409
  store <16 x float> %i.acb, ptr %i.acc, align 64, !tbaa !140
  %i.acd = add nuw nsw i64 %.011.i408, 1          ; 2 uses
  %.not.i412 = icmp eq i64 %i.acd, %i.dk
  br i1 %.not.i412, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413, label %bb.c, !llvm.loop !212

_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413: ; preds = %bb.c, %._crit_edge
  %i.ace = icmp sgt i32 %i.dc, %i.rx
  br i1 %i.ace, label %iter.check, label %.loopexit439

iter.check:                                       ; preds = %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413
  %i.acf = and i1 %i.ru, %i.rv
  %i.acg = and i1 %i.acf, %i.db
  %umin511 = zext i1 %i.acg to i64                ; 4 uses
  %i.ach = add nsw i64 %i.dl, %umin511            ; 8 uses
  %i.aci = add nsw i64 %i.do, %umin511
  %smax = call i64 @llvm.smax.i64(i64 %i.aci, i64 %i.dn)
  %i.acj = add nsw i64 %i.dl, %umin511
  %i.ack = sub i64 %smax, %i.acj                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ack, 4
  br i1 %min.iters.check, label %.lr.ph447.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.reass1061 = add nsw i64 %umin511, %invariant.op
  %i.acl = call i64 @llvm.smax.i64(i64 %.reass1061, i64 %i.dn) ; 2 uses
  %i.acm = add i64 %i.acl, %i.rp
  %i.acn = add i64 %i.acm, %i.rs
  %i.aco = shl nsw i64 %i.acn, 3
  %i.acp = shl nsw i64 %i.ach, 3
  %i.acq = add i64 %.0393.idx, %i.aco
  %i.acr = sub i64 %i.acq, %i.acp
  %i.acs = getelementptr i8, ptr %2, i64 %i.acr
  %i.act = shl nsw i64 %i.ach, 2
  %i.acu = getelementptr i8, ptr %i.bp, i64 %i.act
  %i.acv = shl nsw i64 %i.acl, 2
  %i.acw = getelementptr i8, ptr %i.bp, i64 %i.acv
  %bound0 = icmp ult ptr %.0393, %i.acw
  %bound1 = icmp ult ptr %i.acu, %i.acs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph447.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check559 = icmp ult i64 %i.ack, 16
  br i1 %min.iters.check559, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.acx = and i64 %i.ack, 12
  %n.vec = and i64 %i.ack, -16                    ; 5 uses
  %i.acy = add i64 %i.ach, %n.vec
  %i.acz = shl i64 %n.vec, 3
  %i.ada = getelementptr i8, ptr %.0393, i64 %i.acz
  %i.adb = getelementptr [4 x i8], ptr %i.bp, i64 %i.ach
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.adc = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.0393, i64 %i.adc ; 2 uses
  %i.add = getelementptr i8, ptr %.0393, i64 %i.adc
  %next.gep560 = getelementptr i8, ptr %i.add, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %next.gep, align 4, !tbaa !19, !alias.scope !244, !noalias !245 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec561 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec562 = load <16 x float>, ptr %next.gep560, align 4, !tbaa !19, !alias.scope !244, !noalias !245 ; 2 uses
  %strided.vec563 = shufflevector <16 x float> %wide.vec562, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec564 = shufflevector <16 x float> %wide.vec562, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ade = getelementptr [4 x i8], ptr %i.adb, i64 %index ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 32
  %wide.load = load <8 x float>, ptr %i.ade, align 4, !tbaa !19, !alias.scope !245 ; 2 uses
  %wide.load565 = load <8 x float>, ptr %i.adf, align 4, !tbaa !19, !alias.scope !245 ; 2 uses
  %i.adg = fmul <8 x float> %strided.vec, %wide.load
  %i.adh = fmul <8 x float> %strided.vec563, %wide.load565
  %i.adi = fmul <8 x float> %strided.vec561, %wide.load
  %i.adj = fmul <8 x float> %strided.vec564, %wide.load565
  %interleaved.vec = shufflevector <8 x float> %i.adg, <8 x float> %i.adi, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !19, !alias.scope !244, !noalias !245
  %interleaved.vec566 = shufflevector <8 x float> %i.adh, <8 x float> %i.adj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec566, ptr %next.gep560, align 4, !tbaa !19, !alias.scope !244, !noalias !245
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.adk = icmp eq i64 %index.next, %n.vec
  br i1 %i.adk, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ack, %n.vec
  br i1 %cmp.n, label %.loopexit439, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.acx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph447.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec567 = and i64 %i.ack, -4                  ; 4 uses
  %i.adl = add i64 %i.ach, %n.vec567
  %i.adm = shl i64 %n.vec567, 3
  %i.adn = getelementptr i8, ptr %.0393, i64 %i.adm
  %i.ado = getelementptr [4 x i8], ptr %i.bp, i64 %i.ach
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index568 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next575, %vec.epilog.vector.body ] ; 3 uses
  %i.adp = shl i64 %index568, 3
  %next.gep569 = getelementptr i8, ptr %.0393, i64 %i.adp ; 2 uses
  %wide.vec570 = load <8 x float>, ptr %next.gep569, align 4, !tbaa !19, !alias.scope !244, !noalias !245 ; 2 uses
  %strided.vec571 = shufflevector <8 x float> %wide.vec570, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec572 = shufflevector <8 x float> %wide.vec570, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.adq = getelementptr [4 x i8], ptr %i.ado, i64 %index568
  %wide.load573 = load <4 x float>, ptr %i.adq, align 4, !tbaa !19, !alias.scope !245 ; 2 uses
  %i.adr = fmul <4 x float> %strided.vec571, %wide.load573
  %i.ads = fmul <4 x float> %strided.vec572, %wide.load573
  %interleaved.vec574 = shufflevector <4 x float> %i.adr, <4 x float> %i.ads, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec574, ptr %next.gep569, align 4, !tbaa !19, !alias.scope !244, !noalias !245
  %index.next575 = add nuw i64 %index568, 4       ; 2 uses
  %i.adt = icmp eq i64 %index.next575, %n.vec567
  br i1 %i.adt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !234

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n576 = icmp eq i64 %i.ack, %n.vec567
  br i1 %cmp.n576, label %.loopexit439, label %.lr.ph447.preheader

.lr.ph447.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv512.ph = phi i64 [ %i.ach, %iter.check ], [ %i.ach, %vector.memcheck ], [ %i.acy, %vec.epilog.iter.check ], [ %i.adl, %vec.epilog.middle.block ]
  %.2395445.ph = phi ptr [ %.0393, %iter.check ], [ %.0393, %vector.memcheck ], [ %i.ada, %vec.epilog.iter.check ], [ %i.adn, %vec.epilog.middle.block ]
  br label %.lr.ph447

.lr.ph447:                                        ; preds = %.lr.ph447.preheader, %.lr.ph447
  %indvars.iv512 = phi i64 [ %indvars.iv.next513, %.lr.ph447 ], [ %indvars.iv512.ph, %.lr.ph447.preheader ] ; 2 uses
  %.2395445 = phi ptr [ %i.aec, %.lr.ph447 ], [ %.2395445.ph, %.lr.ph447.preheader ] ; 4 uses
  %i.adu = load float, ptr %.2395445, align 4, !tbaa !142
  %i.adv = getelementptr inbounds nuw i8, ptr %.2395445, i64 4 ; 2 uses
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !143
  %i.adx = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv512 ; 2 uses
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !19
  %i.adz = fmul float %i.adu, %i.ady
  store float %i.adz, ptr %.2395445, align 4, !tbaa !142
  %i.aea = load float, ptr %i.adx, align 4, !tbaa !19
  %i.aeb = fmul float %i.adw, %i.aea
  store float %i.aeb, ptr %i.adv, align 4, !tbaa !143
  %indvars.iv.next513 = add nsw i64 %indvars.iv512, 1 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.2395445, i64 8
  %i.aed = icmp slt i64 %indvars.iv.next513, %i.dn
  br i1 %i.aed, label %.lr.ph447, label %.loopexit439, !llvm.loop !235

.loopexit439:                                     ; preds = %.lr.ph447, %middle.block, %vec.epilog.middle.block, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413
  %i.aee = add nsw i32 %.0389473, 1               ; 2 uses
  %exitcond514.not = icmp eq i32 %i.aee, %i.ch
  br i1 %exitcond514.not, label %._crit_edge483, label %.lr.ph482.split, !llvm.loop !220

._crit_edge483.loopexit:                          ; preds = %.loopexit.us
  %i.aef = fmul float %.1382.lcssa.us, 2.500000e-01
  %i.aeg = insertelement <4 x float> poison, float %.1379.lcssa.us, i64 0
  %i.aeh = insertelement <4 x float> %i.aeg, float %.1376.lcssa.us, i64 1
  %i.aei = insertelement <4 x float> %i.aeh, float %.1373.lcssa.us, i64 2
  %i.aej = insertelement <4 x float> %i.aei, float %.1370.lcssa.us, i64 3
  %i.aek = fmul <4 x float> %i.aej, splat (float 2.500000e-01)
  %i.ael = fmul float %.1.lcssa.us, 2.500000e-01
  %i.aem = fmul float %.1385.lcssa.us, 5.000000e-01
  %i.aen = insertelement <8 x float> poison, float %i.aef, i64 0
  %i.aeo = shufflevector <4 x float> %i.aek, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.aep = shufflevector <8 x float> %i.aen, <8 x float> %i.aeo, <8 x i32> <i32 0, i32 8, i32 9, i32 8, i32 11, i32 12, i32 9, i32 12>
  br label %._crit_edge483

._crit_edge483:                                   ; preds = %.loopexit439, %._crit_edge483.loopexit, %bb.a
  %.0384.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.aem, %._crit_edge483.loopexit ], [ 0.000000e+00, %.loopexit439 ]
  %.0368.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ael, %._crit_edge483.loopexit ], [ 0.000000e+00, %.loopexit439 ]
  %i.aeq = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.aep, %._crit_edge483.loopexit ], [ zeroinitializer, %.loopexit439 ]
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge483
  %i.aer = getelementptr inbounds nuw i8, ptr %i.au, i64 252
  %i.aes = getelementptr inbounds nuw i8, ptr %i.au, i64 284
  store float %.0368.lcssa, ptr %i.aes, align 4, !tbaa !19
  store <8 x float> %i.aeq, ptr %i.aer, align 4, !tbaa !19
  %i.aet = getelementptr inbounds nuw i8, ptr %i.au, i64 248
  store float %.0384.lcssa, ptr %i.aet, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge483
  %i.aeu = load i32, ptr %i.b, align 4, !tbaa !28
  %i.aev = mul nsw i32 %i.aeu, %i.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.aev
}

declare noundef i32 @_Z33gmx_parallel_3dfft_complex_limitsP18gmx_parallel_3dfftPiS1_S1_S1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float>, <16 x float>, i16) #19

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN8PmeSolve10solveLJYZXERK9gmx_pme_tN3gmx8ArrayRefI14PmeAndFftGridsEEbfbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(992) %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3, i1 noundef zeroext %4, float noundef %5, i1 noundef zeroext %6, i32 noundef %7) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 3 uses
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  %i.c = alloca [3 x i32], align 4                ; 6 uses
  %i.d = alloca [3 x i32], align 4                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = load float, ptr %i.e, align 8, !tbaa !361 ; 3 uses
  %i.g = fmul float %i.f, %i.f
  %i.h = fpext float %i.g to double
  %i.i = fdiv double f0x4023BD3CC9BE45DE, %i.h
  %i.j = fptrunc double %i.i to float             ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
end_hunk_1
