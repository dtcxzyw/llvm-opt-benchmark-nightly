Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4075
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK8LightGBM16RegressionL2loss12GetGradientsEPKdPfS3_.omp_outlined:bb.a
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
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 6 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !204
  %i.l = load i32, ptr %i.a, align 4, !tbaa !204  ; 3 uses
  %.not17 = icmp sgt i32 %i.l, %i.k
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %4, align 8, !tbaa !222    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218  ; 5 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !220    ; 5 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !220    ; 5 uses
  %i.r = sext i32 %i.l to i64                     ; 4 uses
  %i.s = add nsw i32 %i.k, 1
  %i.t = sub i32 %i.k, %i.l                       ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.t, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.w = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.x = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.y = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.z = sub i64 %i.x, %i.w
  %diff.check = icmp ugt i64 %i.z, -8
  %i.aa = sub i64 %i.y, %i.x
  %diff.check25 = icmp ugt i64 %i.aa, -8
  %conflict.rdx = or i1 %diff.check, %diff.check25
  %i.ab = sub i64 %i.y, %i.w
  %diff.check26 = icmp ugt i64 %i.ab, -8
  %conflict.rdx27 = or i1 %conflict.rdx, %diff.check26
  br i1 %conflict.rdx27, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 8589934590               ; 3 uses
  %i.ac = add nsw i64 %n.vec, %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add i64 %index, %i.r                    ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ad
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !191
  %i.af = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ad
  %wide.load28 = load <2 x float>, ptr %i.af, align 4, !tbaa !169
  %i.ag = fpext <2 x float> %wide.load28 to <2 x double>
  %i.ah = fsub <2 x double> %wide.load, %i.ag
  %i.ai = fptrunc <2 x double> %i.ah to <2 x float>
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ad
  store <2 x float> %i.ai, ptr %i.aj, align 4, !tbaa !169
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ad
  store <2 x float> splat (float 1.000000e+00), ptr %i.ak, align 4, !tbaa !169
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph ], [ %i.ac, %middle.block ] ; 7 uses
  %i.am = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.an = add i32 %i.k, %i.am
  %i.ao = and i32 %i.an, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ao, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.ph
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !191
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.ph
  %i.as = load float, ptr %i.ar, align 4, !tbaa !169
  %i.at = fpext float %i.as to double
  %i.au = fsub double %i.aq, %i.at
  %i.av = fptrunc double %i.au to float
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.ph
  store float %i.av, ptr %i.aw, align 4, !tbaa !169
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv.ph
  store float 1.000000e+00, ptr %i.ax, align 4, !tbaa !169
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ay = icmp eq i32 %i.k, %i.am
  br i1 %i.ay, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ba = load double, ptr %i.az, align 8, !tbaa !191
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !169
  %i.bd = fpext float %i.bc to double
  %i.be = fsub double %i.ba, %i.bd
  %i.bf = fptrunc double %i.be to float
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  store float %i.bf, ptr %i.bg, align 4, !tbaa !169
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.bh, align 4, !tbaa !169
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !191
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !169
  %i.bm = fpext float %i.bl to double
  %i.bn = fsub double %i.bj, %i.bm
  %i.bo = fptrunc double %i.bn to float
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next
  store float %i.bo, ptr %i.bp, align 4, !tbaa !169
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv.next
  store float 1.000000e+00, ptr %i.bq, align 4, !tbaa !169
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.s, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !377

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
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
define internal void @_ZNK8LightGBM16RegressionL2loss12GetGradientsEPKdPfS3_.omp_outlined.20(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #11 {
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
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 6 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !204
  %i.l = load i32, ptr %i.a, align 4, !tbaa !204  ; 3 uses
  %.not19 = icmp sgt i32 %i.l, %i.k
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %4, align 8, !tbaa !222    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !221  ; 6 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !220    ; 6 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !220    ; 6 uses
  %i.t = sext i32 %i.l to i64                     ; 6 uses
  %i.u = add nsw i32 %i.k, 1
  %i.v = sub i32 %i.k, %i.l                       ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.y = shl nsw i64 %i.t, 2                      ; 4 uses
  %i.z = getelementptr i8, ptr %i.r, i64 %i.y     ; 3 uses
  %i.aa = add nsw i64 %i.t, %i.w
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 4                    ; 4 uses
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 3 uses
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.y    ; 3 uses
  %i.af = getelementptr i8, ptr %i.s, i64 %i.ac   ; 3 uses
  %6 = getelementptr i8, ptr %i.o, i64 %i.y       ; 2 uses
  %7 = getelementptr i8, ptr %i.o, i64 %i.ac      ; 2 uses
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.y    ; 2 uses
  %i.ah = getelementptr i8, ptr %i.q, i64 %i.ac   ; 2 uses
  %bound0.a = icmp ult ptr %i.z, %i.af
  %bound1.a = icmp ult ptr %i.ae, %i.ad
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound046 = icmp ult ptr %i.z, %7
  %bound147 = icmp ult ptr %6, %i.ad
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict48
  %bound049 = icmp ult ptr %i.z, %i.ah
  %bound150 = icmp ult ptr %i.ag, %i.ad
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx, %found.conflict51
  %bound053 = icmp ult ptr %i.ae, %7
  %bound154 = icmp ult ptr %6, %i.af
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx52, %found.conflict55
  %bound057 = icmp ult ptr %i.ae, %i.ah
  %bound158 = icmp ult ptr %i.ag, %i.af
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx56, %found.conflict59
  br i1 %conflict.rdx60, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 8589934590               ; 3 uses
  %i.ai = add nsw i64 %n.vec, %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add i64 %index, %i.t                    ; 5 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aj
  %wide.load = load <2 x double>, ptr %i.ak, align 8, !tbaa !191
  %i.al = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.aj
  %wide.load61 = load <2 x float>, ptr %i.al, align 4, !tbaa !169, !alias.scope !385
  %i.am = fpext <2 x float> %wide.load61 to <2 x double>
  %i.an = fsub <2 x double> %wide.load, %i.am
  %i.ao = fptrunc <2 x double> %i.an to <2 x float>
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.aj
  %wide.load62 = load <2 x float>, ptr %i.ap, align 4, !tbaa !169, !alias.scope !386 ; 2 uses
  %i.aq = fmul <2 x float> %wide.load62, %i.ao
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.aj
  store <2 x float> %i.aq, ptr %i.ar, align 4, !tbaa !169, !alias.scope !387, !noalias !388
  %i.as = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.aj
  store <2 x float> %wide.load62, ptr %i.as, align 4, !tbaa !169, !alias.scope !389, !noalias !390
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !383

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph ], [ %i.ai, %middle.block ] ; 8 uses
  %i.au = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.av = add i32 %i.k, %i.au
  %i.aw = and i32 %i.av, 1
  %lcmp.mod.not.not = icmp eq i32 %i.aw, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.ph
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !191
  %i.az = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.ph
  %i.ba = load float, ptr %i.az, align 4, !tbaa !169
  %i.bb = fpext float %i.ba to double
  %i.bc = fsub double %i.ay, %i.bb
  %i.bd = fptrunc double %i.bc to float
  %i.be = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv.ph ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !169
  %i.bg = fmul float %i.bf, %i.bd
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.ph
  store float %i.bg, ptr %i.bh, align 4, !tbaa !169
  %i.bi = load float, ptr %i.be, align 4, !tbaa !169
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.ph
  store float %i.bi, ptr %i.bj, align 4, !tbaa !169
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bk = icmp eq i32 %i.k, %i.au
  br i1 %i.bk, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !191
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !169
  %i.bp = fpext float %i.bo to double
  %i.bq = fsub double %i.bm, %i.bp
  %i.br = fptrunc double %i.bq to float
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !169
  %i.bu = fmul float %i.bt, %i.br
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv
  store float %i.bu, ptr %i.bv, align 4, !tbaa !169
  %i.bw = load float, ptr %i.bs, align 4, !tbaa !169
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %i.bw, ptr %i.bx, align 4, !tbaa !169
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.bz = load double, ptr %i.by, align 8, !tbaa !191
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !169
  %i.cc = fpext float %i.cb to double
  %i.cd = fsub double %i.bz, %i.cc
  %i.ce = fptrunc double %i.cd to float
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv.next ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !169
  %i.ch = fmul float %i.cg, %i.ce
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.next
  store float %i.ch, ptr %i.ci, align 4, !tbaa !169
  %i.cj = load float, ptr %i.cf, align 4, !tbaa !169
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.next
  store float %i.cj, ptr %i.ck, align 4, !tbaa !169
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.u, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !384

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RegressionL2loss14BoostFromScoreEi.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4) #14 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca double, align 8                   ; 7 uses
  %i.g = alloca [2 x ptr], align 8                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !217  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.k, ptr %i.b, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !191
  %i.l = load i32, ptr %0, align 4, !tbaa !204    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.m = load i32, ptr %i.b, align 4, !tbaa !204
  %i.n = call i32 @llvm.smin.i32(i32 %i.m, i32 %i.k) ; 5 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !204
  %i.o = load i32, ptr %i.a, align 4, !tbaa !204  ; 4 uses
  %.not17 = icmp sgt i32 %i.o, %i.n
  br i1 %.not17, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !218  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !221  ; 3 uses
  %i.t = sext i32 %i.o to i64                     ; 4 uses
  %i.u = add nsw i32 %i.n, 1
  %i.v = add i32 %i.n, %i.o
  %i.w = and i32 %i.v, 1
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.x = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.t
  %i.y = load float, ptr %i.x, align 4, !tbaa !169
  %i.z = fpext float %i.y to double
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !169
  %i.ac = fpext float %i.ab to double             ; 2 uses
  %i.ad = call double @llvm.fmuladd.f64(double %i.z, double %i.ac, double 0.000000e+00) ; 2 uses
  %i.ae = fadd double %i.ac, 0.000000e+00         ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.t, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa26.unr = phi double [ poison, %.lr.ph ], [ %i.ad, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi double [ poison, %.lr.ph ], [ %i.ae, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ad, %.prol.loopexit.unr-lcssa ]
  %.unr27 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ae, %.prol.loopexit.unr-lcssa ]
  %i.af = icmp eq i32 %i.n, %i.o
  br i1 %i.af, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.ag = phi double [ %i.aw, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.ah = phi double [ %i.ax, %.lr.ph.new ], [ %.unr27, %.prol.loopexit ]
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !169
  %i.ak = fpext float %i.aj to double
  %i.al = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.am = load float, ptr %i.al, align 4, !tbaa !169
  %i.an = fpext float %i.am to double             ; 2 uses
  %i.ao = call double @llvm.fmuladd.f64(double %i.ak, double %i.an, double %i.ag)
  %i.ap = fadd double %i.ah, %i.an
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM16RegressionL1loss14BoostFromScoreEi:bb.a
  %.pn.pn = phi { ptr, i32 } [ %i.fc, %bb.r ], [ %i.ia, %bb.y ], [ %i.ia, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit115, %bb.o, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  %.4.in = phi float [ %i.h, %bb.c ], [ %.1.in, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.dw, %bb.o ], [ %.3.in163, %_ZNSt6vectorIfSaIfEED2Ev.exit115 ]
  %.4 = fpext float %.4.in to double
  ret double %.4

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit85, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %.pn68.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit85 ]
  resume { ptr, i32 } %.pn68.pn.pn.pn.pn
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RegressionL1loss12GetGradientsEPKdPfS3_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #11 {
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
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 4 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !204
  %i.l = load i32, ptr %i.a, align 4, !tbaa !204  ; 3 uses
  %.not18 = icmp sgt i32 %i.l, %i.k
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !222    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218  ; 3 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !220    ; 3 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !220    ; 3 uses
  %i.r = sext i32 %i.l to i64                     ; 4 uses
  %i.s = add nsw i32 %i.k, 1
  %i.t = sub i32 %i.k, %i.l                       ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.t, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.w = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.x = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.y = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.z = sub i64 %i.x, %i.w
  %diff.check = icmp ugt i64 %i.z, -8
  %i.aa = sub i64 %i.y, %i.x
  %diff.check26 = icmp ugt i64 %i.aa, -8
  %conflict.rdx = or i1 %diff.check, %diff.check26
  %i.ab = sub i64 %i.y, %i.w
  %diff.check27 = icmp ugt i64 %i.ab, -8
  %conflict.rdx28 = or i1 %conflict.rdx, %diff.check27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 8589934590               ; 3 uses
  %i.ac = add nsw i64 %n.vec, %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add i64 %index, %i.r                    ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ad
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !191
  %i.af = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ad
  %wide.load29 = load <2 x float>, ptr %i.af, align 4, !tbaa !169
  %i.ag = fpext <2 x float> %wide.load29 to <2 x double>
  %i.ah = fsub <2 x double> %wide.load, %i.ag     ; 2 uses
  %i.ai = fcmp ogt <2 x double> %i.ah, zeroinitializer
  %i.aj = zext <2 x i1> %i.ai to <2 x i32>
  %i.ak = fcmp olt <2 x double> %i.ah, zeroinitializer
  %i.al = sext <2 x i1> %i.ak to <2 x i32>
  %i.am = add nsw <2 x i32> %i.al, %i.aj
  %i.an = sitofp <2 x i32> %i.am to <2 x float>
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ad
  store <2 x float> %i.an, ptr %i.ao, align 4, !tbaa !169
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ad
  store <2 x float> splat (float 1.000000e+00), ptr %i.ap, align 4, !tbaa !169
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph ], [ %i.ac, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.as = load double, ptr %i.ar, align 8, !tbaa !191
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
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !407

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
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 4 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !204
  %i.l = load i32, ptr %i.a, align 4, !tbaa !204  ; 3 uses
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
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 11
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.y = shl nsw i64 %i.t, 2                      ; 4 uses
  %i.z = getelementptr i8, ptr %i.r, i64 %i.y     ; 3 uses
  %i.aa = add nsw i64 %i.t, %i.w
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 4                    ; 4 uses
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 3 uses
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.y    ; 3 uses
  %i.af = getelementptr i8, ptr %i.s, i64 %i.ac   ; 3 uses
  %6 = getelementptr i8, ptr %i.o, i64 %i.y       ; 2 uses
  %7 = getelementptr i8, ptr %i.o, i64 %i.ac      ; 2 uses
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.y    ; 2 uses
  %i.ah = getelementptr i8, ptr %i.q, i64 %i.ac   ; 2 uses
  %bound0.a = icmp ult ptr %i.z, %i.af
  %bound1.a = icmp ult ptr %i.ae, %i.ad
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound047 = icmp ult ptr %i.z, %7
  %bound148 = icmp ult ptr %6, %i.ad
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict49
  %bound050 = icmp ult ptr %i.z, %i.ah
  %bound151 = icmp ult ptr %i.ag, %i.ad
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx53 = or i1 %conflict.rdx, %found.conflict52
  %bound054 = icmp ult ptr %i.ae, %7
  %bound155 = icmp ult ptr %6, %i.af
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx57 = or i1 %conflict.rdx53, %found.conflict56
  %bound058 = icmp ult ptr %i.ae, %i.ah
  %bound159 = icmp ult ptr %i.ag, %i.af
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx61 = or i1 %conflict.rdx57, %found.conflict60
  br i1 %conflict.rdx61, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 8589934590               ; 3 uses
  %i.ai = add nsw i64 %n.vec, %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = add i64 %index, %i.t                    ; 5 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aj
  %wide.load = load <2 x double>, ptr %i.ak, align 8, !tbaa !191
  %i.al = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.aj
  %wide.load62 = load <2 x float>, ptr %i.al, align 4, !tbaa !169, !alias.scope !415
  %i.am = fpext <2 x float> %wide.load62 to <2 x double>
  %i.an = fsub <2 x double> %wide.load, %i.am     ; 2 uses
  %i.ao = fcmp ogt <2 x double> %i.an, zeroinitializer
  %i.ap = zext <2 x i1> %i.ao to <2 x i32>
  %i.aq = fcmp olt <2 x double> %i.an, zeroinitializer
  %i.ar = sext <2 x i1> %i.aq to <2 x i32>
  %i.as = add nsw <2 x i32> %i.ar, %i.ap
  %i.at = sitofp <2 x i32> %i.as to <2 x float>
  %i.au = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.aj
  %wide.load63 = load <2 x float>, ptr %i.au, align 4, !tbaa !169, !alias.scope !416 ; 2 uses
  %i.av = fmul <2 x float> %wide.load63, %i.at
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.aj
  store <2 x float> %i.av, ptr %i.aw, align 4, !tbaa !169, !alias.scope !417, !noalias !418
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.aj
  store <2 x float> %wide.load63, ptr %i.ax, align 4, !tbaa !169, !alias.scope !419, !noalias !420
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !413

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph ], [ %i.ai, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ba = load double, ptr %i.az, align 8, !tbaa !191
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !169
  %i.bd = fpext float %i.bc to double
  %i.be = fsub double %i.ba, %i.bd                ; 2 uses
  %i.bf = fcmp ogt double %i.be, 0.000000e+00
  %i.bg = zext i1 %i.bf to i32
  %i.bh = fcmp olt double %i.be, 0.000000e+00
  %.neg.i = sext i1 %i.bh to i32
  %i.bi = add nsw i32 %.neg.i, %i.bg
  %i.bj = sitofp i32 %i.bi to float
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !169
  %i.bm = fmul float %i.bl, %i.bj
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv
  store float %i.bm, ptr %i.bn, align 4, !tbaa !169
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !169
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %i.bo, ptr %i.bp, align 4, !tbaa !169
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.u, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !414

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
  %i.b = load ptr, ptr %0, align 8, !tbaa !192    ; 15 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.c = phi i32 [ %i.a, %.lr.ph ], [ %i.br, %tailrecurse ] ; 3 uses
  %.tr3646 = phi i32 [ %2, %.lr.ph ], [ %spec.select38, %tailrecurse ] ; 2 uses
  %.tr3545 = phi i32 [ %1, %.lr.ph ], [ %spec.select, %tailrecurse ] ; 7 uses
  %i.d = add nsw i32 %.tr3545, -1                 ; 3 uses
  %i.e = sext i32 %i.c to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !191 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.b
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
  br i1 %i.l, label %bb.d, label %.preheader.i.preheader, !llvm.loop !421

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
  br i1 %or.cond.i, label %bb.e, label %.preheader.i, !llvm.loop !422

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
  br i1 %i.ab, label %bb.i, label %bb.c, !llvm.loop !423

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %.071.i.ph, -1              ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !191
  store double %i.af, ptr %i.s, align 8, !tbaa !191
  store double %i.aa, ptr %i.ae, align 8, !tbaa !191
  br label %.outer, !llvm.loop !423

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
end_hunk_1
begin_hunk_2_@_ZNK8LightGBM18RegressionFairLoss12GetGradientsEPKdPfS3_.omp_outlined:bb.a
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
  %.not21 = icmp sgt i32 %i.l, %i.k
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !222    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = load double, ptr %i.p, align 8, !tbaa !151 ; 5 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !220    ; 3 uses
  %i.s = fmul double %i.q, %i.q                   ; 2 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !220    ; 3 uses
  %i.u = sext i32 %i.l to i64                     ; 4 uses
  %i.v = add nsw i32 %i.k, 1
  %i.w = sub i32 %i.k, %i.l
  %i.x = zext i32 %i.w to i64
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp eq i32 %i.k, %i.l
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.z = ptrtoaddr ptr %i.t to i64                ; 2 uses
  %i.aa = ptrtoaddr ptr %i.r to i64               ; 2 uses
  %i.ab = ptrtoaddr ptr %i.o to i64               ; 2 uses
  %i.ac = sub i64 %i.aa, %i.z
  %diff.check = icmp ugt i64 %i.ac, -8
  %i.ad = sub i64 %i.ab, %i.aa
  %diff.check29 = icmp ugt i64 %i.ad, -8
  %conflict.rdx = or i1 %diff.check, %diff.check29
  %i.ae = sub i64 %i.ab, %i.z
  %diff.check30 = icmp ugt i64 %i.ae, -8
  %conflict.rdx31 = or i1 %conflict.rdx, %diff.check30
  br i1 %conflict.rdx31, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 8589934590               ; 3 uses
  %i.af = add nsw i64 %n.vec, %i.u
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert32 = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat33 = shufflevector <2 x double> %broadcast.splatinsert32, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = add i64 %index, %i.u                    ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ag
  %wide.load = load <2 x double>, ptr %i.ah, align 8, !tbaa !191
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ag
  %wide.load34 = load <2 x float>, ptr %i.ai, align 4, !tbaa !169
  %i.aj = fpext <2 x float> %wide.load34 to <2 x double>
  %i.ak = fsub <2 x double> %wide.load, %i.aj     ; 2 uses
  %i.al = fmul <2 x double> %broadcast.splat, %i.ak
  %i.am = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ak)
  %i.an = fadd <2 x double> %broadcast.splat, %i.am ; 3 uses
  %i.ao = fdiv <2 x double> %i.al, %i.an
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float>
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ag
  store <2 x float> %i.ap, ptr %i.aq, align 4, !tbaa !169
  %i.ar = fmul <2 x double> %i.an, %i.an
  %i.as = fdiv <2 x double> %broadcast.splat33, %i.ar
  %i.at = fptrunc <2 x double> %i.as to <2 x float>
  %i.au = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ag
  store <2 x float> %i.at, ptr %i.au, align 4, !tbaa !169
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !561

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph ], [ %i.af, %middle.block ]
  %i.aw = insertelement <2 x double> poison, double %i.s, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !191
  %i.az = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ba = load float, ptr %i.az, align 4, !tbaa !169
  %i.bb = fpext float %i.ba to double
  %i.bc = fsub double %i.ay, %i.bb                ; 2 uses
  %i.bd = fmul double %i.q, %i.bc
  %i.be = call double @llvm.fabs.f64(double %i.bc)
  %i.bf = fadd double %i.q, %i.be                 ; 3 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.bh = fmul double %i.bf, %i.bf
  %i.bi = insertelement <2 x double> %i.aw, double %i.bd, i64 0
  %i.bj = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bh, i64 1
  %i.bl = fdiv <2 x double> %i.bi, %i.bk
  %i.bm = fptrunc <2 x double> %i.bl to <2 x float> ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  store float %i.bn, ptr %i.bg, align 4, !tbaa !169
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.bp = extractelement <2 x float> %i.bm, i64 1
  store float %i.bp, ptr %i.bo, align 4, !tbaa !169
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !562

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
define internal void @_ZNK8LightGBM18RegressionFairLoss12GetGradientsEPKdPfS3_.omp_outlined.37(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #11 {
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
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 4 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !204
  %i.l = load i32, ptr %i.a, align 4, !tbaa !204  ; 3 uses
  %.not23 = icmp sgt i32 %i.l, %i.k
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !222    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = load double, ptr %i.p, align 8, !tbaa !151 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !221  ; 4 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !220    ; 4 uses
  %i.u = fmul double %i.q, %i.q                   ; 2 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !220    ; 4 uses
  %i.w = sext i32 %i.l to i64                     ; 6 uses
  %i.x = add nsw i32 %i.k, 1
  %i.y = sub i32 %i.k, %i.l                       ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.y, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ab = shl nsw i64 %i.w, 2                     ; 4 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab   ; 3 uses
  %i.ad = add nsw i64 %i.w, %i.z
  %i.ae = shl nsw i64 %i.ad, 2
  %i.af = add nsw i64 %i.ae, 4                    ; 4 uses
  %i.ag = getelementptr i8, ptr %i.t, i64 %i.af   ; 3 uses
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.ab   ; 3 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.af   ; 3 uses
  %6 = getelementptr i8, ptr %i.o, i64 %i.ab      ; 2 uses
  %7 = getelementptr i8, ptr %i.o, i64 %i.af      ; 2 uses
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.ab   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.s, i64 %i.af   ; 2 uses
  %bound0.a = icmp ult ptr %i.ac, %i.ai
  %bound1.a = icmp ult ptr %i.ah, %i.ag
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound050 = icmp ult ptr %i.ac, %7
  %bound151 = icmp ult ptr %6, %i.ag
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict52
  %bound053 = icmp ult ptr %i.ac, %i.ak
  %bound154 = icmp ult ptr %i.aj, %i.ag
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx, %found.conflict55
  %bound057 = icmp ult ptr %i.ah, %7
  %bound158 = icmp ult ptr %6, %i.ai
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx56, %found.conflict59
  %bound061 = icmp ult ptr %i.ah, %i.ak
  %bound162 = icmp ult ptr %i.aj, %i.ai
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  br i1 %conflict.rdx64, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 8589934590              ; 3 uses
  %i.al = add nsw i64 %n.vec, %i.w
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert65 = insertelement <2 x double> poison, double %i.u, i64 0
  %broadcast.splat66 = shufflevector <2 x double> %broadcast.splatinsert65, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = add i64 %index, %i.w                    ; 5 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.am
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !191
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.am
  %wide.load67 = load <2 x float>, ptr %i.ao, align 4, !tbaa !169, !alias.scope !570
  %i.ap = fpext <2 x float> %wide.load67 to <2 x double>
  %i.aq = fsub <2 x double> %wide.load, %i.ap     ; 2 uses
  %i.ar = fmul <2 x double> %broadcast.splat, %i.aq
  %i.as = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aq)
  %i.at = fadd <2 x double> %broadcast.splat, %i.as ; 3 uses
  %i.au = fdiv <2 x double> %i.ar, %i.at
  %i.av = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.am ; 2 uses
  %wide.load68 = load <2 x float>, ptr %i.av, align 4, !tbaa !169, !alias.scope !571
  %i.aw = fpext <2 x float> %wide.load68 to <2 x double>
  %i.ax = fmul <2 x double> %i.au, %i.aw
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float>
  %i.az = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.am
  store <2 x float> %i.ay, ptr %i.az, align 4, !tbaa !169, !alias.scope !572, !noalias !573
  %i.ba = fmul <2 x double> %i.at, %i.at
  %i.bb = fdiv <2 x double> %broadcast.splat66, %i.ba
  %wide.load69 = load <2 x float>, ptr %i.av, align 4, !tbaa !169, !alias.scope !571
  %i.bc = fpext <2 x float> %wide.load69 to <2 x double>
  %i.bd = fmul <2 x double> %i.bb, %i.bc
  %i.be = fptrunc <2 x double> %i.bd to <2 x float>
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.am
  store <2 x float> %i.be, ptr %i.bf, align 4, !tbaa !169, !alias.scope !574, !noalias !575
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !568

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph ], [ %i.al, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !191
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !169
  %i.bl = fpext float %i.bk to double
  %i.bm = fsub double %i.bi, %i.bl                ; 2 uses
  %i.bn = fmul double %i.q, %i.bm
  %i.bo = call double @llvm.fabs.f64(double %i.bm)
  %i.bp = fadd double %i.q, %i.bo                 ; 3 uses
  %i.bq = fdiv double %i.bn, %i.bp
  %i.br = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !169
  %i.bt = fpext float %i.bs to double
  %i.bu = fmul double %i.bq, %i.bt
  %i.bv = fptrunc double %i.bu to float
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  store float %i.bv, ptr %i.bw, align 4, !tbaa !169
  %i.bx = fmul double %i.bp, %i.bp
  %i.by = fdiv double %i.u, %i.bx
  %i.bz = load float, ptr %i.br, align 4, !tbaa !169
  %i.ca = fpext float %i.bz to double
  %i.cb = fmul double %i.by, %i.ca
  %i.cc = fptrunc double %i.cb to float
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv
  store float %i.cc, ptr %i.cd, align 4, !tbaa !169
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !569

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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM21RegressionPoissonLossD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8LightGBM16RegressionL2lossE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN8LightGBM16RegressionL2lossD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35, !inline_history !176
  br label %_ZN8LightGBM16RegressionL2lossD2Ev.exit

_ZN8LightGBM16RegressionL2lossD2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM21RegressionPoissonLoss4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !144, !range !133, !noundef !134
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef nonnull @.str.35, ptr noundef %i.g)
  store i8 0, ptr %i.a, align 8, !tbaa !144
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN8LightGBM16RegressionL2loss4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !218  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !217  ; 3 uses
  %i.l = and i32 %i.k, 1
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = load float, ptr %i.i, align 4, !tbaa !169 ; 5 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !169 ; 3 uses
  %i.p = fcmp olt float %i.m, %i.o
  %..i = select i1 %i.p, float %i.m, float %i.o
  %i.q = fadd float %i.m, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.08.i = phi float [ %..i, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.038.i = phi float [ %i.q, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.0.i = phi i32 [ 3, %bb.d ], [ 2, %bb.c ]      ; 2 uses
  %i.r = icmp slt i32 %.0.i, %i.k
  br i1 %i.r, label %.lr.ph.preheader.i, label %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.s = zext nneg i32 %.0.i to i64
  %i.t = zext nneg i32 %i.k to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.s, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.13914.i = phi float [ %.038.i, %.lr.ph.preheader.i ], [ %i.ab, %.lr.ph.i ]
  %.1913.i = phi float [ %.08.i, %.lr.ph.preheader.i ], [ %.sroa.speculated.i, %.lr.ph.i ] ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv.i ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = load float, ptr %i.v, align 4, !tbaa !169 ; 3 uses
  %i.x = load float, ptr %i.u, align 4, !tbaa !169 ; 3 uses
  %i.y = fcmp olt float %i.w, %i.x
  %.28.i = select i1 %i.y, float %i.w, float %i.x ; 2 uses
  %i.z = fcmp olt float %.28.i, %.1913.i
  %.sroa.speculated.i = select i1 %i.z, float %.28.i, float %.1913.i ; 2 uses
  %i.aa = fadd float %i.w, %i.x
  %i.ab = fadd float %.13914.i, %i.aa             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ac = icmp samesign ult i64 %indvars.iv.next.i, %i.t
  br i1 %i.ac, label %.lr.ph.i, label %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit, !llvm.loop !46

_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit: ; preds = %.lr.ph.i, %bb.e
  %.19.lcssa.i = phi float [ %.08.i, %bb.e ], [ %.sroa.speculated.i, %.lr.ph.i ]
  %.139.lcssa.i = phi float [ %.038.i, %bb.e ], [ %i.ab, %.lr.ph.i ]
  %i.ad = fcmp olt float %.19.lcssa.i, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !98
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.38, ptr noundef %i.ah)
  br label %bb.g

end_hunk_2
begin_hunk_3_@_ZNK8LightGBM16RankingObjective30GetGradientsWithSampledQueriesEPKdiPKiPfS5_.omp_outlined:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.c

.loopexit67:                                      ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  %i.p = call i32 @__kmpc_dispatch_next_4(ptr nonnull @2, i32 %i.h, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge89, label %bb.c

bb.c:                                             ; preds = %.lr.ph88, %.loopexit67
  %i.q = load i32, ptr %i.a, align 4, !tbaa !204  ; 2 uses
  %i.r = load i32, ptr %i.b, align 4, !tbaa !204, !llvm.access.group !619
  %.not5182 = icmp sgt i32 %i.q, %i.r
  br i1 %.not5182, label %.loopexit67, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %bb.c
  %i.s = sext i32 %i.q to i64
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %indvars.iv99 = phi i64 [ %i.s, %.lr.ph85.preheader ], [ %indvars.iv.next100, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 4 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !240, !llvm.access.group !619 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %i.v = trunc nsw i64 %indvars.iv99 to i32
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph85
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv99
  %i.x = load i32, ptr %i.w, align 4, !tbaa !204, !llvm.access.group !619
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph85, %bb.d
  %i.y = phi i32 [ %i.x, %bb.d ], [ %i.v, %.lr.ph85 ] ; 2 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !310, !llvm.access.group !619
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !204, !llvm.access.group !619 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !204, !llvm.access.group !619
  %i.af = sub i32 %i.ae, %i.ac                    ; 6 uses
  %i.ag = load i32, ptr %i.k, align 8, !tbaa !299, !llvm.access.group !619
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = sext i32 %i.ac to i64                   ; 7 uses
  br i1 %i.ah, label %.preheader65, label %.thread

.preheader65:                                     ; preds = %bb.e
  %i.aj = icmp sgt i32 %i.af, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader65
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !297, !llvm.access.group !619
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ai
  br label %bb.l

.lr.ph.preheader:                                 ; preds = %.preheader65
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %.lr.ph

.thread:                                          ; preds = %bb.e
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !297, !llvm.access.group !619
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ai
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 2 uses
  %.sroa.10.077 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.10.2, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 3 uses
  %.sroa.7.076 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.7.1, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 3 uses
  %.sroa.0.075 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.0.2, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 5 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !222, !llvm.access.group !619
  %i.ap = add nsw i64 %indvars.iv, %i.ai          ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !191, !llvm.access.group !619
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !307, !llvm.access.group !619
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ap
  %i.au = load i32, ptr %i.at, align 4, !tbaa !204, !llvm.access.group !619
  %i.av = sext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !174, !llvm.access.group !619
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !169, !llvm.access.group !619
  %i.az = fpext float %i.ay to double
  %i.ba = fadd double %i.ar, %i.az                ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.7.076, %.sroa.10.077
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store double %i.ba, ptr %.sroa.7.076, align 8, !tbaa !191, !llvm.access.group !619
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.g:                                             ; preds = %.lr.ph
  %i.bb = ptrtoint ptr %.sroa.10.077 to i64
  %i.bc = ptrtoint ptr %.sroa.0.075 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.h, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #37
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i), !llvm.access.group !619
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #34
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store double %i.ba, ptr %i.bm, align 8, !tbaa !191, !llvm.access.group !619
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.i, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc53
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %.sroa.0.075, i64 %i.bd, i1 false), !llvm.access.group !619
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc53
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.075, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.075, i64 noundef %i.bd) #35, !llvm.access.group !619
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.f
  %.sroa.0.2 = phi ptr [ %i.bl, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.0.075, %bb.f ] ; 4 uses
  %.pn = phi ptr [ %i.bm, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.7.076, %bb.f ]
  %.sroa.10.2 = phi ptr [ %i.bo, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.10.077, %bb.f ] ; 3 uses
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !620

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %.pr.pre = load i32, ptr %i.k, align 8, !tbaa !299
  %i.bp = icmp sgt i32 %.pr.pre, 0
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !297, !llvm.access.group !619
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ai ; 2 uses
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread, %._crit_edge
  %i.bs = phi ptr [ %i.an, %.thread ], [ %i.br, %._crit_edge ]
  %.sroa.10.164 = phi ptr [ null, %.thread ], [ %.sroa.10.2, %._crit_edge ]
  %.sroa.0.162 = phi ptr [ null, %.thread ], [ %.sroa.0.2, %._crit_edge ]
  %i.bt = load ptr, ptr %5, align 8, !tbaa !222, !llvm.access.group !619
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ai
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.k
  %i.bv = phi ptr [ %i.bs, %bb.k ], [ %i.br, %._crit_edge ], [ %i.al, %._crit_edge.thread ]
  %.sroa.10.163 = phi ptr [ %.sroa.10.164, %bb.k ], [ %.sroa.10.2, %._crit_edge ], [ null, %._crit_edge.thread ]
  %.sroa.0.161 = phi ptr [ %.sroa.0.162, %bb.k ], [ %.sroa.0.2, %._crit_edge ], [ null, %._crit_edge.thread ] ; 3 uses
  %i.bw = phi ptr [ %i.bu, %bb.k ], [ %.sroa.0.2, %._crit_edge ], [ null, %._crit_edge.thread ]
  %i.bx = load ptr, ptr %6, align 8, !tbaa !220, !llvm.access.group !619
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ai
  %i.bz = load ptr, ptr %7, align 8, !tbaa !220, !llvm.access.group !619
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ai
  %i.cb = load ptr, ptr %4, align 8, !tbaa !98, !llvm.access.group !619
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 160
  %i.cd = load ptr, ptr %i.cc, align 8, !llvm.access.group !619
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(112) %4, i32 noundef %i.y, i32 noundef %i.af, ptr noundef %i.bv, ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.ca)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !619

