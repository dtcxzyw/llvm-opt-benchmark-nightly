Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastArea?download=true
inline.NumInlined: 85
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z13rcMarkBoxAreaP9rcContextPKfS2_hR20rcCompactHeightfield:bb.a
bb.g:                                             ; preds = %bb.e, %.lr.ph, %bb.f
  %i.cc = phi ptr [ %i.bs, %bb.e ], [ %i.bs, %.lr.ph ], [ %.pre, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = icmp samesign ult i64 %indvars.iv.next, %i.br
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %._crit_edge94, %bb.c, %.preheader.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.ce = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.h, label %_ZN13rcScopedTimerD2Ev.exit

bb.h:                                             ; preds = %.loopexit
  %i.cg = load ptr, ptr %0, align 8, !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 14) #5, !call_target !74, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %.loopexit, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z20rcMarkConvexPolyAreaP9rcContextPKfiffhR20rcCompactHeightfield(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 16) #5, !call_target !37, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %6, align 8, !tbaa !23     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = load float, ptr %1, align 4, !tbaa !75   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !75 ; 4 uses
  %i.m = icmp sgt i32 %2, 1
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %.sroa.11.0.lcssa = phi float [ %i.l, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.az, %.lr.ph ]
  %.sroa.0103.0.lcssa = phi float [ %i.j, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.av, %.lr.ph ]
  %.sroa.10.0.lcssa = phi float [ %i.l, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.bd, %.lr.ph ]
  %.sroa.0100.0.lcssa = phi float [ %i.j, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.bb, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !75 ; 2 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.s = load <3 x float>, ptr %i.n, align 4, !tbaa !75 ; 2 uses
  %i.t = shufflevector <3 x float> %i.s, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.u = insertelement <4 x float> poison, float %.sroa.0103.0.lcssa, i64 0
  %i.v = insertelement <4 x float> %i.u, float %3, i64 1
  %i.w = insertelement <4 x float> %i.v, float %.sroa.11.0.lcssa, i64 2
  %i.x = insertelement <4 x float> %i.w, float %4, i64 3
  %i.y = fsub <4 x float> %i.x, %i.t
  %i.z = fdiv <4 x float> %i.y, %i.r              ; 4 uses
  %i.aa = extractelement <4 x float> %i.z, i64 0
  %i.ab = fptosi float %i.aa to i32               ; 2 uses
  %i.ac = extractelement <4 x float> %i.z, i64 1
  %i.ad = fptosi float %i.ac to i32
  %i.ae = extractelement <4 x float> %i.z, i64 2
  %i.af = fptosi float %i.ae to i32               ; 2 uses
  %i.ag = extractelement <4 x float> %i.z, i64 3
  %i.ah = fptosi float %i.ag to i32
  %.not = icmp sgt i32 %i.g, %i.ab
  %i.ai = insertelement <2 x float> poison, float %.sroa.10.0.lcssa, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %.sroa.0100.0.lcssa, i64 1
  %i.ak = shufflevector <3 x float> %i.s, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.al = fsub <2 x float> %i.aj, %i.ak
  %i.am = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fdiv <2 x float> %i.al, %i.am
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 3 uses
  %i.ap = icmp sgt <2 x i32> %i.ao, splat (i32 -1) ; 2 uses
  %i.aq = extractelement <2 x i1> %i.ap, i64 1
  %or.cond96.not113.not117 = select i1 %i.aq, i1 %.not, i1 false
  %i.ar = extractelement <2 x i1> %i.ap, i64 0
  %or.cond97.not115 = select i1 %or.cond96.not113.not117, i1 %i.ar, i1 false
  %.not91 = icmp sgt i32 %i.i, %i.af
  %or.cond98 = select i1 %or.cond97.not115, i1 %.not91, i1 false
  br i1 %or.cond98, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.sroa.0100.0123 = phi float [ %i.j, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ] ; 2 uses
  %.sroa.10.0121 = phi float [ %i.l, %.lr.ph.preheader ], [ %i.bd, %.lr.ph ] ; 2 uses
  %.sroa.0103.0120 = phi float [ %i.j, %.lr.ph.preheader ], [ %i.av, %.lr.ph ] ; 2 uses
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
  %i.bb = select i1 %i.ba, float %.sroa.0100.0123, float %i.at ; 2 uses
  %i.bc = fcmp ogt float %.sroa.10.0121, %i.ax
  %i.bd = select i1 %i.bc, float %.sroa.10.0121, float %i.ax ; 2 uses
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
  %7 = load <4 x float>, ptr %i.n, align 4
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %9 = load <4 x float>, ptr %i.o, align 4
  %10 = load float, ptr %i.p, align 4, !tbaa !75
  %i.cv = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cw = insertelement <2 x float> %8, float %10, i64 1
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cv, <2 x float> %i.cw) ; 2 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 1 ; 3 uses
  %i.cz = extractelement <2 x float> %i.cx, i64 0
  br label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %bb.h, %.lr.ph.preheader.i.us.us.us
  %indvars.iv.i.us.us.us = phi i64 [ 0, %.lr.ph.preheader.i.us.us.us ], [ %indvars.iv.next.i.us.us.us, %bb.h ] ; 3 uses
  %.03.i.us.us.us = phi i32 [ %i.bl, %.lr.ph.preheader.i.us.us.us ], [ %i.du, %bb.h ]
  %.0221.i.us.us.us = phi i1 [ false, %.lr.ph.preheader.i.us.us.us ], [ %.1.i.us.us.us, %bb.h ] ; 2 uses
  %.idx.i.us.us.us = mul nuw nsw i64 %indvars.iv.i.us.us.us, 12
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.us.us.us ; 2 uses
  %i.db = mul nsw i32 %.03.i.us.us.us, 3
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.df = load float, ptr %i.de, align 4, !tbaa !75 ; 3 uses
  %i.dg = fcmp ogt float %i.df, %i.cy
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !75 ; 2 uses
  %i.dj = fcmp ule float %i.di, %i.cy
  %i.dk = xor i1 %i.dg, %i.dj
  br i1 %i.dk, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.us.us.us
  %i.dl = load float, ptr %i.dd, align 4, !tbaa !75
  %i.dm = load float, ptr %i.da, align 4, !tbaa !75 ; 2 uses
  %i.dn = fsub float %i.dl, %i.dm
  %i.do = fsub float %i.cy, %i.df
  %i.dp = fmul float %i.do, %i.dn
  %i.dq = fsub float %i.di, %i.df
  %i.dr = fdiv float %i.dp, %i.dq
  %i.ds = fadd float %i.dm, %i.dr
  %i.dt = fcmp ult float %i.cz, %i.ds
  %spec.select.i.us.us.us = xor i1 %.0221.i.us.us.us, %i.dt
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.us.us.us
  %.1.i.us.us.us = phi i1 [ %spec.select.i.us.us.us, %bb.g ], [ %.0221.i.us.us.us, %.lr.ph.i.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us, 1 ; 2 uses
  %i.du = trunc nuw nsw i64 %indvars.iv.i.us.us.us to i32
  %exitcond.not.i.us.us.us = icmp eq i64 %indvars.iv.next.i.us.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.us, label %_ZL11pointInPolyiPKfS0_.exit.us.us.us, label %.lr.ph.i.us.us.us

_ZL11pointInPolyiPKfS0_.exit.us.us.us:            ; preds = %bb.h
  br i1 %.1.i.us.us.us, label %bb.i, label %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us

bb.i:                                             ; preds = %_ZL11pointInPolyiPKfS0_.exit.us.us.us
  store i8 %5, ptr %i.cm, align 1, !tbaa !72
  br label %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us

_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us:     ; preds = %bb.i, %_ZL11pointInPolyiPKfS0_.exit.us.us.us, %bb.f, %bb.e
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.dv = icmp samesign ult i64 %indvars.iv.next151, %i.cj
  br i1 %i.dv, label %bb.e, label %._crit_edge131.split.us.us.us

._crit_edge131.split.us.us.us:                    ; preds = %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us, %bb.d
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge135.split.us.us, label %bb.d

._crit_edge135.split.us.us:                       ; preds = %._crit_edge131.split.us.us.us
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %.loopexit, label %.preheader.us

.loopexit:                                        ; preds = %._crit_edge135.split.us.us, %bb.c, %.preheader.lr.ph, %._crit_edge
  %i.dw = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.j, label %_ZN13rcScopedTimerD2Ev.exit

bb.j:                                             ; preds = %.loopexit
  %i.dy = load ptr, ptr %0, align 8, !tbaa !31
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void %i.ea(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 16) #5, !call_target !74, !inline_history !3
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
  %.not136 = icmp eq i64 %indvars.iv.next, %i.b   ; 2 uses
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 7 uses
  %i.j = mul i64 %indvars.iv.next, 3
  %i.k = and i64 %i.j, 4294967295
  %i.l = select i1 %.not136, i64 0, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = load float, ptr %i.i, align 4, !tbaa !75 ; 2 uses
  %i.o = load float, ptr %i.h, align 4, !tbaa !75
  %i.p = fsub float %i.n, %i.o                    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !75 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !75
  %i.v = fsub float %i.s, %i.u                    ; 4 uses
  %i.w = fmul float %i.p, %i.p
  %i.x = fmul float %i.v, %i.v
  %i.y = fadd float %i.w, %i.x                    ; 2 uses
  %i.z = fcmp ogt float %i.y, f0x358637BD
  br i1 %i.z, label %bb.c, label %_ZL16rcVsafeNormalizePf.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call noundef float @_Z6rcSqrtf(float noundef %i.y) #5
  %i.ab = fdiv float 1.000000e+00, %i.aa          ; 2 uses
  %i.ac = fmul float %i.p, %i.ab
  %i.ad = fmul float %i.v, %i.ab
  %.pre = load float, ptr %i.i, align 4, !tbaa !75
  %.pre131 = load float, ptr %i.r, align 4, !tbaa !75
  br label %_ZL16rcVsafeNormalizePf.exit

_ZL16rcVsafeNormalizePf.exit:                     ; preds = %bb.b, %bb.c
  %i.ae = phi float [ %.pre131, %bb.c ], [ %i.s, %bb.b ]
  %i.af = phi float [ %.pre, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.13.0 = phi float [ %i.ad, %bb.c ], [ %i.v, %bb.b ] ; 5 uses
  %.sroa.0112.0 = phi float [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 5 uses
  %i.ag = load float, ptr %i.m, align 4, !tbaa !75
  %i.ah = fsub float %i.ag, %i.af                 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !75
  %i.ak = fsub float %i.aj, %i.ae                 ; 4 uses
  %i.al = fmul float %i.ah, %i.ah
  %i.am = fmul float %i.ak, %i.ak
  %i.an = fadd float %i.al, %i.am                 ; 2 uses
  %i.ao = fcmp ogt float %i.an, f0x358637BD
  br i1 %i.ao, label %bb.d, label %_ZL16rcVsafeNormalizePf.exit102

bb.d:                                             ; preds = %_ZL16rcVsafeNormalizePf.exit
  %i.ap = tail call noundef float @_Z6rcSqrtf(float noundef %i.an) #5
  %i.aq = fdiv float 1.000000e+00, %i.ap          ; 2 uses
  %i.ar = fmul float %i.ah, %i.aq
  %i.as = fmul float %i.ak, %i.aq
  br label %_ZL16rcVsafeNormalizePf.exit102

_ZL16rcVsafeNormalizePf.exit102:                  ; preds = %_ZL16rcVsafeNormalizePf.exit, %bb.d
  %.sroa.14.0 = phi float [ %i.as, %bb.d ], [ %i.ak, %_ZL16rcVsafeNormalizePf.exit ] ; 3 uses
  %.sroa.0.0 = phi float [ %i.ar, %bb.d ], [ %i.ah, %_ZL16rcVsafeNormalizePf.exit ] ; 4 uses
  %i.at = fneg float %.sroa.14.0                  ; 3 uses
  %i.au = fmul float %.sroa.0112.0, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float %.sroa.13.0, float %i.au)
  %i.aw = fsub float %i.at, %.sroa.13.0
  %i.ax = fmul float %i.aw, 5.000000e-01          ; 4 uses
  %i.ay = fadd float %.sroa.0112.0, %.sroa.0.0
  %i.az = fmul float %i.ay, 5.000000e-01          ; 4 uses
  %i.ba = fmul float %i.ax, %i.ax
  %i.bb = fmul float %i.az, %i.az
  %i.bc = fadd float %i.ba, %i.bb                 ; 3 uses
  %i.bd = fmul float %i.bc, 1.200000e+00
  %i.be = fmul float %i.bd, 1.200000e+00
  %i.bf = fcmp olt float %i.be, 1.000000e+00
  %i.bg = fcmp ogt float %i.bc, f0x358637BD       ; 2 uses
  %i.bh = fdiv float 1.000000e+00, %i.bc          ; 2 uses
  %i.bi = fmul float %i.ax, %i.bh
  %i.bj = fmul float %i.az, %i.bh
  %.090 = select i1 %i.bg, float %i.bi, float %i.ax
  %.089 = select i1 %i.bg, float %i.bj, float %i.az
  %i.bk = fcmp olt float %i.av, 0.000000e+00
  %or.cond = and i1 %i.bk, %i.bf
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZL16rcVsafeNormalizePf.exit102
  %i.bl = add nsw i32 %.094124, 2                 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, %4
  br i1 %i.bm, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = fmul float %.sroa.13.0, %.sroa.14.0
  %i.bo = tail call float @llvm.fmuladd.f32(float %.sroa.0112.0, float %.sroa.0.0, float %i.bn)
  %i.bp = fsub float 1.000000e+00, %i.bo
  %i.bq = fmul float %i.bp, 5.000000e-01          ; 4 uses
  %i.br = load float, ptr %i.i, align 4, !tbaa !75
  %i.bs = tail call float @llvm.fmuladd.f32(float %.sroa.0112.0, float %i.bq, float %.sroa.13.0)
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %2, float %i.br)
  %i.bu = mul nsw i32 %.094124, 3                 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bv ; 3 uses
  store float %i.bt, ptr %i.bw, align 4, !tbaa !75
  %i.bx = load float, ptr %i.q, align 4, !tbaa !75
  %i.by = getelementptr i8, ptr %i.bw, i64 4
  store float %i.bx, ptr %i.by, align 4, !tbaa !75
  %i.bz = load float, ptr %i.r, align 4, !tbaa !75
  %i.ca = fneg float %.sroa.0112.0
  %i.cb = tail call float @llvm.fmuladd.f32(float %.sroa.13.0, float %i.bq, float %i.ca)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %2, float %i.bz)
  %i.cd = getelementptr i8, ptr %i.bw, i64 8
  store float %i.cc, ptr %i.cd, align 4, !tbaa !75
  %i.ce = load float, ptr %i.i, align 4, !tbaa !75
  %i.cf = fneg float %.sroa.0.0                   ; 2 uses
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.bq, float %.sroa.14.0)
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %2, float %i.ce)
  %i.ci = add i32 %i.bu, 3
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cj ; 2 uses
  store float %i.ch, ptr %i.ck, align 4, !tbaa !75
  %i.cl = load float, ptr %i.q, align 4, !tbaa !75
  %i.cm = getelementptr i8, ptr %i.ck, i64 4
  store float %i.cl, ptr %i.cm, align 4, !tbaa !75
  %i.cn = load float, ptr %i.r, align 4, !tbaa !75
  %i.co = tail call float @llvm.fmuladd.f32(float %i.at, float %i.bq, float %i.cf)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %2, float %i.cn)
  br label %bb.i

