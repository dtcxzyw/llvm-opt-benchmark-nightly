Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastArea?download=true
inline.NumInlined: 85
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z20rcMarkConvexPolyAreaP9rcContextPKfiffhR20rcCompactHeightfield:bb.a
  %.sroa.11.0118 = phi float [ %i.l, %.lr.ph.preheader ], [ %i.az, %.lr.ph ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !75 ; 4 uses
  %i.au = fcmp olt float %.sroa.0103.0120, %i.at
  %i.av = select i1 %i.au, float %.sroa.0103.0120, float %i.at ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !75 ; 4 uses
  %i.ay = fcmp olt float %.sroa.11.0118, %i.ax
  %i.az = select i1 %i.ay, float %.sroa.11.0118, float %i.ax ; 2 uses
  %i.ba = fcmp ogt float %.sroa.0100.0123, %i.at
  %i.bb = fcmp ogt float %.sroa.10.0121, %i.ax
  %i.bc = select i1 %i.ba, float %.sroa.0100.0123, float %i.at ; 2 uses
  %i.bd = select i1 %i.bb, float %.sroa.10.0121, float %i.ax ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 0) ; 2 uses
  %i.be = add nsw i32 %i.g, -1
  %i.bf = extractelement <2 x i32> %i.ao, i64 1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.be) ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0) ; 2 uses
  %i.bg = add nsw i32 %i.i, -1
  %i.bh = extractelement <2 x i32> %i.ao, i64 0
  %.080 = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bg) ; 2 uses
  %.not94136 = icmp sgt i32 %spec.store.select1, %.080
  br i1 %.not94136, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %.not95132 = icmp sle i32 %spec.store.select, %spec.select
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bl = add nsw i32 %2, -1
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.bm = icmp sgt i32 %2, 0
  %or.cond = and i1 %.not95132, %i.bm
  br i1 %or.cond, label %.preheader.us.preheader, label %.loopexit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.bn = zext nneg i32 %spec.store.select to i64
  %i.bo = add nuw nsw i32 %spec.select, 1
  %i.bp = zext nneg i32 %spec.store.select1 to i64
  %i.bq = sext i32 %i.g to i64
  %i.br = add nuw nsw i32 %.080, 1
  %wide.trip.count161 = zext nneg i32 %i.br to i64
  %wide.trip.count156 = zext nneg i32 %i.bo to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge135.split.us.us
  %indvars.iv158 = phi i64 [ %i.bp, %.preheader.us.preheader ], [ %indvars.iv.next159, %._crit_edge135.split.us.us ] ; 3 uses
  %i.bs = mul nsw i64 %indvars.iv158, %i.bq
  %i.bt = trunc nuw nsw i64 %indvars.iv158 to i32
  %i.bu = uitofp nneg i32 %i.bt to float
  %i.bv = fadd float %i.bu, 5.000000e-01
  %i.bw = insertelement <2 x float> poison, float %i.bv, i64 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge131.split.us.us.us, %.preheader.us
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %._crit_edge131.split.us.us.us ], [ %i.bn, %.preheader.us ] ; 3 uses
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !70
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %indvars.iv153
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %i.bs
  %i.ca = load i32, ptr %i.bz, align 4            ; 3 uses
  %i.cb = lshr i32 %i.ca, 24                      ; 2 uses
  %.not141 = icmp eq i32 %i.cb, 0
  br i1 %.not141, label %._crit_edge131.split.us.us.us, label %.lr.ph130.us.us

.lr.ph130.us.us:                                  ; preds = %bb.d
  %i.cc = and i32 %i.ca, 16777215
  %i.cd = add nuw nsw i32 %i.cc, %i.cb
  %i.ce = trunc nuw nsw i64 %indvars.iv153 to i32
  %i.cf = uitofp nneg i32 %i.ce to float
  %i.cg = fadd float %i.cf, 5.000000e-01
  %i.ch = and i32 %i.ca, 16777215
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = zext nneg i32 %i.cd to i64
  %i.ck = insertelement <2 x float> %i.bw, float %i.cg, i64 0
  br label %bb.e

