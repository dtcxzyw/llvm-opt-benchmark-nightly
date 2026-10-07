Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_solve?download=true
inline.NumInlined: 760
inline.NumDeleted: 302
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK8PmeSolve25getCoulombEnergyAndVirialEP9PmeOutput:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 248
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !48
  %i.bc = fadd float %i.bb, %i.ax                 ; 2 uses
  store float %i.bc, ptr %i.e, align 4, !tbaa !211
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 252
  %i.be = load float, ptr %i.bd, align 4, !tbaa !19
  %i.bf = fadd float %i.aw, %i.be                 ; 2 uses
  store float %i.bf, ptr %i.g, align 4, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 256
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !19
  %i.bi = fadd float %i.av, %i.bh                 ; 2 uses
  store float %i.bi, ptr %i.k, align 4, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 260
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !19
  %i.bl = fadd float %i.au, %i.bk                 ; 2 uses
  store float %i.bl, ptr %i.n, align 4, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 264
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !19
  %i.bo = fadd float %i.at, %i.bn                 ; 2 uses
  store float %i.bo, ptr %i.p, align 4, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 268
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !19
  %i.br = fadd float %i.as, %i.bq                 ; 2 uses
  store float %i.br, ptr %i.t, align 4, !tbaa !19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 272
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !19
  %i.bu = fadd float %i.ar, %i.bt                 ; 2 uses
  store float %i.bu, ptr %i.w, align 4, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 276
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !19
  %i.bx = fadd float %i.aq, %i.bw                 ; 2 uses
  store float %i.bx, ptr %i.y, align 4, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %i.az, i64 280
  %i.bz = load float, ptr %i.by, align 8, !tbaa !19
  %i.ca = fadd float %i.ap, %i.bz                 ; 2 uses
  store float %i.ca, ptr %i.ac, align 4, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 284
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !19
  %i.cd = fadd float %i.ao, %i.cc                 ; 2 uses
  store float %i.cd, ptr %i.af, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !210
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK8PmeSolve20getLJEnergyAndVirialEP9PmeOutput(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef writeonly captures(none) initializes((68, 108)) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.d = load float, ptr %i.c, align 8, !tbaa !54 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  store float %i.d, ptr %i.e, align 4, !tbaa !213
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 292
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load float, ptr %i.f, align 4, !tbaa !19 ; 2 uses
  store float %i.h, ptr %i.g, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.j = load float, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  store float %i.j, ptr %i.k, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 300
  %i.m = load float, ptr %i.l, align 4, !tbaa !19 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store float %i.m, ptr %i.n, align 4, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.q = load float, ptr %i.o, align 8, !tbaa !19 ; 2 uses
  store float %i.q, ptr %i.p, align 4, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 308
  %i.s = load float, ptr %i.r, align 4, !tbaa !19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store float %i.s, ptr %i.t, align 4, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.v = load float, ptr %i.u, align 8, !tbaa !19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  store float %i.v, ptr %i.w, align 4, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = load float, ptr %i.x, align 4, !tbaa !19 ; 2 uses
  store float %i.z, ptr %i.y, align 4, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  store float %i.ab, ptr %i.ac, align 4, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 324
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !19 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store float %i.ae, ptr %i.af, align 4, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.a to i64
  %i.ak = sub i64 %i.ai, %i.aj
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
  store float %i.bc, ptr %i.e, align 4, !tbaa !213
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !212
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN8PmeSolve15solveCoulombYZXERK9gmx_pme_tP9t_complexfbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(992) %1, ptr nofree noundef captures(none) %2, float noundef %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 3 uses
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  %i.c = alloca [3 x i32], align 4                ; 6 uses
  %i.d = alloca [3 x i32], align 4                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.f = load float, ptr %i.e, align 4, !tbaa !241 ; 2 uses
  %i.g = fmul float %i.f, %i.f
  %i.h = fpext float %i.g to double
  %i.i = fdiv double f0x4023BD3CC9BE45DE, %i.h
  %i.j = fptrunc double %i.i to float             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.l = load float, ptr %i.k, align 4, !tbaa !242
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load i32, ptr %i.n, align 8, !tbaa !137
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243
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
  %i.dn = sext i32 %i.dd to i64                   ; 15 uses
  %i.do = add nsw i64 %i.dl, 1                    ; 2 uses
  %i.dp = add nsw i64 %i.dl, 1                    ; 2 uses
  br i1 %4, label %.lr.ph482.split.us.preheader, label %.lr.ph482.split.preheader

.lr.ph482.split.us.preheader:                     ; preds = %.lr.ph482
  %i.dq = extractelement <2 x i32> %i.ai, i64 1
  %i.dr = extractelement <2 x i32> %i.z, i64 1
  %i.ds = xor i32 %i.da, -1
  %invariant.op.a = add i32 %i.aj, %i.ds
  %i.dt = insertelement <16 x i64> poison, i64 %i.aw, i64 0
  %i.du = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dv = ptrtoaddr <16 x ptr> %i.du to <16 x i64> ; 2 uses
  %i.dw = shufflevector <16 x i64> %i.dt, <16 x i64> %i.dv, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 16, i32 16, i32 17, i32 17, i32 17, i32 17, i32 18>
  %i.dx = insertelement <16 x i64> %i.dv, i64 %i.bn, i64 4
  %i.dy = sub i64 %i.bd, %i.bn
  %diff.check883 = icmp ugt i64 %i.dy, -32
  %i.dz = sub i64 %i.bk, %i.bn
  %diff.check887 = icmp ugt i64 %i.dz, -32
  %broadcast.splatinsert901 = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat902 = shufflevector <8 x float> %broadcast.splatinsert901, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert903 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat904 = shufflevector <8 x float> %broadcast.splatinsert903, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert905 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat906 = shufflevector <8 x float> %broadcast.splatinsert905, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert909 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat910 = shufflevector <8 x float> %broadcast.splatinsert909, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert915 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat916 = shufflevector <8 x float> %broadcast.splatinsert915, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ea = sub nsw i64 %i.dn, %i.dm                ; 3 uses
  %min.iters.check814 = icmp ult i64 %i.ea, 16
  %i.eb = insertelement <16 x i64> poison, i64 %i.aw, i64 0
  %i.ec = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ed = ptrtoaddr <16 x ptr> %i.ec to <16 x i64> ; 2 uses
  %i.ee = shufflevector <16 x i64> %i.eb, <16 x i64> %i.ed, <16 x i32> <i32 0, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ef = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eg = ptrtoaddr <16 x ptr> %i.ef to <16 x i64>
  %i.eh = shufflevector <16 x i64> %i.ee, <16 x i64> %i.eg, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 18>
  %i.ei = insertelement <16 x i64> %i.ed, i64 %i.bn, i64 4
  %i.ej = sub i64 %i.bd, %i.bn
  %diff.check803 = icmp ugt i64 %i.ej, -32
  %i.ek = sub i64 %i.bk, %i.bn
  %diff.check807 = icmp ugt i64 %i.ek, -32
  %n.vec816 = and i64 %i.ea, -8                   ; 3 uses
  %i.el = add nsw i64 %n.vec816, %i.dm
  %broadcast.splat822 = shufflevector <2 x i32> %i.z, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert823 = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat824 = shufflevector <8 x float> %broadcast.splatinsert823, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert825 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat826 = shufflevector <8 x float> %broadcast.splatinsert825, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert827 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat828 = shufflevector <8 x float> %broadcast.splatinsert827, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert831 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat832 = shufflevector <8 x float> %broadcast.splatinsert831, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert837 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat838 = shufflevector <8 x float> %broadcast.splatinsert837, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat840 = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <8 x i32> zeroinitializer
  %induction841 = add nsw <8 x i32> %broadcast.splat840, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cmp.n849 = icmp eq i64 %i.ea, %n.vec816
  %i.em = extractelement <2 x i32> %i.z, i64 0
  %i.en = sub i64 %i.bd, %i.bs
  %diff.check739 = icmp ugt i64 %i.en, -128
  %invariant.op955 = add nsw i64 %i.dl, 1
  br label %.lr.ph482.split.us

.lr.ph482.split.preheader:                        ; preds = %.lr.ph482
  %i.eo = sub i64 %i.bn, %i.bk                    ; 2 uses
  %i.ep = xor i32 %i.da, -1
  %i.eq = add i32 %i.aj, %i.ep
  %i.er = extractelement <2 x i32> %i.ai, i64 1
  %i.es = extractelement <2 x i32> %i.z, i64 1
  %i.et = add i64 %i.eo, -1
  %diff.check617 = icmp ult i64 %i.et, 127
  %broadcast.splatinsert632 = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat633 = shufflevector <8 x float> %broadcast.splatinsert632, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert634 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat635 = shufflevector <8 x float> %broadcast.splatinsert634, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert636 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat637 = shufflevector <8 x float> %broadcast.splatinsert636, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert640 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat641 = shufflevector <8 x float> %broadcast.splatinsert640, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert646 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat647 = shufflevector <8 x float> %broadcast.splatinsert646, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert674 = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat675 = shufflevector <8 x float> %broadcast.splatinsert674, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert676 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat677 = shufflevector <8 x float> %broadcast.splatinsert676, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert678 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat679 = shufflevector <8 x float> %broadcast.splatinsert678, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert682 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat683 = shufflevector <8 x float> %broadcast.splatinsert682, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert688 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat689 = shufflevector <8 x float> %broadcast.splatinsert688, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eu = sub nsw i64 %i.dn, %i.dm                ; 3 uses
  %min.iters.check585 = icmp ult i64 %i.eu, 8
  %i.ev = add i64 %i.eo, -1
  %diff.check = icmp ult i64 %i.ev, 31
  %n.vec587 = and i64 %i.eu, -8                   ; 3 uses
  %i.ew = add nsw i64 %n.vec587, %i.dm
  %broadcast.splat591 = shufflevector <2 x i32> %i.z, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert592 = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat593 = shufflevector <8 x float> %broadcast.splatinsert592, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert594 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat595 = shufflevector <8 x float> %broadcast.splatinsert594, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert596 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat597 = shufflevector <8 x float> %broadcast.splatinsert596, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert600 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat601 = shufflevector <8 x float> %broadcast.splatinsert600, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert606 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat607 = shufflevector <8 x float> %broadcast.splatinsert606, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat609 = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat609, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cmp.n615 = icmp eq i64 %i.eu, %n.vec587
  %i.ex = extractelement <2 x i32> %i.z, i64 0
  %i.ey = add nsw i64 %i.dn, -1
  %i.ez = extractelement <2 x i32> %i.z, i64 0
  %i.fa = extractelement <2 x i32> %i.z, i64 0
  br label %.lr.ph482.split

.lr.ph482.split.us:                               ; preds = %.lr.ph482.split.us.preheader, %.loopexit.us
  %.0368480.us = phi float [ %.1.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0369479.us = phi float [ %.1370.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0372478.us = phi float [ %.1373.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0375477.us = phi float [ %.1376.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0378476.us = phi float [ %.1379.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0381475.us = phi float [ %.1382.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0384474.us = phi float [ %.1385.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0389473.us = phi i32 [ %i.mn, %.loopexit.us ], [ %i.cg, %.lr.ph482.split.us.preheader ] ; 3 uses
  %i.fb = sdiv i32 %.0389473.us, %i.bw            ; 3 uses
  %i.fc = mul nsw i32 %i.fb, %i.bw                ; 0 uses
  %.recomposed = srem i32 %.0389473.us, %i.bw     ; 2 uses
  %i.fd = add nsw i32 %i.cn, %i.fb                ; 4 uses
  %i.fe = icmp slt i32 %i.fd, %i.dq
  %i.ff = select i1 %i.fe, i32 0, i32 %i.dr
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

scalar.ph893:                                     ; preds = %scalar.ph893.preheader, %scalar.ph893
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %scalar.ph893 ], [ %indvars.iv517.ph, %scalar.ph893.preheader ] ; 9 uses
  %i.gf = trunc nsw i64 %indvars.iv517 to i32
  %i.gg = sitofp i32 %i.gf to float               ; 3 uses
  %i.gh = fmul float %i.ab, %i.gg                 ; 3 uses
  %i.gi = call float @llvm.fmuladd.f32(float %i.gg, float %i.ac, float %i.nr) ; 3 uses
  %i.gj = call float @llvm.fmuladd.f32(float %i.gg, float %i.ae, float %i.ns)
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
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %indvars.iv517
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !19
  %i.gw = fmul float %i.gt, %i.gv
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv517
  store float %i.gw, ptr %i.gx, align 4, !tbaa !19
  %i.gy = fmul float %i.gn, %i.de
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv517
  store float %i.gy, ptr %i.gz, align 4, !tbaa !19
  %indvars.iv.next518 = add nsw i64 %indvars.iv517, 1 ; 2 uses
  %lftr.wideiv519 = trunc i64 %indvars.iv.next518 to i32
  %exitcond520.not = icmp eq i32 %i.nz, %lftr.wideiv519
  br i1 %exitcond520.not, label %.preheader437.us, label %scalar.ph893, !llvm.loop !214

scalar.ph813:                                     ; preds = %scalar.ph813.preheader, %scalar.ph813
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %scalar.ph813 ], [ %indvars.iv521.ph, %scalar.ph813.preheader ] ; 9 uses
  %i.ha = trunc i64 %indvars.iv521 to i32
  %i.hb = sub i32 %i.ha, %i.em
  %i.hc = sitofp i32 %i.hb to float               ; 3 uses
  %i.hd = fmul float %i.ab, %i.hc                 ; 3 uses
  %i.he = call float @llvm.fmuladd.f32(float %i.hc, float %i.ac, float %i.pk) ; 3 uses
  %i.hf = call float @llvm.fmuladd.f32(float %i.hc, float %i.ae, float %i.pl)
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
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv521
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !19
  %i.hs = fmul float %i.hp, %i.hr
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv521
  store float %i.hs, ptr %i.ht, align 4, !tbaa !19
  %i.hu = fmul float %i.hj, %i.de
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv521
  store float %i.hu, ptr %i.hv, align 4, !tbaa !19
  %indvars.iv.next522 = add nsw i64 %indvars.iv521, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next522, %i.dn
  br i1 %exitcond525.not, label %.preheader436.us, label %scalar.ph813, !llvm.loop !215

.lr.ph453.us:                                     ; preds = %.lr.ph453.us.preheader, %.lr.ph453.us
  %indvars.iv528 = phi i64 [ %indvars.iv.next529, %.lr.ph453.us ], [ %indvars.iv528.ph, %.lr.ph453.us.preheader ] ; 3 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv528
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !19
  %i.hy = fdiv float 1.000000e+00, %i.hx
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv528
  store float %i.hy, ptr %i.hz, align 4, !tbaa !19
  %indvars.iv.next529 = add nsw i64 %indvars.iv528, 1 ; 2 uses
  %i.ia = icmp slt i64 %indvars.iv.next529, %i.dn
  br i1 %i.ia, label %.lr.ph453.us, label %._crit_edge454.us, !llvm.loop !216

._crit_edge454.us:                                ; preds = %.lr.ph453.us, %middle.block754, %vec.epilog.middle.block768, %.preheader436.us
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
  br i1 %.not.i.us, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us, label %bb.b, !llvm.loop !217

_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us: ; preds = %bb.b, %._crit_edge454.us
  br i1 %i.mo, label %.lr.ph457.us.preheader, label %.loopexit.us

.lr.ph457.us.preheader:                           ; preds = %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us
  %i.jh = and i1 %i.ga, %i.gb
  %i.ji = and i1 %i.jh, %i.db
  %umin531 = zext i1 %i.ji to i64                 ; 4 uses
  %i.jj = add nsw i64 %i.dl, %umin531             ; 6 uses
  %.reass956 = add nsw i64 %umin531, %invariant.op955
  %i.jk = call i64 @llvm.smax.i64(i64 %.reass956, i64 %i.dn)
  %i.jl = add nsw i64 %umin531, %i.dl
  %i.jm = sub i64 %i.jk, %i.jl                    ; 3 uses
  %min.iters.check721 = icmp ult i64 %i.jm, 8
  br i1 %min.iters.check721, label %.lr.ph457.us.preheader940, label %vector.memcheck702

vector.memcheck702:                               ; preds = %.lr.ph457.us.preheader
  %i.jn = add nsw i64 %i.do, %umin531
  %smax703 = call i64 @llvm.smax.i64(i64 %i.jn, i64 %i.dn) ; 2 uses
  %i.jo = add i64 %smax703, %i.fv
  %i.jp = add i64 %i.jo, %i.fy
  %i.jq = shl nsw i64 %i.jp, 3
  %i.jr = add i64 %.0393.idx.us, %i.jq
  %i.js = shl nsw i64 %i.jj, 3
  %i.jt = sub i64 %i.jr, %i.js
  %scevgep704 = getelementptr i8, ptr %2, i64 %i.jt ; 2 uses
  %i.ju = shl nsw i64 %i.jj, 2                    ; 2 uses
  %scevgep705 = getelementptr i8, ptr %i.bm, i64 %i.ju ; 2 uses
  %i.jv = shl nsw i64 %smax703, 2                 ; 2 uses
  %scevgep706 = getelementptr i8, ptr %i.bm, i64 %i.jv ; 2 uses
  %scevgep707 = getelementptr i8, ptr %i.bp, i64 %i.ju ; 2 uses
  %scevgep708 = getelementptr i8, ptr %i.bp, i64 %i.jv ; 2 uses
  %bound0709 = icmp ult ptr %.0393.us, %scevgep706
  %bound1710 = icmp ult ptr %scevgep705, %scevgep704
  %found.conflict711 = and i1 %bound0709, %bound1710
  %bound0712 = icmp ult ptr %.0393.us, %scevgep708
  %bound1713 = icmp ult ptr %scevgep707, %scevgep704
  %found.conflict714 = and i1 %bound0712, %bound1713
  %conflict.rdx715 = or i1 %found.conflict711, %found.conflict714
  %bound0716 = icmp ult ptr %scevgep705, %scevgep708
  %bound1717 = icmp ult ptr %scevgep707, %scevgep706
  %found.conflict718 = and i1 %bound0716, %bound1717
  %conflict.rdx719 = or i1 %conflict.rdx715, %found.conflict718
  br i1 %conflict.rdx719, label %.lr.ph457.us.preheader940, label %vector.ph722

vector.ph722:                                     ; preds = %vector.memcheck702
  %n.vec723 = and i64 %i.jm, -8                   ; 4 uses
  %i.jw = add i64 %i.jj, %n.vec723
  %i.jx = shl i64 %n.vec723, 3
  %i.jy = getelementptr i8, ptr %.0393.us, i64 %i.jx
  br label %vector.body724

vector.body724:                                   ; preds = %vector.body724, %vector.ph722
  %index725 = phi i64 [ 0, %vector.ph722 ], [ %index.next733, %vector.body724 ] ; 3 uses
  %i.jz = add i64 %i.jj, %index725                ; 2 uses
  %i.ka = shl i64 %index725, 3
  %next.gep726 = getelementptr i8, ptr %.0393.us, i64 %i.ka ; 2 uses
  %wide.vec727 = load <16 x float>, ptr %next.gep726, align 4, !tbaa !19, !alias.scope !244, !noalias !245 ; 2 uses
  %strided.vec728 = shufflevector <16 x float> %wide.vec727, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec729 = shufflevector <16 x float> %wide.vec727, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.jz ; 2 uses
  %wide.load730 = load <8 x float>, ptr %i.kb, align 4, !tbaa !19, !alias.scope !246 ; 2 uses
  %i.kc = fmul <8 x float> %strided.vec728, %wide.load730
  %i.kd = fmul <8 x float> %strided.vec729, %wide.load730
  %interleaved.vec731 = shufflevector <8 x float> %i.kc, <8 x float> %i.kd, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec731, ptr %next.gep726, align 4, !tbaa !19, !alias.scope !244, !noalias !245
  %i.ke = fmul <8 x float> %strided.vec729, %strided.vec729
  %i.kf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec728, <8 x float> %strided.vec728, <8 x float> %i.ke)
  %i.kg = fmul <8 x float> %i.kf, splat (float 2.000000e+00)
  %wide.load732 = load <8 x float>, ptr %i.kb, align 4, !tbaa !19, !alias.scope !246
  %i.kh = fmul <8 x float> %i.kg, %wide.load732
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.jz
  store <8 x float> %i.kh, ptr %i.ki, align 4, !tbaa !19, !alias.scope !247, !noalias !246
  %index.next733 = add nuw i64 %index725, 8       ; 2 uses
  %i.kj = icmp eq i64 %index.next733, %n.vec723
  br i1 %i.kj, label %middle.block734, label %vector.body724, !llvm.loop !222

middle.block734:                                  ; preds = %vector.body724
  %cmp.n735 = icmp eq i64 %i.jm, %n.vec723
  br i1 %cmp.n735, label %.lr.ph466.us.preheader, label %.lr.ph457.us.preheader940

.lr.ph457.us.preheader940:                        ; preds = %vector.memcheck702, %.lr.ph457.us.preheader, %middle.block734
  %indvars.iv532.ph = phi i64 [ %i.jj, %vector.memcheck702 ], [ %i.jj, %.lr.ph457.us.preheader ], [ %i.jw, %middle.block734 ]
  %.1394455.us.ph = phi ptr [ %.0393.us, %vector.memcheck702 ], [ %.0393.us, %.lr.ph457.us.preheader ], [ %i.jy, %middle.block734 ]
  br label %.lr.ph457.us

.lr.ph457.us:                                     ; preds = %.lr.ph457.us.preheader940, %.lr.ph457.us
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph457.us ], [ %indvars.iv532.ph, %.lr.ph457.us.preheader940 ] ; 3 uses
  %.1394455.us = phi ptr [ %i.ky, %.lr.ph457.us ], [ %.1394455.us.ph, %.lr.ph457.us.preheader940 ] ; 4 uses
  %i.kk = load float, ptr %.1394455.us, align 4, !tbaa !142 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.1394455.us, i64 4 ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !143 ; 3 uses
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv532 ; 3 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !19
  %i.kp = fmul float %i.kk, %i.ko
  store float %i.kp, ptr %.1394455.us, align 4, !tbaa !142
  %i.kq = load float, ptr %i.kn, align 4, !tbaa !19
  %i.kr = fmul float %i.km, %i.kq
  store float %i.kr, ptr %i.kl, align 4, !tbaa !143
  %i.ks = fmul float %i.km, %i.km
  %i.kt = call float @llvm.fmuladd.f32(float %i.kk, float %i.kk, float %i.ks)
  %i.ku = fmul float %i.kt, 2.000000e+00
  %i.kv = load float, ptr %i.kn, align 4, !tbaa !19
  %i.kw = fmul float %i.ku, %i.kv
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv532
  store float %i.kw, ptr %i.kx, align 4, !tbaa !19
  %indvars.iv.next533 = add nsw i64 %indvars.iv532, 1 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.1394455.us, i64 8
  %i.kz = icmp slt i64 %indvars.iv.next533, %i.dn
  br i1 %i.kz, label %.lr.ph457.us, label %.lr.ph466.us.preheader, !llvm.loop !223

.lr.ph466.us:                                     ; preds = %.lr.ph466.us.preheader, %.lr.ph466.us
  %indvars.iv536 = phi i64 [ %i.mm, %.lr.ph466.us.preheader ], [ %indvars.iv.next537, %.lr.ph466.us ] ; 7 uses
  %.1465.us = phi float [ %.0368480.us, %.lr.ph466.us.preheader ], [ %i.mi, %.lr.ph466.us ]
  %.1370464.us = phi float [ %.0369479.us, %.lr.ph466.us.preheader ], [ %i.mf, %.lr.ph466.us ]
  %.1373463.us = phi float [ %.0372478.us, %.lr.ph466.us.preheader ], [ %i.me, %.lr.ph466.us ]
  %.1376462.us = phi float [ %.0375477.us, %.lr.ph466.us.preheader ], [ %i.md, %.lr.ph466.us ]
  %.1379461.us = phi float [ %.0378476.us, %.lr.ph466.us.preheader ], [ %i.mc, %.lr.ph466.us ]
  %.1382460.us = phi float [ %.0381475.us, %.lr.ph466.us.preheader ], [ %i.mb, %.lr.ph466.us ]
  %.1385459.us = phi float [ %.0384474.us, %.lr.ph466.us.preheader ], [ %i.lo, %.lr.ph466.us ]
  %i.la = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv536
  %i.lb = load float, ptr %i.la, align 4, !tbaa !19
  %i.lc = fmul float %.0.us, %i.lb                ; 3 uses
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv536
  %i.le = load float, ptr %i.ld, align 4, !tbaa !19
  %i.lf = fmul float %i.le, %i.j
  %i.lg = fpext float %i.lf to double
  %i.lh = fadd double %i.lg, 1.000000e+00
  %i.li = fmul double %i.lh, 2.000000e+00
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv536
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !19
  %i.ll = fpext float %i.lk to double
  %i.lm = fmul double %i.li, %i.ll
  %i.ln = fptrunc double %i.lm to float
  %i.lo = fadd float %.1385459.us, %i.lc          ; 2 uses
  %i.lp = fmul float %i.lc, %i.ln                 ; 3 uses
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv536
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !19 ; 2 uses
  %i.ls = fmul float %i.lr, %i.lp                 ; 3 uses
  %i.lt = fneg float %i.lc                        ; 3 uses
  %i.lu = call float @llvm.fmuladd.f32(float %i.ls, float %i.lr, float %i.lt)
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv536
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !19 ; 3 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv536
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !19 ; 4 uses
  %i.lz = fmul float %i.lw, %i.lp                 ; 2 uses
  %i.ma = call float @llvm.fmuladd.f32(float %i.lz, float %i.lw, float %i.lt)
  %i.mb = fadd float %.1382460.us, %i.lu          ; 2 uses
  %i.mc = call float @llvm.fmuladd.f32(float %i.ls, float %i.lw, float %.1379461.us) ; 2 uses
  %i.md = call float @llvm.fmuladd.f32(float %i.ls, float %i.ly, float %.1376462.us) ; 2 uses
  %i.me = fadd float %.1373463.us, %i.ma          ; 2 uses
  %i.mf = call float @llvm.fmuladd.f32(float %i.lz, float %i.ly, float %.1370464.us) ; 2 uses
  %i.mg = fmul float %i.ly, %i.lp
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %i.ly, float %i.lt)
  %i.mi = fadd float %.1465.us, %i.mh             ; 2 uses
  %indvars.iv.next537 = add nsw i64 %indvars.iv536, 1 ; 2 uses
  %i.mj = icmp slt i64 %indvars.iv.next537, %i.dn
  br i1 %i.mj, label %.lr.ph466.us, label %.loopexit.us, !llvm.loop !224

.lr.ph466.us.preheader:                           ; preds = %.lr.ph457.us, %middle.block734
  %i.mk = and i1 %i.ga, %i.gb
  %i.ml = and i1 %i.mk, %i.db
  %umin535 = zext i1 %i.ml to i64
  %i.mm = add nsw i64 %i.dl, %umin535
  br label %.lr.ph466.us

.loopexit.us:                                     ; preds = %.lr.ph466.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us
  %.1385.lcssa.us = phi float [ %.0384474.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.lo, %.lr.ph466.us ] ; 2 uses
  %.1382.lcssa.us = phi float [ %.0381475.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.mb, %.lr.ph466.us ] ; 2 uses
  %.1379.lcssa.us = phi float [ %.0378476.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.mc, %.lr.ph466.us ] ; 2 uses
  %.1376.lcssa.us = phi float [ %.0375477.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.md, %.lr.ph466.us ] ; 2 uses
  %.1373.lcssa.us = phi float [ %.0372478.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.me, %.lr.ph466.us ] ; 2 uses
  %.1370.lcssa.us = phi float [ %.0369479.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.mf, %.lr.ph466.us ] ; 2 uses
  %.1.lcssa.us = phi float [ %.0368480.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.mi, %.lr.ph466.us ] ; 2 uses
  %i.mn = add nsw i32 %.0389473.us, 1             ; 2 uses
  %exitcond538.not = icmp eq i32 %i.mn, %i.ch
  br i1 %exitcond538.not, label %._crit_edge483.loopexit, label %.lr.ph482.split.us, !llvm.loop !225

.preheader436.us:                                 ; preds = %scalar.ph813, %middle.block848, %.preheader437.us
  %i.mo = icmp sgt i32 %i.dc, %i.gd               ; 2 uses
  br i1 %i.mo, label %iter.check758, label %._crit_edge454.us

iter.check758:                                    ; preds = %.preheader436.us
  %i.mp = and i1 %i.ga, %i.gb
  %i.mq = and i1 %i.mp, %i.db
  %umin527 = zext i1 %i.mq to i64                 ; 3 uses
  %i.mr = add nsw i64 %i.dl, %umin527             ; 5 uses
  %i.ms = add nsw i64 %i.dp, %umin527
  %smax740 = call i64 @llvm.smax.i64(i64 %i.ms, i64 %i.dn)
  %i.mt = add nsw i64 %i.dl, %umin527
  %i.mu = sub i64 %smax740, %i.mt                 ; 7 uses
  %min.iters.check742 = icmp ult i64 %i.mu, 4
  %or.cond930 = select i1 %min.iters.check742, i1 true, i1 %diff.check739
  br i1 %or.cond930, label %.lr.ph453.us.preheader, label %vector.main.loop.iter.check743

vector.main.loop.iter.check743:                   ; preds = %iter.check758
  %min.iters.check744 = icmp ult i64 %i.mu, 32
  br i1 %min.iters.check744, label %vec.epilog.ph762, label %vector.ph745

vector.ph745:                                     ; preds = %vector.main.loop.iter.check743
  %i.mv = and i64 %i.mu, 28
  %n.vec746 = and i64 %i.mu, -32                  ; 4 uses
  %i.mw = add i64 %i.mr, %n.vec746
  br label %vector.body747

vector.body747:                                   ; preds = %vector.ph745, %vector.body747
  %index748 = phi i64 [ 0, %vector.ph745 ], [ %index.next753, %vector.body747 ] ; 2 uses
  %i.mx = add i64 %i.mr, %index748                ; 2 uses
  %i.my = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.mx ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 96
  %wide.load749 = load <8 x float>, ptr %i.my, align 4, !tbaa !19
  %wide.load750 = load <8 x float>, ptr %i.mz, align 4, !tbaa !19
  %wide.load751 = load <8 x float>, ptr %i.na, align 4, !tbaa !19
  %wide.load752 = load <8 x float>, ptr %i.nb, align 4, !tbaa !19
  %i.nc = fdiv <8 x float> splat (float 1.000000e+00), %wide.load749
  %i.nd = fdiv <8 x float> splat (float 1.000000e+00), %wide.load750
  %i.ne = fdiv <8 x float> splat (float 1.000000e+00), %wide.load751
  %i.nf = fdiv <8 x float> splat (float 1.000000e+00), %wide.load752
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.mx ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 96
  store <8 x float> %i.nc, ptr %i.ng, align 4, !tbaa !19
  store <8 x float> %i.nd, ptr %i.nh, align 4, !tbaa !19
  store <8 x float> %i.ne, ptr %i.ni, align 4, !tbaa !19
  store <8 x float> %i.nf, ptr %i.nj, align 4, !tbaa !19
  %index.next753 = add nuw i64 %index748, 32      ; 2 uses
  %i.nk = icmp eq i64 %index.next753, %n.vec746
  br i1 %i.nk, label %middle.block754, label %vector.body747, !llvm.loop !226

middle.block754:                                  ; preds = %vector.body747
  %cmp.n755 = icmp eq i64 %i.mu, %n.vec746
  br i1 %cmp.n755, label %._crit_edge454.us, label %vec.epilog.iter.check760

vec.epilog.iter.check760:                         ; preds = %middle.block754
  %min.epilog.iters.check761 = icmp eq i64 %i.mv, 0
  br i1 %min.epilog.iters.check761, label %.lr.ph453.us.preheader, label %vec.epilog.ph762, !prof !248

vec.epilog.ph762:                                 ; preds = %vector.main.loop.iter.check743, %vec.epilog.iter.check760
  %vec.epilog.resume.val756 = phi i64 [ %n.vec746, %vec.epilog.iter.check760 ], [ 0, %vector.main.loop.iter.check743 ]
  %n.vec763 = and i64 %i.mu, -4                   ; 3 uses
  %i.nl = add i64 %i.mr, %n.vec763
  br label %vec.epilog.vector.body764

vec.epilog.vector.body764:                        ; preds = %vec.epilog.vector.body764, %vec.epilog.ph762
  %index765 = phi i64 [ %vec.epilog.resume.val756, %vec.epilog.ph762 ], [ %index.next767, %vec.epilog.vector.body764 ] ; 2 uses
  %i.nm = add i64 %i.mr, %index765                ; 2 uses
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.nm
  %wide.load766 = load <4 x float>, ptr %i.nn, align 4, !tbaa !19
  %i.no = fdiv <4 x float> splat (float 1.000000e+00), %wide.load766
  %i.np = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.nm
  store <4 x float> %i.no, ptr %i.np, align 4, !tbaa !19
  %index.next767 = add nuw i64 %index765, 4       ; 2 uses
  %i.nq = icmp eq i64 %index.next767, %n.vec763
  br i1 %i.nq, label %vec.epilog.middle.block768, label %vec.epilog.vector.body764, !llvm.loop !227

vec.epilog.middle.block768:                       ; preds = %vec.epilog.vector.body764
  %cmp.n769 = icmp eq i64 %i.mu, %n.vec763
  br i1 %cmp.n769, label %._crit_edge454.us, label %.lr.ph453.us.preheader

.lr.ph453.us.preheader:                           ; preds = %iter.check758, %vec.epilog.iter.check760, %vec.epilog.middle.block768
  %indvars.iv528.ph = phi i64 [ %i.mr, %iter.check758 ], [ %i.mw, %vec.epilog.iter.check760 ], [ %i.nl, %vec.epilog.middle.block768 ]
  br label %.lr.ph453.us

.preheader437.us:                                 ; preds = %scalar.ph893, %middle.block926, %.lr.ph482.split.us
  br i1 %i.df, label %.lr.ph451.us, label %.preheader436.us

.lr.ph449.us:                                     ; preds = %.lr.ph482.split.us
  %i.nr = fmul float %i.ad, %.0387.us             ; 2 uses
  %i.ns = fmul float %i.af, %.0387.us             ; 2 uses
  %i.nt = load ptr, ptr %i.cq, align 8, !tbaa !14 ; 3 uses
  %i.nu = and i1 %i.ga, %i.gb
  %i.nv = and i1 %i.nu, %i.db                     ; 3 uses
  %umin516 = zext i1 %i.nv to i64
  %i.nw = add nsw i64 %i.dl, %umin516             ; 5 uses
  %i.nx = zext i1 %i.nv to i32
  %i.ny = add nsw i32 %i.aj, %i.nx
  %i.nz = sub nsw i32 %i.ny, %i.gd
  %.neg929 = sext i1 %i.nv to i32
  %i.oa = add i32 %invariant.op.a, %.neg929       ; 2 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = add nuw nsw i64 %i.ob, 1                ; 2 uses
  %min.iters.check894 = icmp ult i32 %i.oa, 23
  br i1 %min.iters.check894, label %scalar.ph893.preheader, label %vector.memcheck851

vector.memcheck851:                               ; preds = %.lr.ph449.us
  %i.od = ptrtoaddr ptr %i.nt to i64              ; 4 uses
  %i.oe = insertelement <16 x i64> %i.dx, i64 %i.od, i64 5
  %i.of = shufflevector <16 x i64> %i.oe, <16 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 1, i32 2, i32 3, i32 4, i32 5, i32 2, i32 3, i32 4, i32 5, i32 3>
  %i.og = sub <16 x i64> %i.dw, %i.of
  %i.oh = icmp ugt <16 x i64> %i.og, splat (i64 -32)
  %i.oi = sub i64 %i.bd, %i.od
  %diff.check885 = icmp ugt i64 %i.oi, -32
  %i.oj = sub i64 %i.od, %i.bk
  %diff.check889 = icmp ugt i64 %i.oj, -32
  %i.ok = sub i64 %i.od, %i.bn
  %diff.check891 = icmp ugt i64 %i.ok, -32
  %i.ol = bitcast <16 x i1> %i.oh to i16
  %i.om = icmp ne i16 %i.ol, 0
  %op.rdx935 = or i1 %i.om, %diff.check883
  %op.rdx936 = or i1 %diff.check885, %diff.check887
  %op.rdx937 = or i1 %diff.check889, %diff.check891
  %op.rdx938 = or i1 %op.rdx935, %op.rdx936
  %op.rdx939 = or i1 %op.rdx938, %op.rdx937
  br i1 %op.rdx939, label %scalar.ph893.preheader, label %vector.ph895

vector.ph895:                                     ; preds = %vector.memcheck851
  %n.vec896 = and i64 %i.oc, 8589934584           ; 3 uses
  %i.on = add nsw i64 %i.nw, %n.vec896
  %broadcast.splatinsert897 = insertelement <8 x float> poison, float %i.nr, i64 0
  %broadcast.splat898 = shufflevector <8 x float> %broadcast.splatinsert897, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert899 = insertelement <8 x float> poison, float %i.ns, i64 0
  %broadcast.splat900 = shufflevector <8 x float> %broadcast.splatinsert899, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert907 = insertelement <8 x float> poison, float %i.fo, i64 0
  %broadcast.splat908 = shufflevector <8 x float> %broadcast.splatinsert907, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert911 = insertelement <8 x float> poison, float %i.fs, i64 0
  %broadcast.splat912 = shufflevector <8 x float> %broadcast.splatinsert911, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert913 = insertelement <8 x float> poison, float %i.fm, i64 0
  %broadcast.splat914 = shufflevector <8 x float> %broadcast.splatinsert913, <8 x float> poison, <8 x i32> zeroinitializer
  %i.oo = trunc i64 %i.nw to i32
  %broadcast.splatinsert917 = insertelement <8 x i32> poison, i32 %i.oo, i64 0
  %broadcast.splat918 = shufflevector <8 x i32> %broadcast.splatinsert917, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction919 = add <8 x i32> %broadcast.splat918, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body920

vector.body920:                                   ; preds = %vector.body920, %vector.ph895
  %index921 = phi i64 [ 0, %vector.ph895 ], [ %index.next924, %vector.body920 ] ; 2 uses
  %vec.ind922 = phi <8 x i32> [ %induction919, %vector.ph895 ], [ %vec.ind.next925, %vector.body920 ] ; 2 uses
  %i.op = add i64 %i.nw, %index921                ; 7 uses
  %i.oq = sitofp <8 x i32> %vec.ind922 to <8 x float> ; 3 uses
  %i.or = fmul <8 x float> %broadcast.splat902, %i.oq ; 3 uses
  %i.os = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.oq, <8 x float> %broadcast.splat904, <8 x float> %broadcast.splat898) ; 3 uses
  %i.ot = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.oq, <8 x float> %broadcast.splat906, <8 x float> %broadcast.splat900)
  %i.ou = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat908, <8 x float> %broadcast.splat910, <8 x float> %i.ot) ; 3 uses
  %i.ov = fmul <8 x float> %i.os, %i.os
  %i.ow = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.or, <8 x float> %i.or, <8 x float> %i.ov)
  %i.ox = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ou, <8 x float> %i.ou, <8 x float> %i.ow) ; 3 uses
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.op
  store <8 x float> %i.or, ptr %i.oy, align 4, !tbaa !19
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.op
  store <8 x float> %i.os, ptr %i.oz, align 4, !tbaa !19
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.op
  store <8 x float> %i.ou, ptr %i.pa, align 4, !tbaa !19
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.op
  store <8 x float> %i.ox, ptr %i.pb, align 4, !tbaa !19
  %i.pc = fmul <8 x float> %broadcast.splat912, %i.ox
  %i.pd = fmul <8 x float> %i.pc, %broadcast.splat914
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.op
  %wide.load923 = load <8 x float>, ptr %i.pe, align 4, !tbaa !19
  %i.pf = fmul <8 x float> %i.pd, %wide.load923
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.op
  store <8 x float> %i.pf, ptr %i.pg, align 4, !tbaa !19
  %i.ph = fmul <8 x float> %i.ox, %broadcast.splat916
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.op
  store <8 x float> %i.ph, ptr %i.pi, align 4, !tbaa !19
  %index.next924 = add nuw i64 %index921, 8       ; 2 uses
  %vec.ind.next925 = add <8 x i32> %vec.ind922, splat (i32 8)
  %i.pj = icmp eq i64 %index.next924, %n.vec896
  br i1 %i.pj, label %middle.block926, label %vector.body920, !llvm.loop !228

