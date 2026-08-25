Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_solve?download=true
inline.NumInlined: 760
inline.NumDeleted: 302
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK8PmeSolve25getCoulombEnergyAndVirialEP9PmeOutput:bb.a
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !18
  %i.bi = fadd float %i.av, %i.bh                 ; 2 uses
  store float %i.bi, ptr %i.k, align 4, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 260
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !18
  %i.bl = fadd float %i.au, %i.bk                 ; 2 uses
  store float %i.bl, ptr %i.n, align 4, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 264
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !18
  %i.bo = fadd float %i.at, %i.bn                 ; 2 uses
  store float %i.bo, ptr %i.p, align 4, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 268
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !18
  %i.br = fadd float %i.as, %i.bq                 ; 2 uses
  store float %i.br, ptr %i.t, align 4, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 272
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !18
  %i.bu = fadd float %i.ar, %i.bt                 ; 2 uses
  store float %i.bu, ptr %i.w, align 4, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 276
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !18
  %i.bx = fadd float %i.aq, %i.bw                 ; 2 uses
  store float %i.bx, ptr %i.y, align 4, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %i.az, i64 280
  %i.bz = load float, ptr %i.by, align 8, !tbaa !18
  %i.ca = fadd float %i.ap, %i.bz                 ; 2 uses
  store float %i.ca, ptr %i.ac, align 4, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 284
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !18
  %i.cd = fadd float %i.ao, %i.cc                 ; 2 uses
  store float %i.cd, ptr %i.af, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !121
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK8PmeSolve20getLJEnergyAndVirialEP9PmeOutput(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef writeonly captures(none) initializes((68, 108)) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.d = load float, ptr %i.c, align 8, !tbaa !122 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  store float %i.d, ptr %i.e, align 4, !tbaa !123
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 292
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load float, ptr %i.f, align 4, !tbaa !18 ; 2 uses
  store float %i.h, ptr %i.g, align 4, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.j = load float, ptr %i.i, align 8, !tbaa !18 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  store float %i.j, ptr %i.k, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 300
  %i.m = load float, ptr %i.l, align 4, !tbaa !18 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store float %i.m, ptr %i.n, align 4, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.q = load float, ptr %i.o, align 8, !tbaa !18 ; 2 uses
  store float %i.q, ptr %i.p, align 4, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 308
  %i.s = load float, ptr %i.r, align 4, !tbaa !18 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store float %i.s, ptr %i.t, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.v = load float, ptr %i.u, align 8, !tbaa !18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  store float %i.v, ptr %i.w, align 4, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = load float, ptr %i.x, align 4, !tbaa !18 ; 2 uses
  store float %i.z, ptr %i.y, align 4, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  store float %i.ab, ptr %i.ac, align 4, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 324
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !18 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store float %i.ae, ptr %i.af, align 4, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !86
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
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !82 ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 288
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !122
  %i.bc = fadd float %i.bb, %i.ax                 ; 2 uses
  store float %i.bc, ptr %i.e, align 4, !tbaa !123
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 292
  %i.be = load float, ptr %i.bd, align 4, !tbaa !18
  %i.bf = fadd float %i.aw, %i.be                 ; 2 uses
  store float %i.bf, ptr %i.g, align 4, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 296
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !18
  %i.bi = fadd float %i.av, %i.bh                 ; 2 uses
  store float %i.bi, ptr %i.k, align 4, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 300
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !18
  %i.bl = fadd float %i.au, %i.bk                 ; 2 uses
  store float %i.bl, ptr %i.n, align 4, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 304
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !18
  %i.bo = fadd float %i.at, %i.bn                 ; 2 uses
  store float %i.bo, ptr %i.p, align 4, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 308
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !18
  %i.br = fadd float %i.as, %i.bq                 ; 2 uses
  store float %i.br, ptr %i.t, align 4, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 312
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !18
  %i.bu = fadd float %i.ar, %i.bt                 ; 2 uses
  store float %i.bu, ptr %i.w, align 4, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 316
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !18
  %i.bx = fadd float %i.aq, %i.bw                 ; 2 uses
  store float %i.bx, ptr %i.y, align 4, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %i.bz = load float, ptr %i.by, align 8, !tbaa !18
  %i.ca = fadd float %i.ap, %i.bz                 ; 2 uses
  store float %i.ca, ptr %i.ac, align 4, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 324
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !18
  %i.cd = fadd float %i.ao, %i.cc                 ; 2 uses
  store float %i.cd, ptr %i.af, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !124
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN8PmeSolve15solveCoulombYZXERK9gmx_pme_tP9t_complexfbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(992) %1, ptr nofree noundef captures(none) %2, float noundef %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 3 uses
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  %i.c = alloca [3 x i32], align 4                ; 6 uses
  %i.d = alloca [3 x i32], align 4                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.f = load float, ptr %i.e, align 4, !tbaa !125 ; 2 uses
  %i.g = fmul float %i.f, %i.f
  %i.h = fpext float %i.g to double
  %i.i = fdiv double f0x4023BD3CC9BE45DE, %i.h
  %i.j = fptrunc double %i.i to float             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.l = load float, ptr %i.k, align 4, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = load i32, ptr %i.m, align 8, !tbaa !209  ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.p = load i32, ptr %i.o, align 4, !tbaa !210  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.r = load i32, ptr %i.q, align 8, !tbaa !211
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !212
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.w = call noundef i32 @_Z33gmx_parallel_3dfft_complex_limitsP18gmx_parallel_3dfftPiS1_S1_S1_(ptr noundef %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.y = load float, ptr %i.x, align 8, !tbaa !18 ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.aa = load float, ptr %i.z, align 4, !tbaa !18 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !18 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !18 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.ag = load float, ptr %i.af, align 4, !tbaa !18 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !18 ; 12 uses
  %i.aj = add nsw i32 %i.n, 1
  %i.ak = sdiv i32 %i.aj, 2                       ; 6 uses
  %i.al = add nsw i32 %i.p, 1
  %i.am = sdiv i32 %i.al, 2                       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !86
  %i.ap = load ptr, ptr %0, align 8, !tbaa !79    ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 3
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = sext i32 %5 to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !82 ; 11 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !13 ; 6 uses
  %i.az = ptrtoaddr ptr %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !13 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !13 ; 10 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64              ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !16 ; 16 uses
  %i.bj = insertelement <4 x ptr> poison, ptr %i.bb, i64 0
  %i.bk = insertelement <4 x ptr> %i.bj, ptr %i.bd, i64 1
  %i.bl = insertelement <4 x ptr> %i.bk, ptr %i.bf, i64 2
  %i.bm = insertelement <4 x ptr> %i.bl, ptr %i.bi, i64 3 ; 3 uses
  %i.bn = ptrtoaddr ptr %i.bi to i64              ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !16 ; 20 uses
  %i.bq = ptrtoaddr ptr %i.bp to i64              ; 11 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !16 ; 11 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !13 ; 5 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !75
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !75 ; 7 uses
  %i.ca = mul nsw i32 %i.bz, %i.bx                ; 3 uses
  %i.cb = mul nsw i32 %i.ca, %5
  %i.cc = sdiv i32 %i.cb, %i.au                   ; 3 uses
  %i.cd = add nsw i32 %5, 1
  %i.ce = mul nsw i32 %i.ca, %i.cd
  %i.cf = sdiv i32 %i.ce, %i.au                   ; 3 uses
  %i.cg = icmp slt i32 %i.cc, %i.cf
  br i1 %i.cg, label %.lr.ph482, label %._crit_edge483

.lr.ph482:                                        ; preds = %bb.a
  %i.ch = fpext float %i.l to double
  %i.ci = fdiv double f0x40615DEF44DEAD3D, %i.ch
  %i.cj = fptrunc double %i.ci to float
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !75 ; 2 uses
  %i.cm = fpext float %3 to double
  %i.cn = fmul double %i.cm, f0x400921FB54442D18  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !75 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.ct = add nsw i32 %i.r, 1
  %i.cu = sdiv i32 %i.ct, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !75
  %i.cx = load i32, ptr %i.d, align 4, !tbaa !75  ; 3 uses
  %factor.op.mul = mul i32 %i.cw, %i.cx           ; 2 uses
  %i.cy = load i32, ptr %i.c, align 4, !tbaa !75  ; 5 uses
  %i.cz = icmp slt i32 %i.cy, 1                   ; 8 uses
  %i.da = load i32, ptr %i.b, align 4, !tbaa !75  ; 3 uses
  %i.db = add i32 %i.da, %i.cy                    ; 3 uses
  %i.dc = fneg float %i.j                         ; 12 uses
  %i.dd = icmp slt i32 %i.ak, %i.db               ; 2 uses
  %i.de = add i32 %i.db, 15                       ; 2 uses
  %i.df = insertelement <16 x float> poison, float %i.cj, i64 0
  %i.dg = shufflevector <16 x float> %i.df, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dh = lshr i32 %i.de, 4
  %i.di = zext nneg i32 %i.dh to i64              ; 2 uses
  %.not10.i406 = icmp ult i32 %i.de, 16           ; 2 uses
  %i.dj = sext i32 %i.cy to i64                   ; 16 uses
  %i.dk = sext i32 %i.ak to i64                   ; 17 uses
  %i.dl = sext i32 %i.db to i64                   ; 15 uses
  %i.dm = add nsw i64 %i.dj, 1                    ; 2 uses
  %i.dn = add nsw i64 %i.dj, 1                    ; 2 uses
  br i1 %4, label %.lr.ph482.split.us.preheader, label %.lr.ph482.split.preheader

.lr.ph482.split.us.preheader:                     ; preds = %.lr.ph482
  %invariant.op1006 = add i64 %i.dj, 1
  %i.do = insertelement <16 x i64> poison, i64 %i.az, i64 0
  %i.dp = shufflevector <4 x ptr> %i.bm, <4 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = ptrtoaddr <16 x ptr> %i.dp to <16 x i64> ; 2 uses
  %i.dr = shufflevector <16 x i64> %i.do, <16 x i64> %i.dq, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 16, i32 16, i32 17, i32 17, i32 17, i32 17, i32 18>
  %i.ds = insertelement <16 x i64> %i.dq, i64 %i.bq, i64 4
  %i.dt = sub i64 %i.bg, %i.bq
  %diff.check931 = icmp ugt i64 %i.dt, -32
  %i.du = sub i64 %i.bn, %i.bq
  %diff.check935 = icmp ugt i64 %i.du, -32
  %broadcast.splatinsert949 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat950 = shufflevector <8 x float> %broadcast.splatinsert949, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert951 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat952 = shufflevector <8 x float> %broadcast.splatinsert951, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat954 = shufflevector <8 x float> %broadcast.splatinsert953, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert957 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat958 = shufflevector <8 x float> %broadcast.splatinsert957, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert963 = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat964 = shufflevector <8 x float> %broadcast.splatinsert963, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dv = sub nsw i64 %i.dl, %i.dk                ; 3 uses
  %min.iters.check862 = icmp ult i64 %i.dv, 16
  %i.dw = insertelement <16 x i64> poison, i64 %i.az, i64 0
  %i.dx = shufflevector <4 x ptr> %i.bm, <4 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dy = ptrtoaddr <16 x ptr> %i.dx to <16 x i64> ; 2 uses
  %i.dz = shufflevector <16 x i64> %i.dw, <16 x i64> %i.dy, <16 x i32> <i32 0, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ea = shufflevector <4 x ptr> %i.bm, <4 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eb = ptrtoaddr <16 x ptr> %i.ea to <16 x i64>
  %i.ec = shufflevector <16 x i64> %i.dz, <16 x i64> %i.eb, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 18>
  %i.ed = insertelement <16 x i64> %i.dy, i64 %i.bq, i64 4
  %i.ee = sub i64 %i.bg, %i.bq
  %diff.check851 = icmp ugt i64 %i.ee, -32
  %i.ef = sub i64 %i.bn, %i.bq
  %diff.check855 = icmp ugt i64 %i.ef, -32
  %n.vec864 = and i64 %i.dv, -8                   ; 3 uses
  %i.eg = add nsw i64 %n.vec864, %i.dk
  %broadcast.splatinsert869 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat870 = shufflevector <8 x i32> %broadcast.splatinsert869, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert871 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat872 = shufflevector <8 x float> %broadcast.splatinsert871, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert873 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat874 = shufflevector <8 x float> %broadcast.splatinsert873, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert875 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat876 = shufflevector <8 x float> %broadcast.splatinsert875, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert879 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat880 = shufflevector <8 x float> %broadcast.splatinsert879, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert885 = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat886 = shufflevector <8 x float> %broadcast.splatinsert885, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert887 = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat888 = shufflevector <8 x i32> %broadcast.splatinsert887, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction889 = add <8 x i32> %broadcast.splat888, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cmp.n897 = icmp eq i64 %i.dv, %n.vec864
  %i.eh = sub i64 %i.bg, %i.bv
  %diff.check787 = icmp ugt i64 %i.eh, -128
  %invariant.op1008.a = add i64 %i.dj, 1
  br label %.lr.ph482.split.us

.lr.ph482.split.preheader:                        ; preds = %.lr.ph482
  %i.ei = sub i64 %i.bq, %i.bn                    ; 2 uses
  %i.ej = sub nsw i64 %i.dl, %i.dk                ; 7 uses
  %6 = add nsw i64 %i.dj, 1
  %i.ek = add i64 %i.ei, -1
  %diff.check662 = icmp ult i64 %i.ek, 127
  %broadcast.splatinsert677 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat678 = shufflevector <8 x float> %broadcast.splatinsert677, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert679 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat680 = shufflevector <8 x float> %broadcast.splatinsert679, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert681 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat682 = shufflevector <8 x float> %broadcast.splatinsert681, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert685 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat686 = shufflevector <8 x float> %broadcast.splatinsert685, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert691 = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat692 = shufflevector <8 x float> %broadcast.splatinsert691, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert722 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat723 = shufflevector <8 x float> %broadcast.splatinsert722, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert724 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat725 = shufflevector <8 x float> %broadcast.splatinsert724, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert726 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat727 = shufflevector <8 x float> %broadcast.splatinsert726, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert730 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat731 = shufflevector <8 x float> %broadcast.splatinsert730, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert736 = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat737 = shufflevector <8 x float> %broadcast.splatinsert736, <8 x float> poison, <8 x i32> zeroinitializer
  %min.iters.check584 = icmp ult i64 %i.ej, 8
  %i.el = add i64 %i.ei, -1
  %diff.check = icmp ult i64 %i.el, 127
  %min.iters.check586 = icmp ult i64 %i.ej, 32
  %i.em = and i64 %i.ej, 24
  %n.vec588 = and i64 %i.ej, -32                  ; 4 uses
  %i.en = add nsw i64 %n.vec588, %i.dk            ; 2 uses
  %broadcast.splatinsert591 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat592 = shufflevector <8 x i32> %broadcast.splatinsert591, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert593.a = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat594.a = shufflevector <8 x float> %broadcast.splatinsert593.a, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert595 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat596 = shufflevector <8 x float> %broadcast.splatinsert595, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert597 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat598 = shufflevector <8 x float> %broadcast.splatinsert597, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert601 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat602 = shufflevector <8 x float> %broadcast.splatinsert601, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert607.a = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat608.a = shufflevector <8 x float> %broadcast.splatinsert607.a, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert609.a = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat610.a = shufflevector <8 x i32> %broadcast.splatinsert609.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat610.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.op = sub <8 x i32> splat (i32 8), %broadcast.splat592
  %invariant.op1002 = sub <8 x i32> splat (i32 16), %broadcast.splat592
  %invariant.op1004 = sub <8 x i32> splat (i32 24), %broadcast.splat592
  %cmp.n619 = icmp eq i64 %i.ej, %n.vec588
  %min.epilog.iters.check624 = icmp eq i64 %i.em, 0
  %n.vec626 = and i64 %i.ej, -8                   ; 3 uses
  %i.eo = add nsw i64 %n.vec626, %i.dk
  %broadcast.splatinsert631.a = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat632.a = shufflevector <8 x i32> %broadcast.splatinsert631.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert633.a = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat634.a = shufflevector <8 x float> %broadcast.splatinsert633.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert635 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat636 = shufflevector <8 x float> %broadcast.splatinsert635, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert637 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat638 = shufflevector <8 x float> %broadcast.splatinsert637, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert641 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat642 = shufflevector <8 x float> %broadcast.splatinsert641, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert647.a = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat648.a = shufflevector <8 x float> %broadcast.splatinsert647.a, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n659 = icmp eq i64 %i.ej, %n.vec626
  %i.ep = add nsw i64 %i.dl, -1
  br label %.lr.ph482.split

.lr.ph482.split.us:                               ; preds = %.lr.ph482.split.us.preheader, %.loopexit.us
  %.0368480.us = phi float [ %.1.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0369479.us = phi float [ %.1370.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0372478.us = phi float [ %.1373.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0375477.us = phi float [ %.1376.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0378476.us = phi float [ %.1379.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0381475.us = phi float [ %.1382.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0384474.us = phi float [ %.1385.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0389473.us = phi i32 [ %i.mc, %.loopexit.us ], [ %i.cc, %.lr.ph482.split.us.preheader ] ; 3 uses
  %i.eq = sdiv i32 %.0389473.us, %i.bz            ; 3 uses
  %i.er = mul nsw i32 %i.eq, %i.bz                ; 0 uses
  %.recomposed = srem i32 %.0389473.us, %i.bz     ; 2 uses
  %i.es = add nsw i32 %i.cl, %i.eq                ; 4 uses
  %i.et = icmp slt i32 %i.es, %i.am
  %i.eu = select i1 %i.et, i32 0, i32 %i.p
  %.0387.in.us = sub nsw i32 %i.es, %i.eu
  %.0387.us = sitofp i32 %.0387.in.us to float    ; 4 uses
  %i.ev = sext i32 %i.es to i64
  %i.ew = load ptr, ptr %i.cp, align 8, !tbaa !13
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ev
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !18
  %i.ez = fpext float %i.ey to double
  %i.fa = fmul double %i.cn, %i.ez
  %i.fb = fptrunc double %i.fa to float           ; 4 uses
  %i.fc = add nsw i32 %i.cr, %.recomposed         ; 5 uses
  %i.fd = sitofp i32 %i.fc to float               ; 4 uses
  %i.fe = sext i32 %i.fc to i64
  %i.ff = load ptr, ptr %i.cs, align 8, !tbaa !13
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fe
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !18 ; 4 uses
  %i.fi = icmp eq i32 %i.fc, 0
  %i.fj = icmp eq i32 %i.fc, %i.cu
  %or.cond = select i1 %i.fi, i1 true, i1 %i.fj
  %.0.us = select i1 %or.cond, float 5.000000e-01, float 1.000000e+00
  %.reass.us = mul i32 %factor.op.mul, %i.eq
  %i.fk = sext i32 %.reass.us to i64              ; 2 uses
  %i.fl = getelementptr [8 x i8], ptr %2, i64 %i.fk
  %i.fm = mul i32 %i.cx, %.recomposed
  %i.fn = sext i32 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr [8 x i8], ptr %i.fl, i64 %i.fn
  %i.fp = icmp slt i32 %i.es, 1                   ; 5 uses
  %i.fq = icmp slt i32 %i.fc, 1                   ; 5 uses
  %i.fr = and i1 %i.fp, %i.fq
  %or.cond3.not.us = and i1 %i.fr, %i.cz          ; 2 uses
  %.0393.idx.us = select i1 %or.cond3.not.us, i64 8, i64 0 ; 2 uses
  %.0393.us = getelementptr i8, ptr %i.fo, i64 %.0393.idx.us ; 6 uses
  %i.fs = zext i1 %or.cond3.not.us to i32         ; 2 uses
  %.0388.us = add nsw i32 %i.cy, %i.fs
  %i.ft = icmp slt i32 %.0388.us, %i.ak
  br i1 %i.ft, label %.lr.ph449.us, label %.preheader437.us

scalar.ph941:                                     ; preds = %scalar.ph941.preheader, %scalar.ph941
  %indvars.iv516 = phi i64 [ %indvars.iv.next517, %scalar.ph941 ], [ %indvars.iv516.ph, %scalar.ph941.preheader ] ; 9 uses
  %i.fu = trunc nsw i64 %indvars.iv516 to i32
  %i.fv = sitofp i32 %i.fu to float               ; 3 uses
  %i.fw = fmul float %i.y, %i.fv                  ; 3 uses
  %i.fx = call float @llvm.fmuladd.f32(float %i.fv, float %i.aa, float %i.ng) ; 3 uses
  %i.fy = call float @llvm.fmuladd.f32(float %i.fv, float %i.ae, float %i.nh)
  %i.fz = call float @llvm.fmuladd.f32(float %i.fd, float %i.ai, float %i.fy) ; 3 uses
  %i.ga = fmul float %i.fx, %i.fx
  %i.gb = call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.ga)
  %i.gc = call float @llvm.fmuladd.f32(float %i.fz, float %i.fz, float %i.gb) ; 3 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv516
  store float %i.fw, ptr %i.gd, align 4, !tbaa !18
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv516
  store float %i.fx, ptr %i.ge, align 4, !tbaa !18
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv516
  store float %i.fz, ptr %i.gf, align 4, !tbaa !18
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv516
  store float %i.gc, ptr %i.gg, align 4, !tbaa !18
  %i.gh = fmul float %i.fh, %i.gc
  %i.gi = fmul float %i.gh, %i.fb
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv516
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !18
  %i.gl = fmul float %i.gi, %i.gk
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv516
  store float %i.gl, ptr %i.gm, align 4, !tbaa !18
  %i.gn = fmul float %i.gc, %i.dc
  %i.go = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv516
  store float %i.gn, ptr %i.go, align 4, !tbaa !18
  %indvars.iv.next517 = add nsw i64 %indvars.iv516, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next517, %i.dk
  br i1 %7, label %scalar.ph941, label %.preheader437.us, !llvm.loop !215

scalar.ph861:                                     ; preds = %scalar.ph861.preheader, %scalar.ph861
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %scalar.ph861 ], [ %indvars.iv518.ph, %scalar.ph861.preheader ] ; 9 uses
  %i.gp = trunc i64 %indvars.iv518 to i32
  %i.gq = sub i32 %i.gp, %i.n
  %i.gr = sitofp i32 %i.gq to float               ; 3 uses
  %i.gs = fmul float %i.y, %i.gr                  ; 3 uses
  %i.gt = call float @llvm.fmuladd.f32(float %i.gr, float %i.aa, float %i.ot) ; 3 uses
  %i.gu = call float @llvm.fmuladd.f32(float %i.gr, float %i.ae, float %i.ou)
  %i.gv = call float @llvm.fmuladd.f32(float %i.fd, float %i.ai, float %i.gu) ; 3 uses
  %i.gw = fmul float %i.gt, %i.gt
  %i.gx = call float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gw)
  %i.gy = call float @llvm.fmuladd.f32(float %i.gv, float %i.gv, float %i.gx) ; 3 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv518
  store float %i.gs, ptr %i.gz, align 4, !tbaa !18
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv518
  store float %i.gt, ptr %i.ha, align 4, !tbaa !18
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv518
  store float %i.gv, ptr %i.hb, align 4, !tbaa !18
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv518
  store float %i.gy, ptr %i.hc, align 4, !tbaa !18
  %i.hd = fmul float %i.fh, %i.gy
  %i.he = fmul float %i.hd, %i.fb
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %indvars.iv518
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !18
  %i.hh = fmul float %i.he, %i.hg
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv518
  store float %i.hh, ptr %i.hi, align 4, !tbaa !18
  %i.hj = fmul float %i.gy, %i.dc
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv518
  store float %i.hj, ptr %i.hk, align 4, !tbaa !18
  %indvars.iv.next519 = add nsw i64 %indvars.iv518, 1 ; 2 uses
  %exitcond522.not = icmp eq i64 %indvars.iv.next519, %i.dl
  br i1 %exitcond522.not, label %.preheader436.us, label %scalar.ph861, !llvm.loop !216

.lr.ph453.us:                                     ; preds = %.lr.ph453.us.preheader, %.lr.ph453.us
  %indvars.iv525 = phi i64 [ %indvars.iv.next526, %.lr.ph453.us ], [ %indvars.iv525.ph, %.lr.ph453.us.preheader ] ; 3 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv525
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !18
  %i.hn = fdiv float 1.000000e+00, %i.hm
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %indvars.iv525
  store float %i.hn, ptr %i.ho, align 4, !tbaa !18
  %indvars.iv.next526 = add nsw i64 %indvars.iv525, 1 ; 2 uses
  %i.hp = icmp slt i64 %indvars.iv.next526, %i.dl
  br i1 %i.hp, label %.lr.ph453.us, label %._crit_edge454.us, !llvm.loop !217

._crit_edge454.us:                                ; preds = %.lr.ph453.us, %middle.block802, %vec.epilog.middle.block816, %.preheader436.us
  br i1 %.not10.i406, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %._crit_edge454.us
  %i.hq = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> splat (float f0x3FB8AA3B), <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.hr = fneg <16 x float> %i.hq
  %i.hs = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.hr, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 2.000000e+00))
  %i.ht = fmul <16 x float> %i.hq, %i.hs
  %i.hu = fmul <16 x float> %i.ht, splat (float f0xCF000000)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.us
  %.011.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %i.iv, %bb.b ] ; 2 uses
  %.idx.i.i.us = shl nuw nsw i64 %.011.i.us, 6    ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i.us
  %.val.i.i.us = load <16 x float>, ptr %i.hv, align 64, !tbaa !218 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i.us
  %.val.i17.i.us = load <16 x float>, ptr %i.hw, align 64, !tbaa !218
  %i.hx = call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %.val.i17.i.us, <16 x float> %i.hu, i32 4) ; 2 uses
  %i.hy = fmul <16 x float> %i.hx, splat (float f0x3FB8AA3B) ; 2 uses
  %i.hz = call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.hy, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ia = add <16 x i32> %i.hz, splat (i32 127)
  %i.ib = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ia, <16 x i32> zeroinitializer)
  %i.ic = shl <16 x i32> %i.ib, splat (i32 23)
  %i.id = bitcast <16 x i32> %i.ic to <16 x float> ; 2 uses
  %i.ie = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.hy, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.if = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ie, <16 x float> splat (float f0xBF317200), <16 x float> %i.hx)
  %i.ig = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ie, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.if) ; 7 uses
  %i.ih = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ig, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.ii = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ih, <16 x float> %i.ig, <16 x float> splat (float f0x3D2AAF4C))
  %i.ij = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ii, <16 x float> %i.ig, <16 x float> splat (float f0x3E2AAA5E))
  %i.ik = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ij, <16 x float> %i.ig, <16 x float> splat (float f0x3EFFFFFB))
  %i.il = fmul <16 x float> %i.ig, %i.ig
  %i.im = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.il, <16 x float> %i.ik, <16 x float> %i.ig)
  %i.in = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.im, <16 x float> %i.id, <16 x float> %i.id)
  %i.io = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %.val.i.i.us, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ip = fneg <16 x float> %i.io
  %i.iq = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ip, <16 x float> %.val.i.i.us, <16 x float> splat (float 2.000000e+00))
  %i.ir = fmul <16 x float> %i.io, %i.iq
  %i.is = fmul <16 x float> %i.dg, %i.ir
  %i.it = fmul <16 x float> %i.is, %i.in
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i.us
  store <16 x float> %i.it, ptr %i.iu, align 64, !tbaa !218
  %i.iv = add nuw nsw i64 %.011.i.us, 1           ; 2 uses
  %.not.i.us = icmp eq i64 %i.iv, %i.di
  br i1 %.not.i.us, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us, label %bb.b, !llvm.loop !219

