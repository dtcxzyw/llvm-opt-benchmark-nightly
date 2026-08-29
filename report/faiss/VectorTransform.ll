Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/VectorTransform?download=true
inline.NumInlined: 1138
inline.NumDeleted: 371
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK5faiss16HadamardRotation13apply_noallocElPKfPf.omp_outlined:bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_dispatch_init_8(ptr, i32, i32, i64, i64, i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @__kmpc_dispatch_next_8(ptr, i32, ptr, ptr, ptr, ptr) local_unnamed_addr #22

; Function Attrs: nounwind
declare void @__kmpc_dispatch_deinit(ptr, i32) local_unnamed_addr #22

; Function Attrs: nounwind
declare !callback !293 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5faiss9PCAMatrixC2Eiifb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(176) initializes((0, 19), (24, 73), (76, 85), (88, 100), (104, 176)) %0, i32 noundef %1, i32 noundef %2, float noundef %3, i1 noundef zeroext %4) unnamed_addr #17 align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.c, align 4, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.e, align 1, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.f, align 2, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.g, i8 0, i64 49, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss9PCAMatrixE, i64 16), ptr %0, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %3, ptr %i.h, align 4, !tbaa !295
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 %i.a, ptr %i.i, align 4, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i8 0, i64 72, i1 false)
  store i64 1000, ptr %i.k, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.l, align 8, !tbaa !297
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 0.000000e+00, ptr %i.m, align 8, !tbaa !298
  ret void
}

