Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btBoxBoxDetector?download=true
inline.NumInlined: 302
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_Z11cullPoints2iPfiiPi:bb.a
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge129, label %.lr.ph128, !llvm.loop !21

._crit_edge129:                                   ; preds = %.lr.ph128, %middle.block, %._crit_edge125.thread
  %i.ce = phi i1 [ false, %._crit_edge125.thread ], [ true, %middle.block ], [ true, %.lr.ph128 ]
  %i.cf = sext i32 %3 to i64                      ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cf
  store i32 0, ptr %i.cg, align 4, !tbaa !4
  store i32 %3, ptr %4, align 4, !tbaa !4
  %i.ch = icmp sgt i32 %2, 1
  br i1 %i.ch, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %._crit_edge129
  %.0108135 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.ci = uitofp nneg i32 %2 to float
  %i.cj = fdiv float f0x40C90FDB, %i.ci
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cf
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !16
  br i1 %i.ce, label %.lr.ph133.us.preheader, label %.lr.ph139.split.preheader

.lr.ph139.split.preheader:                        ; preds = %.lr.ph139
  %i.cm = add nsw i32 %2, -1
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %min.iters.check178 = icmp ult i32 %2, 9
  br i1 %min.iters.check178, label %.lr.ph139.split.preheader188, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph139.split.preheader
  %n.vec180 = and i64 %i.cn, 4294967288           ; 4 uses
  %i.co = shl nuw nsw i64 %n.vec180, 2
  %i.cp = getelementptr i8, ptr %.0108135, i64 %i.co
  %i.cq = trunc nuw i64 %n.vec180 to i32
  %i.cr = or disjoint i32 %i.cq, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next183, %vector.body181 ] ; 2 uses
  %i.cs = shl i64 %index182, 2
  %next.gep = getelementptr i8, ptr %.0108135, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.ct, align 4, !tbaa !4
  %index.next183 = add nuw i64 %index182, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next183, %n.vec180
  br i1 %i.cu, label %middle.block184, label %vector.body181, !llvm.loop !22

middle.block184:                                  ; preds = %vector.body181
  %cmp.n185 = icmp eq i64 %n.vec180, %i.cn
  br i1 %cmp.n185, label %._crit_edge140, label %.lr.ph139.split.preheader188

.lr.ph139.split.preheader188:                     ; preds = %.lr.ph139.split.preheader, %middle.block184
  %.0108137.ph = phi ptr [ %.0108135, %.lr.ph139.split.preheader ], [ %i.cp, %middle.block184 ]
  %.0104136.ph = phi i32 [ 1, %.lr.ph139.split.preheader ], [ %i.cr, %middle.block184 ]
  br label %.lr.ph139.split

.lr.ph133.us.preheader:                           ; preds = %.lr.ph139
  %wide.trip.count159 = zext nneg i32 %0 to i64
  br label %.lr.ph133.us