_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us: ; preds = %bb.b, %._crit_edge454.us
  br i1 %i.md, label %.lr.ph457.us.preheader, label %.loopexit.us

.lr.ph457.us.preheader:                           ; preds = %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us
  %i.iw = and i1 %i.fq, %i.fp
  %i.ix = and i1 %i.iw, %i.cz
  %umin528 = zext i1 %i.ix to i64                 ; 4 uses
  %i.iy = add nsw i64 %i.dj, %umin528             ; 6 uses
  %.reass1009.a = add i64 %umin528, %invariant.op1008.a
  %i.iz = call i64 @llvm.smax.i64(i64 %.reass1009.a, i64 %i.dl)
  %i.ja = add nsw i64 %umin528, %i.dj
  %i.jb = sub i64 %i.iz, %i.ja                    ; 3 uses
  %min.iters.check768 = icmp ult i64 %i.jb, 8
  br i1 %min.iters.check768, label %.lr.ph457.us.preheader987, label %vector.memcheck750

vector.memcheck750:                               ; preds = %.lr.ph457.us.preheader
  %i.jc = add nsw i64 %i.dm, %umin528
  %smax751 = call i64 @llvm.smax.i64(i64 %i.jc, i64 %i.dl) ; 2 uses
  %i.jd = add i64 %smax751, %i.fk
  %i.je = add i64 %i.jd, %i.fn
  %i.jf = shl nsw i64 %i.je, 3
  %i.jg = add i64 %.0393.idx.us, %i.jf
  %i.jh = shl nsw i64 %i.iy, 3
  %i.ji = sub i64 %i.jg, %i.jh
  %scevgep752 = getelementptr i8, ptr %2, i64 %i.ji ; 2 uses
  %i.jj = shl nsw i64 %i.iy, 2                    ; 2 uses
  %scevgep753 = getelementptr i8, ptr %i.bp, i64 %i.jj ; 2 uses
  %i.jk = shl nsw i64 %smax751, 2                 ; 2 uses
  %scevgep754 = getelementptr i8, ptr %i.bp, i64 %i.jk ; 2 uses
  %scevgep755 = getelementptr i8, ptr %i.bs, i64 %i.jj ; 2 uses
  %scevgep756 = getelementptr i8, ptr %i.bs, i64 %i.jk ; 2 uses
  %bound0757 = icmp ult ptr %.0393.us, %scevgep754
  %bound1758 = icmp ult ptr %scevgep753, %scevgep752
  %found.conflict759 = and i1 %bound0757, %bound1758
  %bound0760 = icmp ult ptr %.0393.us, %scevgep756
  %bound1761 = icmp ult ptr %scevgep755, %scevgep752
  %found.conflict762 = and i1 %bound0760, %bound1761
  %conflict.rdx763 = or i1 %found.conflict759, %found.conflict762
  %bound0764 = icmp ult ptr %scevgep753, %scevgep756
  %bound1765 = icmp ult ptr %scevgep755, %scevgep754
  %found.conflict766 = and i1 %bound0764, %bound1765
  %conflict.rdx767 = or i1 %conflict.rdx763, %found.conflict766
  br i1 %conflict.rdx767, label %.lr.ph457.us.preheader987, label %vector.ph769

