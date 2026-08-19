inline.NumInlined: 760
inline.NumDeleted: 302
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK8PmeSolve25getCoulombEnergyAndVirialEP9PmeOutput:bb.a
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
  %6 = ptrtoaddr ptr %i.bb to i64                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !13 ; 6 uses
  %i.be = ptrtoaddr ptr %i.bd to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !13 ; 9 uses
  %7 = ptrtoaddr ptr %i.bg to i64                 ; 9 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %9 = load ptr, ptr %8, align 8, !tbaa !16       ; 15 uses
  %i.bh = ptrtoaddr ptr %9 to i64                 ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16 ; 20 uses
  %i.bk = ptrtoaddr ptr %i.bj to i64              ; 11 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !16 ; 11 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !13 ; 5 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !75
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !75 ; 7 uses
  %i.bu = mul nsw i32 %i.bt, %i.br                ; 3 uses
  %i.bv = mul nsw i32 %i.bu, %5
  %i.bw = sdiv i32 %i.bv, %i.au                   ; 3 uses
  %i.bx = add nsw i32 %5, 1
  %i.by = mul nsw i32 %i.bu, %i.bx
  %i.bz = sdiv i32 %i.by, %i.au                   ; 3 uses
  %i.ca = icmp slt i32 %i.bw, %i.bz
  br i1 %i.ca, label %.lr.ph482, label %._crit_edge483

.lr.ph482:                                        ; preds = %bb.a
  %i.cb = fpext float %i.l to double
  %i.cc = fdiv double f0x40615DEF44DEAD3D, %i.cb
  %i.cd = fptrunc double %i.cc to float
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !75 ; 2 uses
  %i.cg = fpext float %3 to double
  %i.ch = fmul double %i.cg, f0x400921FB54442D18  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !75 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.cn = add nsw i32 %i.r, 1
  %i.co = sdiv i32 %i.cn, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !75
  %i.cr = load i32, ptr %i.d, align 4, !tbaa !75  ; 3 uses
  %factor.op.mul = mul i32 %i.cq, %i.cr           ; 2 uses
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !75  ; 5 uses
  %i.ct = icmp slt i32 %i.cs, 1                   ; 8 uses
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !75  ; 3 uses
  %i.cv = add i32 %i.cu, %i.cs                    ; 3 uses
  %i.cw = fneg float %i.j                         ; 12 uses
  %i.cx = icmp slt i32 %i.ak, %i.cv               ; 2 uses
  %i.cy = add i32 %i.cv, 15                       ; 2 uses
  %i.cz = insertelement <16 x float> poison, float %i.cd, i64 0
  %i.da = shufflevector <16 x float> %i.cz, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.db = lshr i32 %i.cy, 4
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %.not10.i406 = icmp ult i32 %i.cy, 16           ; 2 uses
  %i.dd = sext i32 %i.cs to i64                   ; 16 uses
  %i.de = sext i32 %i.ak to i64                   ; 17 uses
  %i.df = sext i32 %i.cv to i64                   ; 15 uses
  %i.dg = add nsw i64 %i.dd, 1                    ; 2 uses
  %i.dh = add nsw i64 %i.dd, 1                    ; 2 uses
  br i1 %4, label %.lr.ph482.split.us.preheader, label %.lr.ph482.split.preheader

.lr.ph482.split.us.preheader:                     ; preds = %.lr.ph482
  %invariant.op1006 = add i64 %i.dd, 1
  %i.di = insertelement <16 x i64> poison, i64 %i.az, i64 0
  %10 = insertelement <16 x i64> %i.di, i64 %6, i64 1
  %11 = insertelement <16 x i64> %10, i64 %i.be, i64 2 ; 2 uses
  %12 = insertelement <16 x i64> %11, i64 %7, i64 3
  %13 = shufflevector <16 x i64> %12, <16 x i64> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3>
  %14 = shufflevector <16 x i64> %11, <16 x i64> poison, <6 x i32> <i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = insertelement <6 x i64> %14, i64 %7, i64 2
  %16 = insertelement <6 x i64> %15, i64 %i.bh, i64 3
  %17 = insertelement <6 x i64> %16, i64 %i.bk, i64 4
  %i.dj = sub i64 %7, %i.bk
  %diff.check931 = icmp ugt i64 %i.dj, -32
  %i.dk = sub i64 %i.bh, %i.bk
  %diff.check935 = icmp ugt i64 %i.dk, -32
  %broadcast.splatinsert949 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat950 = shufflevector <8 x float> %broadcast.splatinsert949, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert951 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat952 = shufflevector <8 x float> %broadcast.splatinsert951, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat954 = shufflevector <8 x float> %broadcast.splatinsert953, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert957 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat958 = shufflevector <8 x float> %broadcast.splatinsert957, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert963 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat964 = shufflevector <8 x float> %broadcast.splatinsert963, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dl = sub nsw i64 %i.df, %i.de                ; 3 uses
  %min.iters.check862 = icmp ult i64 %i.dl, 16
  %i.dm = insertelement <16 x i64> poison, i64 %i.az, i64 0
  %18 = insertelement <16 x i64> %i.dm, i64 %6, i64 1
  %19 = insertelement <16 x i64> %18, i64 %i.be, i64 2 ; 2 uses
  %20 = insertelement <16 x i64> %19, i64 %7, i64 3
  %21 = shufflevector <16 x i64> %20, <16 x i64> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3>
  %22 = shufflevector <16 x i64> %19, <16 x i64> poison, <6 x i32> <i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = insertelement <6 x i64> %22, i64 %7, i64 2
  %24 = insertelement <6 x i64> %23, i64 %i.bh, i64 3
  %25 = insertelement <6 x i64> %24, i64 %i.bk, i64 4
  %i.dn = sub i64 %7, %i.bk
  %diff.check851 = icmp ugt i64 %i.dn, -32
  %i.do = sub i64 %i.bh, %i.bk
  %diff.check855 = icmp ugt i64 %i.do, -32
  %n.vec864 = and i64 %i.dl, -8                   ; 3 uses
  %i.dp = add nsw i64 %n.vec864, %i.de
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
  %broadcast.splatinsert885 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat886 = shufflevector <8 x float> %broadcast.splatinsert885, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert887 = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat888 = shufflevector <8 x i32> %broadcast.splatinsert887, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction889 = add <8 x i32> %broadcast.splat888, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cmp.n897 = icmp eq i64 %i.dl, %n.vec864
  %i.dq = sub i64 %7, %i.bp
  %diff.check787 = icmp ugt i64 %i.dq, -128
  %invariant.op1008 = add i64 %i.dd, 1
  br label %.lr.ph482.split.us

.lr.ph482.split.preheader:                        ; preds = %.lr.ph482
  %i.dr = sub i64 %i.bk, %i.bh                    ; 2 uses
  %i.ds = sub nsw i64 %i.df, %i.de                ; 7 uses
  %i.dt = add nsw i64 %i.dd, 1
  %i.du = add i64 %i.dr, -1
  %diff.check662 = icmp ult i64 %i.du, 127
  %broadcast.splatinsert677 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat678 = shufflevector <8 x float> %broadcast.splatinsert677, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert679 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat680 = shufflevector <8 x float> %broadcast.splatinsert679, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert681 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat682 = shufflevector <8 x float> %broadcast.splatinsert681, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert685 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat686 = shufflevector <8 x float> %broadcast.splatinsert685, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert691 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat692 = shufflevector <8 x float> %broadcast.splatinsert691, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert722 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat723 = shufflevector <8 x float> %broadcast.splatinsert722, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert724 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat725 = shufflevector <8 x float> %broadcast.splatinsert724, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert726 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat727 = shufflevector <8 x float> %broadcast.splatinsert726, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert730 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat731 = shufflevector <8 x float> %broadcast.splatinsert730, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert736 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat737 = shufflevector <8 x float> %broadcast.splatinsert736, <8 x float> poison, <8 x i32> zeroinitializer
  %min.iters.check584 = icmp ult i64 %i.ds, 8
  %i.dv = add i64 %i.dr, -1
  %diff.check = icmp ult i64 %i.dv, 127
  %min.iters.check586 = icmp ult i64 %i.ds, 32
  %i.dw = and i64 %i.ds, 24
  %n.vec588 = and i64 %i.ds, -32                  ; 4 uses
  %i.dx = add nsw i64 %n.vec588, %i.de            ; 2 uses
  %broadcast.splatinsert591 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat592 = shufflevector <8 x i32> %broadcast.splatinsert591, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert593 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat594 = shufflevector <8 x float> %broadcast.splatinsert593, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert595 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat596 = shufflevector <8 x float> %broadcast.splatinsert595, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert597 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat598 = shufflevector <8 x float> %broadcast.splatinsert597, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert601 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat602 = shufflevector <8 x float> %broadcast.splatinsert601, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert607 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat608 = shufflevector <8 x float> %broadcast.splatinsert607, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert609 = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat610 = shufflevector <8 x i32> %broadcast.splatinsert609, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat610, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.op = sub <8 x i32> splat (i32 8), %broadcast.splat592
  %invariant.op1002 = sub <8 x i32> splat (i32 16), %broadcast.splat592
  %invariant.op1004 = sub <8 x i32> splat (i32 24), %broadcast.splat592
  %cmp.n619 = icmp eq i64 %i.ds, %n.vec588
  %min.epilog.iters.check624 = icmp eq i64 %i.dw, 0
  %n.vec626 = and i64 %i.ds, -8                   ; 3 uses
  %i.dy = add nsw i64 %n.vec626, %i.de
  %broadcast.splatinsert631 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat632 = shufflevector <8 x i32> %broadcast.splatinsert631, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert633 = insertelement <8 x float> poison, float %i.y, i64 0
  %broadcast.splat634 = shufflevector <8 x float> %broadcast.splatinsert633, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert635 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat636 = shufflevector <8 x float> %broadcast.splatinsert635, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert637 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat638 = shufflevector <8 x float> %broadcast.splatinsert637, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert641 = insertelement <8 x float> poison, float %i.ai, i64 0
  %broadcast.splat642 = shufflevector <8 x float> %broadcast.splatinsert641, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert647 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat648 = shufflevector <8 x float> %broadcast.splatinsert647, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n659 = icmp eq i64 %i.ds, %n.vec626
  %i.dz = add nsw i64 %i.df, -1
  br label %.lr.ph482.split

