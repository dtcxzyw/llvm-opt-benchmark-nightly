Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gbdt?download=true
inline.NumInlined: 3485
inline.NumDeleted: 1590
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE17_M_default_appendEm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.g ; 2 uses
  %i.y = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !273
  %.not13.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit
  %.0.i.i.i.i50 = ptrtoaddr ptr %.0.i.i.i.i to i64
  %i.z = add i64 %i.e, -8
  %i.aa = sub i64 %i.z, %i.f                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 72
  %i.ad = sub i64 %i.f, %.0.i.i.i.i50
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.d, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ah ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.d, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x double>, ptr %next.gep51, align 8, !tbaa !273
  %wide.load52 = load <2 x double>, ptr %i.ai, align 8, !tbaa !273
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !273
  store <2 x double> %wide.load52, ptr %i.aj, align 8, !tbaa !273
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !620

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.preheader54

.lr.ph.i.i.preheader54:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.015.i.i.ph = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.preheader ], [ %i.af, %middle.block ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader54, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader54 ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader54 ] ; 2 uses
  %i.al = load double, ptr %.sroa.010.014.i.i, align 8, !tbaa !273
  store double %i.al, ptr %.015.i.i, align 8, !tbaa !273
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.am, %i.c
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !621

_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit
  %.not.i45 = icmp eq ptr %i.d, null
  br i1 %.not.i45, label %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit
  tail call void @free(ptr noundef nonnull %i.d) #21
  br label %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46

