Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageop_math?download=true
inline.NumInlined: 19
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 45
begin_hunk_0_@dt_iop_flip_and_zoom_8:bb.a
  %i.y = add nsw i32 %.0154, %.0155               ; 3 uses
  %i.z = tail call i32 @llvm.smax.i32(i32 %.1, i32 %i.y)
  %i.aa = tail call i32 @llvm.smax.i32(i32 %.1156, i32 %i.z)
  %i.ab = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %i.ac = mul nuw nsw i32 %i.x, %i.ab
  %i.ad = tail call i32 @llvm.smin.i32(i32 %.1, i32 %i.y)
  %i.ae = tail call i32 @llvm.smin.i32(i32 %.1156, i32 %i.ad)
  %i.af = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 0)
  %i.ag = mul nsw i32 %i.x, %i.af
  %.not170 = icmp eq i32 %i.u, 0
  %i.ah = add nsw i32 %1, -1
  %.0158 = select i1 %.not170, i32 0, i32 %i.ah
  %i.ai = add nsw i32 %2, -1
  %i.aj = mul nsw i32 %i.ai, %1
  %.0157 = select i1 %.not169, i32 0, i32 %i.aj
  %i.ak = shl i32 %i.n, 2
  %i.al = add nsw i32 %.0157, %.0158
  %factor.op.mul.reass = mul i32 %factor.op.mul177, %2
  %.not183 = icmp eq i32 %i.n, 0
  %i.am = shl i32 %.1156, 2
  %i.an = sext i32 %i.ag to i64
  %invariant.op = sub nsw i64 0, %i.an
  %i.ao = zext nneg i32 %i.ac to i64
  %i.ap = sext i32 %factor.op.mul.reass to i64
  %invariant.op176 = sub nsw i64 %i.ap, %i.ao
  br i1 %.not183, label %._crit_edge181.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph180
  %i.aq = mul nsw i32 %i.x, %.1156
  %i.ar = mul nsw i32 %i.x, %i.y
  %i.as = mul nsw i32 %i.x, %.1
  %i.at = sext i32 %i.aq to i64                   ; 3 uses
  %i.au = sext i32 %i.ar to i64                   ; 3 uses
  %i.av = sext i32 %i.as to i64                   ; 3 uses
  %wide.trip.count = zext i32 %i.r to i64
  br label %.lr.ph

