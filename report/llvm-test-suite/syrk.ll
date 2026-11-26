Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/syrk?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@polybench_alloc_data:bb.a
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 !guid !59 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 11520000) #13
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20   ; 7 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 11520000) #13
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !20   ; 8 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp eq ptr %i.k, null
  %i.n = icmp ne i32 %i.j, 0
  %or.cond.i.i21 = or i1 %i.n, %i.m
  br i1 %or.cond.i.i21, label %bb.c, label %polybench_alloc_data.exit23

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i22 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.o) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit23:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.p = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 9600000) #13
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !20   ; 11 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = icmp ne i32 %i.p, 0
  %or.cond.i.i24 = or i1 %i.s, %i.r
  br i1 %or.cond.i.i24, label %bb.d, label %polybench_alloc_data.exit26

bb.d:                                             ; preds = %polybench_alloc_data.exit23
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i25 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.t) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit26:                      ; preds = %polybench_alloc_data.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.preheader35.i

.preheader35.i:                                   ; preds = %middle.block, %polybench_alloc_data.exit26
  %indvars.iv41.i = phi i64 [ 0, %polybench_alloc_data.exit26 ], [ %indvars.iv.next42.i, %middle.block ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8000 x i8], ptr %i.q, i64 %indvars.iv41.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv41.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader35.i
  %index = phi i64 [ 0, %.preheader35.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.preheader35.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.v = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.w = trunc <2 x i64> %i.v to <2 x i32>
  %i.x = add <2 x i32> %i.w, splat (i32 1)
  %i.y = urem <2 x i32> %i.x, splat (i32 1200)
  %i.z = uitofp nneg <2 x i32> %i.y to <2 x double>
  %i.aa = fdiv <2 x double> %i.z, splat (double 1.200000e+03)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index
  store <2 x double> %i.aa, ptr %i.ab, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ac = icmp eq i64 %index.next, 1000
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next42.i, 1200
  br i1 %exitcond44.not.i, label %.preheader.i.preheader, label %.preheader35.i, !llvm.loop !31

.preheader.i.preheader:                           ; preds = %middle.block
  %i.ad = sub i64 %i.f, %i.l
  %diff.check = icmp ugt i64 %i.ad, -16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block94
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %middle.block94 ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv49.i ; 2 uses
  %i.af = getelementptr inbounds nuw [9600 x i8], ptr %i.k, i64 %indvars.iv49.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph86

vector.ph86:                                      ; preds = %.preheader.i
  %broadcast.splatinsert87 = insertelement <2 x i64> poison, i64 %indvars.iv49.i, i64 0
  %broadcast.splat88 = shufflevector <2 x i64> %broadcast.splatinsert87, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph86
  %index90 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body89 ] ; 3 uses
  %vec.ind91 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph86 ], [ %vec.ind.next93, %vector.body89 ] ; 2 uses
  %i.ag = mul nuw nsw <2 x i64> %vec.ind91, %broadcast.splat88
  %i.ah = trunc <2 x i64> %i.ag to <2 x i32>
  %i.ai = add <2 x i32> %i.ah, splat (i32 2)
  %i.aj = urem <2 x i32> %i.ai, splat (i32 1000)
  %i.ak = uitofp nneg <2 x i32> %i.aj to <2 x double>
  %i.al = fdiv <2 x double> %i.ak, splat (double 1.000000e+03) ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index90
  store <2 x double> %i.al, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index90
  store <2 x double> %i.al, ptr %i.an, align 8, !tbaa !18
  %index.next92 = add nuw i64 %index90, 2         ; 2 uses
  %vec.ind.next93 = add nuw nsw <2 x i64> %vec.ind91, splat (i64 2)
  %i.ao = icmp eq i64 %index.next92, 1200
  br i1 %i.ao, label %middle.block94, label %vector.body89, !llvm.loop !32