middle.block926:                                  ; preds = %vector.body920
  %cmp.n927 = icmp eq i64 %i.oc, %n.vec896
  br i1 %cmp.n927, label %.preheader437.us, label %scalar.ph893.preheader

scalar.ph893.preheader:                           ; preds = %vector.memcheck851, %.lr.ph449.us, %middle.block926
  %indvars.iv517.ph = phi i64 [ %i.nw, %vector.memcheck851 ], [ %i.nw, %.lr.ph449.us ], [ %i.on, %middle.block926 ]
  br label %scalar.ph893

.lr.ph451.us:                                     ; preds = %.preheader437.us
  %i.pk = fmul float %i.ad, %.0387.us             ; 2 uses
  %i.pl = fmul float %i.af, %.0387.us             ; 2 uses
  %i.pm = load ptr, ptr %i.cq, align 8, !tbaa !14 ; 3 uses
  br i1 %min.iters.check814, label %scalar.ph813.preheader, label %vector.memcheck771

vector.memcheck771:                               ; preds = %.lr.ph451.us
  %i.pn = ptrtoaddr ptr %i.pm to i64              ; 4 uses
  %i.po = insertelement <16 x i64> %i.ei, i64 %i.pn, i64 5
  %i.pp = shufflevector <16 x i64> %i.po, <16 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 1, i32 2, i32 3, i32 4, i32 5, i32 2, i32 3, i32 4, i32 5, i32 3>
  %i.pq = sub <16 x i64> %i.eh, %i.pp
  %i.pr = icmp ugt <16 x i64> %i.pq, splat (i64 -32)
  %i.ps = sub i64 %i.bd, %i.pn
  %diff.check805 = icmp ugt i64 %i.ps, -32
  %i.pt = sub i64 %i.pn, %i.bk
  %diff.check809 = icmp ugt i64 %i.pt, -32
  %i.pu = sub i64 %i.pn, %i.bn
  %diff.check811 = icmp ugt i64 %i.pu, -32
  %i.pv = bitcast <16 x i1> %i.pr to i16
  %i.pw = icmp ne i16 %i.pv, 0
  %op.rdx = or i1 %i.pw, %diff.check803
  %op.rdx931 = or i1 %diff.check805, %diff.check807
  %op.rdx932 = or i1 %diff.check809, %diff.check811
  %op.rdx933 = or i1 %op.rdx, %op.rdx931
  %op.rdx934 = or i1 %op.rdx933, %op.rdx932
  br i1 %op.rdx934, label %scalar.ph813.preheader, label %vector.ph815