vector.ph769:                                     ; preds = %vector.memcheck750
  %n.vec770 = and i64 %i.jb, -8                   ; 4 uses
  %i.jl = add i64 %i.iy, %n.vec770
  %i.jm = shl i64 %n.vec770, 3
  %i.jn = getelementptr i8, ptr %.0393.us, i64 %i.jm
  br label %vector.body771

vector.body771:                                   ; preds = %vector.body771, %vector.ph769
  %index772 = phi i64 [ 0, %vector.ph769 ], [ %index.next781, %vector.body771 ] ; 3 uses
  %i.jo = add i64 %i.iy, %index772                ; 2 uses
  %i.jp = shl i64 %index772, 3
  %next.gep773 = getelementptr i8, ptr %.0393.us, i64 %i.jp ; 2 uses
  %wide.vec774 = load <16 x float>, ptr %next.gep773, align 4, !tbaa !18, !alias.scope !220, !noalias !223 ; 2 uses
  %strided.vec775 = shufflevector <16 x float> %wide.vec774, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec776 = shufflevector <16 x float> %wide.vec774, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.jo ; 2 uses
  %wide.load777 = load <8 x float>, ptr %i.jq, align 4, !tbaa !18, !alias.scope !226 ; 2 uses
  %i.jr = fmul <8 x float> %strided.vec775, %wide.load777
  %i.js = fmul <8 x float> %strided.vec776, %wide.load777
  %interleaved.vec779 = shufflevector <8 x float> %i.jr, <8 x float> %i.js, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec779, ptr %next.gep773, align 4, !tbaa !18, !alias.scope !220, !noalias !223
  %i.jt = fmul <8 x float> %strided.vec776, %strided.vec776
  %i.ju = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec775, <8 x float> %strided.vec775, <8 x float> %i.jt)
  %i.jv = fmul <8 x float> %i.ju, splat (float 2.000000e+00)
  %wide.load780 = load <8 x float>, ptr %i.jq, align 4, !tbaa !18, !alias.scope !226
  %i.jw = fmul <8 x float> %i.jv, %wide.load780
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.jo
  store <8 x float> %i.jw, ptr %i.jx, align 4, !tbaa !18, !alias.scope !227, !noalias !226
  %index.next781 = add nuw i64 %index772, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next781, %n.vec770
  br i1 %i.jy, label %middle.block782, label %vector.body771, !llvm.loop !228

middle.block782:                                  ; preds = %vector.body771
  %cmp.n783 = icmp eq i64 %i.jb, %n.vec770
  br i1 %cmp.n783, label %.lr.ph466.us.preheader, label %.lr.ph457.us.preheader987

.lr.ph457.us.preheader987:                        ; preds = %vector.memcheck750, %.lr.ph457.us.preheader, %middle.block782
  %indvars.iv529.ph = phi i64 [ %i.iy, %vector.memcheck750 ], [ %i.iy, %.lr.ph457.us.preheader ], [ %i.jl, %middle.block782 ]
  %.1394455.us.ph = phi ptr [ %.0393.us, %vector.memcheck750 ], [ %.0393.us, %.lr.ph457.us.preheader ], [ %i.jn, %middle.block782 ]
  br label %.lr.ph457.us

.lr.ph457.us:                                     ; preds = %.lr.ph457.us.preheader987, %.lr.ph457.us
  %indvars.iv529 = phi i64 [ %indvars.iv.next530, %.lr.ph457.us ], [ %indvars.iv529.ph, %.lr.ph457.us.preheader987 ] ; 3 uses
  %.1394455.us = phi ptr [ %i.kn, %.lr.ph457.us ], [ %.1394455.us.ph, %.lr.ph457.us.preheader987 ] ; 4 uses
  %i.jz = load float, ptr %.1394455.us, align 4, !tbaa !229 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.1394455.us, i64 4 ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !231 ; 3 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv529 ; 3 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !18
  %i.ke = fmul float %i.jz, %i.kd
  store float %i.ke, ptr %.1394455.us, align 4, !tbaa !229
  %i.kf = load float, ptr %i.kc, align 4, !tbaa !18
  %i.kg = fmul float %i.kb, %i.kf
  store float %i.kg, ptr %i.ka, align 4, !tbaa !231
  %i.kh = fmul float %i.kb, %i.kb
  %i.ki = call float @llvm.fmuladd.f32(float %i.jz, float %i.jz, float %i.kh)
  %i.kj = fmul float %i.ki, 2.000000e+00
  %i.kk = load float, ptr %i.kc, align 4, !tbaa !18
  %i.kl = fmul float %i.kj, %i.kk
  %i.km = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv529
  store float %i.kl, ptr %i.km, align 4, !tbaa !18
  %indvars.iv.next530 = add nsw i64 %indvars.iv529, 1 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.1394455.us, i64 8
  %i.ko = icmp slt i64 %indvars.iv.next530, %i.dl
  br i1 %i.ko, label %.lr.ph457.us, label %.lr.ph466.us.preheader, !llvm.loop !232

.lr.ph466.us:                                     ; preds = %.lr.ph466.us.preheader, %.lr.ph466.us
  %indvars.iv533 = phi i64 [ %i.mb, %.lr.ph466.us.preheader ], [ %indvars.iv.next534, %.lr.ph466.us ] ; 7 uses
  %.1465.us = phi float [ %.0368480.us, %.lr.ph466.us.preheader ], [ %i.lx, %.lr.ph466.us ]
  %.1370464.us = phi float [ %.0369479.us, %.lr.ph466.us.preheader ], [ %i.lu, %.lr.ph466.us ]
  %.1373463.us = phi float [ %.0372478.us, %.lr.ph466.us.preheader ], [ %i.lt, %.lr.ph466.us ]
  %.1376462.us = phi float [ %.0375477.us, %.lr.ph466.us.preheader ], [ %i.ls, %.lr.ph466.us ]
  %.1379461.us = phi float [ %.0378476.us, %.lr.ph466.us.preheader ], [ %i.lr, %.lr.ph466.us ]
  %.1382460.us = phi float [ %.0381475.us, %.lr.ph466.us.preheader ], [ %i.lq, %.lr.ph466.us ]
  %.1385459.us = phi float [ %.0384474.us, %.lr.ph466.us.preheader ], [ %i.ld, %.lr.ph466.us ]
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv533
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !18
  %i.kr = fmul float %.0.us, %i.kq                ; 3 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv533
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !18
  %i.ku = fmul float %i.kt, %i.j
  %i.kv = fpext float %i.ku to double
  %i.kw = fadd double %i.kv, 1.000000e+00
  %i.kx = fmul double %i.kw, 2.000000e+00
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %indvars.iv533
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !18
  %i.la = fpext float %i.kz to double
  %i.lb = fmul double %i.kx, %i.la
  %i.lc = fptrunc double %i.lb to float
  %i.ld = fadd float %.1385459.us, %i.kr          ; 2 uses
  %i.le = fmul float %i.kr, %i.lc                 ; 3 uses
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv533
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !18 ; 2 uses
  %i.lh = fmul float %i.lg, %i.le                 ; 3 uses
  %i.li = fneg float %i.kr                        ; 3 uses
  %i.lj = call float @llvm.fmuladd.f32(float %i.lh, float %i.lg, float %i.li)
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv533
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !18 ; 3 uses
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv533
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !18 ; 4 uses
  %i.lo = fmul float %i.ll, %i.le                 ; 2 uses
  %i.lp = call float @llvm.fmuladd.f32(float %i.lo, float %i.ll, float %i.li)
  %i.lq = fadd float %.1382460.us, %i.lj          ; 2 uses
  %i.lr = call float @llvm.fmuladd.f32(float %i.lh, float %i.ll, float %.1379461.us) ; 2 uses
  %i.ls = call float @llvm.fmuladd.f32(float %i.lh, float %i.ln, float %.1376462.us) ; 2 uses
  %i.lt = fadd float %.1373463.us, %i.lp          ; 2 uses
  %i.lu = call float @llvm.fmuladd.f32(float %i.lo, float %i.ln, float %.1370464.us) ; 2 uses
  %i.lv = fmul float %i.ln, %i.le
  %i.lw = call float @llvm.fmuladd.f32(float %i.lv, float %i.ln, float %i.li)
  %i.lx = fadd float %.1465.us, %i.lw             ; 2 uses
  %indvars.iv.next534 = add nsw i64 %indvars.iv533, 1 ; 2 uses
  %i.ly = icmp slt i64 %indvars.iv.next534, %i.dl
  br i1 %i.ly, label %.lr.ph466.us, label %.loopexit.us, !llvm.loop !233