._crit_edge181.split:                             ; preds = %._crit_edge, %.lr.ph180, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.aw = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ax = mul i32 %i.ak, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.ay
  %i.ba = uitofp reassoc nsz arcp contract afn i32 %i.aw to float
  %i.bb = fmul reassoc nsz arcp contract afn float %i.k, %i.ba
  %i.bc = fptosi float %i.bb to i32
  %i.bd = mul nsw i32 %.1, %i.bc
  %i.be = add nsw i32 %i.al, %i.bd
  %i.bf = shl nsw i32 %i.be, 2
  %i.bg = sext i32 %i.bf to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond186.not, label %._crit_edge181.split, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.0150175 = phi i32 [ 0, %.lr.ph ], [ %i.dv, %.loopexit ]
  %.0151174 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.du, %.loopexit ] ; 2 uses
  %.0152173 = phi ptr [ %i.az, %.lr.ph ], [ %i.dt, %.loopexit ] ; 4 uses
  %i.bh = fptosi float %.0151174 to i32
  %i.bi = mul i32 %i.am, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = add nsw i64 %i.bj, %i.bg                ; 3 uses
  %.not171 = icmp sge i64 %i.bk, %invariant.op
  %i.bl = icmp slt i64 %i.bk, %invariant.op176
  %or.cond = select i1 %.not171, i1 %i.bl, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.b
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bk ; 12 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.av
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !12
  %i.bp = zext i8 %i.bo to i16
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.au
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !12
  %i.bs = zext i8 %i.br to i16
  %i.bt = add nuw nsw i16 %i.bs, %i.bp
  %i.bu = getelementptr inbounds i8, ptr %i.bm, i64 %i.at
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !12
  %i.bw = zext i8 %i.bv to i16
  %i.bx = add nuw nsw i16 %i.bt, %i.bw
  %i.by = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bz = zext i8 %i.by to i16
  %i.ca = add nuw nsw i16 %i.bx, %i.bz
  %i.cb = lshr i16 %i.ca, 2
  %i.cc = trunc nuw i16 %i.cb to i8
  store i8 %i.cc, ptr %.0152173, align 1, !tbaa !12
  %i.cd = getelementptr i8, ptr %i.bm, i64 %i.av
  %i.ce = getelementptr i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !12
  %i.cg = zext i8 %i.cf to i16
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.au
  %i.ci = getelementptr i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !12
  %i.ck = zext i8 %i.cj to i16
  %i.cl = add nuw nsw i16 %i.ck, %i.cg
  %i.cm = getelementptr i8, ptr %i.bm, i64 %i.at
  %i.cn = getelementptr i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !12
  %i.cp = zext i8 %i.co to i16
  %i.cq = add nuw nsw i16 %i.cl, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !12
  %i.ct = zext i8 %i.cs to i16
  %i.cu = add nuw nsw i16 %i.cq, %i.ct
  %i.cv = lshr i16 %i.cu, 2
  %i.cw = trunc nuw i16 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %.0152173, i64 1
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !12
  %i.cy = getelementptr i8, ptr %i.bm, i64 %i.av
  %i.cz = getelementptr i8, ptr %i.cy, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !12
  %i.db = zext i8 %i.da to i16
  %i.dc = getelementptr i8, ptr %i.bm, i64 %i.au
  %i.dd = getelementptr i8, ptr %i.dc, i64 2
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !12
  %i.df = zext i8 %i.de to i16
  %i.dg = add nuw nsw i16 %i.df, %i.db
  %i.dh = getelementptr i8, ptr %i.bm, i64 %i.at
  %i.di = getelementptr i8, ptr %i.dh, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !12
  %i.dk = zext i8 %i.dj to i16
  %i.dl = add nuw nsw i16 %i.dg, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !12
  %i.do = zext i8 %i.dn to i16
  %i.dp = add nuw nsw i16 %i.dl, %i.do
  %i.dq = lshr i16 %i.dp, 2
  %i.dr = trunc nuw i16 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %.0152173, i64 2
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.b
  %i.dt = getelementptr inbounds nuw i8, ptr %.0152173, i64 4
  %i.du = fadd reassoc nsz arcp contract afn float %.0151174, %i.k
  %i.dv = add nuw i32 %.0150175, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dv, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_iop_clip_and_zoom_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13) local_unnamed_addr #0 {
bb.a:
  %i.a = sitofp reassoc nsz arcp contract afn i32 %3 to float
  %i.b = sitofp reassoc nsz arcp contract afn i32 %10 to float ; 3 uses
  %i.c = fdiv reassoc nsz arcp contract afn float %i.a, %i.b ; 3 uses
  %i.d = sitofp reassoc nsz arcp contract afn i32 %4 to float
  %i.e = sitofp reassoc nsz arcp contract afn i32 %11 to float ; 3 uses
  %i.f = fdiv reassoc nsz arcp contract afn float %i.d, %i.e ; 3 uses
  %i.g = tail call i32 @llvm.smax.i32(i32 %1, i32 0) ; 2 uses
  %i.h = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 2 uses
  %i.i = tail call i32 @llvm.smax.i32(i32 %8, i32 0) ; 2 uses
  %i.j = tail call i32 @llvm.smax.i32(i32 %9, i32 0) ; 2 uses
  %i.k = sub nsw i32 %6, %i.h
  %i.l = sitofp reassoc nsz arcp contract afn i32 %i.k to float
  %i.m = fdiv reassoc nsz arcp contract afn float %i.l, %i.f ; 2 uses
  %i.n = fcmp reassoc nsz arcp contract afn ogt float %i.m, %i.e
  %. = select reassoc nsz arcp contract afn i1 %i.n, float %i.e, float %i.m ; 2 uses
  %i.o = sub nsw i32 %13, %i.j
  %i.p = sitofp reassoc nsz arcp contract afn i32 %i.o to float ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn olt float %., %i.p
  %i.r = select reassoc nsz arcp contract afn i1 %i.q, float %., float %i.p
  %i.s = fptosi float %i.r to i32                 ; 2 uses
  %i.t = sub nsw i32 %5, %i.g
  %i.u = sitofp reassoc nsz arcp contract afn i32 %i.t to float
  %i.v = fdiv reassoc nsz arcp contract afn float %i.u, %i.c ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.v, %i.b
  %i.x = select reassoc nsz arcp contract afn i1 %i.w, float %i.b, float %i.v ; 2 uses
  %i.y = sub nsw i32 %12, %i.i
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to float ; 2 uses
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.x, %i.z
  %i.ab = select reassoc nsz arcp contract afn i1 %i.aa, float %i.x, float %i.z
  %i.ac = fptosi float %i.ab to i32               ; 2 uses
  %i.ad = uitofp nsz nneg i32 %i.g to float
  %i.ae = icmp sgt i32 %i.s, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge171.split