bb.e:                                             ; preds = %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us, %.lr.ph130.us.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us ], [ %i.ci, %.lr.ph130.us.us ] ; 3 uses
  %i.cl = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv150 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !72
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.bk, align 8, !tbaa !73
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv150
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !77
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.ad
  %i.cu = icmp sgt i32 %i.cs, %i.ah
  %or.cond.us.us.us = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond.us.us.us, label %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us, label %.lr.ph.preheader.i.us.us.us

.lr.ph.preheader.i.us.us.us:                      ; preds = %bb.f
  %i.cv = load float, ptr %i.n, align 4, !tbaa !75
  %i.cw = load float, ptr %i.o, align 4, !tbaa !78
  %i.cx = load float, ptr %i.p, align 4, !tbaa !75
  %i.cy = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.cx, i64 1
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cz, <2 x float> %i.db) ; 2 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 1 ; 3 uses
  %i.de = extractelement <2 x float> %i.dc, i64 0
  br label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %bb.h, %.lr.ph.preheader.i.us.us.us
  %indvars.iv.i.us.us.us = phi i64 [ 0, %.lr.ph.preheader.i.us.us.us ], [ %indvars.iv.next.i.us.us.us, %bb.h ] ; 3 uses
  %.03.i.us.us.us = phi i32 [ %i.bl, %.lr.ph.preheader.i.us.us.us ], [ %i.dz, %bb.h ]
  %.0221.i.us.us.us = phi i1 [ false, %.lr.ph.preheader.i.us.us.us ], [ %.1.i.us.us.us, %bb.h ] ; 2 uses
  %.idx.i.us.us.us = mul nuw nsw i64 %indvars.iv.i.us.us.us, 12
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.us.us.us ; 2 uses
  %i.dg = mul nsw i32 %.03.i.us.us.us, 3
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !75 ; 3 uses
  %i.dl = fcmp ogt float %i.dk, %i.dd
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !75 ; 2 uses
  %i.do = fcmp ule float %i.dn, %i.dd
  %i.dp = xor i1 %i.dl, %i.do
  br i1 %i.dp, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.us.us.us
  %i.dq = load float, ptr %i.di, align 4, !tbaa !75
  %i.dr = load float, ptr %i.df, align 4, !tbaa !75 ; 2 uses
  %i.ds = fsub float %i.dq, %i.dr
  %i.dt = fsub float %i.dd, %i.dk
  %i.du = fmul float %i.dt, %i.ds
  %i.dv = fsub float %i.dn, %i.dk
  %i.dw = fdiv float %i.du, %i.dv
  %i.dx = fadd float %i.dr, %i.dw
  %i.dy = fcmp ult float %i.de, %i.dx
  %spec.select.i.us.us.us = xor i1 %.0221.i.us.us.us, %i.dy
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.us.us.us
  %.1.i.us.us.us = phi i1 [ %spec.select.i.us.us.us, %bb.g ], [ %.0221.i.us.us.us, %.lr.ph.i.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us, 1 ; 2 uses
  %i.dz = trunc nuw nsw i64 %indvars.iv.i.us.us.us to i32
  %exitcond.not.i.us.us.us = icmp eq i64 %indvars.iv.next.i.us.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.us, label %_ZL11pointInPolyiPKfS0_.exit.us.us.us, label %.lr.ph.i.us.us.us

_ZL11pointInPolyiPKfS0_.exit.us.us.us:            ; preds = %bb.h
  br i1 %.1.i.us.us.us, label %bb.i, label %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us

bb.i:                                             ; preds = %_ZL11pointInPolyiPKfS0_.exit.us.us.us
  store i8 %5, ptr %i.cm, align 1, !tbaa !72
  br label %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us

_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us:     ; preds = %bb.i, %_ZL11pointInPolyiPKfS0_.exit.us.us.us, %bb.f, %bb.e
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.ea = icmp samesign ult i64 %indvars.iv.next151, %i.cj
  br i1 %i.ea, label %bb.e, label %._crit_edge131.split.us.us.us

._crit_edge131.split.us.us.us:                    ; preds = %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us, %bb.d
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge135.split.us.us, label %bb.d

._crit_edge135.split.us.us:                       ; preds = %._crit_edge131.split.us.us.us
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %.loopexit, label %.preheader.us

.loopexit:                                        ; preds = %._crit_edge135.split.us.us, %bb.c, %.preheader.lr.ph, %._crit_edge
  %i.eb = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.j, label %_ZN13rcScopedTimerD2Ev.exit

bb.j:                                             ; preds = %.loopexit
  %i.ed = load ptr, ptr %0, align 8, !tbaa !31
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void %i.ef(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 16) #5, !call_target !74, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %.loopexit, %bb.j
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_Z12rcOffsetPolyPKfifPfi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not101123 = icmp sgt i32 %1, 0
  br i1 %.not101123, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %1, -1
  %i.b = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.094124 = phi i32 [ 0, %.lr.ph ], [ %.296, %bb.i ] ; 5 uses
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = add i32 %i.a, %i.c
  %i.e = srem i32 %i.d, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.f = icmp eq i64 %indvars.iv.next, %i.b       ; 2 uses
  %i.g = mul nsw i32 %i.e, 3
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %0, i64 %i.h ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 7 uses
  %i.k = mul i64 %indvars.iv.next, 3
  %i.l = and i64 %i.k, 4294967295
  %i.m = select i1 %i.f, i64 0, i64 %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = load float, ptr %i.j, align 4, !tbaa !75 ; 2 uses
  %i.p = load float, ptr %i.i, align 4, !tbaa !75
  %i.q = fsub float %i.o, %i.p                    ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !75 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !75
  %i.w = fsub float %i.t, %i.v                    ; 4 uses
  %i.x = fmul float %i.q, %i.q
  %i.y = fmul float %i.w, %i.w
  %i.z = fadd float %i.x, %i.y                    ; 2 uses
  %i.aa = fcmp ogt float %i.z, f0x358637BD
  br i1 %i.aa, label %bb.c, label %_ZL16rcVsafeNormalizePf.exit

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call noundef float @_Z6rcSqrtf(float noundef %i.z) #5
  %i.ac = fdiv float 1.000000e+00, %i.ab          ; 2 uses
  %i.ad = fmul float %i.q, %i.ac
  %i.ae = fmul float %i.w, %i.ac
  %.pre = load float, ptr %i.j, align 4, !tbaa !75
  %.pre131 = load float, ptr %i.s, align 4, !tbaa !75
  br label %_ZL16rcVsafeNormalizePf.exit

_ZL16rcVsafeNormalizePf.exit:                     ; preds = %bb.b, %bb.c
  %i.af = phi float [ %.pre131, %bb.c ], [ %i.t, %bb.b ]
  %i.ag = phi float [ %.pre, %bb.c ], [ %i.o, %bb.b ]
  %.sroa.13.0 = phi float [ %i.ae, %bb.c ], [ %i.w, %bb.b ] ; 5 uses
  %.sroa.0112.0 = phi float [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 5 uses
  %i.ah = load float, ptr %i.n, align 4, !tbaa !75
  %i.ai = fsub float %i.ah, %i.ag                 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !75
  %i.al = fsub float %i.ak, %i.af                 ; 4 uses
  %i.am = fmul float %i.ai, %i.ai
  %i.an = fmul float %i.al, %i.al
  %i.ao = fadd float %i.am, %i.an                 ; 2 uses
  %i.ap = fcmp ogt float %i.ao, f0x358637BD
  br i1 %i.ap, label %bb.d, label %_ZL16rcVsafeNormalizePf.exit102

bb.d:                                             ; preds = %_ZL16rcVsafeNormalizePf.exit
  %i.aq = tail call noundef float @_Z6rcSqrtf(float noundef %i.ao) #5
  %i.ar = fdiv float 1.000000e+00, %i.aq          ; 2 uses
  %i.as = fmul float %i.ai, %i.ar
  %i.at = fmul float %i.al, %i.ar
  br label %_ZL16rcVsafeNormalizePf.exit102

_ZL16rcVsafeNormalizePf.exit102:                  ; preds = %_ZL16rcVsafeNormalizePf.exit, %bb.d
  %.sroa.14.0 = phi float [ %i.at, %bb.d ], [ %i.al, %_ZL16rcVsafeNormalizePf.exit ] ; 3 uses
  %.sroa.0.0 = phi float [ %i.as, %bb.d ], [ %i.ai, %_ZL16rcVsafeNormalizePf.exit ] ; 4 uses
  %i.au = fneg float %.sroa.14.0                  ; 3 uses
  %i.av = fmul float %.sroa.0112.0, %i.au
  %i.aw = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float %.sroa.13.0, float %i.av)
  %i.ax = fsub float %i.au, %.sroa.13.0
  %i.ay = fmul float %i.ax, 5.000000e-01          ; 4 uses
  %i.az = fadd float %.sroa.0112.0, %.sroa.0.0
  %i.ba = fmul float %i.az, 5.000000e-01          ; 4 uses
  %i.bb = fmul float %i.ay, %i.ay
  %i.bc = fmul float %i.ba, %i.ba
  %i.bd = fadd float %i.bb, %i.bc                 ; 3 uses
  %i.be = fmul float %i.bd, 1.200000e+00
  %i.bf = fmul float %i.be, 1.200000e+00
  %i.bg = fcmp olt float %i.bf, 1.000000e+00
  %i.bh = fcmp ogt float %i.bd, f0x358637BD       ; 2 uses
  %i.bi = fdiv float 1.000000e+00, %i.bd          ; 2 uses
  %i.bj = fmul float %i.ay, %i.bi
  %i.bk = fmul float %i.ba, %i.bi
  %.090 = select i1 %i.bh, float %i.bj, float %i.ay
  %.089 = select i1 %i.bh, float %i.bk, float %i.ba
  %i.bl = fcmp olt float %i.aw, 0.000000e+00
  %or.cond = and i1 %i.bl, %i.bg
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZL16rcVsafeNormalizePf.exit102
  %i.bm = add nsw i32 %.094124, 2                 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, %4
  br i1 %i.bn, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = fmul float %.sroa.13.0, %.sroa.14.0
  %i.bp = tail call float @llvm.fmuladd.f32(float %.sroa.0112.0, float %.sroa.0.0, float %i.bo)
  %i.bq = fsub float 1.000000e+00, %i.bp
  %i.br = fmul float %i.bq, 5.000000e-01          ; 4 uses
  %i.bs = load float, ptr %i.j, align 4, !tbaa !75
  %i.bt = tail call float @llvm.fmuladd.f32(float %.sroa.0112.0, float %i.br, float %.sroa.13.0)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %2, float %i.bs)
  %i.bv = mul nsw i32 %.094124, 3                 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bw ; 3 uses
  store float %i.bu, ptr %i.bx, align 4, !tbaa !75
  %i.by = load float, ptr %i.r, align 4, !tbaa !75
  %i.bz = getelementptr i8, ptr %i.bx, i64 4
  store float %i.by, ptr %i.bz, align 4, !tbaa !75
  %i.ca = load float, ptr %i.s, align 4, !tbaa !75
  %i.cb = fneg float %.sroa.0112.0
  %i.cc = tail call float @llvm.fmuladd.f32(float %.sroa.13.0, float %i.br, float %i.cb)
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %2, float %i.ca)
  %i.ce = getelementptr i8, ptr %i.bx, i64 8
  store float %i.cd, ptr %i.ce, align 4, !tbaa !75
  %i.cf = load float, ptr %i.j, align 4, !tbaa !75
  %i.cg = fneg float %.sroa.0.0                   ; 2 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.br, float %.sroa.14.0)
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %2, float %i.cf)
  %i.cj = add i32 %i.bv, 3
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ck ; 2 uses
  store float %i.ci, ptr %i.cl, align 4, !tbaa !75
  %i.cm = load float, ptr %i.r, align 4, !tbaa !75
  %i.cn = getelementptr i8, ptr %i.cl, i64 4
  store float %i.cm, ptr %i.cn, align 4, !tbaa !75
  %i.co = load float, ptr %i.s, align 4, !tbaa !75
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.au, float %i.br, float %i.cg)
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %2, float %i.co)
  br label %bb.i

