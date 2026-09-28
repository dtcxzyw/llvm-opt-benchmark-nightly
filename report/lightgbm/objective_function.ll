Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4075
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNK8LightGBM16RegressionL1loss12GetGradientsEPKdPfS3_.omp_outlined:bb.a
  %i.at = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.au = load float, ptr %i.at, align 4, !tbaa !169
  %i.av = fpext float %i.au to double
  %i.aw = fsub double %i.as, %i.av                ; 2 uses
  %i.ax = fcmp ogt double %i.aw, 0.000000e+00
  %i.ay = zext i1 %i.ax to i32
  %i.az = fcmp olt double %i.aw, 0.000000e+00
  %.neg.i = sext i1 %i.az to i32
  %i.ba = add nsw i32 %.neg.i, %i.ay
  %i.bb = sitofp i32 %i.ba to float
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  store float %i.bb, ptr %i.bc, align 4, !tbaa !169
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.bd, align 4, !tbaa !169
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !406

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RegressionL1loss12GetGradientsEPKdPfS3_.omp_outlined.25(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !217  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.h, ptr %i.b, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !204
  %i.i = load i32, ptr %0, align 4, !tbaa !204    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !204
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 5 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !204
  %i.l = load i32, ptr %i.a, align 4, !tbaa !204  ; 4 uses
  %.not20 = icmp sgt i32 %i.l, %i.k
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !222    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !221  ; 4 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !220    ; 4 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !220    ; 4 uses
  %i.t = sext i32 %i.l to i64                     ; 6 uses
  %i.u = add nsw i32 %i.k, 1
  %i.v = sub i32 %i.k, %i.l                       ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 11
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.y = shl nsw i64 %i.t, 2                      ; 4 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.y ; 3 uses
  %i.z = sub i32 %i.k, %i.l
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nsw i64 %i.t, %i.aa
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = add nsw i64 %i.ac, 4                    ; 4 uses
  %scevgep25 = getelementptr i8, ptr %i.r, i64 %i.ad ; 3 uses
  %scevgep26 = getelementptr i8, ptr %i.s, i64 %i.y ; 3 uses
  %scevgep27 = getelementptr i8, ptr %i.s, i64 %i.ad ; 3 uses
  %scevgep28 = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %scevgep29 = getelementptr i8, ptr %i.o, i64 %i.ad ; 2 uses
  %scevgep30 = getelementptr i8, ptr %i.q, i64 %i.y ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep27
  %bound1 = icmp ult ptr %scevgep26, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %scevgep, %scevgep29
  %bound133 = icmp ult ptr %scevgep28, %scevgep25
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  %bound035 = icmp ult ptr %scevgep, %scevgep31
  %bound136 = icmp ult ptr %scevgep30, %scevgep25
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx38 = or i1 %conflict.rdx, %found.conflict37
  %bound039 = icmp ult ptr %scevgep26, %scevgep29
  %bound140 = icmp ult ptr %scevgep28, %scevgep27
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx42 = or i1 %conflict.rdx38, %found.conflict41
  %bound043 = icmp ult ptr %scevgep26, %scevgep31
  %bound144 = icmp ult ptr %scevgep30, %scevgep27
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx46 = or i1 %conflict.rdx42, %found.conflict45
  br i1 %conflict.rdx46, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 8589934590               ; 3 uses
  %i.ae = add nsw i64 %n.vec, %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = add i64 %index, %i.t                    ; 5 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.af
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !191
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.af
  %wide.load47 = load <2 x float>, ptr %i.ah, align 4, !tbaa !169, !alias.scope !414
  %i.ai = fpext <2 x float> %wide.load47 to <2 x double>
  %i.aj = fsub <2 x double> %wide.load, %i.ai     ; 2 uses
  %i.ak = fcmp ogt <2 x double> %i.aj, zeroinitializer
  %i.al = zext <2 x i1> %i.ak to <2 x i32>
  %i.am = fcmp olt <2 x double> %i.aj, zeroinitializer
  %i.an = sext <2 x i1> %i.am to <2 x i32>
  %i.ao = add nsw <2 x i32> %i.an, %i.al
  %i.ap = sitofp <2 x i32> %i.ao to <2 x float>
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.af
  %wide.load48 = load <2 x float>, ptr %i.aq, align 4, !tbaa !169, !alias.scope !415 ; 2 uses
  %i.ar = fmul <2 x float> %wide.load48, %i.ap
  %i.as = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.af
  store <2 x float> %i.ar, ptr %i.as, align 4, !tbaa !169, !alias.scope !416, !noalias !417
  %i.at = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.af
  store <2 x float> %wide.load48, ptr %i.at, align 4, !tbaa !169, !alias.scope !418, !noalias !419
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !412

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph ], [ %i.ae, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.aw = load double, ptr %i.av, align 8, !tbaa !191
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !169
  %i.az = fpext float %i.ay to double
  %i.ba = fsub double %i.aw, %i.az                ; 2 uses
  %i.bb = fcmp ogt double %i.ba, 0.000000e+00
  %i.bc = zext i1 %i.bb to i32
  %i.bd = fcmp olt double %i.ba, 0.000000e+00
  %.neg.i = sext i1 %i.bd to i32
  %i.be = add nsw i32 %.neg.i, %i.bc
  %i.bf = sitofp i32 %i.be to float
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !169
  %i.bi = fmul float %i.bh, %i.bf
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv
  store float %i.bi, ptr %i.bj, align 4, !tbaa !169
  %i.bk = load float, ptr %i.bg, align 4, !tbaa !169
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %i.bk, ptr %i.bl, align 4, !tbaa !169
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.u, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !413

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %.not44 = icmp slt i32 %1, %i.a
  br i1 %.not44, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !192    ; 19 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.c = phi i32 [ %i.a, %.lr.ph ], [ %i.br, %tailrecurse ] ; 3 uses
  %.tr3646 = phi i32 [ %2, %.lr.ph ], [ %spec.select38, %tailrecurse ] ; 2 uses
  %.tr3545 = phi i32 [ %1, %.lr.ph ], [ %spec.select, %tailrecurse ] ; 7 uses
  %i.d = add nsw i32 %.tr3545, -1                 ; 3 uses
  %i.e = sext i32 %i.c to i64                     ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !191 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.i ], [ 0, %bb.b ] ; 3 uses
  %.076.i.ph = phi i32 [ %i.t, %bb.i ], [ %i.d, %bb.b ]
  %.074.i.ph = phi i64 [ %indvars.iv.next115.i, %bb.i ], [ %i.e, %bb.b ]
  %.072.i.ph = phi i32 [ %.173.i, %bb.i ], [ %i.d, %bb.b ]
  %.071.i.ph = phi i32 [ %i.ac, %bb.i ], [ %i.c, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.h
  %.076.i = phi i32 [ %i.t, %bb.h ], [ %.076.i.ph, %.outer ] ; 2 uses
  %.074.i = phi i64 [ %indvars.iv.next115.i, %bb.h ], [ %.074.i.ph, %.outer ]
  %.072.i = phi i32 [ %.173.i, %bb.h ], [ %.072.i.ph, %.outer ] ; 6 uses
  %i.h = sext i32 %.076.i to i64
  %i.i = add i32 %.076.i, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv127.i = phi i32 [ %indvars.iv.next128.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !191 ; 4 uses
  %i.l = fcmp ogt double %i.k, %i.g
  %indvars.iv.next128.i = add i32 %indvars.iv127.i, 1
  br i1 %i.l, label %bb.d, label %.preheader.i.preheader, !llvm.loop !420

.preheader.i.preheader:                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %.preheader.i ], [ %.074.i, %.preheader.i.preheader ]
  %indvars.iv.next115.i = add nsw i64 %indvars.iv114.i, -1 ; 7 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next115.i
  %i.o = load double, ptr %i.n, align 8, !tbaa !191 ; 2 uses
  %i.p = fcmp ule double %i.g, %i.o
  %i.q = trunc nsw i64 %indvars.iv.next115.i to i32
  %i.r = icmp eq i32 %.tr3545, %i.q
  %or.cond.i = or i1 %i.p, %i.r
  br i1 %or.cond.i, label %bb.e, label %.preheader.i, !llvm.loop !421

bb.e:                                             ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next115.i ; 3 uses
  %i.t = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  %.not85.i = icmp slt i64 %indvars.iv.next.i, %indvars.iv.next115.i
  br i1 %.not85.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store double %i.o, ptr %i.m, align 8, !tbaa !191
  store double %i.k, ptr %i.s, align 8, !tbaa !191
  %i.u = load double, ptr %i.m, align 8, !tbaa !191 ; 2 uses
  %i.v = fcmp oeq double %i.u, %i.g
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %.072.i, 1                   ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !191
  store double %i.u, ptr %i.y, align 8, !tbaa !191
  store double %i.z, ptr %i.m, align 8, !tbaa !191
  %.pre.i = load double, ptr %i.s, align 8, !tbaa !191
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi double [ %.pre.i, %bb.g ], [ %i.k, %bb.f ] ; 2 uses
  %.173.i = phi i32 [ %i.w, %bb.g ], [ %.072.i, %bb.f ] ; 2 uses
  %i.ab = fcmp oeq double %i.g, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.c, !llvm.loop !422

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %.071.i.ph, -1              ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !191
  store double %i.af, ptr %i.s, align 8, !tbaa !191
  store double %i.aa, ptr %i.ae, align 8, !tbaa !191
  %indvar.next = add i64 %indvar, 1
  br label %.outer, !llvm.loop !422

bb.j:                                             ; preds = %bb.e
  %i.ag = trunc nsw i64 %indvars.iv.i to i32      ; 2 uses
  %i.ah = load double, ptr %i.f, align 8, !tbaa !191
  store double %i.ah, ptr %i.m, align 8, !tbaa !191
  store double %i.k, ptr %i.f, align 8, !tbaa !191
  %i.ai = add nsw i32 %i.ag, 2
  %.not8696.i = icmp sgt i32 %.tr3545, %.072.i
  br i1 %.not8696.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.aj = sext i32 %.tr3545 to i64                ; 3 uses
  %i.ak = add i32 %.072.i, 1
  %i.al = sub i32 %.072.i, %.tr3545
  %i.am = and i32 %i.al, 1
  %lcmp.mod.not.not = icmp eq i32 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aj ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.ap = load double, ptr %i.an, align 8, !tbaa !191
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !191
  store double %i.aq, ptr %i.an, align 8, !tbaa !191
  store double %i.ap, ptr %i.ao, align 8, !tbaa !191
  %indvars.iv.next118.i.prol = add nsw i64 %i.aj, 1
  %indvars.iv.next120.i.prol = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.next120.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %indvars.iv.next120.i.prol, %.lr.ph.i.prol ]
  %indvars.iv119.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next120.i.prol, %.lr.ph.i.prol ]
  %indvars.iv117.i.unr = phi i64 [ %i.aj, %.lr.ph.preheader.i ], [ %indvars.iv.next118.i.prol, %.lr.ph.i.prol ]
  %i.ar = icmp eq i32 %.072.i, %.tr3545
  br i1 %i.ar, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %indvars.iv.next120.i.lcssa = phi i64 [ %indvars.iv.next120.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %indvars.iv.next120.i.1, %.lr.ph.i ]
  %i.as = trunc nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.j
  %.2.lcssa.i = phi i32 [ %i.ag, %bb.j ], [ %i.as, %._crit_edge.loopexit.i ] ; 3 uses
  %i.at = add nsw i32 %.tr3646, -2                ; 2 uses
  %.not8799.i = icmp slt i32 %i.at, %.071.i.ph
  br i1 %.not8799.i, label %_ZN8LightGBM9ArrayArgsIdE9PartitionEPSt6vectorIdSaIdEEiiPiS6_.exit, label %.lr.ph103.preheader.i