declare noundef ptr @_ZN5faiss21fvecs_maybe_subsampleEmPmmPKfbl(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #9

declare i32 @ssyrk_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_13eigEmPdS0_i(i64 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 -1, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.e = trunc i64 %0 to i32
  store i32 %i.e, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.f = call i32 @dsyev_(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 0 uses
  %i.g = load double, ptr %i.d, align 8, !tbaa !95
  %i.h = fptosi double %i.g to i32                ; 4 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !44
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #29
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %.noexc55

.noexc55:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 3
  %i.l = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #28 ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i ; 2 uses
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !95
  %i.n = add nsw i64 %i.i, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc55
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !95
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc55, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi ptr [ %i.m, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.m, %.noexc55 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.058.0 = phi ptr [ %i.l, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc55 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %i.q = invoke i32 @dsyev_(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef %2, ptr noundef %.sroa.058.0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.r = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !227
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.60, i32 noundef %i.r) #32 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.058.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = ptrtoint ptr %.sroa.10.0 to i64
  %i.w = ptrtoint ptr %.sroa.058.0 to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.0, i64 noundef %i.x) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.y = icmp ne i32 %3, 0
  %i.z = icmp ult i64 %0, 11
  %or.cond = and i1 %i.z, %i.y
  br i1 %or.cond, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !44
  %i.ab = sext i32 %i.aa to i64
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, i64 noundef %i.ab) ; 0 uses
  %.not74 = icmp eq i64 %0, 0
  br i1 %.not74, label %.loopexit.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts54 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %.preheader

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.04862 = phi i64 [ %i.ag, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04862
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !95
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, double noundef %i.ae) ; 0 uses
  %i.ag = add nuw i64 %.04862, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !299

.preheader:                                       ; preds = %._crit_edge, %bb.h
  %.04666 = phi i64 [ %i.ah, %bb.h ], [ 0, %._crit_edge ]
  %.04765 = phi ptr [ %i.ai, %bb.h ], [ %1, %._crit_edge ]
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.ah = add nuw i64 %.04666, 1                  ; 2 uses
  %exitcond78.not = icmp eq i64 %i.ah, %0
  br i1 %exitcond78.not, label %.loopexit, label %.preheader, !llvm.loop !300

bb.i:                                             ; preds = %.preheader, %bb.i
  %.04564 = phi i64 [ 0, %.preheader ], [ %i.al, %bb.i ]
  %.163 = phi ptr [ %.04765, %.preheader ], [ %i.ai, %bb.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.163, i64 8 ; 2 uses
  %i.aj = load double, ptr %.163, align 8, !tbaa !95
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, double noundef %i.aj) ; 0 uses
  %i.al = add nuw i64 %.04564, 1                  ; 2 uses
  %exitcond77.not = icmp eq i64 %i.al, %0
  br i1 %exitcond77.not, label %bb.h, label %bb.i, !llvm.loop !301

.loopexit.critedge:                               ; preds = %bb.g
  %puts.c = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts54.c = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.loopexit.critedge, %bb.f
  %.not.i.i.i56 = icmp eq ptr %.sroa.058.0, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorIdSaIdEED2Ev.exit57, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.am = ptrtoint ptr %.sroa.10.0 to i64
  %i.an = ptrtoint ptr %.sroa.058.0 to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.0, i64 noundef %i.ao) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit57

_ZNSt6vectorIdSaIdEED2Ev.exit57:                  ; preds = %.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ap = lshr i64 %0, 1                          ; 4 uses
  %.not76 = icmp eq i64 %i.ap, 0
  br i1 %.not76, label %._crit_edge73, label %.lr.ph69.us.preheader

.lr.ph69.us.preheader:                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit57
  %umax = call i64 @llvm.umax.i64(i64 %0, i64 1)  ; 5 uses
  %4 = add nuw i64 %i.ap, 2305843009213693951
  %i.aq = mul i64 %0, %4
  %i.ar = shl i64 %umax, 3
  %5 = add i64 %i.aq, %umax
  %i.as = shl i64 %5, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.as
  %i.at = add i64 %0, 2305843009213693951
  %i.au = mul i64 %0, %i.at
  %i.av = shl i64 %i.au, 3
  %scevgep87 = getelementptr i8, ptr %1, i64 %i.av
  %6 = sub i64 %0, %i.ap
  %i.aw = shl i64 %6, 3
  %7 = mul i64 %0, %i.aw
  %8 = getelementptr i8, ptr %1, i64 %7
  %scevgep88 = getelementptr i8, ptr %8, i64 %i.ar
  %i.ax = mul i64 %0, -8
  %min.iters.check = icmp ult i64 %0, 6
  %bound0 = icmp ult ptr %1, %scevgep88
  %bound1 = icmp ult ptr %scevgep87, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %0, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %9 = or i1 %found.conflict, %stride.check
  %stride.check89 = icmp slt i64 %i.ax, 0
  %i.ay = or i1 %9, %stride.check89
  %n.vec = and i64 %umax, -1152921504606846980    ; 3 uses
  %cmp.n = icmp eq i64 %0, %n.vec
  %xtraiter = and i64 %umax, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %invariant.op = sub nuw i64 %umax, 1
  br label %.lr.ph69.us

.lr.ph69.us:                                      ; preds = %.lr.ph69.us.preheader, %._crit_edge70.us
  %.04471.us = phi i64 [ %i.ce, %._crit_edge70.us ], [ 0, %.lr.ph69.us.preheader ] ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04471.us ; 2 uses
  %i.ba = xor i64 %.04471.us, -1
  %i.bb = add i64 %0, %i.ba                       ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bb ; 2 uses
  %i.bd = load double, ptr %i.az, align 8, !tbaa !95
  %i.be = load double, ptr %i.bc, align 8, !tbaa !95
  store double %i.be, ptr %i.az, align 8, !tbaa !95
  store double %i.bd, ptr %i.bc, align 8, !tbaa !95
  %i.bf = mul i64 %.04471.us, %0
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bf ; 4 uses
  %i.bh = mul i64 %i.bb, %0
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ay
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph69.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph69.us ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.bj, align 8, !tbaa !95, !alias.scope !302, !noalias !305
  %wide.load90 = load <2 x double>, ptr %i.bl, align 8, !tbaa !95, !alias.scope !302, !noalias !305
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load91 = load <2 x double>, ptr %i.bk, align 8, !tbaa !95, !alias.scope !305
  %wide.load92 = load <2 x double>, ptr %i.bm, align 8, !tbaa !95, !alias.scope !305
  store <2 x double> %wide.load91, ptr %i.bj, align 8, !tbaa !95, !alias.scope !302, !noalias !305
  store <2 x double> %wide.load92, ptr %i.bl, align 8, !tbaa !95, !alias.scope !302, !noalias !305
  store <2 x double> %wide.load, ptr %i.bk, align 8, !tbaa !95, !alias.scope !305
  store <2 x double> %wide.load90, ptr %i.bm, align 8, !tbaa !95, !alias.scope !305
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge70.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph69.us, %middle.block
  %.067.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph69.us ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.067.us.ph ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.067.us.ph ; 2 uses
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !95
  %i.br = load double, ptr %i.bp, align 8, !tbaa !95
  store double %i.br, ptr %i.bo, align 8, !tbaa !95
  store double %i.bq, ptr %i.bp, align 8, !tbaa !95
  %i.bs = or disjoint i64 %.067.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.067.us.unr = phi i64 [ %.067.us.ph, %scalar.ph.preheader ], [ %i.bs, %scalar.ph.prol ]
  %i.bt = icmp eq i64 %.067.us.ph, %invariant.op
  br i1 %i.bt, label %._crit_edge70.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.067.us = phi i64 [ %i.cd, %scalar.ph ], [ %.067.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.067.us ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.067.us ; 2 uses
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !95
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !95
  store double %i.bx, ptr %i.bu, align 8, !tbaa !95
  store double %i.bw, ptr %i.bv, align 8, !tbaa !95
  %i.by = add nuw i64 %.067.us, 1                 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.by ; 2 uses
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !95
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !95
  store double %i.cc, ptr %i.bz, align 8, !tbaa !95
  store double %i.cb, ptr %i.ca, align 8, !tbaa !95
  %i.cd = add nuw i64 %.067.us, 2                 ; 2 uses
  %exitcond79.not.1 = icmp eq i64 %0, %i.cd
  br i1 %exitcond79.not.1, label %._crit_edge70.us, label %scalar.ph, !llvm.loop !308

._crit_edge70.us:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ce = add nuw nsw i64 %.04471.us, 1           ; 2 uses
  %exitcond80.not = icmp eq i64 %i.ce, %i.ap
  br i1 %exitcond80.not, label %._crit_edge73, label %.lr.ph69.us, !llvm.loop !309

._crit_edge73:                                    ; preds = %._crit_edge70.us, %_ZNSt6vectorIdSaIdEED2Ev.exit57
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.u
}

declare void @_ZN5faiss14fvec_renorm_L2EmmPf(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss9PCAMatrix10prepare_AbEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"struct.faiss::RandomRotationMatrix", align 8 ; 16 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 11 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30   ; 4 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.j, %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %.not = icmp ugt i64 %i.k, %i.s
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !17
  store i8 0, ptr %i.t, align 8, !tbaa !16
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %i.f, i32 noundef %i.i) #22 ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.x = zext nneg i32 %i.v to i64                ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.y)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %1, align 8, !tbaa !13
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !17
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !30
  %i.ac = load i32, ptr %i.h, align 8, !tbaa !43
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %i.ab, i32 noundef %i.ac) #22 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.x)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.af = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss9PCAMatrix10prepare_AbEv, ptr noundef nonnull @.str.1, i32 noundef 812)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.bq unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.af) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.ag, %bb.h ]
  %i.ah = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.t
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !16
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit116

bb.j:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.am = load i8, ptr %i.al, align 4, !tbaa !296, !range !21, !noundef !22
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.au, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.l) ; 0 uses
  %i.aq = load i32, ptr %i.e, align 4, !tbaa !30
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !43
  %i.as = mul nsw i32 %i.ar, %i.aq
  %i.at = sext i32 %i.as to i64                   ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31 ; 2 uses
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !32 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2                 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %i.at
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = sub nuw nsw i64 %i.at, %i.ba
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %i.bc)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.m:                                             ; preds = %bb.k
  %i.bd = icmp ugt i64 %i.ba, %i.at
  br i1 %i.bd, label %bb.n, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.at ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.be
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.n
  store ptr %i.be, ptr %i.au, align 8, !tbaa !31
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !295 ; 6 uses
  %i.bh = fcmp une float %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.o, label %.loopexit152

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.bi = load i32, ptr %i.e, align 4, !tbaa !30  ; 4 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph158, label %.loopexit152

