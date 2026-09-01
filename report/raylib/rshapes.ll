Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rshapes?download=true
inline.NumInlined: 39
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@DrawSplineBasis:bb.a
  br label %bb.c

.split.us:                                        ; preds = %.split.us.preheader, %.split.us
  %indvars.iv = phi i64 [ 1, %.split.us.preheader ], [ %indvars.iv.next, %.split.us ] ; 3 uses
  %.sroa.048.1128.us = phi <2 x float> [ %i.ad, %.split.us.preheader ], [ %i.br, %.split.us ]
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = uitofp nneg i32 %i.bj to float
  %i.bl = fdiv float %i.bk, 2.400000e+01
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %i.bn = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.w, <2 x float> %i.x)
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bp, <2 x float> %i.y)
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bq, <2 x float> %i.ad) ; 4 uses
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bt = fsub <2 x float> %i.br, %.sroa.048.1128.us ; 4 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 1 ; 3 uses
  %i.bv = fmul float %i.bu, %i.bu
  %i.bw = extractelement <2 x float> %i.bt, i64 0 ; 3 uses
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.bv)
  %sqrt.us = tail call float @llvm.sqrt.f32(float %i.bx)
  %i.by = fdiv float %i.d, %sqrt.us               ; 2 uses
  %i.bz = fneg <2 x float> %i.bt                  ; 2 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> %i.bt, <4 x i32> <i32 3, i32 0, i32 poison, i32 2>
  %i.cb = insertelement <4 x float> %i.ca, float %i.by, i64 2 ; 2 uses
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> %i.bz, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.cd, <4 x float> %i.bs)
  store <4 x float> %i.ce, ptr %i.bm, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %.split137.us, label %.split.us

.split137.us:                                     ; preds = %.split.us, %bb.c
  %.us-phi141 = phi float [ %i.cr, %bb.c ], [ %i.bu, %.split.us ]
  %.us-phi142 = phi float [ %i.ct, %bb.c ], [ %i.bw, %.split.us ]
  %.us-phi143 = phi float [ %i.cw, %bb.c ], [ %i.by, %.split.us ]
  %.us-phi144 = phi <2 x float> [ %i.co, %bb.c ], [ %i.br, %.split.us ]
  %i.cf = phi <4 x float> [ %i.bh, %bb.c ], [ %i.ao, %.split.us ]
  store <4 x float> %i.cf, ptr %4, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %4, i32 noundef 50, i32 %3)
  %exitcond174.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count
  br i1 %exitcond174.not, label %._crit_edge, label %bb.b

bb.c:                                             ; preds = %.split.peel.next, %bb.c
  %indvars.iv166 = phi i64 [ 2, %.split.peel.next ], [ %indvars.iv.next167, %bb.c ] ; 3 uses
  %.sroa.048.1128 = phi <2 x float> [ %i.at, %.split.peel.next ], [ %i.co, %bb.c ]
  %i.cg = trunc nuw nsw i64 %indvars.iv166 to i32
  %i.ch = uitofp nneg i32 %i.cg to float
  %i.ci = fdiv float %i.ch, 2.400000e+01
  %.idx183 = shl nuw nsw i64 %indvars.iv166, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 %.idx183
  %i.ck = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.w, <2 x float> %i.x)
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cm, <2 x float> %i.y)
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cn, <2 x float> %i.ad) ; 4 uses
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cq = fsub <2 x float> %i.co, %.sroa.048.1128 ; 4 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 1 ; 3 uses
  %i.cs = fmul float %i.cr, %i.cr
  %i.ct = extractelement <2 x float> %i.cq, i64 0 ; 3 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.cs)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.cu)
  %i.cv = fneg <2 x float> %i.cq                  ; 2 uses
  %i.cw = fdiv float %i.d, %sqrt                  ; 2 uses
  %i.cx = shufflevector <2 x float> %i.cv, <2 x float> %i.cq, <4 x i32> <i32 3, i32 0, i32 poison, i32 2>
  %i.cy = insertelement <4 x float> %i.cx, float %i.cw, i64 2 ; 2 uses
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> %i.cv, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.da, <4 x float> %i.cp)
  store <4 x float> %i.db, ptr %i.cj, align 16
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next167, 25
  br i1 %exitcond169.not, label %.split137.us, label %bb.c, !llvm.loop !5

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawSplineCatmullRom(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca [50 x %struct.Vector2], align 16    ; 7 uses
  %i.a = icmp slt i32 %1, 4
  br i1 %i.a, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.057.0.copyload = load <2 x float>, ptr %i.b, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.c, i8 0, i64 368, i1 false)
  %i.d = fmul float %2, 5.000000e-01              ; 4 uses
  tail call void @DrawCircleSector(<2 x float> %.sroa.057.0.copyload, float noundef %i.d, float noundef 0.000000e+00, float noundef 3.600000e+02, i32 noundef 36, i32 %3)
  %i.e = add nsw i32 %1, -3
  %wide.trip.count = zext nneg i32 %i.e to i64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit
  tail call void @DrawCircleSector(<2 x float> %i.bv, float noundef %i.d, float noundef 0.000000e+00, float noundef 3.600000e+02, i32 noundef 36, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv153 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next154, %.loopexit ] ; 3 uses
  %.sroa.057.0141 = phi <2 x float> [ %.sroa.057.0.copyload, %.lr.ph ], [ %i.bv, %.loopexit ] ; 2 uses
  %i.g = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.ay, %.loopexit ]
  %i.h = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.bi, %.loopexit ] ; 2 uses
  %i.i = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.bw, %.loopexit ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv153 ; 3 uses
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next154
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load <2 x float>, ptr %i.j, align 4      ; 2 uses
  %i.o = load <2 x float>, ptr %i.k, align 4      ; 2 uses
  %i.p = load <2 x float>, ptr %i.l, align 4      ; 2 uses
  %i.q = load <2 x float>, ptr %i.m, align 4      ; 2 uses
  %.not = icmp eq i64 %indvars.iv153, 0           ; 2 uses
  br i1 %.not, label %.peel.begin, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = extractelement <2 x float> %i.i, i64 0
  %i.s = fneg float %i.r
  %i.t = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.u = insertelement <4 x float> %i.t, float %i.s, i64 1
  %i.v = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.x = fneg <2 x float> %i.i
  %i.y = shufflevector <2 x float> %i.h, <2 x float> %i.x, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.z = shufflevector <2 x float> %.sroa.057.0141, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %i.y, <4 x float> %i.z)
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.b, %bb.c
  %i.ab = phi <4 x float> [ %i.aa, %bb.c ], [ %i.g, %bb.b ]
  %i.ac = shufflevector <2 x float> %.sroa.057.0141, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ad = fmul <2 x float> %i.o, splat (float f0x3FFEEAAB)
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> splat (float f0xBD1CBDA1), <2 x float> %i.ad)
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> splat (float 4.839410e-02), <2 x float> %i.ae)
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> splat (float f0xBADA12F8), <2 x float> %i.af)
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ai = fmul <4 x float> %i.ah, splat (float 5.000000e-01) ; 4 uses
  %foldExtExtBinop = fsub <4 x float> %i.ai, %i.ac
  %i.aj = extractelement <4 x float> %foldExtExtBinop, i64 1 ; 6 uses
  %foldExtExtBinop172 = fsub <4 x float> %i.ai, %i.ac ; 3 uses
  %i.ak = extractelement <4 x float> %foldExtExtBinop172, i64 0 ; 3 uses
  %i.al = fmul float %i.aj, %i.aj
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.al)
  %sqrt.peel = tail call float @llvm.sqrt.f32(float %i.am)
  %i.an = fdiv float %i.d, %sqrt.peel             ; 2 uses
  %i.ao = fneg float %i.ak                        ; 2 uses
  br i1 %.not, label %bb.d, label %.peel.begin._crit_edge

