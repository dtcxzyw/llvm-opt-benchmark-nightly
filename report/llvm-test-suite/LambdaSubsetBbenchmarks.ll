inline.NumInlined: 73
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@llvm.lifetime.start.p0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal void @_ZL15BM_INIT3_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 9)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 5 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 5 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 5 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 5 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 5 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !11
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 16, !tbaa !37  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not39 = icmp eq i64 %i.t, 0
  br i1 %.not.i.not39, label %._crit_edge.split, label %.lr.ph41, !prof !38

.lr.ph41:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 32, !tbaa !39
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40   ; 4 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph41
  %wide.trip.count = and i64 %i.w, 2147483647     ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %i.z = sub i64 %i.j, %i.g
  %diff.check = icmp ugt i64 %i.z, -32
  %i.aa = sub i64 %i.j, %i.d
  %diff.check46 = icmp ugt i64 %i.aa, -32
  %conflict.rdx = or i1 %diff.check, %diff.check46
  %i.ab = sub i64 %i.m, %i.j
  %diff.check47 = icmp ugt i64 %i.ab, -32
  %conflict.rdx48 = or i1 %conflict.rdx, %diff.check47
  %i.ac = sub i64 %i.p, %i.j
  %diff.check49 = icmp ugt i64 %i.ac, -32
  %conflict.rdx50 = or i1 %conflict.rdx48, %diff.check49
  %i.ad = sub i64 %i.g, %i.d
  %diff.check51 = icmp ugt i64 %i.ad, -32
  %conflict.rdx52 = or i1 %conflict.rdx50, %diff.check51
  %i.ae = sub i64 %i.m, %i.g
  %diff.check53 = icmp ugt i64 %i.ae, -32
  %conflict.rdx54 = or i1 %conflict.rdx52, %diff.check53
  %i.af = sub i64 %i.p, %i.g
  %diff.check55 = icmp ugt i64 %i.af, -32
  %conflict.rdx56 = or i1 %conflict.rdx54, %diff.check55
  %i.ag = sub i64 %i.m, %i.d
  %diff.check57 = icmp ugt i64 %i.ag, -32
  %conflict.rdx58 = or i1 %conflict.rdx56, %diff.check57
  %i.ah = sub i64 %i.p, %i.d
  %diff.check59 = icmp ugt i64 %i.ah, -32
  %conflict.rdx60 = or i1 %conflict.rdx58, %diff.check59
  %n.vec = and i64 %i.w, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.lr.ph41, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.016.040 = phi i64 [ %i.bz, %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.t, %.lr.ph.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx60
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !41
  %wide.load61 = load <2 x double>, ptr %i.aj, align 8, !tbaa !41
  %i.ak = fneg <2 x double> %wide.load
  %i.al = fneg <2 x double> %wide.load61
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load62 = load <2 x double>, ptr %i.am, align 8, !tbaa !41
  %wide.load63 = load <2 x double>, ptr %i.an, align 8, !tbaa !41
  %i.ao = fsub <2 x double> %i.ak, %wide.load62   ; 3 uses
  %i.ap = fsub <2 x double> %i.al, %wide.load63   ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x double> %i.ao, ptr %i.aq, align 8, !tbaa !41
  store <2 x double> %i.ap, ptr %i.ar, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <2 x double> %i.ao, ptr %i.as, align 8, !tbaa !41
  store <2 x double> %i.ap, ptr %i.at, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x double> %i.ao, ptr %i.au, align 8, !tbaa !41
  store <2 x double> %i.ap, ptr %i.av, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.ph
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !41
  %i.az = fneg double %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.ph
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !41
  %i.bc = fsub double %i.az, %i.bb                ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.ph
  store double %i.bc, ptr %i.bd, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.ph
  store double %i.bc, ptr %i.be, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.ph
  store double %i.bc, ptr %i.bf, align 8, !tbaa !41
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bg = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.bg, label %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !41
  %i.bj = fneg double %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !41
  %i.bm = fsub double %i.bj, %i.bl                ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.bm, ptr %i.bn, align 8, !tbaa !41
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store double %i.bm, ptr %i.bo, align 8, !tbaa !41
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.bm, ptr %i.bp, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.br = load double, ptr %i.bq, align 8, !tbaa !41
  %i.bs = fneg double %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !41
  %i.bv = fsub double %i.bs, %i.bu                ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  store double %i.bv, ptr %i.bw, align 8, !tbaa !41
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  store double %i.bv, ptr %i.bx, align 8, !tbaa !41
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  store double %i.bv, ptr %i.by, align 8, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !47

"._Z6forallIZL15BM_INIT3_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bz = add nsw i64 %.sroa.016.040, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bz, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !48
}