vector.ph815:                                     ; preds = %vector.memcheck771
  %broadcast.splatinsert817 = insertelement <8 x float> poison, float %i.pk, i64 0
  %broadcast.splat818 = shufflevector <8 x float> %broadcast.splatinsert817, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert819 = insertelement <8 x float> poison, float %i.pl, i64 0
  %broadcast.splat820 = shufflevector <8 x float> %broadcast.splatinsert819, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert829 = insertelement <8 x float> poison, float %i.fo, i64 0
  %broadcast.splat830 = shufflevector <8 x float> %broadcast.splatinsert829, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert833 = insertelement <8 x float> poison, float %i.fs, i64 0
  %broadcast.splat834 = shufflevector <8 x float> %broadcast.splatinsert833, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert835 = insertelement <8 x float> poison, float %i.fm, i64 0
  %broadcast.splat836 = shufflevector <8 x float> %broadcast.splatinsert835, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body842

vector.body842:                                   ; preds = %vector.body842, %vector.ph815
  %index843 = phi i64 [ 0, %vector.ph815 ], [ %index.next846, %vector.body842 ] ; 2 uses
  %vec.ind844 = phi <8 x i32> [ %induction841, %vector.ph815 ], [ %vec.ind.next847, %vector.body842 ] ; 2 uses
  %i.px = add i64 %index843, %i.dm                ; 7 uses
  %i.py = sub <8 x i32> %vec.ind844, %broadcast.splat822
  %i.pz = sitofp <8 x i32> %i.py to <8 x float>   ; 3 uses
  %i.qa = fmul <8 x float> %broadcast.splat824, %i.pz ; 3 uses
  %i.qb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pz, <8 x float> %broadcast.splat826, <8 x float> %broadcast.splat818) ; 3 uses
  %i.qc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pz, <8 x float> %broadcast.splat828, <8 x float> %broadcast.splat820)
  %i.qd = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat830, <8 x float> %broadcast.splat832, <8 x float> %i.qc) ; 3 uses
  %i.qe = fmul <8 x float> %i.qb, %i.qb
  %i.qf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.qa, <8 x float> %i.qa, <8 x float> %i.qe)
  %i.qg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.qd, <8 x float> %i.qd, <8 x float> %i.qf) ; 3 uses
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.px
  store <8 x float> %i.qa, ptr %i.qh, align 4, !tbaa !19
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.px
  store <8 x float> %i.qb, ptr %i.qi, align 4, !tbaa !19
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.px
  store <8 x float> %i.qd, ptr %i.qj, align 4, !tbaa !19
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.px
  store <8 x float> %i.qg, ptr %i.qk, align 4, !tbaa !19
  %i.ql = fmul <8 x float> %broadcast.splat834, %i.qg
  %i.qm = fmul <8 x float> %i.ql, %broadcast.splat836
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.px
  %wide.load845 = load <8 x float>, ptr %i.qn, align 4, !tbaa !19
  %i.qo = fmul <8 x float> %i.qm, %wide.load845
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.px
  store <8 x float> %i.qo, ptr %i.qp, align 4, !tbaa !19
  %i.qq = fmul <8 x float> %i.qg, %broadcast.splat838
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.px
  store <8 x float> %i.qq, ptr %i.qr, align 4, !tbaa !19
  %index.next846 = add nuw i64 %index843, 8       ; 2 uses
  %vec.ind.next847 = add <8 x i32> %vec.ind844, splat (i32 8)
  %i.qs = icmp eq i64 %index.next846, %n.vec816
  br i1 %i.qs, label %middle.block848, label %vector.body842, !llvm.loop !229

