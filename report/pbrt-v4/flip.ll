Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/flip?download=true
inline.NumInlined: 376
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11flip_detail5image21generateSpatialFilterEf:bb.a
  %i.bq = fadd <2 x float> %i.am, %i.bi           ; 5 uses
  %i.br = fadd float %.sroa.10.184, %i.bo         ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count112
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !36

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge102
  %indvars.iv120 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next121, %._crit_edge102 ] ; 2 uses
  %i.bs = mul nsw i64 %indvars.iv120, %i.ad
  %i.bt = getelementptr [12 x i8], ptr %i.ab, i64 %i.bs ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader
  %indvars.iv114.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 5 uses
  %i.bu = getelementptr [12 x i8], ptr %i.bt, i64 %index ; 4 uses
  %i.bv = getelementptr [12 x i8], ptr %i.bt, i64 %index ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 12
  %i.bx = getelementptr [12 x i8], ptr %i.bt, i64 %index ; 3 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 24
  %i.bz = getelementptr [12 x i8], ptr %i.bt, i64 %index ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 36
  %i.cb = load float, ptr %i.bu, align 4, !tbaa !15
  %i.cc = load float, ptr %i.bw, align 4, !tbaa !15
  %i.cd = load float, ptr %i.by, align 4, !tbaa !15
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !15
  %i.cf = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.ck = getelementptr i8, ptr %i.bv, i64 16
  %i.cl = getelementptr i8, ptr %i.bx, i64 28
  %i.cm = getelementptr i8, ptr %i.bz, i64 40
  %i.cn = load float, ptr %i.cj, align 4, !tbaa !15
  %i.co = load float, ptr %i.ck, align 4, !tbaa !15
  %i.cp = load float, ptr %i.cl, align 4, !tbaa !15
  %i.cq = load float, ptr %i.cm, align 4, !tbaa !15
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cw = getelementptr i8, ptr %i.bv, i64 20
  %i.cx = getelementptr i8, ptr %i.bx, i64 32
  %i.cy = getelementptr i8, ptr %i.bz, i64 44
  %i.cz = load float, ptr %i.cv, align 4, !tbaa !15
  %i.da = load float, ptr %i.cw, align 4, !tbaa !15
  %i.db = load float, ptr %i.cx, align 4, !tbaa !15
  %i.dc = load float, ptr %i.cy, align 4, !tbaa !15
  %i.dd = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 1
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 2
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 3
  %i.dh = fdiv <4 x float> %i.ci, %broadcast.splat
  %i.di = fdiv <4 x float> %i.cu, %broadcast.splat137
  %i.dj = fdiv <4 x float> %i.dg, %broadcast.splat139
  %i.dk = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dl = shufflevector <4 x float> %i.dj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.dk, <8 x float> %i.dl, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.bu, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %scalar.ph.preheader, label %vector.body, !llvm.loop !37

._crit_edge105.split:                             ; preds = %._crit_edge102, %_ZN11flip_detail5image8allocateEii.exit
  ret void

._crit_edge102:                                   ; preds = %scalar.ph
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge105.split, label %.preheader, !llvm.loop !38

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %scalar.ph ], [ %indvars.iv114.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dn = getelementptr [12 x i8], ptr %i.bt, i64 %indvars.iv114 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15
  %i.do = fdiv float %.sroa.5.0.copyload, %i.br
  %i.dp = load <2 x float>, ptr %i.dn, align 4, !tbaa !15
  %i.dq = fdiv <2 x float> %i.dp, %i.bq
  store <2 x float> %i.dq, ptr %i.dn, align 4, !tbaa !15
  store float %i.do, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count123
  br i1 %exitcond119.not, label %._crit_edge102, label %scalar.ph, !llvm.loop !39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11flip_detail5image8convolveERS0_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !23     ; 3 uses
  %i.b = sdiv i32 %i.a, 2                         ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %i.e = sdiv i32 %i.d, 2                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24   ; 5 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge100

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = load i32, ptr %0, align 8, !tbaa !23     ; 7 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = sub nsw i32 0, %i.e
  %i.l = add nsw i32 %i.g, -1
  %i.m = sub nsw i32 0, %i.b
  %.not3671 = icmp slt i32 %i.a, -1
  %i.n = add nsw i32 %i.i, -1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8
  %i.t = load i32, ptr %1, align 8
  %i.u = load ptr, ptr %i.p, align 8
  br i1 %i.j, label %.preheader.lr.ph.split.us, label %._crit_edge100

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %.not78 = icmp slt i32 %i.d, -1
  br i1 %.not78, label %.preheader.us.us.preheader, label %.preheader.lr.ph.split.us.split

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %i.v = zext nneg i32 %i.i to i64
  %i.w = zext nneg i32 %i.g to i64
  %i.x = mul nuw nsw i64 %i.v, %i.w
  %i.y = mul i64 %i.x, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.y, i1 false), !tbaa !15
  br label %._crit_edge100

