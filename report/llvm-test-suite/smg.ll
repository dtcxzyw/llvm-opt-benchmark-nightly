loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hypre_SMGSetNumPreRelax:bb.a
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.a, ptr %i.b, align 4, !tbaa !51
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_SMGSetNumPostRelax(ptr nofree noundef writeonly captures(none) initializes((40, 44)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.a, align 8, !tbaa !52
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_SMGSetBase(ptr nofree noundef writeonly captures(none) initializes((48, 72)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.c, ptr %i.a, align 4, !tbaa !4
  %i.d = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.d, ptr %i.b, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.f, ptr %i.g, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.i, ptr %i.j, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.l, ptr %i.m, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.o, ptr %i.p, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_SMGSetLogging(ptr nofree noundef writeonly captures(none) initializes((208, 212)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !20
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_SMGGetNumIterations(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  store i32 %i.b, ptr %1, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @hypre_SMGPrintLogging(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
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
  %i.m = load double, ptr %i.l, align 8, !tbaa !54
  %i.n = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.n, double noundef %i.m) ; 0 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = load double, ptr %i.p, align 8, !tbaa !54
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !48
  %i.j = icmp eq i32 %i.g, %i.i
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr [8 x i8], ptr %i.e, i64 %i.k
  %storemerge.in.idx = select i1 %i.j, i64 -8, i64 0
  %storemerge.in = getelementptr i8, ptr %i.l, i64 %storemerge.in.idx
  %storemerge = load double, ptr %storemerge.in, align 8, !tbaa !54
  store double %storemerge, ptr %1, align 8, !tbaa !54
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !56
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge177

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
  %indvars.iv185 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next186, %._crit_edge.split ] ; 4 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv185 ; 4 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv185 ; 5 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv185
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.u ; 6 uses
  %i.w = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.m, ptr noundef %3, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.x = load i32, ptr %i.m, align 4, !tbaa !4
  %i.y = load i32, ptr %i.p, align 4, !tbaa !4    ; 2 uses
  %i.z = sub i32 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4  ; 2 uses
  %i.ae = sub i32 %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = sub nsw i32 %i.ah, %i.ad                ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, -1                  ; 2 uses
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = sub nsw i32 %i.al, %i.an
  %i.ap = add nuw nsw i32 %i.ai, 1
  %i.aq = mul nsw i32 %i.ao, %i.ap
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ar = phi i32 [ %i.aq, %bb.c ], [ 0, %bb.b ]
  %i.as = load i32, ptr %i.af, align 4, !tbaa !4
  %i.at = sub nsw i32 %i.as, %i.y                 ; 2 uses
  %i.au = icmp sgt i32 %i.at, -1                  ; 2 uses
  %i.av = add nsw i32 %i.ae, %i.ar
  %i.aw = add nuw nsw i32 %i.at, 1                ; 3 uses
  %i.ax = mul nsw i32 %i.aw, %i.av
  %i.ay = select i1 %i.au, i32 %i.ax, i32 0
  %i.az = add i32 %i.z, %i.ay
  %i.ba = load i32, ptr %3, align 4, !tbaa !4     ; 2 uses
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !4
  %i.bc = mul nsw i32 %i.bb, %i.aw
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !4
  %i.be = mul nsw i32 %i.bd, %i.aw
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bf = phi i32 [ %i.bc, %bb.e ], [ 0, %bb.d ]
  %i.bg = phi i32 [ %i.be, %bb.e ], [ 0, %bb.d ]
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !4   ; 7 uses
  %i.bi = load i32, ptr %i.j, align 4, !tbaa !4   ; 3 uses
  %i.bj = load i32, ptr %i.k, align 4, !tbaa !4   ; 3 uses
  %.0130 = call i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bh)
  %.1131 = call i32 @llvm.smax.i32(i32 %i.bj, i32 %.0130)
  %i.bk = icmp sgt i32 %.1131, 0
  br i1 %i.bk, label %.preheader158.lr.ph, label %._crit_edge.split

.preheader158.lr.ph:                              ; preds = %bb.f
  %i.bl = add nuw nsw i32 %i.ai, 1
  %i.bm = mul nsw i32 %i.bg, %i.bl
  %i.bn = select i1 %i.aj, i32 %i.bm, i32 0
  %i.bo = icmp sgt i32 %i.bj, 0
  %i.bp = icmp sgt i32 %i.bi, 0
  %brmerge.not194 = and i1 %i.bo, %i.bp
  %i.bq = icmp sgt i32 %i.bh, 0
  %or.cond = and i1 %brmerge.not194, %i.bq
  br i1 %or.cond, label %.preheader157.us.us.preheader, label %._crit_edge.split

.preheader157.us.us.preheader:                    ; preds = %.preheader158.lr.ph
  %i.br = sext i32 %i.ba to i64                   ; 5 uses
  %i.bs = zext nneg i32 %i.bh to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.bh, 3
  %ident.check.not = icmp eq i32 %i.ba, 1
  %or.cond196 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.bs, 2147483644              ; 4 uses
  %i.bt = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.bs
  br label %.preheader157.us.us

.preheader157.us.us:                              ; preds = %.preheader157.us.us.preheader, %._crit_edge163.split.us.us.us
  %.0134167.us.us = phi i32 [ %i.az, %.preheader157.us.us.preheader ], [ %i.cl, %._crit_edge163.split.us.us.us ] ; 2 uses
  %.1144166.us.us = phi i32 [ 0, %.preheader157.us.us.preheader ], [ %i.ck, %._crit_edge163.split.us.us.us ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader157.us.us
  %.1135162.us.us.us = phi i32 [ %i.cj, %._crit_edge.us.us.us ], [ %.0134167.us.us, %.preheader157.us.us ] ; 2 uses
  %.1139161.us.us.us = phi i32 [ %i.ci, %._crit_edge.us.us.us ], [ 0, %.preheader157.us.us ]
  %i.bu = sext i32 %.1135162.us.us.us to i64      ; 3 uses
  br i1 %or.cond196, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.preheader.us.us.us
  %i.bv = add nsw i64 %n.vec, %i.bu
  %invariant.gep = getelementptr [8 x i8], ptr %i.v, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> %broadcast.splat, ptr %gep, align 8, !tbaa !54
  store <2 x double> %broadcast.splat, ptr %i.bw, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bu, %.preheader.us.us.us ], [ %i.bv, %middle.block ] ; 2 uses
  %.1137159.us.us.us.ph = phi i32 [ 0, %.preheader.us.us.us ], [ %i.bt, %middle.block ] ; 4 uses
  %i.by = sub i32 %i.bh, %.1137159.us.us.us.ph
  %xtraiter = and i32 %i.by, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1137159.us.us.us.prol = phi i32 [ %i.ca, %scalar.ph.prol ], [ %.1137159.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv.prol
  store double %1, ptr %i.bz, align 8, !tbaa !54
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, %i.br ; 2 uses
  %i.ca = add nuw nsw i32 %.1137159.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !69

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1137159.us.us.us.unr = phi i32 [ %.1137159.us.us.us.ph, %scalar.ph.preheader ], [ %i.ca, %scalar.ph.prol ]
  %i.cb = sub i32 %.1137159.us.us.us.ph, %i.bh
  %i.cc = icmp ugt i32 %i.cb, -4
  br i1 %i.cc, label %._crit_edge.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.1137159.us.us.us = phi i32 [ %i.ch, %scalar.ph ], [ %.1137159.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv
  store double %1, ptr %i.cd, align 8, !tbaa !54
  %indvars.iv.next.a = add nsw i64 %indvars.iv, %i.br ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv.next.a
  store double %1, ptr %i.ce, align 8, !tbaa !54
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next.a, %i.br ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv.next.1
  store double %1, ptr %i.cf, align 8, !tbaa !54
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.next.1, %i.br ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv.next.2
  store double %1, ptr %i.cg, align 8, !tbaa !54
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.next.2, %i.br
  %i.ch = add nuw nsw i32 %.1137159.us.us.us, 4   ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ch, %i.bh
  br i1 %exitcond.not.3, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !71

._crit_edge.us.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ci = add nuw nsw i32 %.1139161.us.us.us, 1   ; 2 uses
  %i.cj = add i32 %.1135162.us.us.us, %i.bf
  %exitcond183.not = icmp eq i32 %i.ci, %i.bi
  br i1 %exitcond183.not, label %._crit_edge163.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !72

._crit_edge163.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.ck = add nuw nsw i32 %.1144166.us.us, 1      ; 2 uses
  %i.cl = add i32 %.0134167.us.us, %i.bn
  %exitcond184.not = icmp eq i32 %i.ck, %i.bj
  br i1 %exitcond184.not, label %._crit_edge.split, label %.preheader157.us.us, !llvm.loop !73

._crit_edge.split:                                ; preds = %._crit_edge163.split.us.us.us, %.preheader158.lr.ph, %bb.f
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.cm = load i32, ptr %i.b, align 8, !tbaa !56
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next186, %i.cn
  br i1 %i.co, label %bb.b, label %._crit_edge177, !llvm.loop !74

._crit_edge177:                                   ; preds = %._crit_edge.split, %bb.a
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"", !5, i64 0, !5, i64 4, !10, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !6, i64 48, !6, i64 60, !11, i64 72, !11, i64 80, !14, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !14, i64 216, !14, i64 224}
!10 = !{!"double", !6, i64 0}
!11 = !{!"p2 _ZTS23hypre_StructGrid_struct", !12, i64 0}
!12 = !{!"any p2 pointer", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 double", !13, i64 0}
!15 = !{!"p2 _ZTS25hypre_StructMatrix_struct", !12, i64 0}
!16 = !{!"p2 _ZTS25hypre_StructVector_struct", !12, i64 0}
!17 = !{!9, !5, i64 204}
!18 = !{!9, !5, i64 4}
!19 = !{!9, !10, i64 8}
!20 = !{!9, !5, i64 208}
!21 = !{!9, !14, i64 216}
!22 = !{!9, !14, i64 224}
!23 = !{!9, !5, i64 32}
!24 = !{!9, !12, i64 168}
!25 = !{!13, !13, i64 0}
!26 = !{!9, !12, i64 176}
!27 = !{!9, !12, i64 184}
!28 = !{!9, !12, i64 192}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!9, !16, i64 136}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTS25hypre_StructVector_struct", !13, i64 0}
!34 = !{!9, !16, i64 144}
!35 = !{!9, !11, i64 72}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 _ZTS23hypre_StructGrid_struct", !13, i64 0}
!38 = !{!9, !15, i64 96}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTS25hypre_StructMatrix_struct", !13, i64 0}
!41 = !{!9, !16, i64 120}
!42 = !{!9, !16, i64 128}
!43 = !{!9, !11, i64 80}
!44 = !{!9, !15, i64 104}
!45 = !{!9, !15, i64 112}
!46 = distinct !{!46, !30}
!47 = !{!9, !14, i64 88}
!48 = !{!9, !5, i64 16}
!49 = !{!9, !5, i64 20}
!50 = !{!9, !5, i64 24}
!51 = !{!9, !5, i64 36}
!52 = !{!9, !5, i64 40}
!53 = !{!9, !5, i64 200}
!54 = !{!10, !10, i64 0}
!55 = distinct !{!55, !30}
!56 = !{!57, !5, i64 8}
!57 = !{!"hypre_BoxArray_struct", !58, i64 0, !5, i64 8, !5, i64 12}
!58 = !{!"p1 _ZTS16hypre_Box_struct", !13, i64 0}
!59 = !{!57, !58, i64 0}
!60 = !{!61, !62, i64 16}
!61 = !{!"hypre_StructVector_struct", !5, i64 0, !37, i64 8, !62, i64 16, !14, i64 24, !5, i64 32, !5, i64 36, !63, i64 40, !6, i64 48, !5, i64 72, !5, i64 76}
!62 = !{!"p1 _ZTS21hypre_BoxArray_struct", !13, i64 0}
!63 = !{!"p1 int", !13, i64 0}
!64 = !{!61, !14, i64 24}
!65 = !{!61, !63, i64 40}
!66 = distinct !{!66, !30, !67, !68}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = distinct !{!71, !30, !67}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !30}
end_hunk_0