middle.block848:                                  ; preds = %vector.body842
  br i1 %cmp.n849, label %.preheader436.us, label %scalar.ph813.preheader

scalar.ph813.preheader:                           ; preds = %vector.memcheck771, %.lr.ph451.us, %middle.block848
  %indvars.iv521.ph = phi i64 [ %i.dm, %vector.memcheck771 ], [ %i.dm, %.lr.ph451.us ], [ %i.el, %middle.block848 ]
  br label %scalar.ph813

.lr.ph482.split:                                  ; preds = %.lr.ph482.split.preheader, %.loopexit439
  %.0389473 = phi i32 [ %i.acm, %.loopexit439 ], [ %i.cg, %.lr.ph482.split.preheader ] ; 3 uses
  %i.qt = sdiv i32 %.0389473, %i.bw               ; 3 uses
  %i.qu = mul nsw i32 %i.qt, %i.bw                ; 0 uses
  %.recomposed957 = srem i32 %.0389473, %i.bw     ; 2 uses
  %i.qv = add nsw i32 %i.cn, %i.qt                ; 4 uses
  %i.qw = icmp slt i32 %i.qv, %i.er
  %i.qx = select i1 %i.qw, i32 0, i32 %i.es
  %.0387.in = sub nsw i32 %i.qv, %i.qx
  %.0387 = sitofp i32 %.0387.in to float          ; 4 uses
  %i.qy = sext i32 %i.qv to i64
  %i.qz = load ptr, ptr %i.cr, align 8, !tbaa !14
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.qy
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !19
  %i.rc = fpext float %i.rb to double
  %i.rd = fmul double %i.cp, %i.rc
  %i.re = fptrunc double %i.rd to float           ; 9 uses
  %i.rf = add nsw i32 %i.ct, %.recomposed957      ; 3 uses
  %i.rg = sitofp i32 %i.rf to float               ; 9 uses
  %i.rh = sext i32 %i.rf to i64
  %i.ri = load ptr, ptr %i.cu, align 8, !tbaa !14
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.rh
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !19 ; 9 uses
  %.reass = mul i32 %factor.op.mul, %i.qt
  %i.rl = sext i32 %.reass to i64                 ; 2 uses
  %i.rm = getelementptr [8 x i8], ptr %2, i64 %i.rl
  %i.rn = mul i32 %i.cz, %.recomposed957
  %i.ro = sext i32 %i.rn to i64                   ; 2 uses
  %i.rp = getelementptr [8 x i8], ptr %i.rm, i64 %i.ro
  %i.rq = icmp slt i32 %i.qv, 1                   ; 3 uses
  %i.rr = icmp slt i32 %i.rf, 1                   ; 3 uses
  %i.rs = and i1 %i.rq, %i.rr
  %or.cond3.not = and i1 %i.rs, %i.db             ; 2 uses
  %.0393.idx = select i1 %or.cond3.not, i64 8, i64 0 ; 2 uses
  %.0393 = getelementptr i8, ptr %i.rp, i64 %.0393.idx ; 8 uses
  %i.rt = zext i1 %or.cond3.not to i32            ; 3 uses
  %.0388 = add nsw i32 %i.da, %i.rt
  %i.ru = icmp slt i32 %.0388, %i.aj
  br i1 %i.ru, label %iter.check664, label %.preheader440