declare noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 4 uses
  tail call void @_Z8loopInitj(i32 noundef 10)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %1 = load ptr, ptr %i.d, align 8, !tbaa !8      ; 5 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !8    ; 6 uses
  %2 = load <2 x ptr>, ptr %i.b, align 8, !tbaa !8 ; 3 uses
  %3 = extractelement <2 x ptr> %2, i64 1         ; 4 uses
  %4 = extractelement <2 x ptr> %2, i64 0         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 16, !tbaa !37  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not39 = icmp eq i64 %i.k, 0
  br i1 %.not.i.not39, label %._crit_edge.split, label %.lr.ph41, !prof !38

.lr.ph41:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 32, !tbaa !39
  %i.n = load i64, ptr %i.m, align 8, !tbaa !40   ; 3 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph41
  %wide.trip.count = and i64 %i.n, 2147483647     ; 4 uses
  %i.q = shl nuw nsw i64 %wide.trip.count, 3      ; 5 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.q   ; 3 uses
  %scevgep46 = getelementptr i8, ptr %3, i64 %i.q ; 2 uses
  %scevgep47 = getelementptr i8, ptr %i.e, i64 %i.q ; 3 uses
  %scevgep48 = getelementptr i8, ptr %1, i64 %i.q ; 2 uses
  %scevgep49 = getelementptr i8, ptr %i.g, i64 %i.q ; 2 uses
  %5 = insertelement <8 x ptr> poison, ptr %4, i64 0
  %6 = insertelement <8 x ptr> %5, ptr %i.e, i64 1
  %7 = insertelement <8 x ptr> %6, ptr %i.g, i64 3
  %8 = insertelement <8 x ptr> %7, ptr %3, i64 5
  %i.r = insertelement <8 x ptr> %8, ptr %1, i64 7
  %9 = shufflevector <8 x ptr> %i.r, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 1, i32 5, i32 3, i32 7>
  %i.s = insertelement <8 x ptr> poison, ptr %scevgep46, i64 0
  %i.t = insertelement <8 x ptr> %i.s, ptr %scevgep, i64 1
  %i.u = insertelement <8 x ptr> %i.t, ptr %scevgep48, i64 2
  %i.v = insertelement <8 x ptr> %i.u, ptr %scevgep47, i64 7
  %i.w = shufflevector <8 x ptr> %i.v, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 0, i32 2, i32 0, i32 7>
  %i.x = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.y = insertelement <8 x ptr> %i.x, ptr %scevgep47, i64 1
  %i.z = insertelement <8 x ptr> %i.y, ptr %scevgep, i64 2
  %i.aa = insertelement <8 x ptr> %i.z, ptr %scevgep49, i64 3
  %i.ab = insertelement <8 x ptr> %i.aa, ptr %scevgep46, i64 5
  %i.ac = insertelement <8 x ptr> %i.ab, ptr %scevgep48, i64 7
  %i.ad = shufflevector <8 x ptr> %i.ac, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 5, i32 3, i32 7>
  %10 = shufflevector <2 x ptr> %2, <2 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 2
  %11 = icmp ult <8 x ptr> %9, %i.w
  %12 = insertelement <8 x ptr> %10, ptr %1, i64 2
  %13 = insertelement <8 x ptr> %12, ptr %i.e, i64 7
  %14 = shufflevector <8 x ptr> %13, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 0, i32 2, i32 0, i32 7>
  %i.ae = icmp ult <8 x ptr> %14, %i.ad
  %i.af = and <8 x i1> %i.ae, %11
  %bound077 = icmp ult ptr %i.e, %scevgep49
  %bound178 = icmp ult ptr %i.g, %scevgep47
  %found.conflict79 = and i1 %bound077, %bound178
  %i.ag = bitcast <8 x i1> %i.af to i8
  %i.ah = icmp ne i8 %i.ag, 0
  %op.rdx = or i1 %i.ah, %found.conflict79
  %n.vec = and i64 %i.n, 2147483646               ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.lr.ph41, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.016.040 = phi i64 [ %i.bf, %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.k, %.lr.ph.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !41, !alias.scope !49 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %wide.load81 = load <2 x double>, ptr %i.aj, align 8, !tbaa !41, !alias.scope !52 ; 2 uses
  %i.ak = fmul <2 x double> %wide.load, %wide.load81
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index
  store <2 x double> %i.ak, ptr %i.al, align 8, !tbaa !41, !alias.scope !54, !noalias !56
  %i.am = fadd <2 x double> %wide.load, %wide.load81
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  store <2 x double> %i.am, ptr %i.an, align 8, !tbaa !41, !alias.scope !59, !noalias !60
  %wide.load84 = load <2 x double>, ptr %i.ai, align 8, !tbaa !41, !alias.scope !49
  %wide.load85 = load <2 x double>, ptr %i.aj, align 8, !tbaa !41, !alias.scope !52
  %i.ao = fsub <2 x double> %wide.load84, %wide.load85
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  store <2 x double> %i.ao, ptr %i.ap, align 8, !tbaa !41, !alias.scope !61, !noalias !62
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !41
  %i.av = fmul double %i.as, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.av, ptr %i.aw, align 8, !tbaa !41
  %i.ax = load double, ptr %i.ar, align 8, !tbaa !41
  %i.ay = load double, ptr %i.at, align 8, !tbaa !41
  %i.az = fadd double %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.az, ptr %i.ba, align 8, !tbaa !41
  %i.bb = load double, ptr %i.ar, align 8, !tbaa !41
  %i.bc = load double, ptr %i.at, align 8, !tbaa !41
  %i.bd = fsub double %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.bd, ptr %i.be, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !64

"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph, %middle.block
  %i.bf = add nsw i64 %.sroa.016.040, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.bf, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !48
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17BM_IF_QUAD_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 11)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge.split

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 16, !tbaa !37  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not41 = icmp eq i64 %i.o, 0
  br i1 %.not.i.not41, label %._crit_edge.split, label %.lr.ph43, !prof !38