.lr.ph103.preheader.i:                            ; preds = %._crit_edge.i
  %i.au = sext i32 %i.at to i64                   ; 5 uses
  %i.av = sext i32 %.071.i.ph to i64
  %i.aw = sext i32 %indvars.iv127.i to i64        ; 3 uses
  %.neg = sub nsw i64 %i.e, %i.au
  %4 = add nsw i64 %i.au, %i.e
  %5 = sub i64 %4, %indvar
  %6 = and i64 %5, 1
  %lcmp.mod83.not.not = icmp eq i64 %6, 0
  br i1 %lcmp.mod83.not.not, label %.lr.ph103.i.prol, label %.lr.ph103.i.prol.loopexit

.lr.ph103.i.prol:                                 ; preds = %.lr.ph103.preheader.i
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw ; 2 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.au ; 2 uses
  %9 = load double, ptr %7, align 8, !tbaa !191
  %10 = load double, ptr %8, align 8, !tbaa !191
  store double %10, ptr %7, align 8, !tbaa !191
  store double %9, ptr %8, align 8, !tbaa !191
  %indvars.iv.next126.i.prol = add nsw i64 %i.au, -1
  %indvars.iv.next130.i.prol = add nsw i64 %i.aw, 1 ; 2 uses
  br label %.lr.ph103.i.prol.loopexit

