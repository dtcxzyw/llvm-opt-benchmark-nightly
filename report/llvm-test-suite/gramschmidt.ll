inline.NumInlined: 10
inline.NumDeleted: 4
begin_hunk_0_@polybench_alloc_data:bb.a
xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 9600000) #13
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10   ; 8 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.j = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.k = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 11520000) #13
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !10   ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = icmp ne i32 %i.k, 0
  %or.cond.i.i17 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i.i17, label %bb.c, label %polybench_alloc_data.exit18

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.p = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.o) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit18:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.q = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 9600000) #13
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !10   ; 9 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = icmp ne i32 %i.q, 0
  %or.cond.i.i19 = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i19, label %bb.d, label %polybench_alloc_data.exit20

bb.d:                                             ; preds = %polybench_alloc_data.exit18
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.v = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.u) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit20:                      ; preds = %polybench_alloc_data.exit18
  %i.w = ptrtoaddr ptr %i.r to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.x = sub i64 %i.w, %i.f
  %diff.check = icmp ult i64 %i.x, 16
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %middle.block, %polybench_alloc_data.exit20
  %indvars.iv35.i = phi i64 [ 0, %polybench_alloc_data.exit20 ], [ %indvars.iv.next36.i, %middle.block ] ; 5 uses
  %i.y = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv35.i ; 2 uses
  %i.z = getelementptr inbounds nuw [9600 x i8], ptr %i.r, i64 %indvars.iv35.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader29.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv35.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.aa = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.ab = trunc nuw nsw <2 x i64> %i.aa to <2 x i32>
  %i.ac = urem <2 x i32> %i.ab, splat (i32 1000)
  %i.ad = uitofp nneg <2 x i32> %i.ac to <2 x double>
  %i.ae = fdiv nnan <2 x double> %i.ad, splat (double 1.000000e+03)
  %i.af = fmul nnan <2 x double> %i.ae, splat (double 1.000000e+02)
  %i.ag = fadd <2 x double> %i.af, splat (double 1.000000e+01)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index
  store <2 x double> %i.ag, ptr %i.ah, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index
  store <2 x double> zeroinitializer, ptr %i.ai, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.aj = icmp eq i64 %index.next, 1200
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !14

scalar.ph:                                        ; preds = %.preheader29.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader29.i ] ; 4 uses
  %i.ak = mul nuw nsw i64 %indvars.iv.i, %indvars.iv35.i
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = urem i32 %i.al, 1000
  %i.an = uitofp nneg i32 %i.am to double
  %i.ao = fdiv nnan double %i.an, 1.000000e+03
  %i.ap = fmul nnan double %i.ao, 1.000000e+02
  %i.aq = fadd double %i.ap, 1.000000e+01
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  store double %i.aq, ptr %i.ar, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i
  store double 0.000000e+00, ptr %i.as, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1200
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !18

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next36.i, 1000
  br i1 %exitcond38.not.i, label %init_array.exit, label %.preheader29.i, !llvm.loop !19

init_array.exit:                                  ; preds = %middle.block
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11520000) %i.l, i8 0, i64 11520000, i1 false), !tbaa !8
  %scevgep = getelementptr i8, ptr %i.r, i64 9600000 ; 2 uses
  %scevgep27 = getelementptr i8, ptr %i.e, i64 9600000
  %scevgep28 = getelementptr i8, ptr %i.l, i64 11520000
  %bound0 = icmp ult ptr %i.r, %scevgep27
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound029 = icmp ult ptr %i.r, %scevgep28
  %bound130 = icmp ult ptr %i.l, %scevgep
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx = or i1 %found.conflict, %found.conflict31
  br label %.preheader67.i

.loopexit.i:                                      ; preds = %bb.g, %middle.block39
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 1200
  br i1 %exitcond109.not.i, label %kernel_gramschmidt.exit, label %.preheader67.i, !llvm.loop !20

