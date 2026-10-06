Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_v360?download=true
inline.NumInlined: 74
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 117
begin_hunk_0_@calculate_rotation:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float %i.s, ptr %i.x, align 16, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float %i.r, ptr %i.y, align 4, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x float> zeroinitializer, ptr %i.z, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %cos27, ptr %i.aa, align 16, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store <2 x float> zeroinitializer, ptr %i.ab, align 4, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store float %sin26, ptr %i.ac, align 4, !tbaa !29
  %i.ad = load i32, ptr %4, align 4, !tbaa !57
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = load float, ptr %i.af, align 16, !tbaa !29 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !57
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.al ; 3 uses
  %i.an = load float, ptr %i.am, align 16, !tbaa !29 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !57
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load float, ptr %i.at, align 16, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.aw = load float, ptr %3, align 4, !tbaa !29  ; 2 uses
  %i.ax = load <3 x float>, ptr %i.ai, align 4, !tbaa !29 ; 5 uses
  %i.ay = shufflevector <3 x float> %i.ax, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 0, i32 1>
  %i.az = load float, ptr %i.ai, align 4, !tbaa !29
  %i.ba = fneg nsz float %i.az
  %i.bb = load <3 x float>, ptr %i.ah, align 4, !tbaa !29 ; 4 uses
  %i.bc = extractelement <3 x float> %i.bb, i64 0
  %i.bd = fmul nsz float %i.bc, %i.ba
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.aw, float %i.ag, float %i.bd)
  %i.bf = fneg nsz <3 x float> %i.bb              ; 3 uses
  %i.bg = shufflevector <3 x float> %i.bf, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.bh = extractelement <3 x float> %i.bf, i64 1
  %i.bi = extractelement <3 x float> %i.ax, i64 1
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float %i.bi, float %i.be)
  %i.bk = extractelement <3 x float> %i.bf, i64 2
  %i.bl = extractelement <3 x float> %i.ax, i64 2
  %i.bm = tail call nsz float @llvm.fmuladd.f32(float %i.bk, float %i.bl, float %i.bj) ; 2 uses
  %i.bn = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bp = shufflevector <3 x float> %i.ax, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 0>
  %i.bq = fmul nsz <4 x float> %i.bo, %i.bp
  %i.br = shufflevector <3 x float> %i.bb, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 0>
  %i.bs = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bt, <4 x float> %i.bq)
  %i.bv = shufflevector <3 x float> %i.bb, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 0, i32 1>
  %i.bw = shufflevector <3 x float> %i.ax, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.bx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.bw, <4 x float> %i.bu)
  %i.by = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.ay, <4 x float> %i.bx) ; 4 uses
  %i.bz = load <3 x float>, ptr %i.ao, align 4, !tbaa !29 ; 5 uses
  %i.ca = shufflevector <3 x float> %i.bz, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.cb = load float, ptr %i.ap, align 8, !tbaa !29
  %i.cc = extractelement <3 x float> %i.bz, i64 0
  %i.cd = fneg nsz float %i.cc
  %i.ce = extractelement <4 x float> %i.by, i64 3
  %i.cf = fmul nsz float %i.ce, %i.cd
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %i.bm, float %i.an, float %i.cf)
  %i.ch = fneg nsz <4 x float> %i.by              ; 3 uses
  %i.ci = extractelement <4 x float> %i.ch, i64 0
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.cb, float %i.cg)
  %i.ck = extractelement <4 x float> %i.ch, i64 2
  %i.cl = extractelement <3 x float> %i.bz, i64 2
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.cl, float %i.cj)
  %i.cn = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cp = shufflevector <3 x float> %i.bz, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 0, i32 1>
  %i.cq = fmul nsz <4 x float> %i.co, %i.cp
  %i.cr = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 0>
  %i.cs = insertelement <4 x float> poison, float %i.an, i64 0
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.ct, <4 x float> %i.cq)
  %i.cv = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 0, i32 2>
  %i.cw = shufflevector <3 x float> %i.bz, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 0>
  %i.cx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.cw, <4 x float> %i.cu)
  %i.cy = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.ca, <4 x float> %i.cx) ; 4 uses
  %i.cz = load float, ptr %i.av, align 4, !tbaa !29
  %i.da = load <3 x float>, ptr %i.av, align 4, !tbaa !29 ; 3 uses
  %i.db = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 0>
  %i.dc = fneg nsz float %i.cz
  %i.dd = fneg nsz <4 x float> %i.cy              ; 2 uses
  %i.de = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> %i.cy, <4 x i32> <i32 0, i32 poison, i32 poison, i32 6> ; 2 uses
  %i.dg = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.dh = insertelement <4 x float> %i.dg, float %i.dc, i64 3
  %i.di = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 0>
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.dk = fmul nsz <4 x float> %i.di, %i.dj
  %i.dl = shufflevector <4 x float> %i.df, <4 x float> %i.cy, <4 x i32> <i32 0, i32 3, i32 7, i32 4>
  %i.dm = insertelement <4 x float> poison, float %i.au, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dk)
  %i.dp = shufflevector <4 x float> %i.dd, <4 x float> %i.cy, <4 x i32> <i32 3, i32 7, i32 4, i32 6>
  %i.dq = shufflevector <3 x float> %i.da, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.dr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.dq, <4 x float> %i.do)
  %i.ds = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.db, <4 x float> %i.dr) ; 4 uses
  store <4 x float> %i.ds, ptr %3, align 4, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.du = extractelement <4 x float> %i.ds, i64 0
  store float %i.du, ptr %i.dt, align 4, !tbaa !29
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.dw = fneg nsz <4 x float> %i.ds
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.dx, ptr %i.dv, align 4, !tbaa !29
  %i.dy = extractelement <4 x float> %i.ds, i64 3
  %i.dz = fneg nsz float %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 28
  store float %i.dz, ptr %i.ea, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @v360_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca [3 x float], align 8              ; 10 uses
  %4 = alloca %struct.XYRemap, align 16           ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 30 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [56 x i8], ptr %i.g, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 540 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge126

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 552
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 360 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 488
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.s = sext i32 %3 to i64                       ; 2 uses
  %i.t = add nsw i32 %2, 1
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 300
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 308
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 316
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 324
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 332
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 340
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 252
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 584
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 236
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 548
  br label %bb.b