.lr.ph103.i.prol.loopexit:                        ; preds = %.lr.ph103.i.prol, %.lr.ph103.preheader.i
  %indvars.iv129.i.unr = phi i64 [ %i.aw, %.lr.ph103.preheader.i ], [ %indvars.iv.next130.i.prol, %.lr.ph103.i.prol ]
  %indvars.iv125.i.unr = phi i64 [ %i.au, %.lr.ph103.preheader.i ], [ %indvars.iv.next126.i.prol, %.lr.ph103.i.prol ]
  %indvars.iv.next130.i.lcssa.unr = phi i64 [ poison, %.lr.ph103.preheader.i ], [ %indvars.iv.next130.i.prol, %.lr.ph103.i.prol ]
  %11 = icmp eq i64 %indvar, %.neg
  br i1 %11, label %.loopexit.loopexit.i, label %.lr.ph103.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.1, %.lr.ph.i ], [ %indvars.iv119.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.i.1, %.lr.ph.i ], [ %indvars.iv117.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv117.i ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv119.i ; 2 uses
  %i.az = load double, ptr %i.ax, align 8, !tbaa !191
  %i.ba = load double, ptr %i.ay, align 8, !tbaa !191
  store double %i.ba, ptr %i.ax, align 8, !tbaa !191
  store double %i.az, ptr %i.ay, align 8, !tbaa !191
  %i.bb = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv117.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv119.i
  %i.be = getelementptr i8, ptr %i.bd, i64 -8     ; 2 uses
  %i.bf = load double, ptr %i.bc, align 8, !tbaa !191
  %i.bg = load double, ptr %i.be, align 8, !tbaa !191
  store double %i.bg, ptr %i.bc, align 8, !tbaa !191
  store double %i.bf, ptr %i.be, align 8, !tbaa !191
  %indvars.iv.next118.i.1 = add nsw i64 %indvars.iv117.i, 2 ; 2 uses
  %indvars.iv.next120.i.1 = add nsw i64 %indvars.iv119.i, -2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next118.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %i.ak, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !423

.lr.ph103.i:                                      ; preds = %.lr.ph103.i.prol.loopexit, %.lr.ph103.i
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %.lr.ph103.i ], [ %indvars.iv129.i.unr, %.lr.ph103.i.prol.loopexit ] ; 3 uses
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i.a, %.lr.ph103.i ], [ %indvars.iv125.i.unr, %.lr.ph103.i.prol.loopexit ] ; 3 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv129.i ; 2 uses
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv125.i ; 2 uses
  %14 = load double, ptr %12, align 8, !tbaa !191
  %15 = load double, ptr %13, align 8, !tbaa !191
  store double %15, ptr %12, align 8, !tbaa !191
  store double %14, ptr %13, align 8, !tbaa !191
  %indvars.iv.next126.i = add nsw i64 %indvars.iv125.i, -1 ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv129.i
  %16 = getelementptr i8, ptr %i.bh, i64 8        ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next126.i ; 2 uses
  %i.bj = load double, ptr %16, align 8, !tbaa !191
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !191
  store double %i.bk, ptr %16, align 8, !tbaa !191
  store double %i.bj, ptr %i.bi, align 8, !tbaa !191
  %indvars.iv.next126.i.a = add nsw i64 %indvars.iv125.i, -2
  %indvars.iv.next130.i = add nsw i64 %indvars.iv129.i, 2 ; 2 uses
  %.not87.not.i = icmp sgt i64 %indvars.iv.next126.i, %i.av
  br i1 %.not87.not.i, label %.lr.ph103.i, label %.loopexit.loopexit.i, !llvm.loop !424

.loopexit.loopexit.i:                             ; preds = %.lr.ph103.i, %.lr.ph103.i.prol.loopexit
  %indvars.iv.next130.i.lcssa = phi i64 [ %indvars.iv.next130.i.lcssa.unr, %.lr.ph103.i.prol.loopexit ], [ %indvars.iv.next130.i, %.lr.ph103.i ]
  %i.bl = trunc nsw i64 %indvars.iv.next130.i.lcssa to i32
  br label %_ZN8LightGBM9ArrayArgsIdE9PartitionEPSt6vectorIdSaIdEEiiPiS6_.exit