.preheader.lr.ph.split.us.split:                  ; preds = %.preheader.lr.ph.split.us
  br i1 %.not3671, label %.preheader.us.us109.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us.split
  %i.z = zext i32 %i.m to i64
  %smax = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true)
  %i.aa = add nuw nsw i32 %smax, 1
  %smax117 = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true)
  %i.ab = zext nneg i32 %i.i to i64
  %wide.trip.count126 = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.preheader.us

.preheader.us.us109.preheader:                    ; preds = %.preheader.lr.ph.split.us.split
  %i.ac = zext nneg i32 %i.i to i64               ; 4 uses
  %wide.trip.count136 = zext nneg i32 %i.g to i64
  %min.iters.check = icmp ult i32 %i.i, 4
  %n.vec = and i64 %i.ac, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br label %.preheader.us.us109

.preheader.us.us109:                              ; preds = %.preheader.us.us109.preheader, %._crit_edge93.split.split.us.us.us
  %indvars.iv133 = phi i64 [ 0, %.preheader.us.us109.preheader ], [ %indvars.iv.next134, %._crit_edge93.split.split.us.us.us ] ; 2 uses
  %i.ad = mul nuw nsw i64 %indvars.iv133, %i.ac
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.ad ; 3 uses
  br i1 %min.iters.check, label %.lr.ph84.us.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us109, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us109 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %index
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store <6 x float> zeroinitializer, ptr %i.af, align 4, !tbaa !15
  store <6 x float> zeroinitializer, ptr %i.ah, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge93.split.split.us.us.us, label %.lr.ph84.us.us.us.preheader

.lr.ph84.us.us.us.preheader:                      ; preds = %.preheader.us.us109, %middle.block
  %indvars.iv128.ph = phi i64 [ 0, %.preheader.us.us109 ], [ %n.vec, %middle.block ]
  br label %.lr.ph84.us.us.us

.lr.ph84.us.us.us:                                ; preds = %.lr.ph84.us.us.us.preheader, %.lr.ph84.us.us.us
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %.lr.ph84.us.us.us ], [ %indvars.iv128.ph, %.lr.ph84.us.us.us.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %indvars.iv128 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.aj, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx43.us96.us.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx43.us96.us.us, align 4, !tbaa !15
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %i.ac
  br i1 %exitcond132.not, label %._crit_edge93.split.split.us.us.us, label %.lr.ph84.us.us.us, !llvm.loop !41

._crit_edge93.split.split.us.us.us:               ; preds = %.lr.ph84.us.us.us, %middle.block
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge100, label %.preheader.us.us109, !llvm.loop !42

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge93.split.split.us105
  %indvars.iv123 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next124, %._crit_edge93.split.split.us105 ] ; 3 uses
  %i.ak = mul nuw nsw i64 %indvars.iv123, %i.ab
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.ak
  %i.am = trunc nuw nsw i64 %indvars.iv123 to i32
  br label %.lr.ph84.us101

.lr.ph84.us101:                                   ; preds = %._crit_edge85.split.us, %.preheader.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %._crit_edge85.split.us ], [ 0, %.preheader.us ] ; 3 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph84.us101
  %.03282.us = phi i32 [ %i.k, %.lr.ph84.us101 ], [ %i.bh, %._crit_edge.us ] ; 4 uses
  %.sroa.10.081.us = phi float [ 0.000000e+00, %.lr.ph84.us101 ], [ %i.bg, %._crit_edge.us ]
  %i.an = phi <2 x float> [ zeroinitializer, %.lr.ph84.us101 ], [ %i.bf, %._crit_edge.us ]
  %i.ao = add nsw i32 %.03282.us, %i.am
  %.sroa.speculated60.us = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %.sroa.speculated56.us = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %.sroa.speculated60.us)
  %i.ap = add nsw i32 %.03282.us, %i.e
  %i.aq = mul nsw i32 %i.ap, %i.a
  %i.ar = add i32 %i.aq, %i.b
  %i.as = mul nsw i32 %i.t, %.sroa.speculated56.us
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.z, %.lr.ph.us ] ; 3 uses
  %.sroa.10.174.us = phi float [ %i.bg, %bb.b ], [ %.sroa.10.081.us, %.lr.ph.us ]
  %i.at = phi <2 x float> [ %i.bf, %bb.b ], [ %i.an, %.lr.ph.us ]
  %i.au = add i64 %indvars.iv, %indvars.iv119
  %i.av = trunc i64 %i.au to i32
  %.sroa.speculated49.us = tail call i32 @llvm.smax.i32(i32 %i.av, i32 0)
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.sroa.speculated49.us)
  %i.aw = trunc i64 %indvars.iv to i32
  %i.ax = add i32 %i.ar, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %i.ay ; 2 uses
  %.sroa.53.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.53.0.copyload.us = load float, ptr %.sroa.53.0..sroa_idx.us, align 4, !tbaa !15
  %i.ba = add nsw i32 %i.as, %.sroa.speculated.us
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.bb ; 2 uses
  %i.bd = load <2 x float>, ptr %i.az, align 4, !tbaa !15
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.5.0.copyload.us = load float, ptr %.sroa.5.0..sroa_idx.us, align 4, !tbaa !15
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %i.at) ; 3 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %.sroa.53.0.copyload.us, float %.sroa.5.0.copyload.us, float %.sroa.10.174.us) ; 3 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !43