.peel.begin._crit_edge:                           ; preds = %.peel.begin
  %.pre160 = fneg float %i.aj
  br label %.peel.next

bb.d:                                             ; preds = %.peel.begin
  %i.ap = fneg float %i.aj                        ; 2 uses
  %i.aq = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.ao, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.an, i64 2 ; 2 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %foldExtExtBinop172, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.au = shufflevector <4 x float> %i.as, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.av = insertelement <2 x float> %i.au, float %i.ap, i64 1
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.aw, <4 x float> %i.ac)
  br label %.peel.next

.peel.next:                                       ; preds = %bb.d, %.peel.begin._crit_edge
  %.pre-phi = phi float [ %.pre160, %.peel.begin._crit_edge ], [ %i.ap, %bb.d ]
  %i.ay = phi <4 x float> [ %i.ab, %.peel.begin._crit_edge ], [ %i.ax, %bb.d ] ; 2 uses
  %i.az = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.ao, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %.pre-phi, i64 2
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %foldExtExtBinop172, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bd = insertelement <4 x float> poison, float %i.an, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.be, <4 x float> %i.ai)
  store <4 x float> %i.bf, ptr %i.f, align 16
  %i.bg = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br label %bb.e

.loopexit:                                        ; preds = %bb.e
  store <4 x float> %i.ay, ptr %4, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %4, i32 noundef 50, i32 %3)
  %exitcond156.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count
  %i.bh = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> %i.bw, <2 x i32> <i32 0, i32 2>
  br i1 %exitcond156.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %.peel.next, %bb.e
  %indvars.iv = phi i64 [ 2, %.peel.next ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.sroa.057.1126 = phi <2 x float> [ %i.bg, %.peel.next ], [ %i.bv, %bb.e ]
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = uitofp nneg i32 %i.bj to float
  %i.bl = fdiv float %i.bk, 2.400000e+01          ; 10 uses
  %i.bm = fneg float %i.bl
  %5 = fmul float %i.bl, %i.bm
  %6 = fmul nnan float %i.bl, 2.000000e+00
  %7 = fmul float %i.bl, %6
  %8 = tail call float @llvm.fmuladd.f32(float %5, float %i.bl, float %7)
  %9 = fsub float %8, %i.bl
  %10 = fmul float %i.bl, %i.bl                   ; 2 uses
  %11 = fneg float %10
  %12 = tail call float @llvm.fmuladd.f32(float %10, float %i.bl, float %11)
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %14 = insertelement <2 x float> poison, float %i.bl, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %16 = fmul nnan <2 x float> %15, <float -3.000000e+00, float 3.000000e+00>
  %17 = fmul <2 x float> %15, %16
  %18 = fmul nnan <2 x float> %15, <float 4.000000e+00, float -5.000000e+00>
  %19 = fmul <2 x float> %15, %18
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %15, <2 x float> %19)
  %21 = insertelement <2 x float> %15, float 2.000000e+00, i64 1
  %22 = fadd <2 x float> %21, %20                 ; 2 uses
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bn = fmul <2 x float> %i.o, %23
  %i.bo = insertelement <2 x float> poison, float %9, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.bp, <2 x float> %i.bn)
  %24 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %24, <2 x float> %i.bq)
  %25 = insertelement <2 x float> poison, float %12, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %26, <2 x float> %i.br)
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bu = fmul <4 x float> %i.bt, splat (float 5.000000e-01) ; 2 uses
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 4 uses
  %i.bw = fsub <2 x float> %i.bv, %.sroa.057.1126 ; 6 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.by = fmul float %i.bx, %i.bx
  %i.bz = extractelement <2 x float> %i.bw, i64 0 ; 3 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ca)
  %.pre165 = fneg float %i.bz
  %i.cb = fdiv float %i.d, %sqrt                  ; 2 uses
  %i.cc = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.cd = insertelement <4 x float> %i.cc, float %.pre165, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %i.cb, i64 2 ; 2 uses
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cg = fneg <2 x float> %i.bw
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> %i.cg, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.ch, <4 x float> %i.bu)
  store <4 x float> %i.ci, ptr %13, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !6

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawSplineBezierQuadratic(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 2
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nsw i32 %1, -2
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.g = load <2 x float>, ptr %i.d, align 4
  %i.h = load <2 x float>, ptr %i.e, align 4
  %i.i = load <2 x float>, ptr %i.f, align 4
  tail call void @DrawSplineSegmentBezierQuadratic(<2 x float> %i.g, <2 x float> %i.h, <2 x float> %i.i, float noundef %2, i32 %3)
  %i.j = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.j, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawSplineSegmentBezierQuadratic(<2 x float> %0, <2 x float> %1, <2 x float> %2, float noundef %3, i32 %4) local_unnamed_addr #4 {
.peel.next:
  %5 = alloca [50 x %struct.Vector2], align 16    ; 7 uses
  %.sroa.050.0.vec.extract52 = extractelement <2 x float> %0, i64 0
  %.sroa.050.4.vec.extract54 = extractelement <2 x float> %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.a, i8 0, i64 368, i1 false)
  %i.b = fmul float %3, 5.000000e-01              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = fmul <2 x float> %1, splat (float f0x3DA38E39)
  %i.e = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float f0x3F6B1C71), <2 x float> %i.d)
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float f0x3AE38E3A), <2 x float> %i.e) ; 4 uses
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.h = extractelement <2 x float> %i.f, i64 1
  %i.i = fsub float %i.h, %.sroa.050.4.vec.extract54 ; 4 uses
  %i.j = extractelement <2 x float> %i.f, i64 0
  %i.k = fsub float %i.j, %.sroa.050.0.vec.extract52 ; 4 uses
  %i.l = fmul float %i.i, %i.i
  %i.m = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.l)
  %sqrt.peel = tail call float @llvm.sqrt.f32(float %i.m)
  %i.n = fneg float %i.k
  %i.o = fneg float %i.i
  %i.p = fdiv float %i.b, %sqrt.peel
  %i.q = insertelement <4 x float> poison, float %i.i, i64 0
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 1
  %i.s = insertelement <4 x float> %i.r, float %i.p, i64 2 ; 2 uses
  %i.t = insertelement <4 x float> %i.s, float %i.k, i64 3 ; 2 uses
  %i.u = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.v = insertelement <2 x float> %i.u, float %i.o, i64 1
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.w, <4 x float> %i.g)
  store <4 x float> %i.x, ptr %i.c, align 16
  br label %bb.a

.loopexit:                                        ; preds = %bb.a
  %i.y = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.w, <4 x float> %i.y)
  store <4 x float> %i.z, ptr %5, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %5, i32 noundef 50, i32 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void