_ZN8LightGBM9ArrayArgsIdE9PartitionEPSt6vectorIdSaIdEEiiPiS6_.exit: ; preds = %._crit_edge.i, %.loopexit.loopexit.i
  %storemerge.i = phi i32 [ %i.bl, %.loopexit.loopexit.i ], [ %i.ai, %._crit_edge.i ] ; 3 uses
  %i.bm = icmp sgt i32 %3, %.2.lcssa.i            ; 3 uses
  %i.bn = icmp slt i32 %3, %storemerge.i
  %or.cond = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %_ZN8LightGBM9ArrayArgsIdE9PartitionEPSt6vectorIdSaIdEEiiPiS6_.exit
  %i.bo = icmp eq i32 %.2.lcssa.i, %i.d
  %i.bp = icmp eq i32 %storemerge.i, %i.c
  %or.cond29 = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond29, label %._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.k
  %i.bq = add nsw i32 %.2.lcssa.i, 1
  %spec.select = select i1 %i.bm, i32 %storemerge.i, i32 %.tr3545 ; 3 uses
  %spec.select38 = select i1 %i.bm, i32 %.tr3646, i32 %i.bq ; 2 uses
  %i.br = add nsw i32 %spec.select38, -1          ; 2 uses
  %.not = icmp slt i32 %spec.select, %i.br
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %tailrecurse, %_ZN8LightGBM9ArrayArgsIdE9PartitionEPSt6vectorIdSaIdEEiiPiS6_.exit, %bb.k, %bb.a
  %.1 = phi i32 [ %1, %bb.a ], [ %3, %_ZN8LightGBM9ArrayArgsIdE9PartitionEPSt6vectorIdSaIdEEiiPiS6_.exit ], [ %3, %bb.k ], [ %spec.select, %tailrecurse ]
  ret i32 %.1
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN8LightGBM9ArrayArgsIdE8ArgMaxMTERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.51", align 8    ; 12 uses
  %2 = alloca %"class.std::function.56", align 8  ; 12 uses
  %i.a = tail call i32 @OMP_NUM_THREADS()         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #37
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i, label %.noexc17

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %.loopexit