scalar.ph:                                        ; preds = %.preheader.i, %scalar.ph
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %scalar.ph ], [ 0, %.preheader.i ] ; 4 uses
  %i.ap = mul nuw nsw i64 %indvars.iv45.i, %indvars.iv49.i
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = add i32 %i.aq, 2
  %i.as = urem i32 %i.ar, 1000
  %i.at = uitofp nneg i32 %i.as to double
  %i.au = fdiv double %i.at, 1.000000e+03         ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv45.i
  store double %i.au, ptr %i.av, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv45.i
  store double %i.au, ptr %i.aw, align 8, !tbaa !18
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, 1200
  br i1 %exitcond48.not.i, label %middle.block94, label %scalar.ph, !llvm.loop !33

middle.block94:                                   ; preds = %vector.body89, %scalar.ph
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 1200
  br i1 %exitcond52.not.i, label %.preheader29.i, label %.preheader.i, !llvm.loop !34

.preheader29.i:                                   ; preds = %middle.block94, %bb.e
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %bb.e ], [ 0, %middle.block94 ] ; 6 uses
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %bb.e ], [ 1, %middle.block94 ] ; 10 uses
  %i.ax = mul nuw nsw i64 %indvars.iv48.i, 8000
  %i.ay = getelementptr i8, ptr %i.q, i64 %i.ax
  %scevgep = getelementptr i8, ptr %i.ay, i64 8000
  %i.az = mul nuw nsw i64 %indvars.iv48.i, 9608
  %i.ba = getelementptr i8, ptr %i.e, i64 %i.az
  %scevgep100 = getelementptr i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv48.i ; 7 uses
  %min.iters.check114 = icmp samesign ult i64 %indvars.iv46.i, 4
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %.preheader29.i
  %n.vec116 = and i64 %indvars.iv46.i, 9223372036854775804 ; 3 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next121, %vector.body117 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index118 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %wide.load119 = load <2 x double>, ptr %i.bc, align 8, !tbaa !18
  %wide.load120 = load <2 x double>, ptr %i.bd, align 8, !tbaa !18
  %i.be = fmul <2 x double> %wide.load119, splat (double 1.200000e+00)
  %i.bf = fmul <2 x double> %wide.load120, splat (double 1.200000e+00)
  store <2 x double> %i.be, ptr %i.bc, align 8, !tbaa !18
  store <2 x double> %i.bf, ptr %i.bd, align 8, !tbaa !18
  %index.next121 = add nuw i64 %index118, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next121, %n.vec116
  br i1 %i.bg, label %middle.block122, label %vector.body117, !llvm.loop !35

middle.block122:                                  ; preds = %vector.body117
  %cmp.n123 = icmp eq i64 %indvars.iv46.i, %n.vec116
  br i1 %cmp.n123, label %.preheader28.i, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %.preheader29.i, %middle.block122
  %indvars.iv.i27.ph = phi i64 [ 0, %.preheader29.i ], [ %n.vec116, %middle.block122 ]
  br label %scalar.ph113

.preheader28.i:                                   ; preds = %scalar.ph113, %middle.block122
  %i.bh = getelementptr inbounds nuw [8000 x i8], ptr %i.q, i64 %indvars.iv48.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv46.i, 4
  %bound0 = icmp ult ptr %i.bb, %scevgep
  %bound1 = icmp ult ptr %i.bh, %scevgep100
  %bound1103 = icmp ult ptr %i.q, %scevgep100
  %found.conflict104172 = or i1 %bound1, %bound1103
  %conflict.rdx = and i1 %bound0, %found.conflict104172
  %n.vec = and i64 %indvars.iv46.i, 9223372036854775804 ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv46.i, %n.vec
  %xtraiter = and i64 %indvars.iv46.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i30