.lr.ph466.us.preheader:                           ; preds = %.lr.ph457.us, %middle.block782
  %i.lz = and i1 %i.fq, %i.fp
  %i.ma = and i1 %i.lz, %i.cz
  %umin532 = zext i1 %i.ma to i64
  %i.mb = add nsw i64 %i.dj, %umin532
  br label %.lr.ph466.us

.loopexit.us:                                     ; preds = %.lr.ph466.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us
  %.1385.lcssa.us = phi float [ %.0384474.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.ld, %.lr.ph466.us ] ; 2 uses
  %.1382.lcssa.us = phi float [ %.0381475.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.lq, %.lr.ph466.us ] ; 2 uses
  %.1379.lcssa.us = phi float [ %.0378476.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.lr, %.lr.ph466.us ] ; 2 uses
  %.1376.lcssa.us = phi float [ %.0375477.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.ls, %.lr.ph466.us ] ; 2 uses
  %.1373.lcssa.us = phi float [ %.0372478.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.lt, %.lr.ph466.us ] ; 2 uses
  %.1370.lcssa.us = phi float [ %.0369479.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.lu, %.lr.ph466.us ] ; 2 uses
  %.1.lcssa.us = phi float [ %.0368480.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.lx, %.lr.ph466.us ] ; 2 uses
  %i.mc = add nsw i32 %.0389473.us, 1             ; 2 uses
  %exitcond535.not = icmp eq i32 %i.mc, %i.cf
  br i1 %exitcond535.not, label %._crit_edge483.loopexit, label %.lr.ph482.split.us, !llvm.loop !234

.preheader436.us:                                 ; preds = %scalar.ph861, %middle.block896, %.preheader437.us
  %i.md = icmp sgt i32 %i.da, %i.fs               ; 2 uses
  br i1 %i.md, label %iter.check806, label %._crit_edge454.us

iter.check806:                                    ; preds = %.preheader436.us
  %i.me = and i1 %i.fq, %i.fp
  %i.mf = and i1 %i.me, %i.cz
  %umin524 = zext i1 %i.mf to i64                 ; 3 uses
  %i.mg = add nsw i64 %i.dj, %umin524             ; 5 uses
  %i.mh = add nsw i64 %i.dn, %umin524
  %smax788 = call i64 @llvm.smax.i64(i64 %i.mh, i64 %i.dl)
  %i.mi = add nsw i64 %i.dj, %umin524
  %i.mj = sub i64 %smax788, %i.mi                 ; 7 uses
  %min.iters.check790 = icmp ult i64 %i.mj, 4
  %or.cond977 = select i1 %min.iters.check790, i1 true, i1 %diff.check787
  br i1 %or.cond977, label %.lr.ph453.us.preheader, label %vector.main.loop.iter.check791

vector.main.loop.iter.check791:                   ; preds = %iter.check806
  %min.iters.check792 = icmp ult i64 %i.mj, 32
  br i1 %min.iters.check792, label %vec.epilog.ph810, label %vector.ph793

vector.ph793:                                     ; preds = %vector.main.loop.iter.check791
  %i.mk = and i64 %i.mj, 28
  %n.vec794 = and i64 %i.mj, -32                  ; 4 uses
  %i.ml = add i64 %i.mg, %n.vec794
  br label %vector.body795

vector.body795:                                   ; preds = %vector.body795, %vector.ph793
  %index796 = phi i64 [ 0, %vector.ph793 ], [ %index.next801, %vector.body795 ] ; 2 uses
  %i.mm = add i64 %i.mg, %index796                ; 2 uses
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.mm ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 96
  %wide.load797 = load <8 x float>, ptr %i.mn, align 4, !tbaa !18
  %wide.load798 = load <8 x float>, ptr %i.mo, align 4, !tbaa !18
  %wide.load799 = load <8 x float>, ptr %i.mp, align 4, !tbaa !18
  %wide.load800 = load <8 x float>, ptr %i.mq, align 4, !tbaa !18
  %i.mr = fdiv <8 x float> splat (float 1.000000e+00), %wide.load797
  %i.ms = fdiv <8 x float> splat (float 1.000000e+00), %wide.load798
  %i.mt = fdiv <8 x float> splat (float 1.000000e+00), %wide.load799
  %i.mu = fdiv <8 x float> splat (float 1.000000e+00), %wide.load800
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.mm ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 64
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 96
  store <8 x float> %i.mr, ptr %i.mv, align 4, !tbaa !18
  store <8 x float> %i.ms, ptr %i.mw, align 4, !tbaa !18
  store <8 x float> %i.mt, ptr %i.mx, align 4, !tbaa !18
  store <8 x float> %i.mu, ptr %i.my, align 4, !tbaa !18
  %index.next801 = add nuw i64 %index796, 32      ; 2 uses
  %i.mz = icmp eq i64 %index.next801, %n.vec794
  br i1 %i.mz, label %middle.block802, label %vector.body795, !llvm.loop !235

middle.block802:                                  ; preds = %vector.body795
  %cmp.n803 = icmp eq i64 %i.mj, %n.vec794
  br i1 %cmp.n803, label %._crit_edge454.us, label %vec.epilog.iter.check808

vec.epilog.iter.check808:                         ; preds = %middle.block802
  %min.epilog.iters.check809 = icmp eq i64 %i.mk, 0
  br i1 %min.epilog.iters.check809, label %.lr.ph453.us.preheader, label %vec.epilog.ph810, !prof !236

vec.epilog.ph810:                                 ; preds = %vector.main.loop.iter.check791, %vec.epilog.iter.check808
  %vec.epilog.resume.val804 = phi i64 [ %n.vec794, %vec.epilog.iter.check808 ], [ 0, %vector.main.loop.iter.check791 ]
  %n.vec811 = and i64 %i.mj, -4                   ; 3 uses
  %i.na = add i64 %i.mg, %n.vec811
  br label %vec.epilog.vector.body812

vec.epilog.vector.body812:                        ; preds = %vec.epilog.vector.body812, %vec.epilog.ph810
  %index813 = phi i64 [ %vec.epilog.resume.val804, %vec.epilog.ph810 ], [ %index.next815, %vec.epilog.vector.body812 ] ; 2 uses
  %i.nb = add i64 %i.mg, %index813                ; 2 uses
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.nb
  %wide.load814 = load <4 x float>, ptr %i.nc, align 4, !tbaa !18
  %i.nd = fdiv <4 x float> splat (float 1.000000e+00), %wide.load814
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.nb
  store <4 x float> %i.nd, ptr %i.ne, align 4, !tbaa !18
  %index.next815 = add nuw i64 %index813, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next815, %n.vec811
  br i1 %i.nf, label %vec.epilog.middle.block816, label %vec.epilog.vector.body812, !llvm.loop !237

vec.epilog.middle.block816:                       ; preds = %vec.epilog.vector.body812
  %cmp.n817 = icmp eq i64 %i.mj, %n.vec811
  br i1 %cmp.n817, label %._crit_edge454.us, label %.lr.ph453.us.preheader

.lr.ph453.us.preheader:                           ; preds = %iter.check806, %vec.epilog.iter.check808, %vec.epilog.middle.block816
  %indvars.iv525.ph = phi i64 [ %i.mg, %iter.check806 ], [ %i.ml, %vec.epilog.iter.check808 ], [ %i.na, %vec.epilog.middle.block816 ]
  br label %.lr.ph453.us

.preheader437.us:                                 ; preds = %scalar.ph941, %middle.block974, %.lr.ph482.split.us
  br i1 %i.dd, label %.lr.ph451.us, label %.preheader436.us

.lr.ph449.us:                                     ; preds = %.lr.ph482.split.us
  %i.ng = fmul float %i.ac, %.0387.us             ; 2 uses
  %i.nh = fmul float %i.ag, %.0387.us             ; 2 uses
  %i.ni = load ptr, ptr %i.co, align 8, !tbaa !13 ; 3 uses
  %i.nj = and i1 %i.fq, %i.fp
  %i.nk = and i1 %i.nj, %i.cz
  %umin515 = zext i1 %i.nk to i64                 ; 3 uses
  %i.nl = add nsw i64 %i.dj, %umin515             ; 5 uses
  %.reass1007 = add i64 %umin515, %invariant.op1006
  %8 = call i64 @llvm.smax.i64(i64 %.reass1007, i64 %i.dk)
  %9 = add nsw i64 %umin515, %i.dj
  %10 = sub i64 %8, %9                            ; 3 uses
  %min.iters.check942 = icmp ult i64 %10, 24
  br i1 %min.iters.check942, label %scalar.ph941.preheader, label %vector.memcheck899

vector.memcheck899:                               ; preds = %.lr.ph449.us
  %i.nm = ptrtoaddr ptr %i.ni to i64              ; 4 uses
  %i.nn = insertelement <16 x i64> %i.ds, i64 %i.nm, i64 5
  %i.no = shufflevector <16 x i64> %i.nn, <16 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 1, i32 2, i32 3, i32 4, i32 5, i32 2, i32 3, i32 4, i32 5, i32 3>
  %i.np = sub <16 x i64> %i.dr, %i.no
  %i.nq = icmp ugt <16 x i64> %i.np, splat (i64 -32)
  %i.nr = sub i64 %i.bg, %i.nm
  %diff.check933 = icmp ugt i64 %i.nr, -32
  %i.ns = sub i64 %i.nm, %i.bn
  %diff.check937 = icmp ugt i64 %i.ns, -32
  %i.nt = sub i64 %i.nm, %i.bq
  %diff.check939 = icmp ugt i64 %i.nt, -32
  %i.nu = bitcast <16 x i1> %i.nq to i16
  %i.nv = icmp ne i16 %i.nu, 0
  %op.rdx982.a = or i1 %i.nv, %diff.check931
  %op.rdx983.a = or i1 %diff.check933, %diff.check935
  %op.rdx984.a = or i1 %diff.check937, %diff.check939
  %op.rdx985.a = or i1 %op.rdx982.a, %op.rdx983.a
  %op.rdx986 = or i1 %op.rdx985.a, %op.rdx984.a
  br i1 %op.rdx986, label %scalar.ph941.preheader, label %vector.ph943

vector.ph943:                                     ; preds = %vector.memcheck899
  %n.vec944 = and i64 %10, -8                     ; 3 uses
  %i.nw = add i64 %i.nl, %n.vec944
  %broadcast.splatinsert945 = insertelement <8 x float> poison, float %i.ng, i64 0
  %broadcast.splat946 = shufflevector <8 x float> %broadcast.splatinsert945, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert947 = insertelement <8 x float> poison, float %i.nh, i64 0
  %broadcast.splat948 = shufflevector <8 x float> %broadcast.splatinsert947, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert955 = insertelement <8 x float> poison, float %i.fd, i64 0
  %broadcast.splat956 = shufflevector <8 x float> %broadcast.splatinsert955, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert959 = insertelement <8 x float> poison, float %i.fh, i64 0
  %broadcast.splat960 = shufflevector <8 x float> %broadcast.splatinsert959, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert961 = insertelement <8 x float> poison, float %i.fb, i64 0
  %broadcast.splat962 = shufflevector <8 x float> %broadcast.splatinsert961, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nx = trunc i64 %i.nl to i32
  %broadcast.splatinsert965 = insertelement <8 x i32> poison, i32 %i.nx, i64 0
  %broadcast.splat966 = shufflevector <8 x i32> %broadcast.splatinsert965, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction967 = add <8 x i32> %broadcast.splat966, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %vector.ph943
  %index969 = phi i64 [ 0, %vector.ph943 ], [ %index.next972, %vector.body968 ] ; 2 uses
  %vec.ind970 = phi <8 x i32> [ %induction967, %vector.ph943 ], [ %vec.ind.next973, %vector.body968 ] ; 2 uses
  %i.ny = add i64 %i.nl, %index969                ; 7 uses
  %i.nz = sitofp <8 x i32> %vec.ind970 to <8 x float> ; 3 uses
  %i.oa = fmul <8 x float> %broadcast.splat950, %i.nz ; 3 uses
  %i.ob = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nz, <8 x float> %broadcast.splat952, <8 x float> %broadcast.splat946) ; 3 uses
  %i.oc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nz, <8 x float> %broadcast.splat954, <8 x float> %broadcast.splat948)
  %i.od = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat956, <8 x float> %broadcast.splat958, <8 x float> %i.oc) ; 3 uses
  %i.oe = fmul <8 x float> %i.ob, %i.ob
  %i.of = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.oa, <8 x float> %i.oa, <8 x float> %i.oe)
  %i.og = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.od, <8 x float> %i.od, <8 x float> %i.of) ; 3 uses
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.ny
  store <8 x float> %i.oa, ptr %i.oh, align 4, !tbaa !18
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ny
  store <8 x float> %i.ob, ptr %i.oi, align 4, !tbaa !18
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ny
  store <8 x float> %i.od, ptr %i.oj, align 4, !tbaa !18
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.ny
  store <8 x float> %i.og, ptr %i.ok, align 4, !tbaa !18
  %i.ol = fmul <8 x float> %broadcast.splat960, %i.og
  %i.om = fmul <8 x float> %i.ol, %broadcast.splat962
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.ny
  %wide.load971 = load <8 x float>, ptr %i.on, align 4, !tbaa !18
  %i.oo = fmul <8 x float> %i.om, %wide.load971
  %i.op = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.ny
  store <8 x float> %i.oo, ptr %i.op, align 4, !tbaa !18
  %i.oq = fmul <8 x float> %i.og, %broadcast.splat964
  %i.or = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ny
  store <8 x float> %i.oq, ptr %i.or, align 4, !tbaa !18
  %index.next972 = add nuw i64 %index969, 8       ; 2 uses
  %vec.ind.next973 = add <8 x i32> %vec.ind970, splat (i32 8)
  %i.os = icmp eq i64 %index.next972, %n.vec944
  br i1 %i.os, label %middle.block974, label %vector.body968, !llvm.loop !238