.preheader67.i:                                   ; preds = %.loopexit.i, %init_array.exit
  %indvars.iv106.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next107.i, %.loopexit.i ] ; 6 uses
  %indvars.iv100.i = phi i64 [ 1, %init_array.exit ], [ %indvars.iv.next101.i, %.loopexit.i ] ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv106.i ; 9 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader67.i
  %indvars.iv.i21 = phi i64 [ 0, %.preheader67.i ], [ %indvars.iv.next.i22.4, %bb.e ] ; 6 uses
  %.069.i = phi double [ 0.000000e+00, %.preheader67.i ], [ %i.bl, %bb.e ]
  %gep.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i21
  %i.at = load double, ptr %gep.i, align 8, !tbaa !8 ; 2 uses
  %i.au = fmul double %i.at, %i.at
  %i.av = fadd double %.069.i, %i.au
  %i.aw = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i21
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.aw, i64 9600
  %i.ax = load double, ptr %gep.i.1, align 8, !tbaa !8 ; 2 uses
  %i.ay = fmul double %i.ax, %i.ax
  %i.az = fadd double %i.av, %i.ay
  %i.ba = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i21
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %i.ba, i64 19200
  %i.bb = load double, ptr %gep.i.2, align 8, !tbaa !8 ; 2 uses
  %i.bc = fmul double %i.bb, %i.bb
  %i.bd = fadd double %i.az, %i.bc
  %i.be = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i21
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %i.be, i64 28800
  %i.bf = load double, ptr %gep.i.3, align 8, !tbaa !8 ; 2 uses
  %i.bg = fmul double %i.bf, %i.bf
  %i.bh = fadd double %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i21
  %gep.i.4 = getelementptr inbounds nuw i8, ptr %i.bi, i64 38400
  %i.bj = load double, ptr %gep.i.4, align 8, !tbaa !8 ; 2 uses
  %i.bk = fmul double %i.bj, %i.bj
  %i.bl = fadd double %i.bh, %i.bk                ; 2 uses
  %indvars.iv.next.i22.4 = add nuw nsw i64 %indvars.iv.i21, 5 ; 2 uses
  %exitcond.not.i23.4 = icmp eq i64 %indvars.iv.next.i22.4, 1000
  br i1 %exitcond.not.i23.4, label %vector.memcheck26, label %bb.e, !llvm.loop !21

vector.memcheck26:                                ; preds = %bb.e
  %i.bm = call double @sqrt(double noundef %i.bl) #13, !tbaa !4
  %i.bn = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv106.i ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv106.i ; 4 uses
  store double %i.bm, ptr %i.bo, align 8, !tbaa !8
  %invariant.gep72.i = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv106.i ; 8 uses
  br i1 %conflict.rdx, label %scalar.ph32, label %vector.ph33

vector.ph33:                                      ; preds = %vector.memcheck26
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !8, !alias.scope !22
  %broadcast.splatinsert36 = insertelement <2 x double> poison, double %i.bp, i64 0
  %broadcast.splat37 = shufflevector <2 x double> %broadcast.splatinsert36, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph33
  %index35 = phi i64 [ 0, %vector.ph33 ], [ %index.next38, %vector.body34 ] ; 4 uses
  %i.bq = or disjoint i64 %index35, 1             ; 2 uses
  %i.br = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %index35
  %i.bs = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %i.bq
  %i.bt = load double, ptr %i.br, align 8, !tbaa !8, !alias.scope !25
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !8, !alias.scope !25
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bu, i64 1
  %i.bx = fdiv <2 x double> %i.bw, %broadcast.splat37 ; 2 uses
  %2 = extractelement <2 x double> %i.bx, i64 0
  %3 = extractelement <2 x double> %i.bx, i64 1
  %4 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %index35
  %5 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %i.bq
  store double %2, ptr %4, align 8, !tbaa !8, !alias.scope !27, !noalias !29
  store double %3, ptr %5, align 8, !tbaa !8, !alias.scope !27, !noalias !29
  %index.next38 = add nuw i64 %index35, 2         ; 2 uses
  %i.by = icmp eq i64 %index.next38, 1000
  br i1 %i.by, label %middle.block39, label %vector.body34, !llvm.loop !30