scalar.ph113:                                     ; preds = %scalar.ph113.preheader, %scalar.ph113
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i28, %scalar.ph113 ], [ %indvars.iv.i27.ph, %scalar.ph113.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i27 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !18
  %i.bk = fmul double %i.bj, 1.200000e+00
  store double %i.bk, ptr %i.bi, align 8, !tbaa !18
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %exitcond.not.i29 = icmp eq i64 %indvars.iv.next.i28, %indvars.iv46.i
  br i1 %exitcond.not.i29, label %.preheader28.i, label %scalar.ph113, !llvm.loop !36

.preheader.i30:                                   ; preds = %.loopexit170, %.preheader28.i
  %indvars.iv42.i = phi i64 [ 0, %.preheader28.i ], [ %indvars.iv.next43.i, %.loopexit170 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv42.i ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv42.i ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph101.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %.preheader.i30
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !18, !alias.scope !63
  %i.bn = fmul double %i.bm, 1.500000e+00
  %broadcast.splatinsert109 = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat110 = shufflevector <2 x double> %broadcast.splatinsert109, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph105
  %index107 = phi i64 [ 0, %vector.ph105 ], [ %index.next111, %vector.body106 ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index107
  %i.bp = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index107
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8000
  %i.br = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index107
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16000
  %i.bt = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index107
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24000
  %i.bv = load double, ptr %i.bo, align 8, !tbaa !18, !alias.scope !64
  %i.bw = load double, ptr %i.bq, align 8, !tbaa !18, !alias.scope !64
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1
  %i.bz = load double, ptr %i.bs, align 8, !tbaa !18, !alias.scope !64
  %i.ca = load double, ptr %i.bu, align 8, !tbaa !18, !alias.scope !64
  %i.cb = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index107 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cd, align 8, !tbaa !18, !alias.scope !65, !noalias !66
  %wide.load108 = load <2 x double>, ptr %i.ce, align 8, !tbaa !18, !alias.scope !65, !noalias !66
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat110, <2 x double> %i.by, <2 x double> %wide.load)
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat110, <2 x double> %i.cc, <2 x double> %wide.load108)
  store <2 x double> %i.cf, ptr %i.cd, align 8, !tbaa !18, !alias.scope !65, !noalias !66
  store <2 x double> %i.cg, ptr %i.ce, align 8, !tbaa !18, !alias.scope !65, !noalias !66
  %index.next111 = add nuw i64 %index107, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next111, %n.vec
  br i1 %i.ch, label %middle.block112, label %vector.body106, !llvm.loop !41

middle.block112:                                  ; preds = %vector.body106
  br i1 %cmp.n, label %.loopexit170, label %scalar.ph101.preheader

scalar.ph101.preheader:                           ; preds = %.preheader.i30, %middle.block112
  %indvars.iv37.i.ph = phi i64 [ %n.vec, %middle.block112 ], [ 0, %.preheader.i30 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph101.prol.loopexit, label %scalar.ph101.prol

scalar.ph101.prol:                                ; preds = %scalar.ph101.preheader
  %i.ci = load double, ptr %i.bl, align 8, !tbaa !18
  %i.cj = fmul double %i.ci, 1.500000e+00
  %gep.i.prol = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv37.i.ph
  %i.ck = load double, ptr %gep.i.prol, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv37.i.ph ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !18
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.ck, double %i.cm)
  store double %i.cn, ptr %i.cl, align 8, !tbaa !18
  %indvars.iv.next38.i.prol = or disjoint i64 %indvars.iv37.i.ph, 1
  br label %scalar.ph101.prol.loopexit

scalar.ph101.prol.loopexit:                       ; preds = %scalar.ph101.prol, %scalar.ph101.preheader
  %indvars.iv37.i.unr = phi i64 [ %indvars.iv37.i.ph, %scalar.ph101.preheader ], [ %indvars.iv.next38.i.prol, %scalar.ph101.prol ]
  %i.co = icmp eq i64 %indvars.iv48.i, %indvars.iv37.i.ph
  br i1 %i.co, label %.loopexit170, label %scalar.ph101

scalar.ph101:                                     ; preds = %scalar.ph101.prol.loopexit, %scalar.ph101
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i.1, %scalar.ph101 ], [ %indvars.iv37.i.unr, %scalar.ph101.prol.loopexit ] ; 4 uses
  %i.cp = load double, ptr %i.bl, align 8, !tbaa !18
  %i.cq = fmul double %i.cp, 1.500000e+00
  %gep.i = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv37.i
  %i.cr = load double, ptr %gep.i, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv37.i ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !18
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cr, double %i.ct)
  store double %i.cu, ptr %i.cs, align 8, !tbaa !18
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %i.cv = load double, ptr %i.bl, align 8, !tbaa !18
  %i.cw = fmul double %i.cv, 1.500000e+00
  %gep.i.1 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next38.i
  %i.cx = load double, ptr %gep.i.1, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next38.i ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !18
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cx, double %i.cz)
  store double %i.da, ptr %i.cy, align 8, !tbaa !18
  %indvars.iv.next38.i.1 = add nuw nsw i64 %indvars.iv37.i, 2 ; 2 uses
  %exitcond41.not.i.1 = icmp eq i64 %indvars.iv.next38.i.1, %indvars.iv46.i
  br i1 %exitcond41.not.i.1, label %.loopexit170, label %scalar.ph101, !llvm.loop !42