middle.block974:                                  ; preds = %vector.body968
  %cmp.n975 = icmp eq i64 %10, %n.vec944
  br i1 %cmp.n975, label %.preheader437.us, label %scalar.ph941.preheader

scalar.ph941.preheader:                           ; preds = %vector.memcheck899, %.lr.ph449.us, %middle.block974
  %indvars.iv516.ph = phi i64 [ %i.nl, %vector.memcheck899 ], [ %i.nl, %.lr.ph449.us ], [ %i.nw, %middle.block974 ]
  br label %scalar.ph941

.lr.ph451.us:                                     ; preds = %.preheader437.us
  %i.ot = fmul float %i.ac, %.0387.us             ; 2 uses
  %i.ou = fmul float %i.ag, %.0387.us             ; 2 uses
  %i.ov = load ptr, ptr %i.co, align 8, !tbaa !13 ; 3 uses
  br i1 %min.iters.check862, label %scalar.ph861.preheader, label %vector.memcheck819

vector.memcheck819:                               ; preds = %.lr.ph451.us
  %i.ow = ptrtoaddr ptr %i.ov to i64              ; 4 uses
  %i.ox = insertelement <16 x i64> %i.ed, i64 %i.ow, i64 5
  %i.oy = shufflevector <16 x i64> %i.ox, <16 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 1, i32 2, i32 3, i32 4, i32 5, i32 2, i32 3, i32 4, i32 5, i32 3>
  %i.oz = sub <16 x i64> %i.ec, %i.oy
  %i.pa = icmp ugt <16 x i64> %i.oz, splat (i64 -32)
  %i.pb = sub i64 %i.bg, %i.ow
  %diff.check853 = icmp ugt i64 %i.pb, -32
  %i.pc = sub i64 %i.ow, %i.bn
  %diff.check857 = icmp ugt i64 %i.pc, -32
  %i.pd = sub i64 %i.ow, %i.bq
  %diff.check859 = icmp ugt i64 %i.pd, -32
  %i.pe = bitcast <16 x i1> %i.pa to i16
  %i.pf = icmp ne i16 %i.pe, 0
  %op.rdx = or i1 %i.pf, %diff.check851
  %op.rdx978 = or i1 %diff.check853, %diff.check855
  %op.rdx979 = or i1 %diff.check857, %diff.check859
  %op.rdx980 = or i1 %op.rdx, %op.rdx978
  %op.rdx981 = or i1 %op.rdx980, %op.rdx979
  br i1 %op.rdx981, label %scalar.ph861.preheader, label %vector.ph863

vector.ph863:                                     ; preds = %vector.memcheck819
  %broadcast.splatinsert865 = insertelement <8 x float> poison, float %i.ot, i64 0
  %broadcast.splat866 = shufflevector <8 x float> %broadcast.splatinsert865, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert867 = insertelement <8 x float> poison, float %i.ou, i64 0
  %broadcast.splat868 = shufflevector <8 x float> %broadcast.splatinsert867, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert877 = insertelement <8 x float> poison, float %i.fd, i64 0
  %broadcast.splat878 = shufflevector <8 x float> %broadcast.splatinsert877, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert881 = insertelement <8 x float> poison, float %i.fh, i64 0
  %broadcast.splat882 = shufflevector <8 x float> %broadcast.splatinsert881, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert883 = insertelement <8 x float> poison, float %i.fb, i64 0
  %broadcast.splat884 = shufflevector <8 x float> %broadcast.splatinsert883, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body890

vector.body890:                                   ; preds = %vector.body890, %vector.ph863
  %index891 = phi i64 [ 0, %vector.ph863 ], [ %index.next894, %vector.body890 ] ; 2 uses
  %vec.ind892 = phi <8 x i32> [ %induction889, %vector.ph863 ], [ %vec.ind.next895, %vector.body890 ] ; 2 uses
  %i.pg = add i64 %index891, %i.dk                ; 7 uses
  %i.ph = sub <8 x i32> %vec.ind892, %broadcast.splat870
  %i.pi = sitofp <8 x i32> %i.ph to <8 x float>   ; 3 uses
  %i.pj = fmul <8 x float> %broadcast.splat872, %i.pi ; 3 uses
  %i.pk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pi, <8 x float> %broadcast.splat874, <8 x float> %broadcast.splat866) ; 3 uses
  %i.pl = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pi, <8 x float> %broadcast.splat876, <8 x float> %broadcast.splat868)
  %i.pm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat878, <8 x float> %broadcast.splat880, <8 x float> %i.pl) ; 3 uses
  %i.pn = fmul <8 x float> %i.pk, %i.pk
  %i.po = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pj, <8 x float> %i.pj, <8 x float> %i.pn)
  %i.pp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pm, <8 x float> %i.pm, <8 x float> %i.po) ; 3 uses
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.pg
  store <8 x float> %i.pj, ptr %i.pq, align 4, !tbaa !18
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.pg
  store <8 x float> %i.pk, ptr %i.pr, align 4, !tbaa !18
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.pg
  store <8 x float> %i.pm, ptr %i.ps, align 4, !tbaa !18
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.pg
  store <8 x float> %i.pp, ptr %i.pt, align 4, !tbaa !18
  %i.pu = fmul <8 x float> %broadcast.splat882, %i.pp
  %i.pv = fmul <8 x float> %i.pu, %broadcast.splat884
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %i.pg
  %wide.load893 = load <8 x float>, ptr %i.pw, align 4, !tbaa !18
  %i.px = fmul <8 x float> %i.pv, %wide.load893
  %i.py = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.pg
  store <8 x float> %i.px, ptr %i.py, align 4, !tbaa !18
  %i.pz = fmul <8 x float> %i.pp, %broadcast.splat886
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.pg
  store <8 x float> %i.pz, ptr %i.qa, align 4, !tbaa !18
  %index.next894 = add nuw i64 %index891, 8       ; 2 uses
  %vec.ind.next895 = add <8 x i32> %vec.ind892, splat (i32 8)
  %i.qb = icmp eq i64 %index.next894, %n.vec864
  br i1 %i.qb, label %middle.block896, label %vector.body890, !llvm.loop !239

middle.block896:                                  ; preds = %vector.body890
  br i1 %cmp.n897, label %.preheader436.us, label %scalar.ph861.preheader

scalar.ph861.preheader:                           ; preds = %vector.memcheck819, %.lr.ph451.us, %middle.block896
  %indvars.iv518.ph = phi i64 [ %i.dk, %vector.memcheck819 ], [ %i.dk, %.lr.ph451.us ], [ %i.eg, %middle.block896 ]
  br label %scalar.ph861

.lr.ph482.split:                                  ; preds = %.lr.ph482.split.preheader, %.loopexit439
  %.0389473 = phi i32 [ %i.aeb, %.loopexit439 ], [ %i.cc, %.lr.ph482.split.preheader ] ; 3 uses
  %i.qc = sdiv i32 %.0389473, %i.bz               ; 3 uses
  %i.qd = mul nsw i32 %i.qc, %i.bz                ; 0 uses
  %.recomposed1010 = srem i32 %.0389473, %i.bz    ; 2 uses
  %i.qe = add nsw i32 %i.cl, %i.qc                ; 4 uses
  %i.qf = icmp slt i32 %i.qe, %i.am
  %i.qg = select i1 %i.qf, i32 0, i32 %i.p
  %.0387.in = sub nsw i32 %i.qe, %i.qg
  %.0387 = sitofp i32 %.0387.in to float          ; 4 uses
  %i.qh = sext i32 %i.qe to i64
  %i.qi = load ptr, ptr %i.cp, align 8, !tbaa !13
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.qh
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !18
  %i.ql = fpext float %i.qk to double
  %i.qm = fmul double %i.cn, %i.ql
  %i.qn = fptrunc double %i.qm to float           ; 8 uses
  %i.qo = add nsw i32 %i.cr, %.recomposed1010     ; 3 uses
  %i.qp = sitofp i32 %i.qo to float               ; 8 uses
  %i.qq = sext i32 %i.qo to i64
  %i.qr = load ptr, ptr %i.cs, align 8, !tbaa !13
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.qq
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !18 ; 8 uses
  %.reass = mul i32 %factor.op.mul, %i.qc
  %i.qu = sext i32 %.reass to i64                 ; 2 uses
  %i.qv = getelementptr [8 x i8], ptr %2, i64 %i.qu
  %i.qw = mul i32 %i.cx, %.recomposed1010
  %i.qx = sext i32 %i.qw to i64                   ; 2 uses
  %i.qy = getelementptr [8 x i8], ptr %i.qv, i64 %i.qx
  %i.qz = icmp slt i32 %i.qe, 1                   ; 3 uses
  %i.ra = icmp slt i32 %i.qo, 1                   ; 3 uses
  %i.rb = and i1 %i.qz, %i.ra
  %or.cond3.not = and i1 %i.rb, %i.cz             ; 2 uses
  %.0393.idx = select i1 %or.cond3.not, i64 8, i64 0 ; 2 uses
  %.0393 = getelementptr i8, ptr %i.qy, i64 %.0393.idx ; 8 uses
  %i.rc = zext i1 %or.cond3.not to i32            ; 2 uses
  %.0388 = add nsw i32 %i.cy, %i.rc
  %i.rd = icmp slt i32 %.0388, %i.ak
  br i1 %i.rd, label %iter.check712, label %.preheader440

iter.check712:                                    ; preds = %.lr.ph482.split
  %i.re = fmul float %i.ac, %.0387                ; 3 uses
  %i.rf = fmul float %i.ag, %.0387                ; 3 uses
  %i.rg = load ptr, ptr %i.co, align 8, !tbaa !13 ; 4 uses
  %i.rh = and i1 %i.ra, %i.qz
  %i.ri = and i1 %i.rh, %i.cz
  %umin505 = zext i1 %i.ri to i64                 ; 3 uses
  %i.rj = add nsw i64 %i.dj, %umin505             ; 8 uses
  %11 = add nsw i64 %6, %umin505
  %smax667 = call i64 @llvm.smax.i64(i64 %11, i64 %i.dk)
  %12 = add nsw i64 %i.dj, %umin505
  %13 = sub i64 %smax667, %12                     ; 7 uses
  %min.iters.check668 = icmp ult i64 %13, 8
  br i1 %min.iters.check668, label %vec.epilog.scalar.ph713.preheader, label %vector.memcheck661

vector.memcheck661:                               ; preds = %iter.check712
  %i.rk = ptrtoaddr ptr %i.rg to i64              ; 2 uses
  %i.rl = sub i64 %i.rk, %i.bn
  %diff.check663 = icmp ugt i64 %i.rl, -128
  %conflict.rdx664 = or i1 %diff.check662, %diff.check663
  %i.rm = sub i64 %i.rk, %i.bq
  %diff.check665 = icmp ugt i64 %i.rm, -128
  %conflict.rdx666 = or i1 %conflict.rdx664, %diff.check665
  br i1 %conflict.rdx666, label %vec.epilog.scalar.ph713.preheader, label %vector.main.loop.iter.check669

vector.main.loop.iter.check669:                   ; preds = %vector.memcheck661
  %min.iters.check670 = icmp ult i64 %13, 32
  br i1 %min.iters.check670, label %vec.epilog.ph716, label %vector.ph671

vector.ph671:                                     ; preds = %vector.main.loop.iter.check669
  %i.rn = and i64 %13, 24
  %n.vec672 = and i64 %13, -32                    ; 4 uses
  %i.ro = add i64 %i.rj, %n.vec672                ; 2 uses
  %broadcast.splatinsert673 = insertelement <8 x float> poison, float %i.re, i64 0
  %broadcast.splat674 = shufflevector <8 x float> %broadcast.splatinsert673, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert675 = insertelement <8 x float> poison, float %i.rf, i64 0
  %broadcast.splat676 = shufflevector <8 x float> %broadcast.splatinsert675, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert683 = insertelement <8 x float> poison, float %i.qp, i64 0
  %broadcast.splat684 = shufflevector <8 x float> %broadcast.splatinsert683, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert687 = insertelement <8 x float> poison, float %i.qt, i64 0
  %broadcast.splat688 = shufflevector <8 x float> %broadcast.splatinsert687, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert689 = insertelement <8 x float> poison, float %i.qn, i64 0
  %broadcast.splat690 = shufflevector <8 x float> %broadcast.splatinsert689, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.rp = trunc i64 %i.rj to i32
  %broadcast.splatinsert693 = insertelement <8 x i32> poison, i32 %i.rp, i64 0
  %broadcast.splat694 = shufflevector <8 x i32> %broadcast.splatinsert693, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction695 = add <8 x i32> %broadcast.splat694, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body696