scalar.ph32:                                      ; preds = %vector.memcheck26, %scalar.ph32
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i.1, %scalar.ph32 ], [ 0, %vector.memcheck26 ] ; 4 uses
  %gep71.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv88.i
  %i.bz = load double, ptr %gep71.i, align 8, !tbaa !8
  %i.ca = load double, ptr %i.bo, align 8, !tbaa !8
  %i.cb = fdiv double %i.bz, %i.ca
  %gep73.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %indvars.iv88.i
  store double %i.cb, ptr %gep73.i, align 8, !tbaa !8
  %indvars.iv.next89.i = or disjoint i64 %indvars.iv88.i, 1 ; 2 uses
  %gep71.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next89.i
  %i.cc = load double, ptr %gep71.i.1, align 8, !tbaa !8
  %i.cd = load double, ptr %i.bo, align 8, !tbaa !8
  %i.ce = fdiv double %i.cc, %i.cd
  %gep73.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %indvars.iv.next89.i
  store double %i.ce, ptr %gep73.i.1, align 8, !tbaa !8
  %indvars.iv.next89.i.1 = add nuw nsw i64 %indvars.iv88.i, 2 ; 2 uses
  %exitcond91.not.i.1 = icmp eq i64 %indvars.iv.next89.i.1, 1000
  br i1 %exitcond91.not.i.1, label %middle.block39, label %scalar.ph32, !llvm.loop !31

middle.block39:                                   ; preds = %vector.body34, %scalar.ph32
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %i.cf = icmp samesign ult i64 %indvars.iv106.i, 1199
  br i1 %i.cf, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %middle.block39, %bb.g
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %bb.g ], [ %indvars.iv100.i, %middle.block39 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv102.i ; 5 uses
  store double 0.000000e+00, ptr %i.cg, align 8, !tbaa !8
  %invariant.gep77.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv102.i ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next93.i.1, %bb.f ] ; 4 uses
  %i.ch = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.cp, %bb.f ]
  %gep76.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %indvars.iv92.i
  %i.ci = load double, ptr %gep76.i, align 8, !tbaa !8
  %gep78.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep77.i, i64 %indvars.iv92.i
  %i.cj = load double, ptr %gep78.i, align 8, !tbaa !8
  %i.ck = fmul double %i.ci, %i.cj
  %i.cl = fadd double %i.ch, %i.ck                ; 2 uses
  store double %i.cl, ptr %i.cg, align 8, !tbaa !8
  %indvars.iv.next93.i = or disjoint i64 %indvars.iv92.i, 1 ; 2 uses
  %gep76.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %indvars.iv.next93.i
  %i.cm = load double, ptr %gep76.i.1, align 8, !tbaa !8
  %gep78.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep77.i, i64 %indvars.iv.next93.i
  %i.cn = load double, ptr %gep78.i.1, align 8, !tbaa !8
  %i.co = fmul double %i.cm, %i.cn
  %i.cp = fadd double %i.cl, %i.co                ; 2 uses
  store double %i.cp, ptr %i.cg, align 8, !tbaa !8
  %indvars.iv.next93.i.1 = add nuw nsw i64 %indvars.iv92.i, 2 ; 2 uses
  %exitcond95.not.i.1 = icmp eq i64 %indvars.iv.next93.i.1, 1000
  br i1 %exitcond95.not.i.1, label %.preheader.i, label %bb.f, !llvm.loop !32

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i.1, %.preheader.i ], [ 0, %bb.f ] ; 4 uses
  %gep81.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep77.i, i64 %indvars.iv96.i ; 2 uses
  %i.cq = load double, ptr %gep81.i, align 8, !tbaa !8
  %gep83.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %indvars.iv96.i
  %i.cr = load double, ptr %gep83.i, align 8, !tbaa !8
  %i.cs = load double, ptr %i.cg, align 8, !tbaa !8
  %i.ct = fmul double %i.cr, %i.cs
  %i.cu = fsub double %i.cq, %i.ct
  store double %i.cu, ptr %gep81.i, align 8, !tbaa !8
  %indvars.iv.next97.i = or disjoint i64 %indvars.iv96.i, 1 ; 2 uses
  %gep81.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep77.i, i64 %indvars.iv.next97.i ; 2 uses
  %i.cv = load double, ptr %gep81.i.1, align 8, !tbaa !8
  %gep83.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %indvars.iv.next97.i
  %i.cw = load double, ptr %gep83.i.1, align 8, !tbaa !8
  %i.cx = load double, ptr %i.cg, align 8, !tbaa !8
  %i.cy = fmul double %i.cw, %i.cx
  %i.cz = fsub double %i.cv, %i.cy
  store double %i.cz, ptr %gep81.i.1, align 8, !tbaa !8
  %indvars.iv.next97.i.1 = add nuw nsw i64 %indvars.iv96.i, 2 ; 2 uses
  %exitcond99.not.i.1 = icmp eq i64 %indvars.iv.next97.i.1, 1000
  br i1 %exitcond99.not.i.1, label %bb.g, label %.preheader.i, !llvm.loop !33