.lr.ph:                                           ; preds = %bb.a
  %i.af = icmp sgt i32 %i.ac, 0
  %i.ag = fmul reassoc nsz arcp contract afn float %i.c, 5.000000e-01
  %i.ah = fmul reassoc nsz arcp contract afn float %i.f, 5.000000e-01
  br i1 %i.af, label %.preheader.lr.ph.preheader, label %._crit_edge171.split

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %i.ai = uitofp nsz nneg i32 %i.h to float
  %14 = mul i32 %12, %i.j
  %15 = add i32 %i.i, %14
  %i.aj = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.ak = shufflevector <2 x i32> %i.aj, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader.lr.ph

._crit_edge171.split:                             ; preds = %._crit_edge, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i32 [ %15, %.preheader.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0148169 = phi i32 [ 0, %.preheader.lr.ph.preheader ], [ %17, %._crit_edge ]
  %.0149168 = phi float [ %i.ai, %.preheader.lr.ph.preheader ], [ %i.dv, %._crit_edge ] ; 3 uses
  %16 = sext i32 %indvars.iv to i64
  %i.al = fadd reassoc nsz arcp contract afn float %.0149168, %i.ah
  %i.am = insertelement <2 x float> poison, float %.0149168, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.al, i64 1
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>
  %i.ap = shufflevector <2 x i32> %i.ao, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.aq = mul nsw <4 x i32> %i.ak, %i.ap
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv173 = phi i64 [ %16, %.preheader.lr.ph ], [ %indvars.iv.next174, %.preheader ] ; 2 uses
  %.0146167 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.du, %.preheader ]
  %.1165 = phi float [ %i.ad, %.preheader.lr.ph ], [ %i.dt, %.preheader ] ; 3 uses
  %i.ar = fadd reassoc nsz arcp contract afn float %.1165, %i.ag
  %i.as = shl nsw i64 %indvars.iv173, 2           ; 3 uses
  %i.at = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.au = insertelement <4 x float> %i.at, float %.1165, i64 1
  %i.av = fptosi <4 x float> %i.au to <4 x i32>
  %i.aw = shufflevector <4 x i32> %i.av, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ax = add nsw <4 x i32> %i.aq, %i.aw
  %i.ay = shl nsw <4 x i32> %i.ax, splat (i32 2)  ; 4 uses
  %i.az = extractelement <4 x i32> %i.ay, i64 0
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !12
  %i.bd = zext i8 %i.bc to i16
  %i.be = extractelement <4 x i32> %i.ay, i64 1
  %i.bf = sext i32 %i.be to i64                   ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %0, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !12
  %i.bi = zext i8 %i.bh to i16
  %i.bj = add nuw nsw i16 %i.bi, %i.bd
  %i.bk = extractelement <4 x i32> %i.ay, i64 2
  %i.bl = sext i32 %i.bk to i64                   ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bo = zext i8 %i.bn to i16
  %i.bp = add nuw nsw i16 %i.bj, %i.bo
  %i.bq = extractelement <4 x i32> %i.ay, i64 3
  %i.br = sext i32 %i.bq to i64                   ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !12
  %i.bu = zext i8 %i.bt to i16
  %i.bv = add nuw nsw i16 %i.bp, %i.bu
  %i.bw = lshr i16 %i.bv, 2
  %i.bx = trunc nuw i16 %i.bw to i8
  %i.by = getelementptr inbounds i8, ptr %7, i64 %i.as
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !12
  %i.bz = getelementptr i8, ptr %0, i64 %i.ba
  %i.ca = getelementptr i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !12
  %i.cc = zext i8 %i.cb to i16
  %i.cd = getelementptr i8, ptr %0, i64 %i.bf
  %i.ce = getelementptr i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !12
  %i.cg = zext i8 %i.cf to i16
  %i.ch = add nuw nsw i16 %i.cg, %i.cc
  %i.ci = getelementptr i8, ptr %0, i64 %i.bl
  %i.cj = getelementptr i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !12
  %i.cl = zext i8 %i.ck to i16
  %i.cm = add nuw nsw i16 %i.ch, %i.cl
  %i.cn = getelementptr i8, ptr %0, i64 %i.br
  %i.co = getelementptr i8, ptr %i.cn, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !12
  %i.cq = zext i8 %i.cp to i16
  %i.cr = add nuw nsw i16 %i.cm, %i.cq
  %i.cs = lshr i16 %i.cr, 2
  %i.ct = trunc nuw i16 %i.cs to i8
  %i.cu = getelementptr i8, ptr %7, i64 %i.as
  %i.cv = getelementptr i8, ptr %i.cu, i64 1
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !12
  %i.cw = getelementptr i8, ptr %0, i64 %i.ba
  %i.cx = getelementptr i8, ptr %i.cw, i64 2
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !12
  %i.cz = zext i8 %i.cy to i16
  %i.da = getelementptr i8, ptr %0, i64 %i.bf
  %i.db = getelementptr i8, ptr %i.da, i64 2
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !12
  %i.dd = zext i8 %i.dc to i16
  %i.de = add nuw nsw i16 %i.dd, %i.cz
  %i.df = getelementptr i8, ptr %0, i64 %i.bl
  %i.dg = getelementptr i8, ptr %i.df, i64 2
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !12
  %i.di = zext i8 %i.dh to i16
  %i.dj = add nuw nsw i16 %i.de, %i.di
  %i.dk = getelementptr i8, ptr %0, i64 %i.br
  %i.dl = getelementptr i8, ptr %i.dk, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !12
  %i.dn = zext i8 %i.dm to i16
  %i.do = add nuw nsw i16 %i.dj, %i.dn
  %i.dp = lshr i16 %i.do, 2
  %i.dq = trunc nuw i16 %i.dp to i8
  %i.dr = getelementptr i8, ptr %7, i64 %i.as
  %i.ds = getelementptr i8, ptr %i.dr, i64 2
  store i8 %i.dq, ptr %i.ds, align 1, !tbaa !12
  %i.dt = fadd reassoc nsz arcp contract afn float %.1165, %i.c
  %indvars.iv.next174 = add nsw i64 %indvars.iv173, 1
  %i.du = add nuw nsw i32 %.0146167, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.du, %i.ac
  br i1 %exitcond.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.preheader
  %i.dv = fadd reassoc nsz arcp contract afn float %.0149168, %i.f
  %17 = add nuw nsw i32 %.0148169, 1              ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, %12
  %exitcond176.not = icmp eq i32 %17, %i.s
  br i1 %exitcond176.not, label %._crit_edge171.split, label %.preheader.lr.ph
}