.lr.ph482.split.us:                               ; preds = %.lr.ph482.split.us.preheader, %.loopexit.us
  %.0368480.us = phi float [ %.1.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0369479.us = phi float [ %.1370.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0372478.us = phi float [ %.1373.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0375477.us = phi float [ %.1376.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0378476.us = phi float [ %.1379.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0381475.us = phi float [ %.1382.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0384474.us = phi float [ %.1385.lcssa.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph482.split.us.preheader ] ; 2 uses
  %.0389473.us = phi i32 [ %i.ln, %.loopexit.us ], [ %i.bw, %.lr.ph482.split.us.preheader ] ; 3 uses
  %i.ea = sdiv i32 %.0389473.us, %i.bt            ; 3 uses
  %i.eb = mul nsw i32 %i.ea, %i.bt                ; 0 uses
  %.recomposed = srem i32 %.0389473.us, %i.bt     ; 2 uses
  %i.ec = add nsw i32 %i.cf, %i.ea                ; 4 uses
  %i.ed = icmp slt i32 %i.ec, %i.am
  %i.ee = select i1 %i.ed, i32 0, i32 %i.p
  %.0387.in.us = sub nsw i32 %i.ec, %i.ee
  %.0387.us = sitofp i32 %.0387.in.us to float    ; 4 uses
  %i.ef = sext i32 %i.ec to i64
  %i.eg = load ptr, ptr %i.cj, align 8, !tbaa !13
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !18
  %i.ej = fpext float %i.ei to double
  %i.ek = fmul double %i.ch, %i.ej
  %i.el = fptrunc double %i.ek to float           ; 4 uses
  %i.em = add nsw i32 %i.cl, %.recomposed         ; 5 uses
  %i.en = sitofp i32 %i.em to float               ; 4 uses
  %i.eo = sext i32 %i.em to i64
  %i.ep = load ptr, ptr %i.cm, align 8, !tbaa !13
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load float, ptr %i.eq, align 4, !tbaa !18 ; 4 uses
  %i.es = icmp eq i32 %i.em, 0
  %i.et = icmp eq i32 %i.em, %i.co
  %or.cond = select i1 %i.es, i1 true, i1 %i.et
  %.0.us = select i1 %or.cond, float 5.000000e-01, float 1.000000e+00
  %.reass.us = mul i32 %factor.op.mul, %i.ea
  %i.eu = sext i32 %.reass.us to i64              ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %2, i64 %i.eu
  %i.ew = mul i32 %i.cr, %.recomposed
  %i.ex = sext i32 %i.ew to i64                   ; 2 uses
  %i.ey = getelementptr [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = icmp slt i32 %i.ec, 1                   ; 5 uses
  %i.fa = icmp slt i32 %i.em, 1                   ; 5 uses
  %i.fb = and i1 %i.ez, %i.fa
  %or.cond3.not.us = and i1 %i.fb, %i.ct          ; 2 uses
  %.0393.idx.us = select i1 %or.cond3.not.us, i64 8, i64 0 ; 2 uses
  %.0393.us = getelementptr i8, ptr %i.ey, i64 %.0393.idx.us ; 6 uses
  %i.fc = zext i1 %or.cond3.not.us to i32         ; 2 uses
  %.0388.us = add nsw i32 %i.cs, %i.fc
  %i.fd = icmp slt i32 %.0388.us, %i.ak
  br i1 %i.fd, label %.lr.ph449.us, label %.preheader437.us

scalar.ph941:                                     ; preds = %scalar.ph941.preheader, %scalar.ph941
  %indvars.iv516 = phi i64 [ %indvars.iv.next517, %scalar.ph941 ], [ %indvars.iv516.ph, %scalar.ph941.preheader ] ; 9 uses
  %i.fe = trunc nsw i64 %indvars.iv516 to i32
  %i.ff = sitofp i32 %i.fe to float               ; 3 uses
  %i.fg = fmul float %i.y, %i.ff                  ; 3 uses
  %i.fh = call float @llvm.fmuladd.f32(float %i.ff, float %i.aa, float %i.mr) ; 3 uses
  %i.fi = call float @llvm.fmuladd.f32(float %i.ff, float %i.ae, float %i.ms)
  %i.fj = call float @llvm.fmuladd.f32(float %i.en, float %i.ai, float %i.fi) ; 3 uses
  %i.fk = fmul float %i.fh, %i.fh
  %i.fl = call float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.fk)
  %i.fm = call float @llvm.fmuladd.f32(float %i.fj, float %i.fj, float %i.fl) ; 3 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv516
  store float %i.fg, ptr %i.fn, align 4, !tbaa !18
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv516
  store float %i.fh, ptr %i.fo, align 4, !tbaa !18
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv516
  store float %i.fj, ptr %i.fp, align 4, !tbaa !18
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv516
  store float %i.fm, ptr %i.fq, align 4, !tbaa !18
  %i.fr = fmul float %i.er, %i.fm
  %i.fs = fmul float %i.fr, %i.el
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv516
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !18
  %i.fv = fmul float %i.fs, %i.fu
  %i.fw = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv516
  store float %i.fv, ptr %i.fw, align 4, !tbaa !18
  %i.fx = fmul float %i.fm, %i.cw
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv516
  store float %i.fx, ptr %i.fy, align 4, !tbaa !18
  %indvars.iv.next517 = add nsw i64 %indvars.iv516, 1 ; 2 uses
  %i.fz = icmp slt i64 %indvars.iv.next517, %i.de
  br i1 %i.fz, label %scalar.ph941, label %.preheader437.us, !llvm.loop !215

scalar.ph861:                                     ; preds = %scalar.ph861.preheader, %scalar.ph861
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %scalar.ph861 ], [ %indvars.iv518.ph, %scalar.ph861.preheader ] ; 9 uses
  %i.ga = trunc i64 %indvars.iv518 to i32
  %i.gb = sub i32 %i.ga, %i.n
  %i.gc = sitofp i32 %i.gb to float               ; 3 uses
  %i.gd = fmul float %i.y, %i.gc                  ; 3 uses
  %i.ge = call float @llvm.fmuladd.f32(float %i.gc, float %i.aa, float %i.og) ; 3 uses
  %i.gf = call float @llvm.fmuladd.f32(float %i.gc, float %i.ae, float %i.oh)
  %i.gg = call float @llvm.fmuladd.f32(float %i.en, float %i.ai, float %i.gf) ; 3 uses
  %i.gh = fmul float %i.ge, %i.ge
  %i.gi = call float @llvm.fmuladd.f32(float %i.gd, float %i.gd, float %i.gh)
  %i.gj = call float @llvm.fmuladd.f32(float %i.gg, float %i.gg, float %i.gi) ; 3 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv518
  store float %i.gd, ptr %i.gk, align 4, !tbaa !18
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv518
  store float %i.ge, ptr %i.gl, align 4, !tbaa !18
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv518
  store float %i.gg, ptr %i.gm, align 4, !tbaa !18
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv518
  store float %i.gj, ptr %i.gn, align 4, !tbaa !18
  %i.go = fmul float %i.er, %i.gj
  %i.gp = fmul float %i.go, %i.el
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv518
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !18
  %i.gs = fmul float %i.gp, %i.gr
  %i.gt = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv518
  store float %i.gs, ptr %i.gt, align 4, !tbaa !18
  %i.gu = fmul float %i.gj, %i.cw
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv518
  store float %i.gu, ptr %i.gv, align 4, !tbaa !18
  %indvars.iv.next519 = add nsw i64 %indvars.iv518, 1 ; 2 uses
  %exitcond522.not = icmp eq i64 %indvars.iv.next519, %i.df
  br i1 %exitcond522.not, label %.preheader436.us, label %scalar.ph861, !llvm.loop !216

.lr.ph453.us:                                     ; preds = %.lr.ph453.us.preheader, %.lr.ph453.us
  %indvars.iv525 = phi i64 [ %indvars.iv.next526, %.lr.ph453.us ], [ %indvars.iv525.ph, %.lr.ph453.us.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv525
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !18
  %i.gy = fdiv float 1.000000e+00, %i.gx
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv525
  store float %i.gy, ptr %i.gz, align 4, !tbaa !18
  %indvars.iv.next526 = add nsw i64 %indvars.iv525, 1 ; 2 uses
  %i.ha = icmp slt i64 %indvars.iv.next526, %i.df
  br i1 %i.ha, label %.lr.ph453.us, label %._crit_edge454.us, !llvm.loop !217

._crit_edge454.us:                                ; preds = %.lr.ph453.us, %middle.block802, %vec.epilog.middle.block816, %.preheader436.us
  br i1 %.not10.i406, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %._crit_edge454.us
  %i.hb = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> splat (float f0x3FB8AA3B), <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.hc = fneg <16 x float> %i.hb
  %i.hd = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.hc, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 2.000000e+00))
  %i.he = fmul <16 x float> %i.hb, %i.hd
  %i.hf = fmul <16 x float> %i.he, splat (float f0xCF000000)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.us
  %.011.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %i.ig, %bb.b ] ; 2 uses
  %.idx.i.i.us = shl nuw nsw i64 %.011.i.us, 6    ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 %.idx.i.i.us
  %.val.i.i.us = load <16 x float>, ptr %i.hg, align 64, !tbaa !218 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i.i.us
  %.val.i17.i.us = load <16 x float>, ptr %i.hh, align 64, !tbaa !218
  %i.hi = call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %.val.i17.i.us, <16 x float> %i.hf, i32 4) ; 2 uses
  %i.hj = fmul <16 x float> %i.hi, splat (float f0x3FB8AA3B) ; 2 uses
  %i.hk = call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.hj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hl = add <16 x i32> %i.hk, splat (i32 127)
  %i.hm = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.hl, <16 x i32> zeroinitializer)
  %i.hn = shl <16 x i32> %i.hm, splat (i32 23)
  %i.ho = bitcast <16 x i32> %i.hn to <16 x float> ; 2 uses
  %i.hp = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.hj, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.hq = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.hp, <16 x float> splat (float f0xBF317200), <16 x float> %i.hi)
  %i.hr = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.hp, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.hq) ; 7 uses
  %i.hs = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.hr, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.ht = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.hs, <16 x float> %i.hr, <16 x float> splat (float f0x3D2AAF4C))
  %i.hu = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ht, <16 x float> %i.hr, <16 x float> splat (float f0x3E2AAA5E))
  %i.hv = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.hu, <16 x float> %i.hr, <16 x float> splat (float f0x3EFFFFFB))
  %i.hw = fmul <16 x float> %i.hr, %i.hr
  %i.hx = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.hw, <16 x float> %i.hv, <16 x float> %i.hr)
  %i.hy = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.hx, <16 x float> %i.ho, <16 x float> %i.ho)
  %i.hz = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %.val.i.i.us, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ia = fneg <16 x float> %i.hz
  %i.ib = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ia, <16 x float> %.val.i.i.us, <16 x float> splat (float 2.000000e+00))
  %i.ic = fmul <16 x float> %i.hz, %i.ib
  %i.id = fmul <16 x float> %i.da, %i.ic
  %i.ie = fmul <16 x float> %i.id, %i.hy
  %i.if = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i.i.us
  store <16 x float> %i.ie, ptr %i.if, align 64, !tbaa !218
  %i.ig = add nuw nsw i64 %.011.i.us, 1           ; 2 uses
  %.not.i.us = icmp eq i64 %i.ig, %i.dc
  br i1 %.not.i.us, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us, label %bb.b, !llvm.loop !219

_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us: ; preds = %bb.b, %._crit_edge454.us
  br i1 %i.lo, label %.lr.ph457.us.preheader, label %.loopexit.us

.lr.ph457.us.preheader:                           ; preds = %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us
  %i.ih = and i1 %i.fa, %i.ez
  %i.ii = and i1 %i.ih, %i.ct
  %umin528 = zext i1 %i.ii to i64                 ; 4 uses
  %i.ij = add nsw i64 %i.dd, %umin528             ; 6 uses
  %.reass1009 = add i64 %umin528, %invariant.op1008
  %i.ik = call i64 @llvm.smax.i64(i64 %.reass1009, i64 %i.df)
  %i.il = add nsw i64 %umin528, %i.dd
  %i.im = sub i64 %i.ik, %i.il                    ; 3 uses
  %min.iters.check768 = icmp ult i64 %i.im, 8
  br i1 %min.iters.check768, label %.lr.ph457.us.preheader987, label %vector.memcheck750

vector.memcheck750:                               ; preds = %.lr.ph457.us.preheader
  %i.in = add nsw i64 %i.dg, %umin528
  %smax751 = call i64 @llvm.smax.i64(i64 %i.in, i64 %i.df) ; 2 uses
  %i.io = add i64 %smax751, %i.eu
  %i.ip = add i64 %i.io, %i.ex
  %i.iq = shl nsw i64 %i.ip, 3
  %i.ir = add i64 %.0393.idx.us, %i.iq
  %i.is = shl nsw i64 %i.ij, 3
  %i.it = sub i64 %i.ir, %i.is
  %scevgep752 = getelementptr i8, ptr %2, i64 %i.it ; 2 uses
  %i.iu = shl nsw i64 %i.ij, 2                    ; 2 uses
  %scevgep753 = getelementptr i8, ptr %i.bj, i64 %i.iu ; 2 uses
  %i.iv = shl nsw i64 %smax751, 2                 ; 2 uses
  %scevgep754 = getelementptr i8, ptr %i.bj, i64 %i.iv ; 2 uses
  %scevgep755 = getelementptr i8, ptr %i.bm, i64 %i.iu ; 2 uses
  %scevgep756 = getelementptr i8, ptr %i.bm, i64 %i.iv ; 2 uses
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
  %n.vec770 = and i64 %i.im, -8                   ; 4 uses
  %i.iw = add i64 %i.ij, %n.vec770
  %i.ix = shl i64 %n.vec770, 3
  %i.iy = getelementptr i8, ptr %.0393.us, i64 %i.ix
  br label %vector.body771

vector.body771:                                   ; preds = %vector.body771, %vector.ph769
  %index772 = phi i64 [ 0, %vector.ph769 ], [ %index.next781, %vector.body771 ] ; 3 uses
  %i.iz = add i64 %i.ij, %index772                ; 2 uses
  %i.ja = shl i64 %index772, 3
  %next.gep773 = getelementptr i8, ptr %.0393.us, i64 %i.ja ; 2 uses
  %wide.vec774 = load <16 x float>, ptr %next.gep773, align 4, !tbaa !18, !alias.scope !220, !noalias !223 ; 2 uses
  %strided.vec775 = shufflevector <16 x float> %wide.vec774, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec776 = shufflevector <16 x float> %wide.vec774, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.iz ; 2 uses
  %wide.load777 = load <8 x float>, ptr %i.jb, align 4, !tbaa !18, !alias.scope !226 ; 2 uses
  %i.jc = fmul <8 x float> %strided.vec775, %wide.load777
  %i.jd = fmul <8 x float> %strided.vec776, %wide.load777
  %interleaved.vec779 = shufflevector <8 x float> %i.jc, <8 x float> %i.jd, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec779, ptr %next.gep773, align 4, !tbaa !18, !alias.scope !220, !noalias !223
  %i.je = fmul <8 x float> %strided.vec776, %strided.vec776
  %i.jf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec775, <8 x float> %strided.vec775, <8 x float> %i.je)
  %i.jg = fmul <8 x float> %i.jf, splat (float 2.000000e+00)
  %wide.load780 = load <8 x float>, ptr %i.jb, align 4, !tbaa !18, !alias.scope !226
  %i.jh = fmul <8 x float> %i.jg, %wide.load780
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.iz
  store <8 x float> %i.jh, ptr %i.ji, align 4, !tbaa !18, !alias.scope !227, !noalias !226
  %index.next781 = add nuw i64 %index772, 8       ; 2 uses
  %i.jj = icmp eq i64 %index.next781, %n.vec770
  br i1 %i.jj, label %middle.block782, label %vector.body771, !llvm.loop !228

middle.block782:                                  ; preds = %vector.body771
  %cmp.n783 = icmp eq i64 %i.im, %n.vec770
  br i1 %cmp.n783, label %.lr.ph466.us.preheader, label %.lr.ph457.us.preheader987

