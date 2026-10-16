Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/smg?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hypre_SMGSetNumPostRelax:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_SMGSetBase(ptr nofree noundef writeonly captures(none) initializes((48, 72)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = load i32, ptr %1, align 4, !tbaa !7
  store i32 %i.c, ptr %i.a, align 4, !tbaa !7
  %i.d = load i32, ptr %2, align 4, !tbaa !7
  store i32 %i.d, ptr %i.b, align 4, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.f, ptr %i.g, align 4, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.i, ptr %i.j, align 4, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.l, ptr %i.m, align 4, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.o, ptr %i.p, align 4, !tbaa !7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_SMGSetLogging(ptr nofree noundef writeonly captures(none) initializes((208, 212)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !19
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_SMGGetNumIterations(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  store i32 %i.b, ptr %1, align 4, !tbaa !7
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @hypre_SMGPrintLogging(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = icmp eq i32 %1, 0
  %i.j = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  %i.k = icmp sgt i32 %i.b, 0
  %or.cond18 = select i1 %or.cond, i1 %i.k, i1 false
  br i1 %or.cond18, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.m = load double, ptr %i.l, align 8, !tbaa !26
  %i.n = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.n, double noundef %i.m) ; 0 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = load double, ptr %i.p, align 8, !tbaa !26
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.n, double noundef %i.q) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !55

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @hypre_SMGGetFinalRelativeResidualNorm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24
  %i.j = icmp eq i32 %i.g, %i.i
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr [8 x i8], ptr %i.e, i64 %i.k
  %storemerge.in.idx = select i1 %i.j, i64 -8, i64 0
  %storemerge.in = getelementptr i8, ptr %i.l, i64 %storemerge.in.idx
  %storemerge = load double, ptr %storemerge.in, align 8, !tbaa !26
  store double %storemerge, ptr %1, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMGSetStructVectorConstantValues(ptr nofree noundef readonly captures(none) %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge175

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv183 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next184, %._crit_edge.split ] ; 4 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv183 ; 4 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv183 ; 5 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv183
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.u ; 6 uses
  %i.w = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.m, ptr noundef %3, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.x = load i32, ptr %i.m, align 4, !tbaa !7
  %i.y = load i32, ptr %i.p, align 4, !tbaa !7    ; 2 uses
  %i.z = sub i32 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7  ; 2 uses
  %i.ae = sub i32 %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = sub nsw i32 %i.ah, %i.ad                ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, -1                  ; 2 uses
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = sub nsw i32 %i.al, %i.an
  %i.ap = add nuw nsw i32 %i.ai, 1
  %i.aq = mul nsw i32 %i.ao, %i.ap
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ar = phi i32 [ %i.aq, %bb.c ], [ 0, %bb.b ]
  %i.as = load i32, ptr %i.af, align 4, !tbaa !7
  %i.at = sub nsw i32 %i.as, %i.y                 ; 2 uses
  %i.au = icmp sgt i32 %i.at, -1                  ; 2 uses
  %i.av = add nsw i32 %i.ae, %i.ar
  %i.aw = add nuw nsw i32 %i.at, 1                ; 3 uses
  %i.ax = mul nsw i32 %i.aw, %i.av
  %i.ay = select i1 %i.au, i32 %i.ax, i32 0
  %i.az = add nsw i32 %i.z, %i.ay
  %i.ba = load i32, ptr %3, align 4, !tbaa !7     ; 3 uses
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !7
  %i.bc = mul nsw i32 %i.bb, %i.aw
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !7
  %i.be = mul nsw i32 %i.bd, %i.aw
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bf = phi i32 [ %i.bc, %bb.e ], [ 0, %bb.d ]  ; 2 uses
  %i.bg = phi i32 [ %i.be, %bb.e ], [ 0, %bb.d ]
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !7   ; 8 uses
  %i.bi = load i32, ptr %i.j, align 4, !tbaa !7   ; 4 uses
  %i.bj = load i32, ptr %i.k, align 4, !tbaa !7   ; 3 uses
  %.0129 = call i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bh)
  %.1 = call i32 @llvm.smax.i32(i32 %i.bj, i32 %.0129)
  %i.bk = icmp sgt i32 %.1, 0
  br i1 %i.bk, label %.preheader156.lr.ph, label %._crit_edge.split

.preheader156.lr.ph:                              ; preds = %bb.f
  %factor.op.mul169 = mul i32 %i.bi, %i.bf
  %i.bl = add nuw nsw i32 %i.ai, 1
  %i.bm = mul nsw i32 %i.bg, %i.bl
  %i.bn = select i1 %i.aj, i32 %i.bm, i32 0
  %i.bo = mul i32 %i.bh, %i.ba
  %4 = icmp sgt i32 %i.bj, 0
  %i.bp = icmp sgt i32 %i.bi, 0
  %i.bq = sub i32 %i.bf, %i.bo
  %5 = sub i32 %i.bn, %factor.op.mul169
  %brmerge.not192 = and i1 %4, %i.bp
  %i.br = icmp sgt i32 %i.bh, 0
  %or.cond.a = and i1 %brmerge.not192, %i.br
  br i1 %or.cond.a, label %.preheader155.us.us.preheader, label %._crit_edge.split

.preheader155.us.us.preheader:                    ; preds = %.preheader156.lr.ph
  %i.bs = sext i32 %i.ba to i64                   ; 5 uses
  %i.bt = zext nneg i32 %i.bh to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.bh, 3
  %ident.check.not = icmp eq i32 %i.ba, 1
  %or.cond194 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.bt, 2147483644              ; 4 uses
  %i.bu = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.bt
  br label %.preheader155.us.us

.preheader155.us.us:                              ; preds = %.preheader155.us.us.preheader, %._crit_edge161.split.us.us.us
  %.1137165.us.us = phi i32 [ %i.cn, %._crit_edge161.split.us.us.us ], [ 0, %.preheader155.us.us.preheader ]
  %.0142164.us.us = phi i32 [ %i.cm, %._crit_edge161.split.us.us.us ], [ %i.az, %.preheader155.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader155.us.us
  %.1139160.us.us.us = phi i32 [ 0, %.preheader155.us.us ], [ %i.cl, %._crit_edge.us.us.us ]
  %.1143159.us.us.us = phi i32 [ %.0142164.us.us, %.preheader155.us.us ], [ %i.ck, %._crit_edge.us.us.us ]
  %i.bv = sext i32 %.1143159.us.us.us to i64      ; 3 uses
  br i1 %or.cond194, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.preheader.us.us.us
  %i.bw = add nsw i64 %n.vec, %i.bv               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.v, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> %broadcast.splat, ptr %gep, align 8, !tbaa !26
  store <2 x double> %broadcast.splat, ptr %i.bx, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bv, %.preheader.us.us.us ], [ %i.bw, %middle.block ] ; 2 uses
  %.1141158.us.us.us.ph = phi i32 [ 0, %.preheader.us.us.us ], [ %i.bu, %middle.block ] ; 4 uses
  %i.bz = sub i32 %i.bh, %.1141158.us.us.us.ph
  %xtraiter = and i32 %i.bz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1141158.us.us.us.prol = phi i32 [ %i.cb, %scalar.ph.prol ], [ %.1141158.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv.prol
  store double %1, ptr %i.ca, align 8, !tbaa !26
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, %i.bs ; 3 uses
  %i.cb = add nuw nsw i32 %.1141158.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !57

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa195.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1141158.us.us.us.unr = phi i32 [ %.1141158.us.us.us.ph, %scalar.ph.preheader ], [ %i.cb, %scalar.ph.prol ]
  %i.cc = sub i32 %.1141158.us.us.us.ph, %i.bh
  %i.cd = icmp ugt i32 %i.cc, -4
  br i1 %i.cd, label %._crit_edge.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.1141158.us.us.us = phi i32 [ %i.ci, %scalar.ph ], [ %.1141158.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv
  store double %1, ptr %i.ce, align 8, !tbaa !26
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bs ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv.next
  store double %1, ptr %i.cf, align 8, !tbaa !26
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.bs ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv.next.1
  store double %1, ptr %i.cg, align 8, !tbaa !26
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.next.1, %i.bs ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv.next.2
  store double %1, ptr %i.ch, align 8, !tbaa !26
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.next.2, %i.bs ; 2 uses
  %i.ci = add nuw nsw i32 %.1141158.us.us.us, 4   ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ci, %i.bh
  br i1 %exitcond.not.3, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !58

._crit_edge.us.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.bw, %middle.block ], [ %indvars.iv.next.lcssa195.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.3, %scalar.ph ]
  %i.cj = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.ck = add nsw i32 %i.bq, %i.cj                ; 2 uses
  %i.cl = add nuw nsw i32 %.1139160.us.us.us, 1   ; 2 uses
  %exitcond181.not = icmp eq i32 %i.cl, %i.bi
  br i1 %exitcond181.not, label %._crit_edge161.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !59

._crit_edge161.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.cm = add nsw i32 %5, %i.ck
  %i.cn = add nuw nsw i32 %.1137165.us.us, 1      ; 2 uses
  %exitcond182.not = icmp eq i32 %i.cn, %i.bj
  br i1 %exitcond182.not, label %._crit_edge.split, label %.preheader155.us.us, !llvm.loop !60

._crit_edge.split:                                ; preds = %._crit_edge161.split.us.us.us, %.preheader156.lr.ph, %bb.f
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.co = load i32, ptr %i.b, align 8, !tbaa !64
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next184, %i.cp
  br i1 %i.cq, label %bb.b, label %._crit_edge175, !llvm.loop !61

._crit_edge175:                                   ; preds = %._crit_edge.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 0
}

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!8 = !{!"double", !5, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"any p2 pointer", !9, i64 0}
!11 = !{!"p2 _ZTS23hypre_StructGrid_struct", !10, i64 0}
!12 = !{!"p1 double", !9, i64 0}
!13 = !{!"p2 _ZTS25hypre_StructMatrix_struct", !10, i64 0}
!14 = !{!"p2 _ZTS25hypre_StructVector_struct", !10, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 4, !8, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !5, i64 48, !5, i64 60, !11, i64 72, !11, i64 80, !12, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !6, i64 200, !6, i64 204, !6, i64 208, !12, i64 216, !12, i64 224}
!16 = !{!15, !6, i64 204}
!17 = !{!15, !6, i64 4}
!18 = !{!15, !8, i64 8}
!19 = !{!15, !6, i64 208}
!20 = !{!15, !12, i64 216}
!21 = !{!15, !12, i64 224}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"p1 _ZTS23hypre_StructGrid_struct", !9, i64 0}
!24 = !{!15, !6, i64 16}
!25 = !{!15, !6, i64 200}
!26 = !{!8, !8, i64 0}
!27 = !{!15, !6, i64 0}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = !{!15, !6, i64 32}
!31 = !{!15, !10, i64 168}
!32 = !{!9, !9, i64 0}
!33 = !{!15, !10, i64 176}
!34 = !{!15, !10, i64 184}
!35 = !{!15, !10, i64 192}
!36 = !{!15, !14, i64 136}
!37 = !{!"p1 _ZTS25hypre_StructVector_struct", !9, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!15, !14, i64 144}
!40 = !{!15, !11, i64 72}
!41 = !{!23, !23, i64 0}
!42 = !{!15, !13, i64 96}
!43 = !{!"p1 _ZTS25hypre_StructMatrix_struct", !9, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!15, !14, i64 120}
!46 = !{!15, !14, i64 128}
!47 = !{!15, !11, i64 80}
!48 = !{!15, !13, i64 104}
!49 = !{!15, !13, i64 112}
!50 = !{!15, !12, i64 88}
!51 = !{!15, !6, i64 20}
!52 = !{!15, !6, i64 24}
!53 = !{!15, !6, i64 36}
!54 = !{!15, !6, i64 40}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22, !72, !73}
!57 = distinct !{!57, !74}
!58 = distinct !{!58, !22, !72}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !22}
!62 = !{!"p1 _ZTS16hypre_Box_struct", !9, i64 0}
!63 = !{!"hypre_BoxArray_struct", !62, i64 0, !6, i64 8, !6, i64 12}
!64 = !{!63, !6, i64 8}
end_hunk_0