bb.g:                                             ; preds = %_ZL16rcVsafeNormalizePf.exit102
  %.not = icmp slt i32 %.094124, %4
  br i1 %.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.cr = add nsw i32 %.094124, 1
  %i.cs = load float, ptr %i.j, align 4, !tbaa !75
  %i.ct = fneg float %.090
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %2, float %i.cs)
  %i.cv = mul nsw i32 %.094124, 3
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cw ; 2 uses
  store float %i.cu, ptr %i.cx, align 4, !tbaa !75
  %i.cy = load float, ptr %i.r, align 4, !tbaa !75
  %i.cz = getelementptr i8, ptr %i.cx, i64 4
  store float %i.cy, ptr %i.cz, align 4, !tbaa !75
  %i.da = load float, ptr %i.s, align 4, !tbaa !75
  %i.db = fneg float %.089
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %2, float %i.da)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.dd = phi i64 [ %i.ck, %bb.f ], [ %i.cw, %bb.h ]
  %.sink = phi float [ %i.cq, %bb.f ], [ %i.dc, %bb.h ]
  %.296 = phi i32 [ %i.bm, %bb.f ], [ %i.cr, %bb.h ] ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 8
  store float %.sink, ptr %i.df, align 4, !tbaa !75
  br i1 %i.f, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.i, %bb.e, %bb.g, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.e ], [ %.296, %bb.i ]
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define void @_Z18rcMarkCylinderAreaP9rcContextPKfffhR20rcCompactHeightfield(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, float noundef %3, i8 noundef zeroext %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 15) #5, !call_target !37, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %5, align 8, !tbaa !23     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = load float, ptr %1, align 4, !tbaa !75   ; 2 uses
  %i.k = fsub float %i.j, %2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !75 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !75 ; 2 uses
  %i.p = fsub float %i.o, %2
  %i.q = fadd float %3, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.u = load <2 x float>, ptr %i.s, align 4, !tbaa !75 ; 2 uses
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.w = load <3 x float>, ptr %i.r, align 4, !tbaa !75 ; 2 uses
  %i.x = shufflevector <3 x float> %i.w, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.y = insertelement <4 x float> poison, float %i.k, i64 0
  %i.z = insertelement <4 x float> %i.y, float %i.m, i64 1
  %i.aa = insertelement <4 x float> %i.z, float %i.p, i64 2
  %i.ab = insertelement <4 x float> %i.aa, float %i.q, i64 3
  %i.ac = fsub <4 x float> %i.ab, %i.x
  %i.ad = fdiv <4 x float> %i.ac, %i.v            ; 4 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 0
  %i.af = fptosi float %i.ae to i32               ; 2 uses
  %i.ag = extractelement <4 x float> %i.ad, i64 1
  %i.ah = fptosi float %i.ag to i32
  %i.ai = extractelement <4 x float> %i.ad, i64 2
  %i.aj = fptosi float %i.ai to i32               ; 2 uses
  %i.ak = extractelement <4 x float> %i.ad, i64 3
  %i.al = fptosi float %i.ak to i32
  %.not = icmp sgt i32 %i.g, %i.af
  %i.am = insertelement <2 x float> poison, float %2, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.j, i64 1
  %i.aq = fadd <2 x float> %i.an, %i.ap
  %i.ar = shufflevector <3 x float> %i.w, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.as = fsub <2 x float> %i.aq, %i.ar
  %i.at = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv <2 x float> %i.as, %i.at
  %i.av = fptosi <2 x float> %i.au to <2 x i32>   ; 3 uses
  %i.aw = icmp sgt <2 x i32> %i.av, splat (i32 -1) ; 2 uses
  %i.ax = extractelement <2 x i1> %i.aw, i64 1
  %or.cond106.not110.not114 = select i1 %i.ax, i1 %.not, i1 false
  %i.ay = extractelement <2 x i1> %i.aw, i64 0
  %or.cond107.not112 = select i1 %or.cond106.not110.not114, i1 %i.ay, i1 false
  %.not99 = icmp sgt i32 %i.i, %i.aj
  %or.cond108 = select i1 %or.cond107.not112, i1 %.not99, i1 false
  br i1 %or.cond108, label %bb.c, label %.loopexit116