.lr.ph133.us:                                     ; preds = %.lr.ph133.us.preheader, %._crit_edge134.us
  %.0108137.us = phi ptr [ %.0108.us, %._crit_edge134.us ], [ %.0108135, %.lr.ph133.us.preheader ] ; 3 uses
  %.0104136.us = phi i32 [ %i.dn, %._crit_edge134.us ], [ 1, %.lr.ph133.us.preheader ] ; 2 uses
  %i.cv = uitofp nneg i32 %.0104136.us to float
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cj, float %i.cl) ; 3 uses
  %i.cx = fcmp ogt float %i.cw, f0x40490FDB
  %i.cy = fadd float %i.cw, f0xC0C90FDB
  %.2.us = select i1 %i.cx, float %i.cy, float %i.cw
  store i32 %3, ptr %.0108137.us, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph133.us, %bb.g
  %i.cz = phi i32 [ %3, %.lr.ph133.us ], [ %i.dk, %bb.g ] ; 2 uses
  %indvars.iv156 = phi i64 [ 0, %.lr.ph133.us ], [ %indvars.iv.next157, %bb.g ] ; 4 uses
  %.097131.us = phi float [ 1.000000e+09, %.lr.ph133.us ], [ %.1.us, %bb.g ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv156
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  %.not.us = icmp eq i32 %i.db, 0
  br i1 %.not.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv156
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !16
  %i.de = fsub float %i.dd, %.2.us
  %i.df = tail call noundef float @llvm.fabs.f32(float %i.de) ; 3 uses
  %i.dg = fcmp ogt float %i.df, f0x40490FDB
  %i.dh = fsub float f0x40C90FDB, %i.df
  %.0.us = select i1 %i.dg, float %i.dh, float %i.df ; 2 uses
  %i.di = fcmp olt float %.0.us, %.097131.us
  br i1 %i.di, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dj = trunc nuw nsw i64 %indvars.iv156 to i32 ; 2 uses
  store i32 %i.dj, ptr %.0108137.us, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.dk = phi i32 [ %i.dj, %bb.f ], [ %i.cz, %bb.e ], [ %i.cz, %bb.d ] ; 2 uses
  %.1.us = phi float [ %.0.us, %bb.f ], [ %.097131.us, %bb.e ], [ %.097131.us, %bb.d ]
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge134.us, label %bb.d

._crit_edge134.us:                                ; preds = %bb.g
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dl
  store i32 0, ptr %i.dm, align 4, !tbaa !4
  %i.dn = add nuw nsw i32 %.0104136.us, 1         ; 2 uses
  %.0108.us = getelementptr inbounds nuw i8, ptr %.0108137.us, i64 4
  %exitcond161.not = icmp eq i32 %i.dn, %2
  br i1 %exitcond161.not, label %._crit_edge140, label %.lr.ph133.us

.lr.ph139.split:                                  ; preds = %.lr.ph139.split.preheader188, %.lr.ph139.split
  %.0108137 = phi ptr [ %.0108, %.lr.ph139.split ], [ %.0108137.ph, %.lr.ph139.split.preheader188 ] ; 2 uses
  %.0104136 = phi i32 [ %i.do, %.lr.ph139.split ], [ %.0104136.ph, %.lr.ph139.split.preheader188 ]
  store i32 %3, ptr %.0108137, align 4, !tbaa !4
  %i.do = add nuw nsw i32 %.0104136, 1            ; 2 uses
  %.0108 = getelementptr inbounds nuw i8, ptr %.0108137, i64 4
  %exitcond155.not = icmp eq i32 %i.do, %2
  br i1 %exitcond155.not, label %._crit_edge140, label %.lr.ph139.split, !llvm.loop !23

._crit_edge140:                                   ; preds = %.lr.ph139.split, %._crit_edge134.us, %middle.block184, %._crit_edge129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef readonly %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, i32 noundef %9, ptr nofree readnone captures(none) %10, i32 %11, ptr noundef nonnull align 8 dereferenceable(8) %12) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  %13 = alloca %class.btVector3, align 8          ; 7 uses
  %14 = alloca %class.btVector3, align 8          ; 9 uses
  %i.c = alloca float, align 4                    ; 3 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %15 = alloca %class.btVector3, align 4          ; 6 uses
  %16 = alloca %class.btVector3, align 4          ; 6 uses
  %17 = alloca %class.btVector3, align 8          ; 5 uses
  %18 = alloca %class.btVector3, align 8          ; 5 uses
  %i.e = alloca [8 x float], align 16             ; 5 uses
  %i.f = alloca [2 x float], align 4              ; 5 uses
  %i.g = alloca [16 x float], align 16            ; 6 uses
  %i.h = alloca [24 x float], align 16            ; 8 uses
  %i.i = alloca [8 x float], align 16             ; 9 uses
  %19 = alloca %class.btVector3, align 8          ; 5 uses
  %20 = alloca %class.btVector3, align 8          ; 5 uses
  %i.j = alloca [8 x i32], align 16               ; 4 uses
  %21 = alloca %class.btVector3, align 8          ; 5 uses
  %22 = alloca %class.btVector3, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !16
  %i.o = fsub float %i.l, %i.n                    ; 6 uses
  %i.p = load float, ptr %1, align 4, !tbaa !16   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !16 ; 4 uses
  %i.ab = load <2 x float>, ptr %2, align 4, !tbaa !16
  %i.ac = fmul <2 x float> %i.ab, splat (float 5.000000e-01) ; 3 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 1 ; 12 uses
  %i.ae = extractelement <2 x float> %i.ac, i64 0 ; 12 uses
  store <2 x float> %i.ac, ptr %i.a, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !16
  %i.ah = fmul float %i.ag, 5.000000e-01          ; 13 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.ah, ptr %i.ai, align 8, !tbaa !16
  %i.aj = load <2 x float>, ptr %5, align 4, !tbaa !16
  %i.ak = fmul <2 x float> %i.aj, splat (float 5.000000e-01) ; 3 uses
  %i.al = extractelement <2 x float> %i.ak, i64 1 ; 12 uses
  %i.am = extractelement <2 x float> %i.ak, i64 0 ; 12 uses
  store <2 x float> %i.ak, ptr %i.b, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !16
  %i.ap = fmul float %i.ao, 5.000000e-01          ; 11 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store float %i.ap, ptr %i.aq, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ba = load <2 x float>, ptr %3, align 4, !tbaa !16 ; 2 uses
  %23 = load <2 x float>, ptr %0, align 4, !tbaa !16
  %i.bb = load float, ptr %i.q, align 4, !tbaa !16 ; 3 uses
  %i.bc = load <2 x float>, ptr %i.ar, align 4, !tbaa !16 ; 4 uses
  %i.bd = shufflevector <2 x float> %i.ba, <2 x float> %i.bc, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.be = insertelement <4 x float> %i.bd, float %i.bb, i64 2
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bg = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %24, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.bh = fsub <4 x float> %i.bf, %i.bg           ; 3 uses
  %i.bi = extractelement <4 x float> %i.bh, i64 0 ; 4 uses
  %i.bj = fmul float %i.bi, %i.bb
  %i.bk = load <2 x float>, ptr %4, align 4, !tbaa !16 ; 3 uses
  %i.bl = shufflevector <2 x float> %i.ba, <2 x float> %i.bk, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.bm = shufflevector <4 x float> %24, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bn = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !16 ; 4 uses
  %i.bq = load <2 x float>, ptr %i.t, align 4, !tbaa !16 ; 4 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bs = load <2 x float>, ptr %i.u, align 4, !tbaa !16 ; 3 uses
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.bu = load <2 x float>, ptr %i.av, align 4, !tbaa !16 ; 3 uses
  %i.bv = load float, ptr %i.az, align 4, !tbaa !16 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.au, align 4, !tbaa !16 ; 3 uses
  %i.bx = load float, ptr %i.ay, align 4, !tbaa !16 ; 2 uses
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.bl, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ca = fsub <4 x float> %i.bz, %i.bm           ; 2 uses
  %i.cb = extractelement <4 x float> %i.ca, i64 0 ; 5 uses
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.p, float %i.cb, float %i.bj)
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.o, float %i.cc) ; 8 uses
  %foldExtExtBinop = fmul <4 x float> %i.bh, %i.bt
  %i.ce = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.cf = extractelement <2 x float> %i.bq, i64 0 ; 2 uses
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cb, float %i.ce)
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.o, float %i.cg) ; 8 uses
  %i.ci = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cj = insertelement <4 x float> %i.ci, float %i.bb, i64 1
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cl = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cn = fmul <4 x float> %i.bh, %i.cm
  %i.co = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float %i.p, i64 1
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.ca, <4 x float> %i.cn) ; 4 uses
  %i.cs = extractelement <4 x float> %i.cr, i64 0
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.o, float %i.cs) ; 8 uses
  %i.cu = extractelement <4 x float> %i.cr, i64 1
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.at, float %i.cu) ; 8 uses
  %i.cw = extractelement <4 x float> %i.cr, i64 2
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.ax, float %i.cw) ; 8 uses
  %i.cy = extractelement <4 x float> %i.cr, i64 3
  %i.cz = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.bp, float %i.cy) ; 8 uses
  %i.da = shufflevector <2 x float> %i.bc, <2 x float> %i.bu, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.db = fmul <4 x float> %i.bt, %i.da
  %i.dc = shufflevector <2 x float> %i.bk, <2 x float> %i.bw, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.dc, <4 x float> %i.db) ; 4 uses
  %i.de = extractelement <4 x float> %i.dd, i64 0
  %i.df = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.at, float %i.de) ; 8 uses
  %i.dg = extractelement <4 x float> %i.dd, i64 1
  %i.dh = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.ax, float %i.dg) ; 8 uses
  %i.di = extractelement <4 x float> %i.dd, i64 2
  %i.dj = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.bp, float %i.di) ; 8 uses
  %i.dk = extractelement <4 x float> %i.dd, i64 3
  %i.dl = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.at, float %i.dk) ; 6 uses
  %i.dm = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.dn = extractelement <2 x float> %i.bu, i64 0 ; 2 uses
  %i.do = fmul float %i.dm, %i.dn
  %i.dp = extractelement <2 x float> %i.bq, i64 1 ; 3 uses
  %i.dq = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.dq, float %i.do)
  %i.ds = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.ax, float %i.dr) ; 6 uses
  %i.dt = fmul float %i.dm, %i.bv
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.bx, float %i.dt)
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.bp, float %i.du) ; 6 uses
  %i.dw = tail call noundef float @llvm.fabs.f32(float %i.cv) ; 6 uses
  %i.dx = tail call noundef float @llvm.fabs.f32(float %i.cx) ; 6 uses
  %i.dy = tail call noundef float @llvm.fabs.f32(float %i.cz) ; 6 uses
  %i.dz = tail call noundef float @llvm.fabs.f32(float %i.df) ; 6 uses
  %i.ea = tail call noundef float @llvm.fabs.f32(float %i.dh) ; 6 uses
  %i.eb = tail call noundef float @llvm.fabs.f32(float %i.dj) ; 6 uses
  %i.ec = tail call noundef float @llvm.fabs.f32(float %i.dl) ; 6 uses
  %i.ed = tail call noundef float @llvm.fabs.f32(float %i.ds) ; 6 uses
  %i.ee = tail call noundef float @llvm.fabs.f32(float %i.dv) ; 6 uses
  %i.ef = tail call noundef float @llvm.fabs.f32(float %i.cd)
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.am, float %i.dw, float %i.ae)
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.al, float %i.dx, float %i.eg)
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.dy, float %i.eh)
  %i.ej = fsub float %i.ef, %i.ei                 ; 3 uses
  %i.ek = fcmp ogt float %i.ej, 0.000000e+00
  br i1 %i.ek, label %bb.cf, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.el = fcmp ogt float %i.ej, f0xFF7FFFFF
  br i1 %i.el, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.em = fcmp olt float %i.cd, 0.000000e+00
  %i.en = zext i1 %i.em to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0672 = phi float [ %i.ej, %bb.c ], [ f0xFF7FFFFF, %bb.b ] ; 2 uses
  %.0638 = phi i32 [ %i.en, %bb.c ], [ 0, %bb.b ]
  %.0623 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.0608 = phi ptr [ %1, %bb.c ], [ null, %bb.b ]
  %i.eo = tail call noundef float @llvm.fabs.f32(float %i.ch)
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.am, float %i.dz, float %i.ad)
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ea, float %i.ep)
  %i.er = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.eb, float %i.eq)
  %i.es = fsub float %i.eo, %i.er                 ; 3 uses
  %i.et = fcmp ogt float %i.es, 0.000000e+00
  br i1 %i.et, label %bb.cf, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eu = fcmp ogt float %i.es, %.0672
  br i1 %i.eu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ev = fcmp olt float %i.ch, 0.000000e+00
  %i.ew = zext i1 %i.ev to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1673 = phi float [ %i.es, %bb.f ], [ %.0672, %bb.e ] ; 2 uses
  %.1639 = phi i32 [ %i.ew, %bb.f ], [ %.0638, %bb.e ]
  %.1624 = phi i32 [ 2, %bb.f ], [ %.0623, %bb.e ]
  %.1609 = phi ptr [ %i.t, %bb.f ], [ %.0608, %bb.e ]
  %i.ex = tail call noundef float @llvm.fabs.f32(float %i.ct)
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ec, float %i.ah)
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ed, float %i.ey)
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ee, float %i.ez)
  %i.fb = fsub float %i.ex, %i.fa                 ; 3 uses
  %i.fc = fcmp ogt float %i.fb, 0.000000e+00
  br i1 %i.fc, label %bb.cf, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fd = fcmp ogt float %i.fb, %.1673
  br i1 %i.fd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fe = fcmp olt float %i.ct, 0.000000e+00
  %i.ff = zext i1 %i.fe to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2674 = phi float [ %i.fb, %bb.i ], [ %.1673, %bb.h ] ; 2 uses
  %.2640 = phi i32 [ %i.ff, %bb.i ], [ %.1639, %bb.h ]
  %.2625 = phi i32 [ 3, %bb.i ], [ %.1624, %bb.h ]
  %.2610 = phi ptr [ %i.x, %bb.i ], [ %.1609, %bb.h ]
  %i.fg = extractelement <2 x float> %i.bc, i64 0
  %i.fh = fmul float %i.bi, %i.fg
  %i.fi = extractelement <2 x float> %i.bk, i64 0
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.cb, float %i.fh)
  %i.fk = tail call noundef float @llvm.fmuladd.f32(float %i.at, float %i.o, float %i.fj) ; 2 uses
  %i.fl = tail call noundef float @llvm.fabs.f32(float %i.fk)
  %i.fm = fmul float %i.ad, %i.dz
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.dw, float %i.fm)
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ec, float %i.fn)
  %i.fp = fadd float %i.am, %i.fo
  %i.fq = fsub float %i.fl, %i.fp                 ; 3 uses
  %i.fr = fcmp ogt float %i.fq, 0.000000e+00
  br i1 %i.fr, label %bb.cf, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fs = fcmp ogt float %i.fq, %.2674
  br i1 %i.fs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ft = fcmp olt float %i.fk, 0.000000e+00
  %i.fu = zext i1 %i.ft to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3675 = phi float [ %i.fq, %bb.l ], [ %.2674, %bb.k ] ; 2 uses
  %.3641 = phi i32 [ %i.fu, %bb.l ], [ %.2640, %bb.k ]
  %.3626 = phi i32 [ 4, %bb.l ], [ %.2625, %bb.k ]
  %.3 = phi ptr [ %4, %bb.l ], [ %.2610, %bb.k ]
  %i.fv = fmul float %i.bi, %i.dn
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.cb, float %i.fv)
  %i.fx = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.o, float %i.fw) ; 2 uses
  %i.fy = tail call noundef float @llvm.fabs.f32(float %i.fx)
  %i.fz = fmul float %i.ad, %i.ea
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.dx, float %i.fz)
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ed, float %i.ga)
  %i.gc = fadd float %i.al, %i.gb
  %i.gd = fsub float %i.fy, %i.gc                 ; 3 uses
  %i.ge = fcmp ogt float %i.gd, 0.000000e+00
  br i1 %i.ge, label %bb.cf, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gf = fcmp ogt float %i.gd, %.3675
  br i1 %i.gf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gg = fcmp olt float %i.fx, 0.000000e+00
  %i.gh = zext i1 %i.gg to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.4676 = phi float [ %i.gd, %bb.o ], [ %.3675, %bb.n ] ; 2 uses
  %.4642 = phi i32 [ %i.gh, %bb.o ], [ %.3641, %bb.n ]
  %.4627 = phi i32 [ 5, %bb.o ], [ %.3626, %bb.n ]
  %.4 = phi ptr [ %i.au, %bb.o ], [ %.3, %bb.n ]
  %i.gi = fmul float %i.bi, %i.bv
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.cb, float %i.gi)
  %i.gk = tail call noundef float @llvm.fmuladd.f32(float %i.bp, float %i.o, float %i.gj) ; 2 uses
  %i.gl = tail call noundef float @llvm.fabs.f32(float %i.gk)
  %i.gm = fmul float %i.ad, %i.eb
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.dy, float %i.gm)
  %i.go = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ee, float %i.gn)
  %i.gp = fadd float %i.ap, %i.go
  %i.gq = fsub float %i.gl, %i.gp                 ; 3 uses
end_hunk_0