bb.a:                                             ; preds = %.peel.next, %bb.a
  %indvars.iv = phi i64 [ 2, %.peel.next ], [ %indvars.iv.next, %bb.a ] ; 3 uses
  %i.aa = phi <2 x float> [ %i.f, %.peel.next ], [ %i.as, %bb.a ]
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = uitofp nneg i32 %i.ab to float
  %i.ad = fmul nnan float %i.ac, f0x3D2AAAAB      ; 3 uses
  %i.ae = fsub float 1.000000e+00, %i.ad          ; 2 uses
  %i.af = tail call float @powf(float noundef %i.ae, float noundef 2.000000e+00) #14
  %i.ag = fmul nnan float %i.ae, 2.000000e+00
  %i.ah = fmul float %i.ad, %i.ag
  %i.ai = tail call float @powf(float noundef %i.ad, float noundef 2.000000e+00) #14
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 %.idx
  %i.ak = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %1, %i.al
  %i.an = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %0, <2 x float> %i.am)
  %i.aq = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %2, <2 x float> %i.ap) ; 3 uses
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.au = fsub <2 x float> %i.as, %i.aa           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.au, %i.au
  %i.av = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.aw = extractelement <2 x float> %i.au, i64 0 ; 2 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.av)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ax)
  %i.ay = fneg <2 x float> %i.au                  ; 2 uses
  %i.az = fdiv float %i.b, %sqrt
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> %i.au, <4 x i32> <i32 3, i32 0, i32 poison, i32 2>
  %i.bb = insertelement <4 x float> %i.ba, float %i.az, i64 2 ; 2 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> %i.ay, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.bd, <4 x float> %i.at)
  store <4 x float> %i.be, ptr %i.aj, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %.loopexit, label %bb.a, !llvm.loop !7
}

; Function Attrs: nounwind uwtable
define void @DrawSplineBezierCubic(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 3
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nsw i32 %1, -3
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.h = load <2 x float>, ptr %i.d, align 4
  %i.i = load <2 x float>, ptr %i.e, align 4
  %i.j = load <2 x float>, ptr %i.f, align 4
  %i.k = load <2 x float>, ptr %i.g, align 4
  tail call void @DrawSplineSegmentBezierCubic(<2 x float> %i.h, <2 x float> %i.i, <2 x float> %i.j, <2 x float> %i.k, float noundef %2, i32 %3)
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.l, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawSplineSegmentBezierCubic(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, float noundef %4, i32 %5) local_unnamed_addr #4 {
.peel.next:
  %6 = alloca [50 x %struct.Vector2], align 16    ; 7 uses
  %.sroa.055.0.vec.extract57 = extractelement <2 x float> %0, i64 0
  %.sroa.055.4.vec.extract59 = extractelement <2 x float> %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.a, i8 0, i64 368, i1 false)
  %i.b = fmul float %4, 5.000000e-01              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = fmul <2 x float> %1, splat (float f0x3DEB1C72)
  %i.e = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float f0x3F615097), <2 x float> %i.d)
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float 4.991320e-03), <2 x float> %i.e)
  %i.g = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> splat (float f0x3897B427), <2 x float> %i.f) ; 4 uses
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.i = extractelement <2 x float> %i.g, i64 1
  %i.j = fsub float %i.i, %.sroa.055.4.vec.extract59 ; 4 uses
  %i.k = extractelement <2 x float> %i.g, i64 0
  %i.l = fsub float %i.k, %.sroa.055.0.vec.extract57 ; 4 uses
  %i.m = fmul float %i.j, %i.j
  %i.n = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.m)
  %sqrt.peel = tail call float @llvm.sqrt.f32(float %i.n)
  %i.o = fneg float %i.l
  %i.p = fneg float %i.j
  %i.q = fdiv float %i.b, %sqrt.peel
  %i.r = insertelement <4 x float> poison, float %i.j, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 1
  %i.t = insertelement <4 x float> %i.s, float %i.q, i64 2 ; 2 uses
  %i.u = insertelement <4 x float> %i.t, float %i.l, i64 3 ; 2 uses
  %i.v = shufflevector <4 x float> %i.t, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.w = insertelement <2 x float> %i.v, float %i.p, i64 1
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.x, <4 x float> %i.h)
  store <4 x float> %i.y, ptr %i.c, align 16
  br label %bb.a

.loopexit:                                        ; preds = %bb.a
  %i.z = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.x, <4 x float> %i.z)
  store <4 x float> %i.aa, ptr %6, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %6, i32 noundef 50, i32 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void

bb.a:                                             ; preds = %.peel.next, %bb.a
  %indvars.iv = phi i64 [ 2, %.peel.next ], [ %indvars.iv.next, %bb.a ] ; 3 uses
  %i.ab = phi <2 x float> [ %i.g, %.peel.next ], [ %i.ar, %bb.a ]
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %i.ad = uitofp nneg i32 %i.ac to float
  %i.ae = fmul nnan float %i.ad, f0x3D2AAAAB      ; 4 uses
  %i.af = fsub float 1.000000e+00, %i.ae          ; 3 uses
  %i.ag = tail call float @powf(float noundef %i.af, float noundef 3.000000e+00) #14
  %i.ah = tail call float @powf(float noundef %i.af, float noundef 2.000000e+00) #14
  %7 = tail call float @powf(float noundef %i.ae, float noundef 2.000000e+00) #14
  %8 = tail call float @powf(float noundef %i.ae, float noundef 3.000000e+00) #14
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 %.idx
  %10 = insertelement <2 x float> poison, float %i.af, i64 0
  %11 = insertelement <2 x float> %10, float %i.ah, i64 1
  %12 = fmul <2 x float> %11, splat (float 3.000000e+00)
  %13 = insertelement <2 x float> poison, float %7, i64 0
  %i.ai = insertelement <2 x float> %13, float %i.ae, i64 1
  %14 = fmul <2 x float> %12, %i.ai               ; 2 uses
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aj = fmul <2 x float> %1, %15
  %i.ak = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %0, <2 x float> %i.aj)
  %i.an = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %2, <2 x float> %i.am)
  %i.ap = insertelement <2 x float> poison, float %8, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %3, <2 x float> %i.ao) ; 3 uses
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.at = fsub <2 x float> %i.ar, %i.ab           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.at, %i.at
  %i.au = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.av = extractelement <2 x float> %i.at, i64 0 ; 2 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.au)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.aw)
  %i.ax = fneg <2 x float> %i.at                  ; 2 uses
  %i.ay = fdiv float %i.b, %sqrt
  %i.az = shufflevector <2 x float> %i.ax, <2 x float> %i.at, <4 x i32> <i32 3, i32 0, i32 poison, i32 2>
  %i.ba = insertelement <4 x float> %i.az, float %i.ay, i64 2 ; 2 uses
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> %i.ax, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.bc, <4 x float> %i.as)
  store <4 x float> %i.bd, ptr %9, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %.loopexit, label %bb.a, !llvm.loop !8
}

; Function Attrs: nounwind uwtable
define void @DrawSplineSegmentLinear(<2 x float> %0, <2 x float> %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca [4 x %struct.Vector2], align 16     ; 5 uses
  %i.a = fsub <2 x float> %1, %0                  ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b) ; 2 uses
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  %i.f = fcmp ogt float %2, 0.000000e+00
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.h = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %sqrt = tail call nnan float @llvm.sqrt.f32(float %i.d)
  %i.i = fmul nnan float %sqrt, 2.000000e+00
  %i.j = fdiv float %2, %i.i                      ; 2 uses
  %i.k = fneg float %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.l = insertelement <2 x float> poison, float %i.j, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.k, i64 1
  %i.n = fmul <2 x float> %i.a, %i.m
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 4 uses
  %i.p = fsub <4 x float> %i.g, %i.o
  %i.q = fadd <4 x float> %i.g, %i.o
  %i.r = shufflevector <4 x float> %i.p, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.r, ptr %4, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = fsub <4 x float> %i.h, %i.o
  %i.u = fadd <4 x float> %i.h, %i.o
  %i.v = shufflevector <4 x float> %i.t, <4 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.v, ptr %i.s, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %4, i32 noundef 4, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawSplineSegmentBasis(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, float noundef %4, i32 %5) local_unnamed_addr #4 {