bb.g:                                             ; preds = %_ZL16rcVsafeNormalizePf.exit102
  %.not = icmp slt i32 %.094124, %4
  br i1 %.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.cq = add nsw i32 %.094124, 1
  %i.cr = load float, ptr %i.i, align 4, !tbaa !75
  %i.cs = fneg float %.090
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %2, float %i.cr)
  %i.cu = mul nsw i32 %.094124, 3
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cv ; 2 uses
  store float %i.ct, ptr %i.cw, align 4, !tbaa !75
  %i.cx = load float, ptr %i.q, align 4, !tbaa !75
  %i.cy = getelementptr i8, ptr %i.cw, i64 4
  store float %i.cx, ptr %i.cy, align 4, !tbaa !75
  %i.cz = load float, ptr %i.r, align 4, !tbaa !75
  %i.da = fneg float %.089
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %2, float %i.cz)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.dc = phi i64 [ %i.cj, %bb.f ], [ %i.cv, %bb.h ]
  %.sink = phi float [ %i.cp, %bb.f ], [ %i.db, %bb.h ]
  %.296 = phi i32 [ %i.bl, %bb.f ], [ %i.cq, %bb.h ] ; 2 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  store float %.sink, ptr %i.de, align 4, !tbaa !75
  br i1 %.not136, label %.thread, label %bb.b

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
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
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
  %6 = load <4 x float>, ptr %i.r, align 4
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bw = trunc nuw nsw i64 %indvars.iv125 to i32
  %i.bx = uitofp nneg i32 %i.bw to float
  %i.by = fadd float %i.bx, 5.000000e-01
  %8 = load <4 x float>, ptr %i.s, align 4
  %i.bz = load float, ptr %i.t, align 4, !tbaa !75
  %i.ca = load float, ptr %1, align 4, !tbaa !75
  %i.cb = load float, ptr %i.n, align 4, !tbaa !75
  %i.cc = insertelement <2 x float> %i.bq, float %i.by, i64 0
  %i.cd = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x float> %7, float %i.bz, i64 1
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.cd, <2 x float> %i.ce)
  %i.cg = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.cb, i64 1
  %i.ci = fsub <2 x float> %i.cf, %i.ch           ; 2 uses
  %i.cj = fmul <2 x float> %i.ci, %i.ci
  %i.ck = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cj)
  %i.cl = fcmp ult float %i.ck, %i.bd
  %i.cm = icmp ne i32 %i.bv, 0
  %or.cond123 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond123, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.cn = and i32 %i.bu, 16777215
  %i.co = add nuw nsw i32 %i.cn, %i.bv
  %i.cp = and i32 %i.bu, 16777215
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = zext nneg i32 %i.co to i64
  %.pre133 = load ptr, ptr %i.bf, align 8, !tbaa !71
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.cs = phi ptr [ %.pre133, %.lr.ph.preheader ], [ %i.da, %bb.g ] ; 3 uses
  %indvars.iv = phi i64 [ %i.cq, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !72
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.cw = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv
  %i.cy = load i16, ptr %i.cx, align 4, !tbaa !77
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %.not104 = icmp slt i32 %i.cz, %i.ah
  %.not105 = icmp sgt i32 %i.cz, %i.al
  %or.cond = select i1 %.not104, i1 true, i1 %.not105
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %4, ptr %i.ct, align 1, !tbaa !72
  %.pre = load ptr, ptr %i.bf, align 8, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.lr.ph
  %i.da = phi ptr [ %i.cs, %bb.e ], [ %.pre, %bb.f ], [ %i.cs, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = icmp samesign ult i64 %indvars.iv.next, %i.cr
  br i1 %i.db, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.d
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

.loopexit116:                                     ; preds = %._crit_edge, %bb.c, %.preheader115.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.dc = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.h, label %_ZN13rcScopedTimerD2Ev.exit

bb.h:                                             ; preds = %.loopexit116
  %i.de = load ptr, ptr %0, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 15) #5, !call_target !74, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %.loopexit116, %bb.h
  ret void
}