.lr.ph158:                                        ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !32 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bn = load i32, ptr %i.h, align 8, !tbaa !43  ; 4 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.us.preheader, label %.lr.ph158.split.preheader

.lr.ph158.split.preheader:                        ; preds = %.lr.ph158
  %wide.trip.count = zext nneg i32 %i.bi to i64   ; 2 uses
  %.pre = load float, ptr %i.bm, align 8, !tbaa !298 ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bp = icmp ult i32 %i.bi, 4
  br i1 %i.bp, label %.lr.ph158.split.epil.preheader, label %.lr.ph158.split.preheader.new

.lr.ph158.split.preheader.new:                    ; preds = %.lr.ph158.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph158.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph158
  %i.bq = load ptr, ptr %i.ao, align 8, !tbaa !32
  %wide.trip.count189 = zext nneg i32 %i.bi to i64
  %i.br = zext nneg i32 %i.bn to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.bn, 8
  %n.vec = and i64 %i.br, 2147483640              ; 4 uses
  %i.bs = trunc nuw nsw i64 %n.vec to i32
  %i.bt = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.br
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv186 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next187, %._crit_edge.us ] ; 2 uses
  %.069155.us = phi ptr [ %i.bq, %.lr.ph.us.preheader ], [ %.lcssa275, %._crit_edge.us ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv186
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !33
  %i.bw = load float, ptr %i.bm, align 8, !tbaa !298
  %i.bx = fadd float %i.bv, %i.bw
end_hunk_0