._crit_edge.us:                                   ; preds = %bb.b
  %i.bh = add i32 %.03282.us, 1
  %exitcond118.not = icmp eq i32 %.03282.us, %smax117
  br i1 %exitcond118.not, label %._crit_edge85.split.us, label %.lr.ph.us, !llvm.loop !44

._crit_edge85.split.us:                           ; preds = %._crit_edge.us
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %indvars.iv119 ; 2 uses
  store <2 x float> %i.bf, ptr %i.bi, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx43.us104 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float %i.bg, ptr %.sroa.5.0..sroa_idx43.us104, align 4, !tbaa !15
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count
  br i1 %exitcond122.not, label %._crit_edge93.split.split.us105, label %.lr.ph84.us101, !llvm.loop !45

._crit_edge93.split.split.us105:                  ; preds = %._crit_edge85.split.us
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge100, label %.preheader.us, !llvm.loop !42

._crit_edge100:                                   ; preds = %._crit_edge93.split.split.us105, %._crit_edge93.split.split.us.us.us, %.preheader.lr.ph, %.preheader.us.us.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11flip_detail5image14huntAdjustmentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.d
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.09.013 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load float, ptr %.sroa.09.013, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 4 ; 2 uses
  %i.g = fmul float %i.e, f0x3C23D70A
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !15
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.j, %i.h
  store <2 x float> %i.k, ptr %i.f, align 4, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flip_detail5image10preprocessERS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.flip_detail::image", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = load i64, ptr %0, align 8
  store i64 %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.i, 12
  %i.k = icmp ugt i64 %i.j, 768614336404564650
  br i1 %i.k, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i, !prof !31

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #19
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !30
  %.pre32 = load ptr, ptr %i.d, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ %i.e, %bb.a ], [ %.pre32, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.o = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i.i, label %_ZN11flip_detail5imageC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !33
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZN11flip_detail5imageC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN11flip_detail5imageC2ERKS0_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.t, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.p, align 8, !tbaa !25
  call void @_ZN11flip_detail5image8convolveERS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !30   ; 3 uses
  %.not30 = icmp eq ptr %i.u, %i.v
  br i1 %.not30, label %_ZN11flip_detail5image14huntAdjustmentEv.exit, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.u, %bb.l ] ; 3 uses
  %i.w = load float, ptr %.sroa.09.013.i, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 4 ; 2 uses
  %i.y = fmul float %i.w, f0x3C23D70A
  %i.z = load <2 x float>, ptr %i.x, align 4, !tbaa !15
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.ab, %i.z
  store <2 x float> %i.ac, ptr %i.x, align 4, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.v
  br i1 %.not.i, label %_ZN11flip_detail5image14huntAdjustmentEv.exit, label %.lr.ph.i

.lr.ph:                                           ; preds = %_ZN11flip_detail5imageC2ERKS0_.exit, %bb.l
  %.sroa.027.031 = phi ptr [ %i.cx, %bb.l ], [ %i.u, %_ZN11flip_detail5imageC2ERKS0_.exit ] ; 6 uses
  %.sroa.0.0.copyload.i = load float, ptr %.sroa.027.031, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.027.031, i64 4 ; 3 uses
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.027.031, i64 8
  %i.ae = fdiv float %.sroa.4.0.copyload.i, 5.000000e+02
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !15
  %i.af = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %.sroa.5.0.copyload.i, i64 1
  %i.ah = fadd <2 x float> %i.ag, <float 1.600000e+01, float -0.000000e+00>
  %i.ai = fdiv <2 x float> %i.ah, <float 1.160000e+02, float 2.000000e+02> ; 4 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.ak = fmul float %i.aj, f0xBE50E850
  %i.al = fadd float %i.aj, %i.ae
  %shift = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.ai, %shift
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.an = fmul float %i.al, f0x3F734F49           ; 2 uses
  %i.ao = fmul float %i.am, f0x3F8B6116           ; 2 uses
  %i.ap = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, <float 1.875930e+00, float f0xBFC4C97D>
  %i.ar = insertelement <2 x float> poison, float %i.an, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> <float f0xBF781F15, float f0x404F6C99>, <2 x float> %i.aq)
  %i.au = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> <float f0x3D2A34C4, float f0xBEFF4A95>, <2 x float> %i.at) ; 3 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
end_hunk_0