iter.check664:                                    ; preds = %.lr.ph482.split
  %i.rv = fmul float %i.ad, %.0387                ; 5 uses
  %i.rw = fmul float %i.af, %.0387                ; 5 uses
  %i.rx = load ptr, ptr %i.cq, align 8, !tbaa !14 ; 6 uses
  %i.ry = and i1 %i.rq, %i.rr
  %i.rz = and i1 %i.ry, %i.db                     ; 3 uses
  %umin505 = zext i1 %i.rz to i64
  %i.sa = add nsw i64 %i.dl, %umin505             ; 8 uses
  %i.sb = zext i1 %i.rz to i32
  %i.sc = add nsw i32 %i.aj, %i.sb
  %i.sd = sub nsw i32 %i.sc, %i.rt
  %.neg = sext i1 %i.rz to i32
  %i.se = add i32 %i.eq, %.neg                    ; 3 uses
  %i.sf = zext i32 %i.se to i64
  %i.sg = add nuw nsw i64 %i.sf, 1                ; 5 uses
  %min.iters.check623 = icmp ult i32 %i.se, 7
  br i1 %min.iters.check623, label %vec.epilog.middle.block699.a, label %vector.memcheck616

vector.memcheck616:                               ; preds = %iter.check664
  %i.sh = ptrtoaddr ptr %i.rx to i64              ; 2 uses
  %i.si = sub i64 %i.sh, %i.bk
  %diff.check618 = icmp ugt i64 %i.si, -128
  %conflict.rdx619 = or i1 %diff.check617, %diff.check618
  %i.sj = sub i64 %i.sh, %i.bn
  %diff.check620 = icmp ugt i64 %i.sj, -128
  %conflict.rdx621 = or i1 %conflict.rdx619, %diff.check620
  br i1 %conflict.rdx621, label %vec.epilog.middle.block699.a, label %vector.main.loop.iter.check624

vector.main.loop.iter.check624:                   ; preds = %vector.memcheck616
  %min.iters.check625 = icmp ult i32 %i.se, 31
  br i1 %min.iters.check625, label %vec.epilog.ph668, label %vector.ph626

vector.ph626:                                     ; preds = %vector.main.loop.iter.check624
  %i.sk = and i64 %i.sg, 24
  %n.vec627 = and i64 %i.sg, 8589934560           ; 4 uses
  %i.sl = add nsw i64 %i.sa, %n.vec627            ; 2 uses
  %broadcast.splatinsert628 = insertelement <8 x float> poison, float %i.rv, i64 0
  %broadcast.splat629 = shufflevector <8 x float> %broadcast.splatinsert628, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert630 = insertelement <8 x float> poison, float %i.rw, i64 0
  %broadcast.splat631 = shufflevector <8 x float> %broadcast.splatinsert630, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert638 = insertelement <8 x float> poison, float %i.rg, i64 0
  %broadcast.splat639 = shufflevector <8 x float> %broadcast.splatinsert638, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert642 = insertelement <8 x float> poison, float %i.rk, i64 0
  %broadcast.splat643 = shufflevector <8 x float> %broadcast.splatinsert642, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert644 = insertelement <8 x float> poison, float %i.re, i64 0
  %broadcast.splat645 = shufflevector <8 x float> %broadcast.splatinsert644, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.sm = trunc i64 %i.sa to i32
  %broadcast.splatinsert648 = insertelement <8 x i32> poison, i32 %i.sm, i64 0
  %broadcast.splat649 = shufflevector <8 x i32> %broadcast.splatinsert648, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction650 = add <8 x i32> %broadcast.splat649, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body651

vector.body651:                                   ; preds = %vector.ph626, %vector.body651
  %index652 = phi i64 [ 0, %vector.ph626 ], [ %index.next658, %vector.body651 ] ; 2 uses
  %vec.ind653 = phi <8 x i32> [ %induction650, %vector.ph626 ], [ %vec.ind.next659, %vector.body651 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind653, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind653, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind653, splat (i32 24)
  %i.sn = add i64 %i.sa, %index652                ; 3 uses
  %i.so = sitofp <8 x i32> %vec.ind653 to <8 x float> ; 3 uses
  %i.sp = sitofp <8 x i32> %step.add to <8 x float> ; 3 uses
  %i.sq = sitofp <8 x i32> %step.add.2 to <8 x float> ; 3 uses
  %i.sr = sitofp <8 x i32> %step.add.3 to <8 x float> ; 3 uses
  %i.ss = fmul <8 x float> %broadcast.splat633, %i.so ; 2 uses
  %i.st = fmul <8 x float> %broadcast.splat633, %i.sp ; 2 uses
  %i.su = fmul <8 x float> %broadcast.splat633, %i.sq ; 2 uses
  %i.sv = fmul <8 x float> %broadcast.splat633, %i.sr ; 2 uses
  %i.sw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.so, <8 x float> %broadcast.splat635, <8 x float> %broadcast.splat629) ; 2 uses
  %i.sx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.sp, <8 x float> %broadcast.splat635, <8 x float> %broadcast.splat629) ; 2 uses
  %i.sy = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.sq, <8 x float> %broadcast.splat635, <8 x float> %broadcast.splat629) ; 2 uses
  %i.sz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.sr, <8 x float> %broadcast.splat635, <8 x float> %broadcast.splat629) ; 2 uses
  %i.ta = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.so, <8 x float> %broadcast.splat637, <8 x float> %broadcast.splat631)
  %i.tb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.sp, <8 x float> %broadcast.splat637, <8 x float> %broadcast.splat631)
  %i.tc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.sq, <8 x float> %broadcast.splat637, <8 x float> %broadcast.splat631)
  %i.td = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.sr, <8 x float> %broadcast.splat637, <8 x float> %broadcast.splat631)
  %i.te = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat639, <8 x float> %broadcast.splat641, <8 x float> %i.ta) ; 2 uses
  %i.tf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat639, <8 x float> %broadcast.splat641, <8 x float> %i.tb) ; 2 uses
  %i.tg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat639, <8 x float> %broadcast.splat641, <8 x float> %i.tc) ; 2 uses
  %i.th = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat639, <8 x float> %broadcast.splat641, <8 x float> %i.td) ; 2 uses
  %i.ti = fmul <8 x float> %i.sw, %i.sw
  %i.tj = fmul <8 x float> %i.sx, %i.sx
  %i.tk = fmul <8 x float> %i.sy, %i.sy
  %i.tl = fmul <8 x float> %i.sz, %i.sz
  %i.tm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ss, <8 x float> %i.ss, <8 x float> %i.ti)
  %i.tn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.st, <8 x float> %i.st, <8 x float> %i.tj)
  %i.to = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.su, <8 x float> %i.su, <8 x float> %i.tk)
  %i.tp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.sv, <8 x float> %i.sv, <8 x float> %i.tl)
  %i.tq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.te, <8 x float> %i.te, <8 x float> %i.tm) ; 2 uses
  %i.tr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.tf, <8 x float> %i.tf, <8 x float> %i.tn) ; 2 uses
  %i.ts = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.tg, <8 x float> %i.tg, <8 x float> %i.to) ; 2 uses
  %i.tt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.th, <8 x float> %i.th, <8 x float> %i.tp) ; 2 uses
  %i.tu = fmul <8 x float> %broadcast.splat643, %i.tq
  %i.tv = fmul <8 x float> %broadcast.splat643, %i.tr
  %i.tw = fmul <8 x float> %broadcast.splat643, %i.ts
  %i.tx = fmul <8 x float> %broadcast.splat643, %i.tt
  %i.ty = fmul <8 x float> %i.tu, %broadcast.splat645
  %i.tz = fmul <8 x float> %i.tv, %broadcast.splat645
  %i.ua = fmul <8 x float> %i.tw, %broadcast.splat645
  %i.ub = fmul <8 x float> %i.tx, %broadcast.splat645
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.sn ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 64
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 96
  %wide.load654 = load <8 x float>, ptr %i.uc, align 4, !tbaa !19
  %wide.load655 = load <8 x float>, ptr %i.ud, align 4, !tbaa !19
  %wide.load656 = load <8 x float>, ptr %i.ue, align 4, !tbaa !19
  %wide.load657 = load <8 x float>, ptr %i.uf, align 4, !tbaa !19
  %i.ug = fmul <8 x float> %i.ty, %wide.load654
  %i.uh = fmul <8 x float> %i.tz, %wide.load655
  %i.ui = fmul <8 x float> %i.ua, %wide.load656
  %i.uj = fmul <8 x float> %i.ub, %wide.load657
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.sn ; 4 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 32
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 64
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 96
  store <8 x float> %i.ug, ptr %i.uk, align 4, !tbaa !19
  store <8 x float> %i.uh, ptr %i.ul, align 4, !tbaa !19
  store <8 x float> %i.ui, ptr %i.um, align 4, !tbaa !19
  store <8 x float> %i.uj, ptr %i.un, align 4, !tbaa !19
  %i.uo = fmul <8 x float> %i.tq, %broadcast.splat647
  %i.up = fmul <8 x float> %i.tr, %broadcast.splat647
  %i.uq = fmul <8 x float> %i.ts, %broadcast.splat647
  %i.ur = fmul <8 x float> %i.tt, %broadcast.splat647
  %i.us = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.sn ; 4 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 32
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 64
  %i.uv = getelementptr inbounds nuw i8, ptr %i.us, i64 96
  store <8 x float> %i.uo, ptr %i.us, align 4, !tbaa !19
  store <8 x float> %i.up, ptr %i.ut, align 4, !tbaa !19
  store <8 x float> %i.uq, ptr %i.uu, align 4, !tbaa !19
  store <8 x float> %i.ur, ptr %i.uv, align 4, !tbaa !19
  %index.next658 = add nuw i64 %index652, 32      ; 2 uses
  %vec.ind.next659 = add <8 x i32> %vec.ind653, splat (i32 32)
  %i.uw = icmp eq i64 %index.next658, %n.vec627
  br i1 %i.uw, label %middle.block660, label %vector.body651, !llvm.loop !230