.lr.ph457.us.preheader987:                        ; preds = %vector.memcheck750, %.lr.ph457.us.preheader, %middle.block782
  %indvars.iv529.ph = phi i64 [ %i.ij, %vector.memcheck750 ], [ %i.ij, %.lr.ph457.us.preheader ], [ %i.iw, %middle.block782 ]
  %.1394455.us.ph = phi ptr [ %.0393.us, %vector.memcheck750 ], [ %.0393.us, %.lr.ph457.us.preheader ], [ %i.iy, %middle.block782 ]
  br label %.lr.ph457.us

.lr.ph457.us:                                     ; preds = %.lr.ph457.us.preheader987, %.lr.ph457.us
  %indvars.iv529 = phi i64 [ %indvars.iv.next530, %.lr.ph457.us ], [ %indvars.iv529.ph, %.lr.ph457.us.preheader987 ] ; 3 uses
  %.1394455.us = phi ptr [ %i.jy, %.lr.ph457.us ], [ %.1394455.us.ph, %.lr.ph457.us.preheader987 ] ; 4 uses
  %i.jk = load float, ptr %.1394455.us, align 4, !tbaa !229 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.1394455.us, i64 4 ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !231 ; 3 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv529 ; 3 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !18
  %i.jp = fmul float %i.jk, %i.jo
  store float %i.jp, ptr %.1394455.us, align 4, !tbaa !229
  %i.jq = load float, ptr %i.jn, align 4, !tbaa !18
  %i.jr = fmul float %i.jm, %i.jq
  store float %i.jr, ptr %i.jl, align 4, !tbaa !231
  %i.js = fmul float %i.jm, %i.jm
  %i.jt = call float @llvm.fmuladd.f32(float %i.jk, float %i.jk, float %i.js)
  %i.ju = fmul float %i.jt, 2.000000e+00
  %i.jv = load float, ptr %i.jn, align 4, !tbaa !18
  %i.jw = fmul float %i.ju, %i.jv
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv529
  store float %i.jw, ptr %i.jx, align 4, !tbaa !18
  %indvars.iv.next530 = add nsw i64 %indvars.iv529, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.1394455.us, i64 8
  %i.jz = icmp slt i64 %indvars.iv.next530, %i.df
  br i1 %i.jz, label %.lr.ph457.us, label %.lr.ph466.us.preheader, !llvm.loop !232

.lr.ph466.us:                                     ; preds = %.lr.ph466.us.preheader, %.lr.ph466.us
  %indvars.iv533 = phi i64 [ %i.lm, %.lr.ph466.us.preheader ], [ %indvars.iv.next534, %.lr.ph466.us ] ; 7 uses
  %.1465.us = phi float [ %.0368480.us, %.lr.ph466.us.preheader ], [ %i.li, %.lr.ph466.us ]
  %.1370464.us = phi float [ %.0369479.us, %.lr.ph466.us.preheader ], [ %i.lf, %.lr.ph466.us ]
  %.1373463.us = phi float [ %.0372478.us, %.lr.ph466.us.preheader ], [ %i.le, %.lr.ph466.us ]
  %.1376462.us = phi float [ %.0375477.us, %.lr.ph466.us.preheader ], [ %i.ld, %.lr.ph466.us ]
  %.1379461.us = phi float [ %.0378476.us, %.lr.ph466.us.preheader ], [ %i.lc, %.lr.ph466.us ]
  %.1382460.us = phi float [ %.0381475.us, %.lr.ph466.us.preheader ], [ %i.lb, %.lr.ph466.us ]
  %.1385459.us = phi float [ %.0384474.us, %.lr.ph466.us.preheader ], [ %i.ko, %.lr.ph466.us ]
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv533
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !18
  %i.kc = fmul float %.0.us, %i.kb                ; 3 uses
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv533
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !18
  %i.kf = fmul float %i.ke, %i.j
  %i.kg = fpext float %i.kf to double
  %i.kh = fadd double %i.kg, 1.000000e+00
  %i.ki = fmul double %i.kh, 2.000000e+00
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv533
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !18
  %i.kl = fpext float %i.kk to double
  %i.km = fmul double %i.ki, %i.kl
  %i.kn = fptrunc double %i.km to float
  %i.ko = fadd float %.1385459.us, %i.kc          ; 2 uses
  %i.kp = fmul float %i.kc, %i.kn                 ; 3 uses
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv533
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !18 ; 2 uses
  %i.ks = fmul float %i.kr, %i.kp                 ; 3 uses
  %i.kt = fneg float %i.kc                        ; 3 uses
  %i.ku = call float @llvm.fmuladd.f32(float %i.ks, float %i.kr, float %i.kt)
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %indvars.iv533
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !18 ; 3 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv533
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !18 ; 4 uses
  %i.kz = fmul float %i.kw, %i.kp                 ; 2 uses
  %i.la = call float @llvm.fmuladd.f32(float %i.kz, float %i.kw, float %i.kt)
  %i.lb = fadd float %.1382460.us, %i.ku          ; 2 uses
  %i.lc = call float @llvm.fmuladd.f32(float %i.ks, float %i.kw, float %.1379461.us) ; 2 uses
  %i.ld = call float @llvm.fmuladd.f32(float %i.ks, float %i.ky, float %.1376462.us) ; 2 uses
  %i.le = fadd float %.1373463.us, %i.la          ; 2 uses
  %i.lf = call float @llvm.fmuladd.f32(float %i.kz, float %i.ky, float %.1370464.us) ; 2 uses
  %i.lg = fmul float %i.ky, %i.kp
  %i.lh = call float @llvm.fmuladd.f32(float %i.lg, float %i.ky, float %i.kt)
  %i.li = fadd float %.1465.us, %i.lh             ; 2 uses
  %indvars.iv.next534 = add nsw i64 %indvars.iv533, 1 ; 2 uses
  %i.lj = icmp slt i64 %indvars.iv.next534, %i.df
  br i1 %i.lj, label %.lr.ph466.us, label %.loopexit.us, !llvm.loop !233

.lr.ph466.us.preheader:                           ; preds = %.lr.ph457.us, %middle.block782
  %i.lk = and i1 %i.fa, %i.ez
  %i.ll = and i1 %i.lk, %i.ct
  %umin532 = zext i1 %i.ll to i64
  %i.lm = add nsw i64 %i.dd, %umin532
  br label %.lr.ph466.us

.loopexit.us:                                     ; preds = %.lr.ph466.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us
  %.1385.lcssa.us = phi float [ %.0384474.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.ko, %.lr.ph466.us ] ; 2 uses
  %.1382.lcssa.us = phi float [ %.0381475.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.lb, %.lr.ph466.us ] ; 2 uses
  %.1379.lcssa.us = phi float [ %.0378476.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.lc, %.lr.ph466.us ] ; 2 uses
  %.1376.lcssa.us = phi float [ %.0375477.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.ld, %.lr.ph466.us ] ; 2 uses
  %.1373.lcssa.us = phi float [ %.0372478.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.le, %.lr.ph466.us ] ; 2 uses
  %.1370.lcssa.us = phi float [ %.0369479.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.lf, %.lr.ph466.us ] ; 2 uses
  %.1.lcssa.us = phi float [ %.0368480.us, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit.us ], [ %i.li, %.lr.ph466.us ] ; 2 uses
  %i.ln = add nsw i32 %.0389473.us, 1             ; 2 uses
  %exitcond535.not = icmp eq i32 %i.ln, %i.bz
  br i1 %exitcond535.not, label %._crit_edge483.loopexit, label %.lr.ph482.split.us, !llvm.loop !234

.preheader436.us:                                 ; preds = %scalar.ph861, %middle.block896, %.preheader437.us
  %i.lo = icmp sgt i32 %i.cu, %i.fc               ; 2 uses
  br i1 %i.lo, label %iter.check806, label %._crit_edge454.us

iter.check806:                                    ; preds = %.preheader436.us
  %i.lp = and i1 %i.fa, %i.ez
  %i.lq = and i1 %i.lp, %i.ct
  %umin524 = zext i1 %i.lq to i64                 ; 3 uses
  %i.lr = add nsw i64 %i.dd, %umin524             ; 5 uses
  %i.ls = add nsw i64 %i.dh, %umin524
  %smax788 = call i64 @llvm.smax.i64(i64 %i.ls, i64 %i.df)
  %i.lt = add nsw i64 %i.dd, %umin524
  %i.lu = sub i64 %smax788, %i.lt                 ; 7 uses
  %min.iters.check790 = icmp ult i64 %i.lu, 4
  %or.cond977 = select i1 %min.iters.check790, i1 true, i1 %diff.check787
  br i1 %or.cond977, label %.lr.ph453.us.preheader, label %vector.main.loop.iter.check791

vector.main.loop.iter.check791:                   ; preds = %iter.check806
  %min.iters.check792 = icmp ult i64 %i.lu, 32
  br i1 %min.iters.check792, label %vec.epilog.ph810, label %vector.ph793

vector.ph793:                                     ; preds = %vector.main.loop.iter.check791
  %i.lv = and i64 %i.lu, 28
  %n.vec794 = and i64 %i.lu, -32                  ; 4 uses
  %i.lw = add i64 %i.lr, %n.vec794
  br label %vector.body795

vector.body795:                                   ; preds = %vector.body795, %vector.ph793
  %index796 = phi i64 [ 0, %vector.ph793 ], [ %index.next801, %vector.body795 ] ; 2 uses
  %i.lx = add i64 %i.lr, %index796                ; 2 uses
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.lx ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 96
  %wide.load797 = load <8 x float>, ptr %i.ly, align 4, !tbaa !18
  %wide.load798 = load <8 x float>, ptr %i.lz, align 4, !tbaa !18
  %wide.load799 = load <8 x float>, ptr %i.ma, align 4, !tbaa !18
  %wide.load800 = load <8 x float>, ptr %i.mb, align 4, !tbaa !18
  %i.mc = fdiv <8 x float> splat (float 1.000000e+00), %wide.load797
  %i.md = fdiv <8 x float> splat (float 1.000000e+00), %wide.load798
  %i.me = fdiv <8 x float> splat (float 1.000000e+00), %wide.load799
  %i.mf = fdiv <8 x float> splat (float 1.000000e+00), %wide.load800
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.lx ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 64
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 96
  store <8 x float> %i.mc, ptr %i.mg, align 4, !tbaa !18
  store <8 x float> %i.md, ptr %i.mh, align 4, !tbaa !18
  store <8 x float> %i.me, ptr %i.mi, align 4, !tbaa !18
  store <8 x float> %i.mf, ptr %i.mj, align 4, !tbaa !18
  %index.next801 = add nuw i64 %index796, 32      ; 2 uses
  %i.mk = icmp eq i64 %index.next801, %n.vec794
  br i1 %i.mk, label %middle.block802, label %vector.body795, !llvm.loop !235

middle.block802:                                  ; preds = %vector.body795
  %cmp.n803 = icmp eq i64 %i.lu, %n.vec794
  br i1 %cmp.n803, label %._crit_edge454.us, label %vec.epilog.iter.check808

vec.epilog.iter.check808:                         ; preds = %middle.block802
  %min.epilog.iters.check809 = icmp eq i64 %i.lv, 0
  br i1 %min.epilog.iters.check809, label %.lr.ph453.us.preheader, label %vec.epilog.ph810, !prof !236

vec.epilog.ph810:                                 ; preds = %vector.main.loop.iter.check791, %vec.epilog.iter.check808
  %vec.epilog.resume.val804 = phi i64 [ %n.vec794, %vec.epilog.iter.check808 ], [ 0, %vector.main.loop.iter.check791 ]
  %n.vec811 = and i64 %i.lu, -4                   ; 3 uses
  %i.ml = add i64 %i.lr, %n.vec811
  br label %vec.epilog.vector.body812

vec.epilog.vector.body812:                        ; preds = %vec.epilog.vector.body812, %vec.epilog.ph810
  %index813 = phi i64 [ %vec.epilog.resume.val804, %vec.epilog.ph810 ], [ %index.next815, %vec.epilog.vector.body812 ] ; 2 uses
  %i.mm = add i64 %i.lr, %index813                ; 2 uses
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.mm
  %wide.load814 = load <4 x float>, ptr %i.mn, align 4, !tbaa !18
  %i.mo = fdiv <4 x float> splat (float 1.000000e+00), %wide.load814
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.mm
  store <4 x float> %i.mo, ptr %i.mp, align 4, !tbaa !18
  %index.next815 = add nuw i64 %index813, 4       ; 2 uses
  %i.mq = icmp eq i64 %index.next815, %n.vec811
  br i1 %i.mq, label %vec.epilog.middle.block816, label %vec.epilog.vector.body812, !llvm.loop !237

vec.epilog.middle.block816:                       ; preds = %vec.epilog.vector.body812
  %cmp.n817 = icmp eq i64 %i.lu, %n.vec811
  br i1 %cmp.n817, label %._crit_edge454.us, label %.lr.ph453.us.preheader

.lr.ph453.us.preheader:                           ; preds = %iter.check806, %vec.epilog.iter.check808, %vec.epilog.middle.block816
  %indvars.iv525.ph = phi i64 [ %i.lr, %iter.check806 ], [ %i.lw, %vec.epilog.iter.check808 ], [ %i.ml, %vec.epilog.middle.block816 ]
  br label %.lr.ph453.us