.peel.next92:
  %6 = alloca [50 x %struct.Vector2], align 16    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.a, i8 0, i64 368, i1 false)
  %i.b = fneg <2 x float> %0
  %i.c = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %1, <2 x float> splat (float 3.000000e+00), <2 x float> %i.b)
  %i.d = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float -3.000000e+00), <2 x float> %i.c)
  %i.e = fadd <2 x float> %i.d, %3
  %i.f = fdiv <2 x float> %i.e, splat (float 6.000000e+00) ; 7 uses
  %i.g = fmul <2 x float> %1, splat (float -6.000000e+00)
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float 3.000000e+00), <2 x float> %i.g)
  %i.i = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float 3.000000e+00), <2 x float> %i.h)
  %i.j = fdiv <2 x float> %i.i, splat (float 6.000000e+00) ; 7 uses
  %i.k = fmul <2 x float> %2, splat (float 3.000000e+00)
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float -3.000000e+00), <2 x float> %i.k)
  %i.m = fdiv <2 x float> %i.l, splat (float 6.000000e+00) ; 7 uses
  %i.n = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %1, <2 x float> splat (float 4.000000e+00), <2 x float> %0)
  %i.o = fadd <2 x float> %i.n, %2
  %i.p = fdiv <2 x float> %i.o, splat (float 6.000000e+00) ; 7 uses
  %i.q = fmul float %4, 5.000000e-01              ; 5 uses
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> zeroinitializer, <2 x float> %i.j)
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> zeroinitializer, <2 x float> %i.m)
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> zeroinitializer, <2 x float> %i.p)
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> splat (float f0x3D2AAAAB), <2 x float> %i.j)
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> splat (float f0x3D2AAAAB), <2 x float> %i.m)
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> splat (float f0x3D2AAAAB), <2 x float> %i.p) ; 2 uses
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %foldExtExtBinop = fsub <4 x float> %i.z, %i.u  ; 3 uses
  %i.aa = extractelement <4 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop129 = fsub <4 x float> %i.z, %i.u ; 3 uses
  %i.ab = extractelement <4 x float> %foldExtExtBinop129, i64 0 ; 2 uses
  %i.ac = fmul float %i.aa, %i.aa
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.ac)
  %sqrt.peel93 = tail call float @llvm.sqrt.f32(float %i.ad)
  %i.ae = fdiv float %i.q, %sqrt.peel93
  %i.af = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ag = fneg <4 x float> %foldExtExtBinop129
  %i.ah = shufflevector <4 x float> %i.af, <4 x float> %i.ag, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 2 ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %foldExtExtBinop129, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.ak = fneg <4 x float> %foldExtExtBinop
  %i.al = shufflevector <4 x float> %i.ai, <4 x float> %i.ak, <4 x i32> <i32 2, i32 2, i32 5, i32 2> ; 2 uses
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.al, <4 x float> %i.u)
  store <4 x float> %i.am, ptr %6, align 16
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.al, <4 x float> %i.z)
  store <4 x float> %i.an, ptr %i.v, align 16
  %i.ao = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %broadcast.splatinsert123 = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat124 = shufflevector <4 x float> %broadcast.splatinsert123, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %broadcast.splat122 = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %broadcast.splat120 = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %broadcast.splat118 = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %broadcast.splat116 = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %broadcast.splat114 = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %broadcast.splat112 = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %broadcast.splat110 = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %broadcast.splat = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float f0x3DAAAAAB, float 1.250000e-01, float f0x3E2AAAAB, float f0x3E555556>, <4 x float> %broadcast.splat110)
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> <float f0x3DAAAAAB, float 1.250000e-01, float f0x3E2AAAAB, float f0x3E555556>, <4 x float> %broadcast.splat112)
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> <float f0x3DAAAAAB, float 1.250000e-01, float f0x3E2AAAAB, float f0x3E555556>, <4 x float> %broadcast.splat114) ; 5 uses
  %i.as = shufflevector <4 x float> %i.ao, <4 x float> %i.ar, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.at = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat116, <4 x float> <float f0x3DAAAAAB, float 1.250000e-01, float f0x3E2AAAAB, float f0x3E555556>, <4 x float> %broadcast.splat118)
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> <float f0x3DAAAAAB, float 1.250000e-01, float f0x3E2AAAAB, float f0x3E555556>, <4 x float> %broadcast.splat120)
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> <float f0x3DAAAAAB, float 1.250000e-01, float f0x3E2AAAAB, float f0x3E555556>, <4 x float> %broadcast.splat122) ; 5 uses
  %i.aw = shufflevector <4 x float> %i.z, <4 x float> %i.av, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ax = fsub <4 x float> %i.av, %i.aw           ; 4 uses
  %i.ay = fsub <4 x float> %i.ar, %i.as           ; 4 uses
  %i.az = fmul <4 x float> %i.ax, %i.ax
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.ay, <4 x float> %i.az)
  %i.bb = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ba)
  %i.bc = fdiv <4 x float> %broadcast.splat124, %i.bb ; 2 uses
  %i.bd = fneg <4 x float> %i.ay
  %i.be = fneg <4 x float> %i.ax
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bg = shufflevector <4 x float> %i.ax, <4 x float> %i.bd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bh = shufflevector <4 x float> %i.bc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bi = shufflevector <4 x float> %i.ar, <4 x float> %i.av, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bj = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bg, <8 x float> %i.bh, <8 x float> %i.bi)
  %i.bk = shufflevector <4 x float> %i.be, <4 x float> %i.ay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bl = shufflevector <4 x float> %i.bc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bm = shufflevector <4 x float> %i.ar, <4 x float> %i.av, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bk, <8 x float> %i.bl, <8 x float> %i.bm)
  %interleaved.vec = shufflevector <8 x float> %i.bj, <8 x float> %i.bn, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bf, align 16
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float 2.500000e-01, float f0x3E955556, float f0x3EAAAAAB, float 3.750000e-01>, <4 x float> %broadcast.splat110)
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> <float 2.500000e-01, float f0x3E955556, float f0x3EAAAAAB, float 3.750000e-01>, <4 x float> %broadcast.splat112)
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> <float 2.500000e-01, float f0x3E955556, float f0x3EAAAAAB, float 3.750000e-01>, <4 x float> %broadcast.splat114) ; 5 uses
  %i.br = shufflevector <4 x float> %i.ar, <4 x float> %i.bq, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat116, <4 x float> <float 2.500000e-01, float f0x3E955556, float f0x3EAAAAAB, float 3.750000e-01>, <4 x float> %broadcast.splat118)
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> <float 2.500000e-01, float f0x3E955556, float f0x3EAAAAAB, float 3.750000e-01>, <4 x float> %broadcast.splat120)
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> <float 2.500000e-01, float f0x3E955556, float f0x3EAAAAAB, float 3.750000e-01>, <4 x float> %broadcast.splat122) ; 5 uses
  %i.bv = shufflevector <4 x float> %i.av, <4 x float> %i.bu, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bw = fsub <4 x float> %i.bu, %i.bv           ; 4 uses
  %i.bx = fsub <4 x float> %i.bq, %i.br           ; 4 uses
  %i.by = fmul <4 x float> %i.bw, %i.bw
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.bx, <4 x float> %i.by)
  %i.ca = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bz)
  %i.cb = fdiv <4 x float> %broadcast.splat124, %i.ca ; 2 uses
  %i.cc = fneg <4 x float> %i.bx
  %i.cd = fneg <4 x float> %i.bw
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.cf = shufflevector <4 x float> %i.bw, <4 x float> %i.cc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = shufflevector <4 x float> %i.cb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ch = shufflevector <4 x float> %i.bq, <4 x float> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cf, <8 x float> %i.cg, <8 x float> %i.ch)
  %i.cj = shufflevector <4 x float> %i.cd, <4 x float> %i.bx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ck = shufflevector <4 x float> %i.cb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cl = shufflevector <4 x float> %i.bq, <4 x float> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cj, <8 x float> %i.ck, <8 x float> %i.cl)
  %interleaved.vec.1 = shufflevector <8 x float> %i.ci, <8 x float> %i.cm, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec.1, ptr %i.ce, align 16
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float f0x3ED55556, float f0x3EEAAAAB, float 5.000000e-01, float f0x3F0AAAAB>, <4 x float> %broadcast.splat110)
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> <float f0x3ED55556, float f0x3EEAAAAB, float 5.000000e-01, float f0x3F0AAAAB>, <4 x float> %broadcast.splat112)
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> <float f0x3ED55556, float f0x3EEAAAAB, float 5.000000e-01, float f0x3F0AAAAB>, <4 x float> %broadcast.splat114) ; 5 uses
  %i.cq = shufflevector <4 x float> %i.bq, <4 x float> %i.cp, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat116, <4 x float> <float f0x3ED55556, float f0x3EEAAAAB, float 5.000000e-01, float f0x3F0AAAAB>, <4 x float> %broadcast.splat118)
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> <float f0x3ED55556, float f0x3EEAAAAB, float 5.000000e-01, float f0x3F0AAAAB>, <4 x float> %broadcast.splat120)
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> <float f0x3ED55556, float f0x3EEAAAAB, float 5.000000e-01, float f0x3F0AAAAB>, <4 x float> %broadcast.splat122) ; 5 uses
  %i.cu = shufflevector <4 x float> %i.bu, <4 x float> %i.ct, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cv = fsub <4 x float> %i.ct, %i.cu           ; 4 uses
  %i.cw = fsub <4 x float> %i.cp, %i.cq           ; 4 uses
  %i.cx = fmul <4 x float> %i.cv, %i.cv
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.cw, <4 x float> %i.cx)
  %i.cz = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cy)
  %i.da = fdiv <4 x float> %broadcast.splat124, %i.cz ; 2 uses
  %i.db = fneg <4 x float> %i.cw
  %i.dc = fneg <4 x float> %i.cv
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.de = shufflevector <4 x float> %i.cv, <4 x float> %i.db, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.df = shufflevector <4 x float> %i.da, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dg = shufflevector <4 x float> %i.cp, <4 x float> %i.ct, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dh = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.de, <8 x float> %i.df, <8 x float> %i.dg)
  %i.di = shufflevector <4 x float> %i.dc, <4 x float> %i.cw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dj = shufflevector <4 x float> %i.da, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dk = shufflevector <4 x float> %i.cp, <4 x float> %i.ct, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dl = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.di, <8 x float> %i.dj, <8 x float> %i.dk)
  %interleaved.vec.2 = shufflevector <8 x float> %i.dh, <8 x float> %i.dl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec.2, ptr %i.dd, align 16
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float f0x3F155556, float 6.250000e-01, float f0x3F2AAAAB, float f0x3F355556>, <4 x float> %broadcast.splat110)
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> <float f0x3F155556, float 6.250000e-01, float f0x3F2AAAAB, float f0x3F355556>, <4 x float> %broadcast.splat112)
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> <float f0x3F155556, float 6.250000e-01, float f0x3F2AAAAB, float f0x3F355556>, <4 x float> %broadcast.splat114) ; 5 uses
  %i.dp = shufflevector <4 x float> %i.cp, <4 x float> %i.do, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat116, <4 x float> <float f0x3F155556, float 6.250000e-01, float f0x3F2AAAAB, float f0x3F355556>, <4 x float> %broadcast.splat118)
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> <float f0x3F155556, float 6.250000e-01, float f0x3F2AAAAB, float f0x3F355556>, <4 x float> %broadcast.splat120)
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> <float f0x3F155556, float 6.250000e-01, float f0x3F2AAAAB, float f0x3F355556>, <4 x float> %broadcast.splat122) ; 5 uses
  %i.dt = shufflevector <4 x float> %i.ct, <4 x float> %i.ds, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.du = fsub <4 x float> %i.ds, %i.dt           ; 4 uses