vector.body696:                                   ; preds = %vector.body696, %vector.ph671
  %index697 = phi i64 [ 0, %vector.ph671 ], [ %index.next706, %vector.body696 ] ; 2 uses
  %vec.ind698 = phi <8 x i32> [ %induction695, %vector.ph671 ], [ %vec.ind.next707, %vector.body696 ] ; 5 uses
  %step.add699 = add <8 x i32> %vec.ind698, splat (i32 8)
  %step.add.2700 = add <8 x i32> %vec.ind698, splat (i32 16)
  %step.add.3701 = add <8 x i32> %vec.ind698, splat (i32 24)
  %i.rq = add i64 %i.rj, %index697                ; 3 uses
  %i.rr = sitofp <8 x i32> %vec.ind698 to <8 x float> ; 3 uses
  %i.rs = sitofp <8 x i32> %step.add699 to <8 x float> ; 3 uses
  %i.rt = sitofp <8 x i32> %step.add.2700 to <8 x float> ; 3 uses
  %i.ru = sitofp <8 x i32> %step.add.3701 to <8 x float> ; 3 uses
  %i.rv = fmul <8 x float> %broadcast.splat678, %i.rr ; 2 uses
  %i.rw = fmul <8 x float> %broadcast.splat678, %i.rs ; 2 uses
  %i.rx = fmul <8 x float> %broadcast.splat678, %i.rt ; 2 uses
  %i.ry = fmul <8 x float> %broadcast.splat678, %i.ru ; 2 uses
  %i.rz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rr, <8 x float> %broadcast.splat680, <8 x float> %broadcast.splat674) ; 2 uses
  %i.sa = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rs, <8 x float> %broadcast.splat680, <8 x float> %broadcast.splat674) ; 2 uses
  %i.sb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rt, <8 x float> %broadcast.splat680, <8 x float> %broadcast.splat674) ; 2 uses
  %i.sc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ru, <8 x float> %broadcast.splat680, <8 x float> %broadcast.splat674) ; 2 uses
  %i.sd = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rr, <8 x float> %broadcast.splat682, <8 x float> %broadcast.splat676)
  %i.se = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rs, <8 x float> %broadcast.splat682, <8 x float> %broadcast.splat676)
  %i.sf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rt, <8 x float> %broadcast.splat682, <8 x float> %broadcast.splat676)
  %i.sg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ru, <8 x float> %broadcast.splat682, <8 x float> %broadcast.splat676)
  %i.sh = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat684, <8 x float> %broadcast.splat686, <8 x float> %i.sd) ; 2 uses
  %i.si = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat684, <8 x float> %broadcast.splat686, <8 x float> %i.se) ; 2 uses
  %i.sj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat684, <8 x float> %broadcast.splat686, <8 x float> %i.sf) ; 2 uses
  %i.sk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat684, <8 x float> %broadcast.splat686, <8 x float> %i.sg) ; 2 uses
  %i.sl = fmul <8 x float> %i.rz, %i.rz
  %i.sm = fmul <8 x float> %i.sa, %i.sa
  %i.sn = fmul <8 x float> %i.sb, %i.sb
  %i.so = fmul <8 x float> %i.sc, %i.sc
  %i.sp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rv, <8 x float> %i.rv, <8 x float> %i.sl)
  %i.sq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rw, <8 x float> %i.rw, <8 x float> %i.sm)
  %i.sr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rx, <8 x float> %i.rx, <8 x float> %i.sn)
  %i.ss = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ry, <8 x float> %i.ry, <8 x float> %i.so)
  %i.st = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.sh, <8 x float> %i.sh, <8 x float> %i.sp) ; 2 uses
  %i.su = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.si, <8 x float> %i.si, <8 x float> %i.sq) ; 2 uses
  %i.sv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.sj, <8 x float> %i.sj, <8 x float> %i.sr) ; 2 uses
  %i.sw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.sk, <8 x float> %i.sk, <8 x float> %i.ss) ; 2 uses
  %i.sx = fmul <8 x float> %broadcast.splat688, %i.st
  %i.sy = fmul <8 x float> %broadcast.splat688, %i.su
  %i.sz = fmul <8 x float> %broadcast.splat688, %i.sv
  %i.ta = fmul <8 x float> %broadcast.splat688, %i.sw
  %i.tb = fmul <8 x float> %i.sx, %broadcast.splat690
  %i.tc = fmul <8 x float> %i.sy, %broadcast.splat690
  %i.td = fmul <8 x float> %i.sz, %broadcast.splat690
  %i.te = fmul <8 x float> %i.ta, %broadcast.splat690
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.rq ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 32
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 64
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 96
  %wide.load702 = load <8 x float>, ptr %i.tf, align 4, !tbaa !18
  %wide.load703 = load <8 x float>, ptr %i.tg, align 4, !tbaa !18
  %wide.load704 = load <8 x float>, ptr %i.th, align 4, !tbaa !18
  %wide.load705 = load <8 x float>, ptr %i.ti, align 4, !tbaa !18
  %i.tj = fmul <8 x float> %i.tb, %wide.load702
  %i.tk = fmul <8 x float> %i.tc, %wide.load703
  %i.tl = fmul <8 x float> %i.td, %wide.load704
  %i.tm = fmul <8 x float> %i.te, %wide.load705
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.rq ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 32
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 64
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 96
  store <8 x float> %i.tj, ptr %i.tn, align 4, !tbaa !18
  store <8 x float> %i.tk, ptr %i.to, align 4, !tbaa !18
  store <8 x float> %i.tl, ptr %i.tp, align 4, !tbaa !18
  store <8 x float> %i.tm, ptr %i.tq, align 4, !tbaa !18
  %i.tr = fmul <8 x float> %i.st, %broadcast.splat692
  %i.ts = fmul <8 x float> %i.su, %broadcast.splat692
  %i.tt = fmul <8 x float> %i.sv, %broadcast.splat692
  %i.tu = fmul <8 x float> %i.sw, %broadcast.splat692
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.rq ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 32
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 96
  store <8 x float> %i.tr, ptr %i.tv, align 4, !tbaa !18
  store <8 x float> %i.ts, ptr %i.tw, align 4, !tbaa !18
  store <8 x float> %i.tt, ptr %i.tx, align 4, !tbaa !18
  store <8 x float> %i.tu, ptr %i.ty, align 4, !tbaa !18
  %index.next706 = add nuw i64 %index697, 32      ; 2 uses
  %vec.ind.next707 = add <8 x i32> %vec.ind698, splat (i32 32)
  %i.tz = icmp eq i64 %index.next706, %n.vec672
  br i1 %i.tz, label %middle.block708, label %vector.body696, !llvm.loop !240

middle.block708:                                  ; preds = %vector.body696
  %cmp.n709 = icmp eq i64 %13, %n.vec672
  br i1 %cmp.n709, label %.preheader440, label %vec.epilog.iter.check714

vec.epilog.iter.check714:                         ; preds = %middle.block708
  %min.epilog.iters.check715 = icmp eq i64 %i.rn, 0
  br i1 %min.epilog.iters.check715, label %vec.epilog.scalar.ph713.preheader, label %vec.epilog.ph716, !prof !26

vec.epilog.ph716:                                 ; preds = %vector.main.loop.iter.check669, %vec.epilog.iter.check714
  %vec.epilog.resume.val710 = phi i64 [ %n.vec672, %vec.epilog.iter.check714 ], [ 0, %vector.main.loop.iter.check669 ]
  %bc.resume.val711 = phi i64 [ %i.ro, %vec.epilog.iter.check714 ], [ %i.rj, %vector.main.loop.iter.check669 ]
  %n.vec717 = and i64 %13, -8                     ; 3 uses
  %i.ua = add i64 %i.rj, %n.vec717
  %broadcast.splatinsert718 = insertelement <8 x float> poison, float %i.re, i64 0
  %broadcast.splat719 = shufflevector <8 x float> %broadcast.splatinsert718, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert720 = insertelement <8 x float> poison, float %i.rf, i64 0
  %broadcast.splat721 = shufflevector <8 x float> %broadcast.splatinsert720, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert728 = insertelement <8 x float> poison, float %i.qp, i64 0
  %broadcast.splat729 = shufflevector <8 x float> %broadcast.splatinsert728, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert732 = insertelement <8 x float> poison, float %i.qt, i64 0
  %broadcast.splat733 = shufflevector <8 x float> %broadcast.splatinsert732, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert734 = insertelement <8 x float> poison, float %i.qn, i64 0
  %broadcast.splat735 = shufflevector <8 x float> %broadcast.splatinsert734, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ub = trunc i64 %bc.resume.val711 to i32
  %broadcast.splatinsert738 = insertelement <8 x i32> poison, i32 %i.ub, i64 0
  %broadcast.splat739 = shufflevector <8 x i32> %broadcast.splatinsert738, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction740 = add <8 x i32> %broadcast.splat739, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body741

vec.epilog.vector.body741:                        ; preds = %vec.epilog.vector.body741, %vec.epilog.ph716
  %index742 = phi i64 [ %vec.epilog.resume.val710, %vec.epilog.ph716 ], [ %index.next745, %vec.epilog.vector.body741 ] ; 2 uses
  %vec.ind743 = phi <8 x i32> [ %induction740, %vec.epilog.ph716 ], [ %vec.ind.next746, %vec.epilog.vector.body741 ] ; 2 uses
  %i.uc = add i64 %i.rj, %index742                ; 3 uses
  %i.ud = sitofp <8 x i32> %vec.ind743 to <8 x float> ; 3 uses
  %i.ue = fmul <8 x float> %broadcast.splat723, %i.ud ; 2 uses
  %i.uf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ud, <8 x float> %broadcast.splat725, <8 x float> %broadcast.splat719) ; 2 uses
  %i.ug = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ud, <8 x float> %broadcast.splat727, <8 x float> %broadcast.splat721)
  %i.uh = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat729, <8 x float> %broadcast.splat731, <8 x float> %i.ug) ; 2 uses
  %i.ui = fmul <8 x float> %i.uf, %i.uf
  %i.uj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ue, <8 x float> %i.ue, <8 x float> %i.ui)
  %i.uk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.uh, <8 x float> %i.uh, <8 x float> %i.uj) ; 2 uses
  %i.ul = fmul <8 x float> %broadcast.splat733, %i.uk
  %i.um = fmul <8 x float> %i.ul, %broadcast.splat735
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.uc
  %wide.load744 = load <8 x float>, ptr %i.un, align 4, !tbaa !18
  %i.uo = fmul <8 x float> %i.um, %wide.load744
  %i.up = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.uc
  store <8 x float> %i.uo, ptr %i.up, align 4, !tbaa !18
  %i.uq = fmul <8 x float> %i.uk, %broadcast.splat737
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.uc
  store <8 x float> %i.uq, ptr %i.ur, align 4, !tbaa !18
  %index.next745 = add nuw i64 %index742, 8       ; 2 uses
  %vec.ind.next746 = add <8 x i32> %vec.ind743, splat (i32 8)
  %i.us = icmp eq i64 %index.next745, %n.vec717
  br i1 %i.us, label %vec.epilog.middle.block747, label %vec.epilog.vector.body741, !llvm.loop !241

vec.epilog.middle.block747:                       ; preds = %vec.epilog.vector.body741
  %cmp.n748 = icmp eq i64 %13, %n.vec717
  br i1 %cmp.n748, label %.preheader440, label %vec.epilog.scalar.ph713.preheader

vec.epilog.scalar.ph713.preheader:                ; preds = %vector.memcheck661, %iter.check712, %vec.epilog.iter.check714, %vec.epilog.middle.block747
  %indvars.iv.ph = phi i64 [ %i.rj, %iter.check712 ], [ %i.rj, %vector.memcheck661 ], [ %i.ro, %vec.epilog.iter.check714 ], [ %i.ua, %vec.epilog.middle.block747 ]
  br label %vec.epilog.scalar.ph713

.preheader440:                                    ; preds = %vec.epilog.scalar.ph713, %middle.block708, %vec.epilog.middle.block747, %.lr.ph482.split
  br i1 %i.dd, label %iter.check621, label %._crit_edge

iter.check621:                                    ; preds = %.preheader440
  %i.ut = fmul float %i.ac, %.0387                ; 5 uses
  %i.uu = fmul float %i.ag, %.0387                ; 5 uses
  %i.uv = load ptr, ptr %i.co, align 8, !tbaa !13 ; 6 uses
  br i1 %min.iters.check584, label %vec.epilog.scalar.ph622.preheader, label %vector.memcheck580

vector.memcheck580:                               ; preds = %iter.check621
  %i.uw = ptrtoaddr ptr %i.uv to i64              ; 2 uses
  %i.ux = sub i64 %i.uw, %i.bn
  %diff.check581 = icmp ugt i64 %i.ux, -128
  %conflict.rdx = or i1 %diff.check, %diff.check581
  %i.uy = sub i64 %i.uw, %i.bq
  %diff.check582 = icmp ugt i64 %i.uy, -128
  %conflict.rdx583 = or i1 %conflict.rdx, %diff.check582
  br i1 %conflict.rdx583, label %vec.epilog.scalar.ph622.preheader, label %vector.main.loop.iter.check585