.lr.ph43:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 32, !tbaa !39
  %i.r = load i64, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph43
  %wide.trip.count = and i64 %i.r, 2147483647
  br label %.lr.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %.lr.ph43, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.016.042 = phi i64 [ %i.as, %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.o, %.lr.ph.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit" ] ; 7 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !41 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !41 ; 2 uses
  %i.y = fmul double %i.x, 4.000000e+00
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8, !tbaa !41
  %i.ab = fneg double %i.aa
  %i.ac = fmul double %i.y, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.ac) ; 2 uses
  %i.ae = fcmp ult double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = tail call double @sqrt(double noundef %i.ad) #9, !tbaa !4 ; 2 uses
  %i.ag = fsub double %i.af, %i.v
  %i.ah = fmul double %i.x, 2.000000e+00
  %i.ai = fdiv double %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.ai, ptr %i.aj, align 8, !tbaa !41
  %i.ak = load double, ptr %i.u, align 8, !tbaa !41
  %i.al = fneg double %i.ak
  %i.am = fsub double %i.al, %i.af
  %i.an = load double, ptr %i.w, align 8, !tbaa !41
  %i.ao = fmul double %i.an, 2.000000e+00
  %i.ap = fdiv double %i.am, %i.ao
  br label %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"

bb.d:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !41
  br label %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"

"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit": ; preds = %bb.c, %bb.d
  %.sink.i = phi double [ 0.000000e+00, %bb.d ], [ %i.ap, %bb.c ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %.sink.i, ptr %i.ar, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %bb.b, !llvm.loop !65

"._Z6forallIZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %"_ZZL17BM_IF_QUAD_LAMBDARN9benchmark5StateEENK3$_0clEi.exit"
  %i.as = add nsw i64 %.sroa.016.042, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.as, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.lr.ph, !prof !48
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL18BM_TRAP_INT_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 12)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.e = load double, ptr %i.d, align 8, !tbaa !41 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.g = load double, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.i = load double, ptr %i.h, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = add nsw i32 %i.l, 1
  %i.n = sitofp i32 %i.m to double
  %i.o = fsub double %i.g, %i.i                   ; 2 uses
  %i.p = fmul double %i.o, %i.o                   ; 4 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !41 ; 3 uses
  %i.r = extractelement <2 x double> %i.q, i64 0
  %i.s = extractelement <2 x double> %i.q, i64 1  ; 4 uses
  %i.t = fsub double %i.r, %i.s
  %i.u = fdiv double %i.t, %i.n                   ; 4 uses
  %i.v = insertelement <2 x double> poison, double %i.e, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fsub <2 x double> %i.q, %i.w             ; 2 uses
  %i.y = insertelement <2 x double> poison, double %i.p, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.x, <2 x double> %i.z)
  %i.ab = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aa)
  %i.ac = fdiv <2 x double> splat (double 1.000000e+00), %i.ab ; 2 uses
  %shift = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.ac
  %i.ad = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ae = fmul double %i.ad, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !11
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %._crit_edge

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 16, !tbaa !37 ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not57 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.not57, label %._crit_edge, label %.lr.ph60, !prof !38

.lr.ph60:                                         ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void

bb.b:                                             ; preds = %.lr.ph60, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"
  %.sroa.019.059 = phi i64 [ %i.ai, %.lr.ph60 ], [ %i.bk, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit" ]
  %.058 = phi double [ %i.ae, %.lr.ph60 ], [ %.1.lcssa, %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit" ] ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 32, !tbaa !39
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !40 ; 2 uses
  %i.am = trunc i64 %i.al to i32                  ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %"_Z6forallIZL18BM_TRAP_INT_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit"

.lr.ph.preheader:                                 ; preds = %bb.b
  %xtraiter = and i32 %i.am, 1
  %i.ao = icmp eq i32 %i.am, 1
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.am, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0.i56 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bc, %.lr.ph ] ; 3 uses
  %.155 = phi double [ %.058, %.lr.ph.preheader.new ], [ %i.bb, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ap = uitofp nneg i32 %.0.i56 to double
  %i.aq = call double @llvm.fmuladd.f64(double %i.ap, double %i.u, double %i.s)
  %i.ar = fsub double %i.aq, %i.e                 ; 2 uses
end_hunk_0