end_hunk_0
begin_hunk_1_@DrawSplineSegmentCatmullRom:.peel.next80
  %i.dg = shufflevector <4 x float> %i.cx, <4 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dh = shufflevector <4 x float> %i.dc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.di = shufflevector <4 x float> %i.cp, <4 x float> %i.cv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dj = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dg, <8 x float> %i.dh, <8 x float> %i.di)
  %i.dk = shufflevector <4 x float> %i.de, <4 x float> %i.cy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dl = shufflevector <4 x float> %i.dc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dm = shufflevector <4 x float> %i.cp, <4 x float> %i.cv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dk, <8 x float> %i.dl, <8 x float> %i.dm)
  %interleaved.vec.2 = shufflevector <8 x float> %i.dj, <8 x float> %i.dn, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec.2, ptr %i.df, align 16
  %i.do = fmul <4 x float> %broadcast.splat100, <float f0x3F64E38C, float f0x3F478000, float f0x3F2AAAAA, float f0x3F0EB8E0>
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float f0xBDCF684C, float f0xBDB40000, float f0xBD97B420, float f0xBD76D090>, <4 x float> %i.do)
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat102, <4 x float> <float f0x3FACAAAC, float f0x3FBA4000, float f0x3FC71C72, float f0x3FD31556>, <4 x float> %i.dp)
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat104, <4 x float> <float f0xBE112F69, float f0xBE160000, float f0xBE17B426, float f0xBE15DA13>, <4 x float> %i.dq)
  %i.ds = fmul <4 x float> %i.dr, splat (float 5.000000e-01) ; 5 uses
  %i.dt = shufflevector <4 x float> %i.cp, <4 x float> %i.ds, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.du = fmul <4 x float> %broadcast.splat106, <float f0x3F64E38C, float f0x3F478000, float f0x3F2AAAAA, float f0x3F0EB8E0>
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat98, <4 x float> <float f0xBDCF684C, float f0xBDB40000, float f0xBD97B420, float f0xBD76D090>, <4 x float> %i.du)
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat108, <4 x float> <float f0x3FACAAAC, float f0x3FBA4000, float f0x3FC71C72, float f0x3FD31556>, <4 x float> %i.dv)
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat110, <4 x float> <float f0xBE112F69, float f0xBE160000, float f0xBE17B426, float f0xBE15DA13>, <4 x float> %i.dw)
  %i.dy = fmul <4 x float> %i.dx, splat (float 5.000000e-01) ; 5 uses
  %i.dz = shufflevector <4 x float> %i.cv, <4 x float> %i.dy, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ea = fsub <4 x float> %i.dy, %i.dz           ; 4 uses
  %i.eb = fsub <4 x float> %i.ds, %i.dt           ; 4 uses
  %i.ec = fmul <4 x float> %i.ea, %i.ea
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> %i.eb, <4 x float> %i.ec)
  %i.ee = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ed)
  %i.ef = fdiv <4 x float> %broadcast.splat112, %i.ee ; 2 uses
  %i.eg = fneg <4 x float> %i.eb
  %i.eh = fneg <4 x float> %i.ea
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.ej = shufflevector <4 x float> %i.ea, <4 x float> %i.eg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ek = shufflevector <4 x float> %i.ef, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.el = shufflevector <4 x float> %i.ds, <4 x float> %i.dy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.em = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ej, <8 x float> %i.ek, <8 x float> %i.el)
  %i.en = shufflevector <4 x float> %i.eh, <4 x float> %i.eb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eo = shufflevector <4 x float> %i.ef, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ep = shufflevector <4 x float> %i.ds, <4 x float> %i.dy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.en, <8 x float> %i.eo, <8 x float> %i.ep)
  %interleaved.vec.3 = shufflevector <8 x float> %i.em, <8 x float> %i.eq, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec.3, ptr %i.ei, align 16
  %i.er = fmul <4 x float> %broadcast.splat100, <float 4.531250e-01, float f0x3EB5AAA4, float f0x3E871C6C, float f0x3E3A0000>
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float -4.687500e-02, float f0xBD0CBDA0, float f0xBCBDA120, float f0xBC600000>, <4 x float> %i.er)
  %i.et = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat102, <4 x float> <float f0x3FDE0000, float f0x3FE7B1C8, float f0x3FF00002, float f0x3FF6C000>, <4 x float> %i.es)
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat104, <4 x float> <float -1.406250e-01, float f0xBE05B426, float f0xBDED097A, float f0xBDC40000>, <4 x float> %i.et)
  %i.ev = fmul <4 x float> %i.eu, splat (float 5.000000e-01) ; 5 uses
  %i.ew = shufflevector <4 x float> %i.ds, <4 x float> %i.ev, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ex = fmul <4 x float> %broadcast.splat106, <float 4.531250e-01, float f0x3EB5AAA4, float f0x3E871C6C, float f0x3E3A0000>
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat98, <4 x float> <float -4.687500e-02, float f0xBD0CBDA0, float f0xBCBDA120, float f0xBC600000>, <4 x float> %i.ex)
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat108, <4 x float> <float f0x3FDE0000, float f0x3FE7B1C8, float f0x3FF00002, float f0x3FF6C000>, <4 x float> %i.ey)
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat110, <4 x float> <float -1.406250e-01, float f0xBE05B426, float f0xBDED097A, float f0xBDC40000>, <4 x float> %i.ez)
  %i.fb = fmul <4 x float> %i.fa, splat (float 5.000000e-01) ; 5 uses
  %i.fc = shufflevector <4 x float> %i.dy, <4 x float> %i.fb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fd = fsub <4 x float> %i.fb, %i.fc           ; 4 uses
  %i.fe = fsub <4 x float> %i.ev, %i.ew           ; 4 uses
  %i.ff = fmul <4 x float> %i.fd, %i.fd
  %i.fg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.fe, <4 x float> %i.ff)
  %i.fh = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.fg)
  %i.fi = fdiv <4 x float> %broadcast.splat112, %i.fh ; 2 uses
  %i.fj = fneg <4 x float> %i.fe
  %i.fk = fneg <4 x float> %i.fd
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.fm = shufflevector <4 x float> %i.fd, <4 x float> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fn = shufflevector <4 x float> %i.fi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fo = shufflevector <4 x float> %i.ev, <4 x float> %i.fb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.fm, <8 x float> %i.fn, <8 x float> %i.fo)
  %i.fq = shufflevector <4 x float> %i.fk, <4 x float> %i.fe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fr = shufflevector <4 x float> %i.fi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fs = shufflevector <4 x float> %i.ev, <4 x float> %i.fb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ft = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.fq, <8 x float> %i.fr, <8 x float> %i.fs)
  %interleaved.vec.4 = shufflevector <8 x float> %i.fp, <8 x float> %i.ft, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec.4, ptr %i.fl, align 16
  %vector.recur.extract = extractelement <4 x float> %i.ev, i64 3
  %vector.recur.extract115 = extractelement <4 x float> %i.fb, i64 3
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.fv = fmul <2 x float> %1, splat (float f0x3DDFFFE0)
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float f0xBBD09800), <2 x float> %i.fv)
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float f0x3FFBC71C), <2 x float> %i.fw)
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> splat (float f0xBD8F684A), <2 x float> %i.fx)
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ga = fmul <4 x float> %i.fz, splat (float 5.000000e-01) ; 3 uses
  %i.gb = extractelement <4 x float> %i.ga, i64 1 ; 2 uses
  %i.gc = fsub float %i.gb, %vector.recur.extract115 ; 4 uses
  %i.gd = extractelement <4 x float> %i.ga, i64 0 ; 2 uses
  %i.ge = fsub float %i.gd, %vector.recur.extract ; 4 uses
  %i.gf = fmul float %i.gc, %i.gc
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.ge, float %i.gf)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.gg)
  %.pre95 = fneg float %i.ge
  %.pre93 = fneg float %i.gc
  %i.gh = fdiv float %i.b, %sqrt
  %i.gi = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.gj = insertelement <4 x float> %i.gi, float %.pre95, i64 1
  %i.gk = insertelement <4 x float> %i.gj, float %i.gh, i64 2 ; 2 uses
  %i.gl = insertelement <4 x float> %i.gk, float %i.ge, i64 3
  %i.gm = shufflevector <4 x float> %i.gk, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gn = insertelement <2 x float> %i.gm, float %.pre93, i64 1
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> %i.go, <4 x float> %i.ga)
  store <4 x float> %i.gp, ptr %i.fu, align 16
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 368
  %i.gr = fmul <2 x float> %1, splat (float f0x3D4638C0)
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float f0xBADA1200), <2 x float> %i.gr)
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float f0x3FFEEAAB), <2 x float> %i.gs)
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> splat (float f0xBD1CBD98), <2 x float> %i.gt)
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gw = fmul <4 x float> %i.gv, splat (float 5.000000e-01) ; 3 uses
  %i.gx = extractelement <4 x float> %i.gw, i64 1 ; 2 uses
  %i.gy = fsub float %i.gx, %i.gb                 ; 4 uses
  %i.gz = extractelement <4 x float> %i.gw, i64 0 ; 2 uses
  %i.ha = fsub float %i.gz, %i.gd                 ; 4 uses
  %i.hb = fmul float %i.gy, %i.gy
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.ha, float %i.hb)
  %sqrt.1 = tail call float @llvm.sqrt.f32(float %i.hc)
  %.pre95.1 = fneg float %i.ha
  %.pre93.1 = fneg float %i.gy
  %i.hd = fdiv float %i.b, %sqrt.1
  %i.he = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.hf = insertelement <4 x float> %i.he, float %.pre95.1, i64 1
  %i.hg = insertelement <4 x float> %i.hf, float %i.hd, i64 2 ; 2 uses
  %i.hh = insertelement <4 x float> %i.hg, float %i.ha, i64 3
  %i.hi = shufflevector <4 x float> %i.hg, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.hj = insertelement <2 x float> %i.hi, float %.pre93.1, i64 1
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hk, <4 x float> %i.gw)
  store <4 x float> %i.hl, ptr %i.gq, align 16
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 384
  %i.hn = fmul <2 x float> %1, zeroinitializer
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> zeroinitializer, <2 x float> %i.hn)
  %i.hp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float 2.000000e+00), <2 x float> %i.ho)
  %i.hq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> zeroinitializer, <2 x float> %i.hp)
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hs = fmul <4 x float> %i.hr, splat (float 5.000000e-01) ; 3 uses
  %i.ht = extractelement <4 x float> %i.hs, i64 1
  %i.hu = fsub float %i.ht, %i.gx                 ; 4 uses
  %i.hv = extractelement <4 x float> %i.hs, i64 0
  %i.hw = fsub float %i.hv, %i.gz                 ; 4 uses
  %i.hx = fmul float %i.hu, %i.hu
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float %i.hx)
  %sqrt.2 = tail call float @llvm.sqrt.f32(float %i.hy)
  %.pre95.2 = fneg float %i.hw
  %.pre93.2 = fneg float %i.hu
  %i.hz = fdiv float %i.b, %sqrt.2
  %i.ia = insertelement <4 x float> poison, float %i.hu, i64 0
  %i.ib = insertelement <4 x float> %i.ia, float %.pre95.2, i64 1
  %i.ic = insertelement <4 x float> %i.ib, float %i.hz, i64 2 ; 2 uses
  %i.id = insertelement <4 x float> %i.ic, float %i.hw, i64 3
  %i.ie = shufflevector <4 x float> %i.ic, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.if = insertelement <2 x float> %i.ie, float %.pre93.2, i64 1
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ih = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.id, <4 x float> %i.ig, <4 x float> %i.hs)
  store <4 x float> %i.ih, ptr %i.hm, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %6, i32 noundef 50, i32 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define <2 x float> @GetSplinePointLinear(<2 x float> %0, <2 x float> %1, float noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = fsub float 1.000000e+00, %2
  %i.b = insertelement <2 x float> poison, float %2, i64 0
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = fmul <2 x float> %1, %i.c
  %i.e = insertelement <2 x float> poison, float %i.a, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> %i.f, <2 x float> %i.d)
  ret <2 x float> %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define <2 x float> @GetSplinePointBasis(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, float noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = fneg <2 x float> %0
  %i.b = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %1, <2 x float> splat (float 3.000000e+00), <2 x float> %i.a)
  %i.c = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float -3.000000e+00), <2 x float> %i.b)
  %i.d = fadd <2 x float> %i.c, %3
  %i.e = fdiv <2 x float> %i.d, splat (float 6.000000e+00)
  %i.f = fmul <2 x float> %1, splat (float -6.000000e+00)
  %i.g = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float 3.000000e+00), <2 x float> %i.f)
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> splat (float 3.000000e+00), <2 x float> %i.g)
  %i.i = fdiv <2 x float> %i.h, splat (float 6.000000e+00)
  %i.j = fmul <2 x float> %2, splat (float 3.000000e+00)
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> splat (float -3.000000e+00), <2 x float> %i.j)
  %i.l = fdiv <2 x float> %i.k, splat (float 6.000000e+00)
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %1, <2 x float> splat (float 4.000000e+00), <2 x float> %0)
  %i.n = fadd <2 x float> %i.m, %2
  %i.o = fdiv <2 x float> %i.n, splat (float 6.000000e+00)
  %i.p = insertelement <2 x float> poison, float %4, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.e, <2 x float> %i.i)
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %i.l)
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.o)
  ret <2 x float> %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define <2 x float> @GetSplinePointCatmullRom(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, float noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = fneg float %4
  %5 = fmul float %4, 2.000000e+00
  %6 = fmul float %4, %5
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer ; 9 uses
  %9 = fmul <2 x float> %8, <float -3.000000e+00, float 3.000000e+00>
  %10 = fmul <2 x float> %8, <float 4.000000e+00, float -5.000000e+00>
  %11 = insertelement <2 x float> %8, float %i.a, i64 0
  %12 = fmul <2 x float> %8, %11                  ; 2 uses
  %13 = fneg <2 x float> %12
  %14 = insertelement <2 x float> %13, float %6, i64 0
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %8, <2 x float> %14) ; 2 uses
  %16 = extractelement <2 x float> %15, i64 0
  %17 = fsub float %16, %4
  %18 = fmul <2 x float> %8, %9
  %19 = fmul <2 x float> %8, %10
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %8, <2 x float> %19)
  %i.b = insertelement <2 x float> %8, float 2.000000e+00, i64 1
  %i.c = fadd <2 x float> %i.b, %20               ; 2 uses
  %21 = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.d = fmul <2 x float> %1, %21
  %i.e = insertelement <2 x float> poison, float %17, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> %i.f, <2 x float> %i.d)
  %22 = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %2, <2 x float> %22, <2 x float> %i.g)
  %23 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.i = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> %23, <2 x float> %i.h)
  %i.j = fmul <2 x float> %i.i, splat (float 5.000000e-01)
  ret <2 x float> %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define <2 x float> @GetSplinePointBezierQuad(<2 x float> %0, <2 x float> %1, <2 x float> %2, float noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = fsub float 1.000000e+00, %3              ; 2 uses
  %i.b = tail call float @powf(float noundef %i.a, float noundef 2.000000e+00) #14
  %i.c = fmul float %i.a, 2.000000e+00
  %i.d = fmul float %3, %i.c
  %i.e = tail call float @powf(float noundef %3, float noundef 2.000000e+00) #14
  %i.f = insertelement <2 x float> poison, float %i.d, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %1, %i.g
  %i.i = insertelement <2 x float> poison, float %i.b, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %0, <2 x float> %i.h)
  %i.l = insertelement <2 x float> poison, float %i.e, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %2, <2 x float> %i.k)
  ret <2 x float> %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define <2 x float> @GetSplinePointBezierCubic(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, float noundef %4) local_unnamed_addr #11 {