_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, %bb.e
  store ptr %.0.i.i.i.i, ptr %0, align 8, !tbaa !340
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %1
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !622
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.t
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !623
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmN8LightGBM6Common18AlignmentAllocatorIdLm32EEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM12ScoreUpdater8AddScoreEdi.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !305  ; 2 uses
  %i.g = add nsw i32 %i.f, -1                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %i.g, ptr %i.b, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 1, ptr %i.c, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !190
  %i.i = load i32, ptr %0, align 4, !tbaa !190    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !190
  %.promoted17 = load i32, ptr %i.a, align 4, !tbaa !190 ; 2 uses
  %i.j = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.g) ; 3 uses
  %.not18 = icmp sgt i32 %.promoted17, %i.j
  br i1 %.not18, label %bb.c, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i64, ptr %3, align 8, !tbaa !228    ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !340  ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !190  ; 2 uses
  %i.p = sext i32 %.promoted17 to i64             ; 4 uses
  %i.q = sext i32 %i.o to i64                     ; 4 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = add i64 %i.l, %i.p
  %i.s = shl i64 %i.r, 3                          ; 2 uses
  %i.t = shl nsw i64 %i.q, 3
  %i.u = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = getelementptr i8, ptr %i.m, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv.a = phi i64 [ %i.p, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %i.x = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.ay, %.loopexit ] ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = call i64 @llvm.smax.i64(i64 %indvars.iv.a, i64 %i.y) ; 2 uses
  %i.aa = mul i64 %indvar, %i.q
  %i.ab = add i64 %i.aa, %i.p
  %reass.sub = sub i64 %i.z, %i.ab
  %i.ac = add i64 %reass.sub, 1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ac, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.ad = mul i64 %indvar, %i.t                   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad
  %i.af = mul i64 %indvar, %i.q
  %i.ag = add i64 %i.af, %i.p
  %i.ah = sub i64 %i.z, %i.ag
  %i.ai = shl i64 %i.ah, 3
  %i.aj = getelementptr i8, ptr %i.w, i64 %i.ad
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ai
  %bound0 = icmp ult ptr %i.ae, %scevgep
  %bound1 = icmp ult ptr %4, %i.ak
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, -4                      ; 3 uses
  %i.al = add i64 %indvars.iv.a, %n.vec
  %i.am = load double, ptr %4, align 8, !tbaa !273, !alias.scope !629
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.am, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !273, !alias.scope !630, !noalias !629
  %wide.load33 = load <2 x double>, ptr %i.ap, align 8, !tbaa !273, !alias.scope !630, !noalias !629
  %i.aq = fadd <2 x double> %broadcast.splat, %wide.load
  %i.ar = fadd <2 x double> %broadcast.splat, %wide.load33
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !273, !alias.scope !630, !noalias !629
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !273, !alias.scope !630, !noalias !629
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !627

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv22.ph = phi i64 [ %indvars.iv.a, %vector.memcheck ], [ %indvars.iv.a, %.preheader ], [ %i.al, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %scalar.ph ], [ %indvars.iv22.ph, %scalar.ph.preheader ] ; 3 uses
  %i.at = load double, ptr %4, align 8, !tbaa !273
  %i.au = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv22 ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !273
  %i.aw = fadd double %i.at, %i.av
  store double %i.aw, ptr %i.au, align 8, !tbaa !273
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %.not15.not = icmp slt i64 %indvars.iv22, %i.y
  br i1 %.not15.not, label %scalar.ph, label %.loopexit, !llvm.loop !628

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv.a, %i.q ; 3 uses
  %i.ax = add nsw i32 %i.o, %i.x
  %i.ay = call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.g) ; 3 uses
  %5 = sext i32 %i.ay to i64
  %.not = icmp sgt i64 %indvars.iv.next, %5
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  %6 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %6, ptr %i.a, align 4, !tbaa !190
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %i.ay, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !190
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #21

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM12ScoreUpdater13MultiplyScoreEdi.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !305  ; 2 uses
  %i.g = add nsw i32 %i.f, -1                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %i.g, ptr %i.b, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 1, ptr %i.c, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !190
  %i.i = load i32, ptr %0, align 4, !tbaa !190    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !190
  %.promoted17 = load i32, ptr %i.a, align 4, !tbaa !190 ; 2 uses
  %i.j = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.g) ; 3 uses
  %.not18 = icmp sgt i32 %.promoted17, %i.j
  br i1 %.not18, label %bb.c, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i64, ptr %3, align 8, !tbaa !228    ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !340  ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !190  ; 2 uses
  %i.p = sext i32 %.promoted17 to i64             ; 4 uses
  %i.q = sext i32 %i.o to i64                     ; 4 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = add i64 %i.l, %i.p
  %i.s = shl i64 %i.r, 3                          ; 2 uses
  %i.t = shl nsw i64 %i.q, 3
  %i.u = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = getelementptr i8, ptr %i.m, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv.a = phi i64 [ %i.p, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %i.x = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.ay, %.loopexit ] ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = call i64 @llvm.smax.i64(i64 %indvars.iv.a, i64 %i.y) ; 2 uses
  %i.aa = mul i64 %indvar, %i.q
  %i.ab = add i64 %i.aa, %i.p
  %reass.sub = sub i64 %i.z, %i.ab
  %i.ac = add i64 %reass.sub, 1                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ac, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.ad = mul i64 %indvar, %i.t                   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad
  %i.af = mul i64 %indvar, %i.q
  %i.ag = add i64 %i.af, %i.p
  %i.ah = sub i64 %i.z, %i.ag
  %i.ai = shl i64 %i.ah, 3
  %i.aj = getelementptr i8, ptr %i.w, i64 %i.ad
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ai
  %bound0 = icmp ult ptr %i.ae, %scevgep
  %bound1 = icmp ult ptr %4, %i.ak
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, -4                      ; 3 uses
  %i.al = add i64 %indvars.iv.a, %n.vec
  %i.am = load double, ptr %4, align 8, !tbaa !273, !alias.scope !636
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.am, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !273, !alias.scope !637, !noalias !636
  %wide.load33 = load <2 x double>, ptr %i.ap, align 8, !tbaa !273, !alias.scope !637, !noalias !636
  %i.aq = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ar = fmul <2 x double> %broadcast.splat, %wide.load33
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !273, !alias.scope !637, !noalias !636
  store <2 x double> %i.ar, ptr %i.ap, align 8, !tbaa !273, !alias.scope !637, !noalias !636
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !634

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv22.ph = phi i64 [ %indvars.iv.a, %vector.memcheck ], [ %indvars.iv.a, %.preheader ], [ %i.al, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %scalar.ph ], [ %indvars.iv22.ph, %scalar.ph.preheader ] ; 3 uses
  %i.at = load double, ptr %4, align 8, !tbaa !273
  %i.au = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv22 ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !273
  %i.aw = fmul double %i.at, %i.av
  store double %i.aw, ptr %i.au, align 8, !tbaa !273
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %.not15.not = icmp slt i64 %indvars.iv22, %i.y
  br i1 %.not15.not, label %scalar.ph, label %.loopexit, !llvm.loop !635

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv.a, %i.q ; 3 uses
  %i.ax = add nsw i32 %i.o, %i.x
  %i.ay = call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.g) ; 3 uses
  %5 = sext i32 %i.ay to i64
  %.not = icmp sgt i64 %indvars.iv.next, %5
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  %6 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %6, ptr %i.a, align 4, !tbaa !190
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %i.ay, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !190
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i, !prof !203

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 576460752303423487
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 5
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #36
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %2, ptr %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #21 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %1, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #37
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #38
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !186
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !189 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !187  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.e, ptr %i.a, align 8, !tbaa !228
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !189
  %i.h = load i64, ptr %i.a, align 8, !tbaa !228
  store i64 %i.h, ptr %i.b, align 8, !tbaa !188
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !188
  store i8 %i.j, ptr %i.i, align 1, !tbaa !188
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !228  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !187
  %i.m = load ptr, ptr %.016, align 8, !tbaa !189
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !638

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #37
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #38
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM9BinMapper15bin_info_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !363
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !278, !noalias !650
end_hunk_0