middle.block660:                                  ; preds = %vector.body651
  %cmp.n661 = icmp eq i64 %i.sg, %n.vec627
  br i1 %cmp.n661, label %.preheader440, label %vec.epilog.iter.check666

vec.epilog.iter.check666:                         ; preds = %middle.block660
  %min.epilog.iters.check667 = icmp eq i64 %i.sk, 0
  br i1 %min.epilog.iters.check667, label %vec.epilog.middle.block699.a, label %vec.epilog.ph668, !prof !22

vec.epilog.ph668:                                 ; preds = %vector.main.loop.iter.check624, %vec.epilog.iter.check666
  %vec.epilog.resume.val662 = phi i64 [ %n.vec627, %vec.epilog.iter.check666 ], [ 0, %vector.main.loop.iter.check624 ]
  %bc.resume.val663 = phi i64 [ %i.sl, %vec.epilog.iter.check666 ], [ %i.sa, %vector.main.loop.iter.check624 ]
  %n.vec669 = and i64 %i.sg, 8589934584           ; 3 uses
  %i.ux = add nsw i64 %i.sa, %n.vec669
  %broadcast.splatinsert670 = insertelement <8 x float> poison, float %i.rv, i64 0
  %broadcast.splat671 = shufflevector <8 x float> %broadcast.splatinsert670, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert672 = insertelement <8 x float> poison, float %i.rw, i64 0
  %broadcast.splat673 = shufflevector <8 x float> %broadcast.splatinsert672, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert680 = insertelement <8 x float> poison, float %i.rg, i64 0
  %broadcast.splat681 = shufflevector <8 x float> %broadcast.splatinsert680, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert684 = insertelement <8 x float> poison, float %i.rk, i64 0
  %broadcast.splat685 = shufflevector <8 x float> %broadcast.splatinsert684, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert686 = insertelement <8 x float> poison, float %i.re, i64 0
  %broadcast.splat687 = shufflevector <8 x float> %broadcast.splatinsert686, <8 x float> poison, <8 x i32> zeroinitializer
  %i.uy = trunc i64 %bc.resume.val663 to i32
  %broadcast.splatinsert690 = insertelement <8 x i32> poison, i32 %i.uy, i64 0
  %broadcast.splat691 = shufflevector <8 x i32> %broadcast.splatinsert690, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction692 = add <8 x i32> %broadcast.splat691, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body693

vec.epilog.vector.body693:                        ; preds = %vec.epilog.vector.body693, %vec.epilog.ph668
  %index694 = phi i64 [ %vec.epilog.resume.val662, %vec.epilog.ph668 ], [ %index.next697, %vec.epilog.vector.body693 ] ; 2 uses
  %vec.ind695 = phi <8 x i32> [ %induction692, %vec.epilog.ph668 ], [ %vec.ind.next698, %vec.epilog.vector.body693 ] ; 2 uses
  %i.uz = add i64 %i.sa, %index694                ; 3 uses
  %i.va = sitofp <8 x i32> %vec.ind695 to <8 x float> ; 3 uses
  %i.vb = fmul <8 x float> %broadcast.splat675, %i.va ; 2 uses
  %i.vc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.va, <8 x float> %broadcast.splat677, <8 x float> %broadcast.splat671) ; 2 uses
  %i.vd = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.va, <8 x float> %broadcast.splat679, <8 x float> %broadcast.splat673)
  %i.ve = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat681, <8 x float> %broadcast.splat683, <8 x float> %i.vd) ; 2 uses
  %i.vf = fmul <8 x float> %i.vc, %i.vc
  %i.vg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vb, <8 x float> %i.vb, <8 x float> %i.vf)
  %i.vh = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ve, <8 x float> %i.ve, <8 x float> %i.vg) ; 2 uses
  %i.vi = fmul <8 x float> %broadcast.splat685, %i.vh
  %i.vj = fmul <8 x float> %i.vi, %broadcast.splat687
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.uz
  %wide.load696 = load <8 x float>, ptr %i.vk, align 4, !tbaa !19
  %i.vl = fmul <8 x float> %i.vj, %wide.load696
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.uz
  store <8 x float> %i.vl, ptr %i.vm, align 4, !tbaa !19
  %i.vn = fmul <8 x float> %i.vh, %broadcast.splat689
  %i.vo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.uz
  store <8 x float> %i.vn, ptr %i.vo, align 4, !tbaa !19
  %index.next697 = add nuw i64 %index694, 8       ; 2 uses
  %vec.ind.next698 = add <8 x i32> %vec.ind695, splat (i32 8)
  %i.vp = icmp eq i64 %index.next697, %n.vec669
  br i1 %i.vp, label %vec.epilog.middle.block699, label %vec.epilog.vector.body693, !llvm.loop !231

vec.epilog.middle.block699:                       ; preds = %vec.epilog.vector.body693
  %cmp.n700 = icmp eq i64 %i.sg, %n.vec669
  br i1 %cmp.n700, label %.preheader440, label %vec.epilog.middle.block699.a

vec.epilog.middle.block699.a:                     ; preds = %iter.check664, %vector.memcheck616, %vec.epilog.iter.check666, %vec.epilog.middle.block699
  %indvars.iv.ph = phi i64 [ %i.sa, %iter.check664 ], [ %i.sa, %vector.memcheck616 ], [ %i.sl, %vec.epilog.iter.check666 ], [ %i.ux, %vec.epilog.middle.block699 ] ; 7 uses
  %6 = trunc i64 %indvars.iv.ph to i32            ; 2 uses
  %7 = sub i32 %i.aj, %6
  %.neg950 = add i32 %6, 1
  %xtraiter = and i32 %7, 1
  %cmp.n700.a = icmp eq i32 %xtraiter, 0
  br i1 %cmp.n700.a, label %vec.epilog.scalar.ph665.prol.loopexit, label %vec.epilog.scalar.ph665.preheader

vec.epilog.scalar.ph665.preheader:                ; preds = %vec.epilog.middle.block699.a
  %8 = trunc nsw i64 %indvars.iv.ph to i32
  %9 = sitofp i32 %8 to float                     ; 3 uses
  %10 = fmul float %i.ab, %9                      ; 2 uses
  %11 = call float @llvm.fmuladd.f32(float %9, float %i.ac, float %i.rv) ; 2 uses
  %12 = call float @llvm.fmuladd.f32(float %9, float %i.ae, float %i.rw)
  %13 = call float @llvm.fmuladd.f32(float %i.rg, float %i.ag, float %12) ; 2 uses
  %14 = fmul float %11, %11
  %15 = call float @llvm.fmuladd.f32(float %10, float %10, float %14)
  %16 = call float @llvm.fmuladd.f32(float %13, float %13, float %15) ; 2 uses
  %17 = fmul float %i.rk, %16
  %18 = fmul float %17, %i.re
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %indvars.iv.ph
  %20 = load float, ptr %19, align 4, !tbaa !19
  %21 = fmul float %18, %20
  %22 = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv.ph
  store float %21, ptr %22, align 4, !tbaa !19
  %23 = fmul float %16, %i.de
  %24 = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv.ph
  store float %23, ptr %24, align 4, !tbaa !19
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph665.prol.loopexit

vec.epilog.scalar.ph665.prol.loopexit:            ; preds = %vec.epilog.scalar.ph665.preheader, %vec.epilog.middle.block699.a
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.middle.block699.a ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph665.preheader ]
  %25 = icmp eq i32 %i.aj, %.neg950
  br i1 %25, label %.preheader440, label %vec.epilog.scalar.ph665

.preheader440:                                    ; preds = %vec.epilog.scalar.ph665.prol.loopexit, %vec.epilog.scalar.ph665, %middle.block660, %vec.epilog.middle.block699, %.lr.ph482.split
  br i1 %i.df, label %.lr.ph444, label %._crit_edge

.lr.ph444:                                        ; preds = %.preheader440
  %i.vq = fmul float %i.ad, %.0387                ; 4 uses
  %i.vr = fmul float %i.af, %.0387                ; 4 uses
  %i.vs = load ptr, ptr %i.cq, align 8, !tbaa !14 ; 5 uses
  br i1 %min.iters.check585, label %scalar.ph.preheader, label %vector.memcheck581

vector.memcheck581:                               ; preds = %.lr.ph444
  %i.vt = ptrtoaddr ptr %i.vs to i64              ; 2 uses
  %i.vu = sub i64 %i.vt, %i.bk
  %diff.check582 = icmp ugt i64 %i.vu, -32
  %conflict.rdx = or i1 %diff.check, %diff.check582
  %i.vv = sub i64 %i.vt, %i.bn
  %diff.check583 = icmp ugt i64 %i.vv, -32
  %conflict.rdx584 = or i1 %conflict.rdx, %diff.check583
  br i1 %conflict.rdx584, label %scalar.ph.preheader, label %vector.ph586

vector.ph586:                                     ; preds = %vector.memcheck581
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.vq, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert588 = insertelement <8 x float> poison, float %i.vr, i64 0
  %broadcast.splat589 = shufflevector <8 x float> %broadcast.splatinsert588, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert598 = insertelement <8 x float> poison, float %i.rg, i64 0
  %broadcast.splat599 = shufflevector <8 x float> %broadcast.splatinsert598, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert602 = insertelement <8 x float> poison, float %i.rk, i64 0
  %broadcast.splat603 = shufflevector <8 x float> %broadcast.splatinsert602, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert604 = insertelement <8 x float> poison, float %i.re, i64 0
  %broadcast.splat605 = shufflevector <8 x float> %broadcast.splatinsert604, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body610