.preheader437.us:                                 ; preds = %scalar.ph941, %middle.block974, %.lr.ph482.split.us
  br i1 %i.cx, label %.lr.ph451.us, label %.preheader436.us

.lr.ph449.us:                                     ; preds = %.lr.ph482.split.us
  %i.mr = fmul float %i.ac, %.0387.us             ; 2 uses
  %i.ms = fmul float %i.ag, %.0387.us             ; 2 uses
  %i.mt = load ptr, ptr %i.ci, align 8, !tbaa !13 ; 3 uses
  %i.mu = and i1 %i.fa, %i.ez
  %i.mv = and i1 %i.mu, %i.ct
  %umin515 = zext i1 %i.mv to i64                 ; 3 uses
  %i.mw = add nsw i64 %i.dd, %umin515             ; 5 uses
  %.reass1007 = add i64 %umin515, %invariant.op1006
  %i.mx = call i64 @llvm.smax.i64(i64 %.reass1007, i64 %i.de)
  %i.my = add nsw i64 %umin515, %i.dd
  %i.mz = sub i64 %i.mx, %i.my                    ; 3 uses
  %min.iters.check942 = icmp ult i64 %i.mz, 24
  br i1 %min.iters.check942, label %scalar.ph941.preheader, label %vector.memcheck899

vector.memcheck899:                               ; preds = %.lr.ph449.us
  %i.na = ptrtoaddr ptr %i.mt to i64              ; 4 uses
  %26 = insertelement <6 x i64> %17, i64 %i.na, i64 5
  %i.nb = shufflevector <6 x i64> %26, <6 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 1, i32 2, i32 3, i32 4, i32 5, i32 2, i32 3, i32 4, i32 5, i32 3>
  %i.nc = sub <16 x i64> %13, %i.nb
  %i.nd = icmp ugt <16 x i64> %i.nc, splat (i64 -32)
  %i.ne = sub i64 %7, %i.na
  %diff.check933 = icmp ugt i64 %i.ne, -32
  %i.nf = sub i64 %i.na, %i.bh
  %diff.check937 = icmp ugt i64 %i.nf, -32
  %i.ng = sub i64 %i.na, %i.bk
  %diff.check939 = icmp ugt i64 %i.ng, -32
  %i.nh = bitcast <16 x i1> %i.nd to i16
  %i.ni = icmp ne i16 %i.nh, 0
  %op.rdx982 = or i1 %i.ni, %diff.check931
  %op.rdx983 = or i1 %diff.check933, %diff.check935
  %op.rdx984 = or i1 %diff.check937, %diff.check939
  %op.rdx985 = or i1 %op.rdx982, %op.rdx983
  %op.rdx986 = or i1 %op.rdx985, %op.rdx984
  br i1 %op.rdx986, label %scalar.ph941.preheader, label %vector.ph943

vector.ph943:                                     ; preds = %vector.memcheck899
  %n.vec944 = and i64 %i.mz, -8                   ; 3 uses
  %i.nj = add i64 %i.mw, %n.vec944
  %broadcast.splatinsert945 = insertelement <8 x float> poison, float %i.mr, i64 0
  %broadcast.splat946 = shufflevector <8 x float> %broadcast.splatinsert945, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert947 = insertelement <8 x float> poison, float %i.ms, i64 0
  %broadcast.splat948 = shufflevector <8 x float> %broadcast.splatinsert947, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert955 = insertelement <8 x float> poison, float %i.en, i64 0
  %broadcast.splat956 = shufflevector <8 x float> %broadcast.splatinsert955, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert959 = insertelement <8 x float> poison, float %i.er, i64 0
  %broadcast.splat960 = shufflevector <8 x float> %broadcast.splatinsert959, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert961 = insertelement <8 x float> poison, float %i.el, i64 0
  %broadcast.splat962 = shufflevector <8 x float> %broadcast.splatinsert961, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nk = trunc i64 %i.mw to i32
  %broadcast.splatinsert965 = insertelement <8 x i32> poison, i32 %i.nk, i64 0
  %broadcast.splat966 = shufflevector <8 x i32> %broadcast.splatinsert965, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction967 = add <8 x i32> %broadcast.splat966, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %vector.ph943
  %index969 = phi i64 [ 0, %vector.ph943 ], [ %index.next972, %vector.body968 ] ; 2 uses
  %vec.ind970 = phi <8 x i32> [ %induction967, %vector.ph943 ], [ %vec.ind.next973, %vector.body968 ] ; 2 uses
  %i.nl = add i64 %i.mw, %index969                ; 7 uses
  %i.nm = sitofp <8 x i32> %vec.ind970 to <8 x float> ; 3 uses
  %i.nn = fmul <8 x float> %broadcast.splat950, %i.nm ; 3 uses
  %i.no = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nm, <8 x float> %broadcast.splat952, <8 x float> %broadcast.splat946) ; 3 uses
  %i.np = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nm, <8 x float> %broadcast.splat954, <8 x float> %broadcast.splat948)
  %i.nq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat956, <8 x float> %broadcast.splat958, <8 x float> %i.np) ; 3 uses
  %i.nr = fmul <8 x float> %i.no, %i.no
  %i.ns = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nn, <8 x float> %i.nn, <8 x float> %i.nr)
  %i.nt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nq, <8 x float> %i.nq, <8 x float> %i.ns) ; 3 uses
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.nl
  store <8 x float> %i.nn, ptr %i.nu, align 4, !tbaa !18
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.nl
  store <8 x float> %i.no, ptr %i.nv, align 4, !tbaa !18
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.nl
  store <8 x float> %i.nq, ptr %i.nw, align 4, !tbaa !18
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.nl
  store <8 x float> %i.nt, ptr %i.nx, align 4, !tbaa !18
  %i.ny = fmul <8 x float> %broadcast.splat960, %i.nt
  %i.nz = fmul <8 x float> %i.ny, %broadcast.splat962
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.nl
  %wide.load971 = load <8 x float>, ptr %i.oa, align 4, !tbaa !18
  %i.ob = fmul <8 x float> %i.nz, %wide.load971
  %i.oc = getelementptr inbounds [4 x i8], ptr %9, i64 %i.nl
  store <8 x float> %i.ob, ptr %i.oc, align 4, !tbaa !18
  %i.od = fmul <8 x float> %i.nt, %broadcast.splat964
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.nl
  store <8 x float> %i.od, ptr %i.oe, align 4, !tbaa !18
  %index.next972 = add nuw i64 %index969, 8       ; 2 uses
  %vec.ind.next973 = add <8 x i32> %vec.ind970, splat (i32 8)
  %i.of = icmp eq i64 %index.next972, %n.vec944
  br i1 %i.of, label %middle.block974, label %vector.body968, !llvm.loop !238

middle.block974:                                  ; preds = %vector.body968
  %cmp.n975 = icmp eq i64 %i.mz, %n.vec944
  br i1 %cmp.n975, label %.preheader437.us, label %scalar.ph941.preheader

scalar.ph941.preheader:                           ; preds = %vector.memcheck899, %.lr.ph449.us, %middle.block974
  %indvars.iv516.ph = phi i64 [ %i.mw, %vector.memcheck899 ], [ %i.mw, %.lr.ph449.us ], [ %i.nj, %middle.block974 ]
  br label %scalar.ph941

.lr.ph451.us:                                     ; preds = %.preheader437.us
  %i.og = fmul float %i.ac, %.0387.us             ; 2 uses
  %i.oh = fmul float %i.ag, %.0387.us             ; 2 uses
  %i.oi = load ptr, ptr %i.ci, align 8, !tbaa !13 ; 3 uses
  br i1 %min.iters.check862, label %scalar.ph861.preheader, label %vector.memcheck819

vector.memcheck819:                               ; preds = %.lr.ph451.us
  %i.oj = ptrtoaddr ptr %i.oi to i64              ; 4 uses
  %27 = insertelement <6 x i64> %25, i64 %i.oj, i64 5
  %i.ok = shufflevector <6 x i64> %27, <6 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 1, i32 2, i32 3, i32 4, i32 5, i32 2, i32 3, i32 4, i32 5, i32 3>
  %i.ol = sub <16 x i64> %21, %i.ok
  %i.om = icmp ugt <16 x i64> %i.ol, splat (i64 -32)
  %i.on = sub i64 %7, %i.oj
  %diff.check853 = icmp ugt i64 %i.on, -32
  %i.oo = sub i64 %i.oj, %i.bh
  %diff.check857 = icmp ugt i64 %i.oo, -32
  %i.op = sub i64 %i.oj, %i.bk
  %diff.check859 = icmp ugt i64 %i.op, -32
  %i.oq = bitcast <16 x i1> %i.om to i16
  %i.or = icmp ne i16 %i.oq, 0
  %op.rdx = or i1 %i.or, %diff.check851
  %op.rdx978 = or i1 %diff.check853, %diff.check855
  %op.rdx979 = or i1 %diff.check857, %diff.check859
  %op.rdx980 = or i1 %op.rdx, %op.rdx978
  %op.rdx981 = or i1 %op.rdx980, %op.rdx979
  br i1 %op.rdx981, label %scalar.ph861.preheader, label %vector.ph863

vector.ph863:                                     ; preds = %vector.memcheck819
  %broadcast.splatinsert865 = insertelement <8 x float> poison, float %i.og, i64 0
  %broadcast.splat866 = shufflevector <8 x float> %broadcast.splatinsert865, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert867 = insertelement <8 x float> poison, float %i.oh, i64 0
  %broadcast.splat868 = shufflevector <8 x float> %broadcast.splatinsert867, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert877 = insertelement <8 x float> poison, float %i.en, i64 0
  %broadcast.splat878 = shufflevector <8 x float> %broadcast.splatinsert877, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert881 = insertelement <8 x float> poison, float %i.er, i64 0
  %broadcast.splat882 = shufflevector <8 x float> %broadcast.splatinsert881, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert883 = insertelement <8 x float> poison, float %i.el, i64 0
  %broadcast.splat884 = shufflevector <8 x float> %broadcast.splatinsert883, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body890

vector.body890:                                   ; preds = %vector.body890, %vector.ph863
  %index891 = phi i64 [ 0, %vector.ph863 ], [ %index.next894, %vector.body890 ] ; 2 uses
  %vec.ind892 = phi <8 x i32> [ %induction889, %vector.ph863 ], [ %vec.ind.next895, %vector.body890 ] ; 2 uses
  %i.os = add i64 %index891, %i.de                ; 7 uses
  %i.ot = sub <8 x i32> %vec.ind892, %broadcast.splat870
  %i.ou = sitofp <8 x i32> %i.ot to <8 x float>   ; 3 uses
  %i.ov = fmul <8 x float> %broadcast.splat872, %i.ou ; 3 uses
  %i.ow = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ou, <8 x float> %broadcast.splat874, <8 x float> %broadcast.splat866) ; 3 uses
  %i.ox = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ou, <8 x float> %broadcast.splat876, <8 x float> %broadcast.splat868)
  %i.oy = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat878, <8 x float> %broadcast.splat880, <8 x float> %i.ox) ; 3 uses
  %i.oz = fmul <8 x float> %i.ow, %i.ow
  %i.pa = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ov, <8 x float> %i.ov, <8 x float> %i.oz)
  %i.pb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.oy, <8 x float> %i.oy, <8 x float> %i.pa) ; 3 uses
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.os
  store <8 x float> %i.ov, ptr %i.pc, align 4, !tbaa !18
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.os
  store <8 x float> %i.ow, ptr %i.pd, align 4, !tbaa !18
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.os
  store <8 x float> %i.oy, ptr %i.pe, align 4, !tbaa !18
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.os
  store <8 x float> %i.pb, ptr %i.pf, align 4, !tbaa !18
  %i.pg = fmul <8 x float> %broadcast.splat882, %i.pb
  %i.ph = fmul <8 x float> %i.pg, %broadcast.splat884
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.os
  %wide.load893 = load <8 x float>, ptr %i.pi, align 4, !tbaa !18
  %i.pj = fmul <8 x float> %i.ph, %wide.load893
  %i.pk = getelementptr inbounds [4 x i8], ptr %9, i64 %i.os
  store <8 x float> %i.pj, ptr %i.pk, align 4, !tbaa !18
  %i.pl = fmul <8 x float> %i.pb, %broadcast.splat886
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.os
  store <8 x float> %i.pl, ptr %i.pm, align 4, !tbaa !18
  %index.next894 = add nuw i64 %index891, 8       ; 2 uses
  %vec.ind.next895 = add <8 x i32> %vec.ind892, splat (i32 8)
  %i.pn = icmp eq i64 %index.next894, %n.vec864
  br i1 %i.pn, label %middle.block896, label %vector.body890, !llvm.loop !239

middle.block896:                                  ; preds = %vector.body890
  br i1 %cmp.n897, label %.preheader436.us, label %scalar.ph861.preheader

scalar.ph861.preheader:                           ; preds = %vector.memcheck819, %.lr.ph451.us, %middle.block896
  %indvars.iv518.ph = phi i64 [ %i.de, %vector.memcheck819 ], [ %i.de, %.lr.ph451.us ], [ %i.dp, %middle.block896 ]
  br label %scalar.ph861