bb.m:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !306, !llvm.access.group !619 ; 7 uses
  %.not52 = icmp ne ptr %i.ce, null
  %i.cf = icmp sgt i32 %i.af, 0
  %or.cond = select i1 %.not52, i1 %i.cf, i1 false
  br i1 %or.cond, label %.lr.ph81, label %.loopexit

.lr.ph81:                                         ; preds = %bb.m
  %i.cg = load ptr, ptr %6, align 8, !tbaa !220, !llvm.access.group !619 ; 6 uses
  %i.ch = load ptr, ptr %7, align 8, !tbaa !220, !llvm.access.group !619 ; 6 uses
  %i.ci = sext i32 %i.ac to i64                   ; 6 uses
  %wide.trip.count97 = zext nneg i32 %i.af to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.af, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph81
  %i.cj = shl nsw i64 %i.ci, 2                    ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cg, i64 %i.cj  ; 2 uses
  %i.cl = add nsw i64 %i.ci, %wide.trip.count97
  %i.cm = shl nsw i64 %i.cl, 2                    ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cg, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %i.ch, i64 %i.cj  ; 2 uses
  %i.cp = getelementptr i8, ptr %i.ch, i64 %i.cm  ; 2 uses
  %8 = getelementptr i8, ptr %i.ce, i64 %i.cj     ; 2 uses
  %9 = getelementptr i8, ptr %i.ce, i64 %i.cm     ; 2 uses
  %bound0 = icmp ult ptr %i.ck, %i.cp
  %bound1 = icmp ult ptr %i.co, %i.cn
  %found.conflict = and i1 %bound0, %bound1
  %bound0128 = icmp ult ptr %i.ck, %9
  %bound1129 = icmp ult ptr %8, %i.cn
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx = or i1 %found.conflict, %found.conflict130
  %bound0131 = icmp ult ptr %i.co, %9
  %bound1132 = icmp ult ptr %8, %i.cp
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx, %found.conflict133
  br i1 %conflict.rdx134, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count97, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = add nsw i64 %index, %i.ci               ; 3 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cq ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cr, align 4, !tbaa !169, !alias.scope !628, !noalias !629, !llvm.access.group !619
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cq
  %wide.load135 = load <4 x float>, ptr %i.cs, align 4, !tbaa !169, !alias.scope !630, !llvm.access.group !619 ; 2 uses
  %i.ct = fmul <4 x float> %wide.load, %wide.load135
  store <4 x float> %i.ct, ptr %i.cr, align 4, !tbaa !169, !alias.scope !628, !noalias !629, !llvm.access.group !619
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cq ; 2 uses
  %wide.load136 = load <4 x float>, ptr %i.cu, align 4, !tbaa !169, !alias.scope !631, !noalias !630, !llvm.access.group !619
  %i.cv = fmul <4 x float> %wide.load136, %wide.load135
  store <4 x float> %i.cv, ptr %i.cu, align 4, !tbaa !169, !alias.scope !631, !noalias !630, !llvm.access.group !619
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !625

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count97
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph81, %middle.block
  %indvars.iv94.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph81 ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count97, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cx = add nsw i64 %indvars.iv94.ph, %i.ci     ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cx ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !169, !llvm.access.group !619
  %i.da = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cx ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !169, !llvm.access.group !619
  %i.dc = fmul float %i.cz, %i.db
  store float %i.dc, ptr %i.cy, align 4, !tbaa !169, !llvm.access.group !619
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cx ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !169, !llvm.access.group !619
  %i.df = load float, ptr %i.da, align 4, !tbaa !169, !llvm.access.group !619
  %i.dg = fmul float %i.de, %i.df
  store float %i.dg, ptr %i.dd, align 4, !tbaa !169, !llvm.access.group !619
  %indvars.iv.next95.prol = or disjoint i64 %indvars.iv94.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv94.unr = phi i64 [ %indvars.iv94.ph, %scalar.ph.preheader ], [ %indvars.iv.next95.prol, %scalar.ph.prol ]
  %i.dh = add nsw i64 %wide.trip.count97, -1
  %i.di = icmp eq i64 %indvars.iv94.ph, %i.dh
  br i1 %i.di, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nsw i64 1, %i.ci
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv94 = phi i64 [ %indvars.iv94.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next95.1, %scalar.ph ] ; 3 uses
  %i.dj = add nsw i64 %indvars.iv94, %i.ci        ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.dj ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !169, !llvm.access.group !619
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.dj ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !169, !llvm.access.group !619
  %i.do = fmul float %i.dl, %i.dn
  store float %i.do, ptr %i.dk, align 4, !tbaa !169, !llvm.access.group !619
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dj ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !169, !llvm.access.group !619
  %i.dr = load float, ptr %i.dm, align 4, !tbaa !169, !llvm.access.group !619
  %i.ds = fmul float %i.dq, %i.dr
  store float %i.ds, ptr %i.dp, align 4, !tbaa !169, !llvm.access.group !619
  %.reass = add nsw i64 %indvars.iv94, %invariant.op ; 3 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %.reass ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !169, !llvm.access.group !619
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %.reass ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !169, !llvm.access.group !619
  %i.dx = fmul float %i.du, %i.dw
  store float %i.dx, ptr %i.dt, align 4, !tbaa !169, !llvm.access.group !619
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %.reass ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !169, !llvm.access.group !619
  %i.ea = load float, ptr %i.dv, align 4, !tbaa !169, !llvm.access.group !619
  %i.eb = fmul float %i.dz, %i.ea
  store float %i.eb, ptr %i.dy, align 4, !tbaa !169, !llvm.access.group !619
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %exitcond98.not.1 = icmp eq i64 %indvars.iv.next95.1, %wide.trip.count97
  br i1 %exitcond98.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !626

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.m
  %.not.i.i.i = icmp eq ptr %.sroa.0.161, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.ec = ptrtoint ptr %.sroa.10.163 to i64
  %i.ed = ptrtoint ptr %.sroa.0.161 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.161, i64 noundef %i.ee) #35, !llvm.access.group !619
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.loopexit, %bb.n
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, 1
  %i.ef = load i32, ptr %i.b, align 4, !tbaa !204, !llvm.access.group !619
  %i.eg = sext i32 %i.ef to i64
  %.not51.not = icmp slt i64 %indvars.iv99, %i.eg
  br i1 %.not51.not, label %.lr.ph85, label %.loopexit67, !llvm.loop !627

._crit_edge89:                                    ; preds = %.loopexit67, %bb.b
  call void @__kmpc_dispatch_deinit(ptr nonnull @2, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge89, %bb.a
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i, %bb.l, %bb.h
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %lpad.loopexit.split-lp139, 0
  call void @__clang_call_terminate(ptr %i.eh) #36, !llvm.access.group !619
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_dispatch_init_4(ptr, i32, i32, i32, i32, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @__kmpc_dispatch_next_4(ptr, i32, ptr, ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_dispatch_deinit(ptr, i32) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
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
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_SI_T0_T1_(ptr %0, ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
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
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr %2)
          to label %bb.h unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
end_hunk_3