vector.main.loop.iter.check585:                   ; preds = %vector.memcheck580
  br i1 %min.iters.check586, label %vec.epilog.ph625, label %vector.ph587

vector.ph587:                                     ; preds = %vector.main.loop.iter.check585
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ut, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert589 = insertelement <8 x float> poison, float %i.uu, i64 0
  %broadcast.splat590 = shufflevector <8 x float> %broadcast.splatinsert589, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert599 = insertelement <8 x float> poison, float %i.qp, i64 0
  %broadcast.splat600 = shufflevector <8 x float> %broadcast.splatinsert599, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert603 = insertelement <8 x float> poison, float %i.qt, i64 0
  %broadcast.splat604 = shufflevector <8 x float> %broadcast.splatinsert603, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert605 = insertelement <8 x float> poison, float %i.qn, i64 0
  %broadcast.splat606 = shufflevector <8 x float> %broadcast.splatinsert605, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body611

vector.body611:                                   ; preds = %vector.body611, %vector.ph587
  %index612 = phi i64 [ 0, %vector.ph587 ], [ %index.next617, %vector.body611 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph587 ], [ %vec.ind.next, %vector.body611 ] ; 5 uses
  %i.uz = add i64 %index612, %i.dk                ; 3 uses
  %i.va = sub <8 x i32> %vec.ind, %broadcast.splat592
  %.reass1001 = add <8 x i32> %vec.ind, %invariant.op
  %.reass1003 = add <8 x i32> %vec.ind, %invariant.op1002
  %.reass1005 = add <8 x i32> %vec.ind, %invariant.op1004
  %i.vb = sitofp <8 x i32> %i.va to <8 x float>   ; 3 uses
  %i.vc = sitofp <8 x i32> %.reass1001 to <8 x float> ; 3 uses
  %i.vd = sitofp <8 x i32> %.reass1003 to <8 x float> ; 3 uses
  %i.ve = sitofp <8 x i32> %.reass1005 to <8 x float> ; 3 uses
  %i.vf = fmul <8 x float> %broadcast.splat594.a, %i.vb ; 2 uses
  %i.vg = fmul <8 x float> %broadcast.splat594.a, %i.vc ; 2 uses
  %i.vh = fmul <8 x float> %broadcast.splat594.a, %i.vd ; 2 uses
  %i.vi = fmul <8 x float> %broadcast.splat594.a, %i.ve ; 2 uses
  %i.vj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vb, <8 x float> %broadcast.splat596, <8 x float> %broadcast.splat) ; 2 uses
  %i.vk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vc, <8 x float> %broadcast.splat596, <8 x float> %broadcast.splat) ; 2 uses
  %i.vl = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vd, <8 x float> %broadcast.splat596, <8 x float> %broadcast.splat) ; 2 uses
  %i.vm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ve, <8 x float> %broadcast.splat596, <8 x float> %broadcast.splat) ; 2 uses
  %i.vn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vb, <8 x float> %broadcast.splat598, <8 x float> %broadcast.splat590)
  %i.vo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vc, <8 x float> %broadcast.splat598, <8 x float> %broadcast.splat590)
  %i.vp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vd, <8 x float> %broadcast.splat598, <8 x float> %broadcast.splat590)
  %i.vq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ve, <8 x float> %broadcast.splat598, <8 x float> %broadcast.splat590)
  %i.vr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat600, <8 x float> %broadcast.splat602, <8 x float> %i.vn) ; 2 uses
  %i.vs = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat600, <8 x float> %broadcast.splat602, <8 x float> %i.vo) ; 2 uses
  %i.vt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat600, <8 x float> %broadcast.splat602, <8 x float> %i.vp) ; 2 uses
  %i.vu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat600, <8 x float> %broadcast.splat602, <8 x float> %i.vq) ; 2 uses
  %i.vv = fmul <8 x float> %i.vj, %i.vj
  %i.vw = fmul <8 x float> %i.vk, %i.vk
  %i.vx = fmul <8 x float> %i.vl, %i.vl
  %i.vy = fmul <8 x float> %i.vm, %i.vm
  %i.vz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vf, <8 x float> %i.vf, <8 x float> %i.vv)
  %i.wa = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vg, <8 x float> %i.vg, <8 x float> %i.vw)
  %i.wb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vh, <8 x float> %i.vh, <8 x float> %i.vx)
  %i.wc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vi, <8 x float> %i.vi, <8 x float> %i.vy)
  %i.wd = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vr, <8 x float> %i.vr, <8 x float> %i.vz) ; 2 uses
  %i.we = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vs, <8 x float> %i.vs, <8 x float> %i.wa) ; 2 uses
  %i.wf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vt, <8 x float> %i.vt, <8 x float> %i.wb) ; 2 uses
  %i.wg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vu, <8 x float> %i.vu, <8 x float> %i.wc) ; 2 uses
  %i.wh = fmul <8 x float> %broadcast.splat604, %i.wd
  %i.wi = fmul <8 x float> %broadcast.splat604, %i.we
  %i.wj = fmul <8 x float> %broadcast.splat604, %i.wf
  %i.wk = fmul <8 x float> %broadcast.splat604, %i.wg
  %i.wl = fmul <8 x float> %i.wh, %broadcast.splat606
  %i.wm = fmul <8 x float> %i.wi, %broadcast.splat606
  %i.wn = fmul <8 x float> %i.wj, %broadcast.splat606
  %i.wo = fmul <8 x float> %i.wk, %broadcast.splat606
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.uz ; 4 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 32
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 64
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 96
  %wide.load613 = load <8 x float>, ptr %i.wp, align 4, !tbaa !18
  %wide.load614 = load <8 x float>, ptr %i.wq, align 4, !tbaa !18
  %wide.load615 = load <8 x float>, ptr %i.wr, align 4, !tbaa !18
  %wide.load616 = load <8 x float>, ptr %i.ws, align 4, !tbaa !18
  %i.wt = fmul <8 x float> %i.wl, %wide.load613
  %i.wu = fmul <8 x float> %i.wm, %wide.load614
  %i.wv = fmul <8 x float> %i.wn, %wide.load615
  %i.ww = fmul <8 x float> %i.wo, %wide.load616
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.uz ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 32
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 96
  store <8 x float> %i.wt, ptr %i.wx, align 4, !tbaa !18
  store <8 x float> %i.wu, ptr %i.wy, align 4, !tbaa !18
  store <8 x float> %i.wv, ptr %i.wz, align 4, !tbaa !18
  store <8 x float> %i.ww, ptr %i.xa, align 4, !tbaa !18
  %i.xb = fmul <8 x float> %i.wd, %broadcast.splat608.a
  %i.xc = fmul <8 x float> %i.we, %broadcast.splat608.a
  %i.xd = fmul <8 x float> %i.wf, %broadcast.splat608.a
  %i.xe = fmul <8 x float> %i.wg, %broadcast.splat608.a
  %i.xf = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.uz ; 4 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 32
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 64
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 96
  store <8 x float> %i.xb, ptr %i.xf, align 4, !tbaa !18
  store <8 x float> %i.xc, ptr %i.xg, align 4, !tbaa !18
  store <8 x float> %i.xd, ptr %i.xh, align 4, !tbaa !18
  store <8 x float> %i.xe, ptr %i.xi, align 4, !tbaa !18
  %index.next617 = add nuw i64 %index612, 32      ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.xj = icmp eq i64 %index.next617, %n.vec588
  br i1 %i.xj, label %middle.block618, label %vector.body611, !llvm.loop !242

middle.block618:                                  ; preds = %vector.body611
  br i1 %cmp.n619, label %._crit_edge, label %vec.epilog.iter.check623

vec.epilog.iter.check623:                         ; preds = %middle.block618
  br i1 %min.epilog.iters.check624, label %vec.epilog.scalar.ph622.preheader, label %vec.epilog.ph625, !prof !26

vec.epilog.ph625:                                 ; preds = %vector.main.loop.iter.check585, %vec.epilog.iter.check623
  %vec.epilog.resume.val620 = phi i64 [ %n.vec588, %vec.epilog.iter.check623 ], [ 0, %vector.main.loop.iter.check585 ]
  %bc.resume.val = phi i64 [ %i.en, %vec.epilog.iter.check623 ], [ %i.dk, %vector.main.loop.iter.check585 ]
  %broadcast.splatinsert627 = insertelement <8 x float> poison, float %i.ut, i64 0
  %broadcast.splat628 = shufflevector <8 x float> %broadcast.splatinsert627, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert629 = insertelement <8 x float> poison, float %i.uu, i64 0
  %broadcast.splat630 = shufflevector <8 x float> %broadcast.splatinsert629, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert639 = insertelement <8 x float> poison, float %i.qp, i64 0
  %broadcast.splat640 = shufflevector <8 x float> %broadcast.splatinsert639, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert643 = insertelement <8 x float> poison, float %i.qt, i64 0
  %broadcast.splat644 = shufflevector <8 x float> %broadcast.splatinsert643, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert645 = insertelement <8 x float> poison, float %i.qn, i64 0
  %broadcast.splat646 = shufflevector <8 x float> %broadcast.splatinsert645, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xk = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert649 = insertelement <8 x i32> poison, i32 %i.xk, i64 0
  %broadcast.splat650 = shufflevector <8 x i32> %broadcast.splatinsert649, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction651 = add <8 x i32> %broadcast.splat650, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body652

vec.epilog.vector.body652:                        ; preds = %vec.epilog.vector.body652, %vec.epilog.ph625
  %index653 = phi i64 [ %vec.epilog.resume.val620, %vec.epilog.ph625 ], [ %index.next656, %vec.epilog.vector.body652 ] ; 2 uses
  %vec.ind654 = phi <8 x i32> [ %induction651, %vec.epilog.ph625 ], [ %vec.ind.next657, %vec.epilog.vector.body652 ] ; 2 uses
  %i.xl = add i64 %index653, %i.dk                ; 3 uses
  %i.xm = sub <8 x i32> %vec.ind654, %broadcast.splat632.a
  %i.xn = sitofp <8 x i32> %i.xm to <8 x float>   ; 3 uses
  %i.xo = fmul <8 x float> %broadcast.splat634.a, %i.xn ; 2 uses
  %i.xp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.xn, <8 x float> %broadcast.splat636, <8 x float> %broadcast.splat628) ; 2 uses
  %i.xq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.xn, <8 x float> %broadcast.splat638, <8 x float> %broadcast.splat630)
  %i.xr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat640, <8 x float> %broadcast.splat642, <8 x float> %i.xq) ; 2 uses
  %i.xs = fmul <8 x float> %i.xp, %i.xp
  %i.xt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.xo, <8 x float> %i.xo, <8 x float> %i.xs)
  %i.xu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.xr, <8 x float> %i.xr, <8 x float> %i.xt) ; 2 uses
  %i.xv = fmul <8 x float> %broadcast.splat644, %i.xu
  %i.xw = fmul <8 x float> %i.xv, %broadcast.splat646
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.xl
  %wide.load655 = load <8 x float>, ptr %i.xx, align 4, !tbaa !18
  %i.xy = fmul <8 x float> %i.xw, %wide.load655
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.xl
  store <8 x float> %i.xy, ptr %i.xz, align 4, !tbaa !18
  %i.ya = fmul <8 x float> %i.xu, %broadcast.splat648.a
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.xl
  store <8 x float> %i.ya, ptr %i.yb, align 4, !tbaa !18
  %index.next656 = add nuw i64 %index653, 8       ; 2 uses
  %vec.ind.next657 = add <8 x i32> %vec.ind654, splat (i32 8)
  %i.yc = icmp eq i64 %index.next656, %n.vec626
  br i1 %i.yc, label %vec.epilog.middle.block658, label %vec.epilog.vector.body652, !llvm.loop !243

vec.epilog.middle.block658:                       ; preds = %vec.epilog.vector.body652
  br i1 %cmp.n659, label %._crit_edge, label %vec.epilog.scalar.ph622.preheader

vec.epilog.scalar.ph622.preheader:                ; preds = %vector.memcheck580, %iter.check621, %vec.epilog.iter.check623, %vec.epilog.middle.block658
  %indvars.iv506.ph = phi i64 [ %i.dk, %iter.check621 ], [ %i.dk, %vector.memcheck580 ], [ %i.en, %vec.epilog.iter.check623 ], [ %i.eo, %vec.epilog.middle.block658 ] ; 8 uses
  %i.yd = sub nsw i64 %i.dl, %indvars.iv506.ph
  %xtraiter = and i64 %i.yd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph622.prol.loopexit, label %vec.epilog.scalar.ph622.prol