; Function Attrs: nounwind uwtable
define void @dt_iop_clip_and_zoom(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @dt_interpolation_new(i32 noundef 2) #13 ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.d, 4
  %i.i = mul i64 %i.h, %i.g
  %i.j = tail call ptr @dt_alloc_aligned(i64 noundef %i.i) #13 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.j, i64 64) ]
  %.not32 = icmp eq ptr %i.j, null
  br i1 %.not32, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.k = load i32, ptr %i.b, align 4, !tbaa !15
  %i.l = sext i32 %i.k to i64
  %i.m = load i32, ptr %i.e, align 4, !tbaa !16
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.l, 2
  %i.p = mul i64 %i.o, %i.n
  %.not38 = icmp eq i64 %i.p, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.a, %bb.b
  tail call void @dt_interpolation_resample(ptr noundef %i.a, ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %3) #13
  br label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @dt_interpolation_resample(ptr noundef %i.a, ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.j, ptr noundef nonnull %3) #13
  tail call void @free(ptr noundef nonnull %i.j) #13
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !15
  %i.t = sext i32 %i.s to i64
  %i.u = load i32, ptr %i.r, align 4, !tbaa !16
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.t, 2
  %i.x = mul i64 %i.w, %i.v
  %.not39 = icmp eq i64 %i.x, 0
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.03034 = phi i64 [ %i.aa, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03034
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.03034
  tail call fastcc void @dt_vector_powf(ptr noundef %i.y, ptr noundef nonnull @dt_iop_clip_and_zoom.two_point_four, ptr noundef nonnull %i.z)
  %i.aa = add nuw i64 %.03034, 4                  ; 2 uses
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !15
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !16
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ac, 2
  %i.ag = mul i64 %i.af, %i.ae
  %i.ah = icmp ult i64 %i.aa, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph37:                                         ; preds = %._crit_edge, %.lr.ph37
  %.035 = phi i64 [ %i.aj, %.lr.ph37 ], [ 0, %._crit_edge ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.035 ; 2 uses
  tail call fastcc void @dt_vector_powf(ptr noundef %i.ai, ptr noundef nonnull @dt_iop_clip_and_zoom.rev_two_point_four, ptr noundef %i.ai)
  %i.aj = add nuw i64 %.035, 4                    ; 2 uses
  %i.ak = load i32, ptr %i.q, align 4, !tbaa !15
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.r, align 4, !tbaa !16
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.al, 2
  %i.ap = mul i64 %i.ao, %i.an
  %i.aq = icmp ult i64 %i.aj, %i.ap
  br i1 %i.aq, label %.lr.ph37, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph37, %._crit_edge, %.thread
  ret void
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #4

declare void @dt_interpolation_resample(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dt_vector_powf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #5 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 4, !tbaa !17 ; 2 uses
  %i.b = and <4 x i32> %i.a, splat (i32 8388607)
  %i.c = or disjoint <4 x i32> %i.b, splat (i32 1065353216)
  %i.d = bitcast <4 x i32> %i.c to <4 x float>    ; 5 uses
  %i.e = lshr <4 x i32> %i.a, splat (i32 23)
  %i.f = and <4 x i32> %i.e, splat (i32 255)
  %i.g = add nsw <4 x i32> %i.f, splat (i32 -127)
  %i.h = sitofp <4 x i32> %i.g to <4 x float>
  %i.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.d, splat (float f0x3D74552F)
  %i.j = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.i, splat (float f0xBEEE7397)
  %i.k = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.j, %i.d
  %i.l = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.k, splat (float f0x3FBD96DD)
  %i.m = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.l, %i.d
  %i.n = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.m, splat (float f0xC02153F6)
  %i.o = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.n, %i.d
  %i.p = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.o, splat (float f0x4038D96C)
  %i.q = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.d, splat (float -1.000000e+00)
  %i.r = fmul reassoc nsz arcp contract afn <4 x float> %i.p, %i.q
  %i.s = fadd reassoc nsz arcp contract afn <4 x float> %i.r, %i.h
  %i.t = load <4 x float>, ptr %1, align 4, !tbaa !17
  %i.u = fmul reassoc nsz arcp contract afn <4 x float> %i.s, %i.t
  %i.v = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.u, <4 x float> splat (float 1.290000e+02))
  %i.w = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.v, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.x = fadd reassoc nsz arcp contract afn <4 x float> %i.w, splat (float -5.000000e-01)
  %i.y = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.x)
  %i.z = sitofp reassoc nsz arcp contract afn <4 x i32> %i.y to <4 x float> ; 2 uses
  %i.aa = fsub reassoc nsz arcp contract afn <4 x float> %i.w, %i.z ; 4 uses
  %i.ab = fptosi <4 x float> %i.z to <4 x i32>
  %i.ac = shl <4 x i32> %i.ab, splat (i32 23)
  %i.ad = add <4 x i32> %i.ac, splat (i32 1065353216)
  %i.ae = fmul reassoc nsz arcp contract afn <4 x float> %i.aa, splat (float f0x3C5DBE69)
  %i.af = fadd reassoc nsz arcp contract afn <4 x float> %i.ae, splat (float f0x3D5509F9)
  %i.ag = fmul reassoc nsz arcp contract afn <4 x float> %i.af, %i.aa
  %i.ah = fadd reassoc nsz arcp contract afn <4 x float> %i.ag, splat (float f0x3E773CC5)
  %i.ai = fmul reassoc nsz arcp contract afn <4 x float> %i.ah, %i.aa
  %i.aj = fadd reassoc nsz arcp contract afn <4 x float> %i.ai, splat (float f0x3F3168B3)
  %i.ak = fmul reassoc nsz arcp contract afn <4 x float> %i.aj, %i.aa
  %i.al = fadd reassoc nsz arcp contract afn <4 x float> %i.ak, splat (float f0x3F800016)
  %i.am = bitcast <4 x i32> %i.ad to <4 x float>
  %i.an = fmul reassoc nsz arcp contract afn <4 x float> %i.al, %i.am
  store <4 x float> %i.an, ptr %2, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @dt_iop_clip_and_zoom_roi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @dt_interpolation_new(i32 noundef 2) #13
  tail call void @dt_interpolation_resample_roi(ptr noundef %i.a, ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %3) #13
  ret void
}

declare void @dt_interpolation_resample_roi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_iop_clip_and_zoom_mosaic_half_size(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
.preheader130:
  %i.a = alloca [4 x [3 x i32]], align 16         ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !18
  %i.d = and i32 %6, 12
  %.not = icmp ne i32 %i.d, 4                     ; 2 uses
  %i.e = select i1 %.not, i32 12, i32 3
  %i.f = and i32 %i.e, %6
  %.not121 = icmp ne i32 %i.f, 0                  ; 4 uses
  %.1112128 = xor i1 %.not, %.not121              ; 3 uses
  %.1112 = zext i1 %.1112128 to i32               ; 2 uses
  %.0110 = zext i1 %.not121 to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.g = select i1 %.1112128, i32 2, i32 0        ; 2 uses
  %i.h = select i1 %.not121, i32 4, i32 0         ; 2 uses
  %i.i = or disjoint i32 %i.g, %i.h
  %i.j = lshr i32 %6, %i.i
  %i.k = and i32 %i.j, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !11
  %i.o = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !11
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.p
  store i32 0, ptr %i.q, align 4, !tbaa !11
  %i.r = select i1 %.1112128, i32 0, i32 2        ; 2 uses
  %i.s = or disjoint i32 %i.r, %i.h
  %i.t = lshr i32 %6, %i.s
  %i.u = and i32 %i.t, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.v ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !11
  %i.y = add nsw i32 %i.x, 1                      ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !tbaa !11
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.z
  store i32 1, ptr %i.aa, align 4, !tbaa !11
  %i.ab = select i1 %.not121, i32 8, i32 4        ; 2 uses
  %i.ac = or disjoint i32 %i.g, %i.ab
  %i.ad = lshr i32 %6, %i.ac
  %i.ae = and i32 %i.ad, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !11
  %i.ai = add nsw i32 %i.ah, 1                    ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !11
  %i.aj = sext i32 %i.ai to i64
end_hunk_0