._crit_edge126:                                   ; preds = %._crit_edge123.split, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %._crit_edge123.split
  %i.av = phi i32 [ %i.k, %.lr.ph ], [ %i.cj, %._crit_edge123.split ] ; 2 uses
  %indvars.iv132 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next133, %._crit_edge123.split ] ; 10 uses
  %i.aw = load i32, ptr %i.m, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv132
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !57 ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv132
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !57
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv132
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !57 ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv132
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !57 ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv132
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !57 ; 3 uses
  %i.bh = sext i32 %i.bc to i64                   ; 2 uses
  %i.bi = mul nsw i64 %i.bh, %i.h
  %i.bj = sdiv i64 %i.bi, %i.s                    ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = mul nsw i64 %i.bh, %i.u
  %i.bm = sdiv i64 %i.bl, %i.s                    ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = load i32, ptr %i.v, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.bp = icmp slt i32 %i.bk, %i.bn
  br i1 %i.bp, label %.preheader.lr.ph, label %._crit_edge123.split

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.bq = icmp sgt i32 %i.ay, 0
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv132
  %i.bs = sext i32 %i.ba to i64
  %i.bt = sext i32 %i.bo to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv132
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv132
  %.not = icmp eq i64 %indvars.iv132, 0           ; 2 uses
  %i.bw = trunc i32 %i.be to i16
  %i.bx = trunc i32 %i.bg to i16
  br i1 %i.bq, label %.preheader.preheader, label %._crit_edge123.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %sext = shl i64 %i.bj, 32
  %5 = ashr exact i64 %sext, 32                   ; 2 uses
  %sext141 = shl i64 %i.bm, 32
  %i.by = ashr exact i64 %sext141, 32
  %wide.trip.count = zext nneg i32 %i.ay to i64
  %i.bz = insertelement <8 x i16> poison, i16 %i.bx, i64 0
  %i.ca = shufflevector <8 x i16> %i.bz, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cb = insertelement <8 x i16> poison, i16 %i.bw, i64 0
  %i.cc = shufflevector <8 x i16> %i.cb, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv128 = phi i64 [ %5, %.preheader.preheader ], [ %indvars.iv.next129, %._crit_edge ] ; 4 uses
  %i.cd = sub nsw i64 %indvars.iv128, %5          ; 3 uses
  %i.ce = mul nsw i64 %i.cd, %i.bs
  %i.cf = trunc nsw i64 %i.cd to i32
  %i.cg = trunc nsw i64 %i.cd to i32
  %i.ch = trunc nsw i64 %indvars.iv128 to i32
  %i.ci = trunc nsw i64 %indvars.iv128 to i32
  br label %bb.c