.loopexit170:                                     ; preds = %scalar.ph101.prol.loopexit, %scalar.ph101, %middle.block112
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next43.i, 1000
  br i1 %exitcond45.not.i, label %bb.e, label %.preheader.i30, !llvm.loop !43

bb.e:                                             ; preds = %.loopexit170
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next49.i, 1200
  br i1 %exitcond53.not.i, label %.preheader29.i31, label %.preheader29.i, !llvm.loop !44

.preheader29.i31:                                 ; preds = %bb.e, %bb.f
  %indvars.iv48.i32 = phi i64 [ %indvars.iv.next49.i47, %bb.f ], [ 0, %bb.e ] ; 6 uses
  %indvars.iv46.i33 = phi i64 [ %indvars.iv.next47.i48, %bb.f ], [ 1, %bb.e ] ; 10 uses
  %i.db = mul nuw nsw i64 %indvars.iv48.i32, 8000
  %i.dc = getelementptr i8, ptr %i.q, i64 %i.db
  %scevgep135 = getelementptr i8, ptr %i.dc, i64 8000
  %i.dd = mul nuw nsw i64 %indvars.iv48.i32, 9608
  %i.de = getelementptr i8, ptr %i.k, i64 %i.dd
  %scevgep136 = getelementptr i8, ptr %i.de, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw [9600 x i8], ptr %i.k, i64 %indvars.iv48.i32 ; 7 uses
  %min.iters.check159 = icmp samesign ult i64 %indvars.iv46.i33, 4
  br i1 %min.iters.check159, label %scalar.ph158.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %.preheader29.i31
  %n.vec161 = and i64 %indvars.iv46.i33, 9223372036854775804 ; 3 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next166, %vector.body162 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index163 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %wide.load164 = load <2 x double>, ptr %i.dg, align 8, !tbaa !18
  %wide.load165 = load <2 x double>, ptr %i.dh, align 8, !tbaa !18
  %i.di = fmul <2 x double> %wide.load164, splat (double 1.200000e+00)
  %i.dj = fmul <2 x double> %wide.load165, splat (double 1.200000e+00)
  store <2 x double> %i.di, ptr %i.dg, align 8, !tbaa !18
  store <2 x double> %i.dj, ptr %i.dh, align 8, !tbaa !18
  %index.next166 = add nuw i64 %index163, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next166, %n.vec161
  br i1 %i.dk, label %middle.block167, label %vector.body162, !llvm.loop !45

middle.block167:                                  ; preds = %vector.body162
  %cmp.n168 = icmp eq i64 %indvars.iv46.i33, %n.vec161
  br i1 %cmp.n168, label %.preheader28.i37, label %scalar.ph158.preheader