.lr.ph482.split:                                  ; preds = %.lr.ph482.split.preheader, %.loopexit439
  %.0389473 = phi i32 [ %i.adr, %.loopexit439 ], [ %i.bw, %.lr.ph482.split.preheader ] ; 3 uses
  %i.po = sdiv i32 %.0389473, %i.bt               ; 3 uses
  %i.pp = mul nsw i32 %i.po, %i.bt                ; 0 uses
  %.recomposed1010 = srem i32 %.0389473, %i.bt    ; 2 uses
  %i.pq = add nsw i32 %i.cf, %i.po                ; 4 uses
  %i.pr = icmp slt i32 %i.pq, %i.am
  %i.ps = select i1 %i.pr, i32 0, i32 %i.p
  %.0387.in = sub nsw i32 %i.pq, %i.ps
  %.0387 = sitofp i32 %.0387.in to float          ; 4 uses
  %i.pt = sext i32 %i.pq to i64
  %i.pu = load ptr, ptr %i.cj, align 8, !tbaa !13
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %i.pt
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !18
  %i.px = fpext float %i.pw to double
  %i.py = fmul double %i.ch, %i.px
  %i.pz = fptrunc double %i.py to float           ; 8 uses
  %i.qa = add nsw i32 %i.cl, %.recomposed1010     ; 3 uses
  %i.qb = sitofp i32 %i.qa to float               ; 8 uses
  %i.qc = sext i32 %i.qa to i64
  %i.qd = load ptr, ptr %i.cm, align 8, !tbaa !13
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.qc
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !18 ; 8 uses
  %.reass = mul i32 %factor.op.mul, %i.po
  %i.qg = sext i32 %.reass to i64                 ; 2 uses
  %i.qh = getelementptr [8 x i8], ptr %2, i64 %i.qg
  %i.qi = mul i32 %i.cr, %.recomposed1010
  %i.qj = sext i32 %i.qi to i64                   ; 2 uses
  %i.qk = getelementptr [8 x i8], ptr %i.qh, i64 %i.qj
  %i.ql = icmp slt i32 %i.pq, 1                   ; 3 uses
  %i.qm = icmp slt i32 %i.qa, 1                   ; 3 uses
  %i.qn = and i1 %i.ql, %i.qm
  %or.cond3.not = and i1 %i.qn, %i.ct             ; 2 uses
  %.0393.idx = select i1 %or.cond3.not, i64 8, i64 0 ; 2 uses
  %.0393 = getelementptr i8, ptr %i.qk, i64 %.0393.idx ; 8 uses
  %i.qo = zext i1 %or.cond3.not to i32            ; 2 uses
  %.0388 = add nsw i32 %i.cs, %i.qo
  %i.qp = icmp slt i32 %.0388, %i.ak
  br i1 %i.qp, label %iter.check712, label %.preheader440

iter.check712:                                    ; preds = %.lr.ph482.split
  %i.qq = fmul float %i.ac, %.0387                ; 3 uses
  %i.qr = fmul float %i.ag, %.0387                ; 3 uses
  %i.qs = load ptr, ptr %i.ci, align 8, !tbaa !13 ; 4 uses
  %i.qt = and i1 %i.qm, %i.ql
  %i.qu = and i1 %i.qt, %i.ct
  %umin505 = zext i1 %i.qu to i64                 ; 3 uses
  %i.qv = add nsw i64 %i.dd, %umin505             ; 8 uses
  %i.qw = add nsw i64 %i.dt, %umin505
  %smax667 = call i64 @llvm.smax.i64(i64 %i.qw, i64 %i.de)
  %i.qx = add nsw i64 %i.dd, %umin505
  %i.qy = sub i64 %smax667, %i.qx                 ; 7 uses
  %min.iters.check668 = icmp ult i64 %i.qy, 8
  br i1 %min.iters.check668, label %vec.epilog.scalar.ph713.preheader, label %vector.memcheck661

vector.memcheck661:                               ; preds = %iter.check712
  %i.qz = ptrtoaddr ptr %i.qs to i64              ; 2 uses
  %i.ra = sub i64 %i.qz, %i.bh
  %diff.check663 = icmp ugt i64 %i.ra, -128
  %conflict.rdx664 = or i1 %diff.check662, %diff.check663
  %i.rb = sub i64 %i.qz, %i.bk
  %diff.check665 = icmp ugt i64 %i.rb, -128
  %conflict.rdx666 = or i1 %conflict.rdx664, %diff.check665
  br i1 %conflict.rdx666, label %vec.epilog.scalar.ph713.preheader, label %vector.main.loop.iter.check669

vector.main.loop.iter.check669:                   ; preds = %vector.memcheck661
  %min.iters.check670 = icmp ult i64 %i.qy, 32
  br i1 %min.iters.check670, label %vec.epilog.ph716, label %vector.ph671

vector.ph671:                                     ; preds = %vector.main.loop.iter.check669
  %i.rc = and i64 %i.qy, 24
  %n.vec672 = and i64 %i.qy, -32                  ; 4 uses
  %i.rd = add i64 %i.qv, %n.vec672                ; 2 uses
  %broadcast.splatinsert673 = insertelement <8 x float> poison, float %i.qq, i64 0
  %broadcast.splat674 = shufflevector <8 x float> %broadcast.splatinsert673, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert675 = insertelement <8 x float> poison, float %i.qr, i64 0
  %broadcast.splat676 = shufflevector <8 x float> %broadcast.splatinsert675, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert683 = insertelement <8 x float> poison, float %i.qb, i64 0
  %broadcast.splat684 = shufflevector <8 x float> %broadcast.splatinsert683, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert687 = insertelement <8 x float> poison, float %i.qf, i64 0
  %broadcast.splat688 = shufflevector <8 x float> %broadcast.splatinsert687, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert689 = insertelement <8 x float> poison, float %i.pz, i64 0
  %broadcast.splat690 = shufflevector <8 x float> %broadcast.splatinsert689, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.re = trunc i64 %i.qv to i32
  %broadcast.splatinsert693 = insertelement <8 x i32> poison, i32 %i.re, i64 0
  %broadcast.splat694 = shufflevector <8 x i32> %broadcast.splatinsert693, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction695 = add <8 x i32> %broadcast.splat694, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body696

vector.body696:                                   ; preds = %vector.body696, %vector.ph671
  %index697 = phi i64 [ 0, %vector.ph671 ], [ %index.next706, %vector.body696 ] ; 2 uses
  %vec.ind698 = phi <8 x i32> [ %induction695, %vector.ph671 ], [ %vec.ind.next707, %vector.body696 ] ; 5 uses
  %step.add699 = add <8 x i32> %vec.ind698, splat (i32 8)
  %step.add.2700 = add <8 x i32> %vec.ind698, splat (i32 16)
  %step.add.3701 = add <8 x i32> %vec.ind698, splat (i32 24)
  %i.rf = add i64 %i.qv, %index697                ; 3 uses
  %i.rg = sitofp <8 x i32> %vec.ind698 to <8 x float> ; 3 uses
  %i.rh = sitofp <8 x i32> %step.add699 to <8 x float> ; 3 uses
  %i.ri = sitofp <8 x i32> %step.add.2700 to <8 x float> ; 3 uses
  %i.rj = sitofp <8 x i32> %step.add.3701 to <8 x float> ; 3 uses
  %i.rk = fmul <8 x float> %broadcast.splat678, %i.rg ; 2 uses
  %i.rl = fmul <8 x float> %broadcast.splat678, %i.rh ; 2 uses
  %i.rm = fmul <8 x float> %broadcast.splat678, %i.ri ; 2 uses
  %i.rn = fmul <8 x float> %broadcast.splat678, %i.rj ; 2 uses
  %i.ro = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rg, <8 x float> %broadcast.splat680, <8 x float> %broadcast.splat674) ; 2 uses
  %i.rp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rh, <8 x float> %broadcast.splat680, <8 x float> %broadcast.splat674) ; 2 uses
  %i.rq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ri, <8 x float> %broadcast.splat680, <8 x float> %broadcast.splat674) ; 2 uses
  %i.rr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rj, <8 x float> %broadcast.splat680, <8 x float> %broadcast.splat674) ; 2 uses
  %i.rs = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rg, <8 x float> %broadcast.splat682, <8 x float> %broadcast.splat676)
  %i.rt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rh, <8 x float> %broadcast.splat682, <8 x float> %broadcast.splat676)
  %i.ru = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ri, <8 x float> %broadcast.splat682, <8 x float> %broadcast.splat676)
  %i.rv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rj, <8 x float> %broadcast.splat682, <8 x float> %broadcast.splat676)
  %i.rw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat684, <8 x float> %broadcast.splat686, <8 x float> %i.rs) ; 2 uses
  %i.rx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat684, <8 x float> %broadcast.splat686, <8 x float> %i.rt) ; 2 uses
  %i.ry = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat684, <8 x float> %broadcast.splat686, <8 x float> %i.ru) ; 2 uses
  %i.rz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat684, <8 x float> %broadcast.splat686, <8 x float> %i.rv) ; 2 uses
  %i.sa = fmul <8 x float> %i.ro, %i.ro
  %i.sb = fmul <8 x float> %i.rp, %i.rp
  %i.sc = fmul <8 x float> %i.rq, %i.rq
  %i.sd = fmul <8 x float> %i.rr, %i.rr
  %i.se = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rk, <8 x float> %i.rk, <8 x float> %i.sa)
  %i.sf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rl, <8 x float> %i.rl, <8 x float> %i.sb)
  %i.sg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rm, <8 x float> %i.rm, <8 x float> %i.sc)
  %i.sh = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rn, <8 x float> %i.rn, <8 x float> %i.sd)
  %i.si = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rw, <8 x float> %i.rw, <8 x float> %i.se) ; 2 uses
  %i.sj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rx, <8 x float> %i.rx, <8 x float> %i.sf) ; 2 uses
  %i.sk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ry, <8 x float> %i.ry, <8 x float> %i.sg) ; 2 uses
  %i.sl = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rz, <8 x float> %i.rz, <8 x float> %i.sh) ; 2 uses
  %i.sm = fmul <8 x float> %broadcast.splat688, %i.si
  %i.sn = fmul <8 x float> %broadcast.splat688, %i.sj
  %i.so = fmul <8 x float> %broadcast.splat688, %i.sk
  %i.sp = fmul <8 x float> %broadcast.splat688, %i.sl
  %i.sq = fmul <8 x float> %i.sm, %broadcast.splat690
  %i.sr = fmul <8 x float> %i.sn, %broadcast.splat690
  %i.ss = fmul <8 x float> %i.so, %broadcast.splat690
  %i.st = fmul <8 x float> %i.sp, %broadcast.splat690
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.rf ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 96
  %wide.load702 = load <8 x float>, ptr %i.su, align 4, !tbaa !18
  %wide.load703 = load <8 x float>, ptr %i.sv, align 4, !tbaa !18
  %wide.load704 = load <8 x float>, ptr %i.sw, align 4, !tbaa !18
  %wide.load705 = load <8 x float>, ptr %i.sx, align 4, !tbaa !18
  %i.sy = fmul <8 x float> %i.sq, %wide.load702
  %i.sz = fmul <8 x float> %i.sr, %wide.load703
  %i.ta = fmul <8 x float> %i.ss, %wide.load704
  %i.tb = fmul <8 x float> %i.st, %wide.load705
  %i.tc = getelementptr inbounds [4 x i8], ptr %9, i64 %i.rf ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 32
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 64
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 96
  store <8 x float> %i.sy, ptr %i.tc, align 4, !tbaa !18
  store <8 x float> %i.sz, ptr %i.td, align 4, !tbaa !18
  store <8 x float> %i.ta, ptr %i.te, align 4, !tbaa !18
  store <8 x float> %i.tb, ptr %i.tf, align 4, !tbaa !18
  %i.tg = fmul <8 x float> %i.si, %broadcast.splat692
  %i.th = fmul <8 x float> %i.sj, %broadcast.splat692
  %i.ti = fmul <8 x float> %i.sk, %broadcast.splat692
  %i.tj = fmul <8 x float> %i.sl, %broadcast.splat692
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.rf ; 4 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 96
  store <8 x float> %i.tg, ptr %i.tk, align 4, !tbaa !18
  store <8 x float> %i.th, ptr %i.tl, align 4, !tbaa !18
  store <8 x float> %i.ti, ptr %i.tm, align 4, !tbaa !18
  store <8 x float> %i.tj, ptr %i.tn, align 4, !tbaa !18
  %index.next706 = add nuw i64 %index697, 32      ; 2 uses
  %vec.ind.next707 = add <8 x i32> %vec.ind698, splat (i32 32)
  %i.to = icmp eq i64 %index.next706, %n.vec672
  br i1 %i.to, label %middle.block708, label %vector.body696, !llvm.loop !240

middle.block708:                                  ; preds = %vector.body696
  %cmp.n709 = icmp eq i64 %i.qy, %n.vec672
  br i1 %cmp.n709, label %.preheader440, label %vec.epilog.iter.check714

vec.epilog.iter.check714:                         ; preds = %middle.block708
  %min.epilog.iters.check715 = icmp eq i64 %i.rc, 0
  br i1 %min.epilog.iters.check715, label %vec.epilog.scalar.ph713.preheader, label %vec.epilog.ph716, !prof !26