._crit_edge123.split.loopexit:                    ; preds = %._crit_edge
  %.pre = load i32, ptr %i.j, align 4, !tbaa !32
  br label %._crit_edge123.split

._crit_edge123.split:                             ; preds = %._crit_edge123.split.loopexit, %.preheader.lr.ph, %bb.b
  %i.cj = phi i32 [ %.pre, %._crit_edge123.split.loopexit ], [ %i.av, %.preheader.lr.ph ], [ %i.av, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next133, %i.ck
  br i1 %i.cl, label %bb.b, label %._crit_edge126, !llvm.loop !158

._crit_edge:                                      ; preds = %bb.t
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, %i.by
  br i1 %exitcond131.not, label %._crit_edge123.split.loopexit, label %.preheader, !llvm.loop !159

bb.c:                                             ; preds = %.preheader, %bb.t
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.t ] ; 5 uses
  %i.cm = load ptr, ptr %i.br, align 8, !tbaa !69
  %i.cn = add nsw i64 %i.ce, %indvars.iv
  %i.co = mul nsw i64 %i.cn, %i.bt                ; 3 uses
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.co
  %i.cq = load ptr, ptr %i.bu, align 8, !tbaa !69
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.co
  %i.cs = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.cs, i64 %i.co
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.cu = load ptr, ptr %i.y, align 8, !tbaa !71  ; 3 uses
  %.not116 = icmp eq ptr %i.cu, null
  br i1 %.not116, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cv = load i32, ptr %i.n, align 8, !tbaa !57  ; 2 uses
  %i.cw = mul nsw i32 %i.cv, %i.cf
  %i.cx = trunc nuw nsw i64 %indvars.iv to i32
  %i.cy = add nsw i32 %i.cw, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %i.cu, i64 %i.cz
  %i.db = mul nsw i32 %i.cv, %i.cg
  %i.dc = trunc nuw nsw i64 %indvars.iv to i32
  %i.dd = add nsw i32 %i.db, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.de
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %i.dg = phi ptr [ %i.da, %bb.e ], [ null, %bb.c ], [ null, %bb.d ]
  %i.dh = phi ptr [ %i.df, %bb.e ], [ null, %bb.c ], [ null, %bb.d ]
  %i.di = load i32, ptr %i.z, align 8, !tbaa !65
  %.not118 = icmp eq i32 %i.di, 0
  %i.dj = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %.not118, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.dl = call i32 %i.dj(ptr noundef nonnull %i.e, i32 noundef %i.ch, i32 noundef %i.dk, i32 noundef %i.bc, i32 noundef %i.ay, ptr noundef nonnull %i.c) #17
  br label %bb.h