vector.body610:                                   ; preds = %vector.body610, %vector.ph586
  %index611 = phi i64 [ 0, %vector.ph586 ], [ %index.next613, %vector.body610 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph586 ], [ %vec.ind.next, %vector.body610 ] ; 2 uses
  %i.vw = add i64 %index611, %i.dm                ; 3 uses
  %i.vx = sub <8 x i32> %vec.ind, %broadcast.splat591
  %i.vy = sitofp <8 x i32> %i.vx to <8 x float>   ; 3 uses
  %i.vz = fmul <8 x float> %broadcast.splat593, %i.vy ; 2 uses
  %i.wa = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vy, <8 x float> %broadcast.splat595, <8 x float> %broadcast.splat) ; 2 uses
  %i.wb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vy, <8 x float> %broadcast.splat597, <8 x float> %broadcast.splat589)
  %i.wc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat599, <8 x float> %broadcast.splat601, <8 x float> %i.wb) ; 2 uses
  %i.wd = fmul <8 x float> %i.wa, %i.wa
  %i.we = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vz, <8 x float> %i.vz, <8 x float> %i.wd)
  %i.wf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.wc, <8 x float> %i.wc, <8 x float> %i.we) ; 2 uses
  %i.wg = fmul <8 x float> %broadcast.splat603, %i.wf
  %i.wh = fmul <8 x float> %i.wg, %broadcast.splat605
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.vw
  %wide.load612 = load <8 x float>, ptr %i.wi, align 4, !tbaa !19
  %i.wj = fmul <8 x float> %i.wh, %wide.load612
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.vw
  store <8 x float> %i.wj, ptr %i.wk, align 4, !tbaa !19
  %i.wl = fmul <8 x float> %i.wf, %broadcast.splat607
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.vw
  store <8 x float> %i.wl, ptr %i.wm, align 4, !tbaa !19
  %index.next613 = add nuw i64 %index611, 8       ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.wn = icmp eq i64 %index.next613, %n.vec587
  br i1 %i.wn, label %middle.block614, label %vector.body610, !llvm.loop !232

middle.block614:                                  ; preds = %vector.body610
  br i1 %cmp.n615, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck581, %.lr.ph444, %middle.block614
  %indvars.iv506.ph = phi i64 [ %i.dm, %vector.memcheck581 ], [ %i.dm, %.lr.ph444 ], [ %i.ew, %middle.block614 ] ; 8 uses
  %i.wo = sub nsw i64 %i.dn, %indvars.iv506.ph
  %xtraiter.a = and i64 %i.wo, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.wp = trunc i64 %indvars.iv506.ph to i32
  %i.wq = sub i32 %i.wp, %i.ex
  %i.wr = sitofp i32 %i.wq to float               ; 3 uses
  %i.ws = fmul float %i.ab, %i.wr                 ; 2 uses
  %i.wt = call float @llvm.fmuladd.f32(float %i.wr, float %i.ac, float %i.vq) ; 2 uses
  %i.wu = call float @llvm.fmuladd.f32(float %i.wr, float %i.ae, float %i.vr)
  %i.wv = call float @llvm.fmuladd.f32(float %i.rg, float %i.ag, float %i.wu) ; 2 uses
  %i.ww = fmul float %i.wt, %i.wt
  %i.wx = call float @llvm.fmuladd.f32(float %i.ws, float %i.ws, float %i.ww)
  %i.wy = call float @llvm.fmuladd.f32(float %i.wv, float %i.wv, float %i.wx) ; 2 uses
  %i.wz = fmul float %i.rk, %i.wy
  %i.xa = fmul float %i.wz, %i.re
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv506.ph
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !19
  %i.xd = fmul float %i.xa, %i.xc
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv506.ph
  store float %i.xd, ptr %i.xe, align 4, !tbaa !19
  %i.xf = fmul float %i.wy, %i.de
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv506.ph
  store float %i.xf, ptr %i.xg, align 4, !tbaa !19
  %indvars.iv.next507.prol = add nsw i64 %indvars.iv506.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv506.unr = phi i64 [ %indvars.iv506.ph, %scalar.ph.preheader ], [ %indvars.iv.next507.prol, %scalar.ph.prol ]
  %i.xh = icmp eq i64 %indvars.iv506.ph, %i.ey
  br i1 %i.xh, label %._crit_edge, label %scalar.ph

vec.epilog.scalar.ph665:                          ; preds = %vec.epilog.scalar.ph665.prol.loopexit, %vec.epilog.scalar.ph665
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %vec.epilog.scalar.ph665 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph665.prol.loopexit ] ; 6 uses
  %26 = trunc nsw i64 %indvars.iv to i32
  %27 = sitofp i32 %26 to float                   ; 3 uses
  %28 = fmul float %i.ab, %27                     ; 2 uses
  %29 = call float @llvm.fmuladd.f32(float %27, float %i.ac, float %i.rv) ; 2 uses
  %30 = call float @llvm.fmuladd.f32(float %27, float %i.ae, float %i.rw)
  %31 = call float @llvm.fmuladd.f32(float %i.rg, float %i.ag, float %30) ; 2 uses
  %32 = fmul float %29, %29
  %33 = call float @llvm.fmuladd.f32(float %28, float %28, float %32)
  %34 = call float @llvm.fmuladd.f32(float %31, float %31, float %33) ; 2 uses
  %35 = fmul float %i.rk, %34
  %36 = fmul float %35, %i.re
  %37 = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %indvars.iv
  %38 = load float, ptr %37, align 4, !tbaa !19
  %39 = fmul float %36, %38
  %40 = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv
  store float %39, ptr %40, align 4, !tbaa !19
  %41 = fmul float %34, %i.de
  %42 = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv
  store float %41, ptr %42, align 4, !tbaa !19
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.xi = trunc nsw i64 %indvars.iv.next to i32
  %i.xj = sitofp i32 %i.xi to float               ; 3 uses
  %i.xk = fmul float %i.ab, %i.xj                 ; 2 uses
  %i.xl = call float @llvm.fmuladd.f32(float %i.xj, float %i.ac, float %i.rv) ; 2 uses
  %i.xm = call float @llvm.fmuladd.f32(float %i.xj, float %i.ae, float %i.rw)
  %i.xn = call float @llvm.fmuladd.f32(float %i.rg, float %i.ag, float %i.xm) ; 2 uses
  %i.xo = fmul float %i.xl, %i.xl
  %i.xp = call float @llvm.fmuladd.f32(float %i.xk, float %i.xk, float %i.xo)
  %i.xq = call float @llvm.fmuladd.f32(float %i.xn, float %i.xn, float %i.xp) ; 2 uses
  %i.xr = fmul float %i.rk, %i.xq
  %i.xs = fmul float %i.xr, %i.re
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %indvars.iv.next
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !19
  %i.xv = fmul float %i.xs, %i.xu
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv.next
  store float %i.xv, ptr %i.xw, align 4, !tbaa !19
  %i.xx = fmul float %i.xq, %i.de
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv.next
  store float %i.xx, ptr %i.xy, align 4, !tbaa !19
  %indvars.iv.next.a = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.a to i32
  %exitcond.not = icmp eq i32 %i.sd, %lftr.wideiv
  br i1 %exitcond.not, label %.preheader440, label %vec.epilog.scalar.ph665, !llvm.loop !233

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv506 = phi i64 [ %indvars.iv.next507.1, %scalar.ph ], [ %indvars.iv506.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.xz = trunc i64 %indvars.iv506 to i32
  %i.ya = sub i32 %i.xz, %i.ez
  %i.yb = sitofp i32 %i.ya to float               ; 3 uses
  %i.yc = fmul float %i.ab, %i.yb                 ; 2 uses
  %i.yd = call float @llvm.fmuladd.f32(float %i.yb, float %i.ac, float %i.vq) ; 2 uses
  %i.ye = call float @llvm.fmuladd.f32(float %i.yb, float %i.ae, float %i.vr)
  %i.yf = call float @llvm.fmuladd.f32(float %i.rg, float %i.ag, float %i.ye) ; 2 uses
  %i.yg = fmul float %i.yd, %i.yd
  %i.yh = call float @llvm.fmuladd.f32(float %i.yc, float %i.yc, float %i.yg)
  %i.yi = call float @llvm.fmuladd.f32(float %i.yf, float %i.yf, float %i.yh) ; 2 uses
  %i.yj = fmul float %i.rk, %i.yi
  %i.yk = fmul float %i.yj, %i.re
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv506
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !19
  %i.yn = fmul float %i.yk, %i.ym
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv506
  store float %i.yn, ptr %i.yo, align 4, !tbaa !19
  %i.yp = fmul float %i.yi, %i.de
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv506
  store float %i.yp, ptr %i.yq, align 4, !tbaa !19
  %indvars.iv.next507 = add nsw i64 %indvars.iv506, 1 ; 4 uses
  %i.yr = trunc i64 %indvars.iv.next507 to i32
  %i.ys = sub i32 %i.yr, %i.fa
  %i.yt = sitofp i32 %i.ys to float               ; 3 uses
  %i.yu = fmul float %i.ab, %i.yt                 ; 2 uses
  %i.yv = call float @llvm.fmuladd.f32(float %i.yt, float %i.ac, float %i.vq) ; 2 uses
  %i.yw = call float @llvm.fmuladd.f32(float %i.yt, float %i.ae, float %i.vr)
  %i.yx = call float @llvm.fmuladd.f32(float %i.rg, float %i.ag, float %i.yw) ; 2 uses
  %i.yy = fmul float %i.yv, %i.yv
  %i.yz = call float @llvm.fmuladd.f32(float %i.yu, float %i.yu, float %i.yy)
  %i.za = call float @llvm.fmuladd.f32(float %i.yx, float %i.yx, float %i.yz) ; 2 uses
  %i.zb = fmul float %i.rk, %i.za
  %i.zc = fmul float %i.zb, %i.re
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv.next507
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !19
  %i.zf = fmul float %i.zc, %i.ze
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv.next507
  store float %i.zf, ptr %i.zg, align 4, !tbaa !19
  %i.zh = fmul float %i.za, %i.de
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv.next507
  store float %i.zh, ptr %i.zi, align 4, !tbaa !19
  %indvars.iv.next507.1 = add nsw i64 %indvars.iv506, 2 ; 2 uses
  %exitcond509.not.1 = icmp eq i64 %indvars.iv.next507.1, %i.dn
  br i1 %exitcond509.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !234

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block614, %.preheader440
  br i1 %.not10.i406, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413, label %.lr.ph.i407

.lr.ph.i407:                                      ; preds = %._crit_edge
  %i.zj = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> splat (float f0x3FB8AA3B), <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.zk = fneg <16 x float> %i.zj
  %i.zl = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zk, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 2.000000e+00))
  %i.zm = fmul <16 x float> %i.zj, %i.zl
  %i.zn = fmul <16 x float> %i.zm, splat (float f0xCF000000)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i407
  %.011.i408 = phi i64 [ 0, %.lr.ph.i407 ], [ %i.aao, %bb.c ] ; 2 uses
  %.idx.i.i409 = shl nuw nsw i64 %.011.i408, 6    ; 3 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i.i409
  %.val.i.i410 = load <16 x float>, ptr %i.zo, align 64, !tbaa !140 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i.i409
  %.val.i17.i411 = load <16 x float>, ptr %i.zp, align 64, !tbaa !140
  %i.zq = call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %.val.i17.i411, <16 x float> %i.zn, i32 4) ; 2 uses
  %i.zr = fmul <16 x float> %i.zq, splat (float f0x3FB8AA3B) ; 2 uses
  %i.zs = call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.zr, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.zt = add <16 x i32> %i.zs, splat (i32 127)
  %i.zu = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.zt, <16 x i32> zeroinitializer)
  %i.zv = shl <16 x i32> %i.zu, splat (i32 23)
  %i.zw = bitcast <16 x i32> %i.zv to <16 x float> ; 2 uses
  %i.zx = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.zr, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.zy = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zx, <16 x float> splat (float f0xBF317200), <16 x float> %i.zq)
  %i.zz = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zx, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.zy) ; 7 uses
  %i.aaa = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zz, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.aab = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aaa, <16 x float> %i.zz, <16 x float> splat (float f0x3D2AAF4C))
  %i.aac = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aab, <16 x float> %i.zz, <16 x float> splat (float f0x3E2AAA5E))
  %i.aad = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aac, <16 x float> %i.zz, <16 x float> splat (float f0x3EFFFFFB))
  %i.aae = fmul <16 x float> %i.zz, %i.zz
  %i.aaf = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aae, <16 x float> %i.aad, <16 x float> %i.zz)
  %i.aag = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aaf, <16 x float> %i.zw, <16 x float> %i.zw)
  %i.aah = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %.val.i.i410, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aai = fneg <16 x float> %i.aah
  %i.aaj = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aai, <16 x float> %.val.i.i410, <16 x float> splat (float 2.000000e+00))
  %i.aak = fmul <16 x float> %i.aah, %i.aaj
  %i.aal = fmul <16 x float> %i.di, %i.aak
  %i.aam = fmul <16 x float> %i.aal, %i.aag
  %i.aan = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i409
  store <16 x float> %i.aam, ptr %i.aan, align 64, !tbaa !140
  %i.aao = add nuw nsw i64 %.011.i408, 1          ; 2 uses
  %.not.i412 = icmp eq i64 %i.aao, %i.dk
  br i1 %.not.i412, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413, label %bb.c, !llvm.loop !217