bb.g:                                             ; preds = %.preheader.i
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next103.i, 1200
  br i1 %exitcond105.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !34

kernel_gramschmidt.exit:                          ; preds = %.loopexit.i
  call fastcc void @print_array(ptr noundef %i.l, ptr noundef %i.r)
  call void @free(ptr noundef nonnull %i.e) #13
  call void @free(ptr noundef nonnull %i.l) #13
  call void @free(ptr noundef nonnull %i.r) #13
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.b = tail call i64 @fwrite(ptr nonnull @.str.2, i64 22, i64 1, ptr %i.a) #14 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #16 ; 0 uses
  br label %.preheader1

.preheader1:                                      ; preds = %bb.a, %bb.e
  %indvars.iv7 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next8, %bb.e ] ; 3 uses
  %i.e = mul nuw nsw i64 %indvars.iv7, 1200
  %i.f = getelementptr inbounds nuw [9600 x i8], ptr %0, i64 %indvars.iv7
  br label %bb.b

bb.b:                                             ; preds = %.preheader1, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.g = add nuw nsw i64 %indvars.iv, %i.e
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = urem i32 %i.h, 20
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc26 = tail call i32 @fputc(i32 10, ptr %i.k) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.n = load double, ptr %i.m, align 8, !tbaa !8
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.6, double noundef %i.n) #16 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1200
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !35

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1 ; 2 uses
  %exitcond10.not = icmp eq i64 %indvars.iv.next8, 1200
  br i1 %exitcond10.not, label %bb.f, label %.preheader1, !llvm.loop !36

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4) #16 ; 0 uses
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8) #16 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.j
  %indvars.iv15 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next16, %bb.j ] ; 3 uses
  %i.t = mul nuw nsw i64 %indvars.iv15, 1200
  %i.u = getelementptr inbounds nuw [9600 x i8], ptr %1, i64 %indvars.iv15
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.i
  %indvars.iv11 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next12, %bb.i ] ; 3 uses
  %i.v = add nuw nsw i64 %indvars.iv11, %i.t
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = urem i32 %i.w, 20
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc = tail call i32 @fputc(i32 10, ptr %i.z) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv11
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.6, double noundef %i.ac) #16 ; 0 uses
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next12, 1200
  br i1 %exitcond14.not, label %bb.j, label %bb.g, !llvm.loop !37

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1 ; 2 uses
  %exitcond18.not = icmp eq i64 %indvars.iv.next16, 1000
  br i1 %exitcond18.not, label %bb.k, label %.preheader, !llvm.loop !38

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16 ; 0 uses
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ah = tail call i64 @fwrite(ptr nonnull @.str.9, i64 22, i64 1, ptr %i.ag) #14 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11
end_hunk_0