vec.epilog.ph716:                                 ; preds = %vector.main.loop.iter.check669, %vec.epilog.iter.check714
  %vec.epilog.resume.val710 = phi i64 [ %n.vec672, %vec.epilog.iter.check714 ], [ 0, %vector.main.loop.iter.check669 ]
  %bc.resume.val711 = phi i64 [ %i.rd, %vec.epilog.iter.check714 ], [ %i.qv, %vector.main.loop.iter.check669 ]
  %n.vec717 = and i64 %i.qy, -8                   ; 3 uses
  %i.tp = add i64 %i.qv, %n.vec717
  %broadcast.splatinsert718 = insertelement <8 x float> poison, float %i.qq, i64 0
  %broadcast.splat719 = shufflevector <8 x float> %broadcast.splatinsert718, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert720 = insertelement <8 x float> poison, float %i.qr, i64 0
  %broadcast.splat721 = shufflevector <8 x float> %broadcast.splatinsert720, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert728 = insertelement <8 x float> poison, float %i.qb, i64 0
  %broadcast.splat729 = shufflevector <8 x float> %broadcast.splatinsert728, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert732 = insertelement <8 x float> poison, float %i.qf, i64 0
  %broadcast.splat733 = shufflevector <8 x float> %broadcast.splatinsert732, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert734 = insertelement <8 x float> poison, float %i.pz, i64 0
  %broadcast.splat735 = shufflevector <8 x float> %broadcast.splatinsert734, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tq = trunc i64 %bc.resume.val711 to i32
  %broadcast.splatinsert738 = insertelement <8 x i32> poison, i32 %i.tq, i64 0
  %broadcast.splat739 = shufflevector <8 x i32> %broadcast.splatinsert738, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction740 = add <8 x i32> %broadcast.splat739, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body741

vec.epilog.vector.body741:                        ; preds = %vec.epilog.vector.body741, %vec.epilog.ph716
  %index742 = phi i64 [ %vec.epilog.resume.val710, %vec.epilog.ph716 ], [ %index.next745, %vec.epilog.vector.body741 ] ; 2 uses
  %vec.ind743 = phi <8 x i32> [ %induction740, %vec.epilog.ph716 ], [ %vec.ind.next746, %vec.epilog.vector.body741 ] ; 2 uses
  %i.tr = add i64 %i.qv, %index742                ; 3 uses
  %i.ts = sitofp <8 x i32> %vec.ind743 to <8 x float> ; 3 uses
  %i.tt = fmul <8 x float> %broadcast.splat723, %i.ts ; 2 uses
  %i.tu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ts, <8 x float> %broadcast.splat725, <8 x float> %broadcast.splat719) ; 2 uses
  %i.tv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ts, <8 x float> %broadcast.splat727, <8 x float> %broadcast.splat721)
  %i.tw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat729, <8 x float> %broadcast.splat731, <8 x float> %i.tv) ; 2 uses
  %i.tx = fmul <8 x float> %i.tu, %i.tu
  %i.ty = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.tt, <8 x float> %i.tt, <8 x float> %i.tx)
  %i.tz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.tw, <8 x float> %i.tw, <8 x float> %i.ty) ; 2 uses
  %i.ua = fmul <8 x float> %broadcast.splat733, %i.tz
  %i.ub = fmul <8 x float> %i.ua, %broadcast.splat735
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.tr
  %wide.load744 = load <8 x float>, ptr %i.uc, align 4, !tbaa !18
  %i.ud = fmul <8 x float> %i.ub, %wide.load744
  %i.ue = getelementptr inbounds [4 x i8], ptr %9, i64 %i.tr
  store <8 x float> %i.ud, ptr %i.ue, align 4, !tbaa !18
  %i.uf = fmul <8 x float> %i.tz, %broadcast.splat737
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.tr
  store <8 x float> %i.uf, ptr %i.ug, align 4, !tbaa !18
  %index.next745 = add nuw i64 %index742, 8       ; 2 uses
  %vec.ind.next746 = add <8 x i32> %vec.ind743, splat (i32 8)
  %i.uh = icmp eq i64 %index.next745, %n.vec717
  br i1 %i.uh, label %vec.epilog.middle.block747, label %vec.epilog.vector.body741, !llvm.loop !241

vec.epilog.middle.block747:                       ; preds = %vec.epilog.vector.body741
  %cmp.n748 = icmp eq i64 %i.qy, %n.vec717
  br i1 %cmp.n748, label %.preheader440, label %vec.epilog.scalar.ph713.preheader

vec.epilog.scalar.ph713.preheader:                ; preds = %vector.memcheck661, %iter.check712, %vec.epilog.iter.check714, %vec.epilog.middle.block747
  %indvars.iv.ph = phi i64 [ %i.qv, %iter.check712 ], [ %i.qv, %vector.memcheck661 ], [ %i.rd, %vec.epilog.iter.check714 ], [ %i.tp, %vec.epilog.middle.block747 ]
  br label %vec.epilog.scalar.ph713

.preheader440:                                    ; preds = %vec.epilog.scalar.ph713, %middle.block708, %vec.epilog.middle.block747, %.lr.ph482.split
  br i1 %i.cx, label %iter.check621, label %._crit_edge

iter.check621:                                    ; preds = %.preheader440
  %i.ui = fmul float %i.ac, %.0387                ; 5 uses
  %i.uj = fmul float %i.ag, %.0387                ; 5 uses
  %i.uk = load ptr, ptr %i.ci, align 8, !tbaa !13 ; 6 uses
  br i1 %min.iters.check584, label %vec.epilog.scalar.ph622.preheader, label %vector.memcheck580

vector.memcheck580:                               ; preds = %iter.check621
  %i.ul = ptrtoaddr ptr %i.uk to i64              ; 2 uses
  %i.um = sub i64 %i.ul, %i.bh
  %diff.check581 = icmp ugt i64 %i.um, -128
  %conflict.rdx = or i1 %diff.check, %diff.check581
  %i.un = sub i64 %i.ul, %i.bk
  %diff.check582 = icmp ugt i64 %i.un, -128
  %conflict.rdx583 = or i1 %conflict.rdx, %diff.check582
  br i1 %conflict.rdx583, label %vec.epilog.scalar.ph622.preheader, label %vector.main.loop.iter.check585

vector.main.loop.iter.check585:                   ; preds = %vector.memcheck580
  br i1 %min.iters.check586, label %vec.epilog.ph625, label %vector.ph587

vector.ph587:                                     ; preds = %vector.main.loop.iter.check585
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ui, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert589 = insertelement <8 x float> poison, float %i.uj, i64 0
  %broadcast.splat590 = shufflevector <8 x float> %broadcast.splatinsert589, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert599 = insertelement <8 x float> poison, float %i.qb, i64 0
  %broadcast.splat600 = shufflevector <8 x float> %broadcast.splatinsert599, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert603 = insertelement <8 x float> poison, float %i.qf, i64 0
  %broadcast.splat604 = shufflevector <8 x float> %broadcast.splatinsert603, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert605 = insertelement <8 x float> poison, float %i.pz, i64 0
  %broadcast.splat606 = shufflevector <8 x float> %broadcast.splatinsert605, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body611

vector.body611:                                   ; preds = %vector.body611, %vector.ph587
  %index612 = phi i64 [ 0, %vector.ph587 ], [ %index.next617, %vector.body611 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph587 ], [ %vec.ind.next, %vector.body611 ] ; 5 uses
  %i.uo = add i64 %index612, %i.de                ; 3 uses
  %i.up = sub <8 x i32> %vec.ind, %broadcast.splat592
  %.reass1001 = add <8 x i32> %vec.ind, %invariant.op
  %.reass1003 = add <8 x i32> %vec.ind, %invariant.op1002
  %.reass1005 = add <8 x i32> %vec.ind, %invariant.op1004
  %i.uq = sitofp <8 x i32> %i.up to <8 x float>   ; 3 uses
  %i.ur = sitofp <8 x i32> %.reass1001 to <8 x float> ; 3 uses
  %i.us = sitofp <8 x i32> %.reass1003 to <8 x float> ; 3 uses
  %i.ut = sitofp <8 x i32> %.reass1005 to <8 x float> ; 3 uses
  %i.uu = fmul <8 x float> %broadcast.splat594, %i.uq ; 2 uses
  %i.uv = fmul <8 x float> %broadcast.splat594, %i.ur ; 2 uses
  %i.uw = fmul <8 x float> %broadcast.splat594, %i.us ; 2 uses
  %i.ux = fmul <8 x float> %broadcast.splat594, %i.ut ; 2 uses
  %i.uy = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.uq, <8 x float> %broadcast.splat596, <8 x float> %broadcast.splat) ; 2 uses
  %i.uz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ur, <8 x float> %broadcast.splat596, <8 x float> %broadcast.splat) ; 2 uses
  %i.va = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.us, <8 x float> %broadcast.splat596, <8 x float> %broadcast.splat) ; 2 uses
  %i.vb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ut, <8 x float> %broadcast.splat596, <8 x float> %broadcast.splat) ; 2 uses
  %i.vc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.uq, <8 x float> %broadcast.splat598, <8 x float> %broadcast.splat590)
  %i.vd = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ur, <8 x float> %broadcast.splat598, <8 x float> %broadcast.splat590)
  %i.ve = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.us, <8 x float> %broadcast.splat598, <8 x float> %broadcast.splat590)
  %i.vf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ut, <8 x float> %broadcast.splat598, <8 x float> %broadcast.splat590)
  %i.vg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat600, <8 x float> %broadcast.splat602, <8 x float> %i.vc) ; 2 uses
  %i.vh = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat600, <8 x float> %broadcast.splat602, <8 x float> %i.vd) ; 2 uses
  %i.vi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat600, <8 x float> %broadcast.splat602, <8 x float> %i.ve) ; 2 uses
  %i.vj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat600, <8 x float> %broadcast.splat602, <8 x float> %i.vf) ; 2 uses
  %i.vk = fmul <8 x float> %i.uy, %i.uy
  %i.vl = fmul <8 x float> %i.uz, %i.uz
  %i.vm = fmul <8 x float> %i.va, %i.va
  %i.vn = fmul <8 x float> %i.vb, %i.vb
  %i.vo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.uu, <8 x float> %i.uu, <8 x float> %i.vk)
  %i.vp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.uv, <8 x float> %i.uv, <8 x float> %i.vl)
  %i.vq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.uw, <8 x float> %i.uw, <8 x float> %i.vm)
  %i.vr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ux, <8 x float> %i.ux, <8 x float> %i.vn)
  %i.vs = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vg, <8 x float> %i.vg, <8 x float> %i.vo) ; 2 uses
  %i.vt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vh, <8 x float> %i.vh, <8 x float> %i.vp) ; 2 uses
  %i.vu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vi, <8 x float> %i.vi, <8 x float> %i.vq) ; 2 uses
  %i.vv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vj, <8 x float> %i.vj, <8 x float> %i.vr) ; 2 uses
  %i.vw = fmul <8 x float> %broadcast.splat604, %i.vs
  %i.vx = fmul <8 x float> %broadcast.splat604, %i.vt
  %i.vy = fmul <8 x float> %broadcast.splat604, %i.vu
  %i.vz = fmul <8 x float> %broadcast.splat604, %i.vv
  %i.wa = fmul <8 x float> %i.vw, %broadcast.splat606
  %i.wb = fmul <8 x float> %i.vx, %broadcast.splat606
  %i.wc = fmul <8 x float> %i.vy, %broadcast.splat606
  %i.wd = fmul <8 x float> %i.vz, %broadcast.splat606
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.uo ; 4 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 32
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 64
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 96
  %wide.load613 = load <8 x float>, ptr %i.we, align 4, !tbaa !18
  %wide.load614 = load <8 x float>, ptr %i.wf, align 4, !tbaa !18
  %wide.load615 = load <8 x float>, ptr %i.wg, align 4, !tbaa !18
  %wide.load616 = load <8 x float>, ptr %i.wh, align 4, !tbaa !18
  %i.wi = fmul <8 x float> %i.wa, %wide.load613
  %i.wj = fmul <8 x float> %i.wb, %wide.load614
  %i.wk = fmul <8 x float> %i.wc, %wide.load615
  %i.wl = fmul <8 x float> %i.wd, %wide.load616
  %i.wm = getelementptr inbounds [4 x i8], ptr %9, i64 %i.uo ; 4 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 32
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 64
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 96
  store <8 x float> %i.wi, ptr %i.wm, align 4, !tbaa !18
  store <8 x float> %i.wj, ptr %i.wn, align 4, !tbaa !18
  store <8 x float> %i.wk, ptr %i.wo, align 4, !tbaa !18
  store <8 x float> %i.wl, ptr %i.wp, align 4, !tbaa !18
  %i.wq = fmul <8 x float> %i.vs, %broadcast.splat608
  %i.wr = fmul <8 x float> %i.vt, %broadcast.splat608
  %i.ws = fmul <8 x float> %i.vu, %broadcast.splat608
  %i.wt = fmul <8 x float> %i.vv, %broadcast.splat608
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.uo ; 4 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 32
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 96
  store <8 x float> %i.wq, ptr %i.wu, align 4, !tbaa !18
  store <8 x float> %i.wr, ptr %i.wv, align 4, !tbaa !18
  store <8 x float> %i.ws, ptr %i.ww, align 4, !tbaa !18
  store <8 x float> %i.wt, ptr %i.wx, align 4, !tbaa !18
  %index.next617 = add nuw i64 %index612, 32      ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.wy = icmp eq i64 %index.next617, %n.vec588
  br i1 %i.wy, label %middle.block618, label %vector.body611, !llvm.loop !242