_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413: ; preds = %bb.c, %._crit_edge
  %i.aap = icmp sgt i32 %i.dc, %i.rt
  br i1 %i.aap, label %iter.check, label %.loopexit439

iter.check:                                       ; preds = %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413
  %i.aaq = and i1 %i.rq, %i.rr
  %i.aar = and i1 %i.aaq, %i.db
  %umin511 = zext i1 %i.aar to i64                ; 4 uses
  %i.aas = add nsw i64 %i.dl, %umin511            ; 8 uses
  %i.aat = add nsw i64 %i.dp, %umin511
  %smax559 = call i64 @llvm.smax.i64(i64 %i.aat, i64 %i.dn)
  %i.aau = add nsw i64 %i.dl, %umin511
  %i.aav = sub i64 %smax559, %i.aau               ; 7 uses
  %min.iters.check = icmp ult i64 %i.aav, 4
  br i1 %min.iters.check, label %.lr.ph447.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aaw = add nsw i64 %i.do, %umin511
  %smax = call i64 @llvm.smax.i64(i64 %i.aaw, i64 %i.dn) ; 2 uses
  %i.aax = add i64 %smax, %i.rl
  %i.aay = add i64 %i.aax, %i.ro
  %i.aaz = shl nsw i64 %i.aay, 3
  %i.aba = add i64 %.0393.idx, %i.aaz
  %i.abb = shl nsw i64 %i.aas, 3
  %i.abc = sub i64 %i.aba, %i.abb
  %scevgep = getelementptr i8, ptr %2, i64 %i.abc
  %i.abd = shl nsw i64 %i.aas, 2
  %scevgep557 = getelementptr i8, ptr %i.bp, i64 %i.abd
  %i.abe = shl nsw i64 %smax, 2
  %scevgep558 = getelementptr i8, ptr %i.bp, i64 %i.abe
  %bound0 = icmp ult ptr %.0393, %scevgep558
  %bound1 = icmp ult ptr %scevgep557, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph447.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check560 = icmp ult i64 %i.aav, 16
  br i1 %min.iters.check560, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.abf = and i64 %i.aav, 12
  %n.vec = and i64 %i.aav, -16                    ; 5 uses
  %i.abg = add i64 %i.aas, %n.vec
  %i.abh = shl i64 %n.vec, 3
  %i.abi = getelementptr i8, ptr %.0393, i64 %i.abh
  %i.abj = getelementptr [4 x i8], ptr %i.bp, i64 %i.aas
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.abk = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.0393, i64 %i.abk ; 2 uses
  %i.abl = getelementptr i8, ptr %.0393, i64 %i.abk
  %next.gep561 = getelementptr i8, ptr %i.abl, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %next.gep, align 4, !tbaa !19, !alias.scope !249, !noalias !250 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec562 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec563 = load <16 x float>, ptr %next.gep561, align 4, !tbaa !19, !alias.scope !249, !noalias !250 ; 2 uses
  %strided.vec564 = shufflevector <16 x float> %wide.vec563, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec565 = shufflevector <16 x float> %wide.vec563, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.abm = getelementptr [4 x i8], ptr %i.abj, i64 %index ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 32
  %wide.load = load <8 x float>, ptr %i.abm, align 4, !tbaa !19, !alias.scope !250 ; 2 uses
  %wide.load566 = load <8 x float>, ptr %i.abn, align 4, !tbaa !19, !alias.scope !250 ; 2 uses
  %i.abo = fmul <8 x float> %strided.vec, %wide.load
  %i.abp = fmul <8 x float> %strided.vec564, %wide.load566
  %i.abq = fmul <8 x float> %strided.vec562, %wide.load
  %i.abr = fmul <8 x float> %strided.vec565, %wide.load566
  %interleaved.vec = shufflevector <8 x float> %i.abo, <8 x float> %i.abq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !19, !alias.scope !249, !noalias !250
  %interleaved.vec567 = shufflevector <8 x float> %i.abp, <8 x float> %i.abr, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec567, ptr %next.gep561, align 4, !tbaa !19, !alias.scope !249, !noalias !250
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.abs = icmp eq i64 %index.next, %n.vec
  br i1 %i.abs, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aav, %n.vec
  br i1 %cmp.n, label %.loopexit439, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.abf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph447.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec569 = and i64 %i.aav, -4                  ; 4 uses
  %i.abt = add i64 %i.aas, %n.vec569
  %i.abu = shl i64 %n.vec569, 3
  %i.abv = getelementptr i8, ptr %.0393, i64 %i.abu
  %i.abw = getelementptr [4 x i8], ptr %i.bp, i64 %i.aas
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index570 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next577, %vec.epilog.vector.body ] ; 3 uses
  %i.abx = shl i64 %index570, 3
  %next.gep571 = getelementptr i8, ptr %.0393, i64 %i.abx ; 2 uses
  %wide.vec572 = load <8 x float>, ptr %next.gep571, align 4, !tbaa !19, !alias.scope !249, !noalias !250 ; 2 uses
  %strided.vec573 = shufflevector <8 x float> %wide.vec572, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec574 = shufflevector <8 x float> %wide.vec572, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aby = getelementptr [4 x i8], ptr %i.abw, i64 %index570
  %wide.load575 = load <4 x float>, ptr %i.aby, align 4, !tbaa !19, !alias.scope !250 ; 2 uses
  %i.abz = fmul <4 x float> %strided.vec573, %wide.load575
  %i.aca = fmul <4 x float> %strided.vec574, %wide.load575
  %interleaved.vec576 = shufflevector <4 x float> %i.abz, <4 x float> %i.aca, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec576, ptr %next.gep571, align 4, !tbaa !19, !alias.scope !249, !noalias !250
  %index.next577 = add nuw i64 %index570, 4       ; 2 uses
  %i.acb = icmp eq i64 %index.next577, %n.vec569
  br i1 %i.acb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !239

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n578 = icmp eq i64 %i.aav, %n.vec569
  br i1 %cmp.n578, label %.loopexit439, label %.lr.ph447.preheader

.lr.ph447.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv512.ph = phi i64 [ %i.aas, %iter.check ], [ %i.aas, %vector.memcheck ], [ %i.abg, %vec.epilog.iter.check ], [ %i.abt, %vec.epilog.middle.block ]
  %.2395445.ph = phi ptr [ %.0393, %iter.check ], [ %.0393, %vector.memcheck ], [ %i.abi, %vec.epilog.iter.check ], [ %i.abv, %vec.epilog.middle.block ]
  br label %.lr.ph447

.lr.ph447:                                        ; preds = %.lr.ph447.preheader, %.lr.ph447
  %indvars.iv512 = phi i64 [ %indvars.iv.next513, %.lr.ph447 ], [ %indvars.iv512.ph, %.lr.ph447.preheader ] ; 2 uses
  %.2395445 = phi ptr [ %i.ack, %.lr.ph447 ], [ %.2395445.ph, %.lr.ph447.preheader ] ; 4 uses
  %i.acc = load float, ptr %.2395445, align 4, !tbaa !142
  %i.acd = getelementptr inbounds nuw i8, ptr %.2395445, i64 4 ; 2 uses
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !143
  %i.acf = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv512 ; 2 uses
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !19
  %i.ach = fmul float %i.acc, %i.acg
  store float %i.ach, ptr %.2395445, align 4, !tbaa !142
  %i.aci = load float, ptr %i.acf, align 4, !tbaa !19
  %i.acj = fmul float %i.ace, %i.aci
  store float %i.acj, ptr %i.acd, align 4, !tbaa !143
  %indvars.iv.next513 = add nsw i64 %indvars.iv512, 1 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.2395445, i64 8
  %i.acl = icmp slt i64 %indvars.iv.next513, %i.dn
  br i1 %i.acl, label %.lr.ph447, label %.loopexit439, !llvm.loop !240

.loopexit439:                                     ; preds = %.lr.ph447, %middle.block, %vec.epilog.middle.block, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413
  %i.acm = add nsw i32 %.0389473, 1               ; 2 uses
  %exitcond514.not = icmp eq i32 %i.acm, %i.ch
  br i1 %exitcond514.not, label %._crit_edge483, label %.lr.ph482.split, !llvm.loop !225

._crit_edge483.loopexit:                          ; preds = %.loopexit.us
  %i.acn = fmul float %.1382.lcssa.us, 2.500000e-01
  %i.aco = insertelement <4 x float> poison, float %.1379.lcssa.us, i64 0
  %i.acp = insertelement <4 x float> %i.aco, float %.1376.lcssa.us, i64 1
  %i.acq = insertelement <4 x float> %i.acp, float %.1373.lcssa.us, i64 2
  %i.acr = insertelement <4 x float> %i.acq, float %.1370.lcssa.us, i64 3
  %i.acs = fmul <4 x float> %i.acr, splat (float 2.500000e-01)
  %i.act = fmul float %.1.lcssa.us, 2.500000e-01
  %i.acu = fmul float %.1385.lcssa.us, 5.000000e-01
  %i.acv = insertelement <8 x float> poison, float %i.acn, i64 0
  %i.acw = shufflevector <4 x float> %i.acs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.acx = shufflevector <8 x float> %i.acv, <8 x float> %i.acw, <8 x i32> <i32 0, i32 8, i32 9, i32 8, i32 11, i32 12, i32 9, i32 12>
  br label %._crit_edge483

._crit_edge483:                                   ; preds = %.loopexit439, %._crit_edge483.loopexit, %bb.a
  %.0384.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.acu, %._crit_edge483.loopexit ], [ 0.000000e+00, %.loopexit439 ]
  %.0368.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.act, %._crit_edge483.loopexit ], [ 0.000000e+00, %.loopexit439 ]
  %i.acy = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.acx, %._crit_edge483.loopexit ], [ zeroinitializer, %.loopexit439 ]
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge483
  %i.acz = getelementptr inbounds nuw i8, ptr %i.au, i64 252
  %i.ada = getelementptr inbounds nuw i8, ptr %i.au, i64 284
  store float %.0368.lcssa, ptr %i.ada, align 4, !tbaa !19
  store <8 x float> %i.acy, ptr %i.acz, align 4, !tbaa !19
  %i.adb = getelementptr inbounds nuw i8, ptr %i.au, i64 248
  store float %.0384.lcssa, ptr %i.adb, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge483
  %i.adc = load i32, ptr %i.b, align 4, !tbaa !28
  %i.add = mul nsw i32 %i.adc, %i.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.add
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
end_hunk_0