scalar.ph158.preheader:                           ; preds = %.preheader29.i31, %middle.block167
  %indvars.iv.i34.ph = phi i64 [ 0, %.preheader29.i31 ], [ %n.vec161, %middle.block167 ]
  br label %scalar.ph158

.preheader28.i37:                                 ; preds = %scalar.ph158, %middle.block167
  %i.dl = getelementptr inbounds nuw [8000 x i8], ptr %i.q, i64 %indvars.iv48.i32 ; 2 uses
  %min.iters.check138 = icmp samesign ult i64 %indvars.iv46.i33, 4
  %bound0140 = icmp ult ptr %i.df, %scevgep135
  %bound1141 = icmp ult ptr %i.dl, %scevgep136
  %bound1143 = icmp ult ptr %i.q, %scevgep136
  %found.conflict144173 = or i1 %bound1141, %bound1143
  %conflict.rdx145 = and i1 %bound0140, %found.conflict144173
  %n.vec147 = and i64 %indvars.iv46.i33, 9223372036854775804 ; 3 uses
  %cmp.n156 = icmp eq i64 %indvars.iv46.i33, %n.vec147
  %xtraiter181 = and i64 %indvars.iv46.i33, 1
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br label %.preheader.i38

scalar.ph158:                                     ; preds = %scalar.ph158.preheader, %scalar.ph158
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i35, %scalar.ph158 ], [ %indvars.iv.i34.ph, %scalar.ph158.preheader ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.i34 ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !18
  %i.do = fmul double %i.dn, 1.200000e+00
  store double %i.do, ptr %i.dm, align 8, !tbaa !18
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %exitcond.not.i36 = icmp eq i64 %indvars.iv.next.i35, %indvars.iv46.i33
  br i1 %exitcond.not.i36, label %.preheader28.i37, label %scalar.ph158, !llvm.loop !46

.preheader.i38:                                   ; preds = %.loopexit, %.preheader28.i37
  %indvars.iv42.i39 = phi i64 [ 0, %.preheader28.i37 ], [ %indvars.iv.next43.i45, %.loopexit ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv42.i39 ; 4 uses
  %invariant.gep.i40 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv42.i39 ; 7 uses
  %brmerge184 = select i1 %min.iters.check138, i1 true, i1 %conflict.rdx145
  br i1 %brmerge184, label %scalar.ph137.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %.preheader.i38
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !18, !alias.scope !67
  %i.dr = fmul double %i.dq, 1.500000e+00
  %broadcast.splatinsert150 = insertelement <2 x double> poison, double %i.dr, i64 0
  %broadcast.splat151 = shufflevector <2 x double> %broadcast.splatinsert150, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body148 ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %index149
  %i.dt = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %index149
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8000
  %i.dv = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %index149
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16000
  %i.dx = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %index149
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24000
  %i.dz = load double, ptr %i.ds, align 8, !tbaa !18, !alias.scope !68
  %i.ea = load double, ptr %i.du, align 8, !tbaa !18, !alias.scope !68
  %i.eb = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.ea, i64 1
  %i.ed = load double, ptr %i.dw, align 8, !tbaa !18, !alias.scope !68
  %i.ee = load double, ptr %i.dy, align 8, !tbaa !18, !alias.scope !68
  %i.ef = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.ee, i64 1
  %i.eh = fmul <2 x double> %broadcast.splat151, %i.ec
  %i.ei = fmul <2 x double> %broadcast.splat151, %i.eg
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index149 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %wide.load152 = load <2 x double>, ptr %i.ej, align 8, !tbaa !18, !alias.scope !69, !noalias !70
  %wide.load153 = load <2 x double>, ptr %i.ek, align 8, !tbaa !18, !alias.scope !69, !noalias !70
  %i.el = fadd <2 x double> %wide.load152, %i.eh
  %i.em = fadd <2 x double> %wide.load153, %i.ei
  store <2 x double> %i.el, ptr %i.ej, align 8, !tbaa !18, !alias.scope !69, !noalias !70
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !18, !alias.scope !69, !noalias !70
  %index.next154 = add nuw i64 %index149, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.en, label %middle.block155, label %vector.body148, !llvm.loop !51

middle.block155:                                  ; preds = %vector.body148
  br i1 %cmp.n156, label %.loopexit, label %scalar.ph137.preheader

scalar.ph137.preheader:                           ; preds = %.preheader.i38, %middle.block155
  %indvars.iv37.i41.ph = phi i64 [ %n.vec147, %middle.block155 ], [ 0, %.preheader.i38 ] ; 5 uses
  br i1 %lcmp.mod182.not, label %scalar.ph137.prol.loopexit, label %scalar.ph137.prol

scalar.ph137.prol:                                ; preds = %scalar.ph137.preheader
  %i.eo = load double, ptr %i.dp, align 8, !tbaa !18
  %i.ep = fmul double %i.eo, 1.500000e+00
  %gep.i42.prol = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %indvars.iv37.i41.ph
  %i.eq = load double, ptr %gep.i42.prol, align 8, !tbaa !18
  %i.er = fmul double %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv37.i41.ph ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !18
  %i.eu = fadd double %i.et, %i.er
  store double %i.eu, ptr %i.es, align 8, !tbaa !18
  %indvars.iv.next38.i43.prol = or disjoint i64 %indvars.iv37.i41.ph, 1
  br label %scalar.ph137.prol.loopexit

scalar.ph137.prol.loopexit:                       ; preds = %scalar.ph137.prol, %scalar.ph137.preheader
  %indvars.iv37.i41.unr = phi i64 [ %indvars.iv37.i41.ph, %scalar.ph137.preheader ], [ %indvars.iv.next38.i43.prol, %scalar.ph137.prol ]
  %i.ev = icmp eq i64 %indvars.iv48.i32, %indvars.iv37.i41.ph
  br i1 %i.ev, label %.loopexit, label %scalar.ph137

scalar.ph137:                                     ; preds = %scalar.ph137.prol.loopexit, %scalar.ph137
  %indvars.iv37.i41 = phi i64 [ %indvars.iv.next38.i43.1, %scalar.ph137 ], [ %indvars.iv37.i41.unr, %scalar.ph137.prol.loopexit ] ; 4 uses
  %i.ew = load double, ptr %i.dp, align 8, !tbaa !18
  %i.ex = fmul double %i.ew, 1.500000e+00
  %gep.i42 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %indvars.iv37.i41
  %i.ey = load double, ptr %gep.i42, align 8, !tbaa !18
  %i.ez = fmul double %i.ex, %i.ey
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv37.i41 ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !18
  %i.fc = fadd double %i.fb, %i.ez
  store double %i.fc, ptr %i.fa, align 8, !tbaa !18
  %indvars.iv.next38.i43 = add nuw nsw i64 %indvars.iv37.i41, 1 ; 2 uses
  %i.fd = load double, ptr %i.dp, align 8, !tbaa !18
  %i.fe = fmul double %i.fd, 1.500000e+00
  %gep.i42.1 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %indvars.iv.next38.i43
  %i.ff = load double, ptr %gep.i42.1, align 8, !tbaa !18
  %i.fg = fmul double %i.fe, %i.ff
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next38.i43 ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !18
  %i.fj = fadd double %i.fi, %i.fg
  store double %i.fj, ptr %i.fh, align 8, !tbaa !18
  %indvars.iv.next38.i43.1 = add nuw nsw i64 %indvars.iv37.i41, 2 ; 2 uses
  %exitcond41.not.i44.1 = icmp eq i64 %indvars.iv.next38.i43.1, %indvars.iv46.i33
  br i1 %exitcond41.not.i44.1, label %.loopexit, label %scalar.ph137, !llvm.loop !52

.loopexit:                                        ; preds = %scalar.ph137.prol.loopexit, %scalar.ph137, %middle.block155
  %indvars.iv.next43.i45 = add nuw nsw i64 %indvars.iv42.i39, 1 ; 2 uses
  %exitcond45.not.i46 = icmp eq i64 %indvars.iv.next43.i45, 1000
  br i1 %exitcond45.not.i46, label %bb.f, label %.preheader.i38, !llvm.loop !53

bb.f:                                             ; preds = %.loopexit
  %indvars.iv.next49.i47 = add nuw nsw i64 %indvars.iv48.i32, 1 ; 2 uses
  %indvars.iv.next47.i48 = add nuw nsw i64 %indvars.iv46.i33, 1
  %exitcond53.not.i49 = icmp eq i64 %indvars.iv.next49.i47, 1200
  br i1 %exitcond53.not.i49, label %.preheader.i50, label %.preheader29.i31, !llvm.loop !54

.preheader.i50:                                   ; preds = %bb.f, %bb.h
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %bb.h ], [ 0, %bb.f ] ; 4 uses
  %i.fk = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv36.i ; 3 uses
  %i.fl = getelementptr inbounds nuw [9600 x i8], ptr %i.k, i64 %indvars.iv36.i ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.2, %.preheader.i50
  %indvars.iv.i51 = phi i64 [ 0, %.preheader.i50 ], [ %indvars.iv.next.i52.2, %.critedge.i.2 ] ; 6 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.i51
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !18 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i51
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !18 ; 2 uses
  %i.fq = fsub double %i.fn, %i.fp
  %i.fr = tail call double @llvm.fabs.f64(double %i.fq)
  %i.fs = fcmp ule double %i.fr, 1.000000e-05
  br i1 %i.fs, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.1, %.critedge.i, %bb.g
  %indvars.iv.i51.lcssa = phi i64 [ %indvars.iv.i51, %bb.g ], [ %indvars.iv.next.i52, %.critedge.i ], [ %indvars.iv.next.i52.1, %.critedge.i.1 ]
  %.lcssa176 = phi double [ %i.fn, %bb.g ], [ %i.fy, %.critedge.i ], [ %i.gf, %.critedge.i.1 ]
  %.lcssa = phi double [ %i.fp, %bb.g ], [ %i.ga, %.critedge.i ], [ %i.gh, %.critedge.i.1 ]
  %i.ft = trunc nuw nsw i64 %indvars.iv36.i to i32 ; 2 uses
  %i.fu = trunc nuw nsw i64 %indvars.iv.i51.lcssa to i32 ; 2 uses
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.fw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fv, ptr noundef nonnull @.str.2, i32 noundef %i.ft, i32 noundef %i.fu, double noundef %.lcssa176, i32 noundef %i.ft, i32 noundef %i.fu, double noundef %.lcssa, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i51, 1 ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next.i52
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !18 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i52
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !18 ; 2 uses
  %i.gb = fsub double %i.fy, %i.ga
  %i.gc = tail call double @llvm.fabs.f64(double %i.gb)
  %i.gd = fcmp ule double %i.gc, 1.000000e-05
  br i1 %i.gd, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i52.1 = add nuw nsw i64 %indvars.iv.i51, 2 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next.i52.1
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !18 ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i52.1
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !18 ; 2 uses
  %i.gi = fsub double %i.gf, %i.gh
  %i.gj = tail call double @llvm.fabs.f64(double %i.gi)
  %i.gk = fcmp ule double %i.gj, 1.000000e-05
  br i1 %i.gk, label %.critedge.i.2, label %check_FP.exit.thread

.critedge.i.2:                                    ; preds = %.critedge.i.1
  %indvars.iv.next.i52.2 = add nuw nsw i64 %indvars.iv.i51, 3 ; 2 uses
  %exitcond.not.i53.2 = icmp eq i64 %indvars.iv.next.i52.2, 1200
  br i1 %exitcond.not.i53.2, label %bb.h, label %bb.g, !llvm.loop !55

bb.h:                                             ; preds = %.critedge.i.2
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next37.i, 1200
  br i1 %exitcond39.not.i, label %check_FP.exit, label %.preheader.i50, !llvm.loop !56

check_FP.exit:                                    ; preds = %bb.h
  %i.gl = tail call noalias dereferenceable_or_null(19201) ptr @malloc(i64 noundef 19201) #17 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 19200
  store i8 0, ptr %i.gm, align 1, !tbaa !71
  br label %.preheader.i54

.preheader.i54:                                   ; preds = %bb.j, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.j ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [9600 x i8], ptr %i.k, i64 %indvars.iv20.i
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i54
  %indvars.iv.i55 = phi i64 [ 0, %.preheader.i54 ], [ %indvars.iv.next.i56, %bb.i ] ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.i55
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !18
  %i.gq = shl nuw nsw i64 %indvars.iv.i55, 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gq
  %.inner = and i64 %i.gp, 1085102592571150095
  %.inner174 = or disjoint i64 %.inner, 3472328296227680304
  %i.gs = bitcast i64 %.inner174 to <8 x i8>
  %i.gt = shufflevector <8 x i8> %i.gs, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.gt, ptr %i.gr, align 1, !tbaa !71
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i55, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, 1200
  br i1 %exitcond.not.i57, label %bb.j, label %bb.i, !llvm.loop !57

bb.j:                                             ; preds = %bb.i
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.gv = tail call i32 @fputs(ptr noundef nonnull %i.gl, ptr noundef %i.gu) #14 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 1200
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i54, !llvm.loop !58

print_array.exit:                                 ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.gl) #13
  tail call void @free(ptr noundef %i.e) #13
  tail call void @free(ptr noundef nonnull %i.k) #13
  tail call void @free(ptr noundef %i.q) #13
  br label %bb.k