.noexc17:                                         ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #34 ; 4 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !245
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !246
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !170
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc17, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.h, %.noexc17 ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !247
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !193
  %i.l = load ptr, ptr %0, align 8, !tbaa !192
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %0, ptr %2, align 8, !tbaa !248
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !250
  store ptr @_ZNSt17_Function_handlerIFvimmEZN8LightGBM9ArrayArgsIdE8ArgMaxMTERKSt6vectorIdSaIdEEEUlimmE_E9_M_invokeERKSt9_Any_dataOiOmSF_, ptr %i.r, align 8, !tbaa !252
  store ptr @_ZNSt17_Function_handlerIFvimmEZN8LightGBM9ArrayArgsIdE8ArgMaxMTERKSt6vectorIdSaIdEEEUlimmE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.q, align 8, !tbaa !153
  %i.s = invoke noundef i32 @_ZN8LightGBM9Threading3ForImEEiT_S2_S2_RKSt8functionIFviS2_S2_EE(i64 noundef 0, i64 noundef %i.p, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %.loopexit
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !153  ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.x = load ptr, ptr %1, align 8, !tbaa !245    ; 6 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !170  ; 4 uses
  %i.z = icmp sgt i32 %i.s, 1
  br i1 %i.z, label %.lr.ph, label %_ZNSt6vectorImSaImEED2Ev.exit

.lr.ph:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !192   ; 4 uses
  %wide.trip.count = zext nneg i32 %i.s to i64
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !191 ; 2 uses
  %i.ab = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ac = icmp eq i32 %i.s, 2
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ab, -2
  br label %bb.i

_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi double [ %.pre, %.lr.ph ], [ %i.bl, %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa ]
  %.01323.epil.init = phi i64 [ %i.y, %.lr.ph ], [ %spec.select.1, %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod31)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.epil.init
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !170 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !191
  %i.ah = fcmp ogt double %i.ag, %.epil.init
  %spec.select.epil = select i1 %i.ah, i64 %i.ae, i64 %.01323.epil.init
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.epil.preheader, %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa, %_ZNSt14_Function_baseD2Ev.exit
  %.013.lcssa = phi i64 [ %i.y, %_ZNSt14_Function_baseD2Ev.exit ], [ %spec.select.1, %_ZNSt6vectorImSaImEED2Ev.exit.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !246
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.x to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.am) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i64 %.013.lcssa

bb.e:                                             ; preds = %.loopexit
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !153 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ao, null
  br i1 %.not.i18, label %_ZNSt14_Function_baseD2Ev.exit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit19 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit19:                 ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.as = load ptr, ptr %1, align 8, !tbaa !245   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorImSaImEED2Ev.exit21, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit19
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !246
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit21

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %i.ay = phi double [ %.pre, %.lr.ph.new ], [ %i.bl, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 3 uses
  %.01323 = phi i64 [ %i.y, %.lr.ph.new ], [ %spec.select.1, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !170 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !191 ; 2 uses
  %i.bd = fcmp ogt double %i.bc, %i.ay            ; 2 uses
  %spec.select = select i1 %i.bd, i64 %i.ba, i64 %.01323
  %i.be = select i1 %i.bd, double %i.bc, double %i.ay ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
end_hunk_0
begin_hunk_1_@_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEEvT_SK_SK_T0_SL_T1_SL_T2_:bb.a
_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE0_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_RT0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.018.i = phi i64 [ %i.o, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE0_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_RT0_.exit.i ] ; 2 uses
  %.sroa.011.017.i = phi ptr [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE0_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_RT0_.exit.i ] ; 2 uses
  %i.t = lshr i64 %.018.i, 1                      ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.017.i, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !204
  %i.w = load i32, ptr %i.k, align 4, !tbaa !204
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !218
  %i.y = load ptr, ptr %.sroa.074.sroa.3.0.copyload, align 8, !tbaa !240
  %i.z = load ptr, ptr %.sroa.074.sroa.4.0.copyload, align 8, !tbaa !240
  %i.aa = sext i32 %i.v to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !204
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.x, ptr %i.g, align 8, !tbaa !220
  store i32 %i.af, ptr %i.h, align 4, !tbaa !204
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !153
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit.i.i.i

bb.d:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit.i.i.i:       ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !242
  %i.ai = call noundef double %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.074.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h), !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !218
  %i.ak = load ptr, ptr %.sroa.074.sroa.3.0.copyload, align 8, !tbaa !240
  %i.al = load ptr, ptr %.sroa.074.sroa.4.0.copyload, align 8, !tbaa !240
  %i.am = sext i32 %i.w to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !204
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !220
  store i32 %i.ar, ptr %i.f, align 4, !tbaa !204
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !153
  %.not.i.i2.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i2.i.i.i, label %bb.e, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE0_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_RT0_.exit.i

bb.e:                                             ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE0_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_RT0_.exit.i: ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit.i.i.i
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !242
  %i.au = call noundef double %i.at(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.074.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f), !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.av = fcmp olt double %i.ai, %i.au            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ax = xor i64 %i.t, -1
  %i.ay = add nsw i64 %.018.i, %i.ax
  %.sroa.011.1.i = select i1 %i.av, ptr %i.aw, ptr %.sroa.011.017.i ; 3 uses
  %.1.i = select i1 %i.av, i64 %i.ay, i64 %i.t    ; 2 uses
  %i.az = icmp sgt i64 %.1.i, 0
  br i1 %i.az, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit.loopexit, !llvm.loop !21

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit.loopexit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE0_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_RT0_.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %i.m, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ba = sub i64 %.pre-phi, %i.m
  %i.bb = ashr exact i64 %i.ba, 2
  br label %bb.h

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.c
  %i.bc = sdiv i64 %4, 2                          ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bc ; 2 uses
  %i.be = ptrtoint ptr %1 to i64
  %i.bf = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2                 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !266
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.2.0.copyload, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.074.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.074.sroa.0.0.copyload, i64 24 ; 2 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i63

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i63: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE0_EclIS9_NS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.018.i64 = phi i64 [ %i.bh, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.1.i72, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE0_EclIS9_NS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i ] ; 2 uses
  %.sroa.011.017.i65 = phi ptr [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.sroa.011.1.i71, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE0_EclIS9_NS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i ] ; 2 uses
  %i.bm = lshr i64 %.018.i64, 1                   ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.017.i65, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bd, align 4, !tbaa !204
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !204
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !218
  %i.br = load ptr, ptr %.sroa.074.sroa.3.0.copyload, align 8, !tbaa !240
  %i.bs = load ptr, ptr %.sroa.074.sroa.4.0.copyload, align 8, !tbaa !240
  %i.bt = sext i32 %i.bo to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !204
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !220
  store i32 %i.by, ptr %i.d, align 4, !tbaa !204
  %i.bz = load ptr, ptr %i.bk, align 8, !tbaa !153
  %.not.i.i.i.i.i68 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i68, label %bb.f, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit.i.i.i69

bb.f:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i63
  call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit.i.i.i69:     ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i63
  %i.ca = load ptr, ptr %i.bl, align 8, !tbaa !242
  %i.cb = call noundef double %i.ca(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.074.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !218
  %i.cd = load ptr, ptr %.sroa.074.sroa.3.0.copyload, align 8, !tbaa !240
  %i.ce = load ptr, ptr %.sroa.074.sroa.4.0.copyload, align 8, !tbaa !240
  %i.cf = sext i32 %i.bp to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !204
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !220
  store i32 %i.ck, ptr %i.b, align 4, !tbaa !204
  %i.cl = load ptr, ptr %i.bk, align 8, !tbaa !153
  %.not.i.i2.i.i.i70 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i2.i.i.i70, label %bb.g, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE0_EclIS9_NS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i

bb.g:                                             ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit.i.i.i69
  call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE0_EclIS9_NS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i: ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit.i.i.i69
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !242
  %i.cn = call noundef double %i.cm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.074.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.co = fcmp olt double %i.cb, %i.cn            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.cq = xor i64 %i.bm, -1
  %i.cr = add nsw i64 %.018.i64, %i.cq
  %.sroa.011.1.i71 = select i1 %i.co, ptr %.sroa.011.017.i65, ptr %i.cp ; 3 uses
  %.1.i72 = select i1 %i.co, i64 %i.bm, i64 %i.cr ; 2 uses
  %i.cs = icmp sgt i64 %.1.i72, 0
  br i1 %i.cs, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i63, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit.loopexit, !llvm.loop !23

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit.loopexit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSA_iEUliiE0_EclIS9_NS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i
  %.pre97 = ptrtoint ptr %.sroa.011.1.i71 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi98 = phi i64 [ %.pre97, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %i.bf, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.sroa.011.0.lcssa.i61 = phi ptr [ %.sroa.011.1.i71, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.ct = sub i64 %.pre-phi98, %i.bf
  %i.cu = ashr exact i64 %i.ct, 2
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit
  %.sroa.079.0 = phi ptr [ %i.k, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i61, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.sroa.076.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit ], [ %i.bd, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.052 = phi i64 [ %i.bb, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit ], [ %i.bc, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.j, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit ], [ %i.cu, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %i.cv = sub nsw i64 %3, %.0                     ; 2 uses
  %i.cw = call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lET_S7_S7_S7_T1_S8_T0_S8_(ptr %.sroa.079.0, ptr %1, ptr %.sroa.076.0, i64 noundef %i.cv, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 2 uses
  call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEEvT_SK_SK_T0_SL_T1_SL_T2_(ptr %0, ptr %.sroa.079.0, ptr %i.cw, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.59") align 8 %7)
  %i.cx = sub nsw i64 %4, %.052
  call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEEvT_SK_SK_T0_SL_T1_SL_T2_(ptr %i.cw, ptr %.sroa.076.0, ptr %2, i64 noundef %i.cv, i64 noundef %i.cx, ptr noundef %5, i64 noundef %6, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.59") align 8 %7)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8LightGBM9ArrayArgsIfE9ArgMaxAtKEPSt6vectorIfSaIfEEiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %.not44 = icmp slt i32 %1, %i.a
  br i1 %.not44, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !174    ; 19 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.c = phi i32 [ %i.a, %.lr.ph ], [ %i.br, %tailrecurse ] ; 3 uses
  %.tr3646 = phi i32 [ %2, %.lr.ph ], [ %spec.select38, %tailrecurse ] ; 2 uses
  %.tr3545 = phi i32 [ %1, %.lr.ph ], [ %spec.select, %tailrecurse ] ; 7 uses
  %i.d = add nsw i32 %.tr3545, -1                 ; 3 uses
  %i.e = sext i32 %i.c to i64                     ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !169 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.i ], [ 0, %bb.b ] ; 3 uses
  %.076.i.ph = phi i32 [ %i.t, %bb.i ], [ %i.d, %bb.b ]
  %.074.i.ph = phi i64 [ %indvars.iv.next115.i, %bb.i ], [ %i.e, %bb.b ]
  %.072.i.ph = phi i32 [ %.173.i, %bb.i ], [ %i.d, %bb.b ]
  %.071.i.ph = phi i32 [ %i.ac, %bb.i ], [ %i.c, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.h
  %.076.i = phi i32 [ %i.t, %bb.h ], [ %.076.i.ph, %.outer ] ; 2 uses
  %.074.i = phi i64 [ %indvars.iv.next115.i, %bb.h ], [ %.074.i.ph, %.outer ]
  %.072.i = phi i32 [ %.173.i, %bb.h ], [ %.072.i.ph, %.outer ] ; 6 uses
  %i.h = sext i32 %.076.i to i64
  %i.i = add i32 %.076.i, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv127.i = phi i32 [ %indvars.iv.next128.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !169 ; 4 uses
  %i.l = fcmp ogt float %i.k, %i.g
  %indvars.iv.next128.i = add i32 %indvars.iv127.i, 1
  br i1 %i.l, label %bb.d, label %.preheader.i.preheader, !llvm.loop !490

.preheader.i.preheader:                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %.preheader.i ], [ %.074.i, %.preheader.i.preheader ]
  %indvars.iv.next115.i = add nsw i64 %indvars.iv114.i, -1 ; 7 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next115.i
  %i.o = load float, ptr %i.n, align 4, !tbaa !169 ; 2 uses
  %i.p = fcmp ule float %i.g, %i.o
  %i.q = trunc nsw i64 %indvars.iv.next115.i to i32
  %i.r = icmp eq i32 %.tr3545, %i.q
  %or.cond.i = or i1 %i.p, %i.r
  br i1 %or.cond.i, label %bb.e, label %.preheader.i, !llvm.loop !491

bb.e:                                             ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next115.i ; 3 uses
  %i.t = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  %.not85.i = icmp slt i64 %indvars.iv.next.i, %indvars.iv.next115.i
  br i1 %.not85.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store float %i.o, ptr %i.m, align 4, !tbaa !169
  store float %i.k, ptr %i.s, align 4, !tbaa !169
  %i.u = load float, ptr %i.m, align 4, !tbaa !169 ; 2 uses
  %i.v = fcmp oeq float %i.u, %i.g
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %.072.i, 1                   ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !169
  store float %i.u, ptr %i.y, align 4, !tbaa !169
  store float %i.z, ptr %i.m, align 4, !tbaa !169
  %.pre.i = load float, ptr %i.s, align 4, !tbaa !169
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi float [ %.pre.i, %bb.g ], [ %i.k, %bb.f ] ; 2 uses
  %.173.i = phi i32 [ %i.w, %bb.g ], [ %.072.i, %bb.f ] ; 2 uses
  %i.ab = fcmp oeq float %i.g, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.c, !llvm.loop !492

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %.071.i.ph, -1              ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !169
  store float %i.af, ptr %i.s, align 4, !tbaa !169
  store float %i.aa, ptr %i.ae, align 4, !tbaa !169
  %indvar.next = add i64 %indvar, 1
  br label %.outer, !llvm.loop !492

bb.j:                                             ; preds = %bb.e
  %i.ag = trunc nsw i64 %indvars.iv.i to i32      ; 2 uses
  %i.ah = load float, ptr %i.f, align 4, !tbaa !169
  store float %i.ah, ptr %i.m, align 4, !tbaa !169
  store float %i.k, ptr %i.f, align 4, !tbaa !169
  %i.ai = add nsw i32 %i.ag, 2
  %.not8696.i = icmp sgt i32 %.tr3545, %.072.i
  br i1 %.not8696.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.aj = sext i32 %.tr3545 to i64                ; 3 uses
  %i.ak = add i32 %.072.i, 1
  %i.al = sub i32 %.072.i, %.tr3545
  %i.am = and i32 %i.al, 1
  %lcmp.mod.not.not = icmp eq i32 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aj ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.ap = load float, ptr %i.an, align 4, !tbaa !169
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !169
  store float %i.aq, ptr %i.an, align 4, !tbaa !169
  store float %i.ap, ptr %i.ao, align 4, !tbaa !169
  %indvars.iv.next118.i.prol = add nsw i64 %i.aj, 1
  %indvars.iv.next120.i.prol = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.next120.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %indvars.iv.next120.i.prol, %.lr.ph.i.prol ]
  %indvars.iv119.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next120.i.prol, %.lr.ph.i.prol ]
  %indvars.iv117.i.unr = phi i64 [ %i.aj, %.lr.ph.preheader.i ], [ %indvars.iv.next118.i.prol, %.lr.ph.i.prol ]
  %i.ar = icmp eq i32 %.072.i, %.tr3545
  br i1 %i.ar, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %indvars.iv.next120.i.lcssa = phi i64 [ %indvars.iv.next120.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %indvars.iv.next120.i.1, %.lr.ph.i ]
  %i.as = trunc nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.j
  %.2.lcssa.i = phi i32 [ %i.ag, %bb.j ], [ %i.as, %._crit_edge.loopexit.i ] ; 3 uses
  %i.at = add nsw i32 %.tr3646, -2                ; 2 uses
  %.not8799.i = icmp slt i32 %i.at, %.071.i.ph
  br i1 %.not8799.i, label %_ZN8LightGBM9ArrayArgsIfE9PartitionEPSt6vectorIfSaIfEEiiPiS6_.exit, label %.lr.ph103.preheader.i

.lr.ph103.preheader.i:                            ; preds = %._crit_edge.i
  %i.au = sext i32 %i.at to i64                   ; 5 uses
  %i.av = sext i32 %.071.i.ph to i64
  %i.aw = sext i32 %indvars.iv127.i to i64        ; 3 uses
  %.neg = sub nsw i64 %i.e, %i.au
  %4 = add nsw i64 %i.au, %i.e
  %5 = sub i64 %4, %indvar
  %6 = and i64 %5, 1
  %lcmp.mod83.not.not = icmp eq i64 %6, 0
  br i1 %lcmp.mod83.not.not, label %.lr.ph103.i.prol, label %.lr.ph103.i.prol.loopexit

.lr.ph103.i.prol:                                 ; preds = %.lr.ph103.preheader.i
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aw ; 2 uses
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.au ; 2 uses
  %9 = load float, ptr %7, align 4, !tbaa !169
  %10 = load float, ptr %8, align 4, !tbaa !169
  store float %10, ptr %7, align 4, !tbaa !169
  store float %9, ptr %8, align 4, !tbaa !169
  %indvars.iv.next126.i.prol = add nsw i64 %i.au, -1
  %indvars.iv.next130.i.prol = add nsw i64 %i.aw, 1 ; 2 uses
  br label %.lr.ph103.i.prol.loopexit

.lr.ph103.i.prol.loopexit:                        ; preds = %.lr.ph103.i.prol, %.lr.ph103.preheader.i
  %indvars.iv129.i.unr = phi i64 [ %i.aw, %.lr.ph103.preheader.i ], [ %indvars.iv.next130.i.prol, %.lr.ph103.i.prol ]
  %indvars.iv125.i.unr = phi i64 [ %i.au, %.lr.ph103.preheader.i ], [ %indvars.iv.next126.i.prol, %.lr.ph103.i.prol ]
  %indvars.iv.next130.i.lcssa.unr = phi i64 [ poison, %.lr.ph103.preheader.i ], [ %indvars.iv.next130.i.prol, %.lr.ph103.i.prol ]
  %11 = icmp eq i64 %indvar, %.neg
  br i1 %11, label %.loopexit.loopexit.i, label %.lr.ph103.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.1, %.lr.ph.i ], [ %indvars.iv119.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.i.1, %.lr.ph.i ], [ %indvars.iv117.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv117.i ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv119.i ; 2 uses
  %i.az = load float, ptr %i.ax, align 4, !tbaa !169
  %i.ba = load float, ptr %i.ay, align 4, !tbaa !169
  store float %i.ba, ptr %i.ax, align 4, !tbaa !169
  store float %i.az, ptr %i.ay, align 4, !tbaa !169
  %i.bb = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv117.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 4      ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv119.i
  %i.be = getelementptr i8, ptr %i.bd, i64 -4     ; 2 uses
  %i.bf = load float, ptr %i.bc, align 4, !tbaa !169
  %i.bg = load float, ptr %i.be, align 4, !tbaa !169
  store float %i.bg, ptr %i.bc, align 4, !tbaa !169
  store float %i.bf, ptr %i.be, align 4, !tbaa !169
  %indvars.iv.next118.i.1 = add nsw i64 %indvars.iv117.i, 2 ; 2 uses
  %indvars.iv.next120.i.1 = add nsw i64 %indvars.iv119.i, -2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next118.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %i.ak, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !493

.lr.ph103.i:                                      ; preds = %.lr.ph103.i.prol.loopexit, %.lr.ph103.i
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %.lr.ph103.i ], [ %indvars.iv129.i.unr, %.lr.ph103.i.prol.loopexit ] ; 3 uses
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i.a, %.lr.ph103.i ], [ %indvars.iv125.i.unr, %.lr.ph103.i.prol.loopexit ] ; 3 uses
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv129.i ; 2 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv125.i ; 2 uses
  %14 = load float, ptr %12, align 4, !tbaa !169
  %15 = load float, ptr %13, align 4, !tbaa !169
  store float %15, ptr %12, align 4, !tbaa !169
  store float %14, ptr %13, align 4, !tbaa !169
  %indvars.iv.next126.i = add nsw i64 %indvars.iv125.i, -1 ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv129.i
  %16 = getelementptr i8, ptr %i.bh, i64 4        ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next126.i ; 2 uses
  %i.bj = load float, ptr %16, align 4, !tbaa !169
  %i.bk = load float, ptr %i.bi, align 4, !tbaa !169
  store float %i.bk, ptr %16, align 4, !tbaa !169
  store float %i.bj, ptr %i.bi, align 4, !tbaa !169
  %indvars.iv.next126.i.a = add nsw i64 %indvars.iv125.i, -2
  %indvars.iv.next130.i = add nsw i64 %indvars.iv129.i, 2 ; 2 uses
  %.not87.not.i = icmp sgt i64 %indvars.iv.next126.i, %i.av
  br i1 %.not87.not.i, label %.lr.ph103.i, label %.loopexit.loopexit.i, !llvm.loop !494

.loopexit.loopexit.i:                             ; preds = %.lr.ph103.i, %.lr.ph103.i.prol.loopexit
  %indvars.iv.next130.i.lcssa = phi i64 [ %indvars.iv.next130.i.lcssa.unr, %.lr.ph103.i.prol.loopexit ], [ %indvars.iv.next130.i, %.lr.ph103.i ]
  %i.bl = trunc nsw i64 %indvars.iv.next130.i.lcssa to i32
  br label %_ZN8LightGBM9ArrayArgsIfE9PartitionEPSt6vectorIfSaIfEEiiPiS6_.exit

_ZN8LightGBM9ArrayArgsIfE9PartitionEPSt6vectorIfSaIfEEiiPiS6_.exit: ; preds = %._crit_edge.i, %.loopexit.loopexit.i
  %storemerge.i = phi i32 [ %i.bl, %.loopexit.loopexit.i ], [ %i.ai, %._crit_edge.i ] ; 3 uses
  %i.bm = icmp sgt i32 %3, %.2.lcssa.i            ; 3 uses
  %i.bn = icmp slt i32 %3, %storemerge.i
  %or.cond = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %_ZN8LightGBM9ArrayArgsIfE9PartitionEPSt6vectorIfSaIfEEiiPiS6_.exit
  %i.bo = icmp eq i32 %.2.lcssa.i, %i.d
  %i.bp = icmp eq i32 %storemerge.i, %i.c
  %or.cond29 = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond29, label %._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.k
  %i.bq = add nsw i32 %.2.lcssa.i, 1
  %spec.select = select i1 %i.bm, i32 %storemerge.i, i32 %.tr3545 ; 3 uses
  %spec.select38 = select i1 %i.bm, i32 %.tr3646, i32 %i.bq ; 2 uses
  %i.br = add nsw i32 %spec.select38, -1          ; 2 uses
  %.not = icmp slt i32 %spec.select, %i.br
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %tailrecurse, %_ZN8LightGBM9ArrayArgsIfE9PartitionEPSt6vectorIfSaIfEEiiPiS6_.exit, %bb.k, %bb.a
  %.1 = phi i32 [ %1, %bb.a ], [ %3, %_ZN8LightGBM9ArrayArgsIfE9PartitionEPSt6vectorIfSaIfEEiiPiS6_.exit ], [ %3, %bb.k ], [ %spec.select, %tailrecurse ]
  ret i32 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #39 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !9

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !258

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_SD_T0_T1_(ptr %0, ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.q) #12
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.r = icmp eq ptr %.sroa.12.0, null
  br i1 %i.r, label %bb.f, label %bb.g, !prof !259

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_(ptr %0, ptr %1, ptr %2)
          to label %bb.h unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %i.s = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.s) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_SD_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef 7, ptr %4)
  %i.f = icmp sgt i64 %i.d, 7
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.020.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.020.i, ptr %4)
  %i.g = shl nuw nsw i64 %.020.i, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_T2_(ptr noundef %3, ptr noundef %i.e, ptr %0, i64 noundef %i.g, ptr %4)
  %i.h = shl nsw i64 %.020.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_.exit, !llvm.loop !495

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_(ptr %1, ptr %2, i64 noundef 7, ptr %4)
  %i.n = icmp sgt i64 %i.l, 7
  br i1 %i.n, label %.lr.ph.i13, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_.exit15

.lr.ph.i13:                                       ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_.exit, %.lr.ph.i13
  %.020.i14 = phi i64 [ %i.p, %.lr.ph.i13 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.020.i14, ptr %4)
  %i.o = shl nuw nsw i64 %.020.i14, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_T2_(ptr noundef %3, ptr noundef %i.m, ptr %1, i64 noundef %i.o, ptr %4)
  %i.p = shl nsw i64 %.020.i14, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i13, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_.exit15, !llvm.loop !495

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_.exit15: ; preds = %.lr.ph.i13, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_T1_.exit
  %i.r = ptrtoint ptr %4 to i64
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_SD_T0_SE_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.d, i64 noundef %i.l, ptr noundef %3, i64 %i.r)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss14BoostFromScoreEiEUliiE_EEEvT_SD_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %common.ret26, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.018.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.0.018.i, %1
  br i1 %.not19.i, label %common.ret26, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.021.i = phi ptr [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 6 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %i.h = load i32, ptr %.sroa.0.021.i, align 4, !tbaa !204 ; 2 uses
  %i.i = load i32, ptr %0, align 4, !tbaa !204    ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !218  ; 4 uses
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !169 ; 3 uses
  %i.n = sext i32 %i.i to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !169
  %i.q = fcmp olt float %i.m, %i.p
  br i1 %i.q, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %.sroa.0.021.i to i64
  %i.s = sub i64 %i.r, %i.b                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %bb.f, !prof !258

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.w = sub nsw i64 0, %i.t
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.x, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.s, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %i.s, 4
  br i1 %i.y, label %bb.g, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.i, ptr %i.z, align 4, !tbaa !204
end_hunk_1