middle.block618:                                  ; preds = %vector.body611
  br i1 %cmp.n619, label %._crit_edge, label %vec.epilog.iter.check623

vec.epilog.iter.check623:                         ; preds = %middle.block618
  br i1 %min.epilog.iters.check624, label %vec.epilog.scalar.ph622.preheader, label %vec.epilog.ph625, !prof !26

vec.epilog.ph625:                                 ; preds = %vector.main.loop.iter.check585, %vec.epilog.iter.check623
  %vec.epilog.resume.val620 = phi i64 [ %n.vec588, %vec.epilog.iter.check623 ], [ 0, %vector.main.loop.iter.check585 ]
  %bc.resume.val = phi i64 [ %i.dx, %vec.epilog.iter.check623 ], [ %i.de, %vector.main.loop.iter.check585 ]
  %broadcast.splatinsert627 = insertelement <8 x float> poison, float %i.ui, i64 0
  %broadcast.splat628 = shufflevector <8 x float> %broadcast.splatinsert627, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert629 = insertelement <8 x float> poison, float %i.uj, i64 0
  %broadcast.splat630 = shufflevector <8 x float> %broadcast.splatinsert629, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert639 = insertelement <8 x float> poison, float %i.qb, i64 0
  %broadcast.splat640 = shufflevector <8 x float> %broadcast.splatinsert639, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert643 = insertelement <8 x float> poison, float %i.qf, i64 0
  %broadcast.splat644 = shufflevector <8 x float> %broadcast.splatinsert643, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert645 = insertelement <8 x float> poison, float %i.pz, i64 0
  %broadcast.splat646 = shufflevector <8 x float> %broadcast.splatinsert645, <8 x float> poison, <8 x i32> zeroinitializer
  %i.wz = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert649 = insertelement <8 x i32> poison, i32 %i.wz, i64 0
  %broadcast.splat650 = shufflevector <8 x i32> %broadcast.splatinsert649, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction651 = add <8 x i32> %broadcast.splat650, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body652

vec.epilog.vector.body652:                        ; preds = %vec.epilog.vector.body652, %vec.epilog.ph625
  %index653 = phi i64 [ %vec.epilog.resume.val620, %vec.epilog.ph625 ], [ %index.next656, %vec.epilog.vector.body652 ] ; 2 uses
  %vec.ind654 = phi <8 x i32> [ %induction651, %vec.epilog.ph625 ], [ %vec.ind.next657, %vec.epilog.vector.body652 ] ; 2 uses
  %i.xa = add i64 %index653, %i.de                ; 3 uses
  %i.xb = sub <8 x i32> %vec.ind654, %broadcast.splat632
  %i.xc = sitofp <8 x i32> %i.xb to <8 x float>   ; 3 uses
  %i.xd = fmul <8 x float> %broadcast.splat634, %i.xc ; 2 uses
  %i.xe = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.xc, <8 x float> %broadcast.splat636, <8 x float> %broadcast.splat628) ; 2 uses
  %i.xf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.xc, <8 x float> %broadcast.splat638, <8 x float> %broadcast.splat630)
  %i.xg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat640, <8 x float> %broadcast.splat642, <8 x float> %i.xf) ; 2 uses
  %i.xh = fmul <8 x float> %i.xe, %i.xe
  %i.xi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.xd, <8 x float> %i.xd, <8 x float> %i.xh)
  %i.xj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.xg, <8 x float> %i.xg, <8 x float> %i.xi) ; 2 uses
  %i.xk = fmul <8 x float> %broadcast.splat644, %i.xj
  %i.xl = fmul <8 x float> %i.xk, %broadcast.splat646
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.xa
  %wide.load655 = load <8 x float>, ptr %i.xm, align 4, !tbaa !18
  %i.xn = fmul <8 x float> %i.xl, %wide.load655
  %i.xo = getelementptr inbounds [4 x i8], ptr %9, i64 %i.xa
  store <8 x float> %i.xn, ptr %i.xo, align 4, !tbaa !18
  %i.xp = fmul <8 x float> %i.xj, %broadcast.splat648
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.xa
  store <8 x float> %i.xp, ptr %i.xq, align 4, !tbaa !18
  %index.next656 = add nuw i64 %index653, 8       ; 2 uses
  %vec.ind.next657 = add <8 x i32> %vec.ind654, splat (i32 8)
  %i.xr = icmp eq i64 %index.next656, %n.vec626
  br i1 %i.xr, label %vec.epilog.middle.block658, label %vec.epilog.vector.body652, !llvm.loop !243

vec.epilog.middle.block658:                       ; preds = %vec.epilog.vector.body652
  br i1 %cmp.n659, label %._crit_edge, label %vec.epilog.scalar.ph622.preheader

vec.epilog.scalar.ph622.preheader:                ; preds = %vector.memcheck580, %iter.check621, %vec.epilog.iter.check623, %vec.epilog.middle.block658
  %indvars.iv506.ph = phi i64 [ %i.de, %iter.check621 ], [ %i.de, %vector.memcheck580 ], [ %i.dx, %vec.epilog.iter.check623 ], [ %i.dy, %vec.epilog.middle.block658 ] ; 8 uses
  %i.xs = sub nsw i64 %i.df, %indvars.iv506.ph
  %xtraiter = and i64 %i.xs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph622.prol.loopexit, label %vec.epilog.scalar.ph622.prol

vec.epilog.scalar.ph622.prol:                     ; preds = %vec.epilog.scalar.ph622.preheader
  %i.xt = trunc i64 %indvars.iv506.ph to i32
  %i.xu = sub i32 %i.xt, %i.n
  %i.xv = sitofp i32 %i.xu to float               ; 3 uses
  %i.xw = fmul float %i.y, %i.xv                  ; 2 uses
  %i.xx = call float @llvm.fmuladd.f32(float %i.xv, float %i.aa, float %i.ui) ; 2 uses
  %i.xy = call float @llvm.fmuladd.f32(float %i.xv, float %i.ae, float %i.uj)
  %i.xz = call float @llvm.fmuladd.f32(float %i.qb, float %i.ai, float %i.xy) ; 2 uses
  %i.ya = fmul float %i.xx, %i.xx
  %i.yb = call float @llvm.fmuladd.f32(float %i.xw, float %i.xw, float %i.ya)
  %i.yc = call float @llvm.fmuladd.f32(float %i.xz, float %i.xz, float %i.yb) ; 2 uses
  %i.yd = fmul float %i.qf, %i.yc
  %i.ye = fmul float %i.yd, %i.pz
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %indvars.iv506.ph
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !18
  %i.yh = fmul float %i.ye, %i.yg
  %i.yi = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv506.ph
  store float %i.yh, ptr %i.yi, align 4, !tbaa !18
  %i.yj = fmul float %i.yc, %i.cw
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv506.ph
  store float %i.yj, ptr %i.yk, align 4, !tbaa !18
  %indvars.iv.next507.prol = add nsw i64 %indvars.iv506.ph, 1
  br label %vec.epilog.scalar.ph622.prol.loopexit

vec.epilog.scalar.ph622.prol.loopexit:            ; preds = %vec.epilog.scalar.ph622.prol, %vec.epilog.scalar.ph622.preheader
  %indvars.iv506.unr = phi i64 [ %indvars.iv506.ph, %vec.epilog.scalar.ph622.preheader ], [ %indvars.iv.next507.prol, %vec.epilog.scalar.ph622.prol ]
  %i.yl = icmp eq i64 %indvars.iv506.ph, %i.dz
  br i1 %i.yl, label %._crit_edge, label %vec.epilog.scalar.ph622

vec.epilog.scalar.ph713:                          ; preds = %vec.epilog.scalar.ph713.preheader, %vec.epilog.scalar.ph713
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph713 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph713.preheader ] ; 5 uses
  %i.ym = trunc nsw i64 %indvars.iv to i32
  %i.yn = sitofp i32 %i.ym to float               ; 3 uses
  %i.yo = fmul float %i.y, %i.yn                  ; 2 uses
  %i.yp = call float @llvm.fmuladd.f32(float %i.yn, float %i.aa, float %i.qq) ; 2 uses
  %i.yq = call float @llvm.fmuladd.f32(float %i.yn, float %i.ae, float %i.qr)
  %i.yr = call float @llvm.fmuladd.f32(float %i.qb, float %i.ai, float %i.yq) ; 2 uses
  %i.ys = fmul float %i.yp, %i.yp
  %i.yt = call float @llvm.fmuladd.f32(float %i.yo, float %i.yo, float %i.ys)
  %i.yu = call float @llvm.fmuladd.f32(float %i.yr, float %i.yr, float %i.yt) ; 2 uses
  %i.yv = fmul float %i.qf, %i.yu
  %i.yw = fmul float %i.yv, %i.pz
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %indvars.iv
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !18
  %i.yz = fmul float %i.yw, %i.yy
  %i.za = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv
  store float %i.yz, ptr %i.za, align 4, !tbaa !18
  %i.zb = fmul float %i.yu, %i.cw
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv
  store float %i.zb, ptr %i.zc, align 4, !tbaa !18
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.zd = icmp slt i64 %indvars.iv.next, %i.de
  br i1 %i.zd, label %vec.epilog.scalar.ph713, label %.preheader440, !llvm.loop !244

vec.epilog.scalar.ph622:                          ; preds = %vec.epilog.scalar.ph622.prol.loopexit, %vec.epilog.scalar.ph622
  %indvars.iv506 = phi i64 [ %indvars.iv.next507.1, %vec.epilog.scalar.ph622 ], [ %indvars.iv506.unr, %vec.epilog.scalar.ph622.prol.loopexit ] ; 6 uses
  %i.ze = trunc i64 %indvars.iv506 to i32
  %i.zf = sub i32 %i.ze, %i.n
  %i.zg = sitofp i32 %i.zf to float               ; 3 uses
  %i.zh = fmul float %i.y, %i.zg                  ; 2 uses
  %i.zi = call float @llvm.fmuladd.f32(float %i.zg, float %i.aa, float %i.ui) ; 2 uses
  %i.zj = call float @llvm.fmuladd.f32(float %i.zg, float %i.ae, float %i.uj)
  %i.zk = call float @llvm.fmuladd.f32(float %i.qb, float %i.ai, float %i.zj) ; 2 uses
  %i.zl = fmul float %i.zi, %i.zi
  %i.zm = call float @llvm.fmuladd.f32(float %i.zh, float %i.zh, float %i.zl)
  %i.zn = call float @llvm.fmuladd.f32(float %i.zk, float %i.zk, float %i.zm) ; 2 uses
  %i.zo = fmul float %i.qf, %i.zn
  %i.zp = fmul float %i.zo, %i.pz
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %indvars.iv506
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !18
  %i.zs = fmul float %i.zp, %i.zr
  %i.zt = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv506
  store float %i.zs, ptr %i.zt, align 4, !tbaa !18
  %i.zu = fmul float %i.zn, %i.cw
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv506
  store float %i.zu, ptr %i.zv, align 4, !tbaa !18
  %indvars.iv.next507 = add nsw i64 %indvars.iv506, 1 ; 4 uses
  %i.zw = trunc i64 %indvars.iv.next507 to i32
  %i.zx = sub i32 %i.zw, %i.n
  %i.zy = sitofp i32 %i.zx to float               ; 3 uses
  %i.zz = fmul float %i.y, %i.zy                  ; 2 uses
  %i.aaa = call float @llvm.fmuladd.f32(float %i.zy, float %i.aa, float %i.ui) ; 2 uses
  %i.aab = call float @llvm.fmuladd.f32(float %i.zy, float %i.ae, float %i.uj)
  %i.aac = call float @llvm.fmuladd.f32(float %i.qb, float %i.ai, float %i.aab) ; 2 uses
  %i.aad = fmul float %i.aaa, %i.aaa
  %i.aae = call float @llvm.fmuladd.f32(float %i.zz, float %i.zz, float %i.aad)
  %i.aaf = call float @llvm.fmuladd.f32(float %i.aac, float %i.aac, float %i.aae) ; 2 uses
  %i.aag = fmul float %i.qf, %i.aaf
  %i.aah = fmul float %i.aag, %i.pz
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %indvars.iv.next507
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !18
  %i.aak = fmul float %i.aah, %i.aaj
  %i.aal = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next507
  store float %i.aak, ptr %i.aal, align 4, !tbaa !18
  %i.aam = fmul float %i.aaf, %i.cw
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv.next507
  store float %i.aam, ptr %i.aan, align 4, !tbaa !18
  %indvars.iv.next507.1 = add nsw i64 %indvars.iv506, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next507.1, %i.df
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph622, !llvm.loop !245

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph622.prol.loopexit, %vec.epilog.scalar.ph622, %middle.block618, %vec.epilog.middle.block658, %.preheader440
  br i1 %.not10.i406, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413, label %.lr.ph.i407