bb.k:                                             ; preds = %check_FP.exit.thread, %print_array.exit
  %.0 = phi i32 [ 0, %print_array.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -806784931565097052}
!9 = !{i64 1361650078910839278}
!10 = !{i64 -5417346137170862001}
!11 = !{i64 4595329937442580317}
!12 = !{i64 3625535101729146215}
!13 = !{i64 -7342903817849636275}
!14 = !{i64 774085790601897068}
!15 = !{i64 -2518537151868100572}
!16 = !{i64 -6534323580564468789}
!17 = !{!"double", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{i64 6924298717434635471}
!24 = !{i64 2466723648033828072}
!25 = !{i64 3849196629037768006}
!26 = !{i64 -3113547621970457501}
!27 = !{i64 8579997554498101488}
!28 = !{i64 -2159351921628453241}
!29 = !{i64 -6990721254753607707}
!30 = distinct !{!30, !60, !61, !62}
!31 = distinct !{!31, !60}
!32 = distinct !{!32, !60, !61, !62}
!33 = distinct !{!33, !60, !61}
!34 = distinct !{!34, !60}
!35 = distinct !{!35, !60, !61, !62}
!36 = distinct !{!36, !60, !62, !61}
!37 = distinct !{!37, i1 false, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = distinct !{!41, !60, !61, !62}
!42 = distinct !{!42, !60, !61}
!43 = distinct !{!43, !60}
!44 = distinct !{!44, !60}
!45 = distinct !{!45, !60, !61, !62}
!46 = distinct !{!46, !60, !62, !61}
!47 = distinct !{!47, i1 false, !"LVerDomain"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = distinct !{!51, !60, !61, !62}
!52 = distinct !{!52, !60, !61}
!53 = distinct !{!53, !60}
!54 = distinct !{!54, !60}
!55 = distinct !{!55, !60}
!56 = distinct !{!56, !60}
!57 = distinct !{!57, !60}
!58 = distinct !{!58, !60}
!59 = !{i64 -2624081020897602054}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!38}
!64 = !{!39}
!65 = !{!40}
!66 = !{!38, !39}
!67 = !{!48}
!68 = !{!49}
!69 = !{!50}
!70 = !{!48, !49}
!71 = !{!5, !5, i64 0}
end_hunk_0