vec.epilog.scalar.ph622.prol:                     ; preds = %vec.epilog.scalar.ph622.preheader
  %i.ye = trunc i64 %indvars.iv506.ph to i32
  %i.yf = sub i32 %i.ye, %i.n
  %i.yg = sitofp i32 %i.yf to float               ; 3 uses
  %i.yh = fmul float %i.y, %i.yg                  ; 2 uses
  %i.yi = call float @llvm.fmuladd.f32(float %i.yg, float %i.aa, float %i.ut) ; 2 uses
  %i.yj = call float @llvm.fmuladd.f32(float %i.yg, float %i.ae, float %i.uu)
  %i.yk = call float @llvm.fmuladd.f32(float %i.qp, float %i.ai, float %i.yj) ; 2 uses
  %i.yl = fmul float %i.yi, %i.yi
  %i.ym = call float @llvm.fmuladd.f32(float %i.yh, float %i.yh, float %i.yl)
  %i.yn = call float @llvm.fmuladd.f32(float %i.yk, float %i.yk, float %i.ym) ; 2 uses
  %i.yo = fmul float %i.qt, %i.yn
  %i.yp = fmul float %i.yo, %i.qn
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %indvars.iv506.ph
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !18
  %i.ys = fmul float %i.yp, %i.yr
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv506.ph
  store float %i.ys, ptr %i.yt, align 4, !tbaa !18
  %i.yu = fmul float %i.yn, %i.dc
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv506.ph
  store float %i.yu, ptr %i.yv, align 4, !tbaa !18
  %indvars.iv.next507.prol = add nsw i64 %indvars.iv506.ph, 1
  br label %vec.epilog.scalar.ph622.prol.loopexit

vec.epilog.scalar.ph622.prol.loopexit:            ; preds = %vec.epilog.scalar.ph622.prol, %vec.epilog.scalar.ph622.preheader
  %indvars.iv506.unr = phi i64 [ %indvars.iv506.ph, %vec.epilog.scalar.ph622.preheader ], [ %indvars.iv.next507.prol, %vec.epilog.scalar.ph622.prol ]
  %i.yw = icmp eq i64 %indvars.iv506.ph, %i.ep
  br i1 %i.yw, label %._crit_edge, label %vec.epilog.scalar.ph622

vec.epilog.scalar.ph713:                          ; preds = %vec.epilog.scalar.ph713.preheader, %vec.epilog.scalar.ph713
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph713 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph713.preheader ] ; 5 uses
  %i.yx = trunc nsw i64 %indvars.iv to i32
  %i.yy = sitofp i32 %i.yx to float               ; 3 uses
  %i.yz = fmul float %i.y, %i.yy                  ; 2 uses
  %i.za = call float @llvm.fmuladd.f32(float %i.yy, float %i.aa, float %i.re) ; 2 uses
  %i.zb = call float @llvm.fmuladd.f32(float %i.yy, float %i.ae, float %i.rf)
  %i.zc = call float @llvm.fmuladd.f32(float %i.qp, float %i.ai, float %i.zb) ; 2 uses
  %i.zd = fmul float %i.za, %i.za
  %i.ze = call float @llvm.fmuladd.f32(float %i.yz, float %i.yz, float %i.zd)
  %i.zf = call float @llvm.fmuladd.f32(float %i.zc, float %i.zc, float %i.ze) ; 2 uses
  %i.zg = fmul float %i.qt, %i.zf
  %i.zh = fmul float %i.zg, %i.qn
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !18
  %i.zk = fmul float %i.zh, %i.zj
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv
  store float %i.zk, ptr %i.zl, align 4, !tbaa !18
  %i.zm = fmul float %i.zf, %i.dc
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv
  store float %i.zm, ptr %i.zn, align 4, !tbaa !18
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %14 = icmp slt i64 %indvars.iv.next, %i.dk
  br i1 %14, label %vec.epilog.scalar.ph713, label %.preheader440, !llvm.loop !244

vec.epilog.scalar.ph622:                          ; preds = %vec.epilog.scalar.ph622.prol.loopexit, %vec.epilog.scalar.ph622
  %indvars.iv506 = phi i64 [ %indvars.iv.next507.1, %vec.epilog.scalar.ph622 ], [ %indvars.iv506.unr, %vec.epilog.scalar.ph622.prol.loopexit ] ; 6 uses
  %i.zo = trunc i64 %indvars.iv506 to i32
  %i.zp = sub i32 %i.zo, %i.n
  %i.zq = sitofp i32 %i.zp to float               ; 3 uses
  %i.zr = fmul float %i.y, %i.zq                  ; 2 uses
  %i.zs = call float @llvm.fmuladd.f32(float %i.zq, float %i.aa, float %i.ut) ; 2 uses
  %i.zt = call float @llvm.fmuladd.f32(float %i.zq, float %i.ae, float %i.uu)
  %i.zu = call float @llvm.fmuladd.f32(float %i.qp, float %i.ai, float %i.zt) ; 2 uses
  %i.zv = fmul float %i.zs, %i.zs
  %i.zw = call float @llvm.fmuladd.f32(float %i.zr, float %i.zr, float %i.zv)
  %i.zx = call float @llvm.fmuladd.f32(float %i.zu, float %i.zu, float %i.zw) ; 2 uses
  %i.zy = fmul float %i.qt, %i.zx
  %i.zz = fmul float %i.zy, %i.qn
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %indvars.iv506
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !18
  %i.aac = fmul float %i.zz, %i.aab
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv506
  store float %i.aac, ptr %i.aad, align 4, !tbaa !18
  %i.aae = fmul float %i.zx, %i.dc
  %i.aaf = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv506
  store float %i.aae, ptr %i.aaf, align 4, !tbaa !18
  %indvars.iv.next507 = add nsw i64 %indvars.iv506, 1 ; 4 uses
  %i.aag = trunc i64 %indvars.iv.next507 to i32
  %i.aah = sub i32 %i.aag, %i.n
  %i.aai = sitofp i32 %i.aah to float             ; 3 uses
  %i.aaj = fmul float %i.y, %i.aai                ; 2 uses
  %i.aak = call float @llvm.fmuladd.f32(float %i.aai, float %i.aa, float %i.ut) ; 2 uses
  %i.aal = call float @llvm.fmuladd.f32(float %i.aai, float %i.ae, float %i.uu)
  %i.aam = call float @llvm.fmuladd.f32(float %i.qp, float %i.ai, float %i.aal) ; 2 uses
  %i.aan = fmul float %i.aak, %i.aak
  %i.aao = call float @llvm.fmuladd.f32(float %i.aaj, float %i.aaj, float %i.aan)
  %i.aap = call float @llvm.fmuladd.f32(float %i.aam, float %i.aam, float %i.aao) ; 2 uses
  %i.aaq = fmul float %i.qt, %i.aap
  %i.aar = fmul float %i.aaq, %i.qn
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %indvars.iv.next507
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !18
  %i.aau = fmul float %i.aar, %i.aat
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv.next507
  store float %i.aau, ptr %i.aav, align 4, !tbaa !18
  %i.aaw = fmul float %i.aap, %i.dc
  %i.aax = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %indvars.iv.next507
  store float %i.aaw, ptr %i.aax, align 4, !tbaa !18
  %indvars.iv.next507.1 = add nsw i64 %indvars.iv506, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next507.1, %i.dl
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph622, !llvm.loop !245

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph622.prol.loopexit, %vec.epilog.scalar.ph622, %middle.block618, %vec.epilog.middle.block658, %.preheader440
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
  %i.abd = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i409
  %.val.i.i410 = load <16 x float>, ptr %i.abd, align 64, !tbaa !218 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i409
  %.val.i17.i411 = load <16 x float>, ptr %i.abe, align 64, !tbaa !218
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
  %i.aca = fmul <16 x float> %i.dg, %i.abz
  %i.acb = fmul <16 x float> %i.aca, %i.abv
  %i.acc = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i409
  store <16 x float> %i.acb, ptr %i.acc, align 64, !tbaa !218
  %i.acd = add nuw nsw i64 %.011.i408, 1          ; 2 uses
  %.not.i412 = icmp eq i64 %i.acd, %i.di
  br i1 %.not.i412, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413, label %bb.c, !llvm.loop !219

_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413: ; preds = %bb.c, %._crit_edge
  %i.ace = icmp sgt i32 %i.da, %i.rc
  br i1 %i.ace, label %iter.check, label %.loopexit439

iter.check:                                       ; preds = %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413
  %i.acf = and i1 %i.ra, %i.qz
  %i.acg = and i1 %i.acf, %i.cz
  %umin510 = zext i1 %i.acg to i64                ; 4 uses
  %i.ach = add nsw i64 %i.dj, %umin510            ; 8 uses
  %i.aci = add nsw i64 %i.dn, %umin510
  %smax555 = call i64 @llvm.smax.i64(i64 %i.aci, i64 %i.dl)
  %i.acj = add nsw i64 %i.dj, %umin510
  %i.ack = sub i64 %smax555, %i.acj               ; 7 uses
  %min.iters.check = icmp ult i64 %i.ack, 4
  br i1 %min.iters.check, label %.lr.ph447.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.acl = add nsw i64 %i.dm, %umin510
  %smax = call i64 @llvm.smax.i64(i64 %i.acl, i64 %i.dl) ; 2 uses
  %i.acm = add i64 %smax, %i.qu
  %i.acn = add i64 %i.acm, %i.qx
  %i.aco = shl nsw i64 %i.acn, 3
  %i.acp = add i64 %.0393.idx, %i.aco
  %i.acq = shl nsw i64 %i.ach, 3
  %i.acr = sub i64 %i.acp, %i.acq
  %scevgep = getelementptr i8, ptr %2, i64 %i.acr
  %i.acs = shl nsw i64 %i.ach, 2
  %scevgep553 = getelementptr i8, ptr %i.bs, i64 %i.acs
  %i.act = shl nsw i64 %smax, 2
  %scevgep554 = getelementptr i8, ptr %i.bs, i64 %i.act
  %bound0 = icmp ult ptr %.0393, %scevgep554
  %bound1 = icmp ult ptr %scevgep553, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph447.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check556 = icmp ult i64 %i.ack, 16
  br i1 %min.iters.check556, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.acu = and i64 %i.ack, 12
  %n.vec = and i64 %i.ack, -16                    ; 5 uses
  %i.acv = add i64 %i.ach, %n.vec
  %i.acw = shl i64 %n.vec, 3
  %i.acx = getelementptr i8, ptr %.0393, i64 %i.acw
  %i.acy = getelementptr [4 x i8], ptr %i.bs, i64 %i.ach
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.acz = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.0393, i64 %i.acz ; 2 uses
  %i.ada = getelementptr i8, ptr %.0393, i64 %i.acz
  %next.gep557 = getelementptr i8, ptr %i.ada, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %next.gep, align 4, !tbaa !18, !alias.scope !246, !noalias !249 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec558 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec559 = load <16 x float>, ptr %next.gep557, align 4, !tbaa !18, !alias.scope !246, !noalias !249 ; 2 uses
  %strided.vec560 = shufflevector <16 x float> %wide.vec559, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec561 = shufflevector <16 x float> %wide.vec559, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.adb = getelementptr [4 x i8], ptr %i.acy, i64 %index ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 32
  %wide.load = load <8 x float>, ptr %i.adb, align 4, !tbaa !18, !alias.scope !249 ; 2 uses
  %wide.load562 = load <8 x float>, ptr %i.adc, align 4, !tbaa !18, !alias.scope !249 ; 2 uses
  %i.add = fmul <8 x float> %strided.vec, %wide.load
  %i.ade = fmul <8 x float> %strided.vec560, %wide.load562
  %i.adf = fmul <8 x float> %strided.vec558, %wide.load
  %i.adg = fmul <8 x float> %strided.vec561, %wide.load562
  %interleaved.vec = shufflevector <8 x float> %i.add, <8 x float> %i.adf, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !18, !alias.scope !246, !noalias !249
  %interleaved.vec565 = shufflevector <8 x float> %i.ade, <8 x float> %i.adg, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec565, ptr %next.gep557, align 4, !tbaa !18, !alias.scope !246, !noalias !249
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.adh = icmp eq i64 %index.next, %n.vec
  br i1 %i.adh, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ack, %n.vec
  br i1 %cmp.n, label %.loopexit439, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.acu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph447.preheader, label %vec.epilog.ph, !prof !102

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec567 = and i64 %i.ack, -4                  ; 4 uses
  %i.adi = add i64 %i.ach, %n.vec567
  %i.adj = shl i64 %n.vec567, 3
  %i.adk = getelementptr i8, ptr %.0393, i64 %i.adj
  %i.adl = getelementptr [4 x i8], ptr %i.bs, i64 %i.ach
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index568 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next576, %vec.epilog.vector.body ] ; 3 uses
  %i.adm = shl i64 %index568, 3
  %next.gep569 = getelementptr i8, ptr %.0393, i64 %i.adm ; 2 uses
  %wide.vec570 = load <8 x float>, ptr %next.gep569, align 4, !tbaa !18, !alias.scope !246, !noalias !249 ; 2 uses
  %strided.vec571 = shufflevector <8 x float> %wide.vec570, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec572 = shufflevector <8 x float> %wide.vec570, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.adn = getelementptr [4 x i8], ptr %i.adl, i64 %index568
  %wide.load573 = load <4 x float>, ptr %i.adn, align 4, !tbaa !18, !alias.scope !249 ; 2 uses
  %i.ado = fmul <4 x float> %strided.vec571, %wide.load573
  %i.adp = fmul <4 x float> %strided.vec572, %wide.load573
  %interleaved.vec575 = shufflevector <4 x float> %i.ado, <4 x float> %i.adp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
end_hunk_0