bb.c:                                             ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0) ; 2 uses
  %i.az = add nsw i32 %i.g, -1
  %i.ba = extractelement <2 x i32> %i.av, i64 1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.az) ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0) ; 2 uses
  %i.bb = add nsw i32 %i.i, -1
  %i.bc = extractelement <2 x i32> %i.av, i64 0
  %.090 = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.bb) ; 2 uses
  %i.bd = fmul float %2, %2
  %.not102121 = icmp sgt i32 %spec.store.select1, %.090
  br i1 %.not102121, label %.loopexit116, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %bb.c
  %.not103118 = icmp sgt i32 %spec.store.select, %spec.select
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 72
  br i1 %.not103118, label %.loopexit116, label %.preheader115.preheader

.preheader115.preheader:                          ; preds = %.preheader115.lr.ph
  %i.bh = zext nneg i32 %spec.store.select to i64
  %i.bi = add nuw nsw i32 %spec.select, 1
  %i.bj = zext nneg i32 %spec.store.select1 to i64
  %i.bk = sext i32 %i.g to i64
  %i.bl = add nuw nsw i32 %.090, 1
  %wide.trip.count131 = zext nneg i32 %i.bl to i64
  %wide.trip.count = zext nneg i32 %i.bi to i64
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.preheader, %._crit_edge
  %indvars.iv128 = phi i64 [ %i.bj, %.preheader115.preheader ], [ %indvars.iv.next129, %._crit_edge ] ; 3 uses
  %i.bm = mul nsw i64 %indvars.iv128, %i.bk
  %i.bn = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.bo = uitofp nneg i32 %i.bn to float
  %i.bp = fadd float %i.bo, 5.000000e-01
  %i.bq = insertelement <2 x float> poison, float %i.bp, i64 1
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.loopexit116, label %.preheader115