bb.a:
  %i.a = fsub float 1.000000e+00, %4              ; 3 uses
  %i.b = tail call float @powf(float noundef %i.a, float noundef 3.000000e+00) #14
  %i.c = tail call float @powf(float noundef %i.a, float noundef 2.000000e+00) #14
  %5 = tail call float @powf(float noundef %4, float noundef 2.000000e+00) #14
  %6 = tail call float @powf(float noundef %4, float noundef 3.000000e+00) #14
  %7 = insertelement <2 x float> poison, float %i.a, i64 0
  %8 = insertelement <2 x float> %7, float %i.c, i64 1
  %9 = fmul <2 x float> %8, splat (float 3.000000e+00)
  %10 = insertelement <2 x float> poison, float %5, i64 0
  %i.d = insertelement <2 x float> %10, float %4, i64 1
  %11 = fmul <2 x float> %9, %i.d                 ; 2 uses
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.e = fmul <2 x float> %1, %12
  %i.f = insertelement <2 x float> poison, float %i.b, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %0, <2 x float> %i.e)
  %i.i = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %2, <2 x float> %i.h)
  %i.k = insertelement <2 x float> poison, float %6, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %3, <2 x float> %i.j)
  ret <2 x float> %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionPointRec(<2 x float> %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #10 {
bb.a:
  %.sroa.05.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fcmp oge float %.sroa.05.0.vec.extract, %.sroa.0.0.vec.extract
  %foldExtExtBinop = fadd <2 x float> %1, %2
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fcmp olt float %.sroa.05.0.vec.extract, %i.b
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.05.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.d = fcmp oge float %.sroa.05.4.vec.extract, %.sroa.0.4.vec.extract
  %foldExtExtBinop14 = fadd <2 x float> %1, %2
  %i.e = extractelement <2 x float> %foldExtExtBinop14, i64 1
  %i.f = fcmp olt float %.sroa.05.4.vec.extract, %i.e
  %or.cond12 = select i1 %i.d, i1 %i.f, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond12, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionPointCircle(<2 x float> %0, <2 x float> %1, float noundef %2) local_unnamed_addr #10 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %0, %1
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop13 = fsub <2 x float> %0, %1    ; 2 uses
  %foldExtExtBinop15 = fmul <2 x float> %foldExtExtBinop13, %foldExtExtBinop13
  %i.b = extractelement <2 x float> %foldExtExtBinop15, i64 1
  %i.c = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.b)
  %i.d = fmul float %2, %2
  %i.e = fcmp ole float %i.c, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionPointTriangle(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %1, %3
  %4 = shufflevector <2 x float> %0, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %i.a = fsub <2 x float> %4, %3                  ; 2 uses
  %5 = shufflevector <2 x float> %0, <2 x float> %3, <2 x i32> <i32 1, i32 2>
  %6 = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 1, i32 2>
  %i.b = fsub <2 x float> %5, %6                  ; 2 uses
  %7 = shufflevector <2 x float> %1, <2 x float> %0, <2 x i32> <i32 0, i32 3>
  %8 = fsub <2 x float> %7, %3                    ; 2 uses
  %foldExtExtBinop60 = fmul <2 x float> %i.b, %foldExtExtBinop
  %9 = extractelement <2 x float> %foldExtExtBinop60, i64 1
  %10 = extractelement <2 x float> %i.a, i64 1
  %11 = extractelement <2 x float> %8, i64 0
  %12 = tail call float @llvm.fmuladd.f32(float %10, float %11, float %9)
  %13 = shufflevector <2 x float> %3, <2 x float> %0, <2 x i32> <i32 1, i32 2>
  %14 = shufflevector <2 x float> %1, <2 x float> %3, <2 x i32> <i32 1, i32 2>
  %15 = fsub <2 x float> %13, %14
  %16 = fmul <2 x float> %8, %i.b
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %i.a, <2 x float> %16)
  %i.c = insertelement <2 x float> poison, float %12, i64 0
  %18 = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = fdiv <2 x float> %17, %18                ; 2 uses
  %i.e = extractelement <2 x float> %i.d, i64 1   ; 2 uses
  %i.f = fsub float 1.000000e+00, %i.e
  %i.g = fcmp ogt float %i.e, 0.000000e+00
  %i.h = extractelement <2 x float> %i.d, i64 0   ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  %i.j = fcmp ogt float %i.f, %i.h
  %i.k = and i1 %i.i, %i.j
  %or.cond3 = select i1 %i.g, i1 %i.k, i1 false
  ret i1 %or.cond3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define zeroext i1 @CheckCollisionPointPoly(<2 x float> %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %2, 2
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %2, -1                       ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0
  %wide.trip.count = zext nneg i32 %2 to i64
  %.phi.trans.insert = zext nneg i32 %i.b to i64
  %.phi.trans.insert32 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.phi.trans.insert
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert32, i64 4
  %.pre = load float, ptr %.phi.trans.insert33, align 4
  %i.c = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %i.d = phi float [ %.pre, %bb.b ], [ %i.g, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.031 = phi i64 [ %i.c, %bb.b ], [ %indvars.iv, %bb.e ]
  %.02729 = phi i1 [ false, %bb.b ], [ %.1, %bb.e ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load float, ptr %i.f, align 4            ; 4 uses
  %i.h = fcmp ogt float %i.g, %.sroa.0.4.vec.extract
  %i.i = fcmp ule float %i.d, %.sroa.0.4.vec.extract
  %.not = xor i1 %i.h, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.031
  %i.k = load float, ptr %i.j, align 4
  %i.l = load float, ptr %i.e, align 4            ; 2 uses
  %i.m = fsub float %i.k, %i.l
  %i.n = fsub float %.sroa.0.4.vec.extract, %i.g
  %i.o = fmul float %i.n, %i.m
  %i.p = fsub float %i.d, %i.g
  %i.q = fdiv float %i.o, %i.p
  %i.r = fadd float %i.l, %i.q
  %i.s = fcmp olt float %.sroa.0.0.vec.extract, %i.r
  %spec.select = xor i1 %.02729, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i1 [ %.02729, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.e, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ %.1, %bb.e ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionRecs(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %.sroa.05.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.b = fcmp olt float %.sroa.05.0.vec.extract, %i.a
  %foldExtExtBinop15 = fadd <2 x float> %0, %1
  %i.c = extractelement <2 x float> %foldExtExtBinop15, i64 0
  %i.d = fcmp ogt float %i.c, %.sroa.0.0.vec.extract
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop17 = fadd <2 x float> %2, %3
  %i.e = fcmp olt <2 x float> %0, %foldExtExtBinop17
  %i.f = extractelement <2 x i1> %i.e, i64 1
  %foldExtExtBinop19 = fadd <2 x float> %0, %1
  %i.g = fcmp ogt <2 x float> %foldExtExtBinop19, %2
  %i.h = extractelement <2 x i1> %i.g, i64 1
  %or.cond13 = select i1 %i.f, i1 %i.h, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond13, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionCircles(<2 x float> %0, float noundef %1, <2 x float> %2, float noundef %3) local_unnamed_addr #10 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %2, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop11 = fsub <2 x float> %2, %0    ; 2 uses
  %foldExtExtBinop13 = fmul <2 x float> %foldExtExtBinop11, %foldExtExtBinop11
  %i.b = extractelement <2 x float> %foldExtExtBinop13, i64 1
  %i.c = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.b)
  %i.d = fadd float %1, %3                        ; 2 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = fcmp ole float %i.c, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionCircleRec(<2 x float> %0, float noundef %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %i.a = fmul <2 x float> %3, splat (float 5.000000e-01) ; 5 uses
  %i.b = fadd <2 x float> %2, %i.a
  %i.c = fsub <2 x float> %0, %i.b
  %i.d = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.c) ; 4 uses
  %i.e = insertelement <2 x float> poison, float %1, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fadd <2 x float> %i.f, %i.a
  %i.h = fcmp ugt <2 x float> %i.d, %i.g          ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 0
  %i.j = extractelement <2 x i1> %i.h, i64 1
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fcmp ugt <2 x float> %i.d, %i.a          ; 2 uses
  %i.l = extractelement <2 x i1> %i.k, i64 0
  %i.m = extractelement <2 x i1> %i.k, i64 1
  %or.cond37 = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond37, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop = fsub <2 x float> %i.d, %i.a
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop43 = fsub <2 x float> %i.d, %i.a ; 2 uses
  %foldExtExtBinop45 = fmul <2 x float> %foldExtExtBinop43, %foldExtExtBinop43
  %i.o = extractelement <2 x float> %foldExtExtBinop45, i64 1
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.o)
  %i.q = fmul float %1, %1
  %i.r = fcmp ole float %i.p, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.r, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @CheckCollisionLines(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #13 {
bb.a:
  %i.a = fsub <2 x float> %1, %0                  ; 5 uses
  %foldExtExtBinop = fsub <2 x float> %3, %2
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop47 = fsub <2 x float> %3, %2    ; 2 uses
  %i.c = extractelement <2 x float> %foldExtExtBinop47, i64 1
  %i.d = fneg float %i.b                          ; 2 uses
  %i.e = extractelement <2 x float> %i.a, i64 1
  %i.f = fmul float %i.e, %i.d
  %i.g = extractelement <2 x float> %i.a, i64 0
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.c, float %i.f) ; 2 uses
  %i.i = tail call float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp ult float %i.i, f0x34000000
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fsub <2 x float> %2, %0                  ; 2 uses
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = insertelement <2 x float> poison, float %i.d, i64 0
  %i.n = fneg <2 x float> %i.a
  %i.o = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.p = fmul <2 x float> %i.l, %i.o
  %i.q = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = shufflevector <2 x float> %i.a, <2 x float> %foldExtExtBinop47, <2 x i32> <i32 3, i32 1>
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %i.p)
  %i.t = insertelement <2 x float> poison, float %i.h, i64 0
  %i.u = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.v = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> zeroinitializer
  %i.w = fdiv <4 x float> %i.u, %i.v              ; 3 uses
  %i.x = fcmp ole <4 x float> %i.w, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.y = fcmp oge <4 x float> %i.w, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.z = shufflevector <4 x i1> %i.x, <4 x i1> %i.y, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aa = freeze <4 x i1> %i.z
  %i.ab = bitcast <4 x i1> %i.aa to i4
  %i.ac = icmp eq i4 %i.ab, -1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.a, <2 x float> %0)
  store <2 x float> %i.ae, ptr %4, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
end_hunk_1