.lr.ph.i407:                                      ; preds = %._crit_edge
  %i.aao = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> splat (float f0x3FB8AA3B), <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aap = fneg <16 x float> %i.aao
  %i.aaq = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aap, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 2.000000e+00))
  %i.aar = fmul <16 x float> %i.aao, %i.aaq
  %i.aas = fmul <16 x float> %i.aar, splat (float f0xCF000000)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i407
  %.011.i408 = phi i64 [ 0, %.lr.ph.i407 ], [ %i.abt, %bb.c ] ; 2 uses
  %.idx.i.i409 = shl nuw nsw i64 %.011.i408, 6    ; 3 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %9, i64 %.idx.i.i409
  %.val.i.i410 = load <16 x float>, ptr %i.aat, align 64, !tbaa !218 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i.i409
  %.val.i17.i411 = load <16 x float>, ptr %i.aau, align 64, !tbaa !218
  %i.aav = call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %.val.i17.i411, <16 x float> %i.aas, i32 4) ; 2 uses
  %i.aaw = fmul <16 x float> %i.aav, splat (float f0x3FB8AA3B) ; 2 uses
  %i.aax = call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.aaw, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aay = add <16 x i32> %i.aax, splat (i32 127)
  %i.aaz = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.aay, <16 x i32> zeroinitializer)
  %i.aba = shl <16 x i32> %i.aaz, splat (i32 23)
  %i.abb = bitcast <16 x i32> %i.aba to <16 x float> ; 2 uses
  %i.abc = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aaw, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.abd = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abc, <16 x float> splat (float f0xBF317200), <16 x float> %i.aav)
  %i.abe = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abc, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.abd) ; 7 uses
  %i.abf = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abe, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.abg = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abf, <16 x float> %i.abe, <16 x float> splat (float f0x3D2AAF4C))
  %i.abh = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abg, <16 x float> %i.abe, <16 x float> splat (float f0x3E2AAA5E))
  %i.abi = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abh, <16 x float> %i.abe, <16 x float> splat (float f0x3EFFFFFB))
  %i.abj = fmul <16 x float> %i.abe, %i.abe
  %i.abk = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abj, <16 x float> %i.abi, <16 x float> %i.abe)
  %i.abl = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abk, <16 x float> %i.abb, <16 x float> %i.abb)
  %i.abm = call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %.val.i.i410, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.abn = fneg <16 x float> %i.abm
  %i.abo = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abn, <16 x float> %.val.i.i410, <16 x float> splat (float 2.000000e+00))
  %i.abp = fmul <16 x float> %i.abm, %i.abo
  %i.abq = fmul <16 x float> %i.da, %i.abp
  %i.abr = fmul <16 x float> %i.abq, %i.abl
  %i.abs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i.i409
  store <16 x float> %i.abr, ptr %i.abs, align 64, !tbaa !218
  %i.abt = add nuw nsw i64 %.011.i408, 1          ; 2 uses
  %.not.i412 = icmp eq i64 %i.abt, %i.dc
  br i1 %.not.i412, label %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413, label %bb.c, !llvm.loop !219

_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413: ; preds = %bb.c, %._crit_edge
  %i.abu = icmp sgt i32 %i.cu, %i.qo
  br i1 %i.abu, label %iter.check, label %.loopexit439

iter.check:                                       ; preds = %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413
  %i.abv = and i1 %i.qm, %i.ql
  %i.abw = and i1 %i.abv, %i.ct
  %umin510 = zext i1 %i.abw to i64                ; 4 uses
  %i.abx = add nsw i64 %i.dd, %umin510            ; 8 uses
  %i.aby = add nsw i64 %i.dh, %umin510
  %smax555 = call i64 @llvm.smax.i64(i64 %i.aby, i64 %i.df)
  %i.abz = add nsw i64 %i.dd, %umin510
  %i.aca = sub i64 %smax555, %i.abz               ; 7 uses
  %min.iters.check = icmp ult i64 %i.aca, 4
  br i1 %min.iters.check, label %.lr.ph447.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.acb = add nsw i64 %i.dg, %umin510
  %smax = call i64 @llvm.smax.i64(i64 %i.acb, i64 %i.df) ; 2 uses
  %i.acc = add i64 %smax, %i.qg
  %i.acd = add i64 %i.acc, %i.qj
  %i.ace = shl nsw i64 %i.acd, 3
  %i.acf = add i64 %.0393.idx, %i.ace
  %i.acg = shl nsw i64 %i.abx, 3
  %i.ach = sub i64 %i.acf, %i.acg
  %scevgep = getelementptr i8, ptr %2, i64 %i.ach
  %i.aci = shl nsw i64 %i.abx, 2
  %scevgep553 = getelementptr i8, ptr %i.bm, i64 %i.aci
  %i.acj = shl nsw i64 %smax, 2
  %scevgep554 = getelementptr i8, ptr %i.bm, i64 %i.acj
  %bound0 = icmp ult ptr %.0393, %scevgep554
  %bound1 = icmp ult ptr %scevgep553, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph447.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check556 = icmp ult i64 %i.aca, 16
  br i1 %min.iters.check556, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ack = and i64 %i.aca, 12
  %n.vec = and i64 %i.aca, -16                    ; 5 uses
  %i.acl = add i64 %i.abx, %n.vec
  %i.acm = shl i64 %n.vec, 3
  %i.acn = getelementptr i8, ptr %.0393, i64 %i.acm
  %i.aco = getelementptr [4 x i8], ptr %i.bm, i64 %i.abx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.acp = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.0393, i64 %i.acp ; 2 uses
  %i.acq = getelementptr i8, ptr %.0393, i64 %i.acp
  %next.gep557 = getelementptr i8, ptr %i.acq, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %next.gep, align 4, !tbaa !18, !alias.scope !246, !noalias !249 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec558 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec559 = load <16 x float>, ptr %next.gep557, align 4, !tbaa !18, !alias.scope !246, !noalias !249 ; 2 uses
  %strided.vec560 = shufflevector <16 x float> %wide.vec559, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec561 = shufflevector <16 x float> %wide.vec559, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.acr = getelementptr [4 x i8], ptr %i.aco, i64 %index ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 32
  %wide.load = load <8 x float>, ptr %i.acr, align 4, !tbaa !18, !alias.scope !249 ; 2 uses
  %wide.load562 = load <8 x float>, ptr %i.acs, align 4, !tbaa !18, !alias.scope !249 ; 2 uses
  %i.act = fmul <8 x float> %strided.vec, %wide.load
  %i.acu = fmul <8 x float> %strided.vec560, %wide.load562
  %i.acv = fmul <8 x float> %strided.vec558, %wide.load
  %i.acw = fmul <8 x float> %strided.vec561, %wide.load562
  %interleaved.vec = shufflevector <8 x float> %i.act, <8 x float> %i.acv, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !18, !alias.scope !246, !noalias !249
  %interleaved.vec565 = shufflevector <8 x float> %i.acu, <8 x float> %i.acw, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec565, ptr %next.gep557, align 4, !tbaa !18, !alias.scope !246, !noalias !249
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.acx = icmp eq i64 %index.next, %n.vec
  br i1 %i.acx, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aca, %n.vec
  br i1 %cmp.n, label %.loopexit439, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ack, 0
  br i1 %min.epilog.iters.check, label %.lr.ph447.preheader, label %vec.epilog.ph, !prof !102

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec567 = and i64 %i.aca, -4                  ; 4 uses
  %i.acy = add i64 %i.abx, %n.vec567
  %i.acz = shl i64 %n.vec567, 3
  %i.ada = getelementptr i8, ptr %.0393, i64 %i.acz
  %i.adb = getelementptr [4 x i8], ptr %i.bm, i64 %i.abx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index568 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next576, %vec.epilog.vector.body ] ; 3 uses
  %i.adc = shl i64 %index568, 3
  %next.gep569 = getelementptr i8, ptr %.0393, i64 %i.adc ; 2 uses
  %wide.vec570 = load <8 x float>, ptr %next.gep569, align 4, !tbaa !18, !alias.scope !246, !noalias !249 ; 2 uses
  %strided.vec571 = shufflevector <8 x float> %wide.vec570, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec572 = shufflevector <8 x float> %wide.vec570, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.add = getelementptr [4 x i8], ptr %i.adb, i64 %index568
  %wide.load573 = load <4 x float>, ptr %i.add, align 4, !tbaa !18, !alias.scope !249 ; 2 uses
  %i.ade = fmul <4 x float> %strided.vec571, %wide.load573
  %i.adf = fmul <4 x float> %strided.vec572, %wide.load573
  %interleaved.vec575 = shufflevector <4 x float> %i.ade, <4 x float> %i.adf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec575, ptr %next.gep569, align 4, !tbaa !18, !alias.scope !246, !noalias !249
  %index.next576 = add nuw i64 %index568, 4       ; 2 uses
  %i.adg = icmp eq i64 %index.next576, %n.vec567
  br i1 %i.adg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !252

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n577 = icmp eq i64 %i.aca, %n.vec567
  br i1 %cmp.n577, label %.loopexit439, label %.lr.ph447.preheader

.lr.ph447.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv511.ph = phi i64 [ %i.abx, %iter.check ], [ %i.abx, %vector.memcheck ], [ %i.acl, %vec.epilog.iter.check ], [ %i.acy, %vec.epilog.middle.block ]
  %.2395445.ph = phi ptr [ %.0393, %iter.check ], [ %.0393, %vector.memcheck ], [ %i.acn, %vec.epilog.iter.check ], [ %i.ada, %vec.epilog.middle.block ]
  br label %.lr.ph447

.lr.ph447:                                        ; preds = %.lr.ph447.preheader, %.lr.ph447
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %.lr.ph447 ], [ %indvars.iv511.ph, %.lr.ph447.preheader ] ; 2 uses
  %.2395445 = phi ptr [ %i.adp, %.lr.ph447 ], [ %.2395445.ph, %.lr.ph447.preheader ] ; 4 uses
  %i.adh = load float, ptr %.2395445, align 4, !tbaa !229
  %i.adi = getelementptr inbounds nuw i8, ptr %.2395445, i64 4 ; 2 uses
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !231
  %i.adk = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv511 ; 2 uses
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !18
  %i.adm = fmul float %i.adh, %i.adl
  store float %i.adm, ptr %.2395445, align 4, !tbaa !229
  %i.adn = load float, ptr %i.adk, align 4, !tbaa !18
  %i.ado = fmul float %i.adj, %i.adn
  store float %i.ado, ptr %i.adi, align 4, !tbaa !231
  %indvars.iv.next512 = add nsw i64 %indvars.iv511, 1 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.2395445, i64 8
  %i.adq = icmp slt i64 %indvars.iv.next512, %i.df
  br i1 %i.adq, label %.lr.ph447, label %.loopexit439, !llvm.loop !253

.loopexit439:                                     ; preds = %.lr.ph447, %middle.block, %vec.epilog.middle.block, %_ZL19calc_exponentials_qiifN3gmx8ArrayRefIKNS_9SimdFloatEEES3_NS0_IS1_EE.exit413
  %i.adr = add nsw i32 %.0389473, 1               ; 2 uses
  %exitcond513.not = icmp eq i32 %i.adr, %i.bz
  br i1 %exitcond513.not, label %._crit_edge483, label %.lr.ph482.split, !llvm.loop !234

._crit_edge483.loopexit:                          ; preds = %.loopexit.us
  %i.ads = fmul float %.1382.lcssa.us, 2.500000e-01
  %i.adt = insertelement <4 x float> poison, float %.1379.lcssa.us, i64 0
  %i.adu = insertelement <4 x float> %i.adt, float %.1376.lcssa.us, i64 1
  %i.adv = insertelement <4 x float> %i.adu, float %.1373.lcssa.us, i64 2
  %i.adw = insertelement <4 x float> %i.adv, float %.1370.lcssa.us, i64 3
  %i.adx = fmul <4 x float> %i.adw, splat (float 2.500000e-01)
  %i.ady = fmul float %.1.lcssa.us, 2.500000e-01
  %i.adz = fmul float %.1385.lcssa.us, 5.000000e-01
  %i.aea = insertelement <8 x float> poison, float %i.ads, i64 0
  %i.aeb = shufflevector <4 x float> %i.adx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.aec = shufflevector <8 x float> %i.aea, <8 x float> %i.aeb, <8 x i32> <i32 0, i32 8, i32 9, i32 8, i32 11, i32 12, i32 9, i32 12>
  br label %._crit_edge483

._crit_edge483:                                   ; preds = %.loopexit439, %._crit_edge483.loopexit, %bb.a
  %.0384.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.adz, %._crit_edge483.loopexit ], [ 0.000000e+00, %.loopexit439 ]
  %.0368.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ady, %._crit_edge483.loopexit ], [ 0.000000e+00, %.loopexit439 ]
  %i.aed = phi <8 x float> [ zeroinitializer, %bb.a ], [ %i.aec, %._crit_edge483.loopexit ], [ zeroinitializer, %.loopexit439 ]
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge483
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ax, i64 252
  %i.aef = getelementptr inbounds nuw i8, ptr %i.ax, i64 284
  store float %.0368.lcssa, ptr %i.aef, align 4, !tbaa !18
  store <8 x float> %i.aed, ptr %i.aee, align 4, !tbaa !18
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.ax, i64 248
end_hunk_0