bb.d:                                             ; preds = %.preheader115, %.loopexit
  %indvars.iv125 = phi i64 [ %i.bh, %.preheader115 ], [ %indvars.iv.next126, %.loopexit ] ; 3 uses
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !70
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv125
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %i.bm
  %i.bu = load i32, ptr %i.bt, align 4            ; 3 uses
  %i.bv = lshr i32 %i.bu, 24                      ; 2 uses
  %i.bw = load float, ptr %i.r, align 4, !tbaa !75
  %i.bx = trunc nuw nsw i64 %indvars.iv125 to i32
  %i.by = uitofp nneg i32 %i.bx to float
  %i.bz = fadd float %i.by, 5.000000e-01
  %i.ca = load float, ptr %i.s, align 4, !tbaa !78
  %i.cb = load float, ptr %i.t, align 4, !tbaa !75
  %i.cc = load float, ptr %1, align 4, !tbaa !75
  %i.cd = load float, ptr %i.n, align 4, !tbaa !75
  %i.ce = insertelement <2 x float> %i.bq, float %i.bz, i64 0
  %i.cf = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.cb, i64 1
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cg, <2 x float> %i.ci)
  %i.ck = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %i.cd, i64 1
  %i.cm = fsub <2 x float> %i.cj, %i.cl           ; 2 uses
  %i.cn = fmul <2 x float> %i.cm, %i.cm
  %i.co = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cn)
  %i.cp = fcmp ult float %i.co, %i.bd
  %i.cq = icmp ne i32 %i.bv, 0
  %or.cond123 = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond123, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.cr = and i32 %i.bu, 16777215
  %i.cs = add nuw nsw i32 %i.cr, %i.bv
  %i.ct = and i32 %i.bu, 16777215
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = zext nneg i32 %i.cs to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.cu, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.cw = load ptr, ptr %i.bf, align 8, !tbaa !71
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !72
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.da = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv
  %i.dc = load i16, ptr %i.db, align 4, !tbaa !77
  %i.dd = zext i16 %i.dc to i32                   ; 2 uses
  %.not104 = icmp slt i32 %i.dd, %i.ah
  %.not105 = icmp sgt i32 %i.dd, %i.al
  %or.cond = select i1 %.not104, i1 true, i1 %.not105
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %4, ptr %i.cx, align 1, !tbaa !72
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = icmp samesign ult i64 %indvars.iv.next, %i.cv
  br i1 %i.de, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.d
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

.loopexit116:                                     ; preds = %._crit_edge, %bb.c, %.preheader115.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.df = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.h, label %_ZN13rcScopedTimerD2Ev.exit

bb.h:                                             ; preds = %.loopexit116
  %i.dh = load ptr, ptr %0, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 15) #5, !call_target !74, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit
end_hunk_0