bb.g:                                             ; preds = %.thread
  %i.dm = call i32 %i.dj(ptr noundef nonnull %i.e, i32 noundef %i.dk, i32 noundef %i.ci, i32 noundef %i.ay, i32 noundef %i.bc, ptr noundef nonnull %i.c) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i32 [ %i.dl, %bb.f ], [ %i.dm, %bb.g ]
  %i.dn = load float, ptr %i.c, align 8, !tbaa !29 ; 2 uses
  %i.do = call float @llvm.fabs.f32(float %i.dn)
  %i.dp = fcmp ueq float %i.do, +inf
  br i1 %i.dp, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dq = load float, ptr %i.ab, align 4, !tbaa !29 ; 2 uses
  %i.dr = call float @llvm.fabs.f32(float %i.dq)
  %i.ds = fcmp ueq float %i.dr, +inf
  br i1 %i.ds, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dt = load float, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %i.du = call float @llvm.fabs.f32(float %i.dt)
  %i.dv = fcmp ueq float %i.du, +inf
  br i1 %i.dv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dw = phi float [ 1.000000e+00, %bb.k ], [ %i.dt, %bb.j ] ; 3 uses
  %i.dx = phi float [ 0.000000e+00, %bb.k ], [ %i.dq, %bb.j ]
  %i.dy = phi float [ 0.000000e+00, %bb.k ], [ %i.dn, %bb.j ]
  %i.dz = load float, ptr %i.ae, align 4, !tbaa !29 ; 3 uses
  %i.ea = load float, ptr %i.ah, align 4, !tbaa !29 ; 2 uses
  %i.eb = load <2 x float>, ptr %i.ad, align 8, !tbaa !29
  %i.ec = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %i.dx, i64 1
  %i.ee = fadd nsz <2 x float> %i.eb, %i.ed       ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ee, %i.ee
  %i.ef = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.eg = extractelement <2 x float> %i.ee, i64 0 ; 2 uses
  %i.eh = call nsz float @llvm.fmuladd.f32(float %i.eg, float %i.eg, float %i.ef)
  %i.ei = call nsz float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.eh)
  %i.ej = call nsz float @llvm.sqrt.f32(float %i.ei) ; 2 uses
  %i.ek = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fdiv nsz <2 x float> %i.ee, %i.el       ; 5 uses
  %i.en = fdiv nsz float %i.dw, %i.ej             ; 4 uses
  %i.eo = load float, ptr %i.af, align 8, !tbaa !29 ; 4 uses
  %i.ep = extractelement <2 x float> %i.em, i64 0 ; 2 uses
  %i.eq = fneg nsz float %i.ep
  %i.er = fmul nsz float %i.eo, %i.eq
  %i.es = call nsz float @llvm.fmuladd.f32(float %i.dz, float 0.000000e+00, float %i.er)
  %i.et = load <2 x float>, ptr %i.ag, align 4, !tbaa !29 ; 5 uses
  %i.eu = fneg nsz <2 x float> %i.et              ; 3 uses
  %i.ev = extractelement <2 x float> %i.eu, i64 0
  %i.ew = extractelement <2 x float> %i.em, i64 1 ; 2 uses
  %i.ex = call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.ew, float %i.es)
  %i.ey = extractelement <2 x float> %i.eu, i64 1
  %i.ez = call nsz float @llvm.fmuladd.f32(float %i.ey, float %i.en, float %i.ex) ; 2 uses
  %i.fa = extractelement <2 x float> %i.et, i64 0
  %i.fb = fmul nsz float %i.ew, %i.dz
  %i.fc = call nsz float @llvm.fmuladd.f32(float %i.fa, float 0.000000e+00, float %i.fb)
  %i.fd = extractelement <2 x float> %i.et, i64 1
  %i.fe = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.ep, float %i.fc)
  %i.ff = fneg nsz float %i.eo
  %i.fg = call nsz float @llvm.fmuladd.f32(float %i.ff, float %i.en, float %i.fe) ; 3 uses
  %i.fh = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.en, i64 0
  %i.fj = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fmul nsz <2 x float> %i.fi, %i.fk
  %i.fm = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fn = insertelement <2 x float> %i.fm, float %i.eo, i64 1
  %i.fo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> zeroinitializer, <2 x float> %i.fl)
  %i.fp = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.en, i64 1
  %i.fr = shufflevector <2 x float> %i.em, <2 x float> %i.et, <2 x i32> <i32 1, i32 2>
  %i.fs = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fr, <2 x float> %i.fo)
  %i.ft = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.em, <2 x float> %i.fs) ; 5 uses
  %i.fu = load float, ptr %i.ai, align 8, !tbaa !29 ; 3 uses
  %i.fv = fneg nsz float %i.fg
  %i.fw = load <2 x float>, ptr %i.aj, align 4, !tbaa !29 ; 4 uses
  %i.fx = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ga = insertelement <2 x float> %i.fz, float %i.fu, i64 0
  %i.gb = fmul nsz <2 x float> %i.fy, %i.ga
  %i.gc = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gd = insertelement <2 x float> %i.gc, float %i.fg, i64 1
  %i.ge = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.gf, <2 x float> %i.gb)
  %i.gh = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> %i.ft, <2 x i32> <i32 0, i32 2>
  %i.gj = insertelement <2 x float> %i.fz, float %i.fu, i64 1
  %i.gk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.gj, <2 x float> %i.gg)
  %i.gl = fneg nsz <2 x float> %i.ft
  %i.gm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> %i.fw, <2 x float> %i.gk) ; 4 uses
  %i.gn = extractelement <2 x float> %i.fw, i64 1
  %i.go = fmul nsz float %i.ez, %i.gn
  %i.gp = extractelement <2 x float> %i.ft, i64 0
  %i.gq = call nsz float @llvm.fmuladd.f32(float %i.gp, float %i.ea, float %i.go)
  %i.gr = extractelement <2 x float> %i.ft, i64 1
  %i.gs = extractelement <2 x float> %i.fw, i64 0
  %i.gt = call nsz float @llvm.fmuladd.f32(float %i.gr, float %i.gs, float %i.gq)
  %i.gu = call nsz float @llvm.fmuladd.f32(float %i.fv, float %i.fu, float %i.gt) ; 3 uses
  %foldExtExtBinop142 = fmul nsz <2 x float> %i.gm, %i.gm
  %i.gv = extractelement <2 x float> %foldExtExtBinop142, i64 1
  %i.gw = extractelement <2 x float> %i.gm, i64 0 ; 2 uses
  %i.gx = call nsz float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float %i.gv)
  %i.gy = call nsz float @llvm.fmuladd.f32(float %i.gu, float %i.gu, float %i.gx)
  %i.gz = call nsz float @llvm.sqrt.f32(float %i.gy) ; 2 uses
  %i.ha = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fdiv nsz <2 x float> %i.gm, %i.hb
  %i.hd = fdiv nsz float %i.gu, %i.gz
  %i.he = load <2 x float>, ptr %i.ak, align 4, !tbaa !29
  %i.hf = fmul nsz <2 x float> %i.he, %i.hc
  store <2 x float> %i.hf, ptr %i.c, align 8, !tbaa !29
  %i.hg = load float, ptr %i.al, align 4, !tbaa !29
  %i.hh = fmul nsz float %i.hd, %i.hg
  store float %i.hh, ptr %i.ac, align 8, !tbaa !29
  %i.hi = load i32, ptr %i.am, align 4, !tbaa !60
  %.not119 = icmp eq i32 %i.hi, 0
  %i.hj = load ptr, ptr %i.an, align 8, !tbaa !61 ; 2 uses
  br i1 %.not119, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hk = call i32 %i.hj(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i32 noundef %i.bg, i32 noundef %i.be, ptr noundef nonnull %i.ao, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.hl = call i32 %i.hj(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i32 noundef %i.be, i32 noundef %i.bg, ptr noundef nonnull %4, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0109 = phi i32 [ %i.hk, %bb.m ], [ %i.hl, %bb.n ]
  %i.hm = load i32, ptr %i.ap, align 8, !tbaa !161
  %i.hn = load i32, ptr %i.aq, align 4, !tbaa !162
  %.not.i = icmp eq i32 %i.hm, 0
  br i1 %.not.i, label %.loopexit30.i, label %.preheader29.i

.preheader29.i:                                   ; preds = %bb.o
  %i.ho = load <8 x i16>, ptr %4, align 16, !tbaa !18
  %i.hp = xor <8 x i16> %i.ho, splat (i16 -1)
  %i.hq = add <8 x i16> %i.cc, %i.hp
  store <8 x i16> %i.hq, ptr %4, align 16, !tbaa !18
  %i.hr = load <8 x i16>, ptr %i.ar, align 16, !tbaa !18
  %i.hs = xor <8 x i16> %i.hr, splat (i16 -1)
  %i.ht = add <8 x i16> %i.cc, %i.hs
  store <8 x i16> %i.ht, ptr %i.ar, align 16, !tbaa !18
  br label %.loopexit30.i

.loopexit30.i:                                    ; preds = %.preheader29.i, %bb.o
  %.not26.i = icmp eq i32 %i.hn, 0
end_hunk_0