declare noundef float @_Z6rcSqrtf(float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.uadd.sat.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcTimerLabel", file: !32, line: 39, baseType: !38, size: 32, elements: !68, identifier: "_ZTS12rcTimerLabel")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "rcContext", file: !32, line: 114, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS9rcContext")
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"short", !11, i64 0}
!16 = !{!"float", !11, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p1 _ZTS13rcCompactCell", !17, i64 0}
!19 = !{!"p1 _ZTS13rcCompactSpan", !17, i64 0}
!20 = !{!"p1 short", !17, i64 0}
!21 = !{!"p1 omnipotent char", !17, i64 0}
!22 = !{!"_ZTS20rcCompactHeightfield", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !15, i64 24, !15, i64 26, !11, i64 28, !11, i64 40, !16, i64 52, !16, i64 56, !18, i64 64, !19, i64 72, !20, i64 80, !21, i64 88}
!23 = !{!22, !12, i64 0}
!24 = !{!22, !12, i64 4}
!25 = !{!"bool", !11, i64 0}
!26 = !{!"_ZTS9rcContext", !25, i64 8, !25, i64 9}
!27 = !{!26, !25, i64 9}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!"vtable pointer", !10, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !DIFile(filename: "Recast/Include/Recast.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "a4a30d1b276324b9005ba15d2d361d90")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !0)
!35 = !{null, !33, !34}
!36 = !DISubroutineType(types: !35)
!37 = !DISubprogram(name: "doStartTimer", linkageName: "_ZN9rcContext12doStartTimerE12rcTimerLabel", scope: !1, file: !32, line: 176, type: !36, scopeLine: 176, containingType: !1, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIEnumerator(name: "RC_TIMER_TOTAL", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "RC_TIMER_TEMP", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "RC_TIMER_RASTERIZE_TRIANGLES", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "RC_TIMER_BUILD_COMPACTHEIGHTFIELD", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS", value: 4, isUnsigned: true)
!44 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_TRACE", value: 5, isUnsigned: true)
!45 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_SIMPLIFY", value: 6, isUnsigned: true)
!46 = !DIEnumerator(name: "RC_TIMER_FILTER_BORDER", value: 7, isUnsigned: true)
!47 = !DIEnumerator(name: "RC_TIMER_FILTER_WALKABLE", value: 8, isUnsigned: true)
!48 = !DIEnumerator(name: "RC_TIMER_MEDIAN_AREA", value: 9, isUnsigned: true)
!49 = !DIEnumerator(name: "RC_TIMER_FILTER_LOW_OBSTACLES", value: 10, isUnsigned: true)
!50 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESH", value: 11, isUnsigned: true)
!51 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESH", value: 12, isUnsigned: true)
!52 = !DIEnumerator(name: "RC_TIMER_ERODE_AREA", value: 13, isUnsigned: true)
!53 = !DIEnumerator(name: "RC_TIMER_MARK_BOX_AREA", value: 14, isUnsigned: true)
!54 = !DIEnumerator(name: "RC_TIMER_MARK_CYLINDER_AREA", value: 15, isUnsigned: true)
!55 = !DIEnumerator(name: "RC_TIMER_MARK_CONVEXPOLY_AREA", value: 16, isUnsigned: true)
!56 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD", value: 17, isUnsigned: true)
!57 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_DIST", value: 18, isUnsigned: true)
!58 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_BLUR", value: 19, isUnsigned: true)
!59 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS", value: 20, isUnsigned: true)
!60 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_WATERSHED", value: 21, isUnsigned: true)
!61 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_EXPAND", value: 22, isUnsigned: true)
!62 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FLOOD", value: 23, isUnsigned: true)
!63 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FILTER", value: 24, isUnsigned: true)
!64 = !DIEnumerator(name: "RC_TIMER_BUILD_LAYERS", value: 25, isUnsigned: true)
!65 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESHDETAIL", value: 26, isUnsigned: true)
!66 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESHDETAIL", value: 27, isUnsigned: true)
!67 = !DIEnumerator(name: "RC_MAX_TIMERS", value: 28, isUnsigned: true)
!68 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!69 = !{!22, !12, i64 8}
!70 = !{!22, !18, i64 64}
!71 = !{!22, !21, i64 88}
!72 = !{!11, !11, i64 0}
!73 = !{!22, !19, i64 72}
!74 = !DISubprogram(name: "doStopTimer", linkageName: "_ZN9rcContext11doStopTimerE12rcTimerLabel", scope: !1, file: !32, line: 180, type: !36, scopeLine: 180, containingType: !1, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!75 = !{!16, !16, i64 0}
!76 = !{!"_ZTS13rcCompactSpan", !15, i64 0, !15, i64 2, !12, i64 4, !12, i64 7}
!77 = !{!76, !15, i64 0}
end_hunk_0
